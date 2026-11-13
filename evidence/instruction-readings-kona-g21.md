# Instruction readings from hostfacts

These readings summarize selected memory accesses, calls, branches and returns from each routine body. Every instruction claim cites its address in the exact binary build. They describe software behavior, not hardware measurements.

Skipped 9,081 located, 12,633 understood, and 8 no-software-dependency rows by status, plus 1,493 named-only rows with existing exact entries; no undocumented rows were present, leaving 31,094 targets.

- `__gllc_TexParameteriv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46ad8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda46ad8-0xda46bb4 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xda46aec loads 4 bytes from abs 0x1010.
  The `sh` at 0xda46b58 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda46b64 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda46b6c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda46b08 calls __glTexParameteriv_size [0xda19d70] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46b24 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glTexParameteriv_size) << 0x2), a3=?.
  The `jalr` at 0xda46b40 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glTexParameteriv_size) << 0x2)+8, a2=(ret(__glTexParameteriv_size) << 0x2), a3=?.
  The `jalr` at 0xda46b7c calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glTexParameteriv_size) << 0x2), a3=?.
  The `jalr` at 0xda46b98 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d8f0, a3=?.
  The `bgez` branch at 0xda46b14 targets 0xda46b34, is taken when a2(=(ret(__glTexParameteriv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glTexParameteriv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda46b2c targets 0xda46ba4 and is always taken.
  The `beq` branch at 0xda46b4c targets 0xda46ba4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda46bac has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexEnvf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46bb4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda46bb4-0xda46c38 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda46bc8 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda46be4 calls __glTexEnvfv_size [0xda1a15c] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46c00 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xda46c1c calls __gllc_TexEnvfv [0xda46c38] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda46bf0 targets 0xda46c10, is taken when v0(=ret(__glTexEnvfv_size)) == at(=0x1), and falls through when v0(=ret(__glTexEnvfv_size)) != at(=0x1).
  The `beq` branch at 0xda46c08 targets 0xda46c28 and is always taken.
  The return at 0xda46c30 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_TexEnvfv).

- `__gllc_TexEnvfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46c38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda46c38-0xda46d14 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xda46c4c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda46cb8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda46cc4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda46ccc stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda46c68 calls __glTexEnvfv_size [0xda1a15c] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46c84 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glTexEnvfv_size) << 0x2), a3=?.
  The `jalr` at 0xda46ca0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glTexEnvfv_size) << 0x2)+8, a2=(ret(__glTexEnvfv_size) << 0x2), a3=?.
  The `jalr` at 0xda46cdc calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glTexEnvfv_size) << 0x2), a3=?.
  The `jalr` at 0xda46cf8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d95c, a3=?.
  The `bgez` branch at 0xda46c74 targets 0xda46c94, is taken when a2(=(ret(__glTexEnvfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glTexEnvfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda46c8c targets 0xda46d04 and is always taken.
  The `beq` branch at 0xda46cac targets 0xda46d04, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda46d0c has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexEnvi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46d14 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda46d14-0xda46d98 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda46d28 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda46d44 calls __glTexEnviv_size [0xda1a190] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46d60 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xda46d7c calls __gllc_TexEnviv [0xda46d98] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda46d50 targets 0xda46d70, is taken when v0(=ret(__glTexEnviv_size)) == at(=0x1), and falls through when v0(=ret(__glTexEnviv_size)) != at(=0x1).
  The `beq` branch at 0xda46d68 targets 0xda46d88 and is always taken.
  The return at 0xda46d90 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_TexEnviv).

- `__gllc_TexEnviv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46d98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda46d98-0xda46e74 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xda46dac loads 4 bytes from abs 0x1010.
  The `sh` at 0xda46e18 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda46e24 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda46e2c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda46dc8 calls __glTexEnviv_size [0xda1a190] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46de4 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glTexEnviv_size) << 0x2), a3=?.
  The `jalr` at 0xda46e00 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glTexEnviv_size) << 0x2)+8, a2=(ret(__glTexEnviv_size) << 0x2), a3=?.
  The `jalr` at 0xda46e3c calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glTexEnviv_size) << 0x2), a3=?.
  The `jalr` at 0xda46e58 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d9c8, a3=?.
  The `bgez` branch at 0xda46dd4 targets 0xda46df4, is taken when a2(=(ret(__glTexEnviv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glTexEnviv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda46dec targets 0xda46e64 and is always taken.
  The `beq` branch at 0xda46e0c targets 0xda46e64, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda46e6c has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexGend` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46e74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda46e74-0xda46efc (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda46e88 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda46ea8 calls __glTexGendv_size [0xda18dd0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46ec4 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xda46ee0 calls __gllc_TexGendv [0xda46efc] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda46eb4 targets 0xda46ed4, is taken when v0(=ret(__glTexGendv_size)) == at(=0x1), and falls through when v0(=ret(__glTexGendv_size)) != at(=0x1).
  The `beq` branch at 0xda46ecc targets 0xda46eec and is always taken.
  The return at 0xda46ef4 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_TexGendv).

- `__gllc_TexGenf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46fe0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda46fe0-0xda47064 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda46ff4 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda47010 calls __glTexGenfv_size [0xda18e0c] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4702c calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xda47048 calls __gllc_TexGenfv [0xda47064] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda4701c targets 0xda4703c, is taken when v0(=ret(__glTexGenfv_size)) == at(=0x1), and falls through when v0(=ret(__glTexGenfv_size)) != at(=0x1).
  The `beq` branch at 0xda47034 targets 0xda47054 and is always taken.
  The return at 0xda4705c has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_TexGenfv).

- `__gllc_TexGeni` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47140 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47140-0xda471c4 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda47154 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda47170 calls __glTexGeniv_size [0xda18e40] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4718c calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xda471a8 calls __gllc_TexGeniv [0xda471c4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda4717c targets 0xda4719c, is taken when v0(=ret(__glTexGeniv_size)) == at(=0x1), and falls through when v0(=ret(__glTexGeniv_size)) != at(=0x1).
  The `beq` branch at 0xda47194 targets 0xda471b4 and is always taken.
  The return at 0xda471bc has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_TexGeniv).

- `__gllc_InitNames` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda472a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda472a0-0xda47308 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda472b0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda472e0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda472c4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda472ec calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4db78, a3=?.
  The `beq` branch at 0xda472d4 targets 0xda472f8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47300 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LoadName` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47308 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47308-0xda4737c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda47320 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4734c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda47358 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda47330 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47360 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4dbb0, a3=?.
  The `beq` branch at 0xda47340 targets 0xda4736c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47374 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PassThrough` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4737c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4737c-0xda473f0 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda47390 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda473c0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda473cc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda473a4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda473d4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4dbf0, a3=?.
  The `beq` branch at 0xda473b4 targets 0xda473e0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda473e8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PopName` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda473f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda473f0-0xda47458 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda47400 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47430 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda47414 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4743c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4dc30, a3=?.
  The `beq` branch at 0xda47424 targets 0xda47448, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47450 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PushName` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47458 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47458-0xda474cc (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda47470 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4749c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda474a8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda47480 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda474b0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4dc68, a3=?.
  The `beq` branch at 0xda47490 targets 0xda474bc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda474c4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_DrawBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda474cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda474cc-0xda47540 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda474e4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47510 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4751c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda474f4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47524 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4dca8, a3=?.
  The `beq` branch at 0xda47504 targets 0xda47530, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47538 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Clear` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47540 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47540-0xda475b4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda47558 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47584 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda47590 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda47568 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47598 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4dce8, a3=?.
  The `beq` branch at 0xda47578 targets 0xda475a4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda475ac has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ClearAccum` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda475b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda475b4-0xda4764c (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda475c8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47604 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda47610 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda47618 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda47620 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xda47628 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `jalr` at 0xda475e8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47630 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4dd28, a3=?.
  The `beq` branch at 0xda475f8 targets 0xda4763c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47644 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ClearIndex` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4764c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4764c-0xda476c0 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda47660 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47690 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda4769c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda47674 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda476a4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4dd74, a3=?.
  The `beq` branch at 0xda47684 targets 0xda476b0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda476b8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ClearColor` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda476c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda476c0-0xda47758 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda476d4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47710 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda4771c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda47724 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda4772c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xda47734 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `jalr` at 0xda476f4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4773c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ddb4, a3=?.
  The `beq` branch at 0xda47704 targets 0xda47748, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47750 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ClearStencil` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47758 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47758-0xda477cc (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda47770 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4779c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda477a8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda47780 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda477b0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4de00, a3=?.
  The `beq` branch at 0xda47790 targets 0xda477bc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda477c4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ClearDepth` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda477cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda477cc-0xda47848 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xda477e0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47814 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda47818 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda47824 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda477f4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4782c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4de40, a3=?.
  The `beq` branch at 0xda47804 targets 0xda47838, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47840 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_StencilMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47848 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47848-0xda478bc (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda47860 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4788c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda47898 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda47870 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda478a0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4de80, a3=?.
  The `beq` branch at 0xda47880 targets 0xda478ac, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda478b4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ColorMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda478bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda478bc-0xda47954 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda478d4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4790c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda47918 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `sb` at 0xda47920 stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `sb` at 0xda47928 stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `sb` at 0xda47930 stores 1 byte to ret(__glDlistAllocOp2) +0x13.
  The `jalr` at 0xda478f0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47938 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4dec0, a3=?.
  The `beq` branch at 0xda47900 targets 0xda47944, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4794c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_DepthMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47954 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47954-0xda479c8 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda4796c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47998 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda479a4 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4797c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda479ac calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4df10, a3=?.
  The `beq` branch at 0xda4798c targets 0xda479b8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda479c0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_IndexMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda479c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda479c8-0xda47a3c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda479e0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47a0c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda47a18 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda479f0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47a20 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4df50, a3=?.
  The `beq` branch at 0xda47a00 targets 0xda47a2c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47a34 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Accum` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47a3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47a3c-0xda47abc (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda47a54 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47a84 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda47a90 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda47a98 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda47a68 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47aa0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4df90, a3=?.
  The `beq` branch at 0xda47a78 targets 0xda47aac, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47ab4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PopAttrib` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47abc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47abc-0xda47b24 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda47acc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47afc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda47ae0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47b08 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4dfd8, a3=?.
  The `beq` branch at 0xda47af0 targets 0xda47b14, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47b1c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PushAttrib` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47b24 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47b24-0xda47b98 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda47b3c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47b68 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda47b74 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda47b4c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47b7c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e010, a3=?.
  The `beq` branch at 0xda47b5c targets 0xda47b88, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47b90 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_MapGrid1d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47b98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47b98-0xda47c2c (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xda47bb0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47be8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda47bec stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sw` at 0xda47bf8 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda47c00 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda47c08 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda47bc8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47c10 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e050, a3=?.
  The `beq` branch at 0xda47bd8 targets 0xda47c1c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47c24 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_MapGrid1f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47c2c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47c2c-0xda47cb8 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda47c44 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47c78 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda47c84 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda47c8c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda47c94 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda47c5c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47c9c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e0a4, a3=?.
  The `beq` branch at 0xda47c6c targets 0xda47ca8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47cb0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_MapGrid2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47cb8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47cb8-0xda47d64 (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xda47cd0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47d08 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda47d0c stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sw` at 0xda47d18 stores 4 bytes to ret(__glDlistAllocOp2) +0x30.
  The `sdc1` at 0xda47d20 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda47d28 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda47d30 stores 4 bytes to ret(__glDlistAllocOp2) +0x34.
  The `sdc1` at 0xda47d38 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda47d40 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `jalr` at 0xda47ce8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47d48 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e0f0, a3=?.
  The `beq` branch at 0xda47cf8 targets 0xda47d54, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47d5c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_MapGrid2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47d64 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47d64-0xda47e0c (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xda47d7c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47db4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda47dc0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda47dc8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda47dd0 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda47dd8 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `swc1` at 0xda47de0 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `swc1` at 0xda47de8 stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `jalr` at 0xda47d98 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47df0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e15c, a3=?.
  The `beq` branch at 0xda47da8 targets 0xda47dfc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47e04 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalCoord1d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47e0c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47e0c-0xda47e88 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xda47e20 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47e54 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda47e58 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda47e64 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda47e34 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47e6c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e1bc, a3=?.
  The `beq` branch at 0xda47e44 targets 0xda47e78, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47e80 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalCoord1dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47e88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47e88-0xda47f08 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda47ea0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47ed0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda47ed4 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xda47ee0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda47ee4 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda47eb0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47eec calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e1bc, a3=?.
  The `beq` branch at 0xda47ec0 targets 0xda47ef8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47f00 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalCoord1f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47f08 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47f08-0xda47f7c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda47f1c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47f4c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda47f58 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda47f30 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47f60 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e1f8, a3=?.
  The `beq` branch at 0xda47f40 targets 0xda47f6c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47f74 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalCoord1fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47f7c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47f7c-0xda47ff4 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xda47f94 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda47fc0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda47fcc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda47fd0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda47fa4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda47fd8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e1f8, a3=?.
  The `beq` branch at 0xda47fb4 targets 0xda47fe4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda47fec has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalCoord2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda47ff4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda47ff4-0xda4807c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda48008 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda48040 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda48044 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda48050 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda48058 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda48020 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48060 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e234, a3=?.
  The `beq` branch at 0xda48030 targets 0xda4806c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda48074 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalCoord2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4807c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4807c-0xda48104 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda48094 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda480c8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda480cc stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xda480d0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda480d8 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xda480dc loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda480e0 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda480a4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda480e8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e234, a3=?.
  The `beq` branch at 0xda480b8 targets 0xda480f4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda480fc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalCoord2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48104 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48104-0xda48184 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda48118 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4814c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda48158 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda48160 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda48130 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48168 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e270, a3=?.
  The `beq` branch at 0xda48140 targets 0xda48174, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4817c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalCoord2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48184 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48184-0xda48204 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda4819c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda481cc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda481d0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda481d8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lwc1` at 0xda481dc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda481e0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda481ac calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda481e8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e270, a3=?.
  The `beq` branch at 0xda481c0 targets 0xda481f4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda481fc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalMesh1` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48204 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48204-0xda48290 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda4821c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda48250 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4825c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda48264 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda4826c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda48234 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48274 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e2ac, a3=?.
  The `beq` branch at 0xda48244 targets 0xda48280, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda48288 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalPoint1` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48290 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48290-0xda48304 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda482a8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda482d4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda482e0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda482b8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda482e8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e2f8, a3=?.
  The `beq` branch at 0xda482c8 targets 0xda482f4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda482fc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalMesh2` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48304 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48304-0xda483a4 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda4831c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda48354 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda48360 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda48368 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda48370 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda48378 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xda48380 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `jalr` at 0xda48338 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x14, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48388 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e338, a3=?.
  The `beq` branch at 0xda48348 targets 0xda48394, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4839c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalPoint2` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda483a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda483a4-0xda48424 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda483bc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda483ec stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda483f8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda48400 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda483d0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48408 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e390, a3=?.
  The `beq` branch at 0xda483e0 targets 0xda48414, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4841c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_AlphaFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48424 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48424-0xda484a4 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda4843c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4846c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda48478 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda48480 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda48450 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48488 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e3d8, a3=?.
  The `beq` branch at 0xda48460 targets 0xda48494, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4849c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_BlendFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda484a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda484a4-0xda48524 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda484bc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda484ec stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda484f8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda48500 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda484d0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48508 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e420, a3=?.
  The `beq` branch at 0xda484e0 targets 0xda48514, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4851c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LogicOp` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48524 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48524-0xda48598 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda4853c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda48568 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda48574 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4854c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4857c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e468, a3=?.
  The `beq` branch at 0xda4855c targets 0xda48588, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda48590 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_StencilFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48598 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48598-0xda48624 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda485b0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda485e4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda485f0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda485f8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda48600 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda485c8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48608 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e4a8, a3=?.
  The `beq` branch at 0xda485d8 targets 0xda48614, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4861c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_StencilOp` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48624 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48624-0xda486b0 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda4863c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda48670 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4867c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda48684 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda4868c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda48654 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48694 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e4f4, a3=?.
  The `beq` branch at 0xda48664 targets 0xda486a0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda486a8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_DepthFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda486b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda486b0-0xda48724 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda486c8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda486f4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda48700 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda486d8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48708 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e540, a3=?.
  The `beq` branch at 0xda486e8 targets 0xda48714, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4871c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PixelZoom` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48724 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48724-0xda487a4 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda48738 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4876c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda48778 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda48780 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda48750 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48788 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e580, a3=?.
  The `beq` branch at 0xda48760 targets 0xda48794, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4879c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PixelTransferf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda487a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda487a4-0xda48824 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda487bc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda487ec stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda487f8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda48800 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda487d0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48808 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e5c4, a3=?.
  The `beq` branch at 0xda487e0 targets 0xda48814, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4881c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PixelTransferi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48824 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48824-0xda488a4 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda4883c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4886c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda48878 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda48880 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda48850 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48888 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e60c, a3=?.
  The `beq` branch at 0xda48860 targets 0xda48894, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4889c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PixelMapfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda488a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda488a4-0xda4896c (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xda488d0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda48910 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4891c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda48924 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda488dc calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xda488fc calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(a1 << 0x2)+8, a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xda48934 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(a1 << 0x2), a3=?.
  The `jalr` at 0xda48950 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e654, a3=?.
  The `bgez` branch at 0xda488cc targets 0xda488ec, is taken when v0(=(a1 << 0x2)) >= 0 (signed), and falls through when v0(=(a1 << 0x2)) < 0 (signed).
  The `beq` branch at 0xda488e4 targets 0xda4895c and is always taken.
  The `beq` branch at 0xda48904 targets 0xda4895c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda48964 has v0 = one of ret(__gllc_InvalidValue), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PixelMapuiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4896c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4896c-0xda48a34 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xda48998 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda489d8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda489e4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda489ec stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda489a4 calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xda489c4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(a1 << 0x2)+8, a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xda489fc calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(a1 << 0x2), a3=?.
  The `jalr` at 0xda48a18 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e6ac, a3=?.
  The `bgez` branch at 0xda48994 targets 0xda489b4, is taken when v0(=(a1 << 0x2)) >= 0 (signed), and falls through when v0(=(a1 << 0x2)) < 0 (signed).
  The `beq` branch at 0xda489ac targets 0xda48a24 and is always taken.
  The `beq` branch at 0xda489cc targets 0xda48a24, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda48a2c has v0 = one of ret(__gllc_InvalidValue), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PixelMapusv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48a34 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48a34-0xda48b08 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xda48a6c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda48aac stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda48ab8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda48ac0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda48a78 calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xda48a98 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=?, a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xda48ad0 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xda48aec calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e704, a3=?.
  The `bgez` branch at 0xda48a68 targets 0xda48a88, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xda48a80 targets 0xda48af8 and is always taken.
  The `beq` branch at 0xda48aa0 targets 0xda48af8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda48b00 has v0 = one of ret(__gllc_InvalidValue), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ReadBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48b08 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48b08-0xda48b7c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda48b20 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda48b4c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda48b58 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda48b30 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48b60 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e768, a3=?.
  The `beq` branch at 0xda48b40 targets 0xda48b6c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda48b74 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_CopyPixels` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48b7c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48b7c-0xda48c1c (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda48b94 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda48bcc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda48bd8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda48be0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda48be8 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda48bf0 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xda48bf8 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `jalr` at 0xda48bb0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x14, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48c00 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e7a8, a3=?.
  The `beq` branch at 0xda48bc0 targets 0xda48c0c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda48c14 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_DepthRange` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48c1c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48c1c-0xda48ca4 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda48c30 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda48c68 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda48c6c stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda48c78 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda48c80 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda48c48 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48c88 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e800, a3=?.
  The `beq` branch at 0xda48c58 targets 0xda48c94, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda48c9c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Frustum` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48ca4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48ca4-0xda48d4c (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xda48cb8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda48cf0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda48cf4 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda48d00 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda48d08 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda48d10 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda48d18 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `sdc1` at 0xda48d20 stores 8 bytes to ret(__glDlistAllocOp2) +0x30.
  The `sdc1` at 0xda48d28 stores 8 bytes to ret(__glDlistAllocOp2) +0x38.
  The `jalr` at 0xda48cd0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x30, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48d30 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e844, a3=?.
  The `beq` branch at 0xda48ce0 targets 0xda48d3c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda48d44 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LoadIdentity` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48d4c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48d4c-0xda48db4 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda48d5c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda48d8c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda48d70 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48d98 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e8a8, a3=?.
  The `beq` branch at 0xda48d80 targets 0xda48da4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda48dac has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_MatrixMode` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48ecc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48ecc-0xda48f40 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda48ee4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda48f10 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda48f1c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda48ef4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48f24 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e958, a3=?.
  The `beq` branch at 0xda48f04 targets 0xda48f30, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda48f38 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_MultMatrixf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48f40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48f40-0xda48fc8 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda48f58 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda48f7c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda48f68 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48f90 calls memcpy with a0=ret(__glDlistAllocOp2)+16, a1=a0 at entry (arg0), a2=0x40, a3=?.
  The `jalr` at 0xda48fac calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e998, a3=?.
  The `beq` branch at 0xda48f70 targets 0xda48fb8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda48fc0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_MultMatrixd` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda48fc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda48fc8-0xda49058 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xda48fe0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda49008 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda4900c stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `jalr` at 0xda48ff0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49020 calls memcpy with a0=ret(__glDlistAllocOp2)+16, a1=a0 at entry (arg0), a2=0x80, a3=?.
  The `jalr` at 0xda4903c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e9d4, a3=?.
  The `beq` branch at 0xda48ff8 targets 0xda49048, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49050 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Ortho` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49058 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49058-0xda49100 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xda4906c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda490a4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda490a8 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda490b4 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda490bc stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda490c4 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda490cc stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `sdc1` at 0xda490d4 stores 8 bytes to ret(__glDlistAllocOp2) +0x30.
  The `sdc1` at 0xda490dc stores 8 bytes to ret(__glDlistAllocOp2) +0x38.
  The `jalr` at 0xda49084 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x30, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda490e4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ea10, a3=?.
  The `beq` branch at 0xda49094 targets 0xda490f0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda490f8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PopMatrix` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49100 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49100-0xda49168 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda49110 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda49140 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda49124 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4914c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ea74, a3=?.
  The `beq` branch at 0xda49134 targets 0xda49158, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49160 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PushMatrix` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49168 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49168-0xda491d0 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda49178 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda491a8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda4918c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda491b4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4eaac, a3=?.
  The `beq` branch at 0xda4919c targets 0xda491c0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda491c8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Rotated` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda491d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda491d0-0xda49268 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda491e4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4921c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda49220 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda4922c stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda49234 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda4923c stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda49244 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `jalr` at 0xda491fc calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4924c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4eae4, a3=?.
  The `beq` branch at 0xda4920c targets 0xda49258, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49260 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Rotatef` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49268 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49268-0xda49300 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda4927c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda492b8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda492c4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda492cc stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda492d4 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xda492dc stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `jalr` at 0xda4929c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda492e4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4eb38, a3=?.
  The `beq` branch at 0xda492ac targets 0xda492f0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda492f8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Scaled` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49300 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49300-0xda49390 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xda49314 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4934c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda49350 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda4935c stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda49364 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda4936c stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `jalr` at 0xda4932c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49374 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4eb84, a3=?.
  The `beq` branch at 0xda4933c targets 0xda49380, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49388 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Scalef` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49390 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49390-0xda4941c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda493a4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda493dc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda493e8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda493f0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda493f8 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda493c0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49400 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ebd0, a3=?.
  The `beq` branch at 0xda493d0 targets 0xda4940c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49414 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Translated` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4941c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4941c-0xda494ac (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xda49430 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda49468 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda4946c stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda49478 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda49480 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda49488 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `jalr` at 0xda49448 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49490 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ec18, a3=?.
  The `beq` branch at 0xda49458 targets 0xda4949c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda494a4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Translatef` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda494ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda494ac-0xda49538 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda494c0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda494f8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda49504 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda4950c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda49514 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda494dc calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4951c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ec64, a3=?.
  The `beq` branch at 0xda494ec targets 0xda49528, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49530 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Viewport` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49538 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49538-0xda495d0 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda49550 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda49588 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda49594 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4959c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda495a4 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda495ac stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `jalr` at 0xda4956c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda495b4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ecac, a3=?.
  The `beq` branch at 0xda4957c targets 0xda495c0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda495c8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_BlendColorEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda495d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda495d0-0xda49668 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda495e4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda49620 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda4962c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda49634 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda4963c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xda49644 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `jalr` at 0xda49604 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4964c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ecfc, a3=?.
  The `beq` branch at 0xda49614 targets 0xda49658, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49660 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_BlendEquationEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49668 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49668-0xda496dc (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda49680 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda496ac stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda496b8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda49690 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda496c0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ed48, a3=?.
  The `beq` branch at 0xda496a0 targets 0xda496cc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda496d4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PolygonOffsetEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda496dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda496dc-0xda4975c (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda496f0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda49724 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda49730 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda49738 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda49708 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49740 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ed88, a3=?.
  The `beq` branch at 0xda49718 targets 0xda4974c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49754 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ConvolutionParameterfEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4975c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4975c-0xda497e8 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda49774 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda497a8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda497b4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda497bc stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda497c4 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda4978c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda497cc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4edcc, a3=?.
  The `beq` branch at 0xda4979c targets 0xda497d8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda497e0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda497e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda497e8-0xda498c4 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xda497fc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda49868 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda49874 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4987c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda49818 calls __glConvolutionParameterfvEXT_size [0xd9d38d4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49834 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glConvolutionParameterfvEXT_size) << 0x2), a3=?.
  The `jalr` at 0xda49850 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glConvolutionParameterfvEXT_size) << 0x2)+8, a2=(ret(__glConvolutionParameterfvEXT_size) << 0x2), a3=?.
  The `jalr` at 0xda4988c calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glConvolutionParameterfvEXT_size) << 0x2), a3=?.
  The `jalr` at 0xda498a8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ee18, a3=?.
  The `bgez` branch at 0xda49824 targets 0xda49844, is taken when a2(=(ret(__glConvolutionParameterfvEXT_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glConvolutionParameterfvEXT_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda4983c targets 0xda498b4 and is always taken.
  The `beq` branch at 0xda4985c targets 0xda498b4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda498bc has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ConvolutionParameteriEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda498c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda498c4-0xda49950 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda498dc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda49910 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4991c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda49924 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda4992c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda498f4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49934 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ee84, a3=?.
  The `beq` branch at 0xda49904 targets 0xda49940, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49948 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ConvolutionParameterivEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49950 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49950-0xda49a2c (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xda49964 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda499d0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda499dc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda499e4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda49980 calls __glConvolutionParameterivEXT_size [0xd9d3918] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4999c calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glConvolutionParameterivEXT_size) << 0x2), a3=?.
  The `jalr` at 0xda499b8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glConvolutionParameterivEXT_size) << 0x2)+8, a2=(ret(__glConvolutionParameterivEXT_size) << 0x2), a3=?.
  The `jalr` at 0xda499f4 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glConvolutionParameterivEXT_size) << 0x2), a3=?.
  The `jalr` at 0xda49a10 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4eed0, a3=?.
  The `bgez` branch at 0xda4998c targets 0xda499ac, is taken when a2(=(ret(__glConvolutionParameterivEXT_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glConvolutionParameterivEXT_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda499a4 targets 0xda49a1c and is always taken.
  The `beq` branch at 0xda499c4 targets 0xda49a1c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49a24 has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_CopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49a2c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49a2c-0xda49acc (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda49a44 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda49a7c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda49a88 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda49a90 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda49a98 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda49aa0 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xda49aa8 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `jalr` at 0xda49a60 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x14, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49ab0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ef3c, a3=?.
  The `beq` branch at 0xda49a70 targets 0xda49abc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49ac4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_CopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49acc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49acc-0xda49b74 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xda49ae4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda49b1c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda49b28 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda49b30 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda49b38 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda49b40 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xda49b48 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sw` at 0xda49b50 stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `jalr` at 0xda49b00 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49b58 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ef94, a3=?.
  The `beq` branch at 0xda49b10 targets 0xda49b64, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49b6c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_HistogramEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49b74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49b74-0xda49c38 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xda49b84 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda49bb0 loads 4 bytes from [0x1010] +0x17f4.
  The `lw` at 0xda49bb4 loads 4 bytes from [[0x1010]+6132] +0x300.
  The `sh` at 0xda49bf0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda49bfc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda49c04 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sb` at 0xda49c0c stores 1 byte to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xda49c10 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda49bb8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda49bd4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda49c1c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4eff4, a3=?.
  The `bne` branch at 0xda49ba8 targets 0xda49bc8, is taken when a0 != at(=0x8025), and falls through when a0 == at(=0x8025).
  The `beq` branch at 0xda49bc0 targets 0xda49c28 and is always taken.
  The `beq` branch at 0xda49be4 targets 0xda49c28, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49c30 has v0 = one of ret(?), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_MinmaxEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49c38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49c38-0xda49cc4 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda49c50 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda49c84 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda49c90 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda49c98 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sb` at 0xda49ca0 stores 1 byte to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda49c68 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49ca8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f044, a3=?.
  The `beq` branch at 0xda49c78 targets 0xda49cb4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49cbc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ResetHistogramEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49cc4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49cc4-0xda49d38 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda49cdc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda49d08 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda49d14 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda49cec calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49d1c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f090, a3=?.
  The `beq` branch at 0xda49cfc targets 0xda49d28, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49d30 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ResetMinmaxEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49d38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49d38-0xda49dac (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda49d50 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda49d7c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda49d88 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda49d60 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49d90 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f0d0, a3=?.
  The `beq` branch at 0xda49d70 targets 0xda49d9c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49da4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_BindTextureEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49dac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49dac-0xda49e2c (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda49dc4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda49df4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda49e00 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda49e08 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda49dd8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49e10 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f110, a3=?.
  The `beq` branch at 0xda49de8 targets 0xda49e1c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49e24 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PrioritizeTexturesEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49e2c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49e2c-0xda49f38 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0xda49e60 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda49ebc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda49ecc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda49e6c calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49e8c calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49ea8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=((a0 << 0x2) + (a0 << 0x2))+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49edc calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xda49efc calls memcpy with a0=(ret(__glDlistAllocOp2) + (a0 << 0x2))+20, a1=a2 at entry (arg2), a2=(a0 << 0x2), a3=ret(__glDlistAllocOp2).
  The `jalr` at 0xda49f18 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f158, a3=?.
  The `bgez` branch at 0xda49e5c targets 0xda49e7c, is taken when s0(=(a0 << 0x2)) >= 0 (signed), and falls through when s0(=(a0 << 0x2)) < 0 (signed).
  The `beq` branch at 0xda49e74 targets 0xda49f24 and is always taken.
  The `bgez` branch at 0xda49e7c targets 0xda49e9c, is taken when s0(=(a0 << 0x2)) >= 0 (signed), and falls through when s0(=(a0 << 0x2)) < 0 (signed).
  The `beq` branch at 0xda49e94 targets 0xda49f24 and is always taken.
  The `beq` branch at 0xda49eb0 targets 0xda49f24, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49f30 has v0 = one of ret(__gllc_InvalidValue), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_CopyTexImage1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49f38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49f38-0xda49fe8 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xda49f50 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda49f88 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda49f94 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda49f9c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda49fa4 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda49fac stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xda49fb4 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sw` at 0xda49fbc stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `sw` at 0xda49fc4 stores 4 bytes to ret(__glDlistAllocOp2) +0x28.
  The `jalr` at 0xda49f6c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x1c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda49fcc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f1bc, a3=?.
  The `beq` branch at 0xda49f7c targets 0xda49fd8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda49fe0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_CopyTexImage2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda49fe8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda49fe8-0xda4a0a0 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xda4a000 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4a038 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4a044 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4a04c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda4a054 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda4a05c stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xda4a064 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sw` at 0xda4a06c stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `sw` at 0xda4a074 stores 4 bytes to ret(__glDlistAllocOp2) +0x28.
  The `sw` at 0xda4a07c stores 4 bytes to ret(__glDlistAllocOp2) +0x2c.
  The `jalr` at 0xda4a01c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4a084 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f224, a3=?.
  The `beq` branch at 0xda4a02c targets 0xda4a090, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4a098 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_CopyTexSubImage1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4a0a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4a0a0-0xda4a148 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xda4a0b8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4a0f0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4a0fc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4a104 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda4a10c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda4a114 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xda4a11c stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sw` at 0xda4a124 stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `jalr` at 0xda4a0d4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4a12c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f298, a3=?.
  The `beq` branch at 0xda4a0e4 targets 0xda4a138, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4a140 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_CopyTexSubImage2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4a148 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4a148-0xda4a200 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xda4a160 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4a198 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4a1a4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4a1ac stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda4a1b4 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda4a1bc stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xda4a1c4 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sw` at 0xda4a1cc stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `sw` at 0xda4a1d4 stores 4 bytes to ret(__glDlistAllocOp2) +0x28.
  The `sw` at 0xda4a1dc stores 4 bytes to ret(__glDlistAllocOp2) +0x2c.
  The `jalr` at 0xda4a17c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4a1e4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f2f8, a3=?.
  The `beq` branch at 0xda4a18c targets 0xda4a1f0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4a1f8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_CopyTexSubImage3DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4a200 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4a200-0xda4a2c0 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xda4a218 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4a250 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4a25c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4a264 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda4a26c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda4a274 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xda4a27c stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sw` at 0xda4a284 stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `sw` at 0xda4a28c stores 4 bytes to ret(__glDlistAllocOp2) +0x28.
  The `sw` at 0xda4a294 stores 4 bytes to ret(__glDlistAllocOp2) +0x2c.
  The `sw` at 0xda4a29c stores 4 bytes to ret(__glDlistAllocOp2) +0x30.
  The `jalr` at 0xda4a234 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x24, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4a2a4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f36c, a3=?.
  The `beq` branch at 0xda4a244 targets 0xda4a2b0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4a2b8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PolygonOffset` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4a2c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4a2c0-0xda4a340 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda4a2d4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4a308 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda4a314 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda4a31c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4a2ec calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4a324 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f3e4, a3=?.
  The `beq` branch at 0xda4a2fc targets 0xda4a330, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4a338 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Indexub` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4a340 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4a340-0xda4a3c0 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda4a358 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4a384 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda4a390 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda4a394 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4a39c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda4a368 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4a3a4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f428, a3=?.
  The `beq` branch at 0xda4a378 targets 0xda4a3b0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4a3b8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Indexubv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4a3c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4a3c0-0xda4a444 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda4a3d8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4a404 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lbu` at 0xda4a410 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xda4a414 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda4a418 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4a420 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda4a3e8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4a428 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f428, a3=?.
  The `beq` branch at 0xda4a3f8 targets 0xda4a434, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4a43c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_SampleMaskSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4a444 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4a444-0xda4a4c4 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda4a458 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4a48c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda4a498 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sb` at 0xda4a4a0 stores 1 byte to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4a470 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4a4a8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f464, a3=?.
  The `beq` branch at 0xda4a480 targets 0xda4a4b4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4a4bc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_SamplePatternSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4a4c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4a4c4-0xda4a538 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda4a4dc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4a508 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4a514 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4a4ec calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4a51c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f4a8, a3=?.
  The `beq` branch at 0xda4a4fc targets 0xda4a528, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4a530 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TagSampleBufferSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4a538 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4a538-0xda4a5a0 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda4a548 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4a578 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda4a55c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4a584 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f4e8, a3=?.
  The `beq` branch at 0xda4a56c targets 0xda4a590, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4a598 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_DetailTexFuncSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4a5a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4a5a0-0xda4a668 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xda4a5cc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4a60c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4a618 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4a620 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4a5d8 calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xda4a5f8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(a1 << 0x3)+8, a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xda4a630 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(a1 << 0x3), a3=?.
  The `jalr` at 0xda4a64c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f520, a3=?.
  The `bgez` branch at 0xda4a5c8 targets 0xda4a5e8, is taken when v0(=(a1 << 0x3)) >= 0 (signed), and falls through when v0(=(a1 << 0x3)) < 0 (signed).
  The `beq` branch at 0xda4a5e0 targets 0xda4a658 and is always taken.
  The `beq` branch at 0xda4a600 targets 0xda4a658, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4a660 has v0 = one of ret(__gllc_InvalidValue), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_SharpenTexFuncSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4a668 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4a668-0xda4a730 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xda4a694 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4a6d4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4a6e0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4a6e8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4a6a0 calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xda4a6c0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(a1 << 0x3)+8, a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xda4a6f8 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(a1 << 0x3), a3=?.
  The `jalr` at 0xda4a714 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f578, a3=?.
  The `bgez` branch at 0xda4a690 targets 0xda4a6b0, is taken when v0(=(a1 << 0x3)) >= 0 (signed), and falls through when v0(=(a1 << 0x3)) < 0 (signed).
  The `beq` branch at 0xda4a6a8 targets 0xda4a720 and is always taken.
  The `beq` branch at 0xda4a6c8 targets 0xda4a720, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4a728 has v0 = one of ret(__gllc_InvalidValue), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ColorTableParameterfvSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4a730 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4a730-0xda4a80c (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xda4a744 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4a7b0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4a7bc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4a7c4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4a760 calls __glColorTableParameterfvSGI_size [0xda07a18] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4a77c calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glColorTableParameterfvSGI_size) << 0x2), a3=?.
  The `jalr` at 0xda4a798 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glColorTableParameterfvSGI_size) << 0x2)+8, a2=(ret(__glColorTableParameterfvSGI_size) << 0x2), a3=?.
  The `jalr` at 0xda4a7d4 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glColorTableParameterfvSGI_size) << 0x2), a3=?.
  The `jalr` at 0xda4a7f0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f5d0, a3=?.
  The `bgez` branch at 0xda4a76c targets 0xda4a78c, is taken when a2(=(ret(__glColorTableParameterfvSGI_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glColorTableParameterfvSGI_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda4a784 targets 0xda4a7fc and is always taken.
  The `beq` branch at 0xda4a7a4 targets 0xda4a7fc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4a804 has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ColorTableParameterivSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4a80c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4a80c-0xda4a8e8 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xda4a820 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4a88c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4a898 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4a8a0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4a83c calls __glColorTableParameterivSGI_size [0xda07a3c] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4a858 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glColorTableParameterivSGI_size) << 0x2), a3=?.
  The `jalr` at 0xda4a874 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glColorTableParameterivSGI_size) << 0x2)+8, a2=(ret(__glColorTableParameterivSGI_size) << 0x2), a3=?.
  The `jalr` at 0xda4a8b0 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glColorTableParameterivSGI_size) << 0x2), a3=?.
  The `jalr` at 0xda4a8cc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f63c, a3=?.
  The `bgez` branch at 0xda4a848 targets 0xda4a868, is taken when a2(=(ret(__glColorTableParameterivSGI_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glColorTableParameterivSGI_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda4a860 targets 0xda4a8d8 and is always taken.
  The `beq` branch at 0xda4a880 targets 0xda4a8d8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4a8e0 has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_CopyColorTableSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4a8e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4a8e8-0xda4a988 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda4a900 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4a938 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4a944 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4a94c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda4a954 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda4a95c stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xda4a964 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `jalr` at 0xda4a91c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x14, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4a96c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f6a8, a3=?.
  The `beq` branch at 0xda4a92c targets 0xda4a978, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4a980 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PixelTexGenSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4a988 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4a988-0xda4a9fc (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda4a9a0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4a9cc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4a9d8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4a9b0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4a9e0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f700, a3=?.
  The `beq` branch at 0xda4a9c0 targets 0xda4a9ec, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4a9f4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_SpriteParameterfSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4a9fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4a9fc-0xda4aa7c (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda4aa14 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4aa44 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4aa50 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda4aa58 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4aa28 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4aa60 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f740, a3=?.
  The `beq` branch at 0xda4aa38 targets 0xda4aa6c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4aa74 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_SpriteParameterfvSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4aa7c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4aa7c-0xda4ab48 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xda4aa90 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4aaf4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4ab00 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4aaa4 calls __glSpriteParameterfvSGIX_size [0xda07a70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4aac0 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glSpriteParameterfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4aadc calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glSpriteParameterfvSGIX_size) << 0x2)+4, a2=(ret(__glSpriteParameterfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4ab10 calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=(ret(__glSpriteParameterfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4ab2c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f788, a3=?.
  The `bgez` branch at 0xda4aab0 targets 0xda4aad0, is taken when a2(=(ret(__glSpriteParameterfvSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glSpriteParameterfvSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda4aac8 targets 0xda4ab38 and is always taken.
  The `beq` branch at 0xda4aae8 targets 0xda4ab38, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4ab40 has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_SpriteParameteriSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ab48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ab48-0xda4abc8 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda4ab60 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4ab90 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4ab9c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4aba4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4ab74 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4abac calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f7f0, a3=?.
  The `beq` branch at 0xda4ab84 targets 0xda4abb8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4abc0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_SpriteParameterivSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4abc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4abc8-0xda4ac94 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xda4abdc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4ac40 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4ac4c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4abf0 calls __glSpriteParameterivSGIX_size [0xda07ab4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4ac0c calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glSpriteParameterivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4ac28 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glSpriteParameterivSGIX_size) << 0x2)+4, a2=(ret(__glSpriteParameterivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4ac5c calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=(ret(__glSpriteParameterivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4ac78 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f838, a3=?.
  The `bgez` branch at 0xda4abfc targets 0xda4ac1c, is taken when a2(=(ret(__glSpriteParameterivSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glSpriteParameterivSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda4ac14 targets 0xda4ac84 and is always taken.
  The `beq` branch at 0xda4ac34 targets 0xda4ac84, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4ac8c has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexFilterFuncSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ac94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ac94-0xda4ad68 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xda4aca4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4ad04 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4ad10 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4ad18 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda4ad20 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda4acd4 calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4acf0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(a2 << 0x2)+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4ad30 calls memcpy with a0=ret(__glDlistAllocOp2)+28, a1=a3 at entry (arg3), a2=(a2 << 0x2), a3=?.
  The `jalr` at 0xda4ad4c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f8a0, a3=?.
  The `bgez` branch at 0xda4acc4 targets 0xda4ace4, is taken when v0(=(a2 << 0x2)) >= 0 (signed), and falls through when v0(=(a2 << 0x2)) < 0 (signed).
  The `beq` branch at 0xda4acdc targets 0xda4ad58 and is always taken.
  The `beq` branch at 0xda4acf8 targets 0xda4ad58, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4ad60 has v0 = one of ret(__gllc_InvalidValue), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PointParameterfSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ad68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ad68-0xda4ade8 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda4ad80 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4adb0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4adbc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda4adc4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4ad94 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4adcc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f8fc, a3=?.
  The `beq` branch at 0xda4ada4 targets 0xda4add8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4ade0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PointParameterfvSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ade8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ade8-0xda4aeb4 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xda4adfc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4ae60 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4ae6c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4ae10 calls __glPointParameterfvSGIS_size [0xda07ae8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4ae2c calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glPointParameterfvSGIS_size) << 0x2), a3=?.
  The `jalr` at 0xda4ae48 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glPointParameterfvSGIS_size) << 0x2)+4, a2=(ret(__glPointParameterfvSGIS_size) << 0x2), a3=?.
  The `jalr` at 0xda4ae7c calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=(ret(__glPointParameterfvSGIS_size) << 0x2), a3=?.
  The `jalr` at 0xda4ae98 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f944, a3=?.
  The `bgez` branch at 0xda4ae1c targets 0xda4ae3c, is taken when a2(=(ret(__glPointParameterfvSGIS_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glPointParameterfvSGIS_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda4ae34 targets 0xda4aea4 and is always taken.
  The `beq` branch at 0xda4ae54 targets 0xda4aea4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4aeac has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_FogFuncSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4aeb4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4aeb4-0xda4af74 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xda4aedc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4af20 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4af2c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4aee8 calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=a1 at entry (arg1), a2=(a0 << 0x3), a3=[0x1010].
  The `jalr` at 0xda4af08 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(a0 << 0x3)+4, a2=(a0 << 0x3), a3=[0x1010].
  The `jalr` at 0xda4af3c calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=(a0 << 0x3), a3=?.
  The `jalr` at 0xda4af58 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4f9ac, a3=?.
  The `bgez` branch at 0xda4aed8 targets 0xda4aef8, is taken when a2(=(a0 << 0x3)) >= 0 (signed), and falls through when a2(=(a0 << 0x3)) < 0 (signed).
  The `beq` branch at 0xda4aef0 targets 0xda4af64 and is always taken.
  The `beq` branch at 0xda4af14 targets 0xda4af64, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4af6c has v0 = one of ret(__gllc_InvalidValue), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ReadInstrumentsSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4af74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4af74-0xda4afe8 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda4af8c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4afb8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4afc4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4af9c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4afcc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4fa00, a3=?.
  The `beq` branch at 0xda4afac targets 0xda4afd8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4afe0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_StartInstrumentsSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4afe8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4afe8-0xda4b050 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda4aff8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4b028 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda4b00c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b034 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4fa40, a3=?.
  The `beq` branch at 0xda4b01c targets 0xda4b040, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4b048 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_StopInstrumentsSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4b050 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4b050-0xda4b0c4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda4b068 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4b094 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4b0a0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4b078 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b0a8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4fa78, a3=?.
  The `beq` branch at 0xda4b088 targets 0xda4b0b4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4b0bc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ReferencePlaneSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4b0c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4b0c4-0xda4b160 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xda4b0dc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4b114 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda4b118 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xda4b11c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda4b124 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xda4b128 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda4b12c stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `ldc1` at 0xda4b130 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda4b134 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `ldc1` at 0xda4b138 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sdc1` at 0xda4b13c stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `jalr` at 0xda4b0f0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda4b144 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4fab8, a3=a0 at entry (arg0).
  The `beq` branch at 0xda4b104 targets 0xda4b150, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4b158 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_FrameZoomSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4b160 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4b160-0xda4b1d4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda4b178 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4b1a4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4b1b0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4b188 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b1b8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4faf4, a3=?.
  The `beq` branch at 0xda4b198 targets 0xda4b1c4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4b1cc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_DeformSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4b1d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4b1d4-0xda4b248 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda4b1ec loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4b218 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4b224 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4b1fc calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b22c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4fb34, a3=?.
  The `beq` branch at 0xda4b20c targets 0xda4b238, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4b240 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LoadIdentityDeformationMapSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4b248 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4b248-0xda4b2bc (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda4b260 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4b28c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4b298 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4b270 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b2a0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4fb74, a3=?.
  The `beq` branch at 0xda4b280 targets 0xda4b2ac, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4b2b4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_CopyColorSubTable` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4b2bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4b2bc-0xda4b35c (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda4b2d4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4b30c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4b318 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4b320 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda4b328 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda4b330 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xda4b338 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `jalr` at 0xda4b2f0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x14, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b340 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4fbb4, a3=?.
  The `beq` branch at 0xda4b300 targets 0xda4b34c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4b354 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PixelTexGenParameteriSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4b35c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4b35c-0xda4b3dc (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda4b374 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4b3a4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4b3b0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4b3b8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4b388 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b3c0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4fc0c, a3=?.
  The `beq` branch at 0xda4b398 targets 0xda4b3cc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4b3d4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PixelTexGenParameterfSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4b4a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4b4a8-0xda4b528 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda4b4c0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4b4f0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4b4fc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda4b504 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4b4d4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b50c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4fcbc, a3=?.
  The `beq` branch at 0xda4b4e4 targets 0xda4b518, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4b520 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_AsyncMarkerSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4b5f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4b5f4-0xda4b668 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda4b60c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4b638 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4b644 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4b61c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b64c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4fd6c, a3=?.
  The `beq` branch at 0xda4b62c targets 0xda4b658, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4b660 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_FragmentColorMaterialSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4b668 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4b668-0xda4b6e8 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda4b680 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4b6b0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4b6bc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4b6c4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4b694 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b6cc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4fdac, a3=?.
  The `beq` branch at 0xda4b6a4 targets 0xda4b6d8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4b6e0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).


- `__gllc_FragmentLightfSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4b6e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4b6e8-0xda4b774 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda4b700 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4b734 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4b740 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4b748 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda4b750 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda4b718 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b758 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4fdf4, a3=?.
  The `beq` branch at 0xda4b728 targets 0xda4b764, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4b76c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_FragmentLightfvSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4b774 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4b774-0xda4b850 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xda4b788 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4b7f4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4b800 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4b808 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4b7a4 calls __glFragmentLightfvSGIX_size [0xda07d1c] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b7c0 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glFragmentLightfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4b7dc calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glFragmentLightfvSGIX_size) << 0x2)+8, a2=(ret(__glFragmentLightfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4b818 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glFragmentLightfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4b834 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4fe40, a3=?.
  The `bgez` branch at 0xda4b7b0 targets 0xda4b7d0, is taken when a2(=(ret(__glFragmentLightfvSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentLightfvSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda4b7c8 targets 0xda4b840 and is always taken.
  The `beq` branch at 0xda4b7e8 targets 0xda4b840, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4b848 has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_FragmentLightiSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4b850 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4b850-0xda4b8dc (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda4b868 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4b89c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4b8a8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4b8b0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda4b8b8 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda4b880 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b8c0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4feac, a3=?.
  The `beq` branch at 0xda4b890 targets 0xda4b8cc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4b8d4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_FragmentLightivSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4b8dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4b8dc-0xda4b9b8 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xda4b8f0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4b95c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4b968 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4b970 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4b90c calls __glFragmentLightivSGIX_size [0xda07dd4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b928 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glFragmentLightivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4b944 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glFragmentLightivSGIX_size) << 0x2)+8, a2=(ret(__glFragmentLightivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4b980 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glFragmentLightivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4b99c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4fef8, a3=?.
  The `bgez` branch at 0xda4b918 targets 0xda4b938, is taken when a2(=(ret(__glFragmentLightivSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentLightivSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda4b930 targets 0xda4b9a8 and is always taken.
  The `beq` branch at 0xda4b950 targets 0xda4b9a8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4b9b0 has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_FragmentLightModelfSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4b9b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4b9b8-0xda4ba38 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda4b9d0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4ba00 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4ba0c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda4ba14 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4b9e4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4ba1c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ff64, a3=?.
  The `beq` branch at 0xda4b9f4 targets 0xda4ba28, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4ba30 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_FragmentLightModelfvSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ba38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ba38-0xda4bb04 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xda4ba4c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4bab0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4babc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4ba60 calls __glFragmentLightModelfvSGIX_size [0xda07e08] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4ba7c calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glFragmentLightModelfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4ba98 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glFragmentLightModelfvSGIX_size) << 0x2)+4, a2=(ret(__glFragmentLightModelfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4bacc calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=(ret(__glFragmentLightModelfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4bae8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ffac, a3=?.
  The `bgez` branch at 0xda4ba6c targets 0xda4ba8c, is taken when a2(=(ret(__glFragmentLightModelfvSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentLightModelfvSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda4ba84 targets 0xda4baf4 and is always taken.
  The `beq` branch at 0xda4baa4 targets 0xda4baf4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4bafc has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_FragmentLightModeliSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4bb04 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4bb04-0xda4bb84 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda4bb1c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4bb4c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4bb58 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4bb60 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4bb30 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4bb68 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda50014, a3=?.
  The `beq` branch at 0xda4bb40 targets 0xda4bb74, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4bb7c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_FragmentLightModelivSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4bb84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4bb84-0xda4bc50 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xda4bb98 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4bbfc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4bc08 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4bbac calls __glFragmentLightModelivSGIX_size [0xda07e5c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4bbc8 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glFragmentLightModelivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4bbe4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glFragmentLightModelivSGIX_size) << 0x2)+4, a2=(ret(__glFragmentLightModelivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4bc18 calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=(ret(__glFragmentLightModelivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4bc34 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda5005c, a3=?.
  The `bgez` branch at 0xda4bbb8 targets 0xda4bbd8, is taken when a2(=(ret(__glFragmentLightModelivSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentLightModelivSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda4bbd0 targets 0xda4bc40 and is always taken.
  The `beq` branch at 0xda4bbf0 targets 0xda4bc40, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4bc48 has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_FragmentMaterialfSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4bc50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4bc50-0xda4bcdc (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda4bc68 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4bc9c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4bca8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4bcb0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda4bcb8 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda4bc80 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4bcc0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda500c4, a3=?.
  The `beq` branch at 0xda4bc90 targets 0xda4bccc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4bcd4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_FragmentMaterialfvSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4bcdc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4bcdc-0xda4bdf0 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xda4bd08 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda4bd10 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sh` at 0xda4bd90 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4bd9c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4bda4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4bd0c calls __glErrorCheckMaterial [0xd9c339c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a2], a3=a3 at entry (arg3).
  The `jalr` at 0xda4bd28 calls __gllc_Error [0xd993598] with a0=[0x1010], a1=ret(__glErrorCheckMaterial), a2=?, a3=?.
  The `jalr` at 0xda4bd40 calls __glFragmentMaterialfvSGIX_size [0xda07c74] with a0=a1 at entry (arg1), a1=ret(__glErrorCheckMaterial), a2=?, a3=?.
  The `jalr` at 0xda4bd5c calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glFragmentMaterialfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4bd78 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glFragmentMaterialfvSGIX_size) << 0x2)+8, a2=(ret(__glFragmentMaterialfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4bdb4 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glFragmentMaterialfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4bdd0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda50110, a3=?.
  The `beq` branch at 0xda4bd18 targets 0xda4bd38, is taken when v0(=ret(__glErrorCheckMaterial)) == 0, and falls through when v0(=ret(__glErrorCheckMaterial)) != 0.
  The `beq` branch at 0xda4bd30 targets 0xda4bddc and is always taken.
  The `bgez` branch at 0xda4bd4c targets 0xda4bd6c, is taken when a2(=(ret(__glFragmentMaterialfvSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentMaterialfvSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda4bd64 targets 0xda4bddc and is always taken.
  The `beq` branch at 0xda4bd84 targets 0xda4bddc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4bde8 has v0 = one of ret(__gllc_Error), ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_FragmentMaterialiSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4bdf0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4bdf0-0xda4be7c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda4be08 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4be3c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4be48 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4be50 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda4be58 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda4be20 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4be60 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda5017c, a3=?.
  The `beq` branch at 0xda4be30 targets 0xda4be6c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4be74 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_FragmentMaterialivSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4be7c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4be7c-0xda4bfa4 (296 bytes).
  It occupies 296 bytes.
  The `lw` at 0xda4bea4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lw` at 0xda4beac loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4bf44 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4bf50 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4bf58 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4bec0 calls __glErrorCheckMaterial [0xd9c339c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xda4bedc calls __gllc_Error [0xd993598] with a0=[0x1010], a1=ret(__glErrorCheckMaterial), a2=?, a3=?.
  The `jalr` at 0xda4bef4 calls __glFragmentMaterialivSGIX_size [0xda07ce8] with a0=a1 at entry (arg1), a1=ret(__glErrorCheckMaterial), a2=?, a3=?.
  The `jalr` at 0xda4bf10 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glFragmentMaterialivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4bf2c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glFragmentMaterialivSGIX_size) << 0x2)+8, a2=(ret(__glFragmentMaterialivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4bf68 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glFragmentMaterialivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda4bf84 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda501c8, a3=?.
  The `beq` branch at 0xda4becc targets 0xda4beec, is taken when v0(=ret(__glErrorCheckMaterial)) == 0, and falls through when v0(=ret(__glErrorCheckMaterial)) != 0.
  The `beq` branch at 0xda4bee4 targets 0xda4bf90 and is always taken.
  The `bgez` branch at 0xda4bf00 targets 0xda4bf20, is taken when a2(=(ret(__glFragmentMaterialivSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentMaterialivSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda4bf18 targets 0xda4bf90 and is always taken.
  The `beq` branch at 0xda4bf38 targets 0xda4bf90, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4bf9c has v0 = one of ret(__gllc_Error), ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LightEnviSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4bfa4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4bfa4-0xda4c024 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda4bfbc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4bfec stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4bff8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4c000 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4bfd0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4c008 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda50234, a3=?.
  The `beq` branch at 0xda4bfe0 targets 0xda4c014, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4c01c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TextureColorMaskSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c024 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c024-0xda4c0bc (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda4c03c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4c074 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda4c080 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `sb` at 0xda4c088 stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `sb` at 0xda4c090 stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `sb` at 0xda4c098 stores 1 byte to ret(__glDlistAllocOp2) +0x13.
  The `jalr` at 0xda4c058 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4c0a0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda5027c, a3=?.
  The `beq` branch at 0xda4c068 targets 0xda4c0ac, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4c0b4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__glim_MipsVertex3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda70560 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda70560-0xda705d0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xda70560 loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda70564 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xda70568 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda7056c loads 4 bytes from [0x1010] +0x31c8.
  The `lw` at 0xda70570 loads 4 bytes from [0x1010] +0x7414.
  The `lw` at 0xda70574 loads 4 bytes from [0x1010] +0x2f04.
  The `lwc1` at 0xda70578 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda70580 stores 4 bytes to [[0x1010]+12744] +0xc.
  The `swc1` at 0xda70584 stores 4 bytes to [[0x1010]+12744] +0x10.
  The `swc1` at 0xda70588 stores 4 bytes to [[0x1010]+12744] +0x14.
  The `swc1` at 0xda7058c stores 4 bytes to [[0x1010]+12744] +0x18.
  The `sw` at 0xda70590 stores 4 bytes to [[0x1010]+12744] +0x1c.
  The `lw` at 0xda70598 loads 4 bytes from [[0x1010]+29716] +0x104.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda705ac, `lw` at 0xda705c0.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda705bc, `sw` at 0xda705cc.
  The `jalr` at 0xda705a4 calls (unknown callee) with a0=[[0x1010]+12744]+112, a1=a0 at entry (arg0), a2=[[0x1010]+29716]+176, a3=a3 at entry (arg3); fp f12=[a0+4], f14=[a0+8].
  The `jalr` at 0xda705b8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xda705c8).

- `__glim_MipsVertex2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda705d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda705d0-0xda7063c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda705d0 loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda705d4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xda705d8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda705dc loads 4 bytes from [0x1010] +0x31c8.
  The `lw` at 0xda705e0 loads 4 bytes from [0x1010] +0x7414.
  The `lw` at 0xda705e4 loads 4 bytes from [0x1010] +0x2f00.
  The `swc1` at 0xda705ec stores 4 bytes to [[0x1010]+12744] +0x10.
  The `swc1` at 0xda705f0 stores 4 bytes to [[0x1010]+12744] +0x14.
  The `sw` at 0xda705f4 stores 4 bytes to [[0x1010]+12744] +0xc.
  The `sw` at 0xda705f8 stores 4 bytes to [[0x1010]+12744] +0x18.
  The `sw` at 0xda705fc stores 4 bytes to [[0x1010]+12744] +0x1c.
  The `lw` at 0xda70604 loads 4 bytes from [[0x1010]+29716] +0xf8.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda70618, `lw` at 0xda7062c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda70628, `sw` at 0xda70638.
  The `jalr` at 0xda70610 calls (unknown callee) with a0=[[0x1010]+12744]+112, a1=a0 at entry (arg0), a2=[[0x1010]+29716]+176, a3=a3 at entry (arg3).
  The `jalr` at 0xda70624 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xda70634).

- `__glim_MipsVertex4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda7063c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda7063c-0xda706ac (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xda7063c loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda70640 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xda70644 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xda70648 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xda7064c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda70650 loads 4 bytes from [0x1010] +0x31c8.
  The `lw` at 0xda70654 loads 4 bytes from [0x1010] +0x7414.
  The `lw` at 0xda70658 loads 4 bytes from [0x1010] +0x2f08.
  The `swc1` at 0xda7065c stores 4 bytes to [[0x1010]+12744] +0x10.
  The `swc1` at 0xda70660 stores 4 bytes to [[0x1010]+12744] +0x14.
  The `swc1` at 0xda70664 stores 4 bytes to [[0x1010]+12744] +0x18.
  The `swc1` at 0xda70668 stores 4 bytes to [[0x1010]+12744] +0x1c.
  The `sw` at 0xda7066c stores 4 bytes to [[0x1010]+12744] +0xc.
  The `lw` at 0xda70670 loads 4 bytes from [[0x1010]+29716] +0x100.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda70688, `lw` at 0xda7069c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda70698, `sw` at 0xda706a8.
  The `jalr` at 0xda70680 calls (unknown callee) with a0=[[0x1010]+12744]+112, a1=a0 at entry (arg0), a2=[[0x1010]+29716]+176, a3=a3 at entry (arg3).
  The `jalr` at 0xda70694 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xda706a4).

- `__glim_MipsVertex3fvFast` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda706ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda706ac-0xda706fc (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xda706ac loads 4 bytes from abs 0x1010.
  The `lw` at 0xda706b4 loads 4 bytes from [0x1010] +0x31c8.
  The `lw` at 0xda706b8 loads 4 bytes from [0x1010] +0x7414.
  The `lw` at 0xda706bc loads 4 bytes from [0x1010] +0x2f04.
  The `lw` at 0xda706c0 loads 4 bytes from [[0x1010]+29716] +0xfc.
  The `sw` at 0xda706c4 stores 4 bytes to [[0x1010]+12744] +0xc.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda706d8, `lw` at 0xda706ec.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda706e8, `sw` at 0xda706f8.
  The `jalr` at 0xda706d0 calls (unknown callee) with a0=[[0x1010]+12744]+112, a1=a0 at entry (arg0), a2=[[0x1010]+29716]+176, a3=a3 at entry (arg3).
  The `jalr` at 0xda706e4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xda706f4).

- `__glim_MipsVertex2fvFast` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda706fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda706fc-0xda7074c (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xda706fc loads 4 bytes from abs 0x1010.
  The `lw` at 0xda70704 loads 4 bytes from [0x1010] +0x31c8.
  The `lw` at 0xda70708 loads 4 bytes from [0x1010] +0x7414.
  The `lw` at 0xda7070c loads 4 bytes from [0x1010] +0x2f00.
  The `lw` at 0xda70710 loads 4 bytes from [[0x1010]+29716] +0xf8.
  The `sw` at 0xda70714 stores 4 bytes to [[0x1010]+12744] +0xc.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda70728, `lw` at 0xda7073c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda70738, `sw` at 0xda70748.
  The `jalr` at 0xda70720 calls (unknown callee) with a0=[[0x1010]+12744]+112, a1=a0 at entry (arg0), a2=[[0x1010]+29716]+176, a3=a3 at entry (arg3).
  The `jalr` at 0xda70734 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xda70744).

- `__glim_MipsVertex4fvFast` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda7074c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda7074c-0xda7079c (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xda7074c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda70754 loads 4 bytes from [0x1010] +0x31c8.
  The `lw` at 0xda70758 loads 4 bytes from [0x1010] +0x7414.
  The `lw` at 0xda7075c loads 4 bytes from [0x1010] +0x2f08.
  The `lw` at 0xda70760 loads 4 bytes from [[0x1010]+29716] +0x100.
  The `sw` at 0xda70764 stores 4 bytes to [[0x1010]+12744] +0xc.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda70778, `lw` at 0xda7078c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda70788, `sw` at 0xda70798.
  The `jalr` at 0xda70770 calls (unknown callee) with a0=[[0x1010]+12744]+112, a1=a0 at entry (arg0), a2=[[0x1010]+29716]+176, a3=a3 at entry (arg3).
  The `jalr` at 0xda70784 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xda70794).

- `__glim_MipsNoXFVertex3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda7079c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda7079c-0xda707f4 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda7079c loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda707a0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xda707a4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda707a8 loads 4 bytes from [0x1010] +0x31c8.
  The `lw` at 0xda707ac loads 4 bytes from [0x1010] +0x2f04.
  The `lwc1` at 0xda707b0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xda707b4 loads 4 bytes from [0x1010] +0xdd8.
  The `sw` at 0xda707b8 stores 4 bytes to [[0x1010]+12744] +0xc.
  The `swc1` at 0xda707bc stores 4 bytes to [[0x1010]+12744] +0x10.
  The `swc1` at 0xda707c0 stores 4 bytes to [[0x1010]+12744] +0x14.
  The `swc1` at 0xda707c4 stores 4 bytes to [[0x1010]+12744] +0x18.
  The `swc1` at 0xda707c8 stores 4 bytes to [[0x1010]+12744] +0x1c.
  The `lw` at 0xda707cc loads 4 bytes from [0x1010] +0x2edc.
  The `sw` at 0xda707e0 stores 4 bytes to [[0x1010]+12744] +0x0.
  The `lw` at 0xda707e4 loads 4 bytes from ?.
  The `sw` at 0xda707f0 stores 4 bytes to ?.
  The `jalr` at 0xda707dc calls (unknown callee) with a0=[0x1010], a1=[[0x1010]+12744], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xda707ec).

- `__glim_MipsNoXFVertex2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda707f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda707f4-0xda7084c (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda707f4 loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda707f8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xda707fc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda70800 loads 4 bytes from [0x1010] +0x31c8.
  The `lw` at 0xda70804 loads 4 bytes from [0x1010] +0x2f00.
  The `lwc1` at 0xda70808 loads 4 bytes from [0x1010] +0xdd8.
  The `sw` at 0xda7080c stores 4 bytes to [[0x1010]+12744] +0xc.
  The `swc1` at 0xda70810 stores 4 bytes to [[0x1010]+12744] +0x10.
  The `swc1` at 0xda70814 stores 4 bytes to [[0x1010]+12744] +0x14.
  The `sw` at 0xda70818 stores 4 bytes to [[0x1010]+12744] +0x18.
  The `swc1` at 0xda7081c stores 4 bytes to [[0x1010]+12744] +0x1c.
  The `lw` at 0xda70824 loads 4 bytes from [0x1010] +0x2ed8.
  The `sw` at 0xda70838 stores 4 bytes to [[0x1010]+12744] +0x0.
  The `lw` at 0xda7083c loads 4 bytes from ?.
  The `sw` at 0xda70848 stores 4 bytes to ?.
  The `jalr` at 0xda70834 calls (unknown callee) with a0=[0x1010], a1=[[0x1010]+12744], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xda70844).

- `__glim_MipsNoXFVertex4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda7084c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda7084c-0xda708a4 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda7084c loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda70850 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xda70854 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda7085c loads 4 bytes from [0x1010] +0x31c8.
  The `lw` at 0xda70860 loads 4 bytes from [0x1010] +0x2f08.
  The `lwc1` at 0xda70864 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xda70868 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xda7086c stores 4 bytes to [[0x1010]+12744] +0xc.
  The `swc1` at 0xda70870 stores 4 bytes to [[0x1010]+12744] +0x10.
  The `swc1` at 0xda70874 stores 4 bytes to [[0x1010]+12744] +0x14.
  The `swc1` at 0xda70878 stores 4 bytes to [[0x1010]+12744] +0x18.
  The `swc1` at 0xda7087c stores 4 bytes to [[0x1010]+12744] +0x1c.
  The `lw` at 0xda70880 loads 4 bytes from [0x1010] +0x2ee0.
  The `sw` at 0xda70890 stores 4 bytes to [[0x1010]+12744] +0x0.
  The `lw` at 0xda70894 loads 4 bytes from ?.
  The `sw` at 0xda708a0 stores 4 bytes to ?.
  The `jalr` at 0xda7088c calls (unknown callee) with a0=[0x1010], a1=[[0x1010]+12744], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xda7089c).

- `__glim_MipsNoXFVertex3fvFast` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda708a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda708a4-0xda708fc (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda708a4 loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda708a8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xda708ac loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xda708b0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda708b4 loads 4 bytes from [0x1010] +0x31c8.
  The `lw` at 0xda708b8 loads 4 bytes from [0x1010] +0x2f04.
  The `lwc1` at 0xda708bc loads 4 bytes from [0x1010] +0xdd8.
  The `swc1` at 0xda708c0 stores 4 bytes to [[0x1010]+12744] +0x10.
  The `swc1` at 0xda708c4 stores 4 bytes to [[0x1010]+12744] +0x14.
  The `swc1` at 0xda708c8 stores 4 bytes to [[0x1010]+12744] +0x18.
  The `swc1` at 0xda708cc stores 4 bytes to [[0x1010]+12744] +0x1c.
  The `sw` at 0xda708d0 stores 4 bytes to [[0x1010]+12744] +0xc.
  The `lw` at 0xda708d4 loads 4 bytes from [0x1010] +0x2edc.
  The `sw` at 0xda708e8 stores 4 bytes to [[0x1010]+12744] +0x0.
  The `lw` at 0xda708ec loads 4 bytes from ?.
  The `sw` at 0xda708f8 stores 4 bytes to ?.
  The `jalr` at 0xda708e4 calls (unknown callee) with a0=[0x1010], a1=[[0x1010]+12744], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xda708f4).

- `__glim_MipsNoXFVertex4fvFast` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda708fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda708fc-0xda70954 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda708fc loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda70900 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xda70904 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xda70908 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda7090c loads 4 bytes from [0x1010] +0x31c8.
  The `lw` at 0xda70910 loads 4 bytes from [0x1010] +0x2f08.
  The `lwc1` at 0xda70914 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xda70918 stores 4 bytes to [[0x1010]+12744] +0x10.
  The `swc1` at 0xda7091c stores 4 bytes to [[0x1010]+12744] +0x14.
  The `swc1` at 0xda70920 stores 4 bytes to [[0x1010]+12744] +0x18.
  The `swc1` at 0xda70924 stores 4 bytes to [[0x1010]+12744] +0x1c.
  The `sw` at 0xda70928 stores 4 bytes to [[0x1010]+12744] +0xc.
  The `lw` at 0xda7092c loads 4 bytes from [0x1010] +0x2ee0.
  The `sw` at 0xda70940 stores 4 bytes to [[0x1010]+12744] +0x0.
  The `lw` at 0xda70944 loads 4 bytes from ?.
  The `sw` at 0xda70950 stores 4 bytes to ?.
  The `jalr` at 0xda7093c calls (unknown callee) with a0=[0x1010], a1=[[0x1010]+12744], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xda7094c).

- `__glim_MipsNoXFVertex2fvFast2D` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda70954 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda70954-0xda70a4c (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0xda70954 loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda70958 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xda7095c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda70960 loads 4 bytes from [0x1010] +0x31c8.
  The `lw` at 0xda70964 loads 4 bytes from [0x1010] +0x2f00.
  The `swc1` at 0xda7096c stores 4 bytes to [[0x1010]+12744] +0x10.
  The `swc1` at 0xda70970 stores 4 bytes to [[0x1010]+12744] +0x14.
  The `lwc1` at 0xda70974 loads 4 bytes from [0x1010] +0x746c.
  The `lwc1` at 0xda70978 loads 4 bytes from [0x1010] +0x7470.
  The `sw` at 0xda7097c stores 4 bytes to [[0x1010]+12744] +0xc.
  The `sw` at 0xda70980 stores 4 bytes to [[0x1010]+12744] +0x0.
  The `lwc1` at 0xda70988 loads 4 bytes from [0x1010] +0x749c.
  The `lwc1` at 0xda7098c loads 4 bytes from [0x1010] +0x747c.
  The `lwc1` at 0xda70994 loads 4 bytes from [0x1010] +0x74a0.
  The `lwc1` at 0xda70998 loads 4 bytes from [0x1010] +0x7480.
  The `lw` at 0xda709ac loads 4 bytes from [0x1010] +0x745c.
  The `lw` at 0xda709b4 loads 4 bytes from [0x1010] +0x7464.
  The `lw` at 0xda709b8 loads 4 bytes from [0x1010] +0x7460.
  The `lw` at 0xda709c4 loads 4 bytes from [0x1010] +0x7468.
  The `lw` at 0xda709d0 loads 4 bytes from [0x1010] +0x12f0.
  The `lw` at 0xda709d4 loads 4 bytes from [0x1010] +0x2ee4.
  The `sw` at 0xda709fc stores 4 bytes to [[0x1010]+12744] +0x80.
  The `sw` at 0xda70a00 stores 4 bytes to [[0x1010]+12744] +0x84.
  The `sw` at 0xda70a08 stores 4 bytes to [[0x1010]+12744] +0x4.
  Calls (unknown callee) via register with a0=[0x1010], a1=[[0x1010]+12744], a2=[[0x1010]+29800], a3=?; fp f14=[a0+4] (`jr` at 0xda70a04).
  The `bne` branch at 0xda709e0 targets 0xda70a0c, is taken when a3(?) < t7(=[[0x1010]+29788]) (signed), and falls through when a3(?) >= t7(=[[0x1010]+29788]) (signed).
  The `beq` branch at 0xda709e8 targets 0xda70a14, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0xda709f0 targets 0xda70a1c, is taken when t4(?) != 0, and falls through when t4(?) == 0.
  The `beq` branch at 0xda709f8 targets 0xda70a34, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xda70a0c targets 0xda709e8 and is always taken.
  The `beq` branch at 0xda70a14 targets 0xda709f0 and is always taken.
  The `bne` branch at 0xda70a1c targets 0xda70a2c, is taken when t0(=[[0x1010]+4848]) != 0, and falls through when t0(=[[0x1010]+4848]) == 0.
  The `beq` branch at 0xda70a24 targets 0xda709f8 and is always taken.
  The `beq` branch at 0xda70a2c targets 0xda709f8 and is always taken.
  The `bne` branch at 0xda70a34 targets 0xda70a44, is taken when t0(=[[0x1010]+4848]) != 0, and falls through when t0(=[[0x1010]+4848]) == 0.
  The `beq` branch at 0xda70a3c targets 0xda70a00 and is always taken.
  The `beq` branch at 0xda70a44 targets 0xda70a00 and is always taken.

- `__glim_GenAsyncMarkersSGIX` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9bb770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
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

- `__glim_IsAsyncMarkerSGIX` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9bb820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
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

- `__glim_DeleteAsyncMarkersSGIX` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9bba30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
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

- `__glim_BlendEquationEXT` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9bbf20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9bbf20-0xd9bc048 (296 bytes).
  It occupies 296 bytes.
  The `lw` at 0xd9bbf28 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9bbf34 loads 4 bytes from abs 0x1010.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x72c, including `sw` at 0xd9bbfb4, `sw` at 0xd9bc02c.
  The `sw` at 0xd9bbfbc stores 4 bytes to abs 0x1018.
  The `lw` at 0xd9bbfc0 loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xd9bbfd4 stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xd9bbff0 calls __glSetError [0xd9cd900] with a0=0x500, a1=?, a2=[0x1010], a3=one of 0x8006, 0x8007, 0x8320, a5=0x8321.
  The `jalr` at 0xd9bc038 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3), a5=0x8321.
  The `beq` branch at 0xd9bbf44 targets 0xd9bc030, is taken when v0(=[0x1018]) == v1(=0x1), and falls through when v0(=[0x1018]) != v1(=0x1).
  The `bne` branch at 0xd9bbf54 targets 0xd9bbf94, is taken when a0 < a3(=0x800a) (unsigned), and falls through when a0 >= a3(=0x800a) (unsigned).
  The `beq` branch at 0xd9bbf6c targets 0xd9bbfb4, is taken when a3(=0x800a) >= a0 (unsigned), and falls through when a3(=0x800a) < a0 (unsigned).
  The `bne` branch at 0xd9bbf74 targets 0xd9bbfe4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xd9bbf7c targets 0xd9bbfb4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xd9bbf84 targets 0xd9bbfb4, is taken when a0 == a5(=0x8321), and falls through when a0 != a5(=0x8321).
  The `beq` branch at 0xd9bbf8c targets 0xd9bbfe8 and is always taken.
  The `bne` branch at 0xd9bbf9c targets 0xd9bc000, is taken when a0 < a3(=0x8007) (unsigned), and falls through when a0 >= a3(=0x8007) (unsigned).
  The `beq` branch at 0xd9bbfa4 targets 0xd9bbfb4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0xd9bbfac targets 0xd9bbfec, is taken when a0 != t0(=0x8008), and falls through when a0 == t0(=0x8008).
  The `beq` branch at 0xd9bbfe4 targets 0xd9bbfb4, is taken when a0 == t3(=0x800b), and falls through when a0 != t3(=0x800b).
  The `beq` branch at 0xd9bbff8 targets 0xd9bbfd8 and is always taken.
  The `bne` branch at 0xd9bc008 targets 0xd9bc020, is taken when a0 < a3(=0x8006) (unsigned), and falls through when a0 >= a3(=0x8006) (unsigned).
  The `beq` branch at 0xd9bc010 targets 0xd9bbfb4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xd9bc018 targets 0xd9bbfe8 and is always taken.
  The `bne` branch at 0xd9bc020 targets 0xd9bbfec, is taken when a0 != at(=0xbf1), and falls through when a0 == at(=0xbf1).
  The `beq` branch at 0xd9bc028 targets 0xd9bbfb8 and is always taken.
  The `beq` branch at 0xd9bc040 targets 0xd9bbfd8 and is always taken.
  The return at 0xd9bbfd0 has v0 = ?.
  The return at 0xd9bbfdc has v0 = ret(__glSetError).

- `__glim_BlendColorEXT` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9c37a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
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

- `__glim_PolygonOffsetEXT` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9c3860 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
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

- `__glim_ColorTableParameterivSGI` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9cb5a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9cb5a0-0xd9cb610 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd9cb5ac loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9cb5e8 loads 4 bytes from abs 0x1010.
  The `bgezall` at 0xd9cb5e4 calls __glColorTableParameterv [0xd9cb410] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0xd9cb600 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0xd9cb5c8 targets 0xd9cb5fc, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9cb608 targets 0xd9cb5f0 and is always taken.
  The return at 0xd9cb5f4 has v0 = one of ret(__glColorTableParameterv), ret(__glSetError).

- `__glim_ColorTableParameterfvSGI` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9cb610 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9cb610-0xd9cb680 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd9cb61c loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9cb658 loads 4 bytes from abs 0x1010.
  The `bgezall` at 0xd9cb654 calls __glColorTableParameterv [0xd9cb410] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0, a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0xd9cb670 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0xd9cb638 targets 0xd9cb66c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9cb678 targets 0xd9cb660 and is always taken.
  The return at 0xd9cb664 has v0 = one of ret(__glColorTableParameterv), ret(__glSetError).

- `__glim_GetColorTableParameterivSGI` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9cb800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9cb800-0xd9cb870 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd9cb80c loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9cb848 loads 4 bytes from abs 0x1010.
  The `bgezall` at 0xd9cb844 calls __glGetColorTableParameterv [0xd9cb680] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0xd9cb860 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0xd9cb828 targets 0xd9cb85c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9cb868 targets 0xd9cb850 and is always taken.
  The return at 0xd9cb854 has v0 = one of ret(__glGetColorTableParameterv), ret(__glSetError).

- `__glim_GetColorTableParameterfvSGI` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9cb870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9cb870-0xd9cb8e0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd9cb87c loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9cb8b8 loads 4 bytes from abs 0x1010.
  The `bgezall` at 0xd9cb8b4 calls __glGetColorTableParameterv [0xd9cb680] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0, a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0xd9cb8d0 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0xd9cb898 targets 0xd9cb8cc, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9cb8d8 targets 0xd9cb8c0 and is always taken.
  The return at 0xd9cb8c4 has v0 = one of ret(__glGetColorTableParameterv), ret(__glSetError).

- `__glim_ConvolutionParameteriEXT` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9cf320 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9cf320-0xd9cf378 (88 bytes).
  It occupies 88 bytes.
  The `bgezall` at 0xd9cf348 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd9cf368 calls __GLconvolutionParameter [0xd9cf100] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-12, a3=0x1404.
  The `beq` branch at 0xd9cf33c targets 0xd9cf360, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9cf370 targets 0xd9cf354 and is always taken.
  The return at 0xd9cf358 has v0 = one of ret(__glSetError), ret(__GLconvolutionParameter).

- `__glim_ConvolutionParameterivEXT` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9cf380 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9cf380-0xd9cf3e0 (96 bytes).
  It occupies 96 bytes.
  The `bgezall` at 0xd9cf3b4 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8015.
  The `bgezall` at 0xd9cf3d0 calls __GLconvolutionParameter [0xd9cf100] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The `beq` branch at 0xd9cf398 targets 0xd9cf3cc, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9cf3a4 targets 0xd9cf3cc, is taken when a1 == v1(=0x8014), and falls through when a1 != v1(=0x8014).
  The `beq` branch at 0xd9cf3ac targets 0xd9cf3cc, is taken when a1 == a3(=0x8015), and falls through when a1 != a3(=0x8015).
  The `beq` branch at 0xd9cf3d8 targets 0xd9cf3c0 and is always taken.
  The return at 0xd9cf3c4 has v0 = one of ret(__glSetError), ret(__GLconvolutionParameter).

- `__glim_ConvolutionParameterfEXT` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9cf3e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9cf3e0-0xd9cf438 (88 bytes).
  It occupies 88 bytes.
  The `bgezall` at 0xd9cf408 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd9cf428 calls __GLconvolutionParameter [0xd9cf100] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-16, a3=0x1406.
  The `beq` branch at 0xd9cf3fc targets 0xd9cf420, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9cf430 targets 0xd9cf414 and is always taken.
  The return at 0xd9cf418 has v0 = one of ret(__glSetError), ret(__GLconvolutionParameter).

- `__glim_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9cf440 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9cf440-0xd9cf4a0 (96 bytes).
  It occupies 96 bytes.
  The `bgezall` at 0xd9cf474 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8015.
  The `bgezall` at 0xd9cf490 calls __GLconvolutionParameter [0xd9cf100] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The `beq` branch at 0xd9cf458 targets 0xd9cf48c, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9cf464 targets 0xd9cf48c, is taken when a1 == v1(=0x8014), and falls through when a1 != v1(=0x8014).
  The `beq` branch at 0xd9cf46c targets 0xd9cf48c, is taken when a1 == a3(=0x8015), and falls through when a1 != a3(=0x8015).
  The `beq` branch at 0xd9cf498 targets 0xd9cf480 and is always taken.
  The return at 0xd9cf484 has v0 = one of ret(__glSetError), ret(__GLconvolutionParameter).

- `__glim_GetConvolutionParameterivEXT` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9cf770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9cf770-0xd9cf7a4 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0xd9cf78c calls __GLgetConvolutionParameter [0xd9cf4a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9cf79c has v0 = ret(__GLgetConvolutionParameter).

- `__glim_GetConvolutionParameterfvEXT` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9cf7b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9cf7b0-0xd9cf7e4 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0xd9cf7cc calls __GLgetConvolutionParameter [0xd9cf4a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9cf7dc has v0 = ret(__GLgetConvolutionParameter).

- `__glim_NurbsKnots1dSGIX` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9d5d10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
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

- `__glim_NurbsKnots1fSGIX` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9d5de0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
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

- `__glim_GetHistogramParameterivEXT` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9e0da0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9e0da0-0xd9e0dd4 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0xd9e0dbc calls __glGetHistogramParameters [0xd9e0bf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9e0dcc has v0 = ret(__glGetHistogramParameters).

- `__glim_GetHistogramParameterfvEXT` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9e0de0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9e0de0-0xd9e0e14 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0xd9e0dfc calls __glGetHistogramParameters [0xd9e0bf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9e0e0c has v0 = ret(__glGetHistogramParameters).

- `__glim_ResetMinmaxEXT` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9e1380 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
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

- `__glim_GetMinmaxParameterivEXT` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9e1690 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9e1690-0xd9e16c4 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0xd9e16ac calls __glGetMinmaxParameters [0xd9e15b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9e16bc has v0 = ret(__glGetMinmaxParameters).

- `__glim_GetMinmaxParameterfvEXT` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9e16d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9e16d0-0xd9e1704 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0xd9e16ec calls __glGetMinmaxParameters [0xd9e15b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9e16fc has v0 = ret(__glGetMinmaxParameters).

- `__gllc_TexImage4DSGIS` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9ef2c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9ef2c0-0xd9ef2cc (12 bytes).
  It occupies 12 bytes.
  The return at 0xd9ef2c4 has v0 = ?.

- `__gllc_TexSubImage4DSGIS` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9ef2e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9ef2e0-0xd9ef2ec (12 bytes).
  It occupies 12 bytes.
  The return at 0xd9ef2e4 has v0 = ?.

- `__glim_SelectTextureCoordSetSGIS` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda28190 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda28190-0xda28224 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xda28198 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda2819c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda281cc loads 4 bytes from [0x1010] +0xe1c.
  The `sw` at 0xda281e0 stores 4 bytes to [0x1010] +0x6e6c.
  The `jalr` at 0xda28200 calls __glSetError [0xd9cd900] with a0=0x500, a1=?, a2=[0x1010], a3=0x83c7.
  The `jalr` at 0xda28214 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=0x83c7.
  The `beq` branch at 0xda281b8 targets 0xda28210, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bne` branch at 0xda281c4 targets 0xda28200, is taken when a0 < a3(=0x83c7) (unsigned), and falls through when a0 >= a3(=0x83c7) (unsigned).
  The `bne` branch at 0xda281d8 targets 0xda28200, is taken when a4(=[[0x1010]+3612]+33735) < a0 (unsigned), and falls through when a4(=[[0x1010]+3612]+33735) >= a0 (unsigned).
  The `beq` branch at 0xda28208 targets 0xda281f0 and is always taken.
  The `beq` branch at 0xda2821c targets 0xda281f0 and is always taken.
  The return at 0xda281e8 has v0 = 0x1.
  The return at 0xda281f4 has v0 = ret(__glSetError).
  The instructions from 0xda281fc to 0xda281fc are not reached by any path from the entry, and their branches are not listed.

- `__glim_InterleavedTextureCoordSetsSGIS` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda34410 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda34410-0xda34498 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda34414 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda34418 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda34444 loads 4 bytes from [0x1010] +0xe1c.
  The `sw` at 0xda34454 stores 4 bytes to [0x1010] +0x152c.
  The `jalr` at 0xda34474 calls __glSetError [0xd9cd900] with a0=0x501, a1=?, a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda34488 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xda34434 targets 0xda34484, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `blez` branch at 0xda3443c targets 0xda34474, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `bne` branch at 0xda3444c targets 0xda34474, is taken when a1(=[[0x1010]+3612]) < a0 (signed), and falls through when a1(=[[0x1010]+3612]) >= a0 (signed).
  The `beq` branch at 0xda3447c targets 0xda34464 and is always taken.
  The `beq` branch at 0xda34490 targets 0xda34464 and is always taken.
  The return at 0xda3445c has v0 = 0x1.
  The return at 0xda34468 has v0 = ret(__glSetError).
  The instructions from 0xda34470 to 0xda34470 are not reached by any path from the entry, and their branches are not listed.

- `__gllc_TexParameteriv` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda411a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda411a0-0xda41274 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xda411b4 loads 4 bytes from abs 0x1010.
  The `sw` at 0xda4122c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda41238 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda41244 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda411d4 calls __glTexParameteriv_size [0xda15f40] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda411f0 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=(ret(__glTexParameteriv_size) << 0x2)+8, a2=?, a3=?.
  The `jalr` at 0xda41240 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glTexParameteriv_size) << 0x2), a3=0x6b, a4=ret(__glDlistAllocOp2), a5=a0 at entry (arg0), a6=a1 at entry (arg1).
  The `jalr` at 0xda41254 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48890, a3=?.
  The `jalr` at 0xda41264 calls __gllc_InvalidEnum [0xd98fc20] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `bltz` branch at 0xda411e0 targets 0xda41264, is taken when s1(=(ret(__glTexParameteriv_size) << 0x2)) < 0 (signed), and falls through when s1(=(ret(__glTexParameteriv_size) << 0x2)) >= 0 (signed).
  The `bne` branch at 0xda411f8 targets 0xda41218, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda4125c targets 0xda41204 and is always taken.
  The `beq` branch at 0xda4126c targets 0xda41204 and is always taken.
  The return at 0xda41210 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp), ret(__gllc_InvalidEnum).

- `__gllc_TexEnvf` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41280 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41280-0xda412f8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xda412a8 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda412b0 calls __glTexEnvfv_size [0xda162d0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda412c4 calls __gllc_InvalidEnum [0xd98fc20] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `bgezall` at 0xda412e8 calls __gllc_TexEnvfv [0xda41300] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-16, a3=?.
  The `beq` branch at 0xda412bc targets 0xda412dc, is taken when v0(=ret(__glTexEnvfv_size)) == a0(=0x1), and falls through when v0(=ret(__glTexEnvfv_size)) != a0(=0x1).
  The `beq` branch at 0xda412f0 targets 0xda412d0 and is always taken.
  The return at 0xda412d4 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_TexEnvfv).

- `__gllc_TexEnvfv` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41300-0xda413d4 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xda41314 loads 4 bytes from abs 0x1010.
  The `sw` at 0xda41388 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda41394 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda413a0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda41334 calls __glTexEnvfv_size [0xda162d0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4134c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=(ret(__glTexEnvfv_size) << 0x2)+8, a2=?, a3=?.
  The `jalr` at 0xda4139c calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glTexEnvfv_size) << 0x2), a3=0x6f, a4=ret(__glDlistAllocOp2), a5=a0 at entry (arg0), a6=a1 at entry (arg1).
  The `jalr` at 0xda413b0 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda488f0, a3=?.
  The `jalr` at 0xda413c4 calls __gllc_InvalidEnum [0xd98fc20] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `bltz` branch at 0xda41340 targets 0xda413c0, is taken when s1(=(ret(__glTexEnvfv_size) << 0x2)) < 0 (signed), and falls through when s1(=(ret(__glTexEnvfv_size) << 0x2)) >= 0 (signed).
  The `bne` branch at 0xda41354 targets 0xda41374, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda413b8 targets 0xda41360 and is always taken.
  The `beq` branch at 0xda413cc targets 0xda41360 and is always taken.
  The return at 0xda4136c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp), ret(__gllc_InvalidEnum).

- `__gllc_TexEnvi` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda413e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda413e0-0xda41458 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xda41408 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda41410 calls __glTexEnviv_size [0xda16300] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41428 calls __gllc_InvalidEnum [0xd98fc20] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `bgezall` at 0xda41448 calls __gllc_TexEnviv [0xda41460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-12, a3=?.
  The `beq` branch at 0xda4141c targets 0xda41440, is taken when v0(=ret(__glTexEnviv_size)) == a0(=0x1), and falls through when v0(=ret(__glTexEnviv_size)) != a0(=0x1).
  The `beq` branch at 0xda41450 targets 0xda41434 and is always taken.
  The return at 0xda41438 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_TexEnviv).

- `__gllc_TexEnviv` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41460-0xda41534 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xda41474 loads 4 bytes from abs 0x1010.
  The `sw` at 0xda414ec stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda414f8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda41504 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda41494 calls __glTexEnviv_size [0xda16300] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda414b0 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=(ret(__glTexEnviv_size) << 0x2)+8, a2=?, a3=?.
  The `jalr` at 0xda41500 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glTexEnviv_size) << 0x2), a3=0x71, a4=ret(__glDlistAllocOp2), a5=a0 at entry (arg0), a6=a1 at entry (arg1).
  The `jalr` at 0xda41514 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48950, a3=?.
  The `jalr` at 0xda41524 calls __gllc_InvalidEnum [0xd98fc20] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `bltz` branch at 0xda414a0 targets 0xda41524, is taken when s1(=(ret(__glTexEnviv_size) << 0x2)) < 0 (signed), and falls through when s1(=(ret(__glTexEnviv_size) << 0x2)) >= 0 (signed).
  The `bne` branch at 0xda414b8 targets 0xda414d8, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda4151c targets 0xda414c4 and is always taken.
  The `beq` branch at 0xda4152c targets 0xda414c4 and is always taken.
  The return at 0xda414d0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp), ret(__gllc_InvalidEnum).

- `__gllc_TexGend` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41540-0xda415b8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xda41568 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda41570 calls __glTexGendv_size [0xda15000] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41584 calls __gllc_InvalidEnum [0xd98fc20] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `bgezall` at 0xda415a8 calls __gllc_TexGendv [0xda415c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-16, a3=?.
  The `beq` branch at 0xda4157c targets 0xda4159c, is taken when v0(=ret(__glTexGendv_size)) == a0(=0x1), and falls through when v0(=ret(__glTexGendv_size)) != a0(=0x1).
  The `beq` branch at 0xda415b0 targets 0xda41590 and is always taken.
  The return at 0xda41594 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_TexGendv).

- `__gllc_TexGenf` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda416a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda416a0-0xda41718 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xda416c8 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda416d0 calls __glTexGenfv_size [0xda15040] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda416e4 calls __gllc_InvalidEnum [0xd98fc20] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `bgezall` at 0xda41708 calls __gllc_TexGenfv [0xda41720] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-16, a3=?.
  The `beq` branch at 0xda416dc targets 0xda416fc, is taken when v0(=ret(__glTexGenfv_size)) == a0(=0x1), and falls through when v0(=ret(__glTexGenfv_size)) != a0(=0x1).
  The `beq` branch at 0xda41710 targets 0xda416f0 and is always taken.
  The return at 0xda416f4 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_TexGenfv).

- `__gllc_TexGeni` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41800-0xda41878 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xda41828 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda41830 calls __glTexGeniv_size [0xda15080] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41844 calls __gllc_InvalidEnum [0xd98fc20] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `bgezall` at 0xda41868 calls __gllc_TexGeniv [0xda41880] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-12, a3=?.
  The `beq` branch at 0xda4183c targets 0xda4185c, is taken when v0(=ret(__glTexGeniv_size)) == a0(=0x1), and falls through when v0(=ret(__glTexGeniv_size)) != a0(=0x1).
  The `beq` branch at 0xda41870 targets 0xda41850 and is always taken.
  The return at 0xda41854 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_TexGeniv).

- `__gllc_InitNames` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41960 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41960-0xda419c4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda41978 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda419b8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda41984 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda419b4 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48ad0, a3=?.
  The `bne` branch at 0xda4198c targets 0xda419a4, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda419bc targets 0xda41998 and is always taken.
  The return at 0xda4199c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LoadName` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda419d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda419d0-0xda41a44 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda419d4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41a28 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda41a38 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda419fc calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41a34 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48b10, a3=a0 at entry (arg0).
  The `bne` branch at 0xda41a04 targets 0xda41a18, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda41a3c targets 0xda41a0c and is always taken.
  The return at 0xda41a10 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PassThrough` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41a50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41a50-0xda41ac0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xda41a54 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41aa8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda41ab4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda41a78 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41ab0 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48b60, a3=?.
  The `bne` branch at 0xda41a80 targets 0xda41a98, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda41ab8 targets 0xda41a8c and is always taken.
  The return at 0xda41a90 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PopName` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41ac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41ac0-0xda41b24 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda41ad8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41b18 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda41ae4 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41b14 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48bb0, a3=?.
  The `bne` branch at 0xda41aec targets 0xda41b00, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda41b1c targets 0xda41af4 and is always taken.
  The return at 0xda41af8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PushName` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41b30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41b30-0xda41ba4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda41b34 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41b88 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda41b98 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda41b5c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41b94 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48bf0, a3=a0 at entry (arg0).
  The `bne` branch at 0xda41b64 targets 0xda41b7c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda41b9c targets 0xda41b70 and is always taken.
  The return at 0xda41b74 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_DrawBuffer` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41bb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41bb0-0xda41c24 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda41bb4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41c08 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda41c18 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda41bdc calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41c14 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48c40, a3=a0 at entry (arg0).
  The `bne` branch at 0xda41be4 targets 0xda41bf8, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda41c1c targets 0xda41bec and is always taken.
  The return at 0xda41bf0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Clear` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41c30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41c30-0xda41ca4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda41c34 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41c88 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda41c98 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda41c5c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41c94 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48c90, a3=a0 at entry (arg0).
  The `bne` branch at 0xda41c64 targets 0xda41c7c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda41c9c targets 0xda41c70 and is always taken.
  The return at 0xda41c74 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ClearAccum` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41cb0-0xda41d44 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xda41cb0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41d0c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda41d20 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `swc1` at 0xda41d28 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xda41d2c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda41d38 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda41ce4 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41d34 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48ce0, a3=?.
  The `bne` branch at 0xda41cec targets 0xda41d00, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda41d3c targets 0xda41cf4 and is always taken.
  The return at 0xda41cf8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ClearIndex` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41d50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41d50-0xda41dc0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xda41d54 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41da8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda41db4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda41d78 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41db0 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48d30, a3=?.
  The `bne` branch at 0xda41d80 targets 0xda41d98, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda41db8 targets 0xda41d8c and is always taken.
  The return at 0xda41d90 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ClearColor` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41dc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41dc0-0xda41e54 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xda41dc0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41e1c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda41e30 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `swc1` at 0xda41e38 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xda41e3c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda41e48 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda41df4 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41e44 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48d80, a3=?.
  The `bne` branch at 0xda41dfc targets 0xda41e10, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda41e4c targets 0xda41e04 and is always taken.
  The return at 0xda41e08 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ClearStencil` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41e60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41e60-0xda41ed4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda41e64 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41eb8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda41ec8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda41e8c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41ec4 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48dd0, a3=a0 at entry (arg0).
  The `bne` branch at 0xda41e94 targets 0xda41eac, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda41ecc targets 0xda41ea0 and is always taken.
  The return at 0xda41ea4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ClearDepth` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41ee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41ee0-0xda41f58 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xda41ee4 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda41f30 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sh` at 0xda41f40 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sdc1` at 0xda41f4c stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda41f08 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41f48 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48e20, a3=0x1.
  The `bne` branch at 0xda41f10 targets 0xda41f24, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda41f50 targets 0xda41f18 and is always taken.
  The return at 0xda41f1c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_StencilMask` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41f60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41f60-0xda41fd4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda41f64 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41fb8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda41fc8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda41f8c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41fc4 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48e70, a3=a0 at entry (arg0).
  The `bne` branch at 0xda41f94 targets 0xda41fac, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda41fcc targets 0xda41fa0 and is always taken.
  The return at 0xda41fa4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ColorMask` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda41fe0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda41fe0-0xda42078 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda41fe8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42040 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda42054 stores 1 byte to ret(__glDlistAllocOp2) +0x13.
  The `sb` at 0xda4205c stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `sb` at 0xda42060 stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `sb` at 0xda4206c stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda42018 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42068 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48ec0, a3=a0 at entry (arg0), a4=a1 at entry (arg1), a5=a2 at entry (arg2), a6=a3 at entry (arg3).
  The `bne` branch at 0xda42020 targets 0xda42034, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42070 targets 0xda42028 and is always taken.
  The return at 0xda4202c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_DepthMask` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42080-0xda420f4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda42084 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda420d8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda420e8 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda420ac calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda420e4 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48f10, a3=a0 at entry (arg0).
  The `bne` branch at 0xda420b4 targets 0xda420cc, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda420ec targets 0xda420c0 and is always taken.
  The return at 0xda420c4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_IndexMask` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42100-0xda42174 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda42104 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42158 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda42168 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4212c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42164 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48f60, a3=a0 at entry (arg0).
  The `bne` branch at 0xda42134 targets 0xda42148, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda4216c targets 0xda4213c and is always taken.
  The return at 0xda42140 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Accum` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42180 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42180-0xda42200 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda42180 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda421d8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda421e8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda421f4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda421b0 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda421f0 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda48fb0, a3=a0 at entry (arg0).
  The `bne` branch at 0xda421b8 targets 0xda421d0, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda421f8 targets 0xda421c4 and is always taken.
  The return at 0xda421c8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PopAttrib` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42200-0xda42264 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda42218 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42258 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda42224 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42254 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49000, a3=?.
  The `bne` branch at 0xda4222c targets 0xda42240, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda4225c targets 0xda42234 and is always taken.
  The return at 0xda42238 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PushAttrib` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42270-0xda422e4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda42274 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda422c8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda422d8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4229c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda422d4 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49040, a3=a0 at entry (arg0).
  The `bne` branch at 0xda422a4 targets 0xda422bc, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda422dc targets 0xda422b0 and is always taken.
  The return at 0xda422b4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_MapGrid1d` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda422f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda422f0-0xda42384 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xda422f0 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda4234c stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sh` at 0xda42354 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4235c stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda4236c stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda42378 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda42324 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42374 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49090, a3=0x1, a4=a0 at entry (arg0).
  The `bne` branch at 0xda4232c targets 0xda42340, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda4237c targets 0xda42334 and is always taken.
  The return at 0xda42338 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_MapGrid1f` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42390 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42390-0xda4241c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda42390 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda423ec stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda423f4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda42404 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xda42410 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda423c4 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4240c calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda490e0, a3=a0 at entry (arg0).
  The `bne` branch at 0xda423cc targets 0xda423e4, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42414 targets 0xda423d8 and is always taken.
  The return at 0xda423dc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_MapGrid2d` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42420 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42420-0xda424d8 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xda4242c loads 4 bytes from abs 0x1010.
  The `sb` at 0xda42488 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sh` at 0xda42490 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4249c stores 4 bytes to ret(__glDlistAllocOp2) +0x34.
  The `sw` at 0xda424a0 stores 4 bytes to ret(__glDlistAllocOp2) +0x30.
  The `sdc1` at 0xda424b4 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `sdc1` at 0xda424bc stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda424c0 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda424cc stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda42460 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda424c8 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49130, a3=0x1, a4=a0 at entry (arg0), a5=a3 at entry (arg3).
  The `bne` branch at 0xda42468 targets 0xda4247c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda424d0 targets 0xda42470 and is always taken.
  The return at 0xda42474 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_MapGrid2f` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda424e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda424e0-0xda42590 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xda424ec loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42548 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda42554 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xda42558 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda4256c stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `swc1` at 0xda42574 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `swc1` at 0xda42578 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xda42584 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda42520 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42580 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49190, a3=a0 at entry (arg0), a4=a3 at entry (arg3).
  The `bne` branch at 0xda42528 targets 0xda42540, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42588 targets 0xda42534 and is always taken.
  The return at 0xda42538 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalCoord1d` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42590 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42590-0xda42608 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xda42594 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda425e0 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sh` at 0xda425f0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sdc1` at 0xda425fc stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda425b8 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda425f8 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda491f0, a3=0x1.
  The `bne` branch at 0xda425c0 targets 0xda425d4, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42600 targets 0xda425c8 and is always taken.
  The return at 0xda425cc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalCoord1dv` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42610 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42610-0xda42690 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda42614 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda42660 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sh` at 0xda42668 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `ldc1` at 0xda42674 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda42684 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4263c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42680 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda491f0, a3=?.
  The `bne` branch at 0xda42644 targets 0xda4265c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42688 targets 0xda42650 and is always taken.
  The return at 0xda42654 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalCoord1f` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42690 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42690-0xda42700 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xda42694 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda426e8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda426f4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda426b8 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda426f0 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49240, a3=?.
  The `bne` branch at 0xda426c0 targets 0xda426d4, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda426f8 targets 0xda426c8 and is always taken.
  The return at 0xda426cc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalCoord1fv` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42700 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42700-0xda42778 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xda42704 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42750 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda4275c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda4276c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4272c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42768 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49240, a3=?.
  The `bne` branch at 0xda42734 targets 0xda4274c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42770 targets 0xda42740 and is always taken.
  The return at 0xda42744 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalCoord2d` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42780 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42780-0xda42804 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda42780 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda427d4 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sh` at 0xda427dc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sdc1` at 0xda427ec stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda427f8 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda427ac calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda427f4 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49290, a3=0x1.
  The `bne` branch at 0xda427b4 targets 0xda427c8, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda427fc targets 0xda427bc and is always taken.
  The return at 0xda427c0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalCoord2dv` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42810 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42810-0xda42898 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda42814 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda42860 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sh` at 0xda4286c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `ldc1` at 0xda42870 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda42878 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xda4287c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda4288c stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xda4283c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42888 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49290, a3=?.
  The `bne` branch at 0xda42844 targets 0xda4285c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42890 targets 0xda42850 and is always taken.
  The return at 0xda42854 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalCoord2f` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda428a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda428a0-0xda4291c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xda428a0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda428f4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda42904 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda42910 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda428cc calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4290c calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda492e0, a3=?.
  The `bne` branch at 0xda428d4 targets 0xda428e8, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42914 targets 0xda428dc and is always taken.
  The return at 0xda428e0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalCoord2fv` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42920 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42920-0xda429a0 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda42924 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42974 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda42978 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda42980 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lwc1` at 0xda42984 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda42994 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda4294c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42990 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda492e0, a3=?.
  The `bne` branch at 0xda42954 targets 0xda4296c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42998 targets 0xda42960 and is always taken.
  The return at 0xda42964 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalMesh1` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda429a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda429a0-0xda42a2c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda429a0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda429fc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda42a10 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda42a14 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda42a20 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda429d4 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42a1c calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49330, a3=a0 at entry (arg0), a4=a1 at entry (arg1), a5=a2 at entry (arg2).
  The `bne` branch at 0xda429dc targets 0xda429f0, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42a24 targets 0xda429e4 and is always taken.
  The return at 0xda429e8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalPoint1` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42a30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42a30-0xda42aa4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda42a34 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42a88 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda42a98 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda42a5c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42a94 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49380, a3=a0 at entry (arg0).
  The `bne` branch at 0xda42a64 targets 0xda42a7c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42a9c targets 0xda42a70 and is always taken.
  The return at 0xda42a74 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalMesh2` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42ab0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42ab0-0xda42b54 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda42abc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42b14 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda42b2c stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sw` at 0xda42b30 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xda42b38 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda42b3c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda42b48 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda42aec calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x14, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42b44 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda493d0, a3=a0 at entry (arg0), a4=a1 at entry (arg1), a5=a2 at entry (arg2), a6=a3 at entry (arg3), a7=a4 at entry (arg4).
  The `bne` branch at 0xda42af4 targets 0xda42b08, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42b4c targets 0xda42afc and is always taken.
  The return at 0xda42b00 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EvalPoint2` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42b60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42b60-0xda42be0 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda42b60 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42bb8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda42bc8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda42bd4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda42b90 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42bd0 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49430, a3=a0 at entry (arg0), a4=a1 at entry (arg1).
  The `bne` branch at 0xda42b98 targets 0xda42bb0, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42bd8 targets 0xda42ba4 and is always taken.
  The return at 0xda42ba8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_AlphaFunc` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42be0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42be0-0xda42c60 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda42be0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42c38 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda42c48 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda42c54 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda42c10 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42c50 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49480, a3=a0 at entry (arg0).
  The `bne` branch at 0xda42c18 targets 0xda42c2c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42c58 targets 0xda42c20 and is always taken.
  The return at 0xda42c24 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_BlendFunc` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42c60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42c60-0xda42ce0 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda42c60 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42cb8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda42cc8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda42cd4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda42c90 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42cd0 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda494d0, a3=a0 at entry (arg0), a4=a1 at entry (arg1).
  The `bne` branch at 0xda42c98 targets 0xda42cb0, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42cd8 targets 0xda42ca4 and is always taken.
  The return at 0xda42ca8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LogicOp` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42ce0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42ce0-0xda42d54 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda42ce4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42d38 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda42d48 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda42d0c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42d44 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49520, a3=a0 at entry (arg0).
  The `bne` branch at 0xda42d14 targets 0xda42d28, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42d4c targets 0xda42d1c and is always taken.
  The return at 0xda42d20 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_StencilFunc` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42d60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42d60-0xda42dec (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda42d60 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42dbc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda42dd0 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda42dd4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda42de0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda42d94 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42ddc calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49570, a3=a0 at entry (arg0), a4=a1 at entry (arg1), a5=a2 at entry (arg2).
  The `bne` branch at 0xda42d9c targets 0xda42db4, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42de4 targets 0xda42da8 and is always taken.
  The return at 0xda42dac has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_StencilOp` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42df0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42df0-0xda42e7c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda42df0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42e4c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda42e60 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda42e64 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda42e70 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda42e24 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42e6c calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda495c0, a3=a0 at entry (arg0), a4=a1 at entry (arg1), a5=a2 at entry (arg2).
  The `bne` branch at 0xda42e2c targets 0xda42e40, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42e74 targets 0xda42e34 and is always taken.
  The return at 0xda42e38 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_DepthFunc` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42e80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42e80-0xda42ef4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda42e84 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42ed8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda42ee8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda42eac calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42ee4 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49610, a3=a0 at entry (arg0).
  The `bne` branch at 0xda42eb4 targets 0xda42ecc, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42eec targets 0xda42ec0 and is always taken.
  The return at 0xda42ec4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PixelZoom` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42f00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42f00-0xda42f7c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xda42f00 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42f54 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda42f64 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda42f70 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda42f2c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42f6c calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49660, a3=?.
  The `bne` branch at 0xda42f34 targets 0xda42f48, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42f74 targets 0xda42f3c and is always taken.
  The return at 0xda42f40 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PixelTransferf` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda42f80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda42f80-0xda43000 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda42f80 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42fd8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda42fe8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda42ff4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda42fb0 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42ff0 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda496b0, a3=a0 at entry (arg0).
  The `bne` branch at 0xda42fb8 targets 0xda42fd0, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda42ff8 targets 0xda42fc4 and is always taken.
  The return at 0xda42fc8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PixelTransferi` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43000 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43000-0xda43080 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda43000 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43058 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda43068 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda43074 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda43030 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43070 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49700, a3=a0 at entry (arg0), a4=a1 at entry (arg1).
  The `bne` branch at 0xda43038 targets 0xda4304c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda43078 targets 0xda43040 and is always taken.
  The return at 0xda43044 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PixelMapfv` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43080-0xda43148 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xda43094 loads 4 bytes from abs 0x1010.
  The `sw` at 0xda430fc stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda43108 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda43114 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda430c0 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=(a1 << 0x2)+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43110 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(a1 << 0x2), a3=0xa6, a4=ret(__glDlistAllocOp2), a5=a0 at entry (arg0), a6=a1 at entry (arg1).
  The `jalr` at 0xda43124 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49750, a3=?.
  The `jalr` at 0xda43138 calls __gllc_InvalidValue [0xd98fbc0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0xda430b0 targets 0xda43134, is taken when s1(=(a1 << 0x2)) < 0 (signed), and falls through when s1(=(a1 << 0x2)) >= 0 (signed).
  The `bne` branch at 0xda430c8 targets 0xda430e8, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda4312c targets 0xda430d4 and is always taken.
  The `beq` branch at 0xda43140 targets 0xda430d4 and is always taken.
  The return at 0xda430e0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp), ret(__gllc_InvalidValue).

- `__gllc_PixelMapuiv` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43150 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43150-0xda43218 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xda43164 loads 4 bytes from abs 0x1010.
  The `sw` at 0xda431cc stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda431d8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda431e4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda43190 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=(a1 << 0x2)+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda431e0 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(a1 << 0x2), a3=0xa7, a4=ret(__glDlistAllocOp2), a5=a0 at entry (arg0), a6=a1 at entry (arg1).
  The `jalr` at 0xda431f4 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda497b0, a3=?.
  The `jalr` at 0xda43208 calls __gllc_InvalidValue [0xd98fbc0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0xda43180 targets 0xda43204, is taken when s1(=(a1 << 0x2)) < 0 (signed), and falls through when s1(=(a1 << 0x2)) >= 0 (signed).
  The `bne` branch at 0xda43198 targets 0xda431b8, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda431fc targets 0xda431a4 and is always taken.
  The `beq` branch at 0xda43210 targets 0xda431a4 and is always taken.
  The return at 0xda431b0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp), ret(__gllc_InvalidValue).

- `__gllc_PixelMapusv` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43220-0xda432f4 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xda43244 loads 4 bytes from abs 0x1010.
  The `sw` at 0xda432a8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda432b4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sh` at 0xda432c0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda4326c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda432bc calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xda432d0 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49810, a3=?.
  The `jalr` at 0xda432e4 calls __gllc_InvalidValue [0xd98fbc0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0xda4325c targets 0xda432e0, is taken when s1(?) < 0 (signed), and falls through when s1(?) >= 0 (signed).
  The `bne` branch at 0xda43274 targets 0xda43294, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda432d8 targets 0xda43280 and is always taken.
  The `beq` branch at 0xda432ec targets 0xda43280 and is always taken.
  The return at 0xda4328c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp), ret(__gllc_InvalidValue).

- `__gllc_ReadBuffer` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43300-0xda43374 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda43304 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43358 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda43368 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4332c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43364 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49880, a3=a0 at entry (arg0).
  The `bne` branch at 0xda43334 targets 0xda4334c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda4336c targets 0xda43340 and is always taken.
  The return at 0xda43344 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_CopyPixels` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43380 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43380-0xda43424 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda4338c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda433e4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda433fc stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sw` at 0xda43400 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xda43408 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda4340c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda43418 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda433bc calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x14, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43414 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda498d0, a3=a0 at entry (arg0), a4=a1 at entry (arg1), a5=a2 at entry (arg2), a6=a3 at entry (arg3), a7=a4 at entry (arg4).
  The `bne` branch at 0xda433c4 targets 0xda433d8, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda4341c targets 0xda433cc and is always taken.
  The return at 0xda433d0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_DepthRange` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43430 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43430-0xda434b4 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda43430 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda43484 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sh` at 0xda4348c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sdc1` at 0xda4349c stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda434a8 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4345c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda434a4 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49930, a3=0x1.
  The `bne` branch at 0xda43464 targets 0xda4347c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda434ac targets 0xda43470 and is always taken.
  The return at 0xda43474 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Frustum` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda434c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda434c0-0xda43574 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xda434c0 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda43524 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sh` at 0xda4352c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sdc1` at 0xda43548 stores 8 bytes to ret(__glDlistAllocOp2) +0x38.
  The `sdc1` at 0xda4354c stores 8 bytes to ret(__glDlistAllocOp2) +0x30.
  The `sdc1` at 0xda43550 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `sdc1` at 0xda43558 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda4355c stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda43568 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda434fc calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x30, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43564 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49980, a3=0x1.
  The `bne` branch at 0xda43504 targets 0xda43518, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda4356c targets 0xda4350c and is always taken.
  The return at 0xda43510 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LoadIdentity` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43580-0xda435e4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda43598 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda435d8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda435a4 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda435d4 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda499e0, a3=?.
  The `bne` branch at 0xda435ac targets 0xda435c4, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda435dc targets 0xda435b8 and is always taken.
  The return at 0xda435bc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_MatrixMode` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43710 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43710-0xda43784 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda43714 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43768 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda43778 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4373c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43774 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49ac0, a3=a0 at entry (arg0).
  The `bne` branch at 0xda43744 targets 0xda43758, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda4377c targets 0xda4374c and is always taken.
  The return at 0xda43750 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_MultMatrixf` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43790 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43790-0xda43818 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda43794 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda437f8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda437bc calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda437f4 calls memcpy with a0=ret(__glDlistAllocOp2)+16, a1=a0 at entry (arg0), a2=0x40, a3=0xb2, a4=ret(__glDlistAllocOp2).
  The `jalr` at 0xda43808 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49b10, a3=?.
  The `bne` branch at 0xda437c4 targets 0xda437dc, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda43810 targets 0xda437d0 and is always taken.
  The return at 0xda437d4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_MultMatrixd` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43820-0xda438b0 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xda43824 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda43884 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sh` at 0xda43890 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda4384c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4388c calls memcpy with a0=ret(__glDlistAllocOp2)+16, a1=a0 at entry (arg0), a2=0x80, a3=0xb3, a4=ret(__glDlistAllocOp2), a5=0x1.
  The `jalr` at 0xda438a0 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49b60, a3=?.
  The `bne` branch at 0xda43854 targets 0xda4386c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda438a8 targets 0xda43860 and is always taken.
  The return at 0xda43864 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Ortho` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda438b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda438b0-0xda43964 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xda438b0 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda43914 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sh` at 0xda4391c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sdc1` at 0xda43938 stores 8 bytes to ret(__glDlistAllocOp2) +0x38.
  The `sdc1` at 0xda4393c stores 8 bytes to ret(__glDlistAllocOp2) +0x30.
  The `sdc1` at 0xda43940 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `sdc1` at 0xda43948 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda4394c stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda43958 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda438ec calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x30, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43954 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49bb0, a3=0x1.
  The `bne` branch at 0xda438f4 targets 0xda4390c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda4395c targets 0xda43900 and is always taken.
  The return at 0xda43904 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PopMatrix` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43970-0xda439d4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda43988 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda439c8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda43994 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda439c4 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49c10, a3=?.
  The `bne` branch at 0xda4399c targets 0xda439b0, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda439cc targets 0xda439a4 and is always taken.
  The return at 0xda439a8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PushMatrix` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda439e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda439e0-0xda43a44 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda439f8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43a38 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda43a04 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43a34 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49c50, a3=?.
  The `bne` branch at 0xda43a0c targets 0xda43a24, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda43a3c targets 0xda43a18 and is always taken.
  The return at 0xda43a1c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Rotated` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43a50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43a50-0xda43aec (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xda43a50 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda43aac stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sh` at 0xda43ab4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sdc1` at 0xda43ac8 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `sdc1` at 0xda43ad0 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda43ad4 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda43ae0 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda43a84 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43adc calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49c90, a3=0x1.
  The `bne` branch at 0xda43a8c targets 0xda43aa0, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda43ae4 targets 0xda43a94 and is always taken.
  The return at 0xda43a98 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Rotatef` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43af0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43af0-0xda43b84 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xda43af0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43b4c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda43b60 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `swc1` at 0xda43b68 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xda43b6c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda43b78 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda43b24 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43b74 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49ce0, a3=?.
  The `bne` branch at 0xda43b2c targets 0xda43b44, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda43b7c targets 0xda43b38 and is always taken.
  The return at 0xda43b3c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Scaled` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43b90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43b90-0xda43c20 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xda43b90 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda43be8 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sh` at 0xda43bf0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sdc1` at 0xda43c04 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda43c08 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda43c14 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda43bc0 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43c10 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49d30, a3=0x1.
  The `bne` branch at 0xda43bc8 targets 0xda43bdc, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda43c18 targets 0xda43bd0 and is always taken.
  The return at 0xda43bd4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Scalef` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43c20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43c20-0xda43ca8 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda43c20 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43c78 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda43c8c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xda43c90 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda43c9c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda43c50 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43c98 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49d80, a3=?.
  The `bne` branch at 0xda43c58 targets 0xda43c70, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda43ca0 targets 0xda43c64 and is always taken.
  The return at 0xda43c68 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Translated` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43cb0-0xda43d40 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xda43cb0 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda43d08 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sh` at 0xda43d10 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sdc1` at 0xda43d24 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda43d28 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda43d34 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda43ce0 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43d30 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49dd0, a3=0x1.
  The `bne` branch at 0xda43ce8 targets 0xda43cfc, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda43d38 targets 0xda43cf0 and is always taken.
  The return at 0xda43cf4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Translatef` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda43d40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda43d40-0xda43dc8 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda43d40 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43d98 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda43dac stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xda43db0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda43dbc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda43d70 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43db8 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49e20, a3=?.
  The `bne` branch at 0xda43d78 targets 0xda43d90, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda43dc0 targets 0xda43d84 and is always taken.
  The return at 0xda43d88 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
