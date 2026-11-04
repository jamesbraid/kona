# Instruction readings from hostfacts

These entries record instruction facts rendered from the routines below. They describe software behavior, not hardware behavior, and each locator names an address in the identified binary.

- `gl_reset_colormap` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec61990 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec61990-0xec61bc4 (564 bytes).
  It occupies 564 bytes.
  The `jalr` at 0xec619ac calls __GLdrawmode with a0=0x10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xec619cc calls __GLmapcolor with a0=0x0, a1=0x0, a2=0x0, a3=0x0.
  The `jalr` at 0xec619ec calls __GLmapcolor with a0=0x1, a1=0xff, a2=0x0, a3=0x0.
  The `jalr` at 0xec61a0c calls __GLmapcolor with a0=0x2, a1=0x0, a2=0xff, a3=0x0.
  The `jalr` at 0xec61a2c calls __GLmapcolor with a0=0x3, a1=0xff, a2=0xff, a3=0x0.
  The `jalr` at 0xec61a4c calls __GLmapcolor with a0=0x4, a1=0x0, a2=0x0, a3=0xff.
  The `jalr` at 0xec61a6c calls __GLmapcolor with a0=0x5, a1=0xff, a2=0x0, a3=0xff.
  The `jalr` at 0xec61a8c calls __GLmapcolor with a0=0x6, a1=0x0, a2=0xff, a3=0xff.
  The `jalr` at 0xec61aac calls __GLmapcolor with a0=0x7, a1=0xff, a2=0xff, a3=0xff.
  The `jalr` at 0xec61ac0 calls __GLdrawmode with a0=0x100, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61ae0 calls __GLmapcolor with a0=0x1, a1=0xff, a2=0x0, a3=0x0.
  The `jalr` at 0xec61b00 calls __GLmapcolor with a0=0x2, a1=0xff, a2=0xff, a3=0xff.
  The `jalr` at 0xec61b20 calls __GLmapcolor with a0=0x3, a1=0xff, a2=0x0, a3=0x0.
  The `jalr` at 0xec61b34 calls __GLdrawmode with a0=0x20, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61b54 calls __GLmapcolor with a0=0x1, a1=0xff, a2=0x0, a3=0x0.
  The `jalr` at 0xec61b74 calls __GLmapcolor with a0=0x2, a1=0x0, a2=0x0, a3=0x0.
  The `jalr` at 0xec61b94 calls __GLmapcolor with a0=0x3, a1=0xff, a2=0xff, a3=0xff.
  The `jalr` at 0xec61ba8 calls __GLdrawmode with a0=0x10, a1=?, a2=?, a3=?.
  The return at 0xec61bbc has v0 = ret(__GLdrawmode).

- `gl_reset_attributes` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec61bc4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec61bc4-0xec72604 (68160 bytes).
  It occupies 68160 bytes.
  The `lw` at 0xec61bdc loads 4 bytes from sym(gl_wstatep) +0x0.
  The `lh` at 0xec61c88 loads 2 bytes from ?.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xec61cb0, `lw` at 0xec61cdc.
  2 such `lw` accesses load 4 bytes from abs 0xecdfb9c (gl_sstatep), including `lw` at 0xec61fe8, `lw` at 0xec62010.
  The `lh` at 0xec61fec loads 2 bytes from [0xecdfb9c] +0x2.
  The `lh` at 0xec61ff4 loads 2 bytes from [0xecdfb9c] +0x6.
  The `lw` at 0xec62018 loads 4 bytes from [0xecdfb9c] +0x4.
  The `lw` at 0xec6201c loads 4 bytes from [0xecdfb9c] +0x0.
  The `jalr` at 0xec61be8 calls __GLcmode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xec61bf8 calls __GLsinglebuffer with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61c08 calls __GLonemap with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61c1c calls __GLoverlay with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61c30 calls __GLunderlay with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61c44 calls __GLacsize with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61c58 calls __GLzbsize with a0=0x20, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61c68 calls gl_gconfig [0xec8d054] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61c78 calls __GLcloseobj with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61c9c calls __GLendpick with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61ccc calls __GLendselect with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61cf4 calls __GLendfeedback with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61d08 calls __GLdrawmode with a0=0x10, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61d20 calls __GLafunction with a0=0x0, a1=0x7, a2=?, a3=?.
  The `jalr` at 0xec61d34 calls __GLbackface with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61d4c calls __GLblendfunction with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jalr` at 0xec61d60 calls __GLconcave with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61d7c calls __GLsetcursor with a0=0x0, a1=0x1, a2=0x1, a3=?.
  The `jalr` at 0xec61d90 calls __GLdepthcue with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61da4 calls __GLdither with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61db8 calls __GLfont with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61dcc calls __GLfrontface with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61de0 calls __GLsetlinestyle with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61df4 calls __GLlinewidth with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61e08 calls __GLlinesmooth with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61e1c calls __GLlogicop with a0=0x3, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61e30 calls __GLpntsmooth with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61e44 calls __GLlmcolor with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61e58 calls __GLgetgdesc with a0=0x4, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61e70 calls __GLgetgdesc with a0=0x5, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61e8c calls __GLlsetdepth with a0=?, a1=ret(__GLgetgdesc), a2=?, a3=?.
  The `jalr` at 0xec61eac calls __GLlshaderange with a0=0x0, a1=0x7, a2=?, a3=?.
  The `jalr` at 0xec61ec0 calls __GLlsrepeat with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61ed4 calls __GLmmode with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61eec calls __GLpicksize with a0=0xa, a1=0xa, a2=?, a3=?.
  The `jalr` at 0xec61f08 calls __GLrectzoom with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61f1c calls __GLsetpattern with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61f30 calls __GLshademodel with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61f44 calls __GLsubpixel with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61f58 calls __GLzbuffer with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61f6c calls __GLzdraw with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61f80 calls __GLzfunction with a0=0x3, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61f94 calls __GLzsource with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61fa8 calls __GLzwritemask with a0=-0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61fbc calls __GLdisplacepolygon with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61fcc calls __GLcurson with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xec61ff0 calls __GLviewport with a0=0x0, a1=[[0xecdfb9c]+2]:2, a2=0x0, a3=[[0xecdfb9c]+6]:2.
  The `jalr` at 0xec62040 calls __GLortho2 with a0=?, a1=?, a2=?, a3=?.
  The `beql` branch at 0xec61c8c targets 0xec61cac, is taken when t8(?) == 0, and falls through when t8(?) != 0; its branch-likely delay slot `lw a1,52(sp)` at 0xec61c90 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xec61cb8 targets 0xec61ce4, is taken when v1(?) != at(=0x2), and falls through when v1(?) == at(=0x2); its branch-likely delay slot `addiu at,zero,1` at 0xec61cbc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xec61ce4 targets 0xec61d00, is taken when v1(?) != at(=0x1), and falls through when v1(?) == at(=0x1).
  The return at 0xec62054 has v0 = ret(__GLortho2).
  The instructions from 0xec6205c to 0xec72600 are not reached by any path from the entry, and their branches are not listed.

- `reset_aMenuItem` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec7e9d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec7e9d0-0xec7e9e4 (20 bytes).
  It occupies 20 bytes.
  The `lh` at 0xec7e9d0 loads 2 bytes from a0 (arg0 at entry) +0x2c.
  The `lh` at 0xec7e9d4 loads 2 bytes from a0 (arg0 at entry) +0x2e.
  The `sh` at 0xec7e9d8 stores 2 bytes to a0 (arg0 at entry) +0x28.
  The `sh` at 0xec7e9e0 stores 2 bytes to a0 (arg0 at entry) +0x2a.
  The return at 0xec7e9dc has v0 = ?.

- `fcg_jt_soft_reset` in `usr/gfx/gfxinfo` at 0x10010780 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x10010780-0x10010818 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x10010798 loads 4 bytes from sym(ven_pipeaddr) +0x0.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100107c0, `sw` at 0x100107c8, `sw` at 0x100107cc.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100107d0, `lw` at 0x10010800.
  The `jalr` at 0x100107f8 calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100107b4 targets 0x100107c0, is taken when a2(=[sym(ven_pipeaddr)]) == 0, and falls through when a2(=[sym(ven_pipeaddr)]) != 0.
  The `beq` branch at 0x100107d8 targets 0x100107f4, is taken when (a4(?) & 0x1) == 0, and falls through when (a4(?) & 0x1) != 0.
  The `beq` branch at 0x10010808 targets 0x100107f8, is taken when (a7(?) & 0x1) == 0, and falls through when (a7(?) & 0x1) != 0.
  The `beq` branch at 0x10010810 targets 0x100107e0 and is always taken.
  The return at 0x100107ec has v0 = 0x0.

- `fcg_jt_hard_reset` in `usr/gfx/gfxinfo` at 0x10010818 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x10010818-0x10010820 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10010818 has v0 = -0x1.

- `venice_write_vfc_reset` in `usr/gfx/gfxinfo` at 0x10014d18 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x10014d18-0x10014d64 (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x10014d40 calls venice_set_vcreg [0x1000fce8] with a0=0xa43e, a1=?, a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0x10014d4c calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The return at 0x10014d5c has v0 = ret(sginap).

- `venice_write_vdrc_reset` in `usr/gfx/gfxinfo` at 0x10014f64 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x10014f64-0x10014fb0 (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x10014f8c calls venice_set_vcreg [0x1000fce8] with a0=0xa43d, a1=?, a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0x10014f98 calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The return at 0x10014fa8 has v0 = ret(sginap).

- `fcg_jt_soft_reset` in `usr/gfx/setmon` at 0x10011ba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011ba0-0x10011c38 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x10011bb8 loads 4 bytes from sym(ven_pipeaddr) +0x0.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10011be0, `sw` at 0x10011be8, `sw` at 0x10011bec.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10011bf0, `lw` at 0x10011c20.
  The `jalr` at 0x10011c18 calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10011bd4 targets 0x10011be0, is taken when a2(=[sym(ven_pipeaddr)]) == 0, and falls through when a2(=[sym(ven_pipeaddr)]) != 0.
  The `beq` branch at 0x10011bf8 targets 0x10011c14, is taken when (a4(?) & 0x1) == 0, and falls through when (a4(?) & 0x1) != 0.
  The `beq` branch at 0x10011c28 targets 0x10011c18, is taken when (a7(?) & 0x1) == 0, and falls through when (a7(?) & 0x1) != 0.
  The `beq` branch at 0x10011c30 targets 0x10011c00 and is always taken.
  The return at 0x10011c0c has v0 = 0x0.

- `fcg_jt_hard_reset` in `usr/gfx/setmon` at 0x10011c38 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011c38-0x10011c40 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10011c38 has v0 = -0x1.

- `__glsplc_Scissor` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5452c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5452c-0xda5459c (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xda54570 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda54578 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda54580 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda54588 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda5455c calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x66, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda54564 targets 0xda5458c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54594 has v0 = ret(__glSPDlalloc).

- `__glsplc_ShadeModel` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5459c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5459c-0xda545e8 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda545d4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda545c0 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x67, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda545c8 targets 0xda545d8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda545e0 has v0 = ret(__glSPDlalloc).

- `__glsplc_TexParameterf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda545e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda545e8-0xda54660 (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0xda54610 calls __glTexParameterfv_size [0xda19c24] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda54628 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda54644 calls __glsplc_TexParameterfv [0xda54660] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda5461c targets 0xda54638, is taken when v0(=ret(__glTexParameterfv_size)) == at(=0x1), and falls through when v0(=ret(__glTexParameterfv_size)) != at(=0x1).
  The `beq` branch at 0xda54630 targets 0xda54650 and is always taken.
  The return at 0xda54658 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_TexParameterfv).

- `__glsplc_TexParameterfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54660 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54660-0xda54708 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda546d8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda546e0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda54688 calls __glTexParameterfv_size [0xda19c24] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda546a0 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glTexParameterfv_size) << 0x2), a3=?.
  The `jalr` at 0xda546bc calls __glSPDlalloc [0xd94a930] with a0=(ret(__glTexParameterfv_size) << 0x2)+8, a1=0x69, a2=(ret(__glTexParameterfv_size) << 0x2), a3=?.
  The `jalr` at 0xda546ec calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda54694 targets 0xda546b0, is taken when a2(=(ret(__glTexParameterfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glTexParameterfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda546a8 targets 0xda546f8 and is always taken.
  The `beq` branch at 0xda546c8 targets 0xda546f8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54700 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_TexParameteri` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54708 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54708-0xda54780 (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0xda54730 calls __glTexParameteriv_size [0xda19d70] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda54748 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda54764 calls __glsplc_TexParameteriv [0xda54780] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda5473c targets 0xda54758, is taken when v0(=ret(__glTexParameteriv_size)) == at(=0x1), and falls through when v0(=ret(__glTexParameteriv_size)) != at(=0x1).
  The `beq` branch at 0xda54750 targets 0xda54770 and is always taken.
  The return at 0xda54778 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_TexParameteriv).

- `__glsplc_TexParameteriv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54780 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54780-0xda54828 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda547f8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda54800 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda547a8 calls __glTexParameteriv_size [0xda19d70] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda547c0 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glTexParameteriv_size) << 0x2), a3=?.
  The `jalr` at 0xda547dc calls __glSPDlalloc [0xd94a930] with a0=(ret(__glTexParameteriv_size) << 0x2)+8, a1=0x6b, a2=(ret(__glTexParameteriv_size) << 0x2), a3=?.
  The `jalr` at 0xda5480c calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda547b4 targets 0xda547d0, is taken when a2(=(ret(__glTexParameteriv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glTexParameteriv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda547c8 targets 0xda54818 and is always taken.
  The `beq` branch at 0xda547e8 targets 0xda54818, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54820 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_TexEnvf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54828 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54828-0xda548a0 (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0xda54850 calls __glTexEnvfv_size [0xda1a15c] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda54868 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda54884 calls __glsplc_TexEnvfv [0xda548a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda5485c targets 0xda54878, is taken when v0(=ret(__glTexEnvfv_size)) == at(=0x1), and falls through when v0(=ret(__glTexEnvfv_size)) != at(=0x1).
  The `beq` branch at 0xda54870 targets 0xda54890 and is always taken.
  The return at 0xda54898 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_TexEnvfv).

- `__glsplc_TexEnvfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda548a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda548a0-0xda54948 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda54918 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda54920 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda548c8 calls __glTexEnvfv_size [0xda1a15c] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda548e0 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glTexEnvfv_size) << 0x2), a3=?.
  The `jalr` at 0xda548fc calls __glSPDlalloc [0xd94a930] with a0=(ret(__glTexEnvfv_size) << 0x2)+8, a1=0x6f, a2=(ret(__glTexEnvfv_size) << 0x2), a3=?.
  The `jalr` at 0xda5492c calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda548d4 targets 0xda548f0, is taken when a2(=(ret(__glTexEnvfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glTexEnvfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda548e8 targets 0xda54938 and is always taken.
  The `beq` branch at 0xda54908 targets 0xda54938, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54940 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_TexEnvi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54948 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54948-0xda549c0 (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0xda54970 calls __glTexEnviv_size [0xda1a190] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda54988 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda549a4 calls __glsplc_TexEnviv [0xda549c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda5497c targets 0xda54998, is taken when v0(=ret(__glTexEnviv_size)) == at(=0x1), and falls through when v0(=ret(__glTexEnviv_size)) != at(=0x1).
  The `beq` branch at 0xda54990 targets 0xda549b0 and is always taken.
  The return at 0xda549b8 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_TexEnviv).

- `__glsplc_TexEnviv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda549c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda549c0-0xda54a68 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda54a38 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda54a40 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda549e8 calls __glTexEnviv_size [0xda1a190] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda54a00 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glTexEnviv_size) << 0x2), a3=?.
  The `jalr` at 0xda54a1c calls __glSPDlalloc [0xd94a930] with a0=(ret(__glTexEnviv_size) << 0x2)+8, a1=0x71, a2=(ret(__glTexEnviv_size) << 0x2), a3=?.
  The `jalr` at 0xda54a4c calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda549f4 targets 0xda54a10, is taken when a2(=(ret(__glTexEnviv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glTexEnviv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda54a08 targets 0xda54a58 and is always taken.
  The `beq` branch at 0xda54a28 targets 0xda54a58, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54a60 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_TexGend` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54a68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54a68-0xda54ae4 (124 bytes).
  It occupies 124 bytes.
  The `jalr` at 0xda54a94 calls __glTexGendv_size [0xda18dd0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda54aac calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda54ac8 calls __glsplc_TexGendv [0xda54ae4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda54aa0 targets 0xda54abc, is taken when v0(=ret(__glTexGendv_size)) == at(=0x1), and falls through when v0(=ret(__glTexGendv_size)) != at(=0x1).
  The `beq` branch at 0xda54ab4 targets 0xda54ad4 and is always taken.
  The return at 0xda54adc has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_TexGendv).

- `__glsplc_TexGendv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54ae4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54ae4-0xda54b8c (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda54b5c stores 4 bytes to ret(__glSPDlalloc2) +0x0.
  The `sw` at 0xda54b64 stores 4 bytes to ret(__glSPDlalloc2) +0x4.
  The `jalr` at 0xda54b0c calls __glTexGendv_size [0xda18dd0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda54b24 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glTexGendv_size) << 0x3), a3=?.
  The `jalr` at 0xda54b40 calls __glSPDlalloc2 [0xd94ab64] with a0=(ret(__glTexGendv_size) << 0x3)+8, a1=0x73, a2=(ret(__glTexGendv_size) << 0x3), a3=?.
  The `jalr` at 0xda54b70 calls memcpy with a0=ret(__glSPDlalloc2)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda54b18 targets 0xda54b34, is taken when a2(=(ret(__glTexGendv_size) << 0x3)) >= 0 (signed), and falls through when a2(=(ret(__glTexGendv_size) << 0x3)) < 0 (signed).
  The `beq` branch at 0xda54b2c targets 0xda54b7c and is always taken.
  The `beq` branch at 0xda54b4c targets 0xda54b7c, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda54b84 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc2), ret(memcpy).

- `__glsplc_TexGenf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54b8c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54b8c-0xda54c04 (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0xda54bb4 calls __glTexGenfv_size [0xda18e0c] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda54bcc calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda54be8 calls __glsplc_TexGenfv [0xda54c04] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda54bc0 targets 0xda54bdc, is taken when v0(=ret(__glTexGenfv_size)) == at(=0x1), and falls through when v0(=ret(__glTexGenfv_size)) != at(=0x1).
  The `beq` branch at 0xda54bd4 targets 0xda54bf4 and is always taken.
  The return at 0xda54bfc has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_TexGenfv).

- `__glsplc_TexGenfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54c04 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54c04-0xda54cac (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda54c7c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda54c84 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda54c2c calls __glTexGenfv_size [0xda18e0c] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda54c44 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glTexGenfv_size) << 0x2), a3=?.
  The `jalr` at 0xda54c60 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glTexGenfv_size) << 0x2)+8, a1=0x75, a2=(ret(__glTexGenfv_size) << 0x2), a3=?.
  The `jalr` at 0xda54c90 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda54c38 targets 0xda54c54, is taken when a2(=(ret(__glTexGenfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glTexGenfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda54c4c targets 0xda54c9c and is always taken.
  The `beq` branch at 0xda54c6c targets 0xda54c9c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54ca4 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_TexGeni` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54cac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54cac-0xda54d24 (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0xda54cd4 calls __glTexGeniv_size [0xda18e40] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda54cec calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda54d08 calls __glsplc_TexGeniv [0xda54d24] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda54ce0 targets 0xda54cfc, is taken when v0(=ret(__glTexGeniv_size)) == at(=0x1), and falls through when v0(=ret(__glTexGeniv_size)) != at(=0x1).
  The `beq` branch at 0xda54cf4 targets 0xda54d14 and is always taken.
  The return at 0xda54d1c has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_TexGeniv).

- `__glsplc_TexGeniv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54d24 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54d24-0xda54dcc (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda54d9c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda54da4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda54d4c calls __glTexGeniv_size [0xda18e40] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda54d64 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glTexGeniv_size) << 0x2), a3=?.
  The `jalr` at 0xda54d80 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glTexGeniv_size) << 0x2)+8, a1=0x77, a2=(ret(__glTexGeniv_size) << 0x2), a3=?.
  The `jalr` at 0xda54db0 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda54d58 targets 0xda54d74, is taken when a2(=(ret(__glTexGeniv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glTexGeniv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda54d6c targets 0xda54dbc and is always taken.
  The `beq` branch at 0xda54d8c targets 0xda54dbc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54dc4 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_InitNames` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54dcc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54dcc-0xda54e08 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda54dec calls __glSPDlalloc [0xd94a930] with a0=0x0, a1=0x78, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda54e00 has v0 = ret(__glSPDlalloc).

- `__glsplc_LoadName` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54e08 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54e08-0xda54e54 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda54e40 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda54e2c calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x79, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda54e34 targets 0xda54e44, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54e4c has v0 = ret(__glSPDlalloc).

- `__glsplc_PassThrough` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54e54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54e54-0xda54ea0 (76 bytes).
  It occupies 76 bytes.
  The `swc1` at 0xda54e8c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda54e78 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x7a, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda54e80 targets 0xda54e90, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54e98 has v0 = ret(__glSPDlalloc).

- `__glsplc_PopName` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54ea0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54ea0-0xda54edc (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda54ec0 calls __glSPDlalloc [0xd94a930] with a0=0x0, a1=0x7b, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda54ed4 has v0 = ret(__glSPDlalloc).

- `__glsplc_PushName` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54edc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54edc-0xda54f28 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda54f14 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda54f00 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x7c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda54f08 targets 0xda54f18, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54f20 has v0 = ret(__glSPDlalloc).

- `__glsplc_DrawBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54f28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54f28-0xda54f74 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda54f60 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda54f4c calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x7d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda54f54 targets 0xda54f64, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54f6c has v0 = ret(__glSPDlalloc).

- `__glsplc_Clear` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54f74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54f74-0xda54fc0 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda54fac stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda54f98 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x7e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda54fa0 targets 0xda54fb0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54fb8 has v0 = ret(__glSPDlalloc).

- `__glsplc_ClearAccum` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54fc0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54fc0-0xda55030 (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xda55004 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda5500c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda55014 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xda5501c stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda54ff0 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x7f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda54ff8 targets 0xda55020, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55028 has v0 = ret(__glSPDlalloc).

- `__glsplc_ClearIndex` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55030 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55030-0xda5507c (76 bytes).
  It occupies 76 bytes.
  The `swc1` at 0xda55068 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda55054 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5505c targets 0xda5506c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55074 has v0 = ret(__glSPDlalloc).

- `__glsplc_ClearColor` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5507c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5507c-0xda550ec (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xda550c0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda550c8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda550d0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xda550d8 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda550ac calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x81, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda550b4 targets 0xda550dc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda550e4 has v0 = ret(__glSPDlalloc).

- `__glsplc_ClearStencil` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda550ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda550ec-0xda55138 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda55124 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda55110 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x82, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55118 targets 0xda55128, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55130 has v0 = ret(__glSPDlalloc).

- `__glsplc_ClearDepth` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55138 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55138-0xda55184 (76 bytes).
  It occupies 76 bytes.
  The `sdc1` at 0xda55170 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `jalr` at 0xda5515c calls __glSPDlalloc2 [0xd94ab64] with a0=0x8, a1=0x83, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55164 targets 0xda55174, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda5517c has v0 = ret(__glSPDlalloc2).

- `__glsplc_StencilMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55184 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55184-0xda551d0 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda551bc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda551a8 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x84, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda551b0 targets 0xda551c0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda551c8 has v0 = ret(__glSPDlalloc).

- `__glsplc_ColorMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda551d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda551d0-0xda55240 (112 bytes).
  It occupies 112 bytes.
  The `sb` at 0xda55214 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xda5521c stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `sb` at 0xda55224 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `sb` at 0xda5522c stores 1 byte to ret(__glSPDlalloc) +0x3.
  The `jalr` at 0xda55200 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x85, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55208 targets 0xda55230, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55238 has v0 = ret(__glSPDlalloc).

- `__glsplc_DepthMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55240 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55240-0xda5528c (76 bytes).
  It occupies 76 bytes.
  The `sb` at 0xda55278 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda55264 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x86, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5526c targets 0xda5527c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55284 has v0 = ret(__glSPDlalloc).

- `__glsplc_IndexMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5528c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5528c-0xda552d8 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda552c4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda552b0 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x87, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda552b8 targets 0xda552c8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda552d0 has v0 = ret(__glSPDlalloc).

- `__glsplc_Accum` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda552d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda552d8-0xda55330 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda55314 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda5531c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda55300 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x88, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55308 targets 0xda55320, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55328 has v0 = ret(__glSPDlalloc).

- `__glsplc_PopAttrib` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55330 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55330-0xda5536c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda55350 calls __glSPDlalloc [0xd94a930] with a0=0x0, a1=0x8b, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda55364 has v0 = ret(__glSPDlalloc).

- `__glsplc_PushAttrib` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5536c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5536c-0xda553b8 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda553a4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda55390 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x8c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55398 targets 0xda553a8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda553b0 has v0 = ret(__glSPDlalloc).

- `__glsplc_MapGrid1d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda553b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda553b8-0xda5541c (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda553f8 stores 4 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xda55400 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda55408 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xda553e4 calls __glSPDlalloc2 [0xd94ab64] with a0=0x18, a1=0x91, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda553ec targets 0xda5540c, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda55414 has v0 = ret(__glSPDlalloc2).

- `__glsplc_MapGrid1f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5541c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5541c-0xda55480 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda5545c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda55464 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda5546c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda55448 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x92, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55450 targets 0xda55470, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55478 has v0 = ret(__glSPDlalloc).

- `__glsplc_MapGrid2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55480 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55480-0xda554fc (124 bytes).
  It occupies 124 bytes.
  The `sw` at 0xda554c0 stores 4 bytes to ret(__glSPDlalloc2) +0x20.
  The `sdc1` at 0xda554c8 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda554d0 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sw` at 0xda554d8 stores 4 bytes to ret(__glSPDlalloc2) +0x24.
  The `sdc1` at 0xda554e0 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xda554e8 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xda554ac calls __glSPDlalloc2 [0xd94ab64] with a0=0x28, a1=0x93, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda554b4 targets 0xda554ec, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda554f4 has v0 = ret(__glSPDlalloc2).

- `__glsplc_MapGrid2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda554fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda554fc-0xda5557c (128 bytes).
  It occupies 128 bytes.
  The `sw` at 0xda55540 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda55548 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda55550 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda55558 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `swc1` at 0xda55560 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `swc1` at 0xda55568 stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `jalr` at 0xda5552c calls __glSPDlalloc [0xd94a930] with a0=0x18, a1=0x94, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55534 targets 0xda5556c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55574 has v0 = ret(__glSPDlalloc).

- `__glsplc_EvalCoord1d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5557c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5557c-0xda555c8 (76 bytes).
  It occupies 76 bytes.
  The `sdc1` at 0xda555b4 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `jalr` at 0xda555a0 calls __glSPDlalloc2 [0xd94ab64] with a0=0x8, a1=0x95, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda555a8 targets 0xda555b8, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda555c0 has v0 = ret(__glSPDlalloc2).

- `__glsplc_EvalCoord1dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda555c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda555c8-0xda55618 (80 bytes).
  It occupies 80 bytes.
  The `ldc1` at 0xda55600 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda55604 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `jalr` at 0xda555ec calls __glSPDlalloc2 [0xd94ab64] with a0=0x8, a1=0x95, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda555f4 targets 0xda55608, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda55610 has v0 = ret(__glSPDlalloc2).

- `__glsplc_EvalCoord1f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55618 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55618-0xda55664 (76 bytes).
  It occupies 76 bytes.
  The `swc1` at 0xda55650 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda5563c calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x96, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55644 targets 0xda55654, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5565c has v0 = ret(__glSPDlalloc).

- `__glsplc_EvalCoord1fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55664 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55664-0xda556b4 (80 bytes).
  It occupies 80 bytes.
  The `lwc1` at 0xda5569c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda556a0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda55688 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x96, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55690 targets 0xda556a4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda556ac has v0 = ret(__glSPDlalloc).

- `__glsplc_EvalCoord2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda556b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda556b4-0xda5570c (88 bytes).
  It occupies 88 bytes.
  The `sdc1` at 0xda556f0 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda556f8 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xda556dc calls __glSPDlalloc2 [0xd94ab64] with a0=0x10, a1=0x97, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda556e4 targets 0xda556fc, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda55704 has v0 = ret(__glSPDlalloc2).

- `__glsplc_EvalCoord2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5570c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5570c-0xda55764 (88 bytes).
  It occupies 88 bytes.
  The `ldc1` at 0xda55744 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda55748 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xda5574c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda55750 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xda55730 calls __glSPDlalloc2 [0xd94ab64] with a0=0x10, a1=0x97, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5573c targets 0xda55754, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda5575c has v0 = ret(__glSPDlalloc2).

- `__glsplc_EvalCoord2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55764 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55764-0xda557bc (88 bytes).
  It occupies 88 bytes.
  The `swc1` at 0xda557a0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda557a8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda5578c calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x98, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55794 targets 0xda557ac, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda557b4 has v0 = ret(__glSPDlalloc).

- `__glsplc_EvalCoord2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda557bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda557bc-0xda55814 (88 bytes).
  It occupies 88 bytes.
  The `lwc1` at 0xda557f4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda557f8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xda557fc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda55800 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda557e0 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x98, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda557ec targets 0xda55804, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5580c has v0 = ret(__glSPDlalloc).

- `__glsplc_EvalMesh1` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55814 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55814-0xda55878 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda55854 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda5585c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda55864 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda55840 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x99, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55848 targets 0xda55868, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55870 has v0 = ret(__glSPDlalloc).

- `__glsplc_EvalPoint1` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55878 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55878-0xda558c4 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda558b0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda5589c calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x9a, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda558a4 targets 0xda558b4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda558bc has v0 = ret(__glSPDlalloc).

- `__glsplc_EvalMesh2` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda558c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda558c4-0xda5593c (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0xda55908 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda55910 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda55918 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda55920 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xda55928 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `jalr` at 0xda558f4 calls __glSPDlalloc [0xd94a930] with a0=0x14, a1=0x9b, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda558fc targets 0xda5592c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55934 has v0 = ret(__glSPDlalloc).

- `__glsplc_EvalPoint2` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5593c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5593c-0xda55994 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda55978 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda55980 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda55964 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x9c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5596c targets 0xda55984, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5598c has v0 = ret(__glSPDlalloc).

- `__glsplc_AlphaFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55994 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55994-0xda559ec (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda559d0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda559d8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda559bc calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x9d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda559c4 targets 0xda559dc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda559e4 has v0 = ret(__glSPDlalloc).

- `__glsplc_BlendFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda559ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda559ec-0xda55a44 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda55a28 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda55a30 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda55a14 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x9e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55a1c targets 0xda55a34, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55a3c has v0 = ret(__glSPDlalloc).

- `__glsplc_LogicOp` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55a44 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55a44-0xda55a90 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda55a7c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda55a68 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x9f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55a70 targets 0xda55a80, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55a88 has v0 = ret(__glSPDlalloc).

- `__glsplc_StencilFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55a90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55a90-0xda55af4 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda55ad0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda55ad8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda55ae0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda55abc calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0xa0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55ac4 targets 0xda55ae4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55aec has v0 = ret(__glSPDlalloc).

- `__glsplc_StencilOp` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55af4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55af4-0xda55b58 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda55b34 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda55b3c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda55b44 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda55b20 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0xa1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55b28 targets 0xda55b48, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55b50 has v0 = ret(__glSPDlalloc).

- `__glsplc_DepthFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55b58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55b58-0xda55ba4 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda55b90 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda55b7c calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xa2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55b84 targets 0xda55b94, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55b9c has v0 = ret(__glSPDlalloc).

- `__glsplc_PixelZoom` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55ba4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55ba4-0xda55bfc (88 bytes).
  It occupies 88 bytes.
  The `swc1` at 0xda55be0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda55be8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda55bcc calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0xa3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55bd4 targets 0xda55bec, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55bf4 has v0 = ret(__glSPDlalloc).

- `__glsplc_PixelTransferf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55bfc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55bfc-0xda55c54 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda55c38 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda55c40 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda55c24 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0xa4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55c2c targets 0xda55c44, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55c4c has v0 = ret(__glSPDlalloc).

- `__glsplc_PixelTransferi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55c54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55c54-0xda55cac (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda55c90 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda55c98 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda55c7c calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0xa5, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55c84 targets 0xda55c9c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55ca4 has v0 = ret(__glSPDlalloc).

- `__glsplc_PixelMapfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55cac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55cac-0xda55d48 (156 bytes).
  It occupies 156 bytes.
  The `sw` at 0xda55d18 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda55d20 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda55cdc calls __glsplc_InvalidValue [0xd9944c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(a1 << 0x2).
  The `jalr` at 0xda55cf8 calls __glSPDlalloc [0xd94a930] with a0=(a1 << 0x2)+8, a1=0xa6, a2=a2 at entry (arg2), a3=(a1 << 0x2).
  The `jalr` at 0xda55d2c calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda55cd0 targets 0xda55cec, is taken when a3(=(a1 << 0x2)) >= 0 (signed), and falls through when a3(=(a1 << 0x2)) < 0 (signed).
  The `beq` branch at 0xda55ce4 targets 0xda55d38 and is always taken.
  The `beq` branch at 0xda55d04 targets 0xda55d38, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55d40 has v0 = one of ret(__glsplc_InvalidValue), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_PixelMapuiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55d48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55d48-0xda55de4 (156 bytes).
  It occupies 156 bytes.
  The `sw` at 0xda55db4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda55dbc stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda55d78 calls __glsplc_InvalidValue [0xd9944c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(a1 << 0x2).
  The `jalr` at 0xda55d94 calls __glSPDlalloc [0xd94a930] with a0=(a1 << 0x2)+8, a1=0xa7, a2=a2 at entry (arg2), a3=(a1 << 0x2).
  The `jalr` at 0xda55dc8 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda55d6c targets 0xda55d88, is taken when a3(=(a1 << 0x2)) >= 0 (signed), and falls through when a3(=(a1 << 0x2)) < 0 (signed).
  The `beq` branch at 0xda55d80 targets 0xda55dd4 and is always taken.
  The `beq` branch at 0xda55da0 targets 0xda55dd4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55ddc has v0 = one of ret(__glsplc_InvalidValue), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_PixelMapusv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55de4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55de4-0xda55e8c (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda55e5c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda55e64 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda55e20 calls __glsplc_InvalidValue [0xd9944c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda55e3c calls __glSPDlalloc [0xd94a930] with a0=?, a1=0xa8, a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda55e70 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda55e14 targets 0xda55e30, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `beq` branch at 0xda55e28 targets 0xda55e7c and is always taken.
  The `beq` branch at 0xda55e48 targets 0xda55e7c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55e84 has v0 = one of ret(__glsplc_InvalidValue), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_ReadBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55e8c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55e8c-0xda55ed8 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda55ec4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda55eb0 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xa9, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55eb8 targets 0xda55ec8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55ed0 has v0 = ret(__glSPDlalloc).

- `__glsplc_CopyPixels` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55ed8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55ed8-0xda55f50 (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0xda55f1c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda55f24 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda55f2c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda55f34 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xda55f3c stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `jalr` at 0xda55f08 calls __glSPDlalloc [0xd94a930] with a0=0x14, a1=0xaa, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55f10 targets 0xda55f40, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda55f48 has v0 = ret(__glSPDlalloc).

- `__glsplc_DepthRange` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55f50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55f50-0xda55fa8 (88 bytes).
  It occupies 88 bytes.
  The `sdc1` at 0xda55f8c stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda55f94 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xda55f78 calls __glSPDlalloc2 [0xd94ab64] with a0=0x10, a1=0xac, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55f80 targets 0xda55f98, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda55fa0 has v0 = ret(__glSPDlalloc2).

- `__glsplc_Frustum` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda55fa8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda55fa8-0xda56020 (120 bytes).
  It occupies 120 bytes.
  The `sdc1` at 0xda55fe4 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda55fec stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xda55ff4 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xda55ffc stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `sdc1` at 0xda56004 stores 8 bytes to ret(__glSPDlalloc2) +0x20.
  The `sdc1` at 0xda5600c stores 8 bytes to ret(__glSPDlalloc2) +0x28.
  The `jalr` at 0xda55fd0 calls __glSPDlalloc2 [0xd94ab64] with a0=0x30, a1=0xad, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda55fd8 targets 0xda56010, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda56018 has v0 = ret(__glSPDlalloc2).

- `__glsplc_LoadIdentity` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56020 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56020-0xda5605c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda56040 calls __glSPDlalloc [0xd94a930] with a0=0x0, a1=0xae, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda56054 has v0 = ret(__glSPDlalloc).

- `__glsplc_MatrixMode` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5611c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5611c-0xda56168 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda56154 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda56140 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xb1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56148 targets 0xda56158, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56160 has v0 = ret(__glSPDlalloc).

- `__glsplc_MultMatrixf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56168 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56168-0xda561c8 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xda5618c calls __glSPDlalloc [0xd94a930] with a0=0x40, a1=0xb2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda561ac calls memcpy with a0=ret(__glSPDlalloc), a1=a0 at entry (arg0), a2=0x40, a3=?.
  The `beq` branch at 0xda56198 targets 0xda561b8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda561c0 has v0 = one of ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_MultMatrixd` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda561c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda561c8-0xda56228 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xda561ec calls __glSPDlalloc2 [0xd94ab64] with a0=0x80, a1=0xb3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5620c calls memcpy with a0=ret(__glSPDlalloc2), a1=a0 at entry (arg0), a2=0x80, a3=?.
  The `beq` branch at 0xda561f8 targets 0xda56218, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda56220 has v0 = one of ret(__glSPDlalloc2), ret(memcpy).

- `__glsplc_Ortho` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56228 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56228-0xda562a0 (120 bytes).
  It occupies 120 bytes.
  The `sdc1` at 0xda56264 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda5626c stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xda56274 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xda5627c stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `sdc1` at 0xda56284 stores 8 bytes to ret(__glSPDlalloc2) +0x20.
  The `sdc1` at 0xda5628c stores 8 bytes to ret(__glSPDlalloc2) +0x28.
  The `jalr` at 0xda56250 calls __glSPDlalloc2 [0xd94ab64] with a0=0x30, a1=0xb4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56258 targets 0xda56290, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda56298 has v0 = ret(__glSPDlalloc2).

- `__glsplc_PopMatrix` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda562a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda562a0-0xda562dc (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda562c0 calls __glSPDlalloc [0xd94a930] with a0=0x0, a1=0xb5, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda562d4 has v0 = ret(__glSPDlalloc).

- `__glsplc_PushMatrix` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda562dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda562dc-0xda56318 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda562fc calls __glSPDlalloc [0xd94a930] with a0=0x0, a1=0xb6, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda56310 has v0 = ret(__glSPDlalloc).

- `__glsplc_Rotated` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56318 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56318-0xda56380 (104 bytes).
  It occupies 104 bytes.
  The `sdc1` at 0xda56354 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda5635c stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xda56364 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xda5636c stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xda56340 calls __glSPDlalloc2 [0xd94ab64] with a0=0x20, a1=0xb7, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56348 targets 0xda56370, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda56378 has v0 = ret(__glSPDlalloc2).

- `__glsplc_Rotatef` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56380 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56380-0xda563f0 (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xda563c4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda563cc stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda563d4 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xda563dc stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda563b0 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0xb8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda563b8 targets 0xda563e0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda563e8 has v0 = ret(__glSPDlalloc).

- `__glsplc_Scaled` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda563f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda563f0-0xda56450 (96 bytes).
  It occupies 96 bytes.
  The `sdc1` at 0xda5642c stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda56434 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xda5643c stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xda56418 calls __glSPDlalloc2 [0xd94ab64] with a0=0x18, a1=0xb9, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56420 targets 0xda56440, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda56448 has v0 = ret(__glSPDlalloc2).

- `__glsplc_Scalef` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56450 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56450-0xda564b4 (100 bytes).
  It occupies 100 bytes.
  The `swc1` at 0xda56490 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda56498 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda564a0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda5647c calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0xba, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56484 targets 0xda564a4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda564ac has v0 = ret(__glSPDlalloc).

- `__glsplc_Translated` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda564b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda564b4-0xda56514 (96 bytes).
  It occupies 96 bytes.
  The `sdc1` at 0xda564f0 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda564f8 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xda56500 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xda564dc calls __glSPDlalloc2 [0xd94ab64] with a0=0x18, a1=0xbb, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda564e4 targets 0xda56504, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda5650c has v0 = ret(__glSPDlalloc2).

- `__glsplc_Translatef` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56514 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56514-0xda56578 (100 bytes).
  It occupies 100 bytes.
  The `swc1` at 0xda56554 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda5655c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda56564 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda56540 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0xbc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56548 targets 0xda56568, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56570 has v0 = ret(__glSPDlalloc).

- `__glsplc_Viewport` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56578 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56578-0xda565e8 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xda565bc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda565c4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda565cc stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda565d4 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda565a8 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0xbd, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda565b0 targets 0xda565d8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda565e0 has v0 = ret(__glSPDlalloc).

- `__glsplc_BlendColorEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda565e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda565e8-0xda56658 (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xda5662c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda56634 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda5663c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xda56644 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda56618 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0xbe, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56620 targets 0xda56648, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56650 has v0 = ret(__glSPDlalloc).

- `__glsplc_BlendEquationEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56658 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56658-0xda566a4 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda56690 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda5667c calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xbf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56684 targets 0xda56694, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5669c has v0 = ret(__glSPDlalloc).

- `__glsplc_PolygonOffsetEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda566a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda566a4-0xda566fc (88 bytes).
  It occupies 88 bytes.
  The `swc1` at 0xda566e0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda566e8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda566cc calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0xc0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda566d4 targets 0xda566ec, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda566f4 has v0 = ret(__glSPDlalloc).

- `__glsplc_ConvolutionParameterfEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda566fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda566fc-0xda56760 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda5673c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda56744 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda5674c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda56728 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0xc5, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56730 targets 0xda56750, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56758 has v0 = ret(__glSPDlalloc).

- `__glsplc_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56760 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56760-0xda56808 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda567d8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda567e0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda56788 calls __glConvolutionParameterfvEXT_size [0xd9d38d4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda567a0 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glConvolutionParameterfvEXT_size) << 0x2), a3=?.
  The `jalr` at 0xda567bc calls __glSPDlalloc [0xd94a930] with a0=(ret(__glConvolutionParameterfvEXT_size) << 0x2)+8, a1=0xc6, a2=(ret(__glConvolutionParameterfvEXT_size) << 0x2), a3=?.
  The `jalr` at 0xda567ec calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda56794 targets 0xda567b0, is taken when a2(=(ret(__glConvolutionParameterfvEXT_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glConvolutionParameterfvEXT_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda567a8 targets 0xda567f8 and is always taken.
  The `beq` branch at 0xda567c8 targets 0xda567f8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56800 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_ConvolutionParameteriEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56808 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56808-0xda5686c (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda56848 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda56850 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda56858 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda56834 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0xc7, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5683c targets 0xda5685c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56864 has v0 = ret(__glSPDlalloc).

- `__glsplc_ConvolutionParameterivEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5686c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5686c-0xda56914 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda568e4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda568ec stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda56894 calls __glConvolutionParameterivEXT_size [0xd9d3918] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda568ac calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glConvolutionParameterivEXT_size) << 0x2), a3=?.
  The `jalr` at 0xda568c8 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glConvolutionParameterivEXT_size) << 0x2)+8, a1=0xc8, a2=(ret(__glConvolutionParameterivEXT_size) << 0x2), a3=?.
  The `jalr` at 0xda568f8 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda568a0 targets 0xda568bc, is taken when a2(=(ret(__glConvolutionParameterivEXT_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glConvolutionParameterivEXT_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda568b4 targets 0xda56904 and is always taken.
  The `beq` branch at 0xda568d4 targets 0xda56904, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5690c has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_CopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56914 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56914-0xda5698c (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0xda56958 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda56960 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda56968 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda56970 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xda56978 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `jalr` at 0xda56944 calls __glSPDlalloc [0xd94a930] with a0=0x14, a1=0xc9, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5694c targets 0xda5697c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56984 has v0 = ret(__glSPDlalloc).

- `__glsplc_CopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5698c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5698c-0xda56a0c (128 bytes).
  It occupies 128 bytes.
  The `sw` at 0xda569d0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda569d8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda569e0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda569e8 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xda569f0 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `sw` at 0xda569f8 stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `jalr` at 0xda569bc calls __glSPDlalloc [0xd94a930] with a0=0x18, a1=0xca, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda569c4 targets 0xda569fc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56a04 has v0 = ret(__glSPDlalloc).

- `__glsplc_HistogramEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56a0c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56a0c-0xda56aa8 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xda56a3c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda56a40 loads 4 bytes from [0x1010] +0x17f4.
  The `lw` at 0xda56a44 loads 4 bytes from [[0x1010]+6132] +0x300.
  The `sw` at 0xda56a84 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda56a8c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sb` at 0xda56a90 stores 1 byte to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xda56a94 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda56a48 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda56a68 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0xcc, a2=a2 at entry (arg2), a3=?.
  The `bne` branch at 0xda56a34 targets 0xda56a58, is taken when a0 != at(=0x8025), and falls through when a0 == at(=0x8025).
  The `beq` branch at 0xda56a50 targets 0xda56a98 and is always taken.
  The `beq` branch at 0xda56a78 targets 0xda56a98, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56aa0 has v0 = one of ret(?), ret(__glSPDlalloc).

- `__glsplc_MinmaxEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56aa8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56aa8-0xda56b0c (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda56ae8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda56af0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sb` at 0xda56af8 stores 1 byte to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda56ad4 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0xcd, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56adc targets 0xda56afc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56b04 has v0 = ret(__glSPDlalloc).

- `__glsplc_ResetHistogramEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56b0c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56b0c-0xda56b58 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda56b44 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda56b30 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xce, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56b38 targets 0xda56b48, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56b50 has v0 = ret(__glSPDlalloc).

- `__glsplc_ResetMinmaxEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56b58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56b58-0xda56ba4 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda56b90 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda56b7c calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xcf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56b84 targets 0xda56b94, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56b9c has v0 = ret(__glSPDlalloc).

- `__glsplc_BindTextureEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56ba4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56ba4-0xda56bfc (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda56be0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda56be8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda56bcc calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0xd4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56bd4 targets 0xda56bec, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56bf4 has v0 = ret(__glSPDlalloc).

- `__glsplc_PrioritizeTexturesEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56bfc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56bfc-0xda56ca4 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda56c58 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda56c38 calls __glSPDlalloc [0xd94a930] with a0=((a0 << 0x2) + (a0 << 0x2))+4, a1=0xd5, a2=a2 at entry (arg2), a3=(a0 << 0x2).
  The `jalr` at 0xda56c68 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xda56c88 calls memcpy with a0=?, a1=a2 at entry (arg2), a2=?, a3=?.
  The `beq` branch at 0xda56c44 targets 0xda56c94, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56c9c has v0 = one of ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_CopyTexImage1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56ca4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56ca4-0xda56d2c (136 bytes).
  It occupies 136 bytes.
  The `sw` at 0xda56ce8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda56cf0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda56cf8 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda56d00 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xda56d08 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `sw` at 0xda56d10 stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `sw` at 0xda56d18 stores 4 bytes to ret(__glSPDlalloc) +0x18.
  The `jalr` at 0xda56cd4 calls __glSPDlalloc [0xd94a930] with a0=0x1c, a1=0xd6, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56cdc targets 0xda56d1c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56d24 has v0 = ret(__glSPDlalloc).

- `__glsplc_CopyTexImage2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56d2c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56d2c-0xda56dbc (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0xda56d70 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda56d78 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda56d80 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda56d88 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xda56d90 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `sw` at 0xda56d98 stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `sw` at 0xda56da0 stores 4 bytes to ret(__glSPDlalloc) +0x18.
  The `sw` at 0xda56da8 stores 4 bytes to ret(__glSPDlalloc) +0x1c.
  The `jalr` at 0xda56d5c calls __glSPDlalloc [0xd94a930] with a0=0x20, a1=0xd7, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56d64 targets 0xda56dac, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56db4 has v0 = ret(__glSPDlalloc).

- `__glsplc_CopyTexSubImage1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56dbc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56dbc-0xda56e3c (128 bytes).
  It occupies 128 bytes.
  The `sw` at 0xda56e00 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda56e08 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda56e10 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda56e18 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xda56e20 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `sw` at 0xda56e28 stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `jalr` at 0xda56dec calls __glSPDlalloc [0xd94a930] with a0=0x18, a1=0xd8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56df4 targets 0xda56e2c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56e34 has v0 = ret(__glSPDlalloc).

- `__glsplc_CopyTexSubImage2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56e3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56e3c-0xda56ecc (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0xda56e80 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda56e88 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda56e90 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda56e98 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xda56ea0 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `sw` at 0xda56ea8 stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `sw` at 0xda56eb0 stores 4 bytes to ret(__glSPDlalloc) +0x18.
  The `sw` at 0xda56eb8 stores 4 bytes to ret(__glSPDlalloc) +0x1c.
  The `jalr` at 0xda56e6c calls __glSPDlalloc [0xd94a930] with a0=0x20, a1=0xd9, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56e74 targets 0xda56ebc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56ec4 has v0 = ret(__glSPDlalloc).

- `__glsplc_CopyTexSubImage3DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56ecc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56ecc-0xda56f64 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xda56f10 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda56f18 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda56f20 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda56f28 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xda56f30 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `sw` at 0xda56f38 stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `sw` at 0xda56f40 stores 4 bytes to ret(__glSPDlalloc) +0x18.
  The `sw` at 0xda56f48 stores 4 bytes to ret(__glSPDlalloc) +0x1c.
  The `sw` at 0xda56f50 stores 4 bytes to ret(__glSPDlalloc) +0x20.
  The `jalr` at 0xda56efc calls __glSPDlalloc [0xd94a930] with a0=0x24, a1=0xda, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56f04 targets 0xda56f54, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56f5c has v0 = ret(__glSPDlalloc).

- `__glsplc_PolygonOffset` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56f64 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56f64-0xda56fbc (88 bytes).
  It occupies 88 bytes.
  The `swc1` at 0xda56fa0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda56fa8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda56f8c calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0xdc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56f94 targets 0xda56fac, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda56fb4 has v0 = ret(__glSPDlalloc).

- `__glsplc_Indexub` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda56fbc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda56fbc-0xda57008 (76 bytes).
  It occupies 76 bytes.
  The `sb` at 0xda56ff4 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda56fe0 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xdd, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda56fe8 targets 0xda56ff8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57000 has v0 = ret(__glSPDlalloc).

- `__glsplc_Indexubv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57008 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57008-0xda57058 (80 bytes).
  It occupies 80 bytes.
  The `lbu` at 0xda57040 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xda57044 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda5702c calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xdd, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda57034 targets 0xda57048, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57050 has v0 = ret(__glSPDlalloc).

- `__glsplc_SampleMaskSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57058 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57058-0xda570b0 (88 bytes).
  It occupies 88 bytes.
  The `swc1` at 0xda57094 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xda5709c stores 1 byte to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda57080 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0xde, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda57088 targets 0xda570a0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda570a8 has v0 = ret(__glSPDlalloc).

- `__glsplc_SamplePatternSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda570b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda570b0-0xda570fc (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda570e8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda570d4 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xdf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda570dc targets 0xda570ec, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda570f4 has v0 = ret(__glSPDlalloc).

- `__glsplc_TagSampleBufferSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda570fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda570fc-0xda57138 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda5711c calls __glSPDlalloc [0xd94a930] with a0=0x0, a1=0xe0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda57130 has v0 = ret(__glSPDlalloc).

- `__glsplc_DetailTexFuncSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57138 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57138-0xda571d4 (156 bytes).
  It occupies 156 bytes.
  The `sw` at 0xda571a4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda571ac stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda57168 calls __glsplc_InvalidValue [0xd9944c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(a1 << 0x3).
  The `jalr` at 0xda57184 calls __glSPDlalloc [0xd94a930] with a0=(a1 << 0x3)+8, a1=0xe1, a2=a2 at entry (arg2), a3=(a1 << 0x3).
  The `jalr` at 0xda571b8 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda5715c targets 0xda57178, is taken when a3(=(a1 << 0x3)) >= 0 (signed), and falls through when a3(=(a1 << 0x3)) < 0 (signed).
  The `beq` branch at 0xda57170 targets 0xda571c4 and is always taken.
  The `beq` branch at 0xda57190 targets 0xda571c4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda571cc has v0 = one of ret(__glsplc_InvalidValue), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_SharpenTexFuncSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda571d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda571d4-0xda57270 (156 bytes).
  It occupies 156 bytes.
  The `sw` at 0xda57240 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda57248 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda57204 calls __glsplc_InvalidValue [0xd9944c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(a1 << 0x3).
  The `jalr` at 0xda57220 calls __glSPDlalloc [0xd94a930] with a0=(a1 << 0x3)+8, a1=0xe2, a2=a2 at entry (arg2), a3=(a1 << 0x3).
  The `jalr` at 0xda57254 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda571f8 targets 0xda57214, is taken when a3(=(a1 << 0x3)) >= 0 (signed), and falls through when a3(=(a1 << 0x3)) < 0 (signed).
  The `beq` branch at 0xda5720c targets 0xda57260 and is always taken.
  The `beq` branch at 0xda5722c targets 0xda57260, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57268 has v0 = one of ret(__glsplc_InvalidValue), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_ColorTableParameterfvSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57270 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57270-0xda57318 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda572e8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda572f0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda57298 calls __glColorTableParameterfvSGI_size [0xda07a18] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda572b0 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glColorTableParameterfvSGI_size) << 0x2), a3=?.
  The `jalr` at 0xda572cc calls __glSPDlalloc [0xd94a930] with a0=(ret(__glColorTableParameterfvSGI_size) << 0x2)+8, a1=0xe4, a2=(ret(__glColorTableParameterfvSGI_size) << 0x2), a3=?.
  The `jalr` at 0xda572fc calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda572a4 targets 0xda572c0, is taken when a2(=(ret(__glColorTableParameterfvSGI_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glColorTableParameterfvSGI_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda572b8 targets 0xda57308 and is always taken.
  The `beq` branch at 0xda572d8 targets 0xda57308, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57310 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_ColorTableParameterivSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57318 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57318-0xda573c0 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda57390 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda57398 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda57340 calls __glColorTableParameterivSGI_size [0xda07a3c] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda57358 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glColorTableParameterivSGI_size) << 0x2), a3=?.
  The `jalr` at 0xda57374 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glColorTableParameterivSGI_size) << 0x2)+8, a1=0xe5, a2=(ret(__glColorTableParameterivSGI_size) << 0x2), a3=?.
  The `jalr` at 0xda573a4 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda5734c targets 0xda57368, is taken when a2(=(ret(__glColorTableParameterivSGI_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glColorTableParameterivSGI_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda57360 targets 0xda573b0 and is always taken.
  The `beq` branch at 0xda57380 targets 0xda573b0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda573b8 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_CopyColorTableSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda573c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda573c0-0xda57438 (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0xda57404 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda5740c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda57414 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda5741c stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xda57424 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `jalr` at 0xda573f0 calls __glSPDlalloc [0xd94a930] with a0=0x14, a1=0xe6, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda573f8 targets 0xda57428, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57430 has v0 = ret(__glSPDlalloc).

- `__glsplc_PixelTexGenSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57438 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57438-0xda57484 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda57470 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda5745c calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xe9, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda57464 targets 0xda57474, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5747c has v0 = ret(__glSPDlalloc).

- `__glsplc_SpriteParameterfSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57484 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57484-0xda574dc (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda574c0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda574c8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda574ac calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0xea, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda574b4 targets 0xda574cc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda574d4 has v0 = ret(__glSPDlalloc).

- `__glsplc_SpriteParameterfvSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda574dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda574dc-0xda57574 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xda5754c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda574fc calls __glSpriteParameterfvSGIX_size [0xda07a70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda57514 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glSpriteParameterfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda57530 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glSpriteParameterfvSGIX_size) << 0x2)+4, a1=0xeb, a2=(ret(__glSpriteParameterfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda57558 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgez` branch at 0xda57508 targets 0xda57524, is taken when a2(=(ret(__glSpriteParameterfvSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glSpriteParameterfvSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda5751c targets 0xda57564 and is always taken.
  The `beq` branch at 0xda5753c targets 0xda57564, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5756c has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_SpriteParameteriSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57574 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57574-0xda575cc (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda575b0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda575b8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda5759c calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0xec, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda575a4 targets 0xda575bc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda575c4 has v0 = ret(__glSPDlalloc).

- `__glsplc_SpriteParameterivSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda575cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda575cc-0xda57664 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xda5763c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda575ec calls __glSpriteParameterivSGIX_size [0xda07ab4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda57604 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glSpriteParameterivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda57620 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glSpriteParameterivSGIX_size) << 0x2)+4, a1=0xed, a2=(ret(__glSpriteParameterivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda57648 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgez` branch at 0xda575f8 targets 0xda57614, is taken when a2(=(ret(__glSpriteParameterivSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glSpriteParameterivSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda5760c targets 0xda57654 and is always taken.
  The `beq` branch at 0xda5762c targets 0xda57654, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5765c has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_TexFilterFuncSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57664 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57664-0xda57708 (164 bytes).
  It occupies 164 bytes.
  The `sw` at 0xda576cc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda576d4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda576dc stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda57698 calls __glsplc_InvalidValue [0xd9944c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda576b4 calls __glSPDlalloc [0xd94a930] with a0=(a2 << 0x2)+12, a1=0xee, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda576ec calls memcpy with a0=ret(__glSPDlalloc)+12, a1=a3 at entry (arg3), a2=?, a3=?.
  The `bgez` branch at 0xda5768c targets 0xda576a8, is taken when v0(=(a2 << 0x2)) >= 0 (signed), and falls through when v0(=(a2 << 0x2)) < 0 (signed).
  The `beq` branch at 0xda576a0 targets 0xda576f8 and is always taken.
  The `beq` branch at 0xda576bc targets 0xda576f8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57700 has v0 = one of ret(__glsplc_InvalidValue), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_PointParameterfSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57708 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57708-0xda57760 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda57744 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda5774c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda57730 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0xef, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda57738 targets 0xda57750, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57758 has v0 = ret(__glSPDlalloc).

- `__glsplc_PointParameterfvSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57760 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57760-0xda577f8 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xda577d0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda57780 calls __glPointParameterfvSGIS_size [0xda07ae8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda57798 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glPointParameterfvSGIS_size) << 0x2), a3=?.
  The `jalr` at 0xda577b4 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glPointParameterfvSGIS_size) << 0x2)+4, a1=0xf0, a2=(ret(__glPointParameterfvSGIS_size) << 0x2), a3=?.
  The `jalr` at 0xda577dc calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgez` branch at 0xda5778c targets 0xda577a8, is taken when a2(=(ret(__glPointParameterfvSGIS_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glPointParameterfvSGIS_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda577a0 targets 0xda577e8 and is always taken.
  The `beq` branch at 0xda577c0 targets 0xda577e8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda577f0 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_FogFuncSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda577f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda577f8-0xda57888 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0xda5785c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda57824 calls __glsplc_InvalidValue [0xd9944c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(a0 << 0x3), a3=a0 at entry (arg0).
  The `jalr` at 0xda57844 calls __glSPDlalloc [0xd94a930] with a0=(a0 << 0x3)+4, a1=0xf1, a2=(a0 << 0x3), a3=a0 at entry (arg0).
  The `jalr` at 0xda5786c calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=a0 at entry (arg0).
  The `bgez` branch at 0xda57818 targets 0xda57834, is taken when a2(=(a0 << 0x3)) >= 0 (signed), and falls through when a2(=(a0 << 0x3)) < 0 (signed).
  The `beq` branch at 0xda5782c targets 0xda57878 and is always taken.
  The `beq` branch at 0xda57854 targets 0xda57878, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57880 has v0 = one of ret(__glsplc_InvalidValue), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_ReadInstrumentsSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57888 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57888-0xda578d4 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda578c0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda578ac calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xf2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda578b4 targets 0xda578c4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda578cc has v0 = ret(__glSPDlalloc).

- `__glsplc_StartInstrumentsSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda578d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda578d4-0xda57910 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda578f4 calls __glSPDlalloc [0xd94a930] with a0=0x0, a1=0xf3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda57908 has v0 = ret(__glSPDlalloc).

- `__glsplc_StopInstrumentsSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57910 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57910-0xda5795c (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda57948 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda57934 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xf4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5793c targets 0xda5794c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57954 has v0 = ret(__glSPDlalloc).

- `__glsplc_ReferencePlaneSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5795c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5795c-0xda579c8 (108 bytes).
  It occupies 108 bytes.
  The `ldc1` at 0xda57998 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda5799c stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xda579a0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda579a4 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xda579a8 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda579ac stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `ldc1` at 0xda579b0 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sdc1` at 0xda579b4 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xda57984 calls __glSPDlalloc2 [0xd94ab64] with a0=0x20, a1=0xf5, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda57990 targets 0xda579b8, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda579c0 has v0 = ret(__glSPDlalloc2).

- `__glsplc_FrameZoomSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda579c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda579c8-0xda57a14 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda57a00 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda579ec calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xf6, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda579f4 targets 0xda57a04, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57a0c has v0 = ret(__glSPDlalloc).

- `__glsplc_DeformSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57a14 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57a14-0xda57a60 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda57a4c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda57a38 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xf9, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda57a40 targets 0xda57a50, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57a58 has v0 = ret(__glSPDlalloc).

- `__glsplc_LoadIdentityDeformationMapSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57a60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57a60-0xda57aac (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda57a98 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda57a84 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xfa, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda57a8c targets 0xda57a9c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57aa4 has v0 = ret(__glSPDlalloc).

- `__glsplc_CopyColorSubTable` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57aac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57aac-0xda57b24 (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0xda57af0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda57af8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda57b00 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda57b08 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0xda57b10 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `jalr` at 0xda57adc calls __glSPDlalloc [0xd94a930] with a0=0x14, a1=0xfc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda57ae4 targets 0xda57b14, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57b1c has v0 = ret(__glSPDlalloc).

- `__glsplc_PixelTexGenParameteriSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57b24 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57b24-0xda57b7c (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda57b60 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda57b68 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda57b4c calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0xfe, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda57b54 targets 0xda57b6c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57b74 has v0 = ret(__glSPDlalloc).

- `__glsplc_PixelTexGenParameterivSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57b7c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57b7c-0xda57c14 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xda57bec stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda57b9c calls __glPixelTexGenParameterivSGIS_size [0xda07c0c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda57bb4 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glPixelTexGenParameterivSGIS_size) << 0x2), a3=?.
  The `jalr` at 0xda57bd0 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glPixelTexGenParameterivSGIS_size) << 0x2)+4, a1=0xff, a2=(ret(__glPixelTexGenParameterivSGIS_size) << 0x2), a3=?.
  The `jalr` at 0xda57bf8 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgez` branch at 0xda57ba8 targets 0xda57bc4, is taken when a2(=(ret(__glPixelTexGenParameterivSGIS_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glPixelTexGenParameterivSGIS_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda57bbc targets 0xda57c04 and is always taken.
  The `beq` branch at 0xda57bdc targets 0xda57c04, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57c0c has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_PixelTexGenParameterfSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57c14 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57c14-0xda57c6c (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda57c50 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda57c58 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda57c3c calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x100, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda57c44 targets 0xda57c5c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57c64 has v0 = ret(__glSPDlalloc).

- `__glsplc_PixelTexGenParameterfvSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57c6c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57c6c-0xda57d04 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xda57cdc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda57c8c calls __glPixelTexGenParameterfvSGIS_size [0xda07c40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda57ca4 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glPixelTexGenParameterfvSGIS_size) << 0x2), a3=?.
  The `jalr` at 0xda57cc0 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glPixelTexGenParameterfvSGIS_size) << 0x2)+4, a1=0x101, a2=(ret(__glPixelTexGenParameterfvSGIS_size) << 0x2), a3=?.
  The `jalr` at 0xda57ce8 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgez` branch at 0xda57c98 targets 0xda57cb4, is taken when a2(=(ret(__glPixelTexGenParameterfvSGIS_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glPixelTexGenParameterfvSGIS_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda57cac targets 0xda57cf4 and is always taken.
  The `beq` branch at 0xda57ccc targets 0xda57cf4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57cfc has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_AsyncMarkerSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57d04 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57d04-0xda57d50 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda57d3c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda57d28 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x102, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda57d30 targets 0xda57d40, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57d48 has v0 = ret(__glSPDlalloc).

- `__glsplc_FragmentColorMaterialSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57d50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57d50-0xda57da8 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda57d8c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda57d94 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda57d78 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x103, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda57d80 targets 0xda57d98, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57da0 has v0 = ret(__glSPDlalloc).

- `__glsplc_FragmentLightfSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57da8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57da8-0xda57e0c (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda57de8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda57df0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda57df8 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda57dd4 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x104, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda57ddc targets 0xda57dfc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57e04 has v0 = ret(__glSPDlalloc).

- `__glsplc_FragmentLightfvSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57e0c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57e0c-0xda57eb4 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda57e84 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda57e8c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda57e34 calls __glFragmentLightfvSGIX_size [0xda07d1c] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda57e4c calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glFragmentLightfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda57e68 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glFragmentLightfvSGIX_size) << 0x2)+8, a1=0x105, a2=(ret(__glFragmentLightfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda57e98 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda57e40 targets 0xda57e5c, is taken when a2(=(ret(__glFragmentLightfvSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentLightfvSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda57e54 targets 0xda57ea4 and is always taken.
  The `beq` branch at 0xda57e74 targets 0xda57ea4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57eac has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_FragmentLightiSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57eb4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57eb4-0xda57f18 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda57ef4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda57efc stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda57f04 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda57ee0 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x106, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda57ee8 targets 0xda57f08, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57f10 has v0 = ret(__glSPDlalloc).

- `__glsplc_FragmentLightivSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57f18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57f18-0xda57fc0 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda57f90 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda57f98 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda57f40 calls __glFragmentLightivSGIX_size [0xda07dd4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda57f58 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glFragmentLightivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda57f74 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glFragmentLightivSGIX_size) << 0x2)+8, a1=0x107, a2=(ret(__glFragmentLightivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda57fa4 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgez` branch at 0xda57f4c targets 0xda57f68, is taken when a2(=(ret(__glFragmentLightivSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentLightivSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda57f60 targets 0xda57fb0 and is always taken.
  The `beq` branch at 0xda57f80 targets 0xda57fb0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda57fb8 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_FragmentLightModelfSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda57fc0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda57fc0-0xda58018 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda57ffc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda58004 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda57fe8 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x108, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda57ff0 targets 0xda58008, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda58010 has v0 = ret(__glSPDlalloc).

- `__glsplc_FragmentLightModelfvSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda58018 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda58018-0xda580b0 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xda58088 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda58038 calls __glFragmentLightModelfvSGIX_size [0xda07e08] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda58050 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glFragmentLightModelfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda5806c calls __glSPDlalloc [0xd94a930] with a0=(ret(__glFragmentLightModelfvSGIX_size) << 0x2)+4, a1=0x109, a2=(ret(__glFragmentLightModelfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda58094 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgez` branch at 0xda58044 targets 0xda58060, is taken when a2(=(ret(__glFragmentLightModelfvSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentLightModelfvSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda58058 targets 0xda580a0 and is always taken.
  The `beq` branch at 0xda58078 targets 0xda580a0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda580a8 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_FragmentLightModeliSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda580b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda580b0-0xda58108 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda580ec stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda580f4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda580d8 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x10a, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda580e0 targets 0xda580f8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda58100 has v0 = ret(__glSPDlalloc).

- `__glsplc_FragmentLightModelivSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda58108 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda58108-0xda581a0 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xda58178 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda58128 calls __glFragmentLightModelivSGIX_size [0xda07e5c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda58140 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glFragmentLightModelivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda5815c calls __glSPDlalloc [0xd94a930] with a0=(ret(__glFragmentLightModelivSGIX_size) << 0x2)+4, a1=0x10b, a2=(ret(__glFragmentLightModelivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda58184 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgez` branch at 0xda58134 targets 0xda58150, is taken when a2(=(ret(__glFragmentLightModelivSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentLightModelivSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda58148 targets 0xda58190 and is always taken.
  The `beq` branch at 0xda58168 targets 0xda58190, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda58198 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_FragmentMaterialfSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda581a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda581a0-0xda58204 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda581e0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda581e8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda581f0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda581cc calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x10c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda581d4 targets 0xda581f4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda581fc has v0 = ret(__glSPDlalloc).

- `__glsplc_FragmentMaterialfvSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda58204 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda58204-0xda582dc (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xda58230 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0xda582ac stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda582b4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda5822c calls __glErrorCheckMaterial [0xd9c339c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a2], a3=a3 at entry (arg3).
  The `jalr` at 0xda58244 calls __glsplc_Error [0xd994580] with a0=ret(__glErrorCheckMaterial), a1=?, a2=?, a3=?.
  The `jalr` at 0xda5825c calls __glFragmentMaterialfvSGIX_size [0xda07c74] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xda58274 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glFragmentMaterialfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda58290 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glFragmentMaterialfvSGIX_size) << 0x2)+8, a1=0x10d, a2=(ret(__glFragmentMaterialfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda582c0 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `beq` branch at 0xda58238 targets 0xda58254, is taken when v0(=ret(__glErrorCheckMaterial)) == 0, and falls through when v0(=ret(__glErrorCheckMaterial)) != 0.
  The `beq` branch at 0xda5824c targets 0xda582cc and is always taken.
  The `bgez` branch at 0xda58268 targets 0xda58284, is taken when a2(=(ret(__glFragmentMaterialfvSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentMaterialfvSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda5827c targets 0xda582cc and is always taken.
  The `beq` branch at 0xda5829c targets 0xda582cc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda582d4 has v0 = one of ret(__glsplc_Error), ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_FragmentMaterialiSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda582dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda582dc-0xda58340 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda5831c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda58324 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda5832c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda58308 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x10e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda58310 targets 0xda58330, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda58338 has v0 = ret(__glSPDlalloc).

- `__glsplc_FragmentMaterialivSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda58340 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda58340-0xda5842c (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0xda58364 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0xda583fc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda58404 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda5837c calls __glErrorCheckMaterial [0xd9c339c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xda58394 calls __glsplc_Error [0xd994580] with a0=ret(__glErrorCheckMaterial), a1=?, a2=?, a3=?.
  The `jalr` at 0xda583ac calls __glFragmentMaterialivSGIX_size [0xda07ce8] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xda583c4 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glFragmentMaterialivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda583e0 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glFragmentMaterialivSGIX_size) << 0x2)+8, a1=0x10f, a2=(ret(__glFragmentMaterialivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xda58410 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `beq` branch at 0xda58388 targets 0xda583a4, is taken when v0(=ret(__glErrorCheckMaterial)) == 0, and falls through when v0(=ret(__glErrorCheckMaterial)) != 0.
  The `beq` branch at 0xda5839c targets 0xda5841c and is always taken.
  The `bgez` branch at 0xda583b8 targets 0xda583d4, is taken when a2(=(ret(__glFragmentMaterialivSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentMaterialivSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda583cc targets 0xda5841c and is always taken.
  The `beq` branch at 0xda583ec targets 0xda5841c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda58424 has v0 = one of ret(__glsplc_Error), ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_LightEnviSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5842c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5842c-0xda58484 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda58468 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda58470 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda58454 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x110, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5845c targets 0xda58474, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5847c has v0 = ret(__glSPDlalloc).

- `__glsplc_TextureColorMaskSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda58484 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda58484-0xda584f4 (112 bytes).
  It occupies 112 bytes.
  The `sb` at 0xda584c8 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xda584d0 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `sb` at 0xda584d8 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `sb` at 0xda584e0 stores 1 byte to ret(__glSPDlalloc) +0x3.
  The `jalr` at 0xda584b4 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x111, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda584bc targets 0xda584e4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda584ec has v0 = ret(__glSPDlalloc).

- `__glDrawArraysV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda58500 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda58500-0xda585b4 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xda58514 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda58530, `lw` at 0xda58570.
  The `lw` at 0xda58538 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda58544 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda58550 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda58568 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58588 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda5855c targets 0xda58584, is taken when s4(=a2) <= 0 (signed), and falls through when s4(=a2) > 0 (signed).
  The `bne` branch at 0xda5857c targets 0xda58564, is taken when s1(?) != s4(=a2), and falls through when s1(?) == s4(=a2).
  The return at 0xda585ac has v0 = ret(glEnd).

- `__glDrawArraysNV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda585b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda585b4-0xda586ac (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0xda585c8 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda585ec, `lw` at 0xda58648.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda585f0, `lw` at 0xda58660.
  The `lw` at 0xda585f4 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda585fc loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda58604 loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xda58608 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda58628 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda58640 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58658 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58678 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda58634 targets 0xda58674, is taken when s6(=a2) <= 0 (signed), and falls through when s6(=a2) > 0 (signed).
  The `bne` branch at 0xda5866c targets 0xda5863c, is taken when s0(?) != s6(=a2), and falls through when s0(?) == s6(=a2).
  The return at 0xda586a4 has v0 = ret(glEnd).

- `__glDrawArraysCV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda586ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda586ac-0xda587a4 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0xda586c0 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xda586e4, `lw` at 0xda58740.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda586e8, `lw` at 0xda58758.
  The `lw` at 0xda586ec loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda586f4 loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xda586fc loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xda58700 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda58720 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda58738 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58750 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58770 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda5872c targets 0xda5876c, is taken when s6(=a2) <= 0 (signed), and falls through when s6(=a2) > 0 (signed).
  The `bne` branch at 0xda58764 targets 0xda58734, is taken when s0(?) != s6(=a2), and falls through when s0(?) == s6(=a2).
  The return at 0xda5879c has v0 = ret(glEnd).

- `__glDrawArraysNCV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda587a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda587a4-0xda588dc (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0xda587b8 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda587e4, `lw` at 0xda58858.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xda587e8, `lw` at 0xda58870.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda587ec, `lw` at 0xda58888.
  The `lw` at 0xda587f4 loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xda587f8 loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda587fc loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda58804 loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xda58808 loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xda5880c loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda58838 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda58850 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58868 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58880 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda588a0 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda58844 targets 0xda5889c, is taken when s8(=a2) <= 0 (signed), and falls through when s8(=a2) > 0 (signed).
  The `bne` branch at 0xda58894 targets 0xda5884c, is taken when s4(?) != s8(=a2), and falls through when s4(?) == s8(=a2).
  The return at 0xda588d4 has v0 = ret(glEnd).

- `__glDrawArraysTV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda588dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda588dc-0xda589d4 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0xda588f0 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xda58914, `lw` at 0xda58970.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda58918, `lw` at 0xda58988.
  The `lw` at 0xda5891c loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda58924 loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xda5892c loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xda58930 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda58950 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda58968 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58980 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda589a0 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda5895c targets 0xda5899c, is taken when s6(=a2) <= 0 (signed), and falls through when s6(=a2) > 0 (signed).
  The `bne` branch at 0xda58994 targets 0xda58964, is taken when s0(?) != s6(=a2), and falls through when s0(?) == s6(=a2).
  The return at 0xda589cc has v0 = ret(glEnd).

- `__glDrawArraysNTV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda589d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda589d4-0xda58b0c (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0xda589e8 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda58a14, `lw` at 0xda58a88.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xda58a18, `lw` at 0xda58aa0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda58a1c, `lw` at 0xda58ab8.
  The `lw` at 0xda58a24 loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xda58a28 loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda58a2c loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda58a34 loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xda58a38 loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xda58a3c loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda58a68 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda58a80 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58a98 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58ab0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58ad0 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda58a74 targets 0xda58acc, is taken when s8(=a2) <= 0 (signed), and falls through when s8(=a2) > 0 (signed).
  The `bne` branch at 0xda58ac4 targets 0xda58a7c, is taken when s4(?) != s8(=a2), and falls through when s4(?) == s8(=a2).
  The return at 0xda58b04 has v0 = ret(glEnd).

- `__glDrawArraysCTV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda58b0c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda58b0c-0xda58c44 (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0xda58b20 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xda58b4c, `lw` at 0xda58bc0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xda58b50, `lw` at 0xda58bd8.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda58b54, `lw` at 0xda58bf0.
  The `lw` at 0xda58b5c loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xda58b60 loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xda58b64 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda58b6c loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xda58b70 loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xda58b74 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda58ba0 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda58bb8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58bd0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58be8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58c08 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda58bac targets 0xda58c04, is taken when s8(=a2) <= 0 (signed), and falls through when s8(=a2) > 0 (signed).
  The `bne` branch at 0xda58bfc targets 0xda58bb4, is taken when s4(?) != s8(=a2), and falls through when s4(?) == s8(=a2).
  The return at 0xda58c3c has v0 = ret(glEnd).

- `__glDrawArraysNCTV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda58c44 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda58c44-0xda58db8 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xda58c58 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda58c88, `lw` at 0xda58d18.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xda58c8c, `lw` at 0xda58d30.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xda58c90, `lw` at 0xda58d4c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda58c98, `lw` at 0xda58d64.
  The `lw` at 0xda58c9c loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xda58ca0 loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda58ca4 loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xda58ca8 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda58cac loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xda58cb0 loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xda58cb4 loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xda58cc0 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda58cf4 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda58d10 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58d28 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58d40 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58d58 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58d7c calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda58d08 targets 0xda58d78, is taken when t0(=a2) <= 0 (signed), and falls through when t0(=a2) > 0 (signed).
  The `bne` branch at 0xda58d70 targets 0xda58d0c, is taken when s5(?) != t4(=a2), and falls through when s5(?) == t4(=a2).
  The return at 0xda58db0 has v0 = ret(glEnd).

- `__glDrawArraysIV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda58db8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda58db8-0xda58eb0 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0xda58dcc loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1438, including `lw` at 0xda58df0, `lw` at 0xda58e4c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda58df4, `lw` at 0xda58e64.
  The `lw` at 0xda58df8 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda58e00 loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xda58e08 loads 4 bytes from [0x1010] +0x1444.
  The `lw` at 0xda58e0c loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda58e2c calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda58e44 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58e5c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58e7c calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda58e38 targets 0xda58e78, is taken when s6(=a2) <= 0 (signed), and falls through when s6(=a2) > 0 (signed).
  The `bne` branch at 0xda58e70 targets 0xda58e40, is taken when s0(?) != s6(=a2), and falls through when s0(?) == s6(=a2).
  The return at 0xda58ea8 has v0 = ret(glEnd).

- `__glDrawArraysNIV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda58eb0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda58eb0-0xda58fe8 (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0xda58ec4 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda58ef0, `lw` at 0xda58f64.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1438, including `lw` at 0xda58ef4, `lw` at 0xda58f7c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda58ef8, `lw` at 0xda58f94.
  The `lw` at 0xda58f00 loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xda58f04 loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda58f08 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda58f10 loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xda58f14 loads 4 bytes from [0x1010] +0x1444.
  The `lw` at 0xda58f18 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda58f44 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda58f5c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58f74 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58f8c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda58fac calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda58f50 targets 0xda58fa8, is taken when s8(=a2) <= 0 (signed), and falls through when s8(=a2) > 0 (signed).
  The `bne` branch at 0xda58fa0 targets 0xda58f58, is taken when s4(?) != s8(=a2), and falls through when s4(?) == s8(=a2).
  The return at 0xda58fe0 has v0 = ret(glEnd).

- `__glDrawArraysCIV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda58fe8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda58fe8-0xda59120 (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0xda58ffc loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xda59028, `lw` at 0xda5909c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1438, including `lw` at 0xda5902c, `lw` at 0xda590b4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda59030, `lw` at 0xda590cc.
  The `lw` at 0xda59038 loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xda5903c loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xda59040 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda59048 loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xda5904c loads 4 bytes from [0x1010] +0x1444.
  The `lw` at 0xda59050 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda5907c calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda59094 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda590ac calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda590c4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda590e4 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda59088 targets 0xda590e0, is taken when s8(=a2) <= 0 (signed), and falls through when s8(=a2) > 0 (signed).
  The `bne` branch at 0xda590d8 targets 0xda59090, is taken when s4(?) != s8(=a2), and falls through when s4(?) == s8(=a2).
  The return at 0xda59118 has v0 = ret(glEnd).

- `__glDrawArraysNCIV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda59120 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda59120-0xda59294 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xda59134 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda59164, `lw` at 0xda591f4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xda59168, `lw` at 0xda5920c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1438, including `lw` at 0xda5916c, `lw` at 0xda59228.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda59174, `lw` at 0xda59240.
  The `lw` at 0xda59178 loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xda5917c loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda59180 loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xda59184 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda59188 loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xda5918c loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xda59190 loads 4 bytes from [0x1010] +0x1444.
  The `lw` at 0xda5919c loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda591d0 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda591ec calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59204 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5921c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59234 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59258 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda591e4 targets 0xda59254, is taken when t0(=a2) <= 0 (signed), and falls through when t0(=a2) > 0 (signed).
  The `bne` branch at 0xda5924c targets 0xda591e8, is taken when s5(?) != t4(=a2), and falls through when s5(?) == t4(=a2).
  The return at 0xda5928c has v0 = ret(glEnd).

- `__glDrawArraysTIV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda59294 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda59294-0xda593cc (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0xda592a8 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xda592d4, `lw` at 0xda59348.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1438, including `lw` at 0xda592d8, `lw` at 0xda59360.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda592dc, `lw` at 0xda59378.
  The `lw` at 0xda592e4 loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xda592e8 loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xda592ec loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda592f4 loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xda592f8 loads 4 bytes from [0x1010] +0x1444.
  The `lw` at 0xda592fc loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda59328 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda59340 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59358 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59370 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59390 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda59334 targets 0xda5938c, is taken when s8(=a2) <= 0 (signed), and falls through when s8(=a2) > 0 (signed).
  The `bne` branch at 0xda59384 targets 0xda5933c, is taken when s4(?) != s8(=a2), and falls through when s4(?) == s8(=a2).
  The return at 0xda593c4 has v0 = ret(glEnd).

- `__glDrawArraysNTIV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda593cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda593cc-0xda59540 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xda593e0 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda59410, `lw` at 0xda594a0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xda59414, `lw` at 0xda594b8.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1438, including `lw` at 0xda59418, `lw` at 0xda594d4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda59420, `lw` at 0xda594ec.
  The `lw` at 0xda59424 loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xda59428 loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda5942c loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xda59430 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda59434 loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xda59438 loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xda5943c loads 4 bytes from [0x1010] +0x1444.
  The `lw` at 0xda59448 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda5947c calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda59498 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda594b0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda594c8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda594e0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59504 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda59490 targets 0xda59500, is taken when t0(=a2) <= 0 (signed), and falls through when t0(=a2) > 0 (signed).
  The `bne` branch at 0xda594f8 targets 0xda59494, is taken when s5(?) != t4(=a2), and falls through when s5(?) == t4(=a2).
  The return at 0xda59538 has v0 = ret(glEnd).

- `__glDrawArraysCTIV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda59540 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda59540-0xda596b4 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xda59554 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xda59584, `lw` at 0xda59614.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xda59588, `lw` at 0xda5962c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1438, including `lw` at 0xda5958c, `lw` at 0xda59648.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda59594, `lw` at 0xda59660.
  The `lw` at 0xda59598 loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xda5959c loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xda595a0 loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xda595a4 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda595a8 loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xda595ac loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xda595b0 loads 4 bytes from [0x1010] +0x1444.
  The `lw` at 0xda595bc loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda595f0 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5960c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59624 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5963c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59654 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59678 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda59604 targets 0xda59674, is taken when t0(=a2) <= 0 (signed), and falls through when t0(=a2) > 0 (signed).
  The `bne` branch at 0xda5966c targets 0xda59608, is taken when s5(?) != t4(=a2), and falls through when s5(?) == t4(=a2).
  The return at 0xda596ac has v0 = ret(glEnd).

- `__glDrawArraysNCTIV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda596b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda596b4-0xda59860 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xda596c8 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda596f8, `lw` at 0xda597a8.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xda596fc, `lw` at 0xda597c4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xda59700, `lw` at 0xda597dc.
  The `lw` at 0xda59708 loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda5970c loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xda59710 loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xda59714 loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xda59718 loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xda5971c loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xda59724 loads 4 bytes from [0x1010] +0x1430.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1438, including `lw` at 0xda59730, `lw` at 0xda597f4.
  The `lw` at 0xda59738 loads 4 bytes from [0x1010] +0x1444.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda59748, `lw` at 0xda5980c.
  The `lw` at 0xda59750 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda5975c loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda59784 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda597a0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda597b8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda597d0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda597e8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59800 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59824 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda59798 targets 0xda59820, is taken when t4(=a2) <= 0 (signed), and falls through when t4(=a2) > 0 (signed).
  The `bne` branch at 0xda59818 targets 0xda5979c, is taken when s1(?) != t1(=a2), and falls through when s1(?) == t1(=a2).
  The return at 0xda59858 has v0 = ret(glEnd).

- `__glDrawArraysEV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda59860 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda59860-0xda59958 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0xda59874 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1468, including `lw` at 0xda59898, `lw` at 0xda598f4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda5989c, `lw` at 0xda5990c.
  The `lw` at 0xda598a0 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda598a8 loads 4 bytes from [0x1010] +0x1464.
  The `lw` at 0xda598b0 loads 4 bytes from [0x1010] +0x1474.
  The `lw` at 0xda598b4 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda598d4 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda598ec calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59904 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59924 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda598e0 targets 0xda59920, is taken when s6(=a2) <= 0 (signed), and falls through when s6(=a2) > 0 (signed).
  The `bne` branch at 0xda59918 targets 0xda598e8, is taken when s0(?) != s6(=a2), and falls through when s0(?) == s6(=a2).
  The return at 0xda59950 has v0 = ret(glEnd).

- `__glDrawArraysNEV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda59958 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda59958-0xda59a90 (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0xda5996c loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda59998, `lw` at 0xda59a0c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1468, including `lw` at 0xda5999c, `lw` at 0xda59a24.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda599a0, `lw` at 0xda59a3c.
  The `lw` at 0xda599a8 loads 4 bytes from [0x1010] +0x1464.
  The `lw` at 0xda599ac loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda599b0 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda599b8 loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xda599bc loads 4 bytes from [0x1010] +0x1474.
  The `lw` at 0xda599c0 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda599ec calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda59a04 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59a1c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59a34 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59a54 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda599f8 targets 0xda59a50, is taken when s8(=a2) <= 0 (signed), and falls through when s8(=a2) > 0 (signed).
  The `bne` branch at 0xda59a48 targets 0xda59a00, is taken when s4(?) != s8(=a2), and falls through when s4(?) == s8(=a2).
  The return at 0xda59a88 has v0 = ret(glEnd).

- `__glDrawArraysCEV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda59a90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda59a90-0xda59bc8 (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0xda59aa4 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xda59ad0, `lw` at 0xda59b44.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1468, including `lw` at 0xda59ad4, `lw` at 0xda59b5c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda59ad8, `lw` at 0xda59b74.
  The `lw` at 0xda59ae0 loads 4 bytes from [0x1010] +0x1464.
  The `lw` at 0xda59ae4 loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xda59ae8 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda59af0 loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xda59af4 loads 4 bytes from [0x1010] +0x1474.
  The `lw` at 0xda59af8 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda59b24 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda59b3c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59b54 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59b6c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59b8c calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda59b30 targets 0xda59b88, is taken when s8(=a2) <= 0 (signed), and falls through when s8(=a2) > 0 (signed).
  The `bne` branch at 0xda59b80 targets 0xda59b38, is taken when s4(?) != s8(=a2), and falls through when s4(?) == s8(=a2).
  The return at 0xda59bc0 has v0 = ret(glEnd).

- `__glDrawArraysNCEV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda59bc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda59bc8-0xda59d3c (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xda59bdc loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda59c0c, `lw` at 0xda59c9c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xda59c10, `lw` at 0xda59cb4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1468, including `lw` at 0xda59c14, `lw` at 0xda59cd0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda59c1c, `lw` at 0xda59ce8.
  The `lw` at 0xda59c20 loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xda59c24 loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda59c28 loads 4 bytes from [0x1010] +0x1464.
  The `lw` at 0xda59c2c loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda59c30 loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xda59c34 loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xda59c38 loads 4 bytes from [0x1010] +0x1474.
  The `lw` at 0xda59c44 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda59c78 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda59c94 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59cac calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59cc4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59cdc calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59d00 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda59c8c targets 0xda59cfc, is taken when t0(=a2) <= 0 (signed), and falls through when t0(=a2) > 0 (signed).
  The `bne` branch at 0xda59cf4 targets 0xda59c90, is taken when s5(?) != t4(=a2), and falls through when s5(?) == t4(=a2).
  The return at 0xda59d34 has v0 = ret(glEnd).

- `__glDrawArraysTEV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda59d3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda59d3c-0xda59e74 (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0xda59d50 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xda59d7c, `lw` at 0xda59df0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1468, including `lw` at 0xda59d80, `lw` at 0xda59e08.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda59d84, `lw` at 0xda59e20.
  The `lw` at 0xda59d8c loads 4 bytes from [0x1010] +0x1464.
  The `lw` at 0xda59d90 loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xda59d94 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda59d9c loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xda59da0 loads 4 bytes from [0x1010] +0x1474.
  The `lw` at 0xda59da4 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda59dd0 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda59de8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59e00 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59e18 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59e38 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda59ddc targets 0xda59e34, is taken when s8(=a2) <= 0 (signed), and falls through when s8(=a2) > 0 (signed).
  The `bne` branch at 0xda59e2c targets 0xda59de4, is taken when s4(?) != s8(=a2), and falls through when s4(?) == s8(=a2).
  The return at 0xda59e6c has v0 = ret(glEnd).

- `__glDrawArraysNTEV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda59e74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda59e74-0xda59fe8 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xda59e88 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda59eb8, `lw` at 0xda59f48.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xda59ebc, `lw` at 0xda59f60.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1468, including `lw` at 0xda59ec0, `lw` at 0xda59f7c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda59ec8, `lw` at 0xda59f94.
  The `lw` at 0xda59ecc loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xda59ed0 loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda59ed4 loads 4 bytes from [0x1010] +0x1464.
  The `lw` at 0xda59ed8 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda59edc loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xda59ee0 loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xda59ee4 loads 4 bytes from [0x1010] +0x1474.
  The `lw` at 0xda59ef0 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda59f24 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda59f40 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59f58 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59f70 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59f88 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda59fac calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda59f38 targets 0xda59fa8, is taken when t0(=a2) <= 0 (signed), and falls through when t0(=a2) > 0 (signed).
  The `bne` branch at 0xda59fa0 targets 0xda59f3c, is taken when s5(?) != t4(=a2), and falls through when s5(?) == t4(=a2).
  The return at 0xda59fe0 has v0 = ret(glEnd).

- `__glDrawArraysCTEV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda59fe8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda59fe8-0xda5a15c (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xda59ffc loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xda5a02c, `lw` at 0xda5a0bc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xda5a030, `lw` at 0xda5a0d4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1468, including `lw` at 0xda5a034, `lw` at 0xda5a0f0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda5a03c, `lw` at 0xda5a108.
  The `lw` at 0xda5a040 loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xda5a044 loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xda5a048 loads 4 bytes from [0x1010] +0x1464.
  The `lw` at 0xda5a04c loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda5a050 loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xda5a054 loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xda5a058 loads 4 bytes from [0x1010] +0x1474.
  The `lw` at 0xda5a064 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda5a098 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5a0b4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a0cc calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a0e4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a0fc calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a120 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda5a0ac targets 0xda5a11c, is taken when t0(=a2) <= 0 (signed), and falls through when t0(=a2) > 0 (signed).
  The `bne` branch at 0xda5a114 targets 0xda5a0b0, is taken when s5(?) != t4(=a2), and falls through when s5(?) == t4(=a2).
  The return at 0xda5a154 has v0 = ret(glEnd).

- `__glDrawArraysNCTEV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5a15c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5a15c-0xda5a308 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xda5a170 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda5a1a0, `lw` at 0xda5a250.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xda5a1a4, `lw` at 0xda5a26c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xda5a1a8, `lw` at 0xda5a284.
  The `lw` at 0xda5a1b0 loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda5a1b4 loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xda5a1b8 loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xda5a1bc loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xda5a1c0 loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xda5a1c4 loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xda5a1cc loads 4 bytes from [0x1010] +0x1464.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1468, including `lw` at 0xda5a1d8, `lw` at 0xda5a29c.
  The `lw` at 0xda5a1e0 loads 4 bytes from [0x1010] +0x1474.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda5a1f0, `lw` at 0xda5a2b4.
  The `lw` at 0xda5a1f8 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda5a204 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda5a22c calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5a248 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a260 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a278 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a290 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a2a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a2cc calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda5a240 targets 0xda5a2c8, is taken when t4(=a2) <= 0 (signed), and falls through when t4(=a2) > 0 (signed).
  The `bne` branch at 0xda5a2c0 targets 0xda5a244, is taken when s1(?) != t1(=a2), and falls through when s1(?) == t1(=a2).
  The return at 0xda5a300 has v0 = ret(glEnd).

- `__glDrawArraysIEV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5a308 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5a308-0xda5a440 (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0xda5a31c loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1438, including `lw` at 0xda5a348, `lw` at 0xda5a3bc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1468, including `lw` at 0xda5a34c, `lw` at 0xda5a3d4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda5a350, `lw` at 0xda5a3ec.
  The `lw` at 0xda5a358 loads 4 bytes from [0x1010] +0x1464.
  The `lw` at 0xda5a35c loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xda5a360 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda5a368 loads 4 bytes from [0x1010] +0x1444.
  The `lw` at 0xda5a36c loads 4 bytes from [0x1010] +0x1474.
  The `lw` at 0xda5a370 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda5a39c calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5a3b4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a3cc calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a3e4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a404 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda5a3a8 targets 0xda5a400, is taken when s8(=a2) <= 0 (signed), and falls through when s8(=a2) > 0 (signed).
  The `bne` branch at 0xda5a3f8 targets 0xda5a3b0, is taken when s4(?) != s8(=a2), and falls through when s4(?) == s8(=a2).
  The return at 0xda5a438 has v0 = ret(glEnd).

- `__glDrawArraysNIEV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5a440 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5a440-0xda5a5b4 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xda5a454 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda5a484, `lw` at 0xda5a514.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1438, including `lw` at 0xda5a488, `lw` at 0xda5a52c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1468, including `lw` at 0xda5a48c, `lw` at 0xda5a548.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda5a494, `lw` at 0xda5a560.
  The `lw` at 0xda5a498 loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xda5a49c loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda5a4a0 loads 4 bytes from [0x1010] +0x1464.
  The `lw` at 0xda5a4a4 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda5a4a8 loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xda5a4ac loads 4 bytes from [0x1010] +0x1444.
  The `lw` at 0xda5a4b0 loads 4 bytes from [0x1010] +0x1474.
  The `lw` at 0xda5a4bc loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda5a4f0 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5a50c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a524 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a53c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a554 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a578 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda5a504 targets 0xda5a574, is taken when t0(=a2) <= 0 (signed), and falls through when t0(=a2) > 0 (signed).
  The `bne` branch at 0xda5a56c targets 0xda5a508, is taken when s5(?) != t4(=a2), and falls through when s5(?) == t4(=a2).
  The return at 0xda5a5ac has v0 = ret(glEnd).

- `__glDrawArraysCIEV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5a5b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5a5b4-0xda5a728 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xda5a5c8 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xda5a5f8, `lw` at 0xda5a688.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1438, including `lw` at 0xda5a5fc, `lw` at 0xda5a6a0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1468, including `lw` at 0xda5a600, `lw` at 0xda5a6bc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda5a608, `lw` at 0xda5a6d4.
  The `lw` at 0xda5a60c loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xda5a610 loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xda5a614 loads 4 bytes from [0x1010] +0x1464.
  The `lw` at 0xda5a618 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda5a61c loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xda5a620 loads 4 bytes from [0x1010] +0x1444.
  The `lw` at 0xda5a624 loads 4 bytes from [0x1010] +0x1474.
  The `lw` at 0xda5a630 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda5a664 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5a680 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a698 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a6b0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a6c8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a6ec calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda5a678 targets 0xda5a6e8, is taken when t0(=a2) <= 0 (signed), and falls through when t0(=a2) > 0 (signed).
  The `bne` branch at 0xda5a6e0 targets 0xda5a67c, is taken when s5(?) != t4(=a2), and falls through when s5(?) == t4(=a2).
  The return at 0xda5a720 has v0 = ret(glEnd).

- `__glDrawArraysNCIEV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5a728 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5a728-0xda5a8d4 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xda5a73c loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda5a76c, `lw` at 0xda5a81c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xda5a770, `lw` at 0xda5a838.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1438, including `lw` at 0xda5a774, `lw` at 0xda5a850.
  The `lw` at 0xda5a77c loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda5a780 loads 4 bytes from [0x1010] +0x1444.
  The `lw` at 0xda5a784 loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xda5a788 loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xda5a78c loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xda5a790 loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xda5a798 loads 4 bytes from [0x1010] +0x1464.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1468, including `lw` at 0xda5a7a4, `lw` at 0xda5a868.
  The `lw` at 0xda5a7ac loads 4 bytes from [0x1010] +0x1474.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda5a7bc, `lw` at 0xda5a880.
  The `lw` at 0xda5a7c4 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda5a7d0 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda5a7f8 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5a814 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a82c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a844 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a85c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a874 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a898 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda5a80c targets 0xda5a894, is taken when t4(=a2) <= 0 (signed), and falls through when t4(=a2) > 0 (signed).
  The `bne` branch at 0xda5a88c targets 0xda5a810, is taken when s1(?) != t1(=a2), and falls through when s1(?) == t1(=a2).
  The return at 0xda5a8cc has v0 = ret(glEnd).

- `__glDrawArraysTIEV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5a8d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5a8d4-0xda5aa48 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xda5a8e8 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xda5a918, `lw` at 0xda5a9a8.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1438, including `lw` at 0xda5a91c, `lw` at 0xda5a9c0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1468, including `lw` at 0xda5a920, `lw` at 0xda5a9dc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda5a928, `lw` at 0xda5a9f4.
  The `lw` at 0xda5a92c loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xda5a930 loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xda5a934 loads 4 bytes from [0x1010] +0x1464.
  The `lw` at 0xda5a938 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda5a93c loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xda5a940 loads 4 bytes from [0x1010] +0x1444.
  The `lw` at 0xda5a944 loads 4 bytes from [0x1010] +0x1474.
  The `lw` at 0xda5a950 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda5a984 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5a9a0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a9b8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a9d0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a9e8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5aa0c calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda5a998 targets 0xda5aa08, is taken when t0(=a2) <= 0 (signed), and falls through when t0(=a2) > 0 (signed).
  The `bne` branch at 0xda5aa00 targets 0xda5a99c, is taken when s5(?) != t4(=a2), and falls through when s5(?) == t4(=a2).
  The return at 0xda5aa40 has v0 = ret(glEnd).

- `__glDrawArraysNTIEV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5aa48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5aa48-0xda5abf4 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xda5aa5c loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda5aa8c, `lw` at 0xda5ab3c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xda5aa90, `lw` at 0xda5ab58.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1438, including `lw` at 0xda5aa94, `lw` at 0xda5ab70.
  The `lw` at 0xda5aa9c loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda5aaa0 loads 4 bytes from [0x1010] +0x1444.
  The `lw` at 0xda5aaa4 loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xda5aaa8 loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xda5aaac loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xda5aab0 loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xda5aab8 loads 4 bytes from [0x1010] +0x1464.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1468, including `lw` at 0xda5aac4, `lw` at 0xda5ab88.
  The `lw` at 0xda5aacc loads 4 bytes from [0x1010] +0x1474.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda5aadc, `lw` at 0xda5aba0.
  The `lw` at 0xda5aae4 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda5aaf0 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda5ab18 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5ab34 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5ab4c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5ab64 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5ab7c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5ab94 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5abb8 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda5ab2c targets 0xda5abb4, is taken when t4(=a2) <= 0 (signed), and falls through when t4(=a2) > 0 (signed).
  The `bne` branch at 0xda5abac targets 0xda5ab30, is taken when s1(?) != t1(=a2), and falls through when s1(?) == t1(=a2).
  The return at 0xda5abec has v0 = ret(glEnd).

- `__glDrawArraysCTIEV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5abf4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5abf4-0xda5ada0 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xda5ac08 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xda5ac38, `lw` at 0xda5ace8.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xda5ac3c, `lw` at 0xda5ad04.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1438, including `lw` at 0xda5ac40, `lw` at 0xda5ad1c.
  The `lw` at 0xda5ac48 loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xda5ac4c loads 4 bytes from [0x1010] +0x1444.
  The `lw` at 0xda5ac50 loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xda5ac54 loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xda5ac58 loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xda5ac5c loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xda5ac64 loads 4 bytes from [0x1010] +0x1464.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1468, including `lw` at 0xda5ac70, `lw` at 0xda5ad34.
  The `lw` at 0xda5ac78 loads 4 bytes from [0x1010] +0x1474.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda5ac88, `lw` at 0xda5ad4c.
  The `lw` at 0xda5ac90 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda5ac9c loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda5acc4 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5ace0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5acf8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5ad10 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5ad28 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5ad40 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5ad64 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda5acd8 targets 0xda5ad60, is taken when t4(=a2) <= 0 (signed), and falls through when t4(=a2) > 0 (signed).
  The `bne` branch at 0xda5ad58 targets 0xda5acdc, is taken when s1(?) != t1(=a2), and falls through when s1(?) == t1(=a2).
  The return at 0xda5ad98 has v0 = ret(glEnd).

- `__glDrawArraysNCTIEV` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5ada0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5ada0-0xda5af88 (488 bytes).
  It occupies 488 bytes.
  The `lw` at 0xda5adb4 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda5ade4, `lw` at 0xda5aeb4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xda5ade8, `lw` at 0xda5aed4.
  The `lw` at 0xda5adec loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xda5adf4 loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda5adf8 loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xda5adfc loads 4 bytes from [0x1010] +0x1410.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xda5ae04, `lw` at 0xda5aeec.
  The `lw` at 0xda5ae08 loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xda5ae0c loads 4 bytes from [0x1010] +0x1448.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1438, including `lw` at 0xda5ae1c, `lw` at 0xda5af04.
  The `lw` at 0xda5ae24 loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xda5ae30 loads 4 bytes from [0x1010] +0x1444.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1468, including `lw` at 0xda5ae3c, `lw` at 0xda5af1c.
  The `lw` at 0xda5ae40 loads 4 bytes from [0x1010] +0x1464.
  The `lw` at 0xda5ae50 loads 4 bytes from [0x1010] +0x1474.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xda5ae5c, `lw` at 0xda5af34.
  The `lw` at 0xda5ae60 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xda5ae6c loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xda5ae90 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5aeac calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5aec8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5aee0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5aef8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5af10 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5af28 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5af4c calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda5aea4 targets 0xda5af48, is taken when t0(=a2) <= 0 (signed), and falls through when t0(=a2) > 0 (signed).
  The `bne` branch at 0xda5af40 targets 0xda5aea8, is taken when s1(?) != t5(=a2), and falls through when s1(?) == t5(=a2).
  The return at 0xda5af80 has v0 = ret(glEnd).

- `__glDrawArraysN` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5af88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5af88-0xda5b040 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xda5af9c loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xda5afb8, `lw` at 0xda5aff8.
  The `lw` at 0xda5afc0 loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xda5afcc loads 4 bytes from [0x1010] +0x1410.
  The `jalr` at 0xda5afd8 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5aff0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5b010 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda5afe4 targets 0xda5b00c, is taken when s4(=a2) <= 0 (signed), and falls through when s4(=a2) > 0 (signed).
  The `bne` branch at 0xda5b004 targets 0xda5afec, is taken when s1(?) != s4(=a2), and falls through when s1(?) == s4(=a2).
  The return at 0xda5b034 has v0 = ret(glEnd).
  The instructions from 0xda5b03c to 0xda5b03c are not reached by any path from the entry, and their branches are not listed.

- `__glDoInterpret` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ca20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ca20-0xda6caa4 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda6ca28 loads 4 bytes from a0 (arg0 at entry) +0x0.
  7 such `lw` accesses load 4 bytes from ret(?) +0x0, including `lw` at 0xda6ca38, `lw` at 0xda6ca48, `lw` at 0xda6ca58.
  The `jalr` at 0xda6ca30 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda6ca40 calls (unknown callee) with a0=ret(?)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xda6ca50 calls (unknown callee) with a0=ret(?)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xda6ca60 calls (unknown callee) with a0=ret(?)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xda6ca70 calls (unknown callee) with a0=ret(?)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xda6ca80 calls (unknown callee) with a0=ret(?)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xda6ca90 calls (unknown callee) with a0=ret(?)+4, a1=?, a2=?, a3=?.
  The `beq` branch at 0xda6ca9c targets 0xda6ca30 and is always taken.

- `__glSPInterpret` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cab4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cab4-0xda6cb5c (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xda6cac0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda6cac8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  14 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda6cad4, `lw` at 0xda6cad8, `lw` at 0xda6cae8.
  The `jalr` at 0xda6cacc calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda6cae0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda6caf4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda6cb08 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda6cb1c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda6cb30 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda6cb44 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xda6cb54 targets 0xda6cacc and is always taken.

- `__glsple_Sentinel` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cb5c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cb5c-0xda6cb70 (20 bytes).
  It occupies 20 bytes.
  The return at 0xda6cb68 has v0 = ?.

- `__glMipsCopyDispatch` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cb70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cb70-0xda6cc70 (256 bytes).
  It occupies 256 bytes.
  19 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0xda6cb74, `ldc1` at 0xda6cb78, `ldc1` at 0xda6cb7c.
  19 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0xda6cba0, `sdc1` at 0xda6cba4, `sdc1` at 0xda6cba8.
  The `bgtz` branch at 0xda6cbcc targets 0xda6cb74, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beq` branch at 0xda6cbdc targets 0xda6cc64, is taken when v0(?) == at(=0x2), and falls through when v0(?) != at(=0x2).
  The `beq` branch at 0xda6cbe8 targets 0xda6cc60, is taken when v0(?) == at(=0x4), and falls through when v0(?) != at(=0x4).
  The `beq` branch at 0xda6cbf4 targets 0xda6cc5c, is taken when v0(?) == at(=0x6), and falls through when v0(?) != at(=0x6).
  The `beq` branch at 0xda6cc00 targets 0xda6cc58, is taken when v0(?) == at(=0x8), and falls through when v0(?) != at(=0x8).
  The `beq` branch at 0xda6cc0c targets 0xda6cc54, is taken when v0(?) == at(=0xa), and falls through when v0(?) != at(=0xa).
  The `beq` branch at 0xda6cc18 targets 0xda6cc50, is taken when v0(?) == at(=0xc), and falls through when v0(?) != at(=0xc).
  The `beq` branch at 0xda6cc24 targets 0xda6cc4c, is taken when v0(?) == at(=0xe), and falls through when v0(?) != at(=0xe).
  The `beq` branch at 0xda6cc30 targets 0xda6cc48, is taken when v0(?) == at(=0x10), and falls through when v0(?) != at(=0x10).
  The `beq` branch at 0xda6cc3c targets 0xda6cc44, is taken when v0(?) == at(=0x12), and falls through when v0(?) != at(=0x12).
  The return at 0xda6cc68 has v0 = ?.

- `__glFrac` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cc70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cc70-0xda6cc80 (16 bytes).
  It occupies 16 bytes.
  The return at 0xda6cc78 has v0 = ?.

- `__glFloor` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cc80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cc80-0xda6cc8c (12 bytes).
  It occupies 12 bytes.
  The return at 0xda6cc84 has v0 = ?.

- `__glce_NewList` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cc90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cc90-0xda6cc98 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cc90 targets 0xda6db08 and is always taken.

- `__glce_DeleteLists` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cc98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cc98-0xda6cca0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cc98 targets 0xda6db08 and is always taken.

- `__glce_GenLists` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cca0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cca0-0xda6cca8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cca0 targets 0xda6db08 and is always taken.

- `__glce_ListBase` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cca8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cca8-0xda6ccb0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cca8 targets 0xda6dc08 and is always taken.

- `__glce_Begin` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ccb0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ccb0-0xda6ccb8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ccb0 targets 0xda6dc08 and is always taken.

- `__glce_Bitmap` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ccb8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ccb8-0xda6ccc0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ccb8 targets 0xda6dc08 and is always taken.

- `__glce_Color3b` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ccc0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ccc0-0xda6ccc8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ccc0 targets 0xda6dc08 and is always taken.

- `__glce_Color3bv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ccc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ccc8-0xda6ccd0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ccc8 targets 0xda6dc08 and is always taken.

- `__glce_Color3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ccd0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ccd0-0xda6ccd8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ccd0 targets 0xda6dc08 and is always taken.

- `__glce_Color3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ccd8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ccd8-0xda6cce0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ccd8 targets 0xda6dc08 and is always taken.

- `__glce_Color3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cce0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cce0-0xda6cce8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cce0 targets 0xda6dc08 and is always taken.

- `__glce_Color3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cce8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cce8-0xda6ccf0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cce8 targets 0xda6dc08 and is always taken.

- `__glce_Color3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ccf0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ccf0-0xda6ccf8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ccf0 targets 0xda6dc08 and is always taken.

- `__glce_Color3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ccf8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ccf8-0xda6cd00 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ccf8 targets 0xda6dc08 and is always taken.

- `__glce_Color3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd00-0xda6cd08 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd00 targets 0xda6dc08 and is always taken.

- `__glce_Color3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd08 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd08-0xda6cd10 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd08 targets 0xda6dc08 and is always taken.

- `__glce_Color3ub` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd10-0xda6cd18 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd10 targets 0xda6dc08 and is always taken.

- `__glce_Color3ubv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd18-0xda6cd20 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd18 targets 0xda6dc08 and is always taken.

- `__glce_Color3ui` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd20-0xda6cd28 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd20 targets 0xda6dc08 and is always taken.

- `__glce_Color3uiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd28-0xda6cd30 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd28 targets 0xda6dc08 and is always taken.

- `__glce_Color3us` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd30 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd30-0xda6cd38 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd30 targets 0xda6dc08 and is always taken.

- `__glce_Color3usv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd38-0xda6cd40 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd38 targets 0xda6dc08 and is always taken.

- `__glce_Color4b` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd40-0xda6cd48 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd40 targets 0xda6dc08 and is always taken.

- `__glce_Color4bv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd48-0xda6cd50 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd48 targets 0xda6dc08 and is always taken.

- `__glce_Color4d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd50-0xda6cd58 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd50 targets 0xda6dc08 and is always taken.

- `__glce_Color4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd58-0xda6cd60 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd58 targets 0xda6dc08 and is always taken.

- `__glce_Color4f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd60-0xda6cd68 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd60 targets 0xda6dc08 and is always taken.

- `__glce_Color4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd68-0xda6cd70 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd68 targets 0xda6dc08 and is always taken.

- `__glce_Color4i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd70-0xda6cd78 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd70 targets 0xda6dc08 and is always taken.

- `__glce_Color4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd78-0xda6cd80 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd78 targets 0xda6dc08 and is always taken.

- `__glce_Color4s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd80-0xda6cd88 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd80 targets 0xda6dc08 and is always taken.

- `__glce_Color4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd88-0xda6cd90 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd88 targets 0xda6dc08 and is always taken.

- `__glce_Color4ub` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd90-0xda6cd98 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd90 targets 0xda6dc08 and is always taken.

- `__glce_Color4ubv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cd98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cd98-0xda6cda0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cd98 targets 0xda6dc08 and is always taken.

- `__glce_Color4ui` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cda0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cda0-0xda6cda8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cda0 targets 0xda6dc08 and is always taken.

- `__glce_Color4uiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cda8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cda8-0xda6cdb0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cda8 targets 0xda6dc08 and is always taken.

- `__glce_Color4us` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cdb0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cdb0-0xda6cdb8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cdb0 targets 0xda6dc08 and is always taken.

- `__glce_Color4usv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cdb8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cdb8-0xda6cdc0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cdb8 targets 0xda6dc08 and is always taken.

- `__glce_EdgeFlag` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cdc0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cdc0-0xda6cdc8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cdc0 targets 0xda6dc08 and is always taken.

- `__glce_EdgeFlagv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cdc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cdc8-0xda6cdd0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cdc8 targets 0xda6dc08 and is always taken.

- `__glce_End` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cdd0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cdd0-0xda6cdd8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cdd0 targets 0xda6dc08 and is always taken.

- `__glce_Indexd` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cdd8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cdd8-0xda6cde0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cdd8 targets 0xda6dc08 and is always taken.

- `__glce_Indexdv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cde0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cde0-0xda6cde8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cde0 targets 0xda6dc08 and is always taken.

- `__glce_Indexf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cde8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cde8-0xda6cdf0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cde8 targets 0xda6dc08 and is always taken.

- `__glce_Indexfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cdf0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cdf0-0xda6cdf8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cdf0 targets 0xda6dc08 and is always taken.

- `__glce_Indexi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cdf8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cdf8-0xda6ce00 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cdf8 targets 0xda6dc08 and is always taken.

- `__glce_Indexiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce00-0xda6ce08 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce00 targets 0xda6dc08 and is always taken.

- `__glce_Indexs` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce08 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce08-0xda6ce10 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce08 targets 0xda6dc08 and is always taken.

- `__glce_Indexsv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce10-0xda6ce18 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce10 targets 0xda6dc08 and is always taken.

- `__glce_Normal3b` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce18-0xda6ce20 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce18 targets 0xda6dc08 and is always taken.

- `__glce_Normal3bv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce20-0xda6ce28 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce20 targets 0xda6dc08 and is always taken.

- `__glce_Normal3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce28-0xda6ce30 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce28 targets 0xda6dc08 and is always taken.

- `__glce_Normal3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce30 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce30-0xda6ce38 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce30 targets 0xda6dc08 and is always taken.

- `__glce_Normal3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce38-0xda6ce40 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce38 targets 0xda6dc08 and is always taken.

- `__glce_Normal3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce40-0xda6ce48 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce40 targets 0xda6dc08 and is always taken.

- `__glce_Normal3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce48-0xda6ce50 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce48 targets 0xda6dc08 and is always taken.

- `__glce_Normal3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce50-0xda6ce58 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce50 targets 0xda6dc08 and is always taken.

- `__glce_Normal3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce58-0xda6ce60 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce58 targets 0xda6dc08 and is always taken.

- `__glce_Normal3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce60-0xda6ce68 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce60 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce68-0xda6ce70 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce68 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce70-0xda6ce78 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce70 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce78-0xda6ce80 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce78 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce80-0xda6ce88 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce80 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos2i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce88-0xda6ce90 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce88 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos2iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce90-0xda6ce98 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce90 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos2s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ce98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ce98-0xda6cea0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ce98 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos2sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cea0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cea0-0xda6cea8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cea0 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cea8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cea8-0xda6ceb0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cea8 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ceb0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ceb0-0xda6ceb8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ceb0 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ceb8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ceb8-0xda6cec0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ceb8 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cec0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cec0-0xda6cec8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cec0 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cec8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cec8-0xda6ced0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cec8 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ced0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ced0-0xda6ced8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ced0 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6ced8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6ced8-0xda6cee0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6ced8 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cee0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cee0-0xda6cee8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cee0 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cef0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cef0-0xda6cef8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cef0 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf00-0xda6cf08 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf00 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf10-0xda6cf18 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf10 targets 0xda6dc08 and is always taken.

- `__glce_RasterPos4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf20-0xda6cf28 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf20 targets 0xda6dc08 and is always taken.

- `__glce_Rectd` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf28-0xda6cf30 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf28 targets 0xda6dc08 and is always taken.

- `__glce_Rectdv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf30 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf30-0xda6cf38 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf30 targets 0xda6dc08 and is always taken.

- `__glce_Rectf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf38-0xda6cf40 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf38 targets 0xda6dc08 and is always taken.

- `__glce_Rectfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf40-0xda6cf48 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf40 targets 0xda6dc08 and is always taken.

- `__glce_Recti` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf48-0xda6cf50 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf48 targets 0xda6dc08 and is always taken.

- `__glce_Rectiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf50-0xda6cf58 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf50 targets 0xda6dc08 and is always taken.

- `__glce_Rects` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf58-0xda6cf60 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf58 targets 0xda6dc08 and is always taken.

- `__glce_Rectsv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf60-0xda6cf68 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf60 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord1d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf68-0xda6cf70 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf68 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord1dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf70-0xda6cf78 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf70 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord1f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf78-0xda6cf80 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf78 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord1fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf80-0xda6cf88 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf80 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord1i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf88-0xda6cf90 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf88 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord1iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf90-0xda6cf98 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf90 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord1s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cf98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cf98-0xda6cfa0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cf98 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord1sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cfa0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cfa0-0xda6cfa8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cfa0 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cfa8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cfa8-0xda6cfb0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cfa8 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cfb0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cfb0-0xda6cfb8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cfb0 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cfb8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cfb8-0xda6cfc0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cfb8 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cfc0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cfc0-0xda6cfc8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cfc0 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord2i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cfc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cfc8-0xda6cfd0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cfc8 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord2iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cfd0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cfd0-0xda6cfd8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cfd0 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord2s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cfd8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cfd8-0xda6cfe0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cfd8 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord2sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cfe0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cfe0-0xda6cfe8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cfe0 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cfe8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cfe8-0xda6cff0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cfe8 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cff0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cff0-0xda6cff8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cff0 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6cff8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6cff8-0xda6d000 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6cff8 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d000 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d000-0xda6d008 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d000 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d008 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d008-0xda6d010 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d008 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d010 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d010-0xda6d018 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d010 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d018 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d018-0xda6d020 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d018 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d020 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d020-0xda6d028 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d020 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord4d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d028 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d028-0xda6d030 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d028 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d030 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d030-0xda6d038 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d030 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord4f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d038 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d038-0xda6d040 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d038 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d040 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d040-0xda6d048 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d040 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord4i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d048 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d048-0xda6d050 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d048 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d050 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d050-0xda6d058 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d050 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord4s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d058 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d058-0xda6d060 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d058 targets 0xda6dc08 and is always taken.

- `__glce_TexCoord4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d060 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d060-0xda6d068 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d060 targets 0xda6dc08 and is always taken.

- `__glce_Vertex2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d068 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d068-0xda6d070 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d068 targets 0xda6dc08 and is always taken.

- `__glce_Vertex2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d070 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d070-0xda6d078 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d070 targets 0xda6dc08 and is always taken.

- `__glce_Vertex2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d078 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d078-0xda6d080 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d078 targets 0xda6dc08 and is always taken.

- `__glce_Vertex2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d080 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d080-0xda6d088 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d080 targets 0xda6dc08 and is always taken.

- `__glce_Vertex2i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d088 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d088-0xda6d090 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d088 targets 0xda6dc08 and is always taken.

- `__glce_Vertex2iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d090 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d090-0xda6d098 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d090 targets 0xda6dc08 and is always taken.

- `__glce_Vertex2s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d098 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d098-0xda6d0a0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d098 targets 0xda6dc08 and is always taken.

- `__glce_Vertex2sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d0a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d0a0-0xda6d0a8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d0a0 targets 0xda6dc08 and is always taken.

- `__glce_Vertex3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d0a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d0a8-0xda6d0b0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d0a8 targets 0xda6dc08 and is always taken.

- `__glce_Vertex3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d0b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d0b0-0xda6d0b8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d0b0 targets 0xda6dc08 and is always taken.

- `__glce_Vertex3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d0b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d0b8-0xda6d0c0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d0b8 targets 0xda6dc08 and is always taken.

- `__glce_Vertex3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d0c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d0c0-0xda6d0c8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d0c0 targets 0xda6dc08 and is always taken.

- `__glce_Vertex3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d0c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d0c8-0xda6d0d0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d0c8 targets 0xda6dc08 and is always taken.

- `__glce_Vertex3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d0d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d0d0-0xda6d0d8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d0d0 targets 0xda6dc08 and is always taken.

- `__glce_Vertex3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d0d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d0d8-0xda6d0e0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d0d8 targets 0xda6dc08 and is always taken.

- `__glce_Vertex3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d0e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d0e0-0xda6d0e8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d0e0 targets 0xda6dc08 and is always taken.

- `__glce_Vertex4d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d0e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d0e8-0xda6d0f0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d0e8 targets 0xda6dc08 and is always taken.

- `__glce_Vertex4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d0f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d0f0-0xda6d0f8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d0f0 targets 0xda6dc08 and is always taken.

- `__glce_Vertex4f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d0f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d0f8-0xda6d100 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d0f8 targets 0xda6dc08 and is always taken.

- `__glce_Vertex4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d100 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d100-0xda6d108 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d100 targets 0xda6dc08 and is always taken.

- `__glce_Vertex4i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d108 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d108-0xda6d110 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d108 targets 0xda6dc08 and is always taken.

- `__glce_Vertex4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d110 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d110-0xda6d118 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d110 targets 0xda6dc08 and is always taken.

- `__glce_Vertex4s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d118 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d118-0xda6d120 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d118 targets 0xda6dc08 and is always taken.

- `__glce_Vertex4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d120 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d120-0xda6d128 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d120 targets 0xda6dc08 and is always taken.

- `__glce_ClipPlane` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d128 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d128-0xda6d130 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d128 targets 0xda6dc08 and is always taken.

- `__glce_ColorMaterial` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d130 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d130-0xda6d138 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d130 targets 0xda6dc08 and is always taken.

- `__glce_CullFace` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d138 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d138-0xda6d140 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d138 targets 0xda6dc08 and is always taken.

- `__glce_Fogf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d140 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d140-0xda6d148 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d140 targets 0xda6dc08 and is always taken.

- `__glce_Fogfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d148 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d148-0xda6d150 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d148 targets 0xda6dc08 and is always taken.

- `__glce_Fogi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d150 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d150-0xda6d158 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d150 targets 0xda6dc08 and is always taken.

- `__glce_Fogiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d158 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d158-0xda6d160 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d158 targets 0xda6dc08 and is always taken.

- `__glce_FrontFace` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d160 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d160-0xda6d168 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d160 targets 0xda6dc08 and is always taken.

- `__glce_Hint` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d168 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d168-0xda6d170 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d168 targets 0xda6dc08 and is always taken.

- `__glce_Lightf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d170 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d170-0xda6d178 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d170 targets 0xda6dc08 and is always taken.

- `__glce_Lightfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d178 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d178-0xda6d180 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d178 targets 0xda6dc08 and is always taken.

- `__glce_Lighti` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d180 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d180-0xda6d188 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d180 targets 0xda6dc08 and is always taken.

- `__glce_Lightiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d188 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d188-0xda6d190 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d188 targets 0xda6dc08 and is always taken.

- `__glce_LightModelf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d190 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d190-0xda6d198 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d190 targets 0xda6dc08 and is always taken.

- `__glce_LightModelfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d198 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d198-0xda6d1a0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d198 targets 0xda6dc08 and is always taken.

- `__glce_LightModeli` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d1a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d1a0-0xda6d1a8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d1a0 targets 0xda6dc08 and is always taken.

- `__glce_LightModeliv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d1a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d1a8-0xda6d1b0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d1a8 targets 0xda6dc08 and is always taken.

- `__glce_LineStipple` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d1b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d1b0-0xda6d1b8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d1b0 targets 0xda6dc08 and is always taken.

- `__glce_LineWidth` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d1b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d1b8-0xda6d1c0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d1b8 targets 0xda6dc08 and is always taken.

- `__glce_Materialf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d1c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d1c0-0xda6d1c8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d1c0 targets 0xda6dc08 and is always taken.

- `__glce_Materialfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d1c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d1c8-0xda6d1d0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d1c8 targets 0xda6dc08 and is always taken.

- `__glce_Materiali` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d1d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d1d0-0xda6d1d8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d1d0 targets 0xda6dc08 and is always taken.

- `__glce_Materialiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d1d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d1d8-0xda6d1e0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d1d8 targets 0xda6dc08 and is always taken.

- `__glce_PointSize` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d1e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d1e0-0xda6d1e8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d1e0 targets 0xda6dc08 and is always taken.

- `__glce_PolygonMode` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d1e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d1e8-0xda6d1f0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d1e8 targets 0xda6dc08 and is always taken.

- `__glce_PolygonStipple` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d1f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d1f0-0xda6d1f8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d1f0 targets 0xda6dc08 and is always taken.

- `__glce_Scissor` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d1f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d1f8-0xda6d200 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d1f8 targets 0xda6dc08 and is always taken.

- `__glce_ShadeModel` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d200 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d200-0xda6d208 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d200 targets 0xda6dc08 and is always taken.

- `__glce_TexParameterf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d208 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d208-0xda6d210 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d208 targets 0xda6dc08 and is always taken.

- `__glce_TexParameterfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d210 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d210-0xda6d218 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d210 targets 0xda6dc08 and is always taken.

- `__glce_TexParameteri` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d218 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d218-0xda6d220 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d218 targets 0xda6dc08 and is always taken.

- `__glce_TexParameteriv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d220 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d220-0xda6d228 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d220 targets 0xda6dc08 and is always taken.

- `__glce_TexEnvf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d238 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d238-0xda6d240 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d238 targets 0xda6dc08 and is always taken.

- `__glce_TexEnvfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d240 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d240-0xda6d248 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d240 targets 0xda6dc08 and is always taken.

- `__glce_TexEnvi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d248 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d248-0xda6d250 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d248 targets 0xda6dc08 and is always taken.

- `__glce_TexEnviv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d250 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d250-0xda6d258 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d250 targets 0xda6dc08 and is always taken.

- `__glce_TexGend` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d258 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d258-0xda6d260 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d258 targets 0xda6dc08 and is always taken.

- `__glce_TexGendv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d260 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d260-0xda6d268 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d260 targets 0xda6dc08 and is always taken.

- `__glce_TexGenf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d268 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d268-0xda6d270 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d268 targets 0xda6dc08 and is always taken.

- `__glce_TexGenfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d270 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d270-0xda6d278 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d270 targets 0xda6dc08 and is always taken.

- `__glce_TexGeni` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d278 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d278-0xda6d280 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d278 targets 0xda6dc08 and is always taken.

- `__glce_TexGeniv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d280 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d280-0xda6d288 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d280 targets 0xda6dc08 and is always taken.

- `__glce_FeedbackBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d288 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d288-0xda6d290 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d288 targets 0xda6db08 and is always taken.

- `__glce_SelectBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d290 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d290-0xda6d298 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d290 targets 0xda6db08 and is always taken.

- `__glce_RenderMode` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d298 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d298-0xda6d2a0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d298 targets 0xda6db08 and is always taken.

- `__glce_InitNames` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d2a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d2a0-0xda6d2a8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d2a0 targets 0xda6dc08 and is always taken.

- `__glce_LoadName` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d2a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d2a8-0xda6d2b0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d2a8 targets 0xda6dc08 and is always taken.

- `__glce_PassThrough` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d2b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d2b0-0xda6d2b8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d2b0 targets 0xda6dc08 and is always taken.

- `__glce_PopName` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d2b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d2b8-0xda6d2c0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d2b8 targets 0xda6dc08 and is always taken.

- `__glce_PushName` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d2c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d2c0-0xda6d2c8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d2c0 targets 0xda6dc08 and is always taken.

- `__glce_DrawBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d2c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d2c8-0xda6d2d0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d2c8 targets 0xda6dc08 and is always taken.

- `__glce_Clear` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d2d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d2d0-0xda6d2d8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d2d0 targets 0xda6dc08 and is always taken.

- `__glce_ClearAccum` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d2d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d2d8-0xda6d2e0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d2d8 targets 0xda6dc08 and is always taken.

- `__glce_ClearIndex` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d2e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d2e0-0xda6d2e8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d2e0 targets 0xda6dc08 and is always taken.

- `__glce_ClearColor` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d2e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d2e8-0xda6d2f0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d2e8 targets 0xda6dc08 and is always taken.

- `__glce_ClearStencil` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d2f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d2f0-0xda6d2f8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d2f0 targets 0xda6dc08 and is always taken.

- `__glce_ClearDepth` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d2f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d2f8-0xda6d300 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d2f8 targets 0xda6dc08 and is always taken.

- `__glce_StencilMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d300 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d300-0xda6d308 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d300 targets 0xda6dc08 and is always taken.

- `__glce_ColorMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d308 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d308-0xda6d310 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d308 targets 0xda6dc08 and is always taken.

- `__glce_DepthMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d310 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d310-0xda6d318 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d310 targets 0xda6dc08 and is always taken.

- `__glce_IndexMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d318 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d318-0xda6d320 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d318 targets 0xda6dc08 and is always taken.

- `__glce_Accum` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d320 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d320-0xda6d328 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d320 targets 0xda6dc08 and is always taken.

- `__glce_Disable` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d328 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d328-0xda6d330 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d328 targets 0xda6dc08 and is always taken.

- `__glce_Enable` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d330 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d330-0xda6d338 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d330 targets 0xda6dc08 and is always taken.

- `__glce_Finish` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d338 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d338-0xda6d340 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d338 targets 0xda6db08 and is always taken.

- `__glce_PopAttrib` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d348 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d348-0xda6d350 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d348 targets 0xda6dc08 and is always taken.

- `__glce_PushAttrib` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d350 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d350-0xda6d358 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d350 targets 0xda6dc08 and is always taken.

- `__glce_Map1d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d358 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d358-0xda6d360 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d358 targets 0xda6dc08 and is always taken.

- `__glce_Map1f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d360 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d360-0xda6d368 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d360 targets 0xda6dc08 and is always taken.

- `__glce_Map2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d368 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d368-0xda6d370 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d368 targets 0xda6dc08 and is always taken.

- `__glce_Map2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d370 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d370-0xda6d378 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d370 targets 0xda6dc08 and is always taken.

- `__glce_MapGrid1d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d378 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d378-0xda6d380 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d378 targets 0xda6dc08 and is always taken.

- `__glce_MapGrid1f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d380 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d380-0xda6d388 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d380 targets 0xda6dc08 and is always taken.

- `__glce_MapGrid2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d388 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d388-0xda6d390 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d388 targets 0xda6dc08 and is always taken.

- `__glce_MapGrid2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d390 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d390-0xda6d398 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d390 targets 0xda6dc08 and is always taken.

- `__glce_EvalCoord1d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d398 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d398-0xda6d3a0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d398 targets 0xda6dc08 and is always taken.

- `__glce_EvalCoord1dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d3a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d3a0-0xda6d3a8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d3a0 targets 0xda6dc08 and is always taken.

- `__glce_EvalCoord1f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d3a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d3a8-0xda6d3b0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d3a8 targets 0xda6dc08 and is always taken.

- `__glce_EvalCoord1fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d3b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d3b0-0xda6d3b8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d3b0 targets 0xda6dc08 and is always taken.

- `__glce_EvalCoord2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d3b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d3b8-0xda6d3c0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d3b8 targets 0xda6dc08 and is always taken.

- `__glce_EvalCoord2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d3c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d3c0-0xda6d3c8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d3c0 targets 0xda6dc08 and is always taken.

- `__glce_EvalCoord2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d3c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d3c8-0xda6d3d0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d3c8 targets 0xda6dc08 and is always taken.

- `__glce_EvalCoord2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d3d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d3d0-0xda6d3d8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d3d0 targets 0xda6dc08 and is always taken.

- `__glce_EvalMesh1` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d3d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d3d8-0xda6d3e0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d3d8 targets 0xda6dc08 and is always taken.

- `__glce_EvalPoint1` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d3e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d3e0-0xda6d3e8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d3e0 targets 0xda6dc08 and is always taken.

- `__glce_EvalMesh2` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d3e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d3e8-0xda6d3f0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d3e8 targets 0xda6dc08 and is always taken.

- `__glce_EvalPoint2` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d3f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d3f0-0xda6d3f8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d3f0 targets 0xda6dc08 and is always taken.

- `__glce_AlphaFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d3f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d3f8-0xda6d400 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d3f8 targets 0xda6dc08 and is always taken.

- `__glce_BlendFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d400 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d400-0xda6d408 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d400 targets 0xda6dc08 and is always taken.

- `__glce_LogicOp` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d408 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d408-0xda6d410 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d408 targets 0xda6dc08 and is always taken.

- `__glce_StencilFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d410 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d410-0xda6d418 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d410 targets 0xda6dc08 and is always taken.

- `__glce_StencilOp` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d418 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d418-0xda6d420 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d418 targets 0xda6dc08 and is always taken.

- `__glce_DepthFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d420 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d420-0xda6d428 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d420 targets 0xda6dc08 and is always taken.

- `__glce_PixelZoom` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d428 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d428-0xda6d430 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d428 targets 0xda6dc08 and is always taken.

- `__glce_PixelTransferf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d430 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d430-0xda6d438 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d430 targets 0xda6dc08 and is always taken.

- `__glce_PixelTransferi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d438 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d438-0xda6d440 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d438 targets 0xda6dc08 and is always taken.

- `__glce_PixelStoref` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d440 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d440-0xda6d448 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d440 targets 0xda6db08 and is always taken.

- `__glce_PixelStorei` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d448 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d448-0xda6d450 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d448 targets 0xda6db08 and is always taken.

- `__glce_PixelMapfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d450 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d450-0xda6d458 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d450 targets 0xda6dc08 and is always taken.

- `__glce_PixelMapuiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d458 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d458-0xda6d460 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d458 targets 0xda6dc08 and is always taken.

- `__glce_PixelMapusv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d460 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d460-0xda6d468 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d460 targets 0xda6dc08 and is always taken.

- `__glce_ReadBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d468 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d468-0xda6d470 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d468 targets 0xda6dc08 and is always taken.

- `__glce_CopyPixels` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d470 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d470-0xda6d478 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d470 targets 0xda6dc08 and is always taken.

- `__glce_ReadPixels` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d478 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d478-0xda6d480 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d478 targets 0xda6db08 and is always taken.

- `__glce_DrawPixels` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d480 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d480-0xda6d488 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d480 targets 0xda6dc08 and is always taken.

- `__glce_GetBooleanv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d488 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d488-0xda6d490 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d488 targets 0xda6db08 and is always taken.

- `__glce_GetClipPlane` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d490 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d490-0xda6d498 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d490 targets 0xda6db08 and is always taken.

- `__glce_GetDoublev` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d498 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d498-0xda6d4a0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d498 targets 0xda6db08 and is always taken.

- `__glce_GetError` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d4a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d4a0-0xda6d4a8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d4a0 targets 0xda6db08 and is always taken.

- `__glce_GetFloatv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d4a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d4a8-0xda6d4b0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d4a8 targets 0xda6db08 and is always taken.

- `__glce_GetIntegerv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d4b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d4b0-0xda6d4b8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d4b0 targets 0xda6db08 and is always taken.

- `__glce_GetLightfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d4b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d4b8-0xda6d4c0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d4b8 targets 0xda6db08 and is always taken.

- `__glce_GetLightiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d4c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d4c0-0xda6d4c8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d4c0 targets 0xda6db08 and is always taken.

- `__glce_GetMapdv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d4c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d4c8-0xda6d4d0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d4c8 targets 0xda6db08 and is always taken.

- `__glce_GetMapfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d4d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d4d0-0xda6d4d8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d4d0 targets 0xda6db08 and is always taken.

- `__glce_GetMapiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d4d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d4d8-0xda6d4e0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d4d8 targets 0xda6db08 and is always taken.

- `__glce_GetMaterialfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d4e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d4e0-0xda6d4e8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d4e0 targets 0xda6db08 and is always taken.

- `__glce_GetMaterialiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d4e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d4e8-0xda6d4f0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d4e8 targets 0xda6db08 and is always taken.

- `__glce_GetPixelMapfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d4f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d4f0-0xda6d4f8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d4f0 targets 0xda6db08 and is always taken.

- `__glce_GetPixelMapuiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d4f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d4f8-0xda6d500 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d4f8 targets 0xda6db08 and is always taken.

- `__glce_GetPixelMapusv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d500 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d500-0xda6d508 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d500 targets 0xda6db08 and is always taken.

- `__glce_GetPolygonStipple` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d508 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d508-0xda6d510 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d508 targets 0xda6db08 and is always taken.

- `__glce_GetString` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d510 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d510-0xda6d518 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d510 targets 0xda6db08 and is always taken.

- `__glce_GetTexEnvfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d518 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d518-0xda6d520 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d518 targets 0xda6db08 and is always taken.

- `__glce_GetTexEnviv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d520 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d520-0xda6d528 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d520 targets 0xda6db08 and is always taken.

- `__glce_GetTexGendv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d528 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d528-0xda6d530 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d528 targets 0xda6db08 and is always taken.

- `__glce_GetTexGenfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d530 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d530-0xda6d538 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d530 targets 0xda6db08 and is always taken.

- `__glce_GetTexGeniv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d538 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d538-0xda6d540 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d538 targets 0xda6db08 and is always taken.

- `__glce_GetTexImage` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d540 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d540-0xda6d548 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d540 targets 0xda6db08 and is always taken.

- `__glce_GetTexParameterfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d548 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d548-0xda6d550 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d548 targets 0xda6db08 and is always taken.

- `__glce_GetTexParameteriv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d550 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d550-0xda6d558 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d550 targets 0xda6db08 and is always taken.

- `__glce_GetTexLevelParameterfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d558 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d558-0xda6d560 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d558 targets 0xda6db08 and is always taken.

- `__glce_GetTexLevelParameteriv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d560 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d560-0xda6d568 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d560 targets 0xda6db08 and is always taken.

- `__glce_IsEnabled` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d568 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d568-0xda6d570 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d568 targets 0xda6db08 and is always taken.

- `__glce_IsList` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d570 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d570-0xda6d578 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d570 targets 0xda6db08 and is always taken.

- `__glce_DepthRange` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d578 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d578-0xda6d580 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d578 targets 0xda6dc08 and is always taken.

- `__glce_Frustum` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d580 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d580-0xda6d588 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d580 targets 0xda6dc08 and is always taken.

- `__glce_LoadIdentity` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d588 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d588-0xda6d590 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d588 targets 0xda6dc08 and is always taken.

- `__glce_MatrixMode` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d5a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d5a0-0xda6d5a8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d5a0 targets 0xda6dc08 and is always taken.

- `__glce_MultMatrixf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d5a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d5a8-0xda6d5b0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d5a8 targets 0xda6dc08 and is always taken.

- `__glce_MultMatrixd` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d5b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d5b0-0xda6d5b8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d5b0 targets 0xda6dc08 and is always taken.

- `__glce_Ortho` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d5b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d5b8-0xda6d5c0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d5b8 targets 0xda6dc08 and is always taken.

- `__glce_PopMatrix` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d5c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d5c0-0xda6d5c8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d5c0 targets 0xda6dc08 and is always taken.

- `__glce_PushMatrix` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d5c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d5c8-0xda6d5d0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d5c8 targets 0xda6dc08 and is always taken.

- `__glce_Rotated` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d5d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d5d0-0xda6d5d8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d5d0 targets 0xda6dc08 and is always taken.

- `__glce_Rotatef` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d5d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d5d8-0xda6d5e0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d5d8 targets 0xda6dc08 and is always taken.

- `__glce_Scaled` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d5e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d5e0-0xda6d5e8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d5e0 targets 0xda6dc08 and is always taken.

- `__glce_Scalef` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d5e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d5e8-0xda6d5f0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d5e8 targets 0xda6dc08 and is always taken.

- `__glce_Translated` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d5f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d5f0-0xda6d5f8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d5f0 targets 0xda6dc08 and is always taken.

- `__glce_Translatef` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d5f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d5f8-0xda6d600 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d5f8 targets 0xda6dc08 and is always taken.

- `__glce_Viewport` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d600 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d600-0xda6d608 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d600 targets 0xda6dc08 and is always taken.

- `__glce_BlendColorEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d608 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d608-0xda6d610 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d608 targets 0xda6dc08 and is always taken.

- `__glce_BlendEquationEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d610 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d610-0xda6d618 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d610 targets 0xda6dc08 and is always taken.

- `__glce_PolygonOffsetEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d618 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d618-0xda6d620 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d618 targets 0xda6dc08 and is always taken.

- `__glce_TexSubImage1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d620 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d620-0xda6d628 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d620 targets 0xda6dc08 and is always taken.

Skipped 3 routines among the first 500 targets: all 3 had missing inventory sizes, so the renderer rejected the empty --size argument.
