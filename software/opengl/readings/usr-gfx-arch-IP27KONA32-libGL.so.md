# Readings: `usr/gfx/arch/IP27KONA32/libGL.so`

One entry per routine, filed here from the reading batches by binary.

- `__glXGetPipeAddress` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd80e4dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd80e4dc-0xd80e4e4 (8 bytes).
  It occupies 8 bytes.
  The return at 0xd80e4dc has v0 = 0x4000.

- `__glXBindHWContextToWindow` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd80e93c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd80e93c-0xd80ebf0 (692 bytes).
  It occupies 692 bytes.
  The `lw` at 0xd80e968 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd80e96c, `lw` at 0xd80eb58.
  3 such `lw` accesses load 4 bytes from [a0+76] +0xcc, including `lw` at 0xd80e970, `lw` at 0xd80eb5c, `lw` at 0xd80eb6c.
  The `lw` at 0xd80e974 loads 4 bytes from [0x1014] +0x0.
  6 such `lw` accesses load 4 bytes from [a0+76] +0xe0, including `lw` at 0xd80e980, `lw` at 0xd80ea64, `lw` at 0xd80ead8.
  The `lw` at 0xd80e984 loads 4 bytes from [a0+76] +0xf0.
  6 such `lw` accesses load 4 bytes from [a0+76] +0xdc, including `lw` at 0xd80e988, `lw` at 0xd80ea68, `lw` at 0xd80eadc.
  4 such `sb` accesses store 1 byte to [a0+76] +0xf4, including `sb` at 0xd80e990, `sb` at 0xd80ea4c, `sb` at 0xd80eac8.
  The `lw` at 0xd80e994 loads 4 bytes from [a0+76] +0xec.
  5 such `lw` accesses load 4 bytes from [a0+76] +0xe8, including `lw` at 0xd80e9ac, `lw` at 0xd80e9e0, `lw` at 0xd80e9f8.
  The `lw` at 0xd80e9b0 loads 4 bytes from [[a0+76]+232] +0x2c.
  2 such `lw` accesses load 4 bytes from [a0+76] +0x11c, including `lw` at 0xd80e9c4, `lw` at 0xd80eb10.
  2 such `lw` accesses load 4 bytes from [a0+76] +0x120, including `lw` at 0xd80e9c8, `lw` at 0xd80eb14.
  6 such `lw` accesses load 4 bytes from [a0+76] +0xe4, including `lw` at 0xd80e9d4, `lw` at 0xd80e9ec, `lw` at 0xd80ea2c.
  2 such `lw` accesses load 4 bytes from [[a0+76]+228] +0x24, including `lw` at 0xd80e9d8, `lw` at 0xd80ea84.
  The `lw` at 0xd80e9e4 loads 4 bytes from [[a0+76]+232] +0x24.
  4 such `lw` accesses load 4 bytes from [[a0+76]+228] +0x4, including `lw` at 0xd80e9f0, `lw` at 0xd80ea30, `lw` at 0xd80ea90.
  2 such `lw` accesses load 4 bytes from [[a0+76]+232] +0x4, including `lw` at 0xd80e9fc, `lw` at 0xd80ea40.
  3 such `lw` accesses load 4 bytes from [a0+76] +0x24, including `lw` at 0xd80ea10, `lw` at 0xd80eaa4, `lw` at 0xd80eb4c.
  2 such `sw` accesses store 4 bytes to [[a0+76]+228] +0x4, including `sw` at 0xd80ea54, `sw` at 0xd80ead0.
  The `sw` at 0xd80ea60 stores 4 bytes to [[a0+76]+232] +0x4.
  2 such `sw` accesses store 4 bytes to [a0+76] +0xec, including `sw` at 0xd80ea6c, `sw` at 0xd80eae4.
  2 such `sw` accesses store 4 bytes to [a0+76] +0xf0, including `sw` at 0xd80ea70, `sw` at 0xd80eae8.
  The `sw` at 0xd80eb60 stores 4 bytes to [0x1014] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0xd80eb98, `lw` at 0xd80ebb8, `lw` at 0xd80ebd8.
  The `jalr` at 0xd80e964 calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd80ea0c calls (unnamed) [0xd80e4c4] with a0=[[a0+76]+36], a1=0x400, a2=sp-56, a3=[[a0+76]+224], a4=[[a0+76]+204].
  The `bgezall` at 0xd80eaa0 calls (unnamed) [0xd80e4c4] with a0=[[a0+76]+36], a1=0x3eb, a2=sp-72, a3=[[a0+76]+224], a4=[[a0+76]+204].
  The `bgezall` at 0xd80eb48 calls (unnamed) [0xd80e4c4] with a0=[[a0+76]+36], a1=0x3ea, a2=sp-80, a3=?, a4=[[a0+76]+204].
  The `jalr` at 0xd80eba0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8428c0, a2=?, a3=?.
  The `jalr` at 0xd80ebc0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8428f8, a2=0x1, a3=?.
  The `jalr` at 0xd80ebe0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8428d8, a2=-0x1, a3=?.
  The `bne` branch at 0xd80e978 targets 0xd80eb38, is taken when v1(=[[0x1014]]) != a4(=[[a0+76]+204]), and falls through when v1(=[[0x1014]]) == a4(=[[a0+76]+204]).
  The `bne` branch at 0xd80e98c targets 0xd80e9a0, is taken when a0(=[[a0+76]+240]) != a3(=[[a0+76]+224]), and falls through when a0(=[[a0+76]+240]) == a3(=[[a0+76]+224]).
  The `beq` branch at 0xd80e998 targets 0xd80eafc, is taken when a1(=[[a0+76]+236]) == a2(=[[a0+76]+220]), and falls through when a1(=[[a0+76]+236]) != a2(=[[a0+76]+220]).
  The `beq` branch at 0xd80e9a4 targets 0xd80eb0c, is taken when a3(=[[a0+76]+224]) == a2(=[[a0+76]+220]), and falls through when a3(=[[a0+76]+224]) != a2(=[[a0+76]+220]).
  The `beq` branch at 0xd80e9b8 targets 0xd80eb0c, is taken when ra(=[[[a0+76]+232]+44]) == at(=0x3), and falls through when ra(=[[[a0+76]+232]+44]) != at(=0x3).
  The `beq` branch at 0xd80e9cc targets 0xd80eb78, is taken when at(=[[a0+76]+284]) == a2(=0x1), and falls through when at(=[[a0+76]+284]) != a2(=0x1).
  The `beq` branch at 0xd80ea24 targets 0xd80ebd0, is taken when v0(=ret(0xd80e4c4)) == a2(=-0x1), and falls through when v0(=ret(0xd80e4c4)) != a2(=-0x1).
  The `bne` branch at 0xd80ea38 targets 0xd80ea4c, is taken when a3(=[[[a0+76]+228]+4]) != a4(?), and falls through when a3(=[[[a0+76]+228]+4]) == a4(?).
  The `beq` branch at 0xd80ea44 targets 0xd80ea64, is taken when a5(=[[[a0+76]+232]+4]) == a6(?), and falls through when a5(=[[[a0+76]+232]+4]) != a6(?).
  The `beq` branch at 0xd80eaac targets 0xd80ebb0, is taken when v0(=ret(0xd80e4c4)) == at(=-0x1), and falls through when v0(=ret(0xd80e4c4)) != at(=-0x1).
  The `beq` branch at 0xd80eac0 targets 0xd80ead8, is taken when v0(=[[[a0+76]+228]+4]) == v1(?), and falls through when v0(=[[[a0+76]+228]+4]) != v1(?).
  The `beq` branch at 0xd80eb1c targets 0xd80ea80, is taken when a5(=[[a0+76]+284]) >= 0x2 (signed), and falls through when a5(=[[a0+76]+284]) < 0x2 (signed).
  The `beq` branch at 0xd80eb24 targets 0xd80ea80, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xd80eb30 targets 0xd80ea8c and is always taken.
  The `bltz` branch at 0xd80eb50 targets 0xd80eb94, is taken when v0(=ret(0xd80e4c4)) < 0 (signed), and falls through when v0(=ret(0xd80e4c4)) >= 0 (signed).
  The `beq` branch at 0xd80eb70 targets 0xd80e9a0 and is always taken.
  The `beq` branch at 0xd80eb78 targets 0xd80e9d4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd80eb8c targets 0xd80e9ec and is always taken.
  The `beq` branch at 0xd80eba8 targets 0xd80eb68 and is always taken.
  The `beq` branch at 0xd80ebc8 targets 0xd80eafc and is always taken.
  The `beq` branch at 0xd80ebe8 targets 0xd80eafc and is always taken.
  The return at 0xd80ea78 has v0 = ret(0xd80e4c4).
  The return at 0xd80eaf0 has v0 = [[[a0+76]+228]+4].
  The return at 0xd80eb04 has v0 = one of ret(__glXHWAttach), ret(?).
  The instructions from 0xd80eaf8 to 0xd80eaf8 are not reached by any path from the entry, and their branches are not listed.

- `__glx_LoadMatrixd` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd819b38 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd819b38-0xd819bc8 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd819b48 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819b58 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819b60 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd819b78 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd819b84 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd819b88 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd819b98 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd819b80 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x80, a3=a3 at entry (arg3).
  The `jalr` at 0xd819bb8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+132, a2=?, a3=?.
  The `bne` branch at 0xd819b94 targets 0xd819bb4, is taken when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+132) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+132) (unsigned).
  The `beq` branch at 0xd819bc0 targets 0xd819ba0 and is always taken.
  The return at 0xd819bac has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_LoadMatrixf` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd819bc8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd819bc8-0xd819c58 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd819bd8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819be8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819bf0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd819c08 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd819c14 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd819c18 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd819c28 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd819c10 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x40, a3=a3 at entry (arg3).
  The `jalr` at 0xd819c48 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+68, a2=?, a3=?.
  The `bne` branch at 0xd819c24 targets 0xd819c44, is taken when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+68) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+68) (unsigned).
  The `beq` branch at 0xd819c50 targets 0xd819c30 and is always taken.
  The return at 0xd819c3c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_Flush` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd82f67c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd82f67c-0xd82f78c (272 bytes).
  It occupies 272 bytes.
  The `lw` at 0xd82f684 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82f688 loads 4 bytes from [0x1014] +0x114.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xd8, including `lw` at 0xd82f690, `lw` at 0xd82f760.
  The `lw` at 0xd82f6b8 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd82f6bc, `lw` at 0xd82f72c.
  The `lw` at 0xd82f6c8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd82f6d4, `lw` at 0xd82f700, `lw` at 0xd82f788.
  The `lw` at 0xd82f6d8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd82f6ec stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd82f6f4 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd82f6f8, `sb` at 0xd82f720.
  The `lw` at 0xd82f6fc loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd82f708 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd82f710 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd82f714 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd82f71c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd82f724 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd82f728 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd82f738 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd82f744 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd82f6b4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82f6cc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd82f73c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=[[[[0x1014]+276]+216]+108]+8, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd82f750 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f75c calls XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f77c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd82f6a0 targets 0xd82f768, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd82f6c0 targets 0xd82f6d4, is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd82f6e4 targets 0xd82f77c, is taken when t8(=[[[[0x1014]+276]+216]+112]) < t9(=[[[[0x1014]+276]+216]+108]+8) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) >= t9(=[[[[0x1014]+276]+216]+108]+8) (unsigned).
  The `beq` branch at 0xd82f730 targets 0xd82f744, is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd82f748 targets 0xd82f758, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd82f784 targets 0xd82f6ec and is always taken.
  The return at 0xd82f774 has v0 = one of ?, ret(XFlush).

- `glXCreateWindow` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83b8b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83b8b4-0xd83b9fc (328 bytes).
  It occupies 328 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83b8f4, `lw` at 0xd83b994.
  The `lw` at 0xd83b900 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83b90c, `lw` at 0xd83b948, `lw` at 0xd83b9e4.
  The `lw` at 0xd83b910 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83b930 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83b938 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83b940, `sb` at 0xd83b960.
  The `lw` at 0xd83b944 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83b950 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83b958 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sb` at 0xd83b95c stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83b964 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd83b968 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd83b96c loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd83b970 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83b974 stores 4 bytes to [a0+108] +0x8.
  The `lw` at 0xd83b978 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd83b98c stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd83b990 stores 4 bytes to [a0+108] +0x10.
  The `lw` at 0xd83b9a0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd83b9ac loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd83b8e0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83b904 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83b980 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[a1+72], a3=[a1+36], a4=0x1f, a6=[a0+96]+1, a7=[a0+108]+24.
  The `jalr` at 0xd83b9a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83b9b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83b9d8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83b8ec targets 0xd83b9e8, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd83b8f8 targets 0xd83b90c, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd83b91c targets 0xd83b9d8, is taken when v1(=[a0+112]) < a0(=[a0+108]+24) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+24) (unsigned).
  The `beq` branch at 0xd83b998 targets 0xd83b9ac, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd83b9b0 targets 0xd83b9c4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83b9e0 targets 0xd83b924 and is always taken.
  The return at 0xd83b9d0 has v0 = ret(?).
  The return at 0xd83b9f4 has v0 = 0x0.

- `glXDestroyWindow` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83b9fc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83b9fc-0xd83baf8 (252 bytes).
  It occupies 252 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83ba38, `lw` at 0xd83baa8.
  The `lw` at 0xd83ba44 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83ba50, `lw` at 0xd83ba88, `lw` at 0xd83baf4.
  The `lw` at 0xd83ba54 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83ba70 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83ba78 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83ba80, `sb` at 0xd83baa4.
  The `lw` at 0xd83ba84 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83ba90 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83ba98 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83ba9c stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83baa0 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83bab4 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd83bac0 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd83ba24 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83ba48 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232].
  The `jalr` at 0xd83bab8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x20, a3=[a0+1232], a4=[a0+96]+1, a5=[a0+108]+8, a6=0x2.
  The `jalr` at 0xd83bacc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83bae8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83ba30 targets 0xd83bad8, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd83ba3c targets 0xd83ba50, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `bne` branch at 0xd83ba60 targets 0xd83bae8, is taken when v0(=[a0+112]) < v1(=[a0+108]+8) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xd83baac targets 0xd83bac0, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `beq` branch at 0xd83bac4 targets 0xd83bad8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83baf0 targets 0xd83ba68 and is always taken.
  The return at 0xd83bae0 has v0 = one of ret(__glXSetupForCommand), ?, ret(?).

- `glXBindChannelToWindowSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83c52c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83c52c-0xd83c68c (352 bytes).
  It occupies 352 bytes.
  The `lw` at 0xd83c548 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83c568 loads 4 bytes from [0x1014] +0x114.
  The `sb` at 0xd83c604 stores 1 byte to (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x48.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd83c608, `lw` at 0xd83c60c.
  The `lw` at 0xd83c620 loads 4 bytes from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x44.
  The `sb` at 0xd83c688 stores 1 byte to (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x49.
  The `jalr` at 0xd83c570 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd83c594 calls __glXInitChannelRectState [0xd83c38c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd83c5c0 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4.
  The `jalr` at 0xd83c5d4 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd83c61c calls (unknown callee) with a0=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+68], a1=0x1, a2=?, a3=?.
  The `beq` branch at 0xd83c578 targets 0xd83c638, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd83c59c targets 0xd83c65c, is taken when v0(=ret(__glXInitChannelRectState)) == 0, and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` branch at 0xd83c600 targets 0xd83c67c, is taken when a0(=a3) == 0, and falls through when a0(=a3) != 0.
  The `beq` branch at 0xd83c614 targets 0xd83c674, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xd83c66c targets 0xd83c628 and is always taken.
  The `beq` branch at 0xd83c674 targets 0xd83c628 and is always taken.
  The `beq` branch at 0xd83c684 targets 0xd83c624 and is always taken.
  The return at 0xd83c630 has v0 = one of 0x0, 0x1.
  The return at 0xd83c654 has v0 = 0x0.

- `glXQueryHyperpipeNetworkSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83cc58 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83cc58-0xd83cecc (628 bytes).
  It occupies 628 bytes.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xd83cc8c, `sw` at 0xd83cd38, `sw` at 0xd83cd84.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83cc90, `lw` at 0xd83cd58, `lw` at 0xd83cde0.
  The `lw` at 0xd83cc9c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83cca8, `lw` at 0xd83cce0, `lw` at 0xd83ce7c.
  The `lw` at 0xd83ccac loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83ccc8 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83ccd0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83ccd8, `sb` at 0xd83cd0c.
  The `lw` at 0xd83ccdc loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83cce8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83ccf4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83ccfc stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83cd04 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83cd18 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83cd24 stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83cd64, `lw` at 0xd83cdec, `lw` at 0xd83ce34.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83cd70, `lw` at 0xd83cdf8, `lw` at 0xd83ce40.
  The `jalr` at 0xd83cc84 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83cca0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83cd20 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+132], a5=0x1000e, a6=0x11.
  The `jalr` at 0xd83cd50 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cd68 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83cd7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cdbc calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cdd8 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cdf0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83ce04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ce20 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83ce38 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83ce4c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ce70 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ce90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83cea4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83cc94 targets 0xd83cca8, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd83ccb8 targets 0xd83ce70, is taken when v1(=[a0+112]) < a0(=[a0+108]+16) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd83cd28 targets 0xd83ce80, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `blez` branch at 0xd83cd34 targets 0xd83cd48, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0xd83cd40 targets 0xd83cda4, is taken when a0(?) < 0x21 (signed), and falls through when a0(?) >= 0x21 (signed).
  The `beq` branch at 0xd83cd5c targets 0xd83cd70, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83cd74 targets 0xd83cd84, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `bne` branch at 0xd83cdc8 targets 0xd83ce18, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd83cde4 targets 0xd83cdf8, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83cdfc targets 0xd83ce0c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83ce10 targets 0xd83cd8c and is always taken.
  The `beq` branch at 0xd83ce2c targets 0xd83ce40, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83ce44 targets 0xd83ce58, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83ce78 targets 0xd83ccc0 and is always taken.
  The `beq` branch at 0xd83ce84 targets 0xd83ce98, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83ce9c targets 0xd83ceac, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd83cd9c has v0 = 0x0.
  The return at 0xd83ce68 has v0 = ?.
  The return at 0xd83cec4 has v0 = 0x0.

- `glXHyperpipeConfigSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83cecc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83cecc-0xd83d18c (704 bytes).
  It occupies 704 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83cf30, `lw` at 0xd83d07c, `lw` at 0xd83d0e8.
  The `lw` at 0xd83cf3c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83cf5c, `lw` at 0xd83cfa0, `lw` at 0xd83d140.
  The `lw` at 0xd83cf68 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83cf84 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83cf8c, `sb` at 0xd83cfd0.
  The `sh` at 0xd83cf98 stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xd83cf9c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83cfac stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83cfbc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83cfc4 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83cfcc stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83cfd4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83cfd8 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd83cfe0 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83cfec stores 4 bytes to [a0+108] +0xc.
  The `lbu` at 0xd83d000 loads 1 byte from a3 (arg3 at entry) +0x0.
  The `sb` at 0xd83d00c stores 1 byte to [a0+108] +0x20.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd83d01c, `lbu` at 0xd83d02c.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xd83d024, `sb` at 0xd83d038.
  The `sw` at 0xd83d064 stores 4 bytes to a4 (arg4 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83d088, `lw` at 0xd83d0f4, `lw` at 0xd83d150.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83d094, `lw` at 0xd83d100, `lw` at 0xd83d15c.
  The `jalr` at 0xd83cf08 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83cf40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d050 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0.
  The `jalr` at 0xd83d08c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d0a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d0f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d10c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d134 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d154 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d168 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0xd83cf10 targets 0xd83d0c8, is taken when s2(=a2) <= 0 (signed), and falls through when s2(=a2) > 0 (signed).
  The `beq` branch at 0xd83cf18 targets 0xd83d0c8, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `beq` branch at 0xd83cf20 targets 0xd83d0c8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bltz` branch at 0xd83cf28 targets 0xd83d17c, is taken when v1(=a1) < 0 (signed), and falls through when v1(=a1) >= 0 (signed).
  The `beq` branch at 0xd83cf34 targets 0xd83cf4c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xd83cf78 targets 0xd83d134, is taken when a1(=[a0+112]) < a2(?) (unsigned), and falls through when a1(=[a0+112]) >= a2(?) (unsigned).
  The `blez` branch at 0xd83cfe8 targets 0xd83d03c, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0xd83cff4 targets 0xd83d010, is taken when (s0(?) & 0x1) == 0, and falls through when (s0(?) & 0x1) != 0.
  The `beq` branch at 0xd83d014 targets 0xd83d03c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xd83d034 targets 0xd83d01c, is taken when v0(?) != s0(?), and falls through when v0(?) == s0(?).
  The `beq` branch at 0xd83d058 targets 0xd83d144, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0xd83d06c targets 0xd83d0e8, is taken when s2(=a2) != t1(?), and falls through when s2(=a2) == t1(?).
  The `bltz` branch at 0xd83d074 targets 0xd83d0e8, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0xd83d080 targets 0xd83d094, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d098 targets 0xd83d0a8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d0ec targets 0xd83d100, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d104 targets 0xd83d114, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d13c targets 0xd83cf80 and is always taken.
  The `beq` branch at 0xd83d148 targets 0xd83d15c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d160 targets 0xd83d170, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d174 targets 0xd83d0d4 and is always taken.
  The `beq` branch at 0xd83d184 targets 0xd83d0d4 and is always taken.
  The return at 0xd83d0c0 has v0 = 0x0.
  The return at 0xd83d0e0 has v0 = 0x5b.
  The return at 0xd83d12c has v0 = 0x5b.

- `glXDestroyHyperpipeConfigSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83d18c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83d18c-0xd83d300 (372 bytes).
  It occupies 372 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83d1c0, `lw` at 0xd83d25c.
  The `lw` at 0xd83d1cc loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83d1d8, `lw` at 0xd83d20c, `lw` at 0xd83d2b8.
  The `lw` at 0xd83d1dc loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83d1f4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83d1fc stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83d204, `sb` at 0xd83d234.
  The `lw` at 0xd83d208 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d214 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d220 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83d228 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83d230 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83d23c loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83d248 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83d254 stores 4 bytes to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83d26c, `lw` at 0xd83d2c4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83d278, `lw` at 0xd83d2d0.
  The `jalr` at 0xd83d1b8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83d1d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd83d250 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a4=[a0+132], a5=[a0+108], a6=0x10011, a7=0x11.
  The `jalr` at 0xd83d270 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd83d284 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d2ac calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+108].
  The `jalr` at 0xd83d2c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd83d2dc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83d1c4 targets 0xd83d1d8, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `bne` branch at 0xd83d1e8 targets 0xd83d2a8, is taken when v1(=[a0+112]) < a0(=[a0+108]+32) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+32) (unsigned).
  The `beq` branch at 0xd83d258 targets 0xd83d2bc, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xd83d264 targets 0xd83d278, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d27c targets 0xd83d290, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d2b4 targets 0xd83d1ec and is always taken.
  The `beq` branch at 0xd83d2bc targets 0xd83d2d0, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d2d4 targets 0xd83d2e8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd83d2a0 has v0 = ?.
  The return at 0xd83d2f8 has v0 = 0x5c.

- `glXQueryHyperpipeConfigSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83d300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83d300-0xd83d568 (616 bytes).
  It occupies 616 bytes.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd83d338, `sw` at 0xd83d3f0, `sw` at 0xd83d3f4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83d33c, `lw` at 0xd83d3f8, `lw` at 0xd83d47c.
  The `lw` at 0xd83d348 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83d354, `lw` at 0xd83d390, `lw` at 0xd83d52c.
  The `lw` at 0xd83d358 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83d378 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83d380 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83d388, `sb` at 0xd83d3b8.
  The `lw` at 0xd83d38c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d398 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d3a4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83d3ac stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83d3b4 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83d3c0 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83d3cc stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83d3d8 stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83d404, `lw` at 0xd83d488, `lw` at 0xd83d4e8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83d410, `lw` at 0xd83d494, `lw` at 0xd83d4f4.
  The `jalr` at 0xd83d330 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83d34c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d3d4 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+132], a5=a1 at entry (arg1), a6=0x1000f, a7=0x11.
  The `jalr` at 0xd83d408 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d41c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d458 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d470 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d48c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d4a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d4d4 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83d4ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d500 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d520 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d544 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d558 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83d340 targets 0xd83d354, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd83d364 targets 0xd83d520, is taken when v1(=[a0+112]) < a0(=[a0+108]+32) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+32) (unsigned).
  The `beq` branch at 0xd83d3dc targets 0xd83d530, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bgtz` branch at 0xd83d3ec targets 0xd83d440, is taken when t9(?) > 0 (signed), and falls through when t9(?) <= 0 (signed).
  The `beq` branch at 0xd83d3fc targets 0xd83d410, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d414 targets 0xd83d428, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `bne` branch at 0xd83d460 targets 0xd83d4c4, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd83d480 targets 0xd83d494, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d498 targets 0xd83d4ac, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d4e0 targets 0xd83d4f4, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d4f8 targets 0xd83d50c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d528 targets 0xd83d36c and is always taken.
  The `beq` branch at 0xd83d538 targets 0xd83d54c, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d550 targets 0xd83d560, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d560 targets 0xd83d50c and is always taken.
  The return at 0xd83d438 has v0 = 0x0.
  The return at 0xd83d4bc has v0 = 0x0.
  The return at 0xd83d518 has v0 = one of ?, 0x0.

- `glXBindHyperpipeSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83d568 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83d568-0xd83d630 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd83d570 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d574 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d594 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83d59c loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83d5a0 loads 4 bytes from [[[0x1014]+276]+200] +0x98.
  The `lw` at 0xd83d5ac loads 4 bytes from [[0x1014]+276] +0x38.
  The `sw` at 0xd83d624 stores 4 bytes to [[0x1014]+276] +0x38.
  The `jalr` at 0xd83d600 calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83d58c targets 0xd83d5e4, is taken when s0(=[[0x1014]+276]) == 0, and falls through when s0(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd83d598 targets 0xd83d5e4, is taken when t8(=[[[0x1014]+276]+196]) == 0, and falls through when t8(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd83d5a4 targets 0xd83d618, is taken when t9(=[[[[0x1014]+276]+200]+152]) == 0, and falls through when t9(=[[[[0x1014]+276]+200]+152]) != 0.
  The `beq` branch at 0xd83d5b0 targets 0xd83d5f8, is taken when at(=[[[0x1014]+276]+56]) == a1(=-0x1), and falls through when at(=[[[0x1014]+276]+56]) != a1(=-0x1).
  The `beq` branch at 0xd83d5b8 targets 0xd83d5f8, is taken when v0(=a1) == a1(=-0x1), and falls through when v0(=a1) != a1(=-0x1).
  The `beq` branch at 0xd83d608 targets 0xd83d620, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xd83d610 targets 0xd83d5d4 and is always taken.
  The `beq` branch at 0xd83d618 targets 0xd83d5d4 and is always taken.
  The `beq` branch at 0xd83d628 targets 0xd83d5d4 and is always taken.
  The return at 0xd83d5cc has v0 = 0x5.
  The return at 0xd83d5dc has v0 = one of 0x0, 0x5, 0x5c.
  The return at 0xd83d5f0 has v0 = 0x5.

- `glXQueryHyperpipeBestAttribSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83d630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83d630-0xd83d6a8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd83d630 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d634 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d650 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83d658 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83d65c loads 4 bytes from [[[0x1014]+276]+200] +0x9c.
  The `jalr` at 0xd83d66c calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83d648 targets 0xd83d690, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd83d654 targets 0xd83d690, is taken when v1(=[[[0x1014]+276]+196]) == 0, and falls through when v1(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd83d660 targets 0xd83d6a0, is taken when t9(=[[[[0x1014]+276]+200]+156]) == 0, and falls through when t9(=[[[[0x1014]+276]+200]+156]) != 0.
  The `beq` branch at 0xd83d6a0 targets 0xd83d680 and is always taken.
  The return at 0xd83d688 has v0 = one of ?, 0x5c.
  The return at 0xd83d698 has v0 = 0x5.

- `glXQueryHyperpipeAttribSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83d6a8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83d6a8-0xd83d720 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd83d6a8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d6ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d6c8 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83d6d0 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83d6d4 loads 4 bytes from [[[0x1014]+276]+200] +0xa0.
  The `jalr` at 0xd83d6e4 calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83d6c0 targets 0xd83d708, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd83d6cc targets 0xd83d708, is taken when v1(=[[[0x1014]+276]+196]) == 0, and falls through when v1(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd83d6d8 targets 0xd83d718, is taken when t9(=[[[[0x1014]+276]+200]+160]) == 0, and falls through when t9(=[[[[0x1014]+276]+200]+160]) != 0.
  The `beq` branch at 0xd83d718 targets 0xd83d6f8 and is always taken.
  The return at 0xd83d700 has v0 = one of ?, 0x5c.
  The return at 0xd83d710 has v0 = 0x5.

- `glXHyperpipeAttribSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83d720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83d720-0xd83d798 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd83d720 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d724 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d740 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83d748 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83d74c loads 4 bytes from [[[0x1014]+276]+200] +0xa4.
  The `jalr` at 0xd83d75c calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83d738 targets 0xd83d780, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd83d744 targets 0xd83d780, is taken when v1(=[[[0x1014]+276]+196]) == 0, and falls through when v1(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd83d750 targets 0xd83d790, is taken when t9(=[[[[0x1014]+276]+200]+164]) == 0, and falls through when t9(=[[[[0x1014]+276]+200]+164]) != 0.
  The `beq` branch at 0xd83d790 targets 0xd83d770 and is always taken.
  The return at 0xd83d778 has v0 = one of ?, 0x5c.
  The return at 0xd83d788 has v0 = 0x5.

- `_init` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd8427a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd8427a0-0xd8427d8 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd8427c0 calls __glXInit [0xd80dfd8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8427d0 has v0 = ret(__glXInit).
