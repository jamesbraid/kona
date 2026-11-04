# Instruction readings from hostfacts

These entries record instruction facts rendered from the routines below. They describe software behavior, not hardware behavior, and each locator names an address in the identified binary.

- `GetFBConfigs` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd80d940 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd80d940-0xd80e030 (1776 bytes).
  It occupies 1776 bytes.
  The `lw` at 0xd80d968 loads 4 bytes from a1 (arg1 at entry) +0x20.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd80d97c, `lw` at 0xd80da30, `lw` at 0xd80da84.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd80d988, `lw` at 0xd80d99c, `lw` at 0xd80d9c8.
  The `lw` at 0xd80d98c loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd80d9a0 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd80d9b0, `sw` at 0xd80d9cc.
  The `sh` at 0xd80d9d8 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd80d9dc, `sb` at 0xd80da08.
  The `lw` at 0xd80d9e0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd80d9f4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd80d9f8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xd80d9fc loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `sb` at 0xd80da00 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd80da18 stores 4 bytes to [a0+108] +0x4.
  11 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd80da38, `lw` at 0xd80da50, `lw` at 0xd80da8c.
  6 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd80da3c, `lw` at 0xd80da90, `lw` at 0xd80dadc.
  32 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd80dc34, `sw` at 0xd80dc48, `sw` at 0xd80dc74.
  8 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0xd80dc7c, `sdc1` at 0xd80dc80, `sdc1` at 0xd80dc84.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd80dcfc, `lw` at 0xd80dd00, `lw` at 0xd80deb0.
  The `lw` at 0xd80dd5c loads 4 bytes from (table(-0x800b) << 0x2) +0xd841b3c.
  The `lw` at 0xd80dd84 loads 4 bytes from table(0xd841bb4) +0x0.
  7 such `sb` accesses store 1 byte to ?, including `sb` at 0xd80ddb0, `sb` at 0xd80ddb8, `sb` at 0xd80dec8.
  The `lw` at 0xd80dfa4 loads 4 bytes from ret(__glXOverrideVisualGetVisualInfo) +0x14.
  The `lw` at 0xd80dfac loads 4 bytes from ret(__glXOverrideVisualGetVisualInfo) +0x18.
  The `lw` at 0xd80dfb4 loads 4 bytes from ret(__glXOverrideVisualGetVisualInfo) +0x1c.
  The `jalr` at 0xd80d990 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd80d9bc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80da20 calls _XReply with a0=a0 at entry (arg0), a1=sp-36, a2=0x0, a3=0x0.
  The `jalr` at 0xd80da44 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80da60 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80da98 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80dab4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80dae4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80db00 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80db20 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80db4c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80db68 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80dba0 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80dbc0 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80dbe0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80dbfc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80dc20 calls memset with a0=ret(malloc), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd80dcb8 calls _XRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xd80dd64).
  The `jalr` at 0xd80df44 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80df90 calls __glXOverrideVisualGetVisualInfo with a0=a0 at entry (arg0), a1=0x3, a2=sp-120, a3=sp-124.
  The `jalr` at 0xd80dfc4 calls free with a0=ret(__glXOverrideVisualGetVisualInfo), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80dfec calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e008 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd80d984 targets 0xd80d9a0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s2)` at 0xd80d988 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80d9ac targets 0xd80d9d0, is taken when t5(=[a0+112]) >= t7(=[a0+108]+8) (unsigned), and falls through when t5(=[a0+112]) < t7(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw v1,100(s2)` at 0xd80d9b0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd80da28 targets 0xd80da74, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd80da34 targets 0xd80da54, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s2)` at 0xd80da38 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80da58 targets 0xd80da6c, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd80da6c targets 0xd80e018 and is always taken.
  The `bne` branch at 0xd80da7c targets 0xd80dac8, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beql` branch at 0xd80da88 targets 0xd80daa8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s2)` at 0xd80da8c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80daac targets 0xd80dac0, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd80dac0 targets 0xd80e018 and is always taken.
  The `bne` branch at 0xd80dac8 targets 0xd80db14, is taken when t4(?) != 0, and falls through when t4(?) == 0.
  The `beql` branch at 0xd80dad4 targets 0xd80daf4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s2)` at 0xd80dad8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80daf8 targets 0xd80db0c, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd80db0c targets 0xd80e018 and is always taken.
  The `bne` branch at 0xd80db30 targets 0xd80db7c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd80db3c targets 0xd80db5c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s2)` at 0xd80db40 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80db60 targets 0xd80db74, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd80db74 targets 0xd80e018 and is always taken.
  The `bne` branch at 0xd80dbb0 targets 0xd80dc10, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd80dbd0 targets 0xd80dbf0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s2)` at 0xd80dbd4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80dbf4 targets 0xd80dc08, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd80dc08 targets 0xd80e018 and is always taken.
  The `blezl` branch at 0xd80dc50 targets 0xd80df34, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed); its branch-likely delay slot `lw v0,1232(s2)` at 0xd80dc54 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd80dcf4 targets 0xd80deb4, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed).
  The `bnel` branch at 0xd80dd0c targets 0xd80dd30, is taken when v1(?) < t1(=0x8029) (signed), and falls through when v1(?) >= t1(=0x8029) (signed); its branch-likely delay slot `slti at,v1,41` at 0xd80dd10 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80dd14 targets 0xd80de8c, is taken when v1(?) == t2(=0x186a0), and falls through when v1(?) != t2(=0x186a0).
  The `beq` branch at 0xd80dd1c targets 0xd80de94, is taken when v1(?) == t3(=0x186a1), and falls through when v1(?) != t3(=0x186a1).
  The `beq` branch at 0xd80dd24 targets 0xd80deac and is always taken.
  The `bne` branch at 0xd80dd30 targets 0xd80dd6c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beql` branch at 0xd80dd48 targets 0xd80deac, is taken when t9(=table(-0x800b)) >= 0x1e (unsigned), and falls through when t9(=table(-0x800b)) < 0x1e (unsigned); its branch-likely delay slot `addiu t0,t0,1` at 0xd80dd4c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80dd70 targets 0xd80deac, is taken when t5(?) >= 0x27 (unsigned), and falls through when t5(?) < 0x27 (unsigned); its branch-likely delay slot `addiu t0,t0,1` at 0xd80dd74 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80dd9c targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80dda4 targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80ddac targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80ddb4 targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80ddbc targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80ddc4 targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80ddcc targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80ddd4 targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80dddc targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80dde4 targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80ddec targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80ddf4 targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80ddfc targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80de04 targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80de0c targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80de24 targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80de2c targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80de34 targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80de3c targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80de44 targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80de4c targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80de54 targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80de5c targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80de8c targets 0xd80dea8 and is always taken.
  The `beq` branch at 0xd80de94 targets 0xd80dea8 and is always taken.
  The `bnel` branch at 0xd80deac targets 0xd80dd00, is taken when t0(?) != t4(?), and falls through when t0(?) == t4(?); its branch-likely delay slot `lw v1,0(a3)` at 0xd80deb0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd80dedc targets 0xd80df00, is taken when 0 < v0(?) (signed), and falls through when 0 >= v0(?) (signed); its branch-likely delay slot `lw t9,100(s0)` at 0xd80dee0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd80deec targets 0xd80df00, is taken when 0 < v0(?) (signed), and falls through when 0 >= v0(?) (signed); its branch-likely delay slot `lw t9,100(s0)` at 0xd80def0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd80df24 targets 0xd80dc70, is taken when s1(?) != t8(?), and falls through when s1(?) == t8(?); its branch-likely delay slot `lw a1,112(sp)` at 0xd80df28 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80df34 targets 0xd80df54, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw t7,120(sp)` at 0xd80df38 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd80df58 targets 0xd80dfe4, is taken when t7(?) <= 0 (signed), and falls through when t7(?) > 0 (signed).
  The `beql` branch at 0xd80df68 targets 0xd80dfd4, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `lw t8,120(sp)` at 0xd80df6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80df9c targets 0xd80dfd0, is taken when v0(=ret(__glXOverrideVisualGetVisualInfo)) == 0, and falls through when v0(=ret(__glXOverrideVisualGetVisualInfo)) != 0.
  The `bnel` branch at 0xd80dfdc targets 0xd80df64, is taken when s1(?) != t8(?), and falls through when s1(?) == t8(?); its branch-likely delay slot `lw t6,32(s0)` at 0xd80dfe0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80e000 targets 0xd80e018, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xd80e004 runs only when taken and is annulled on fall-through.
  The return at 0xd80e028 has v0 = one of 0x0, 0x1.
  The instructions from 0xd80dd2c to 0xd80dd2c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80dd94 to 0xd80dd98 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80de14 to 0xd80de20 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80de64 to 0xd80de88 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80de9c to 0xd80dea4 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd80dd8c uses the jump table at 0xd841bb4 with targets 0xd80dd9c, 0xd80dda4, 0xd80dea8, 0xd80ddac, 0xd80ddb4, 0xd80ddbc, 0xd80ddc4, 0xd80ddcc, 0xd80ddd4, 0xd80dddc, 0xd80dde4, 0xd80ddec, 0xd80ddf4, 0xd80ddfc, 0xd80de04, 0xd80de0c, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80de2c, 0xd80dea8, 0xd80de24, 0xd80de34, 0xd80de3c, 0xd80de44, 0xd80de4c, 0xd80de54, 0xd80de5c.
  The indirect jump at 0xd80dd8c uses the jump table at 0xd841bb4 with targets 0xd80dd9c, 0xd80dda4, 0xd80dea8, 0xd80ddac, 0xd80ddb4, 0xd80ddbc, 0xd80ddc4, 0xd80ddcc, 0xd80ddd4, 0xd80dddc, 0xd80dde4, 0xd80ddec, 0xd80ddf4, 0xd80ddfc, 0xd80de04, 0xd80de0c, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80de2c, 0xd80dea8, 0xd80de24, 0xd80de34, 0xd80de3c, 0xd80de44, 0xd80de4c, 0xd80de54, 0xd80de5c.
  The indirect jump at 0xd80dd8c uses the jump table at 0xd841bb4 with targets 0xd80dd9c, 0xd80dda4, 0xd80dea8, 0xd80ddac, 0xd80ddb4, 0xd80ddbc, 0xd80ddc4, 0xd80ddcc, 0xd80ddd4, 0xd80dddc, 0xd80dde4, 0xd80ddec, 0xd80ddf4, 0xd80ddfc, 0xd80de04, 0xd80de0c, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80de2c, 0xd80dea8, 0xd80de24, 0xd80de34, 0xd80de3c, 0xd80de44, 0xd80de4c, 0xd80de54, 0xd80de5c.
  The indirect jump at 0xd80dd8c uses the jump table at 0xd841bb4 with targets 0xd80dd9c, 0xd80dda4, 0xd80dea8, 0xd80ddac, 0xd80ddb4, 0xd80ddbc, 0xd80ddc4, 0xd80ddcc, 0xd80ddd4, 0xd80dddc, 0xd80dde4, 0xd80ddec, 0xd80ddf4, 0xd80ddfc, 0xd80de04, 0xd80de0c, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80dea8, 0xd80de2c, 0xd80dea8, 0xd80de24, 0xd80de34, 0xd80de3c, 0xd80de44, 0xd80de4c, 0xd80de54, 0xd80de5c.

- `GetVisualConfigs` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd80e030 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd80e030-0xd80f618 (5608 bytes).
  It occupies 5608 bytes.
  The `lw` at 0xd80e060 loads 4 bytes from a1 (arg1 at entry) +0x20.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd80e074, `lw` at 0xd80e128, `lw` at 0xd80e17c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd80e080, `lw` at 0xd80e094, `lw` at 0xd80e0c0.
  The `lw` at 0xd80e084 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd80e098 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd80e0a8, `sw` at 0xd80e0c4.
  The `sh` at 0xd80e0d0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd80e0d4, `sb` at 0xd80e100.
  The `lw` at 0xd80e0d8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd80e0ec stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd80e0f0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xd80e0f4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `sb` at 0xd80e0f8 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd80e110 stores 4 bytes to [a0+108] +0x4.
  11 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd80e130, `lw` at 0xd80e148, `lw` at 0xd80e184.
  6 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd80e134, `lw` at 0xd80e188, `lw` at 0xd80e1d4.
  33 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd80e324, `sw` at 0xd80e334, `sw` at 0xd80e344.
  The `lw` at 0xd80e374 loads 4 bytes from ret(malloc) +0x0.
  The `lw` at 0xd80e38c loads 4 bytes from ret(malloc) +0x4.
  The `lw` at 0xd80e39c loads 4 bytes from ret(malloc) +0x8.
  7 such `sb` accesses store 1 byte to ?, including `sb` at 0xd80e3a8, `sb` at 0xd80e3fc, `sb` at 0xd80e404.
  The `lw` at 0xd80e3ac loads 4 bytes from ret(malloc) +0xc.
  The `lw` at 0xd80e3bc loads 4 bytes from ret(malloc) +0x10.
  The `lw` at 0xd80e3c8 loads 4 bytes from ret(malloc) +0x14.
  The `lw` at 0xd80e3d0 loads 4 bytes from ret(malloc) +0x18.
  The `lw` at 0xd80e3d8 loads 4 bytes from ret(malloc) +0x1c.
  The `lw` at 0xd80e3e0 loads 4 bytes from ret(malloc) +0x20.
  The `lw` at 0xd80e3e8 loads 4 bytes from ret(malloc) +0x24.
  The `lw` at 0xd80e3f0 loads 4 bytes from ret(malloc) +0x28.
  The `lw` at 0xd80e3f8 loads 4 bytes from ret(malloc) +0x2c.
  The `lw` at 0xd80e400 loads 4 bytes from ret(malloc) +0x30.
  The `lw` at 0xd80e408 loads 4 bytes from ret(malloc) +0x34.
  The `lw` at 0xd80e410 loads 4 bytes from ret(malloc) +0x38.
  The `lw` at 0xd80e418 loads 4 bytes from ret(malloc) +0x3c.
  The `lw` at 0xd80e420 loads 4 bytes from ret(malloc) +0x40.
  The `lw` at 0xd80e428 loads 4 bytes from ret(malloc) +0x44.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd80e434, `lw` at 0xd80e438, `lw` at 0xd80e500.
  The `lw` at 0xd80e498 loads 4 bytes from table(0xd841a04) +0x0.
  The `lbu` at 0xd80e504 loads 1 byte from ?.
  The `lw` at 0xd80e5c4 loads 4 bytes from ret(__glXOverrideVisualGetVisualInfo) +0x14.
  The `lw` at 0xd80e5cc loads 4 bytes from ret(__glXOverrideVisualGetVisualInfo) +0x18.
  The `lw` at 0xd80e5d4 loads 4 bytes from ret(__glXOverrideVisualGetVisualInfo) +0x1c.
  The `jalr` at 0xd80e088 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd80e0b4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e118 calls _XReply with a0=a0 at entry (arg0), a1=sp-36, a2=0x0, a3=0x0.
  The `jalr` at 0xd80e13c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e158 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e190 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e1ac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e1dc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e1f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e218 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e244 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e260 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e290 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e2b0 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e2d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e2ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e310 calls memset with a0=ret(malloc), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd80e36c calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd80e578 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e5b0 calls __glXOverrideVisualGetVisualInfo with a0=a0 at entry (arg0), a1=0x3, a2=sp-120, a3=sp-124.
  The `jalr` at 0xd80e5e4 calls free with a0=ret(__glXOverrideVisualGetVisualInfo), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e604 calls XFree with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80e620 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd80e07c targets 0xd80e098, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s3)` at 0xd80e080 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80e0a4 targets 0xd80e0c8, is taken when t7(=[a0+112]) >= t6(=[a0+108]+8) (unsigned), and falls through when t7(=[a0+112]) < t6(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw v1,100(s3)` at 0xd80e0a8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd80e120 targets 0xd80e16c, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd80e12c targets 0xd80e14c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s3)` at 0xd80e130 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80e150 targets 0xd80e164, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd80e164 targets 0xd80e630 and is always taken.
  The `bne` branch at 0xd80e174 targets 0xd80e1c0, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beql` branch at 0xd80e180 targets 0xd80e1a0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s3)` at 0xd80e184 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80e1a4 targets 0xd80e1b8, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd80e1b8 targets 0xd80e630 and is always taken.
  The `beq` branch at 0xd80e1c0 targets 0xd80e20c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beql` branch at 0xd80e1cc targets 0xd80e1ec, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s3)` at 0xd80e1d0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80e1f0 targets 0xd80e204, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd80e204 targets 0xd80e630 and is always taken.
  The `bne` branch at 0xd80e228 targets 0xd80e274, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd80e234 targets 0xd80e254, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s3)` at 0xd80e238 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80e258 targets 0xd80e26c, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd80e26c targets 0xd80e630 and is always taken.
  The `bne` branch at 0xd80e2a0 targets 0xd80e300, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd80e2c0 targets 0xd80e2e0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,124(s3)` at 0xd80e2c4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80e2e4 targets 0xd80e2f8, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0.
  The `beq` branch at 0xd80e2f8 targets 0xd80e630 and is always taken.
  The `blez` branch at 0xd80e330 targets 0xd80e564, is taken when s4(?) <= 0 (signed), and falls through when s4(?) > 0 (signed).
  The `bne` branch at 0xd80e42c targets 0xd80e504, is taken when t5(?) < 0x13 (signed), and falls through when t5(?) >= 0x13 (signed).
  The `bnel` branch at 0xd80e444 targets 0xd80e468, is taken when v0(?) < t1(=0x8029) (signed), and falls through when v0(?) >= t1(=0x8029) (signed); its branch-likely delay slot `slti at,v0,41` at 0xd80e448 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80e44c targets 0xd80e4a8, is taken when v0(?) == t2(=0x186a0), and falls through when v0(?) != t2(=0x186a0).
  The `beq` branch at 0xd80e454 targets 0xd80e4b0, is taken when v0(?) == t3(=0x186a1), and falls through when v0(?) != t3(=0x186a1).
  The `beq` branch at 0xd80e45c targets 0xd80e4f8 and is always taken.
  The `bne` branch at 0xd80e468 targets 0xd80e480, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beql` branch at 0xd80e470 targets 0xd80e4f4, is taken when v0(?) == t4(=0x8028), and falls through when v0(?) != t4(=0x8028); its branch-likely delay slot `sw v1,36(s0)` at 0xd80e474 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80e478 targets 0xd80e4f8 and is always taken.
  The `beql` branch at 0xd80e484 targets 0xd80e4f8, is taken when t8(?) >= 0x9 (unsigned), and falls through when t8(?) < 0x9 (unsigned); its branch-likely delay slot `addiu t0,t0,2` at 0xd80e488 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80e4a8 targets 0xd80e4f4 and is always taken.
  The `beq` branch at 0xd80e4b0 targets 0xd80e4f4 and is always taken.
  The `beq` branch at 0xd80e4b8 targets 0xd80e4f4 and is always taken.
  The `beq` branch at 0xd80e4c0 targets 0xd80e4f4 and is always taken.
  The `beq` branch at 0xd80e4c8 targets 0xd80e4f4 and is always taken.
  The `beq` branch at 0xd80e4d0 targets 0xd80e4f4 and is always taken.
  The `beq` branch at 0xd80e4d8 targets 0xd80e4f4 and is always taken.
  The `beq` branch at 0xd80e4e0 targets 0xd80e4f4 and is always taken.
  The `beq` branch at 0xd80e4e8 targets 0xd80e4f4 and is always taken.
  The `bnel` branch at 0xd80e4fc targets 0xd80e438, is taken when t0(?) < t5(?) (signed), and falls through when t0(?) >= t5(?) (signed); its branch-likely delay slot `lw v0,0(a3)` at 0xd80e500 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd80e51c targets 0xd80e540, is taken when 0 < v0(?) (signed), and falls through when 0 >= v0(?) (signed); its branch-likely delay slot `lw t7,68(s0)` at 0xd80e520 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd80e52c targets 0xd80e540, is taken when 0 < v0(?) (signed), and falls through when 0 >= v0(?) (signed); its branch-likely delay slot `lw t7,68(s0)` at 0xd80e530 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd80e558 targets 0xd80e340, is taken when s2(?) != s4(?), and falls through when s2(?) == s4(?).
  The `beql` branch at 0xd80e568 targets 0xd80e588, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw t7,144(sp)` at 0xd80e56c runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd80e588 targets 0xd80e5fc, is taken when s4(?) <= 0 (signed), and falls through when s4(?) > 0 (signed).
  The `beq` branch at 0xd80e5bc targets 0xd80e5f0, is taken when v0(=ret(__glXOverrideVisualGetVisualInfo)) == 0, and falls through when v0(=ret(__glXOverrideVisualGetVisualInfo)) != 0.
  The `bne` branch at 0xd80e5f4 targets 0xd80e590, is taken when s2(?) != s4(?), and falls through when s2(?) == s4(?).
  The `beql` branch at 0xd80e618 targets 0xd80e630, is taken when v1(=[a0+124]) == 0, and falls through when v1(=[a0+124]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xd80e61c runs only when taken and is annulled on fall-through.
  The return at 0xd80e648 has v0 = one of 0x0, 0x1.
  The instructions from 0xd80e464 to 0xd80e464 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80e4f0 to 0xd80e4f0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80e650 to 0xd80f614 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd80e4a0 uses the jump table at 0xd841a04 with targets 0xd80e4e8, 0xd80e4f4, 0xd80e4f4, 0xd80e4b8, 0xd80e4c0, 0xd80e4c8, 0xd80e4d0, 0xd80e4d8, 0xd80e4e0.
  The indirect jump at 0xd80e4a0 uses the jump table at 0xd841a04 with targets 0xd80e4e8, 0xd80e4f4, 0xd80e4f4, 0xd80e4b8, 0xd80e4c0, 0xd80e4c8, 0xd80e4d0, 0xd80e4d8, 0xd80e4e0.
  The indirect jump at 0xd80e4a0 uses the jump table at 0xd841a04 with targets 0xd80e4e8, 0xd80e4f4, 0xd80e4f4, 0xd80e4b8, 0xd80e4c0, 0xd80e4c8, 0xd80e4d0, 0xd80e4d8, 0xd80e4e0.

- `__glXMalloc` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd80f0ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd80f0ec-0xd80f138 (76 bytes).
  It occupies 76 bytes.
  The `jalr` at 0xd80f11c calls malloc with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd80f108 targets 0xd80f118, is taken when a1 != 0, and falls through when a1 == 0.
  The `beq` branch at 0xd80f110 targets 0xd80f128 and is always taken.
  The return at 0xd80f130 has v0 = one of 0x0, ret(malloc).

- `__glXFindVisualConfig` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd80f138 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd80f138-0xd80f200 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd80f184 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xd80f190 loads 4 bytes from ret(__glXInitialize) +0x20.
  The `lw` at 0xd80f1a8 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x4.
  The `lw` at 0xd80f1b0 loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x8.
  The `lw` at 0xd80f1cc loads 4 bytes from ?.
  The `jalr` at 0xd80f15c calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd80f16c targets 0xd80f17c, is taken when v0(=ret(__glXInitialize)) != 0, and falls through when v0(=ret(__glXInitialize)) == 0.
  The `beq` branch at 0xd80f174 targets 0xd80f1f0 and is always taken.
  The `bltz` branch at 0xd80f17c targets 0xd80f194, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bnel` branch at 0xd80f18c targets 0xd80f1a0, is taken when a1 < t7(=[a0+136]) (signed), and falls through when a1 >= t7(=[a0+136]) (signed); its branch-likely delay slot `lw t8,32(v0)` at 0xd80f190 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80f194 targets 0xd80f1f0 and is always taken.
  The `bnel` branch at 0xd80f1ac targets 0xd80f1c0, is taken when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+4]) != 0, and falls through when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+4]) == 0; its branch-likely delay slot `lw v0,8(a0)` at 0xd80f1b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80f1b4 targets 0xd80f1f0 and is always taken.
  The `bltzl` branch at 0xd80f1c4 targets 0xd80f1f0, is taken when v0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+8]-1) < 0 (signed), and falls through when v0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+8]-1) >= 0 (signed); its branch-likely delay slot `or v0,zero,zero` at 0xd80f1c8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd80f1d4 targets 0xd80f1e4, is taken when a2 != t0(?), and falls through when a2 == t0(?).
  The `beq` branch at 0xd80f1dc targets 0xd80f1f0 and is always taken.
  The `bgez` branch at 0xd80f1e4 targets 0xd80f1cc, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The return at 0xd80f1f8 has v0 = one of 0x0, ?.
  The instructions from 0xd80f19c to 0xd80f19c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80f1bc to 0xd80f1bc are not reached by any path from the entry, and their branches are not listed.

- `__glXCalloc` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd80f200 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd80f200-0xd80f258 (88 bytes).
  It occupies 88 bytes.
  The `jalr` at 0xd80f23c calls calloc with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd80f21c targets 0xd80f22c, is taken when a1 == 0, and falls through when a1 != 0.
  The `bne` branch at 0xd80f224 targets 0xd80f234, is taken when a2 != 0, and falls through when a2 == 0.
  The `beq` branch at 0xd80f22c targets 0xd80f248 and is always taken.
  The return at 0xd80f250 has v0 = one of 0x0, ret(calloc).

- `glXMakeCurrentReadSGI` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd80f5dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd80f5dc-0xd80f618 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xd80f5fc calls __glXMakeContextCurrent with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd80f610 has v0 = ret(__glXMakeContextCurrent).

- `CreateContext` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd80f618 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd80f618-0xd80ff2c (2324 bytes).
  It occupies 2324 bytes.
  The `sw` at 0xd80f69c stores 4 bytes to ret(calloc) +0x108.
  11 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd80f6a0, `lw` at 0xd80f6ac, `lw` at 0xd80f6b4.
  The `sw` at 0xd80f6a8 stores 4 bytes to ret(calloc) +0x110.
  The `sw` at 0xd80f6b0 stores 4 bytes to ret(calloc) +0x114.
  The `sw` at 0xd80f6b8 stores 4 bytes to ret(calloc) +0x118.
  The `sw` at 0xd80f6c0 stores 4 bytes to ret(calloc) +0x11c.
  The `sw` at 0xd80f6c8 stores 4 bytes to ret(calloc) +0x120.
  The `sw` at 0xd80f6e0 stores 4 bytes to ret(calloc) +0x38.
  The `lw` at 0xd80f6e4 loads 4 bytes from a2 (arg2 at entry) +0x48.
  The `lw` at 0xd80f6e8 loads 4 bytes from a2 (arg2 at entry) +0x24.
  The `sw` at 0xd80f6ec stores 4 bytes to ret(calloc) +0x34.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x30, including `sw` at 0xd80f6f0, `sw` at 0xd80f8f0.
  The `lw` at 0xd80f6f4 loads 4 bytes from a2 (arg2 at entry) +0x20.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x2c, including `sw` at 0xd80f6f8, `sw` at 0xd80f718.
  The `lw` at 0xd80f710 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xd80f714 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xd80f72c loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `sw` at 0xd80f738 stores 4 bytes to ret(calloc) +0x20.
  The `sw` at 0xd80f76c stores 4 bytes to ret(calloc) +0x24.
  The `lbu` at 0xd80f778 loads 1 byte from ?.
  The `sb` at 0xd80f77c stores 1 byte to ret(calloc) +0x1d.
  2 such `lbu` accesses load 1 byte from ret(getenv) +0x0, including `lbu` at 0xd80f7a0, `lbu` at 0xd80f9d0.
  The `lw` at 0xd80f890 loads 4 bytes from a2 (arg2 at entry) +0x2c.
  5 such `lw` accesses load 4 bytes from ret(calloc) +0x20, including `lw` at 0xd80f8cc, `lw` at 0xd80f8fc, `lw` at 0xd80fc74.
  3 such `lw` accesses load 4 bytes from ret(calloc) +0x2c, including `lw` at 0xd80f8d8, `lw` at 0xd80f904, `lw` at 0xd80fe84.
  The `lw` at 0xd80f8e8 loads 4 bytes from ret(__glXFindFBConfigFromVid) +0x48.
  The `lw` at 0xd80f914 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0xd80f930 loads 4 bytes from ([a1+16] << 0x2) +0xd840db4.
  The `sw` at 0xd80f984 stores 4 bytes to ret(calloc) +0xc8.
  The `sw` at 0xd80f9a8 stores 4 bytes to ret(calloc) +0xc4.
  The `sw` at 0xd80fa60 stores 4 bytes to ret(calloc) +0x0.
  The `lw` at 0xd80fa80 loads 4 bytes from ret(calloc) +0x0.
  The `sw` at 0xd80fa88 stores 4 bytes to ret(calloc) +0x10.
  The `sw` at 0xd80fa90 stores 4 bytes to ret(calloc) +0xc.
  The `sw` at 0xd80fa94 stores 4 bytes to ret(calloc) +0x4.
  The `lw` at 0xd80fa98 loads 4 bytes from sym(__glx_debug) +0x0.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x8, including `sw` at 0xd80fab0, `sw` at 0xd80fab8.
  The `sw` at 0xd80fae0 stores 4 bytes to ret(calloc) +0x10c.
  The `sw` at 0xd80fae4 stores 4 bytes to ret(calloc) +0x40.
  The `sw` at 0xd80fae8 stores 4 bytes to ret(calloc) +0x6c.
  The `sw` at 0xd80faec stores 4 bytes to ret(calloc) +0x98.
  The `sw` at 0xd80faf0 stores 4 bytes to ret(calloc) +0x70.
  The `sw` at 0xd80faf4 stores 4 bytes to ret(calloc) +0x74.
  The `sw` at 0xd80faf8 stores 4 bytes to ret(calloc) +0x9c.
  The `sw` at 0xd80fafc stores 4 bytes to ret(calloc) +0xa0.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x18, including `sw` at 0xd80fb08, `sw` at 0xd80fb14.
  The `sw` at 0xd80fb34 stores 4 bytes to ret(calloc) +0xb8.
  The `sw` at 0xd80fb50 stores 4 bytes to ret(calloc) +0xbc.
  The `sw` at 0xd80fb54 stores 4 bytes to ret(calloc) +0xc0.
  The `sb` at 0xd80fb60 stores 1 byte to ret(calloc) +0xa4.
  The `sw` at 0xd80fb64 stores 4 bytes to ret(calloc) +0xa8.
  The `sw` at 0xd80fb68 stores 4 bytes to ret(calloc) +0xac.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x14, including `sw` at 0xd80fb7c, `sw` at 0xd80fb94.
  The `lw` at 0xd80fb80 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd80fbb4, `lw` at 0xd80fbb8, `lw` at 0xd80fc94.
  12 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd80fbc0, `lw` at 0xd80fbd8, `lw` at 0xd80fc04.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x0, including `lw` at 0xd80fbc4, `lw` at 0xd80fce0, `lw` at 0xd80fdfc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xd80fbdc, `lw` at 0xd80fcf8, `lw` at 0xd80fe14.
  6 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd80fbec, `sw` at 0xd80fc08, `sw` at 0xd80fd08.
  3 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xd80fc14, `sh` at 0xd80fd30, `sh` at 0xd80fe4c.
  6 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd80fc18, `sb` at 0xd80fc48, `sb` at 0xd80fd34.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xd80fc1c, `lw` at 0xd80fd38, `lw` at 0xd80fe54.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xd80fc30, `sw` at 0xd80fd48, `sw` at 0xd80fe64.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xd80fc34, `sw` at 0xd80fd4c, `sw` at 0xd80fe68.
  3 such `lw` accesses load 4 bytes from ret(calloc) +0x110, including `lw` at 0xd80fc38, `lw` at 0xd80fd50, `lw` at 0xd80fe6c.
  3 such `sb` accesses store 1 byte to [a0+108] +0x1, including `sb` at 0xd80fc40, `sb` at 0xd80fd54, `sb` at 0xd80fe70.
  3 such `sw` accesses store 4 bytes to [a0+108] +0x4, including `sw` at 0xd80fc44, `sw` at 0xd80fd60, `sw` at 0xd80fe7c.
  3 such `lw` accesses load 4 bytes from ret(calloc) +0x14, including `lw` at 0xd80fc4c, `lw` at 0xd80fd5c, `lw` at 0xd80fe78.
  The `sw` at 0xd80fc50 stores 4 bytes to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x30, including `lw` at 0xd80fc58, `lw` at 0xd80fd68.
  11 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd80fc70, `sw` at 0xd80fc78, `sw` at 0xd80fc80.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x34, including `lw` at 0xd80fc7c, `lw` at 0xd80fd8c.
  3 such `lw` accesses load 4 bytes from ret(calloc) +0x18, including `lw` at 0xd80fc84, `lw` at 0xd80fd94, `lw` at 0xd80fea8.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0xd80fc90, `sb` at 0xd80fda0, `sb` at 0xd80feb4.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd80fc9c, `lw` at 0xd80fcb4, `lw` at 0xd80fdac.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd80fca0, `lw` at 0xd80fdb0, `lw` at 0xd80fec4.
  2 such `sb` accesses store 1 byte to ret(calloc) +0x1c, including `sb` at 0xd80fef8, `sb` at 0xd80ff00.
  The `lw` at 0xd80ff0c loads 4 bytes from sym(__glx_contextList) +0x0.
  The `sw` at 0xd80ff10 stores 4 bytes to ret(calloc) +0x128.
  The `sw` at 0xd80ff14 stores 4 bytes to sym(__glx_contextList) +0x0.
  The `jalr` at 0xd80f648 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd80f678 calls calloc with a0=0x1, a1=0x12c, a2=ret(__glXInitialize), a3=a3 at entry (arg3).
  The `jalr` at 0xd80f744 calls free with a0=ret(calloc), a1=a2 at entry (arg2), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd80f78c calls getenv with a0=0xd840d3c, a1=a2 at entry (arg2), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd80f800 calls isLocal [0xd812668] with a0=ret(calloc), a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd80f8a8 calls free with a0=ret(calloc), a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd80f8d4 calls __glXFindFBConfigFromVid [0xd8344d0] with a0=a0 at entry (arg0), a1=[ret(calloc)+32], a2=[ret(calloc)+44], a3=a3 at entry (arg3).
  The `jalr` at 0xd80f900 calls __glXFindVisualConfig with a0=a0 at entry (arg0), a1=[ret(calloc)+32], a2=[ret(calloc)+44], a3=?.
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xd80f938).
  The `jalr` at 0xd80f974 calls __glXCreateDirectContext with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80f990 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80f9c0 calls getenv with a0=0xd840d4c, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80f9f8 calls fprintf with a0=sym(__iob)+32, a1=0xd840d5c, a2=?, a3=?.
  The `jalr` at 0xd80fa0c calls exit with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80fa34 calls XMaxRequestSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80fa4c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd80fa6c calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80fb24 calls __glXInitVertexArrayState with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80fb44 calls calloc with a0=0x10, a1=0x4, a2=?, a3=?.
  The `jalr` at 0xd80fb88 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80fbcc calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd80fbf8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80fc60 calls __glXOverrideVisualsIdToXid with a0=[ret(calloc)+48], a1=0x10, a2=?, a3=?.
  The `jalr` at 0xd80fca8 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd80fcc4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80fce8 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd80fd14 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80fd70 calls __glXOverrideVisualsIdToXid with a0=[ret(calloc)+48], a1=0x18, a2=?, a3=?.
  The `jalr` at 0xd80fdb8 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd80fdd4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80fe04 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd80fe30 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd80fe8c calls __glXOverrideVisualsIdToXid with a0=[ret(calloc)+44], a1=0x3, a2=?, a3=?.
  The `jalr` at 0xd80fecc calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd80fee8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd80f658 targets 0xd80f668, is taken when v0(=ret(__glXInitialize)) != 0, and falls through when v0(=ret(__glXInitialize)) == 0.
  The `beq` branch at 0xd80f660 targets 0xd80ff18 and is always taken.
  The `bne` branch at 0xd80f68c targets 0xd80f69c, is taken when v0(=ret(calloc)) != 0, and falls through when v0(=ret(calloc)) == 0.
  The `beq` branch at 0xd80f694 targets 0xd80ff18 and is always taken.
  The `bne` branch at 0xd80f6d4 targets 0xd80f780, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0xd80f6dc targets 0xd80f704, is taken when a1(=a2) == 0, and falls through when a1(=a2) != 0.
  The `beq` branch at 0xd80f6fc targets 0xd80f720 and is always taken.
  The `beql` branch at 0xd80f708 targets 0xd80f724, is taken when t5(=a1) == 0, and falls through when t5(=a1) != 0; its branch-likely delay slot `lw a0,88(sp)` at 0xd80f70c runs only when taken and is annulled on fall-through.
  The `bltz` branch at 0xd80f724 targets 0xd80f73c, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bnel` branch at 0xd80f734 targets 0xd80f75c, is taken when a0(?) < t7(=[a0+136]) (signed), and falls through when a0(?) >= t7(=[a0+136]) (signed); its branch-likely delay slot `sw a0,32(v0)` at 0xd80f738 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80f750 targets 0xd80ff18 and is always taken.
  The `beq` branch at 0xd80f798 targets 0xd80f7e0, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `bnel` branch at 0xd80f7a8 targets 0xd80f7c0, is taken when v1(=[ret(getenv)]:1) != at(=0x79), and falls through when v1(=[ret(getenv)]:1) == at(=0x79); its branch-likely delay slot `addiu at,zero,110` at 0xd80f7ac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80f7b4 targets 0xd80f7e0 and is always taken.
  The `bnel` branch at 0xd80f7c0 targets 0xd80f7d4, is taken when v1(=[ret(getenv)]:1) != at(=0x6e), and falls through when v1(=[ret(getenv)]:1) == at(=0x6e); its branch-likely delay slot `addiu at,zero,33` at 0xd80f7c4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80f7c8 targets 0xd80f7e0 and is always taken.
  The `bne` branch at 0xd80f7d4 targets 0xd80f7e0, is taken when v1(=[ret(getenv)]:1) != at(=0x21), and falls through when v1(=[ret(getenv)]:1) == at(=0x21).
  The `bne` branch at 0xd80f7e8 targets 0xd80f81c, is taken when v1(?) != at(=0x1), and falls through when v1(?) == at(=0x1).
  The `bne` branch at 0xd80f810 targets 0xd80f81c, is taken when v0(=ret(isLocal)) != 0, and falls through when v0(=ret(isLocal)) == 0.
  The `beq` branch at 0xd80f81c targets 0xd80f840, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd80f828 targets 0xd80f840, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `bne` branch at 0xd80f834 targets 0xd80f840, is taken when t5(?) != 0, and falls through when t5(?) == 0.
  The `beql` branch at 0xd80f840 targets 0xd80f850, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `sltu t7,zero,v1` at 0xd80f844 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80f850 targets 0xd80f9a4, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xd80f864 targets 0xd80f8bc, is taken when t9(=a2) == 0, and falls through when t9(=a2) != 0.
  The `beq` branch at 0xd80f86c targets 0xd80f888, is taken when a3 == at(=0x8014), and falls through when a3 != at(=0x8014).
  The `beq` branch at 0xd80f878 targets 0xd80f890, is taken when a3 == at(=0x8015), and falls through when a3 != at(=0x8015).
  The `beq` branch at 0xd80f880 targets 0xd80f890 and is always taken.
  The `beq` branch at 0xd80f888 targets 0xd80f890 and is always taken.
  The `bnel` branch at 0xd80f898 targets 0xd80f950, is taken when (t1(=[a2+44]) & v0(=one of 0x0, 0x1, 0x2)) != 0, and falls through when (t1(=[a2+44]) & v0(=one of 0x0, 0x1, 0x2)) == 0; its branch-likely delay slot `lw t7,120(sp)` at 0xd80f89c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80f8b4 targets 0xd80ff18 and is always taken.
  The `beql` branch at 0xd80f8bc targets 0xd80f950, is taken when t3(=a1) == 0, and falls through when t3(=a1) != 0; its branch-likely delay slot `lw t7,120(sp)` at 0xd80f8c0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80f8e0 targets 0xd80f8f4, is taken when v0(=ret(__glXFindFBConfigFromVid)) == 0, and falls through when v0(=ret(__glXFindFBConfigFromVid)) != 0.
  The `beq` branch at 0xd80f8ec targets 0xd80f910 and is always taken.
  The `beql` branch at 0xd80f91c targets 0xd80f94c, is taken when t6(=[a1+16]) >= 0x6 (unsigned), and falls through when t6(=[a1+16]) < 0x6 (unsigned); its branch-likely delay slot `ori a3,zero,0x8014` at 0xd80f920 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80f958 targets 0xd80f968, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xd80f960 targets 0xd80f968 and is always taken.
  The `bne` branch at 0xd80f980 targets 0xd80f9a4, is taken when v0(=ret(__glXCreateDirectContext)) != 0, and falls through when v0(=ret(__glXCreateDirectContext)) == 0.
  The `beq` branch at 0xd80f99c targets 0xd80ff18 and is always taken.
  The `bnel` branch at 0xd80f9b0 targets 0xd80fa1c, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `lw t0,48(sp)` at 0xd80f9b4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80f9c8 targets 0xd80fa18, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0xd80f9d8 targets 0xd80f9e8, is taken when v1(=[ret(getenv)]:1) == at(=0x6e), and falls through when v1(=[ret(getenv)]:1) != at(=0x6e).
  The `bnel` branch at 0xd80f9e0 targets 0xd80fa1c, is taken when v1(=[ret(getenv)]:1) != at(=0x4e), and falls through when v1(=[ret(getenv)]:1) == at(=0x4e); its branch-likely delay slot `lw t0,48(sp)` at 0xd80f9e4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80fa1c targets 0xd80fa2c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xd80fa24 targets 0xd80fa44 and is always taken.
  The `bne` branch at 0xd80fa5c targets 0xd80fa80, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd80fa78 targets 0xd80ff18 and is always taken.
  The `beq` branch at 0xd80faa4 targets 0xd80fab4, is taken when t1(=[sym(__glx_debug)]) == 0, and falls through when t1(=[sym(__glx_debug)]) != 0.
  The `beq` branch at 0xd80faac targets 0xd80fabc and is always taken.
  The `bne` branch at 0xd80fabc targets 0xd80fac8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xd80fad0 targets 0xd80fadc, is taken when a0(?) < at(=0xfa01) (signed), and falls through when a0(?) >= at(=0xfa01) (signed).
  The `beql` branch at 0xd80fb04 targets 0xd80fb1c, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `sw zero,24(s0)` at 0xd80fb08 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80fb10 targets 0xd80fb1c and is always taken.
  The `bnel` branch at 0xd80fb78 targets 0xd80ff00, is taken when t1(?) != 0, and falls through when t1(?) == 0; its branch-likely delay slot `sw t6,20(s0)` at 0xd80fb7c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80fba0 targets 0xd80fde8, is taken when t2(?) == 0, and falls through when t2(?) != 0; its branch-likely delay slot `lw t3,108(sp)` at 0xd80fba4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd80fba8 targets 0xd80fde4, is taken when t3(=a1) != 0, and falls through when t3(=a1) == 0.
  The `beql` branch at 0xd80fbb0 targets 0xd80fcd8, is taken when t4(?) == 0, and falls through when t4(?) != 0; its branch-likely delay slot `lw a1,1232(s1)` at 0xd80fbb4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80fbbc targets 0xd80fbdc, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s1)` at 0xd80fbc0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80fbe8 targets 0xd80fc0c, is taken when t5(=[a0+112]) >= t6(=[a0+108]+36) (unsigned), and falls through when t5(=[a0+112]) < t6(=[a0+108]+36) (unsigned); its branch-likely delay slot `sw v0,100(s1)` at 0xd80fbec runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80fc98 targets 0xd80fcb8, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd80fc9c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80fcbc targets 0xd80fef4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd80fccc targets 0xd80fef4 and is always taken.
  The `beql` branch at 0xd80fcd8 targets 0xd80fcf8, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s1)` at 0xd80fcdc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80fd04 targets 0xd80fd28, is taken when t0(=[a0+112]) >= t1(=[a0+108]+28) (unsigned), and falls through when t0(=[a0+112]) < t1(=[a0+108]+28) (unsigned); its branch-likely delay slot `sw v0,100(s1)` at 0xd80fd08 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80fda8 targets 0xd80fdc8, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd80fdac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80fdcc targets 0xd80fef4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd80fddc targets 0xd80fef4 and is always taken.
  The `beq` branch at 0xd80fde8 targets 0xd80fef4, is taken when t3(=a1) == 0, and falls through when t3(=a1) != 0.
  The `beql` branch at 0xd80fdf4 targets 0xd80fe14, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s1)` at 0xd80fdf8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80fe20 targets 0xd80fe44, is taken when t4(=[a0+112]) >= t5(=[a0+108]+24) (unsigned), and falls through when t4(=[a0+112]) < t5(=[a0+108]+24) (unsigned); its branch-likely delay slot `sw v0,100(s1)` at 0xd80fe24 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd80febc targets 0xd80fedc, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd80fec0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd80fee0 targets 0xd80fef4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd80fef4 targets 0xd80ff04 and is always taken.
  The return at 0xd80ff24 has v0 = one of 0x0, ret(calloc).
  The instructions from 0xd80f758 to 0xd80f758 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80f7bc to 0xd80f7bc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80f7d0 to 0xd80f7d0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80f940 to 0xd80f948 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80fb18 to 0xd80fb18 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80fcd4 to 0xd80fcd4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd80fefc to 0xd80fefc are not reached by any path from the entry, and their branches are not listed.

- `ColorScore` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd80ff2c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd80ff2c-0xd80ff48 (28 bytes).
  It occupies 28 bytes.
  The `beq` branch at 0xd80ff2c targets 0xd80ff40, is taken when a0 == 0, and falls through when a0 != 0.
  The return at 0xd80ff38 has v0 = ?.
  The return at 0xd80ff40 has v0 = ?.

- `AccumScore` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd80ff48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd80ff48-0xd810484 (1340 bytes).
  It occupies 1340 bytes.
  The `beq` branch at 0xd80ff48 targets 0xd80ff58, is taken when a0 == 0, and falls through when a0 != 0.
  The return at 0xd80ff50 has v0 = ?.
  The return at 0xd80ff58 has v0 = ?.
  The instructions from 0xd80ff60 to 0xd810480 are not reached by any path from the entry, and their branches are not listed.

- `__glXFindDisplay` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd810120 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd810120-0xd8101e0 (192 bytes).
  It occupies 192 bytes.
  2 such `lw` accesses load 4 bytes from sym(__glXExtensionInfo) +0x0, including `lw` at 0xd810138, `lw` at 0xd8101ac.
  The `sw` at 0xd810168 stores 4 bytes to sym(__glXExtensionInfo) +0x0.
  The `lw` at 0xd8101b8 loads 4 bytes from abs 0xd845874.
  The `jalr` at 0xd810150 calls XextCreateExtension with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(__glXExtensionInfo)], a3=a3 at entry (arg3).
  The `jalr` at 0xd810180 calls XextFindDisplay with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd8101bc calls XextAddDisplay with a0=[sym(__glXExtensionInfo)], a1=a0 at entry (arg0), a2=[0xd845874], a3=0xd8458b0.
  The `bne` branch at 0xd810144 targets 0xd810174, is taken when a2(=[sym(__glXExtensionInfo)]) != 0, and falls through when a2(=[sym(__glXExtensionInfo)]) == 0.
  The `bne` branch at 0xd810164 targets 0xd810174, is taken when v0(=ret(XextCreateExtension)) != 0, and falls through when v0(=ret(XextCreateExtension)) == 0.
  The `beq` branch at 0xd81016c targets 0xd8101d0 and is always taken.
  The `bne` branch at 0xd810190 targets 0xd8101cc, is taken when v0(=ret(XextFindDisplay)) != 0, and falls through when v0(=ret(XextFindDisplay)) == 0.
  The return at 0xd8101d8 has v0 = one of 0x0, ?.

- `__glXCreateDirectContext` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8101e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8101e0-0xd810484 (676 bytes).
  It occupies 676 bytes.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd810218, `lw` at 0xd810228, `lw` at 0xd810230.
  13 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd810224, `sw` at 0xd81022c, `sw` at 0xd810238.
  The `lw` at 0xd8102e4 loads 4 bytes from abs 0xd846570.
  3 such `lw` accesses load 4 bytes from sym(__gl_adapters) +0x0, including `lw` at 0xd810300, `lw` at 0xd81039c, `lw` at 0xd8103a8.
  The `lw` at 0xd810310 loads 4 bytes from sym(__gl_adapters) +0x8.
  The `lw` at 0xd810320 loads 4 bytes from sym(__gl_adapters) +0x4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0xd810338, `lw` at 0xd81034c, `lw` at 0xd810370.
  The `jalr` at 0xd8102f0 calls (unknown callee) with a0=sp-160, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd810334 calls __glXOpenGraphicsDevice with a0=[a0+36], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81036c calls Ioctl [0xd8113d4] with a0=[a0+36], a1=0x66, a2=sp-180, a3=?.
  The `jalr` at 0xd810388 calls __glXFatal with a0=0x0, a1=0xd841674, a2=?, a3=?.
  The `jalr` at 0xd8103b4 calls strcmp with a0=?, a1=sp-220, a2=?, a3=?.
  The `jalr` at 0xd8103f8 calls __glXWarning with a0=0x0, a1=0xd841688, a2=?, a3=?.
  The `jalr` at 0xd810464 calls (unknown callee) with a0=sp-300, a1=sp-160, a2=?, a3=?.
  The `beq` branch at 0xd810204 targets 0xd8102a0, is taken when a2 == 0, and falls through when a2 != 0.
  The `bne` branch at 0xd810234 targets 0xd810218, is taken when t9(?) != t0(=a2+156), and falls through when t9(?) == t0(=a2+156).
  The `bne` branch at 0xd810244 targets 0xd810260, is taken when a3 != at(=0x8014), and falls through when a3 == at(=0x8014).
  The `beql` branch at 0xd810250 targets 0xd810264, is taken when t1(?) == 0, and falls through when t1(?) != 0; its branch-likely delay slot `ori at,zero,0x8015` at 0xd810254 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd810258 targets 0xd8102dc and is always taken.
  The `bne` branch at 0xd810264 targets 0xd8102dc, is taken when a3 != at(=0x8015), and falls through when a3 == at(=0x8015).
  The `beq` branch at 0xd81026c targets 0xd8102dc, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xd810298 targets 0xd8102dc and is always taken.
  The `beq` branch at 0xd8102a0 targets 0xd8102dc, is taken when a1 == 0, and falls through when a1 != 0.
  The `bne` branch at 0xd8102cc targets 0xd8102b0, is taken when t9(?) != t6(=a1+156), and falls through when t9(?) == t6(=a1+156).
  The `beq` branch at 0xd8102e8 targets 0xd8102fc, is taken when v0(=[0xd846570]) == 0, and falls through when v0(=[0xd846570]) != 0.
  The `beq` branch at 0xd810304 targets 0xd81032c, is taken when t7(=[sym(__gl_adapters)]) == 0, and falls through when t7(=[sym(__gl_adapters)]) != 0.
  The `bne` branch at 0xd810314 targets 0xd81032c, is taken when t8(=[sym(__gl_adapters)+8]) != 0, and falls through when t8(=[sym(__gl_adapters)+8]) == 0.
  The `beq` branch at 0xd810324 targets 0xd8103e0 and is always taken.
  The `bgez` branch at 0xd810374 targets 0xd810394, is taken when v0(=ret(Ioctl)) >= 0 (signed), and falls through when v0(=ret(Ioctl)) < 0 (signed).
  The `beql` branch at 0xd8103a0 targets 0xd8103e4, is taken when t9(=[sym(__gl_adapters)]) == 0, and falls through when t9(=[sym(__gl_adapters)]) != 0; its branch-likely delay slot `lw v0,176(sp)` at 0xd8103a4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8103bc targets 0xd8103d0, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0xd8103c8 targets 0xd8103e0 and is always taken.
  The `bne` branch at 0xd8103d8 targets 0xd8103ac, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xd8103e4 targets 0xd81040c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xd810404 targets 0xd810470 and is always taken.
  The `bne` branch at 0xd81043c targets 0xd810420, is taken when t5(?) != t1(=0xd844248), and falls through when t5(?) == t1(=0xd844248).
  The return at 0xd81047c has v0 = one of 0x0, ret(?).

- `SampleScore` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd810484 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd810484-0xd810ad4 (1616 bytes).
  It occupies 1616 bytes.
  The `beq` branch at 0xd810488 targets 0xd810498, is taken when a0 >= a1 (signed), and falls through when a0 < a1 (signed).
  The `bne` branch at 0xd810498 targets 0xd8104a8, is taken when a1 != a0, and falls through when a1 == a0.
  The return at 0xd810490 has v0 = ?.
  The return at 0xd8104a0 has v0 = (a1 << 0x6).
  The return at 0xd8104a8 has v0 = 0x0.
  The instructions from 0xd8104b0 to 0xd810ad0 are not reached by any path from the entry, and their branches are not listed.

- `__glXQueryServerString` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd810920 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd810920-0xd810ad4 (436 bytes).
  It occupies 436 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd810948, `lw` at 0xd810a68, `lw` at 0xd810a84.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd810954, `lw` at 0xd810968, `lw` at 0xd810994.
  The `lw` at 0xd810958 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd81096c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd81097c, `sw` at 0xd810998.
  The `sh` at 0xd8109a4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8109a8, `sb` at 0xd8109d4.
  The `lw` at 0xd8109ac loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8109c0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8109c4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8109cc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8109e4 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd8109ec stores 4 bytes to [a0+108] +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd810a8c, `lw` at 0xd810aa4.
  The `lw` at 0xd810a90 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd81095c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd810988 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8109f4 calls _XReply with a0=a0 at entry (arg0), a1=sp-36, a2=0x0, a3=0x0.
  The `jalr` at 0xd810a18 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd810a38 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd810a54 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd810a78 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd810a98 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd810ab4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd810950 targets 0xd81096c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd810954 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810978 targets 0xd81099c, is taken when t6(=[a0+112]) >= t7(=[a0+108]+12) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81097c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd810a24 targets 0xd810a48, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd810a40 targets 0xd810a84 and is always taken.
  The `beql` branch at 0xd810a64 targets 0xd810a88, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xd810a68 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810a88 targets 0xd810aa8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd810a8c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810aac targets 0xd810ac4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd810ab0 runs only when taken and is annulled on fall-through.
  The return at 0xd810acc has v0 = ?.

- `AllocAndFetchScreenConfigs` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd810cc4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd810cc4-0xd8113d4 (1808 bytes).
  It occupies 1808 bytes.
  The `lw` at 0xd810cf8 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `sw` at 0xd810d40 stores 4 bytes to a1 (arg1 at entry) +0x20.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0xd810d4c, `lw` at 0xd810e5c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0xd810d5c, `lw` at 0xd810e68.
  The `lw` at 0xd810d70 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `sw` at 0xd810d94 stores 4 bytes to ?.
  The `sb` at 0xd810db4 stores 1 byte to ?.
  The `jalr` at 0xd810d0c calls malloc with a0=([a0+136] << 0x5), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd810d34 calls memset with a0=ret(malloc), a1=0x0, a2=([a0+136] << 0x5), a3=?.
  The `jalr` at 0xd810d78 calls __glXQueryServerString with a0=a0 at entry (arg0), a1=[a1+4], a2=?, a3=0x3.
  The `jalr` at 0xd810da0 calls checkExtension [0xd838914] with a0=0xd841894, a1=ret(__glXQueryServerString), a2=?, a3=?.
  The `jalr` at 0xd810dc8 calls checkExtension [0xd838914] with a0=0xd8418b0, a1=ret(__glXQueryServerString), a2=?, a3=?.
  The `jalr` at 0xd810dec calls GetBoardNumber [0xd811418] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd810e08 calls FreeScreenConfigs [0xd81f210] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd810e2c calls GetVisualConfigs [0xd80e030] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd810e48 calls FreeScreenConfigs [0xd81f210] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd810e88 calls GetFBConfigs [0xd80d940] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd810ea4 calls FreeScreenConfigs [0xd81f210] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd810ed0 calls GetFBConfigsSGIX [0xd838214] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd810eec calls FreeScreenConfigs [0xd81f210] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd810f18 calls OverrideVisuals [0xd811c3c] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd810d18 targets 0xd810d28, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd810d20 targets 0xd810f28 and is always taken.
  The `blez` branch at 0xd810d44 targets 0xd810f0c, is taken when s6(=[a0+136]) <= 0 (signed), and falls through when s6(=[a0+136]) > 0 (signed).
  The `blez` branch at 0xd810d54 targets 0xd810ddc, is taken when t6(=[a1+16]) <= 0 (signed), and falls through when t6(=[a1+16]) > 0 (signed).
  The `blez` branch at 0xd810d64 targets 0xd810ddc, is taken when t7(=[a1+20]) <= 0 (signed), and falls through when t7(=[a1+20]) > 0 (signed).
  The `beq` branch at 0xd810d84 targets 0xd810ddc, is taken when v0(=ret(__glXQueryServerString)) == 0, and falls through when v0(=ret(__glXQueryServerString)) != 0.
  The `beq` branch at 0xd810da8 targets 0xd810db8, is taken when v0(=ret(checkExtension)) == 0, and falls through when v0(=ret(checkExtension)) != 0.
  The `beq` branch at 0xd810dd0 targets 0xd810ddc, is taken when v0(=ret(checkExtension)) == 0, and falls through when v0(=ret(checkExtension)) != 0.
  The `bne` branch at 0xd810df4 targets 0xd810e1c, is taken when v0(=ret(GetBoardNumber)) != 0, and falls through when v0(=ret(GetBoardNumber)) == 0.
  The `beq` branch at 0xd810e14 targets 0xd810f28 and is always taken.
  The `bne` branch at 0xd810e34 targets 0xd810e5c, is taken when v0(=ret(GetVisualConfigs)) != 0, and falls through when v0(=ret(GetVisualConfigs)) == 0.
  The `beq` branch at 0xd810e54 targets 0xd810f28 and is always taken.
  The `blez` branch at 0xd810e60 targets 0xd810eb8, is taken when t9(=[a1+16]) <= 0 (signed), and falls through when t9(=[a1+16]) > 0 (signed).
  The `bne` branch at 0xd810e70 targets 0xd810eb8, is taken when t0(=[a1+20]) < 0x3 (signed), and falls through when t0(=[a1+20]) >= 0x3 (signed).
  The `bne` branch at 0xd810e90 targets 0xd810f00, is taken when v0(=ret(GetFBConfigs)) != 0, and falls through when v0(=ret(GetFBConfigs)) == 0.
  The `beq` branch at 0xd810eb0 targets 0xd810f28 and is always taken.
  The `beql` branch at 0xd810eb8 targets 0xd810f04, is taken when s4(=one of 0x0, 0x1) == 0, and falls through when s4(=one of 0x0, 0x1) != 0; its branch-likely delay slot `addiu s1,s1,1` at 0xd810ebc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd810ed8 targets 0xd810f00, is taken when v0(=ret(GetFBConfigsSGIX)) != 0, and falls through when v0(=ret(GetFBConfigsSGIX)) == 0.
  The `beq` branch at 0xd810ef8 targets 0xd810f28 and is always taken.
  The `bne` branch at 0xd810f04 targets 0xd810d4c, is taken when s1(?) != s6(=[a0+136]), and falls through when s1(?) == s6(=[a0+136]).
  The return at 0xd810f48 has v0 = one of 0x0, 0x1.
  The instructions from 0xd810f50 to 0xd8113d0 are not reached by any path from the entry, and their branches are not listed.

- `__glXGetDrawableSize` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8110fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8110fc-0xd811310 (532 bytes).
  It occupies 532 bytes.
  The `lw` at 0xd811118 loads 4 bytes from abs 0xd846564.
  The `lw` at 0xd811130 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xd811134, `sw` at 0xd8112d4.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd811144, `sw` at 0xd8112e0.
  The `lw` at 0xd81114c loads 4 bytes from abs 0xd846568.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xd811150, `sw` at 0xd8112ec.
  The `lw` at 0xd811158 loads 4 bytes from abs 0xd84656c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd811160, `sw` at 0xd8112f8.
  2 such `lw` accesses load 4 bytes from [a0+76] +0xe4, including `lw` at 0xd811164, `lw` at 0xd811290.
  The `lw` at 0xd811170 loads 4 bytes from [[a0+76]+228] +0x2c.
  6 such `lw` accesses load 4 bytes from [a0+76] +0xd8, including `lw` at 0xd8111a0, `lw` at 0xd8111d0, `lw` at 0xd81121c.
  4 such `lw` accesses load 4 bytes from [a0+76] +0xe0, including `lw` at 0xd8111a4, `lw` at 0xd8111d4, `lw` at 0xd811218.
  2 such `lw` accesses load 4 bytes from [[a0+76]+228] +0x24, including `lw` at 0xd811258, `lw` at 0xd81129c.
  The `jalr` at 0xd8111c4 calls XGetGeometry with a0=[[a0+76]+216], a1=[[a0+76]+224], a2=sp-24, a3=sp-16.
  The `jalr` at 0xd8111fc calls XTranslateCoordinates with a0=[[a0+76]+216], a1=[[a0+76]+224], a2=?, a3=0x0.
  The `jalr` at 0xd811224 calls glXQueryGLXPbufferSGIX with a0=[[a0+76]+216], a1=[[a0+76]+224], a2=0x801d, a3=sp-8.
  The `jalr` at 0xd811244 calls glXQueryGLXPbufferSGIX with a0=[[a0+76]+216], a1=[[a0+76]+224], a2=0x801e, a3=sp-12.
  The `jalr` at 0xd811284 calls XGetGeometry with a0=[[a0+76]+216], a1=[[[a0+76]+228]+36], a2=sp-36, a3=sp-16.
  The `jalr` at 0xd8112c0 calls XTranslateCoordinates with a0=[[a0+76]+216], a1=[[[a0+76]+228]+36], a2=?, a3=0x0.
  The `beq` branch at 0xd81112c targets 0xd811164, is taken when t6(=[0xd846564]) == 0, and falls through when t6(=[0xd846564]) != 0.
  The `beq` branch at 0xd81115c targets 0xd8112fc and is always taken.
  The `beq` branch at 0xd81117c targets 0xd8111a0, is taken when v0(=[[[a0+76]+228]+44]) == at(=0x1), and falls through when v0(=[[[a0+76]+228]+44]) != at(=0x1).
  The `beq` branch at 0xd811188 targets 0xd81120c, is taken when v0(=[[[a0+76]+228]+44]) == at(=0x4), and falls through when v0(=[[[a0+76]+228]+44]) != at(=0x4).
  The `beq` branch at 0xd811190 targets 0xd81120c, is taken when v0(=[[[a0+76]+228]+44]) == at(=0x5), and falls through when v0(=[[[a0+76]+228]+44]) != at(=0x5).
  The `beq` branch at 0xd811198 targets 0xd811254, is taken when v0(=[[[a0+76]+228]+44]) == at(=0x6), and falls through when v0(=[[[a0+76]+228]+44]) != at(=0x6).
  The `beq` branch at 0xd811204 targets 0xd8112cc and is always taken.
  The `beq` branch at 0xd81124c targets 0xd8112cc and is always taken.
  The return at 0xd811308 has v0 = ?.

- `GetBoardNumber` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd811418 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd811418-0xd81163c (548 bytes).
  It occupies 548 bytes.
  The `lw` at 0xd811434 loads 4 bytes from a1 (arg1 at entry) +0x20.
  The `lw` at 0xd81146c loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lw` at 0xd811480 loads 4 bytes from ([a0+140] + (((a2 << 0x2) + a2) << 0x4)) +0x8.
  The `lw` at 0xd8114e4 loads 4 bytes from ?.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8114e8, `sw` at 0xd81150c.
  The `jalr` at 0xd811458 calls XInternAtom with a0=a0 at entry (arg0), a1=0xd841880, a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0xd8114c4 calls XGetWindowProperty with a0=a0 at entry (arg0), a1=[([a0+140] + (((a2 << 0x2) + a2) << 0x4))+8], a2=ret(XInternAtom), a3=0x0.
  The `jalr` at 0xd8114f4 calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8114cc targets 0xd811504, is taken when v0(=ret(XGetWindowProperty)) != 0, and falls through when v0(=ret(XGetWindowProperty)) == 0.
  The `beql` branch at 0xd8114dc targets 0xd811508, is taken when t1(?) == 0, and falls through when t1(?) != 0; its branch-likely delay slot `lw t3,104(sp)` at 0xd8114e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8114fc targets 0xd811510 and is always taken.
  The return at 0xd81151c has v0 = 0x1.
  The instructions from 0xd811524 to 0xd811638 are not reached by any path from the entry, and their branches are not listed.

- `__glXHWAttach` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd811524 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd811524-0xd81163c (280 bytes).
  It occupies 280 bytes.
  The `lw` at 0xd811540 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  3 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd811544, `lw` at 0xd811574, `lw` at 0xd811620.
  5 such `lw` accesses load 4 bytes from [a0+76] +0x24, including `lw` at 0xd81154c, `lw` at 0xd811570, `lw` at 0xd8115a4.
  2 such `lw` accesses load 4 bytes from [0x1014] +0x108, including `lw` at 0xd811550, `lw` at 0xd811590.
  The `lw` at 0xd811580 loads 4 bytes from [a0+76] +0x28.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0xd8115c4, `lw` at 0xd811604.
  The `sw` at 0xd811624 stores 4 bytes to [0x1014] +0x108.
  The `jalr` at 0xd811568 calls __glXOpenGraphicsDevice with a0=[[a0+76]+36], a1=[[a0+76]+36], a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xd8115b0 calls Ioctl [0xd8113d4] with a0=[[a0+76]+36], a1=0x67, a2=sp-12, a3=a0 at entry (arg0).
  The `jalr` at 0xd8115d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8415e8, a2=?, a3=a0 at entry (arg0).
  The `jalr` at 0xd8115f0 calls Ioctl [0xd8113d4] with a0=[[a0+76]+36], a1=0x70, a2=sp-12, a3=a0 at entry (arg0).
  The `jalr` at 0xd811610 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8415f8, a2=?, a3=a0 at entry (arg0).
  The `beql` branch at 0xd811554 targets 0xd81162c, is taken when t7(=[[0x1014]+264]) == a1(=[[a0+76]+36]), and falls through when t7(=[[0x1014]+264]) != a1(=[[a0+76]+36]); its branch-likely delay slot `lw ra,28(sp)` at 0xd811558 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd811598 targets 0xd8115e0, is taken when t1(=[[0x1014]+264]) >= 0 (signed), and falls through when t1(=[[0x1014]+264]) < 0 (signed).
  The `bgez` branch at 0xd8115bc targets 0xd81161c, is taken when v0(=ret(Ioctl)) >= 0 (signed), and falls through when v0(=ret(Ioctl)) < 0 (signed).
  The `beq` branch at 0xd8115d8 targets 0xd81161c and is always taken.
  The `bgez` branch at 0xd8115fc targets 0xd81161c, is taken when v0(=ret(Ioctl)) >= 0 (signed), and falls through when v0(=ret(Ioctl)) < 0 (signed).
  The return at 0xd811634 has v0 = ?.

- `DepthScore` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81163c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81163c-0xd811658 (28 bytes).
  It occupies 28 bytes.
  The `beq` branch at 0xd81163c targets 0xd811650, is taken when a0 == 0, and falls through when a0 != 0.
  The return at 0xd811648 has v0 = ?.
  The return at 0xd811650 has v0 = ?.

- `QueryVersion` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd811658 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd811658-0xd811c34 (1500 bytes).
  It occupies 1500 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd811680, `lw` at 0xd81172c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd81168c, `lw` at 0xd8116a0, `lw` at 0xd8116cc.
  The `lw` at 0xd811690 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8116a4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8116b4, `sw` at 0xd8116d0.
  The `sh` at 0xd8116dc stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8116e0, `sb` at 0xd811710.
  The `lw` at 0xd8116e4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8116f8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8116fc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd811704 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd811708 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd81170c stores 4 bytes to [a0+108] +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd811738, `lw` at 0xd811750.
  The `lw` at 0xd81173c loads 4 bytes from [a0+1232] +0x4.
  The `sw` at 0xd811788 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xd8117a8, `sw` at 0xd8117b4.
  The `jalr` at 0xd811694 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8116c0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd811724 calls _XReply with a0=a0 at entry (arg0), a1=sp-36, a2=0x0, a3=0x0.
  The `jalr` at 0xd811744 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd811760 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd811688 targets 0xd8116a4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81168c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8116b0 targets 0xd8116d4, is taken when t6(=[a0+112]) >= t7(=[a0+108]+12) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8116b4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd811734 targets 0xd811754, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd811738 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd811758 targets 0xd811770, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t6,52(sp)` at 0xd81175c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd811778 targets 0xd811788, is taken when t6(?) == at(=0x1), and falls through when t6(?) != at(=0x1).
  The `beq` branch at 0xd811780 targets 0xd8117b8 and is always taken.
  The `beq` branch at 0xd81179c targets 0xd8117ac, is taken when t2(?) >= 0x3 (unsigned), and falls through when t2(?) < 0x3 (unsigned).
  The `beq` branch at 0xd8117a4 targets 0xd8117b8 and is always taken.
  The return at 0xd8117c4 has v0 = one of 0x0, 0x1.
  The instructions from 0xd8117cc to 0xd811c30 are not reached by any path from the entry, and their branches are not listed.

- `__glXAddDrawableInterest` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8118d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8118d8-0xd8119dc (260 bytes).
  It occupies 260 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xd846560, including `lw` at 0xd8118f0, `lw` at 0xd8119b8.
  The `lw` at 0xd811904 loads 4 bytes from [0xd846560] +0x0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd81190c, `lw` at 0xd811910, `lw` at 0xd81192c.
  The `sw` at 0xd811920 stores 4 bytes to ?.
  The `sw` at 0xd811970 stores 4 bytes to ret(malloc) +0x2c.
  The `sw` at 0xd811974 stores 4 bytes to ret(malloc) +0x30.
  The `sw` at 0xd811978 stores 4 bytes to ret(malloc) +0x48.
  The `sw` at 0xd81197c stores 4 bytes to ret(malloc) +0x44.
  The `sw` at 0xd811980 stores 4 bytes to ret(malloc) +0x0.
  The `sw` at 0xd811984 stores 4 bytes to ret(malloc) +0x4.
  The `sw` at 0xd811988 stores 4 bytes to ret(malloc) +0x8.
  The `sw` at 0xd81198c stores 4 bytes to ret(malloc) +0x10.
  The `sw` at 0xd811990 stores 4 bytes to ret(malloc) +0xc.
  The `sw` at 0xd811994 stores 4 bytes to ret(malloc) +0x14.
  The `sw` at 0xd811998 stores 4 bytes to ret(malloc) +0x18.
  The `sw` at 0xd81199c stores 4 bytes to ret(malloc) +0x1c.
  The `sb` at 0xd8119a0 stores 1 byte to ret(malloc) +0x20.
  The `sw` at 0xd8119a4 stores 4 bytes to ret(malloc) +0x24.
  The `sw` at 0xd8119a8 stores 4 bytes to ret(malloc) +0x34.
  The `sw` at 0xd8119ac stores 4 bytes to ret(malloc) +0x38.
  The `sw` at 0xd8119b0 stores 4 bytes to ret(malloc) +0x3c.
  The `sw` at 0xd8119b4 stores 4 bytes to ret(malloc) +0x40.
  The `sw` at 0xd8119c0 stores 4 bytes to ret(malloc) +0x28.
  The `sw` at 0xd8119c4 stores 4 bytes to abs 0xd846560.
  The `jalr` at 0xd81193c calls malloc with a0=0x4c, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd8118fc targets 0xd811930, is taken when v1(=[0xd846560]) == 0, and falls through when v1(=[0xd846560]) != 0.
  The `bnel` branch at 0xd811908 targets 0xd811928, is taken when a1(=a0) != t6(?), and falls through when a1(=a0) == t6(?); its branch-likely delay slot `lw v1,40(v1)` at 0xd81190c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd81191c targets 0xd8119cc and is always taken.
  The `bnel` branch at 0xd811928 targets 0xd811908, is taken when v1(?) != 0, and falls through when v1(?) == 0; its branch-likely delay slot `lw t6,0(v1)` at 0xd81192c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd81194c targets 0xd8119c8, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The return at 0xd8119d4 has v0 = one of ?, ret(malloc).
  The instructions from 0xd811924 to 0xd811924 are not reached by any path from the entry, and their branches are not listed.

- `__glXAllocHWContext` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8119dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8119dc-0xd811aa4 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd8119f8 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0xd8119fc loads 4 bytes from abs 0x1014.
  2 such `lw` accesses load 4 bytes from [a0+76] +0x24, including `lw` at 0xd811a04, `lw` at 0xd811a40.
  The `lw` at 0xd811a18 loads 4 bytes from ([0x1014] + ([[a0+76]+36] << 0x2)) +0x4.
  The `lw` at 0xd811a6c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0xd811a8c stores 4 bytes to ?.
  The `jalr` at 0xd811a4c calls Ioctl [0xd8113d4] with a0=[[a0+76]+36], a1=0x3e8, a2=sp-12, a3=a0 at entry (arg0).
  The `jalr` at 0xd811a78 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd841608, a2=?, a3=a0 at entry (arg0).
  The `bgez` branch at 0xd811a24 targets 0xd811a34, is taken when t0(=[([0x1014] + ([[a0+76]+36] << 0x2))+4]) >= 0 (signed), and falls through when t0(=[([0x1014] + ([[a0+76]+36] << 0x2))+4]) < 0 (signed).
  The `beq` branch at 0xd811a2c targets 0xd811a94 and is always taken.
  The `bne` branch at 0xd811a64 targets 0xd811a8c, is taken when v0(=ret(Ioctl)) != at(=-0x1), and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `beq` branch at 0xd811a84 targets 0xd811a94 and is always taken.
  The return at 0xd811a9c has v0 = one of -0x1, ret(Ioctl).

- `AuxScore` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd811c34 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd811c34-0xd811c3c (8 bytes).
  It occupies 8 bytes.
  The return at 0xd811c34 has v0 = ?.

- `OverrideVisuals` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd811c3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd811c3c-0xd8125dc (2464 bytes).
  It occupies 2464 bytes.
  The `sw` at 0xd811cb0 stores 4 bytes to abs 0xd846770.
  The `lw` at 0xd811cf4 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0xd811cf8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  61 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd811d14, `sw` at 0xd811df0, `sw` at 0xd811e18.
  34 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd811d94, `lw` at 0xd811d98, `lw` at 0xd811dbc.
  10 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8121bc, `sb` at 0xd8121c0, `sb` at 0xd812210.
  8 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0xd812298, `sdc1` at 0xd8122a4, `sdc1` at 0xd8122b0.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd812338, `lbu` at 0xd812340, `lbu` at 0xd812478.
  The `jalr` at 0xd811c8c calls getenv with a0=0xd8418f4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd811cb4 calls fopen with a0=ret(getenv), a1=0xd841904, a2=?, a3=?.
  The `jalr` at 0xd811cd0 calls perror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd811ce4 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0xd811d00 calls glXGetClientString with a0=[a0], a1=0x3, a2=?, a3=?.
  The `jalr` at 0xd811d24 calls fgets with a0=sp-1040, a1=0x400, a2=?, a3=?.
  The `jalr` at 0xd811d40 calls sscanf with a0=sp-1040, a1=0xd841908, a2=sp-1052, a3=?.
  The `jalr` at 0xd811d70 calls fprintf with a0=sym(__iob)+32, a1=0xd84190c, a2=?, a3=?.
  The `jalr` at 0xd811d84 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0xd811e40 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd811e60 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd811e88 calls bzero with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd811f74 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd811fa0 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd811fc8 calls bzero with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd81201c calls fgets with a0=sp-1040, a1=0x400, a2=?, a3=?.
  The `jalr` at 0xd8120f8 calls sscanf with a0=sp-1040, a1=0xd841940, a2=sp-5248, a3=sp-5244.
  The `jalr` at 0xd812178 calls fprintf with a0=sym(__iob)+32, a1=0xd841984, a2=?, a3=?.
  The `jalr` at 0xd81218c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0xd812574 calls fprintf with a0=sym(__iob)+32, a1=0xd8419bc, a2=?, a3=?.
  The `jalr` at 0xd812588 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd811c98 targets 0xd812594, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `bne` branch at 0xd811cc0 targets 0xd811cf0, is taken when v0(=ret(fopen)) != 0, and falls through when v0(=ret(fopen)) == 0.
  The `bgtz` branch at 0xd811d54 targets 0xd811d94, is taken when a3(?) > 0 (signed), and falls through when a3(?) <= 0 (signed).
  The `blez` branch at 0xd811da8 targets 0xd811e38, is taken when v1(?) <= 0 (signed), and falls through when v1(?) > 0 (signed).
  The `bnel` branch at 0xd811dc4 targets 0xd811e28, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `slt at,s3,v1` at 0xd811dc8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd811dd4 targets 0xd811dfc, is taken when a0(=0x3) != v0(?), and falls through when a0(=0x3) == v0(?).
  The `beq` branch at 0xd811ddc targets 0xd811e24, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd811df4 targets 0xd811e24 and is always taken.
  The `bne` branch at 0xd811dfc targets 0xd811e24, is taken when a1(=0x4) != v0(?), and falls through when a1(=0x4) == v0(?).
  The `beq` branch at 0xd811e04 targets 0xd811e24, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd811e28 targets 0xd811dbc, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd811ebc targets 0xd811ff8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `blez` branch at 0xd811ecc targets 0xd811f6c, is taken when v1(?) <= 0 (signed), and falls through when v1(?) > 0 (signed).
  The `bnel` branch at 0xd811ee0 targets 0xd811f5c, is taken when t2(?) != 0, and falls through when t2(?) == 0; its branch-likely delay slot `slt at,s3,v1` at 0xd811ee4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd811ef0 targets 0xd811f5c, is taken when (t3(?) & 0x1) == 0, and falls through when (t3(?) & 0x1) != 0; its branch-likely delay slot `slt at,s3,v1` at 0xd811ef4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd811f00 targets 0xd811f30, is taken when a0(=0x8004) != v0(?), and falls through when a0(=0x8004) == v0(?).
  The `beq` branch at 0xd811f0c targets 0xd811f58, is taken when s5(?) >= 0x100 (signed), and falls through when s5(?) < 0x100 (signed).
  The `beq` branch at 0xd811f28 targets 0xd811f58 and is always taken.
  The `bne` branch at 0xd811f30 targets 0xd811f58, is taken when v0(?) != at(=0x8002), and falls through when v0(?) == at(=0x8002).
  The `beq` branch at 0xd811f38 targets 0xd811f58, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd811f5c targets 0xd811ed8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `blez` branch at 0xd812004 targets 0xd812558, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `bne` branch at 0xd812024 targets 0xd812034, is taken when v0(=ret(fgets)) != 0, and falls through when v0(=ret(fgets)) == 0.
  The `beq` branch at 0xd81202c targets 0xd812558 and is always taken.
  The `beq` branch at 0xd812040 targets 0xd812548, is taken when t2(?) == at(=0x23), and falls through when t2(?) != at(=0x23).
  The `beq` branch at 0xd812104 targets 0xd812128, is taken when v0(=ret(sscanf)) == at(=0x13), and falls through when v0(=ret(sscanf)) != at(=0x13).
  The `beq` branch at 0xd812110 targets 0xd812148, is taken when v0(=ret(sscanf)) == at(=0x14), and falls through when v0(=ret(sscanf)) != at(=0x14).
  The `beq` branch at 0xd812118 targets 0xd812198, is taken when v0(=ret(sscanf)) == at(=0x16), and falls through when v0(=ret(sscanf)) != at(=0x16).
  The `beq` branch at 0xd812120 targets 0xd812160 and is always taken.
  The `beq` branch at 0xd812140 targets 0xd812198 and is always taken.
  The `beq` branch at 0xd812158 targets 0xd812198 and is always taken.
  The `bnel` branch at 0xd81220c targets 0xd812230, is taken when 0 < v1(?) (signed), and falls through when 0 >= v1(?) (signed); its branch-likely delay slot `sb v1,48(s0)` at 0xd812210 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd81221c targets 0xd812230, is taken when 0 < v1(?) (signed), and falls through when 0 >= v1(?) (signed); its branch-likely delay slot `sb v1,48(s0)` at 0xd812220 runs only when taken and is annulled on fall-through.
  The `bc1t` branch at 0xd812308 targets 0xd812314, is taken when f8 == f16 (c.eq.d at 0xd812300), and falls through when not (f8 == f16 (c.eq.d at 0xd812300)).
  The `bne` branch at 0xd812314 targets 0xd812340, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `bc1tl` branch at 0xd812334 targets 0xd812344, is taken when f18 == f6 (c.eq.d at 0xd81232c), and falls through when not (f18 == f6 (c.eq.d at 0xd81232c)); its branch-likely delay slot `lbu t8,45(s0)` at 0xd812338 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd812348 targets 0xd81238c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0xd812350 targets 0xd812370, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The `beq` branch at 0xd812368 targets 0xd8123c4 and is always taken.
  The `beq` branch at 0xd812384 targets 0xd8123c4 and is always taken.
  The `bne` branch at 0xd81238c targets 0xd8123ac, is taken when s6(?) != 0, and falls through when s6(?) == 0.
  The `beq` branch at 0xd8123a4 targets 0xd8123c4 and is always taken.
  The `beq` branch at 0xd812424 targets 0xd812544, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0xd812454 targets 0xd812438, is taken when t4(?) != t2(?), and falls through when t4(?) == t2(?).
  The `beq` branch at 0xd8124ac targets 0xd8124f8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0xd8124b8 targets 0xd8124d8, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `beq` branch at 0xd8124d0 targets 0xd812540 and is always taken.
  The `beq` branch at 0xd8124f0 targets 0xd812540 and is always taken.
  The `bne` branch at 0xd8124f8 targets 0xd812518, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0xd812510 targets 0xd812534 and is always taken.
  The `bne` branch at 0xd812550 targets 0xd812010, is taken when s3(?) < a3(?) (signed), and falls through when s3(?) >= a3(?) (signed).
  The `beq` branch at 0xd812558 targets 0xd812594, is taken when s3(?) == a3(?), and falls through when s3(?) != a3(?).
  The return at 0xd8125bc has v0 = one of ret(getenv), ?, ret(exit).
  The instructions from 0xd8125c4 to 0xd8125d8 are not reached by any path from the entry, and their branches are not listed.

- `StencilScore` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8125dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8125dc-0xd8125e4 (8 bytes).
  It occupies 8 bytes.
  The return at 0xd8125dc has v0 = ?.

- `sampleBuffersScore` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8125e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8125e4-0xd812668 (132 bytes).
  It occupies 132 bytes.
  The return at 0xd8125e4 has v0 = ?.
  The instructions from 0xd8125ec to 0xd812664 are not reached by any path from the entry, and their branches are not listed.

- `isLocal` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd812668 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd812668-0xd81ef28 (51392 bytes).
  It occupies 51392 bytes.
  The `lw` at 0xd812688 loads 4 bytes from a0 (arg0 at entry) +0x108.
  The `lw` at 0xd812698 loads 4 bytes from [a0+264] +0x8.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd81269c, `lw` at 0xd8126ac, `lw` at 0xd8126b4.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8126a8, `sw` at 0xd8126b0, `sw` at 0xd8126bc.
  The `jalr` at 0xd8126e4 calls getpeername with a0=[[a0+264]+8], a1=sp-24, a2=sp-556, a3=a3 at entry (arg3).
  The `jalr` at 0xd812720 calls isNotProxy [0xd8342dc] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd812748 calls fprintf with a0=sym(__iob)+32, a1=0xd840d14, a2=?, a3=?.
  The `jalr` at 0xd812778 calls ioctl with a0=?, a1=0xffffffffc0086914, a2=sp-32, a3=?.
  The `jalr` at 0xd8127bc calls isNotProxy [0xd8342dc] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8126b8 targets 0xd81269c, is taken when t8(?) != t1(=0xd8441f8), and falls through when t8(?) == t1(=0xd8441f8).
  The `beq` branch at 0xd8126f8 targets 0xd812714, is taken when a2(?) == at(=0x1), and falls through when a2(?) != at(=0x1).
  The `beq` branch at 0xd812704 targets 0xd812730, is taken when a2(?) == at(=0x2), and falls through when a2(?) != at(=0x2).
  The `beq` branch at 0xd81270c targets 0xd812738 and is always taken.
  The `beq` branch at 0xd812728 targets 0xd8127d8 and is always taken.
  The `beq` branch at 0xd812730 targets 0xd81275c and is always taken.
  The `beq` branch at 0xd812754 targets 0xd8127d8 and is always taken.
  The `beq` branch at 0xd812790 targets 0xd8127d4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xd8127a8 targets 0xd8127cc, is taken when v0(?) != a3(?), and falls through when v0(?) == a3(?).
  The `beq` branch at 0xd8127c4 targets 0xd8127d8 and is always taken.
  The `bne` branch at 0xd8127cc targets 0xd81279c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The return at 0xd8127e0 has v0 = one of ret(isNotProxy), 0x0.
  The instructions from 0xd8127e8 to 0xd81ef24 are not reached by any path from the entry, and their branches are not listed.

- `__glXGetModes` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd812848 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd812848-0xd8128e8 (160 bytes).
  It occupies 160 bytes.
  The `jalr` at 0xd812870 calls __glXFindFBConfig [0xd834598] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd812898 calls __glXFindFBConfigFromVid [0xd8344d0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd8128bc calls __glXFindVisualConfig with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0xd812878 targets 0xd812888, is taken when v0(=ret(__glXFindFBConfig)) == 0, and falls through when v0(=ret(__glXFindFBConfig)) != 0.
  The `beq` branch at 0xd812880 targets 0xd8128d8 and is always taken.
  The `beq` branch at 0xd8128a0 targets 0xd8128b0, is taken when v0(=ret(__glXFindFBConfigFromVid)) == 0, and falls through when v0(=ret(__glXFindFBConfigFromVid)) != 0.
  The `beq` branch at 0xd8128a8 targets 0xd8128d8 and is always taken.
  The `beq` branch at 0xd8128c4 targets 0xd8128d4, is taken when v0(=ret(__glXFindVisualConfig)) == 0, and falls through when v0(=ret(__glXFindVisualConfig)) != 0.
  The `beq` branch at 0xd8128cc targets 0xd8128d8 and is always taken.
  The return at 0xd8128e0 has v0 = one of ret(__glXFindFBConfig)+72, ret(__glXFindFBConfigFromVid)+72, ret(__glXFindVisualConfig)+40, 0x0.

- `__glXInitDummyContext` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8128e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8128e8-0xd812940 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xd812910 stores 4 bytes to abs 0xd846648.
  The `sw` at 0xd812914 stores 4 bytes to abs 0xd846644.
  The `sw` at 0xd812918 stores 4 bytes to abs 0xd846640.
  The `sw` at 0xd81291c stores 4 bytes to abs 0xd84664c.
  The `sw` at 0xd812920 stores 4 bytes to abs 0xd846650.
  The `sw` at 0xd812924 stores 4 bytes to abs 0xd846704.
  The `sw` at 0xd812928 stores 4 bytes to abs 0xd84671c.
  The `sw` at 0xd81292c stores 4 bytes to abs 0xd846720.
  The `sw` at 0xd812930 stores 4 bytes to abs 0xd846748.
  The `lw` at 0xd812934 loads 4 bytes from abs 0x1014.
  The `sw` at 0xd81293c stores 4 bytes to [0x1014] +0x114.
  The return at 0xd812938 has v0 = 0xd846640.

- `__glXPixmapMemory` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd812984 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd812984-0xd8129b8 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0xd81299c loads 4 bytes from abs 0xd846564.
  The `beq` branch at 0xd8129a0 targets 0xd8129b0, is taken when v1(=[0xd846564]) == 0, and falls through when v1(=[0xd846564]) != 0.
  The return at 0xd8129a8 has v0 = [0xd846564].
  The return at 0xd8129b0 has v0 = 0x0.

- `__glXGetBoardNumber` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8129b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8129b8-0xd8129c4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xd8129b8 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0xd8129c0 loads 4 bytes from [a0+76] +0x24.
  The return at 0xd8129bc has v0 = [[a0+76]+36].

- `__glx_Vertex4sv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8129c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8129c4-0xd812a54 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd8129d0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8129e0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8129ec loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8129f0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8129f4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd8129f8 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd812a00 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd812a04 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd812a08 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lh` at 0xd812a0c loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xd812a10 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lh` at 0xd812a14 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xd812a18 stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd812a1c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd812a20 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd812a38 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd812a28 targets 0xd812a48, is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd812a2c runs only when taken and is annulled on fall-through.
  The return at 0xd812a4c has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_ClipPlane` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd812a54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd812a54-0xd812b60 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0xd812a64 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd812a80 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd812a8c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd812a94 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd812a98 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd812b1c stores 4 bytes to [[[0x1014]+276]+4] +0x24.
  The `lw` at 0xd812b20 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd812b24 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd812aa8 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a1 at entry (arg1), a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd812ac8 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a1+8, a2=0x8, a3=?.
  The `jalr` at 0xd812ae8 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a1+16, a2=0x8, a3=?.
  The `jalr` at 0xd812b08 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=a1+24, a2=0x8, a3=?.
  The `jalr` at 0xd812b40 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+40, a2=?, a3=?.
  The `beql` branch at 0xd812b2c targets 0xd812b50, is taken when t0(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+40) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+40) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd812b30 runs only when taken and is annulled on fall-through.
  The return at 0xd812b58 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_PolygonMode` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd812b60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd812b60-0xd812bdc (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd812b6c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd812b7c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd812b88 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd812b8c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd812b90 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd812b94 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd812b98 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd812b9c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd812ba4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd812bc0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd812bac targets 0xd812bd0, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd812bb0 runs only when taken and is annulled on fall-through.
  The return at 0xd812bd4 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex4s` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd812bdc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd812bdc-0xd812c9c (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xd812bec loads 4 bytes from abs 0x1014.
  The `lw` at 0xd812c10 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd812c1c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd812c40 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd812c44 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd812c48 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd812c4c stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd812c50 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `sh` at 0xd812c54 stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd812c58 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd812c60 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd812c7c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=?.
  The `beql` branch at 0xd812c68 targets 0xd812c8c, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd812c6c runs only when taken and is annulled on fall-through.
  The return at 0xd812c94 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex4iv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd812c9c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd812c9c-0xd812d2c (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd812ca8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd812cb8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd812cc4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd812cc8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd812ccc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd812cd0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd812cd8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd812cdc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd812ce0 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd812ce4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xd812ce8 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd812cec loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xd812cf0 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd812cf4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd812cf8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd812d10 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd812d00 targets 0xd812d20, is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd812d04 runs only when taken and is annulled on fall-through.
  The return at 0xd812d24 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex4i` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd812d2c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd812d2c-0xd812dbc (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd812d3c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd812d50 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd812d5c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd812d60 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd812d64 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd812d68 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd812d6c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd812d70 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd812d74 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd812d78 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd812d80 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd812d9c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd812d88 targets 0xd812dac, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd812d8c runs only when taken and is annulled on fall-through.
  The return at 0xd812db4 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_ColorMaterial` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd812dbc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd812dbc-0xd812e38 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd812dc8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd812dd8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd812de4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd812de8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd812dec stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd812df0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd812df4 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd812df8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd812e00 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd812e1c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd812e08 targets 0xd812e2c, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd812e0c runs only when taken and is annulled on fall-through.
  The return at 0xd812e30 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_PointSize` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd812e38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd812e38-0xd812ea8 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd812e44 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd812e54 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd812e60 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd812e64 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd812e68 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd812e6c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd812e70 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd812e78 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd812e8c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd812e80 targets 0xd812e9c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd812e84 runs only when taken and is annulled on fall-through.
  The return at 0xd812ea0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_InitNames` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd812ea8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd812ea8-0xd812f14 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd812eb4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd812ec4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd812ed0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd812ed4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd812ed8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd812edc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd812ee4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd812ef8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd812eec targets 0xd812f08, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd812ef0 runs only when taken and is annulled on fall-through.
  The return at 0xd812f0c has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_LoadName` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd812f14 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd812f14-0xd812f88 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd812f20 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd812f30 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd812f3c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd812f40 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd812f44 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd812f48 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd812f4c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd812f54 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd812f6c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd812f5c targets 0xd812f7c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd812f60 runs only when taken and is annulled on fall-through.
  The return at 0xd812f80 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_CullFace` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd812f88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd812f88-0xd812ffc (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd812f94 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd812fa4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd812fb0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd812fb4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd812fb8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd812fbc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd812fc0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd812fc8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd812fe0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd812fd0 targets 0xd812ff0, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd812fd4 runs only when taken and is annulled on fall-through.
  The return at 0xd812ff4 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Fogf` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd812ffc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd812ffc-0xd813078 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd813008 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813018 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813024 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81302c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd813030 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd813034 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd813038 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81303c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813044 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81305c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81304c targets 0xd81306c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd813050 runs only when taken and is annulled on fall-through.
  The return at 0xd813070 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex4fv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd813078 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd813078-0xd813108 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd813084 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813094 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8130a0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8130a4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8130a8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd8130ac loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd8130b4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd8130b8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd8130bc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lwc1` at 0xd8130c0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xd8130c4 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lwc1` at 0xd8130c8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xd8130cc stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd8130d0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8130d4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8130ec calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8130dc targets 0xd8130fc, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8130e0 runs only when taken and is annulled on fall-through.
  The return at 0xd813100 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexParameterf` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd813108 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd813108-0xd81318c (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd813114 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813124 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813130 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813138 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd81313c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd813140 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd813144 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd813148 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd81314c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813154 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd813170 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[[0x1014]+276]+4]+16, a3=[[0x1014]+276].
  The `beql` branch at 0xd81315c targets 0xd813180, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd813160 runs only when taken and is annulled on fall-through.
  The return at 0xd813184 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexParameterfv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81318c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81318c-0xd813264 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd8131c4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8131d8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8131e4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8131e8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8131ec stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8131f8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd813200 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd813220 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813234 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8131b8 calls __glXTexParameterfv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd813210 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexParameterfv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd813244 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd813230 targets 0xd813250, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd81325c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_TexParameteri` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd813264 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd813264-0xd8132ec (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd813274 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813284 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813290 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813294 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd813298 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81329c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8132a0 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd8132a4 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd8132a8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8132b0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8132cc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd8132b8 targets 0xd8132dc, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8132bc runs only when taken and is annulled on fall-through.
  The return at 0xd8132e4 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexParameteriv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8132ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8132ec-0xd8133c4 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd813324 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813338 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813344 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813348 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81334c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd813358 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd813360 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd813380 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813394 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd813318 calls __glXTexParameteriv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd813370 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexParameteriv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8133a4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd813390 targets 0xd8133b0, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd8133bc has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_TexGeni` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8133c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8133c4-0xd81344c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8133d4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8133e4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8133f0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8133f4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8133f8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8133fc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd813400 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd813404 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd813408 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813410 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81342c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd813418 targets 0xd81343c, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81341c runs only when taken and is annulled on fall-through.
  The return at 0xd813444 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_ShadeModel` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81344c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81344c-0xd8134c0 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd813458 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813468 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813474 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813478 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81347c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd813480 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd813484 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81348c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8134a4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd813494 targets 0xd8134b4, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd813498 runs only when taken and is annulled on fall-through.
  The return at 0xd8134b8 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_PassThrough` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8134c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8134c0-0xd813530 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd8134cc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8134dc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8134e8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8134ec stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8134f0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd8134f4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd8134f8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813500 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd813514 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd813508 targets 0xd813524, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81350c runs only when taken and is annulled on fall-through.
  The return at 0xd813528 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex4f` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd813530 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd813530-0xd8135bc (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd813540 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813554 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813560 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813564 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd813568 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81356c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd813570 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd81357c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `swc1` at 0xd813584 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd813588 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81358c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8135a0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd813594 targets 0xd8135b0, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd813598 runs only when taken and is annulled on fall-through.
  The return at 0xd8135b4 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Scissor` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8135bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8135bc-0xd81364c (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd8135cc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8135e0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8135ec loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8135f0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8135f4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8135f8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8135fc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd813600 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd813604 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd813608 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813610 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81362c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd813618 targets 0xd81363c, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd81361c runs only when taken and is annulled on fall-through.
  The return at 0xd813644 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex4dv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81364c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81364c-0xd813748 (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xd81365c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813674 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813680 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813688 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81368c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd813704 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813718 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81369c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd8136bc calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd8136dc calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=?.
  The `jalr` at 0xd8136fc calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=a0+24, a2=0x8, a3=?.
  The `jalr` at 0xd813728 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd813714 targets 0xd813734, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd813740 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_PopName` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd813748 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd813748-0xd8137b4 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd813754 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813764 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813770 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813774 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd813778 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81377c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813784 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd813798 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81378c targets 0xd8137a8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd813790 runs only when taken and is annulled on fall-through.
  The return at 0xd8137ac has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex4d` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8137b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8137b4-0xd8138a8 (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0xd8137c4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8137e0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8137ec loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8137f8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8137fc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd813864 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813878 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd813808 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd813824 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd813840 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd81385c calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=?.
  The `jalr` at 0xd813888 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd813874 targets 0xd813894, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd8138a0 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_Fogfv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8138a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8138a8-0xd813970 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd8138d8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8138ec loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8138f8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8138fc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd813900 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81390c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81392c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813940 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8138cc calls __glXFogfv_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd81391c calls memcpy with a0=[[[0x1014]+276]+4]+8, a1=a1 at entry (arg1), a2=(ret(__glXFogfv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd813950 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd81393c targets 0xd81395c, is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd813968 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_LightModelf` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd813970 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd813970-0xd8139ec (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd81397c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81398c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813998 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8139a0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd8139a4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd8139a8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd8139ac stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd8139b0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8139b8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8139d0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8139c0 targets 0xd8139e0, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8139c4 runs only when taken and is annulled on fall-through.
  The return at 0xd8139e4 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Materialfv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8139ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8139ec-0xd813ac4 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd813a24 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813a38 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813a44 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813a48 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd813a4c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd813a58 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd813a60 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd813a80 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813a94 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd813a18 calls __glXMaterialfv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd813a70 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXMaterialfv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd813aa4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd813a90 targets 0xd813ab0, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd813abc has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_Lightiv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd813ac4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd813ac4-0xd813b9c (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd813afc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813b10 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813b1c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813b20 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd813b24 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd813b30 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd813b38 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd813b58 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813b6c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd813af0 calls __glXLightiv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd813b48 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXLightiv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd813b7c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd813b68 targets 0xd813b88, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd813b94 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_Lighti` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd813b9c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd813b9c-0xd813c24 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd813bac loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813bbc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813bc8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813bcc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd813bd0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd813bd4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd813bd8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd813bdc stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd813be0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813be8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd813c04 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd813bf0 targets 0xd813c14, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd813bf4 runs only when taken and is annulled on fall-through.
  The return at 0xd813c1c has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Lightfv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd813c24 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd813c24-0xd813cfc (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd813c5c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813c70 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813c7c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813c80 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd813c84 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd813c90 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd813c98 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd813cb8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813ccc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd813c50 calls __glXLightfv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd813ca8 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXLightfv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd813cdc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd813cc8 targets 0xd813ce8, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd813cf4 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_TexEnvfv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd813cfc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd813cfc-0xd813dd4 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd813d34 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813d48 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813d54 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813d58 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd813d5c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd813d68 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd813d70 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd813d90 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813da4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd813d28 calls __glXTexEnvfv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd813d80 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexEnvfv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd813db4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd813da0 targets 0xd813dc0, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd813dcc has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_Materialf` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd813dd4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd813dd4-0xd813e58 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd813de0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813df0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813dfc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813e04 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd813e08 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd813e0c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd813e10 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd813e14 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd813e18 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813e20 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd813e3c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[[0x1014]+276]+4]+16, a3=[[0x1014]+276].
  The `beql` branch at 0xd813e28 targets 0xd813e4c, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd813e2c runs only when taken and is annulled on fall-through.
  The return at 0xd813e50 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_LineWidth` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd813e58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd813e58-0xd813ec8 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd813e64 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813e74 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813e80 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813e84 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd813e88 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd813e8c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd813e90 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813e98 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd813eac calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd813ea0 targets 0xd813ebc, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd813ea4 runs only when taken and is annulled on fall-through.
  The return at 0xd813ec0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_LineStipple` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd813ec8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd813ec8-0xd813f48 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd813ed8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813ee8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813ef4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813ef8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd813efc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd813f00 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd813f04 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd813f08 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813f10 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd813f2c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd813f18 targets 0xd813f3c, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd813f1c runs only when taken and is annulled on fall-through.
  The return at 0xd813f40 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_LightModeliv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd813f48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd813f48-0xd814010 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd813f78 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd813f8c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd813f98 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd813f9c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd813fa0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd813fac stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd813fcc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd813fe0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd813f6c calls __glXLightModeliv_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd813fbc calls memcpy with a0=[[[0x1014]+276]+4]+8, a1=a1 at entry (arg1), a2=(ret(__glXLightModeliv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd813ff0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd813fdc targets 0xd813ffc, is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd814008 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_LightModeli` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd814010 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd814010-0xd81408c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd81401c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81402c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814038 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81403c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814040 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd814044 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd814048 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81404c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814054 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814070 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd81405c targets 0xd814080, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814060 runs only when taken and is annulled on fall-through.
  The return at 0xd814084 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_LightModelfv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81408c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81408c-0xd814154 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd8140bc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8140d0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8140dc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8140e0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8140e4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8140f0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd814110 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814124 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8140b0 calls __glXLightModelfv_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd814100 calls memcpy with a0=[[[0x1014]+276]+4]+8, a1=a1 at entry (arg1), a2=(ret(__glXLightModelfv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd814134 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd814120 targets 0xd814140, is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd81414c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_TexEnvf` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd814154 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd814154-0xd8141d8 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd814160 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814170 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81417c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814184 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd814188 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd81418c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd814190 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd814194 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd814198 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8141a0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8141bc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[[0x1014]+276]+4]+16, a3=[[0x1014]+276].
  The `beql` branch at 0xd8141a8 targets 0xd8141cc, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8141ac runs only when taken and is annulled on fall-through.
  The return at 0xd8141d0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexEnvi` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8141d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8141d8-0xd814260 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8141e8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8141f8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814204 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814208 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81420c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd814210 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd814214 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd814218 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd81421c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814224 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814240 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd81422c targets 0xd814250, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814230 runs only when taken and is annulled on fall-through.
  The return at 0xd814258 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Lightf` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd814260 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd814260-0xd8142e4 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd81426c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81427c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814288 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814290 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd814294 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd814298 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81429c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd8142a0 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd8142a4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8142ac stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8142c8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[[0x1014]+276]+4]+16, a3=[[0x1014]+276].
  The `beql` branch at 0xd8142b4 targets 0xd8142d8, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8142b8 runs only when taken and is annulled on fall-through.
  The return at 0xd8142dc has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Hint` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8142e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8142e4-0xd814360 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd8142f0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814300 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81430c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814310 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814314 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd814318 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81431c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd814320 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814328 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814344 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd814330 targets 0xd814354, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814334 runs only when taken and is annulled on fall-through.
  The return at 0xd814358 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexGeniv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd814360 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd814360-0xd814438 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd814398 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8143ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8143b8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8143bc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8143c0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8143cc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8143d4 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd8143f4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814408 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81438c calls __glXTexGeniv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8143e4 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexGeniv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd814418 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd814404 targets 0xd814424, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd814430 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_FrontFace` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd814438 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd814438-0xd8144ac (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd814444 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814454 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814460 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814464 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814468 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81446c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd814470 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814478 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814490 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd814480 targets 0xd8144a0, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814484 runs only when taken and is annulled on fall-through.
  The return at 0xd8144a4 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Fogiv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8144ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8144ac-0xd814574 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd8144dc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8144f0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8144fc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814500 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814504 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd814510 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd814530 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814544 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8144d0 calls __glXFogiv_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd814520 calls memcpy with a0=[[[0x1014]+276]+4]+8, a1=a1 at entry (arg1), a2=(ret(__glXFogiv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd814554 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd814540 targets 0xd814560, is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd81456c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_Fogi` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd814574 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd814574-0xd8145f0 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd814580 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814590 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81459c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8145a0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8145a4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8145a8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8145ac stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd8145b0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8145b8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8145d4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd8145c0 targets 0xd8145e4, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8145c4 runs only when taken and is annulled on fall-through.
  The return at 0xd8145e8 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Materialiv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8145f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8145f0-0xd8146c8 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd814628 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81463c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814648 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81464c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814650 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81465c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd814664 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd814684 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814698 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81461c calls __glXMaterialiv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd814674 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXMaterialiv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8146a8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd814694 targets 0xd8146b4, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd8146c0 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_TexEnviv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8146c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8146c8-0xd8147a0 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd814700 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814714 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814720 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814724 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814728 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd814734 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81473c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81475c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814770 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8146f4 calls __glXTexEnviv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd81474c calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexEnviv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd814780 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd81476c targets 0xd81478c, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd814798 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_TexGend` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8147a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8147a0-0xd814860 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xd8147b0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8147d0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8147dc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8147e8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8147ec stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd814814, `sw` at 0xd81481c.
  The `lw` at 0xd814820 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814824 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8147fc calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp+8, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd814840 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81482c targets 0xd814850, is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814830 runs only when taken and is annulled on fall-through.
  The return at 0xd814858 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_TexGendv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd814860 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd814860-0xd814938 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd814898 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8148ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8148b8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8148bc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8148c0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8148cc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8148d4 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd8148f4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814908 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81488c calls __glXTexGendv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8148e4 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexGendv_size) << 0x3), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd814918 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd814904 targets 0xd814924, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd814930 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_TexGenf` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd814938 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd814938-0xd8149bc (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd814944 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814954 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814960 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814968 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd81496c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd814970 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd814974 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd814978 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd81497c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814984 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8149a0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[[0x1014]+276]+4]+16, a3=[[0x1014]+276].
  The `beql` branch at 0xd81498c targets 0xd8149b0, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814990 runs only when taken and is annulled on fall-through.
  The return at 0xd8149b4 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexGenfv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8149bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8149bc-0xd814a94 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd8149f4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814a08 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814a14 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814a18 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814a1c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd814a28 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd814a30 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd814a50 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814a64 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8149e8 calls __glXTexGenfv_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd814a40 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXTexGenfv_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd814a74 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd814a60 targets 0xd814a80, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd814a8c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_Materiali` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd814a94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd814a94-0xd814b1c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd814aa4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814ab4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814ac0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814ac4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814ac8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd814acc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd814ad0 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd814ad4 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd814ad8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814ae0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814afc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd814ae8 targets 0xd814b0c, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814aec runs only when taken and is annulled on fall-through.
  The return at 0xd814b14 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex3d` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd814b1c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd814b1c-0xd814bfc (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd814b2c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814b44 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814b50 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814b5c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814b60 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd814bbc loads 4 bytes from ?.
  The `sw` at 0xd814bc0 stores 4 bytes to ?.
  The `jalr` at 0xd814b70 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd814b8c calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd814ba8 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd814bdc calls __glXFlushRenderBuffer with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=?.
  The `beql` branch at 0xd814bc8 targets 0xd814bec, is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814bcc runs only when taken and is annulled on fall-through.
  The return at 0xd814bf4 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_TexCoord1d` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd814bfc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd814bfc-0xd814c9c (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd814c0c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814c20 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814c2c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814c38 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814c3c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd814c58 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814c6c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814c4c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd814c7c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd814c68 targets 0xd814c88, is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd814c94 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_Rectsv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd814c9c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd814c9c-0xd814d30 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd814ca8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814cb8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814cc4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814cc8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814ccc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd814cd0 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd814cd8 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd814cdc loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd814ce0 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lh` at 0xd814ce4 loads 2 bytes from a1 (arg1 at entry) +0x0.
  The `sh` at 0xd814ce8 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lh` at 0xd814cec loads 2 bytes from a1 (arg1 at entry) +0x2.
  The `sh` at 0xd814cf0 stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd814cf4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814cf8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814d14 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd814d00 targets 0xd814d24, is taken when t3(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814d04 runs only when taken and is annulled on fall-through.
  The return at 0xd814d28 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Rects` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd814d30 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd814d30-0xd814df0 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xd814d40 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814d64 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814d70 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814d94 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd814d98 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814d9c stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd814da0 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd814da4 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `sh` at 0xd814da8 stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd814dac loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814db4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814dd0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=?.
  The `beql` branch at 0xd814dbc targets 0xd814de0, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd814dc0 runs only when taken and is annulled on fall-through.
  The return at 0xd814de8 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Rectiv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd814df0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd814df0-0xd814e84 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd814dfc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814e0c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814e18 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814e1c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814e20 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd814e24 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd814e2c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd814e30 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd814e34 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd814e38 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `sw` at 0xd814e3c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd814e40 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `sw` at 0xd814e44 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd814e48 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814e4c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814e68 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[[0x1014]+276]+4]+20, a3=[[0x1014]+276].
  The `beql` branch at 0xd814e54 targets 0xd814e78, is taken when t3(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814e58 runs only when taken and is annulled on fall-through.
  The return at 0xd814e7c has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Rectdv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd814e84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd814e84-0xd814f80 (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xd814e94 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814eb0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814ebc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814ec4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814ec8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd814f3c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814f50 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814ed8 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd814ef8 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd814f14 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a1 at entry (arg1), a2=0x8, a3=?.
  The `jalr` at 0xd814f34 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=a1+8, a2=0x8, a3=?.
  The `jalr` at 0xd814f60 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd814f4c targets 0xd814f6c, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd814f78 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_Rectf` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd814f80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd814f80-0xd81500c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd814f90 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814fa4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814fb0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd814fb4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd814fb8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd814fbc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd814fc0 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd814fcc stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `swc1` at 0xd814fd4 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd814fd8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd814fdc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814ff0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd814fe4 targets 0xd815000, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd814fe8 runs only when taken and is annulled on fall-through.
  The return at 0xd815004 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Rectfv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81500c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81500c-0xd8150a0 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd815018 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815028 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815034 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815038 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81503c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd815040 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd815048 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd81504c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd815050 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lwc1` at 0xd815054 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0xd815058 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lwc1` at 0xd81505c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xd815060 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd815064 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815068 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815084 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[[0x1014]+276]+4]+20, a3=[[0x1014]+276].
  The `beql` branch at 0xd815070 targets 0xd815094, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815074 runs only when taken and is annulled on fall-through.
  The return at 0xd815098 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Recti` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8150a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8150a0-0xd815130 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd8150b0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8150c4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8150d0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8150d4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8150d8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8150dc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8150e0 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd8150e4 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd8150e8 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd8150ec loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8150f4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815110 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd8150fc targets 0xd815120, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd815100 runs only when taken and is annulled on fall-through.
  The return at 0xd815128 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord1dv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd815130 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd815130-0xd8151cc (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd815140 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815150 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81515c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815168 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81516c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd815188 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81519c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81517c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8151ac calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd815198 targets 0xd8151b8, is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd8151c4 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_TexCoord2dv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8151cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8151cc-0xd815288 (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0xd8151dc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8151f0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8151fc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815204 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815208 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd815244 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815258 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815218 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd815238 calls memcpy with a0=?, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd815268 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd815254 targets 0xd815274, is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd815280 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_TexCoord2d` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd815288 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd815288-0xd81534c (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xd815298 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8152b0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8152bc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8152c8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8152cc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd815308 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81531c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8152dc calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8152fc calls memcpy with a0=?, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd81532c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd815318 targets 0xd815338, is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd815344 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_TexCoord1sv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81534c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81534c-0xd8153c4 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd815358 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815368 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815374 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815378 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81537c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd815380 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd815388 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81538c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815390 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8153a8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815398 targets 0xd8153b8, is taken when t0(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81539c runs only when taken and is annulled on fall-through.
  The return at 0xd8153bc has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord1s` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8153c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8153c4-0xd815444 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd8153d4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8153e4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8153f0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8153fc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd815400 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815404 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd815408 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815410 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815428 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815418 targets 0xd815438, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81541c runs only when taken and is annulled on fall-through.
  The return at 0xd81543c has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord1f` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd815444 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd815444-0xd8154b4 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd815450 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815460 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81546c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815470 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815474 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd815478 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81547c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815484 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815498 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81548c targets 0xd8154a8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815490 runs only when taken and is annulled on fall-through.
  The return at 0xd8154ac has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord1fv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8154b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8154b4-0xd81552c (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd8154c0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8154d0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8154dc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8154e0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8154e4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd8154e8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd8154f0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd8154f4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8154f8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815510 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815500 targets 0xd815520, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815504 runs only when taken and is annulled on fall-through.
  The return at 0xd815524 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord1i` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81552c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81552c-0xd8155a0 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd815538 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815548 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815554 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815558 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81555c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd815560 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd815564 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81556c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815584 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815574 targets 0xd815594, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815578 runs only when taken and is annulled on fall-through.
  The return at 0xd815598 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord1iv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8155a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8155a0-0xd815618 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd8155ac loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8155bc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8155c8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8155cc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8155d0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8155d4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd8155dc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd8155e0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8155e4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8155fc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8155ec targets 0xd81560c, is taken when t0(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8155f0 runs only when taken and is annulled on fall-through.
  The return at 0xd815610 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Rectd` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd815618 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd815618-0xd81570c (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0xd815628 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815644 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815650 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81565c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815660 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8156c8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8156dc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81566c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd815688 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd8156a4 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd8156c0 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=?.
  The `jalr` at 0xd8156ec calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd8156d8 targets 0xd8156f8, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd815704 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_RasterPos3s` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81570c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81570c-0xd8157b8 (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xd81571c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815738 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815744 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815760 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd815764 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815768 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd81576c stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd815770 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd815774 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81577c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815798 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12.
  The `beql` branch at 0xd815784 targets 0xd8157a8, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815788 runs only when taken and is annulled on fall-through.
  The return at 0xd8157b0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_RasterPos3iv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8157b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8157b8-0xd815840 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8157c4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8157d4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8157e0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8157e4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8157e8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8157ec loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd8157f4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd8157f8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd8157fc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd815800 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xd815804 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd815808 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81580c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815824 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815814 targets 0xd815834, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815818 runs only when taken and is annulled on fall-through.
  The return at 0xd815838 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_RasterPos3i` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd815840 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd815840-0xd8158c8 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd815850 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815860 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81586c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815870 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815874 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd815878 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81587c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd815880 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd815884 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81588c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8158a8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd815894 targets 0xd8158b8, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815898 runs only when taken and is annulled on fall-through.
  The return at 0xd8158c0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_RasterPos3fv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8158c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8158c8-0xd815950 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8158d4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8158e4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8158f0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8158f4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8158f8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd8158fc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd815904 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd815908 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd81590c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lwc1` at 0xd815910 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xd815914 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd815918 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81591c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815934 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815924 targets 0xd815944, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815928 runs only when taken and is annulled on fall-through.
  The return at 0xd815948 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_RasterPos2sv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd815950 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd815950-0xd8159d0 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd81595c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81596c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815978 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81597c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815980 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd815984 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd81598c stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd815990 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd815994 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd815998 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81599c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8159b4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8159a4 targets 0xd8159c4, is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8159a8 runs only when taken and is annulled on fall-through.
  The return at 0xd8159c8 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_RasterPos3d` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8159d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8159d0-0xd815ab0 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd8159e0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8159f8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815a04 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815a10 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815a14 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd815a70 loads 4 bytes from ?.
  The `sw` at 0xd815a74 stores 4 bytes to ?.
  The `jalr` at 0xd815a24 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd815a40 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd815a5c calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd815a90 calls __glXFlushRenderBuffer with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=?.
  The `beql` branch at 0xd815a7c targets 0xd815aa0, is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815a80 runs only when taken and is annulled on fall-through.
  The return at 0xd815aa8 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_RasterPos3dv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd815ab0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd815ab0-0xd815b90 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd815ac0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815ad4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815ae0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815ae8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815aec stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd815b50 loads 4 bytes from ?.
  The `sw` at 0xd815b54 stores 4 bytes to ?.
  The `jalr` at 0xd815afc calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd815b1c calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd815b3c calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=?.
  The `jalr` at 0xd815b70 calls __glXFlushRenderBuffer with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=?.
  The `beql` branch at 0xd815b5c targets 0xd815b80, is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815b60 runs only when taken and is annulled on fall-through.
  The return at 0xd815b88 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_RasterPos3f` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd815b90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd815b90-0xd815c10 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd815ba0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815bb0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815bbc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815bc0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815bc4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd815bc8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd815bcc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd815bd8 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd815bdc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815be0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815bf4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd815be8 targets 0xd815c04, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815bec runs only when taken and is annulled on fall-through.
  The return at 0xd815c08 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_RasterPos3sv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd815c10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd815c10-0xd815c98 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd815c1c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815c2c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815c38 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815c3c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815c40 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd815c44 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd815c4c stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd815c50 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd815c54 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lh` at 0xd815c58 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xd815c5c stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd815c60 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815c64 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815c7c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815c6c targets 0xd815c8c, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815c70 runs only when taken and is annulled on fall-through.
  The return at 0xd815c90 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_RasterPos4sv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd815c98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd815c98-0xd815d28 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd815ca4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815cb4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815cc0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815cc4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815cc8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd815ccc loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd815cd4 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd815cd8 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd815cdc stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lh` at 0xd815ce0 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xd815ce4 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lh` at 0xd815ce8 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xd815cec stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd815cf0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815cf4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815d0c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815cfc targets 0xd815d1c, is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815d00 runs only when taken and is annulled on fall-through.
  The return at 0xd815d20 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_RasterPos4s` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd815d28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd815d28-0xd815de8 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xd815d38 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815d5c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815d68 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815d8c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd815d90 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815d94 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd815d98 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd815d9c stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `sh` at 0xd815da0 stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd815da4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815dac stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815dc8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=?.
  The `beql` branch at 0xd815db4 targets 0xd815dd8, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd815db8 runs only when taken and is annulled on fall-through.
  The return at 0xd815de0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_RasterPos4iv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd815de8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd815de8-0xd815e78 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd815df4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815e04 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815e10 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815e14 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815e18 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd815e1c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd815e24 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd815e28 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd815e2c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd815e30 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xd815e34 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd815e38 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xd815e3c stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd815e40 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815e44 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815e5c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd815e4c targets 0xd815e6c, is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd815e50 runs only when taken and is annulled on fall-through.
  The return at 0xd815e70 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_RasterPos4i` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd815e78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd815e78-0xd815f08 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd815e88 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815e9c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815ea8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815eac stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815eb0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd815eb4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd815eb8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd815ebc stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd815ec0 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd815ec4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815ecc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815ee8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd815ed4 targets 0xd815ef8, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd815ed8 runs only when taken and is annulled on fall-through.
  The return at 0xd815f00 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_RasterPos4d` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd815f08 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd815f08-0xd815ffc (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0xd815f18 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815f34 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815f40 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd815f4c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd815f50 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd815fb8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815fcc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815f5c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd815f78 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd815f94 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd815fb0 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=?.
  The `jalr` at 0xd815fdc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd815fc8 targets 0xd815fe8, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd815ff4 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_RasterPos4dv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd815ffc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd815ffc-0xd8160f8 (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xd81600c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816024 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816030 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816038 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81603c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8160b4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8160c8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81604c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd81606c calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd81608c calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=?.
  The `jalr` at 0xd8160ac calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=a0+24, a2=0x8, a3=?.
  The `jalr` at 0xd8160d8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd8160c4 targets 0xd8160e4, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd8160f0 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_RasterPos4f` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8160f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8160f8-0xd816184 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd816108 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81611c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816128 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81612c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816130 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd816134 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd816138 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd816144 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `swc1` at 0xd81614c stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd816150 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816154 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816168 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81615c targets 0xd816178, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816160 runs only when taken and is annulled on fall-through.
  The return at 0xd81617c has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_RasterPos4fv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816184 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816184-0xd816214 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd816190 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8161a0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8161ac loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8161b0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8161b4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd8161b8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd8161c0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd8161c4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd8161c8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lwc1` at 0xd8161cc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xd8161d0 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lwc1` at 0xd8161d4 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xd8161d8 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd8161dc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8161e0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8161f8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8161e8 targets 0xd816208, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8161ec runs only when taken and is annulled on fall-through.
  The return at 0xd81620c has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord2f` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816214 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816214-0xd816288 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd816220 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816230 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81623c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816240 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816244 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd816248 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81624c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd816250 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816258 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81626c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd816260 targets 0xd81627c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816264 runs only when taken and is annulled on fall-through.
  The return at 0xd816280 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex2iv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816288 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816288-0xd816308 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd816294 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8162a4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8162b0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8162b4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8162b8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8162bc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd8162c4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd8162c8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd8162cc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd8162d0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8162d4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8162ec calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8162dc targets 0xd8162fc, is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8162e0 runs only when taken and is annulled on fall-through.
  The return at 0xd816300 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex2i` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816308 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816308-0xd816384 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd816314 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816324 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816330 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816334 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816338 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81633c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd816340 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd816344 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81634c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816368 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd816354 targets 0xd816378, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816358 runs only when taken and is annulled on fall-through.
  The return at 0xd81637c has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex2fv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816384 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816384-0xd816404 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd816390 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8163a0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8163ac loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8163b0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8163b4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd8163b8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd8163c0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd8163c4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd8163c8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd8163cc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8163d0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8163e8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8163d8 targets 0xd8163f8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8163dc runs only when taken and is annulled on fall-through.
  The return at 0xd8163fc has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex2f` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816404 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816404-0xd816478 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd816410 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816420 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81642c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816430 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816434 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd816438 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81643c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd816440 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816448 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81645c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd816450 targets 0xd81646c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816454 runs only when taken and is annulled on fall-through.
  The return at 0xd816470 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord4s` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816478 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816478-0xd816538 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xd816488 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8164ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8164b8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8164dc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd8164e0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8164e4 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd8164e8 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd8164ec stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `sh` at 0xd8164f0 stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd8164f4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8164fc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816518 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=?.
  The `beql` branch at 0xd816504 targets 0xd816528, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd816508 runs only when taken and is annulled on fall-through.
  The return at 0xd816530 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord4sv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816538 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816538-0xd8165c8 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd816544 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816554 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816560 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816564 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816568 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd81656c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd816574 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd816578 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd81657c stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lh` at 0xd816580 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xd816584 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lh` at 0xd816588 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xd81658c stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd816590 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816594 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8165ac calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81659c targets 0xd8165bc, is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8165a0 runs only when taken and is annulled on fall-through.
  The return at 0xd8165c0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex2d` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8165c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8165c8-0xd81668c (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xd8165d8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8165f0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8165fc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816608 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81660c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd816648 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81665c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81661c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81663c calls memcpy with a0=?, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd81666c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd816658 targets 0xd816678, is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd816684 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_Vertex2dv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81668c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81668c-0xd816748 (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0xd81669c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8166b0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8166bc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8166c4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8166c8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd816704 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816718 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8166d8 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8166f8 calls memcpy with a0=?, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd816728 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd816714 targets 0xd816734, is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd816740 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_Vertex2s` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816748 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816748-0xd8167dc (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd816758 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81676c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816778 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81678c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd816790 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816794 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd816798 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd81679c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8167a4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8167c0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[[0x1014]+276]+4]+8, a3=[[0x1014]+276].
  The `beql` branch at 0xd8167ac targets 0xd8167d0, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8167b0 runs only when taken and is annulled on fall-through.
  The return at 0xd8167d4 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex3sv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8167dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8167dc-0xd816864 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8167e8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8167f8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816804 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816808 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81680c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd816810 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd816818 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd81681c loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd816820 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lh` at 0xd816824 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xd816828 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81682c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816830 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816848 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd816838 targets 0xd816858, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81683c runs only when taken and is annulled on fall-through.
  The return at 0xd81685c has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex3s` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816864 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816864-0xd816910 (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xd816874 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816890 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81689c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8168b8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd8168bc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8168c0 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd8168c4 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd8168c8 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd8168cc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8168d4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8168f0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12.
  The `beql` branch at 0xd8168dc targets 0xd816900, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8168e0 runs only when taken and is annulled on fall-through.
  The return at 0xd816908 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex3iv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816910 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816910-0xd816998 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd81691c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81692c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816938 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81693c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816940 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd816944 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd81694c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd816950 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd816954 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd816958 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xd81695c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd816960 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816964 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81697c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81696c targets 0xd81698c, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816970 runs only when taken and is annulled on fall-through.
  The return at 0xd816990 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex3i` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816998 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816998-0xd816a20 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8169a8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8169b8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8169c4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8169c8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8169cc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8169d0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8169d4 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd8169d8 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd8169dc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8169e4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816a00 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd8169ec targets 0xd816a10, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8169f0 runs only when taken and is annulled on fall-through.
  The return at 0xd816a18 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex2sv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816a20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816a20-0xd816aa0 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd816a2c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816a3c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816a48 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816a4c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816a50 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd816a54 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd816a5c stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd816a60 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd816a64 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd816a68 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816a6c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816a84 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd816a74 targets 0xd816a94, is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816a78 runs only when taken and is annulled on fall-through.
  The return at 0xd816a98 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex3dv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816aa0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816aa0-0xd816b80 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd816ab0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816ac4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816ad0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816ad8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816adc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd816b40 loads 4 bytes from ?.
  The `sw` at 0xd816b44 stores 4 bytes to ?.
  The `jalr` at 0xd816aec calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd816b0c calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd816b2c calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=?.
  The `jalr` at 0xd816b60 calls __glXFlushRenderBuffer with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=?.
  The `beql` branch at 0xd816b4c targets 0xd816b70, is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816b50 runs only when taken and is annulled on fall-through.
  The return at 0xd816b78 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_Vertex3f` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816b80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816b80-0xd816c00 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd816b90 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816ba0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816bac loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816bb0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816bb4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd816bb8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd816bbc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd816bc8 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd816bcc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816bd0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816be4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd816bd8 targets 0xd816bf4, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816bdc runs only when taken and is annulled on fall-through.
  The return at 0xd816bf8 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Vertex3fv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816c00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816c00-0xd816c88 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd816c0c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816c1c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816c28 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816c2c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816c30 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd816c34 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd816c3c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd816c40 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd816c44 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lwc1` at 0xd816c48 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xd816c4c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd816c50 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816c54 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816c6c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd816c5c targets 0xd816c7c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816c60 runs only when taken and is annulled on fall-through.
  The return at 0xd816c80 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord4iv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816c88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816c88-0xd816d18 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd816c94 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816ca4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816cb0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816cb4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816cb8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd816cbc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd816cc4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd816cc8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd816ccc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd816cd0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xd816cd4 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd816cd8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xd816cdc stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd816ce0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816ce4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816cfc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd816cec targets 0xd816d0c, is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816cf0 runs only when taken and is annulled on fall-through.
  The return at 0xd816d10 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord3f` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816d18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816d18-0xd816d98 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd816d28 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816d38 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816d44 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816d48 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816d4c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd816d50 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd816d54 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd816d60 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd816d64 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816d68 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816d7c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd816d70 targets 0xd816d8c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816d74 runs only when taken and is annulled on fall-through.
  The return at 0xd816d90 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord3dv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816d98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816d98-0xd816e78 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd816da8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816dbc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816dc8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816dd0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816dd4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd816e38 loads 4 bytes from ?.
  The `sw` at 0xd816e3c stores 4 bytes to ?.
  The `jalr` at 0xd816de4 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd816e04 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd816e24 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=?.
  The `jalr` at 0xd816e58 calls __glXFlushRenderBuffer with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=?.
  The `beql` branch at 0xd816e44 targets 0xd816e68, is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816e48 runs only when taken and is annulled on fall-through.
  The return at 0xd816e70 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_TexCoord3d` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816e78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816e78-0xd816f58 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd816e88 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816ea0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816eac loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816eb8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816ebc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd816f18 loads 4 bytes from ?.
  The `sw` at 0xd816f1c stores 4 bytes to ?.
  The `jalr` at 0xd816ecc calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276].
  The `jalr` at 0xd816ee8 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd816f04 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd816f38 calls __glXFlushRenderBuffer with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=?.
  The `beql` branch at 0xd816f24 targets 0xd816f48, is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816f28 runs only when taken and is annulled on fall-through.
  The return at 0xd816f50 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_TexCoord2sv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816f58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816f58-0xd816fd8 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd816f64 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816f74 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816f80 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd816f84 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd816f88 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd816f8c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd816f94 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd816f98 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd816f9c stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd816fa0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd816fa4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd816fbc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd816fac targets 0xd816fcc, is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd816fb0 runs only when taken and is annulled on fall-through.
  The return at 0xd816fd0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord2fv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd816fd8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd816fd8-0xd817058 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd816fe4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816ff4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817000 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817004 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817008 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd81700c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd817014 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd817018 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd81701c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd817020 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817024 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81703c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81702c targets 0xd81704c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd817030 runs only when taken and is annulled on fall-through.
  The return at 0xd817050 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord2i` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd817058 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd817058-0xd8170d4 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd817064 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817074 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817080 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817084 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817088 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81708c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd817090 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd817094 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81709c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8170b8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd8170a4 targets 0xd8170c8, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8170a8 runs only when taken and is annulled on fall-through.
  The return at 0xd8170cc has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord2iv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8170d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8170d4-0xd817154 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd8170e0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8170f0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8170fc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817100 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817104 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd817108 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd817110 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd817114 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd817118 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81711c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817120 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817138 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd817128 targets 0xd817148, is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81712c runs only when taken and is annulled on fall-through.
  The return at 0xd81714c has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord2s` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd817154 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd817154-0xd8171e8 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd817164 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817178 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817184 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817198 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd81719c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8171a0 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd8171a4 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd8171a8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8171b0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8171cc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[[0x1014]+276]+4]+8, a3=[[0x1014]+276].
  The `beql` branch at 0xd8171b8 targets 0xd8171dc, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8171bc runs only when taken and is annulled on fall-through.
  The return at 0xd8171e0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord3fv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8171e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8171e8-0xd817270 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8171f4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817204 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817210 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817214 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817218 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd81721c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd817224 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd817228 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd81722c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lwc1` at 0xd817230 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xd817234 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd817238 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81723c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817254 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd817244 targets 0xd817264, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd817248 runs only when taken and is annulled on fall-through.
  The return at 0xd817268 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord4dv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd817270 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd817270-0xd81736c (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xd817280 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817298 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8172a4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8172ac stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8172b0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd817328 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81733c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8172c0 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd8172e0 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd817300 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=?.
  The `jalr` at 0xd817320 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=a0+24, a2=0x8, a3=?.
  The `jalr` at 0xd81734c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd817338 targets 0xd817358, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd817364 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_TexCoord4f` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81736c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81736c-0xd8173f8 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd81737c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817390 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81739c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8173a0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8173a4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd8173a8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd8173ac stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd8173b8 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `swc1` at 0xd8173c0 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd8173c4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8173c8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8173dc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd8173d0 targets 0xd8173ec, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8173d4 runs only when taken and is annulled on fall-through.
  The return at 0xd8173f0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord4fv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8173f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8173f8-0xd817488 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd817404 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817414 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817420 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817424 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817428 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd81742c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd817434 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd817438 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd81743c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lwc1` at 0xd817440 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xd817444 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lwc1` at 0xd817448 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xd81744c stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd817450 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817454 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81746c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81745c targets 0xd81747c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd817460 runs only when taken and is annulled on fall-through.
  The return at 0xd817480 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord4i` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd817488 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd817488-0xd817518 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd817498 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8174ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8174b8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8174bc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8174c0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8174c4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8174c8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd8174cc stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd8174d0 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd8174d4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8174dc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8174f8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd8174e4 targets 0xd817508, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd8174e8 runs only when taken and is annulled on fall-through.
  The return at 0xd817510 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord4d` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd817518 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd817518-0xd81760c (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0xd817528 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817544 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817550 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81755c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817560 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8175c8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8175dc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81756c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd817588 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd8175a4 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd8175c0 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=?.
  The `jalr` at 0xd8175ec calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd8175d8 targets 0xd8175f8, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd817604 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_TexCoord3i` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81760c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81760c-0xd817694 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd81761c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81762c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817638 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81763c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817640 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd817644 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd817648 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd81764c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd817650 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817658 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817674 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd817660 targets 0xd817684, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd817664 runs only when taken and is annulled on fall-through.
  The return at 0xd81768c has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord3iv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd817694 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd817694-0xd81771c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8176a0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8176b0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8176bc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8176c0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8176c4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8176c8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd8176d0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd8176d4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd8176d8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd8176dc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xd8176e0 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd8176e4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8176e8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817700 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd8176f0 targets 0xd817710, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8176f4 runs only when taken and is annulled on fall-through.
  The return at 0xd817714 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord3s` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81771c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81771c-0xd8177c8 (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xd81772c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817748 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817754 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817770 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd817774 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817778 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd81777c stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd817780 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd817784 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81778c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8177a8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12.
  The `beql` branch at 0xd817794 targets 0xd8177b8, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd817798 runs only when taken and is annulled on fall-through.
  The return at 0xd8177c0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TexCoord3sv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8177c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8177c8-0xd817850 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd8177d4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8177e4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8177f0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8177f4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8177f8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd8177fc loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd817804 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lh` at 0xd817808 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd81780c stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lh` at 0xd817810 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xd817814 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd817818 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81781c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817834 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd817824 targets 0xd817844, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd817828 runs only when taken and is annulled on fall-through.
  The return at 0xd817848 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_EvalCoord1fv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd817850 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd817850-0xd8178c8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd81785c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81786c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817878 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81787c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817880 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd817884 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd81788c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd817890 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817894 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8178ac calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81789c targets 0xd8178bc, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8178a0 runs only when taken and is annulled on fall-through.
  The return at 0xd8178c0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_CopyTexSubImage2DEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8178c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8178c8-0xd817978 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xd8178d8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8178ec loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8178f8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8178fc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817900 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd817904 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd817908 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd81790c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd817910 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd81791c stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `sw` at 0xd817924 stores 4 bytes to [[[0x1014]+276]+4] +0x18.
  The `sw` at 0xd81792c stores 4 bytes to [[[0x1014]+276]+4] +0x1c.
  The `sw` at 0xd817934 stores 4 bytes to [[[0x1014]+276]+4] +0x20.
  The `lw` at 0xd817938 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81793c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817958 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd817944 targets 0xd817968, is taken when t3(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd817948 runs only when taken and is annulled on fall-through.
  The return at 0xd817970 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_CopyTexSubImage1DEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd817978 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd817978-0xd817a18 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd817988 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81799c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8179a8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8179ac stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8179b0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8179b4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8179b8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd8179bc stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd8179c0 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd8179cc stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `sw` at 0xd8179d4 stores 4 bytes to [[[0x1014]+276]+4] +0x18.
  The `lw` at 0xd8179d8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8179dc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8179f8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd8179e4 targets 0xd817a08, is taken when t1(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd8179e8 runs only when taken and is annulled on fall-through.
  The return at 0xd817a10 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_CopyTexImage2DEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd817a18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd817a18-0xd817ac8 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xd817a28 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817a3c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817a48 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817a4c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817a50 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd817a54 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd817a58 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd817a5c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd817a60 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd817a6c stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `sw` at 0xd817a74 stores 4 bytes to [[[0x1014]+276]+4] +0x18.
  The `sw` at 0xd817a7c stores 4 bytes to [[[0x1014]+276]+4] +0x1c.
  The `sw` at 0xd817a84 stores 4 bytes to [[[0x1014]+276]+4] +0x20.
  The `lw` at 0xd817a88 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817a8c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817aa8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd817a94 targets 0xd817ab8, is taken when t3(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd817a98 runs only when taken and is annulled on fall-through.
  The return at 0xd817ac0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_CopyTexImage1DEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd817ac8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd817ac8-0xd817b70 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xd817ad8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817aec loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817af8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817afc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817b00 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd817b04 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd817b08 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd817b0c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd817b10 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd817b1c stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `sw` at 0xd817b24 stores 4 bytes to [[[0x1014]+276]+4] +0x18.
  The `sw` at 0xd817b2c stores 4 bytes to [[[0x1014]+276]+4] +0x1c.
  The `lw` at 0xd817b30 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817b34 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817b50 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd817b3c targets 0xd817b60, is taken when t2(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+32) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+32) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd817b40 runs only when taken and is annulled on fall-through.
  The return at 0xd817b68 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_CopyColorTableSGI` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd817b70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd817b70-0xd817c08 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xd817b80 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817b94 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817ba0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817ba4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817ba8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd817bac stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd817bb0 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd817bb4 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd817bb8 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd817bc4 stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `lw` at 0xd817bc8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817bcc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817be8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+24, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd817bd4 targets 0xd817bf8, is taken when t0(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+24) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+24) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd817bd8 runs only when taken and is annulled on fall-through.
  The return at 0xd817c00 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_ColorTableParameterivSGI` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd817c08 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd817c08-0xd817ce0 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd817c40 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817c54 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817c60 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817c64 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817c68 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd817c74 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd817c7c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd817c9c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817cb0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817c34 calls __glXColorTableParameterivSGI_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd817c8c calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXColorTableParameterivSGI_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd817cc0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd817cac targets 0xd817ccc, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd817cd8 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_CopyTexSubImage3DEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd817ce0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd817ce0-0xd817d98 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xd817cf0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817d04 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817d10 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd817d14 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd817d18 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd817d1c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd817d20 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd817d24 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd817d28 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd817d34 stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `sw` at 0xd817d3c stores 4 bytes to [[[0x1014]+276]+4] +0x18.
  The `sw` at 0xd817d44 stores 4 bytes to [[[0x1014]+276]+4] +0x1c.
  The `sw` at 0xd817d4c stores 4 bytes to [[[0x1014]+276]+4] +0x20.
  The `sw` at 0xd817d54 stores 4 bytes to [[[0x1014]+276]+4] +0x24.
  The `lw` at 0xd817d58 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd817d5c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd817d78 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd817d64 targets 0xd817d88, is taken when t4(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+40) (unsigned), and falls through when t4(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+40) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd817d68 runs only when taken and is annulled on fall-through.
  The return at 0xd817d90 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_GetMapdv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd817d98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd817d98-0xd817f48 (432 bytes).
  It occupies 432 bytes.
  The `lw` at 0xd817da8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817dc8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817dcc loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd817dd0 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd817df0, `lw` at 0xd817ef8.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd817dfc, `lw` at 0xd817e14, `lw` at 0xd817e40.
  The `lw` at 0xd817e00 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd817e18 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd817e28, `sw` at 0xd817e44.
  The `sh` at 0xd817e4c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd817e50, `sb` at 0xd817e7c.
  The `lw` at 0xd817e54 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd817e68 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd817e6c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd817e70 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd817e74 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd817e80 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd817e8c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd817e98 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd817ea0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd817f00, `lw` at 0xd817f18.
  The `lw` at 0xd817f04 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd817de8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd817e08 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd817e34 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd817ea8 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd817ed0 calls memcpy with a0=a2 at entry (arg2), a1=sp-36, a2=0x8, a3=?.
  The `jalr` at 0xd817eec calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd817f0c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd817f28 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd817dd4 targets 0xd817f38, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd817dd8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd817df8 targets 0xd817e18, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd817dfc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd817e24 targets 0xd817e48, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd817e28 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd817ebc targets 0xd817ee0, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd817ed8 targets 0xd817ef8 and is always taken.
  The `beql` branch at 0xd817efc targets 0xd817f1c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd817f00 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd817f20 targets 0xd817f38, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd817f24 runs only when taken and is annulled on fall-through.
  The return at 0xd817f40 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetLightiv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd817f48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd817f48-0xd8180e8 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd817f58 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd817f78 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd817f7c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd817f80 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd817fa0, `lw` at 0xd818098.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd817fac, `lw` at 0xd817fc4, `lw` at 0xd817ff0.
  The `lw` at 0xd817fb0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd817fc8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd817fd8, `sw` at 0xd817ff4.
  The `sh` at 0xd817ffc stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd818000, `sb` at 0xd81802c.
  The `lw` at 0xd818004 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd818018 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81801c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd818020 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd818024 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd818030 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81803c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd818048 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd818050 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81807c stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8180a0, `lw` at 0xd8180b8.
  The `lw` at 0xd8180a4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd817f98 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd817fb8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd817fe4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd818058 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81808c calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd8180ac calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8180c8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd817f84 targets 0xd8180d8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd817f88 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd817fa8 targets 0xd817fc8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd817fac runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd817fd4 targets 0xd817ff8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd817fd8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81806c targets 0xd818080, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd818078 targets 0xd818098 and is always taken.
  The `beql` branch at 0xd81809c targets 0xd8180bc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8180a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8180c0 targets 0xd8180d8, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8180c4 runs only when taken and is annulled on fall-through.
  The return at 0xd8180e0 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetLightfv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8180e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8180e8-0xd818288 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd8180f8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818118 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81811c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd818120 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd818140, `lw` at 0xd818238.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81814c, `lw` at 0xd818164, `lw` at 0xd818190.
  The `lw` at 0xd818150 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd818168 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd818178, `sw` at 0xd818194.
  The `sh` at 0xd81819c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8181a0, `sb` at 0xd8181cc.
  The `lw` at 0xd8181a4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8181b8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8181bc stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8181c0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8181c4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8181d0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8181dc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd8181e8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8181f0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd81821c stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd818240, `lw` at 0xd818258.
  The `lw` at 0xd818244 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd818138 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd818158 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd818184 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8181f8 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81822c calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81824c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd818268 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd818124 targets 0xd818278, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd818128 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd818148 targets 0xd818168, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81814c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd818174 targets 0xd818198, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd818178 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81820c targets 0xd818220, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd818218 targets 0xd818238 and is always taken.
  The `beql` branch at 0xd81823c targets 0xd81825c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd818240 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd818260 targets 0xd818278, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd818264 runs only when taken and is annulled on fall-through.
  The return at 0xd818280 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GenLists` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd818288 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd818288-0xd8183fc (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xd818298 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8182b0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8182b8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8182bc loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8182d8, `lw` at 0xd818390.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8182e4, `lw` at 0xd8182fc, `lw` at 0xd818328.
  The `lw` at 0xd8182e8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd818300 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd818310, `sw` at 0xd81832c.
  The `sh` at 0xd818334 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd818338, `sb` at 0xd818364.
  The `lw` at 0xd81833c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd818350 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd818354 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd818358 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81835c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd818368 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd818374 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd818380 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8183a0, `lw` at 0xd8183c0.
  The `lw` at 0xd8183a8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8182d0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8182f0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81831c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd818388 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd8183b0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8183d4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8182c0 targets 0xd8183e8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8182c4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8182e0 targets 0xd818300, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8182e4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81830c targets 0xd818330, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd818310 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81839c targets 0xd8183c4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8183a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8183c8 targets 0xd8183e8, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8183cc runs only when taken and is annulled on fall-through.
  The return at 0xd8183f4 has v0 = one of 0x0, ?.

- `__glx_DeleteLists` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8183fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8183fc-0xd818554 (344 bytes).
  It occupies 344 bytes.
  The `lw` at 0xd81840c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818424 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818428 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81842c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81844c, `lw` at 0xd818504.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81845c, `lw` at 0xd81847c, `lw` at 0xd8184b0.
  The `lw` at 0xd818464 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd818480 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd818490, `sw` at 0xd8184b4.
  The `sh` at 0xd8184bc stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8184c0, `sb` at 0xd8184e8.
  The `lw` at 0xd8184c4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8184d8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8184dc stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8184e0, `lw` at 0xd8184ec.
  The `sb` at 0xd8184e4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd8184f0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd8184f8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd818500 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81850c, `lw` at 0xd818524.
  The `lw` at 0xd818510 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd818444 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81846c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8184a0 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd818518 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd818534 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd818430 targets 0xd818544, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd818434 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd818458 targets 0xd818480, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd81845c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81848c targets 0xd8184b8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd818490 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd818508 targets 0xd818528, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81850c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81852c targets 0xd818544, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd818530 runs only when taken and is annulled on fall-through.
  The return at 0xd81854c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_EndList` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd818554 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd818554-0xd818694 (320 bytes).
  It occupies 320 bytes.
  The `lw` at 0xd818564 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818574 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818578 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81857c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81859c, `lw` at 0xd818644.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8185ac, `lw` at 0xd8185cc, `lw` at 0xd818600.
  The `lw` at 0xd8185b4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8185d0 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8185e0, `sw` at 0xd818604.
  The `sh` at 0xd81860c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd818610, `sb` at 0xd818638.
  The `lw` at 0xd818614 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd818628 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81862c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd818630, `lw` at 0xd81863c.
  The `sb` at 0xd818634 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd818640 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81864c, `lw` at 0xd818664.
  The `lw` at 0xd818650 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd818594 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `jalr` at 0xd8185bc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8185f0 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd818658 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd818674 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd818580 targets 0xd818684, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd818584 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8185a8 targets 0xd8185d0, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8185ac runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8185dc targets 0xd818608, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8185e0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd818648 targets 0xd818668, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81864c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81866c targets 0xd818684, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd818670 runs only when taken and is annulled on fall-through.
  The return at 0xd81868c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_NewList` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd818694 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd818694-0xd8187ec (344 bytes).
  It occupies 344 bytes.
  The `lw` at 0xd8186a4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8186bc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8186c0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8186c4 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8186e4, `lw` at 0xd81879c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8186f4, `lw` at 0xd818714, `lw` at 0xd818748.
  The `lw` at 0xd8186fc loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd818718 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd818728, `sw` at 0xd81874c.
  The `sh` at 0xd818754 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd818758, `sb` at 0xd818780.
  The `lw` at 0xd81875c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd818770 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd818774 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd818778, `lw` at 0xd818784.
  The `sb` at 0xd81877c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd818788 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd818790 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd818798 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8187a4, `lw` at 0xd8187bc.
  The `lw` at 0xd8187a8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8186dc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd818704 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd818738 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8187b0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8187cc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8186c8 targets 0xd8187dc, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8186cc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8186f0 targets 0xd818718, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8186f4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd818724 targets 0xd818750, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd818728 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8187a0 targets 0xd8187c0, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8187a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8187c4 targets 0xd8187dc, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8187c8 runs only when taken and is annulled on fall-through.
  The return at 0xd8187e4 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_ColorTableParameterfvSGI` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8187ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8187ec-0xd8188c4 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd818824 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818838 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818844 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818848 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81884c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd818858 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818860 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd818880 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818894 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818818 calls __glXColorTableParameterfvSGI_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd818870 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXColorTableParameterfvSGI_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8188a4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd818890 targets 0xd8188b0, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd8188bc has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_CopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8188c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8188c4-0xd818964 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd8188d4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8188e8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8188f4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8188f8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8188fc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd818900 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818904 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd818908 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd81890c stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd818918 stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `sw` at 0xd818920 stores 4 bytes to [[[0x1014]+276]+4] +0x18.
  The `lw` at 0xd818924 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818928 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818944 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd818930 targets 0xd818954, is taken when t1(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd818934 runs only when taken and is annulled on fall-through.
  The return at 0xd81895c has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_CopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd818964 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd818964-0xd8189fc (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xd818974 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818988 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818994 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818998 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81899c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8189a0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8189a4 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd8189a8 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd8189ac stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd8189b8 stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `lw` at 0xd8189bc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8189c0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8189dc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+24, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd8189c8 targets 0xd8189ec, is taken when t0(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+24) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+24) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd8189cc runs only when taken and is annulled on fall-through.
  The return at 0xd8189f4 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_ConvolutionParameterivEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8189fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8189fc-0xd818ad4 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd818a34 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818a48 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818a54 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818a58 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd818a5c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd818a68 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818a70 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd818a90 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818aa4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818a28 calls __glXConvolutionParameterivEXT_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd818a80 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXConvolutionParameterivEXT_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd818ab4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd818aa0 targets 0xd818ac0, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd818acc has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_ConvolutionParameteriEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd818ad4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd818ad4-0xd818b5c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd818ae4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818af4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818b00 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818b04 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd818b08 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd818b0c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818b10 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd818b14 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd818b18 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818b20 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818b3c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd818b28 targets 0xd818b4c, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd818b2c runs only when taken and is annulled on fall-through.
  The return at 0xd818b54 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd818b5c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd818b5c-0xd818c34 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd818b94 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818ba8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818bb4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818bb8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd818bbc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd818bc8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818bd0 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd818bf0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818c04 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818b88 calls __glXConvolutionParameterfvEXT_size with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd818be0 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(ret(__glXConvolutionParameterfvEXT_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd818c14 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd818c00 targets 0xd818c20, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd818c2c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_ConvolutionParameterfEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd818c34 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd818c34-0xd818cb8 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd818c40 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818c50 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818c5c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818c64 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd818c68 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd818c6c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818c70 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd818c74 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd818c78 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818c80 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818c9c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[[0x1014]+276]+4]+16, a3=[[0x1014]+276].
  The `beql` branch at 0xd818c88 targets 0xd818cac, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd818c8c runs only when taken and is annulled on fall-through.
  The return at 0xd818cb0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_TagSampleBufferSGIX` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd818cb8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd818cb8-0xd818d24 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd818cc4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818cd4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818ce0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818ce4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd818ce8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd818cec loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818cf4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818d08 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd818cfc targets 0xd818d18, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd818d00 runs only when taken and is annulled on fall-through.
  The return at 0xd818d1c has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_HistogramEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd818d24 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd818d24-0xd818db8 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd818d34 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818d4c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818d58 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818d5c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd818d60 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd818d64 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818d68 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd818d6c stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sb` at 0xd818d70 stores 1 byte to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd818d74 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818d7c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818d98 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd818d84 targets 0xd818da8, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd818d88 runs only when taken and is annulled on fall-through.
  The return at 0xd818db0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_PrioritizeTexturesEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd818db8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd818db8-0xd818ea4 (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0xd818dc8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818de0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818de8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818e08 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd818e0c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd818e18 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd818e60 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818e74 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818e2c calls memcpy with a0=[[[0x1014]+276]+4]+8, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd818e50 calls memcpy with a0=?, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd818e84 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `bltz` branch at 0xd818de4 targets 0xd818e90, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bltz` branch at 0xd818dec targets 0xd818e90, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0xd818e70 targets 0xd818e90, is taken when t2(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd818e9c has v0 = one of ?, ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_BindTextureEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd818ea4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd818ea4-0xd818f20 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd818eb0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818ec0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818ecc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818ed0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd818ed4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd818ed8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818edc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd818ee0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818ee8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818f04 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd818ef0 targets 0xd818f14, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd818ef4 runs only when taken and is annulled on fall-through.
  The return at 0xd818f18 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_SharpenTexFuncSGIS` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd818f20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd818f20-0xd818ff4 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xd818f30 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd818f4c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd818f58 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd818f70 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd818f74 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd818f80 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd818f88 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd818fb0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd818fc4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd818fa0 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(a1 << 0x3), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd818fd4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `bltz` branch at 0xd818f54 targets 0xd818fe0, is taken when v0(=(a1 << 0x1)) < 0 (signed), and falls through when v0(=(a1 << 0x1)) >= 0 (signed).
  The `beq` branch at 0xd818fc0 targets 0xd818fe0, is taken when t0(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd818fec has v0 = one of (a1 << 0x1), ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_DetailTexFuncSGIS` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd818ff4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd818ff4-0xd8190c8 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xd819004 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819020 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81902c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd819044 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd819048 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd819054 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81905c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd819084 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd819098 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd819074 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a2 at entry (arg2), a2=(a1 << 0x3), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8190a8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `bltz` branch at 0xd819028 targets 0xd8190b4, is taken when v0(=(a1 << 0x1)) < 0 (signed), and falls through when v0(=(a1 << 0x1)) >= 0 (signed).
  The `beq` branch at 0xd819094 targets 0xd8190b4, is taken when t0(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd8190c0 has v0 = one of (a1 << 0x1), ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_ResetMinmaxEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8190c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8190c8-0xd81913c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd8190d4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8190e4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8190f0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8190f4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8190f8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8190fc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd819100 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd819108 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd819120 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd819110 targets 0xd819130, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd819114 runs only when taken and is annulled on fall-through.
  The return at 0xd819134 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_ResetHistogramEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81913c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81913c-0xd8191b0 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd819148 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819158 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819164 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd819168 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81916c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd819170 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd819174 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81917c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd819194 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd819184 targets 0xd8191a4, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd819188 runs only when taken and is annulled on fall-through.
  The return at 0xd8191a8 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_MinmaxEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8191b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8191b0-0xd81923c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd8191c0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8191d4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8191e0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8191e4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8191e8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd8191ec stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd8191f0 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sb` at 0xd8191f4 stores 1 byte to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd8191f8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd819200 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81921c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd819208 targets 0xd81922c, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81920c runs only when taken and is annulled on fall-through.
  The return at 0xd819234 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_GetMapfv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81923c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81923c-0xd8193dc (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81924c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81926c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819270 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd819274 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819294, `lw` at 0xd81938c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8192a0, `lw` at 0xd8192b8, `lw` at 0xd8192e4.
  The `lw` at 0xd8192a4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8192bc loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8192cc, `sw` at 0xd8192e8.
  The `sh` at 0xd8192f0 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8192f4, `sb` at 0xd819320.
  The `lw` at 0xd8192f8 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81930c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd819310 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd819314 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd819318 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd819324 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd819330 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81933c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd819344 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd819370 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819394, `lw` at 0xd8193ac.
  The `lw` at 0xd819398 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81928c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8192ac calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8192d8 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81934c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd819380 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd8193a0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8193bc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd819278 targets 0xd8193cc, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81927c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81929c targets 0xd8192bc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8192a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8192c8 targets 0xd8192ec, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8192cc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd819360 targets 0xd819374, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81936c targets 0xd81938c and is always taken.
  The `beql` branch at 0xd819390 targets 0xd8193b0, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd819394 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8193b4 targets 0xd8193cc, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8193b8 runs only when taken and is annulled on fall-through.
  The return at 0xd8193d4 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetDetailTexFuncSGIS` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8193dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8193dc-0xd81957c (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd8193ec loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819408 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81940c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd819410 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819430, `lw` at 0xd81952c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81943c, `lw` at 0xd819454, `lw` at 0xd819480.
  The `lw` at 0xd819440 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd819458 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd819468, `sw` at 0xd819484.
  The `sh` at 0xd819490 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819494, `sb` at 0xd8194c4.
  The `lw` at 0xd819498 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8194ac stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8194b0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8194b4 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd8194bc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd8194c0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8194c8 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8194d4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8194e4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd819510 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819534, `lw` at 0xd81954c.
  The `lw` at 0xd819538 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd819428 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd819448 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819474 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8194ec calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd819520 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd819540 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81955c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd819414 targets 0xd81956c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819418 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819438 targets 0xd819458, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81943c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819464 targets 0xd819488, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd819468 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd819500 targets 0xd819514, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81950c targets 0xd81952c and is always taken.
  The `beql` branch at 0xd819530 targets 0xd819550, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd819534 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819554 targets 0xd81956c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819558 runs only when taken and is annulled on fall-through.
  The return at 0xd819574 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetMinmaxParameterivEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81957c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81957c-0xd819728 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd81958c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8195ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8195b0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8195b4 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8195d4, `lw` at 0xd8196d8.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8195e0, `lw` at 0xd8195f8, `lw` at 0xd819624.
  The `lw` at 0xd8195e4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8195fc loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81960c, `sw` at 0xd819628.
  The `sh` at 0xd819634 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819638, `sb` at 0xd819668.
  The `lw` at 0xd81963c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd819650 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd819654 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd819658 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd819660 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd819664 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81966c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd819678 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd819688 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd819690 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd8196bc stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8196e0, `lw` at 0xd8196f8.
  The `lw` at 0xd8196e4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8195cc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8195ec calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819618 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819698 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd8196cc calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd8196ec calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819708 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8195b8 targets 0xd819718, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8195bc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8195dc targets 0xd8195fc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8195e0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819608 targets 0xd81962c, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81960c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8196ac targets 0xd8196c0, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd8196b8 targets 0xd8196d8 and is always taken.
  The `beql` branch at 0xd8196dc targets 0xd8196fc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8196e0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819700 targets 0xd819718, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819704 runs only when taken and is annulled on fall-through.
  The return at 0xd819720 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetMinmaxParameterfvEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd819728 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd819728-0xd8198d4 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd819738 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819758 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81975c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd819760 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819780, `lw` at 0xd819884.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81978c, `lw` at 0xd8197a4, `lw` at 0xd8197d0.
  The `lw` at 0xd819790 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8197a8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8197b8, `sw` at 0xd8197d4.
  The `sh` at 0xd8197e0 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8197e4, `sb` at 0xd819814.
  The `lw` at 0xd8197e8 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8197fc stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd819800 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd819804 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81980c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd819810 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd819818 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd819824 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd819834 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81983c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `swc1` at 0xd819868 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81988c, `lw` at 0xd8198a4.
  The `lw` at 0xd819890 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd819778 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd819798 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8197c4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819844 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd819878 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd819898 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8198b4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd819764 targets 0xd8198c4, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819768 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819788 targets 0xd8197a8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81978c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8197b4 targets 0xd8197d8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8197b8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd819858 targets 0xd81986c, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd819864 targets 0xd819884 and is always taken.
  The `beql` branch at 0xd819888 targets 0xd8198a8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81988c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8198ac targets 0xd8198c4, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8198b0 runs only when taken and is annulled on fall-through.
  The return at 0xd8198cc has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetHistogramParameterivEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8198d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8198d4-0xd819a80 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd8198e4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819904 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819908 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81990c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81992c, `lw` at 0xd819a30.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd819938, `lw` at 0xd819950, `lw` at 0xd81997c.
  The `lw` at 0xd81993c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd819954 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd819964, `sw` at 0xd819980.
  The `sh` at 0xd81998c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819990, `sb` at 0xd8199c0.
  The `lw` at 0xd819994 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8199a8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8199ac stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8199b0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd8199b8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd8199bc stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8199c4 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8199d0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8199e0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd8199e8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd819a14 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819a38, `lw` at 0xd819a50.
  The `lw` at 0xd819a3c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd819924 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd819944 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819970 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8199f0 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd819a24 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd819a44 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819a60 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd819910 targets 0xd819a70, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819914 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819934 targets 0xd819954, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd819938 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819960 targets 0xd819984, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd819964 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd819a04 targets 0xd819a18, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd819a10 targets 0xd819a30 and is always taken.
  The `beql` branch at 0xd819a34 targets 0xd819a54, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd819a38 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819a58 targets 0xd819a70, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819a5c runs only when taken and is annulled on fall-through.
  The return at 0xd819a78 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetHistogramParameterfvEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd819a80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd819a80-0xd819c2c (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd819a90 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819ab0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819ab4 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd819ab8 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819ad8, `lw` at 0xd819bdc.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd819ae4, `lw` at 0xd819afc, `lw` at 0xd819b28.
  The `lw` at 0xd819ae8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd819b00 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd819b10, `sw` at 0xd819b2c.
  The `sh` at 0xd819b38 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819b3c, `sb` at 0xd819b6c.
  The `lw` at 0xd819b40 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd819b54 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd819b58 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd819b5c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd819b64 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd819b68 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd819b70 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd819b7c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd819b8c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd819b94 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `swc1` at 0xd819bc0 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819be4, `lw` at 0xd819bfc.
  The `lw` at 0xd819be8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd819ad0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd819af0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819b1c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819b9c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd819bd0 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd819bf0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819c0c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd819abc targets 0xd819c1c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819ac0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819ae0 targets 0xd819b00, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd819ae4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819b0c targets 0xd819b30, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd819b10 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd819bb0 targets 0xd819bc4, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd819bbc targets 0xd819bdc and is always taken.
  The `beql` branch at 0xd819be0 targets 0xd819c00, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd819be4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819c04 targets 0xd819c1c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819c08 runs only when taken and is annulled on fall-through.
  The return at 0xd819c24 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetConvolutionParameterivEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd819c2c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd819c2c-0xd819dd8 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd819c3c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819c5c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819c60 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd819c64 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819c84, `lw` at 0xd819d88.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd819c90, `lw` at 0xd819ca8, `lw` at 0xd819cd4.
  The `lw` at 0xd819c94 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd819cac loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd819cbc, `sw` at 0xd819cd8.
  The `sh` at 0xd819ce4 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819ce8, `sb` at 0xd819d18.
  The `lw` at 0xd819cec loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd819d00 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd819d04 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd819d08 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd819d10 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd819d14 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd819d1c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd819d28 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd819d38 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd819d40 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd819d6c stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819d90, `lw` at 0xd819da8.
  The `lw` at 0xd819d94 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd819c7c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd819c9c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819cc8 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819d48 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd819d7c calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd819d9c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819db8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd819c68 targets 0xd819dc8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819c6c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819c8c targets 0xd819cac, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd819c90 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819cb8 targets 0xd819cdc, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd819cbc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd819d5c targets 0xd819d70, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd819d68 targets 0xd819d88 and is always taken.
  The `beql` branch at 0xd819d8c targets 0xd819dac, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd819d90 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819db0 targets 0xd819dc8, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819db4 runs only when taken and is annulled on fall-through.
  The return at 0xd819dd0 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetConvolutionParameterfvEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd819dd8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd819dd8-0xd819f84 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd819de8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819e08 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819e0c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd819e10 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819e30, `lw` at 0xd819f34.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd819e3c, `lw` at 0xd819e54, `lw` at 0xd819e80.
  The `lw` at 0xd819e40 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd819e58 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd819e68, `sw` at 0xd819e84.
  The `sh` at 0xd819e90 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd819e94, `sb` at 0xd819ec4.
  The `lw` at 0xd819e98 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd819eac stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd819eb0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd819eb4 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd819ebc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd819ec0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd819ec8 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd819ed4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd819ee4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd819eec stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `swc1` at 0xd819f18 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd819f3c, `lw` at 0xd819f54.
  The `lw` at 0xd819f40 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd819e28 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd819e48 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819e74 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819ef4 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd819f28 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd819f48 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd819f64 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd819e14 targets 0xd819f74, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819e18 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819e38 targets 0xd819e58, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd819e3c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819e64 targets 0xd819e88, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd819e68 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd819f08 targets 0xd819f1c, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd819f14 targets 0xd819f34 and is always taken.
  The `beql` branch at 0xd819f38 targets 0xd819f58, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd819f3c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819f5c targets 0xd819f74, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819f60 runs only when taken and is annulled on fall-through.
  The return at 0xd819f7c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetSharpenTexFuncSGIS` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd819f84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd819f84-0xd81a124 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd819f94 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819fb0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819fb4 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd819fb8 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd819fd8, `lw` at 0xd81a0d4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd819fe4, `lw` at 0xd819ffc, `lw` at 0xd81a028.
  The `lw` at 0xd819fe8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81a000 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a010, `sw` at 0xd81a02c.
  The `sh` at 0xd81a038 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a03c, `sb` at 0xd81a06c.
  The `lw` at 0xd81a040 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81a054 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81a058 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81a05c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81a064 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd81a068 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81a070 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81a07c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81a08c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd81a0b8 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a0dc, `lw` at 0xd81a0f4.
  The `lw` at 0xd81a0e0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd819fd0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd819ff0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a01c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a094 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81a0c8 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd81a0e8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a104 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd819fbc targets 0xd81a114, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd819fc0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd819fe0 targets 0xd81a000, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd819fe4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a00c targets 0xd81a030, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81a010 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81a0a8 targets 0xd81a0bc, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81a0b4 targets 0xd81a0d4 and is always taken.
  The `beql` branch at 0xd81a0d8 targets 0xd81a0f8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81a0dc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a0fc targets 0xd81a114, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a100 runs only when taken and is annulled on fall-through.
  The return at 0xd81a11c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetColorTableParameterivSGI` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81a124 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81a124-0xd81a2d0 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd81a134 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81a154 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81a158 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81a15c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a17c, `lw` at 0xd81a280.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a188, `lw` at 0xd81a1a0, `lw` at 0xd81a1cc.
  The `lw` at 0xd81a18c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81a1a4 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a1b4, `sw` at 0xd81a1d0.
  The `sh` at 0xd81a1dc stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a1e0, `sb` at 0xd81a210.
  The `lw` at 0xd81a1e4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81a1f8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81a1fc stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81a200 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81a208 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd81a20c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81a214 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81a220 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81a230 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81a238 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd81a264 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a288, `lw` at 0xd81a2a0.
  The `lw` at 0xd81a28c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81a174 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81a194 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a1c0 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a240 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81a274 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81a294 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a2b0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81a160 targets 0xd81a2c0, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a164 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a184 targets 0xd81a1a4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81a188 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a1b0 targets 0xd81a1d4, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81a1b4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81a254 targets 0xd81a268, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81a260 targets 0xd81a280 and is always taken.
  The `beql` branch at 0xd81a284 targets 0xd81a2a4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81a288 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a2a8 targets 0xd81a2c0, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a2ac runs only when taken and is annulled on fall-through.
  The return at 0xd81a2c8 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetColorTableParameterfvSGI` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81a2d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81a2d0-0xd81a47c (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd81a2e0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81a300 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81a304 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81a308 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a328, `lw` at 0xd81a42c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a334, `lw` at 0xd81a34c, `lw` at 0xd81a378.
  The `lw` at 0xd81a338 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81a350 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a360, `sw` at 0xd81a37c.
  The `sh` at 0xd81a388 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a38c, `sb` at 0xd81a3bc.
  The `lw` at 0xd81a390 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81a3a4 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81a3a8 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81a3ac loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81a3b4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd81a3b8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81a3c0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81a3cc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81a3dc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81a3e4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `swc1` at 0xd81a410 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a434, `lw` at 0xd81a44c.
  The `lw` at 0xd81a438 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81a320 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81a340 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a36c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a3ec calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81a420 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81a440 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a45c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81a30c targets 0xd81a46c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a310 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a330 targets 0xd81a350, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81a334 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a35c targets 0xd81a380, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81a360 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81a400 targets 0xd81a414, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81a40c targets 0xd81a42c and is always taken.
  The `beql` branch at 0xd81a430 targets 0xd81a450, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81a434 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a454 targets 0xd81a46c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a458 runs only when taken and is annulled on fall-through.
  The return at 0xd81a474 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_IsTextureEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81a47c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81a47c-0xd81a5fc (384 bytes).
  It occupies 384 bytes.
  The `lw` at 0xd81a48c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81a4a4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81a4ac loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81a4b0 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a4cc, `lw` at 0xd81a590.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a4d8, `lw` at 0xd81a4f0, `lw` at 0xd81a51c.
  The `lw` at 0xd81a4dc loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81a4f4 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a504, `sw` at 0xd81a520.
  The `sh` at 0xd81a52c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a530, `sb` at 0xd81a560.
  The `lw` at 0xd81a534 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81a548 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81a54c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81a550 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81a558 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd81a55c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81a564 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81a570 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81a580 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a5a0, `lw` at 0xd81a5c0.
  The `lw` at 0xd81a5a8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81a4c4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd81a4e4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a510 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a588 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81a5b0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a5d4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81a4b4 targets 0xd81a5e8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a4b8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a4d4 targets 0xd81a4f4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81a4d8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a500 targets 0xd81a524, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81a504 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a59c targets 0xd81a5c4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81a5a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a5c8 targets 0xd81a5e8, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a5cc runs only when taken and is annulled on fall-through.
  The return at 0xd81a5f4 has v0 = one of 0x0, ?.

- `__glx_GenTexturesEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81a5fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81a5fc-0xd81a788 (396 bytes).
  It occupies 396 bytes.
  The `lw` at 0xd81a60c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81a628 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81a62c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81a630 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a650, `lw` at 0xd81a734.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a65c, `lw` at 0xd81a674, `lw` at 0xd81a6a0.
  The `lw` at 0xd81a660 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81a678 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a688, `sw` at 0xd81a6a4.
  The `sh` at 0xd81a6b0 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a6b4, `sb` at 0xd81a6e4.
  The `lw` at 0xd81a6b8 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81a6cc stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81a6d0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81a6d4 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81a6dc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd81a6e0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81a6e8 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81a6f4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81a704 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a740, `lw` at 0xd81a758.
  The `lw` at 0xd81a744 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81a648 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd81a668 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a694 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a70c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-48, a2=0x0, a3=0x0.
  The `jalr` at 0xd81a72c calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xd81a74c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a768 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81a634 targets 0xd81a778, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a638 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a658 targets 0xd81a678, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81a65c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a684 targets 0xd81a6a8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81a688 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a73c targets 0xd81a75c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81a740 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a760 targets 0xd81a778, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a764 runs only when taken and is annulled on fall-through.
  The return at 0xd81a780 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_DeleteTexturesEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81a788 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81a788-0xd81a91c (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0xd81a798 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81a7b4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81a7b8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81a7c0 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a7e0, `lw` at 0xd81a8c8.
  The `lw` at 0xd81a7f0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a808, `lw` at 0xd81a854, `lw` at 0xd81a870.
  The `lw` at 0xd81a818 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a830, `sw` at 0xd81a858.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81a868, `sb` at 0xd81a89c.
  The `sh` at 0xd81a86c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  The `lw` at 0xd81a874 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81a888 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81a88c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd81a890 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81a894 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd81a898 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81a8a0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81a8ac stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81a8b4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81a8d4, `lw` at 0xd81a8ec.
  The `lw` at 0xd81a8d8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81a7d8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd81a7f8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a840 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+108].
  The `jalr` at 0xd81a8c0 calls memcpy with a0=[[[[0x1014]+276]+216]+108]+16, a1=a1 at entry (arg1), a2=?, a3=[[[[0x1014]+276]+216]+108].
  The `jalr` at 0xd81a8e0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a8fc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `bltz` branch at 0xd81a7bc targets 0xd81a908, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beql` branch at 0xd81a7c4 targets 0xd81a90c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a7c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a7e8 targets 0xd81a808, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw t0,72(sp)` at 0xd81a7ec runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a82c targets 0xd81a85c, is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t3(?) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t3(?) (unsigned); its branch-likely delay slot `sw a3,100(s0)` at 0xd81a830 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a8d0 targets 0xd81a8f0, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81a8d4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a8f4 targets 0xd81a90c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81a8f8 runs only when taken and is annulled on fall-through.
  The return at 0xd81a914 has v0 = one of ?, [[[[0x1014]+276]+216]+124].

- `__glx_AreTexturesResidentEXT` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81a91c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81a91c-0xd81ab30 (532 bytes).
  It occupies 532 bytes.
  The `lw` at 0xd81a92c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81a94c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81a954 loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd81a95c loads 4 bytes from [[0x1014]+276] +0xd8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81a984, `lw` at 0xd81aadc.
  The `lw` at 0xd81a994 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81a9ac, `lw` at 0xd81a9f8, `lw` at 0xd81aa14.
  The `lw` at 0xd81a9bc loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81a9d4, `sw` at 0xd81a9fc.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81aa0c, `sb` at 0xd81aa44.
  The `sh` at 0xd81aa10 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  The `lw` at 0xd81aa18 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81aa2c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81aa30 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd81aa34 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd81aa3c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd81aa40 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81aa48 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81aa54 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81aa5c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81aae4, `lw` at 0xd81aafc.
  The `lw` at 0xd81aae8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81a97c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81a99c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81a9e4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+108].
  The `jalr` at 0xd81aa68 calls memcpy with a0=[[[[0x1014]+276]+216]+108]+16, a1=a1 at entry (arg1), a2=?, a3=[[[[0x1014]+276]+216]+108].
  The `jalr` at 0xd81aa88 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-56, a2=0x0, a3=0x0.
  The `jalr` at 0xd81aaac calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0xd81aad0 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81aaf0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81ab0c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `bgez` branch at 0xd81a958 targets 0xd81a968, is taken when a0 >= 0 (signed), and falls through when a0 < 0 (signed).
  The `beq` branch at 0xd81a960 targets 0xd81ab1c and is always taken.
  The `beql` branch at 0xd81a968 targets 0xd81ab1c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lbu v0,99(sp)` at 0xd81a96c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a98c targets 0xd81a9ac, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw t0,120(sp)` at 0xd81a990 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81a9d0 targets 0xd81aa00, is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t2(?) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t2(?) (unsigned); its branch-likely delay slot `sw a3,100(s0)` at 0xd81a9d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd81aab8 targets 0xd81aadc, is taken when (s1(=a0) & 0x3) == 0, and falls through when (s1(=a0) & 0x3) != 0.
  The `beql` branch at 0xd81aae0 targets 0xd81ab00, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81aae4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81ab04 targets 0xd81ab1c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lbu v0,99(sp)` at 0xd81ab08 runs only when taken and is annulled on fall-through.
  The return at 0xd81ab28 has v0 = one of 0x0, ?.

- `__glx_IsList` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81ab30 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81ab30-0xd81aca4 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xd81ab40 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81ab58 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81ab60 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81ab64 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81ab80, `lw` at 0xd81ac38.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81ab8c, `lw` at 0xd81aba4, `lw` at 0xd81abd0.
  The `lw` at 0xd81ab90 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81aba8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81abb8, `sw` at 0xd81abd4.
  The `sh` at 0xd81abdc stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81abe0, `sb` at 0xd81ac0c.
  The `lw` at 0xd81abe4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81abf8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81abfc stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81ac00 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81ac04 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81ac10 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81ac1c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81ac28 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81ac48, `lw` at 0xd81ac68.
  The `lw` at 0xd81ac50 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81ab78 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd81ab98 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81abc4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81ac30 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81ac58 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81ac7c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81ab68 targets 0xd81ac90, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81ab6c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81ab88 targets 0xd81aba8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81ab8c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81abb4 targets 0xd81abd8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81abb8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81ac44 targets 0xd81ac6c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81ac48 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81ac70 targets 0xd81ac90, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81ac74 runs only when taken and is annulled on fall-through.
  The return at 0xd81ac9c has v0 = one of 0x0, ?.

- `__glx_GetTexEnvfv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81aca4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81aca4-0xd81ae44 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81acb4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81acd4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81acd8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81acdc loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81acfc, `lw` at 0xd81adf4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81ad08, `lw` at 0xd81ad20, `lw` at 0xd81ad4c.
  The `lw` at 0xd81ad0c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81ad24 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81ad34, `sw` at 0xd81ad50.
  The `sh` at 0xd81ad58 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81ad5c, `sb` at 0xd81ad88.
  The `lw` at 0xd81ad60 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81ad74 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81ad78 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81ad7c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81ad80 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81ad8c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81ad98 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81ada4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81adac stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd81add8 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81adfc, `lw` at 0xd81ae14.
  The `lw` at 0xd81ae00 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81acf4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81ad14 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81ad40 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81adb4 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81ade8 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81ae08 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81ae24 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81ace0 targets 0xd81ae34, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81ace4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81ad04 targets 0xd81ad24, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81ad08 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81ad30 targets 0xd81ad54, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81ad34 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81adc8 targets 0xd81addc, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81add4 targets 0xd81adf4 and is always taken.
  The `beql` branch at 0xd81adf8 targets 0xd81ae18, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81adfc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81ae1c targets 0xd81ae34, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81ae20 runs only when taken and is annulled on fall-through.
  The return at 0xd81ae3c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetPixelMapusv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81ae44 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81ae44-0xd81affc (440 bytes).
  It occupies 440 bytes.
  The `lw` at 0xd81ae54 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81ae70 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81ae74 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81ae78 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81ae98, `lw` at 0xd81afac.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81aea4, `lw` at 0xd81aebc, `lw` at 0xd81aee8.
  The `lw` at 0xd81aea8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81aec0 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81aed0, `sw` at 0xd81aeec.
  The `sh` at 0xd81aef4 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81aef8, `sb` at 0xd81af24.
  The `lw` at 0xd81aefc loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81af10 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81af14 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81af18 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81af1c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81af28 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81af34 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81af40 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sh` at 0xd81af70 stores 2 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81afb4, `lw` at 0xd81afcc.
  The `lw` at 0xd81afb8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81ae90 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd81aeb0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81aedc calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81af48 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81af80 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd81afa0 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81afc0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81afdc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81ae7c targets 0xd81afec, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81ae80 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81aea0 targets 0xd81aec0, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81aea4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81aecc targets 0xd81aef0, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81aed0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81af5c targets 0xd81af74, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81af6c targets 0xd81afac and is always taken.
  The `beq` branch at 0xd81af8c targets 0xd81afac, is taken when (s1(?) & 0x3) == 0, and falls through when (s1(?) & 0x3) != 0.
  The `beql` branch at 0xd81afb0 targets 0xd81afd0, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81afb4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81afd4 targets 0xd81afec, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81afd8 runs only when taken and is annulled on fall-through.
  The return at 0xd81aff4 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetPixelMapuiv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81affc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81affc-0xd81b190 (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0xd81b00c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81b028 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81b02c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81b030 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81b050, `lw` at 0xd81b140.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81b05c, `lw` at 0xd81b074, `lw` at 0xd81b0a0.
  The `lw` at 0xd81b060 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81b078 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81b088, `sw` at 0xd81b0a4.
  The `sh` at 0xd81b0ac stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81b0b0, `sb` at 0xd81b0dc.
  The `lw` at 0xd81b0b4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81b0c8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81b0cc stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81b0d0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81b0d4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81b0e0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81b0ec stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81b0f8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81b124 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81b148, `lw` at 0xd81b160.
  The `lw` at 0xd81b14c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81b048 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd81b068 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b094 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b100 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81b134 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd81b154 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b170 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81b034 targets 0xd81b180, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b038 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b058 targets 0xd81b078, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81b05c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b084 targets 0xd81b0a8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81b088 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81b114 targets 0xd81b128, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81b120 targets 0xd81b140 and is always taken.
  The `beql` branch at 0xd81b144 targets 0xd81b164, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81b148 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b168 targets 0xd81b180, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b16c runs only when taken and is annulled on fall-through.
  The return at 0xd81b188 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetPixelMapfv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81b190 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81b190-0xd81b324 (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0xd81b1a0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81b1bc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81b1c0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81b1c4 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81b1e4, `lw` at 0xd81b2d4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81b1f0, `lw` at 0xd81b208, `lw` at 0xd81b234.
  The `lw` at 0xd81b1f4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81b20c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81b21c, `sw` at 0xd81b238.
  The `sh` at 0xd81b240 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81b244, `sb` at 0xd81b270.
  The `lw` at 0xd81b248 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81b25c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81b260 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81b264 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81b268 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81b274 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81b280 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81b28c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `swc1` at 0xd81b2b8 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81b2dc, `lw` at 0xd81b2f4.
  The `lw` at 0xd81b2e0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81b1dc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd81b1fc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b228 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b294 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81b2c8 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd81b2e8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b304 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81b1c8 targets 0xd81b314, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b1cc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b1ec targets 0xd81b20c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81b1f0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b218 targets 0xd81b23c, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81b21c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81b2a8 targets 0xd81b2bc, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81b2b4 targets 0xd81b2d4 and is always taken.
  The `beql` branch at 0xd81b2d8 targets 0xd81b2f8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81b2dc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b2fc targets 0xd81b314, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b300 runs only when taken and is annulled on fall-through.
  The return at 0xd81b31c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetMaterialiv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81b324 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81b324-0xd81b4c4 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81b334 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81b354 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81b358 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81b35c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81b37c, `lw` at 0xd81b474.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81b388, `lw` at 0xd81b3a0, `lw` at 0xd81b3cc.
  The `lw` at 0xd81b38c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81b3a4 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81b3b4, `sw` at 0xd81b3d0.
  The `sh` at 0xd81b3d8 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81b3dc, `sb` at 0xd81b408.
  The `lw` at 0xd81b3e0 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81b3f4 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81b3f8 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81b3fc loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81b400 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81b40c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81b418 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81b424 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81b42c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81b458 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81b47c, `lw` at 0xd81b494.
  The `lw` at 0xd81b480 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81b374 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81b394 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b3c0 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b434 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81b468 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81b488 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b4a4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81b360 targets 0xd81b4b4, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b364 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b384 targets 0xd81b3a4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81b388 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b3b0 targets 0xd81b3d4, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81b3b4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81b448 targets 0xd81b45c, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81b454 targets 0xd81b474 and is always taken.
  The `beql` branch at 0xd81b478 targets 0xd81b498, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81b47c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b49c targets 0xd81b4b4, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b4a0 runs only when taken and is annulled on fall-through.
  The return at 0xd81b4bc has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetMaterialfv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81b4c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81b4c4-0xd81b664 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81b4d4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81b4f4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81b4f8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81b4fc loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81b51c, `lw` at 0xd81b614.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81b528, `lw` at 0xd81b540, `lw` at 0xd81b56c.
  The `lw` at 0xd81b52c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81b544 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81b554, `sw` at 0xd81b570.
  The `sh` at 0xd81b578 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81b57c, `sb` at 0xd81b5a8.
  The `lw` at 0xd81b580 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81b594 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81b598 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81b59c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81b5a0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81b5ac loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81b5b8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81b5c4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81b5cc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd81b5f8 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81b61c, `lw` at 0xd81b634.
  The `lw` at 0xd81b620 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81b514 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81b534 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b560 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b5d4 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81b608 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81b628 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b644 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81b500 targets 0xd81b654, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b504 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b524 targets 0xd81b544, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81b528 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b550 targets 0xd81b574, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81b554 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81b5e8 targets 0xd81b5fc, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81b5f4 targets 0xd81b614 and is always taken.
  The `beql` branch at 0xd81b618 targets 0xd81b638, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81b61c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b63c targets 0xd81b654, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b640 runs only when taken and is annulled on fall-through.
  The return at 0xd81b65c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetMapiv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81b664 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81b664-0xd81b804 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81b674 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81b694 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81b698 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81b69c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81b6bc, `lw` at 0xd81b7b4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81b6c8, `lw` at 0xd81b6e0, `lw` at 0xd81b70c.
  The `lw` at 0xd81b6cc loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81b6e4 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81b6f4, `sw` at 0xd81b710.
  The `sh` at 0xd81b718 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81b71c, `sb` at 0xd81b748.
  The `lw` at 0xd81b720 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81b734 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81b738 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81b73c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81b740 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81b74c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81b758 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81b764 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81b76c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81b798 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81b7bc, `lw` at 0xd81b7d4.
  The `lw` at 0xd81b7c0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81b6b4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81b6d4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b700 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b774 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81b7a8 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81b7c8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b7e4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81b6a0 targets 0xd81b7f4, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b6a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b6c4 targets 0xd81b6e4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81b6c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b6f0 targets 0xd81b714, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81b6f4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81b788 targets 0xd81b79c, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81b794 targets 0xd81b7b4 and is always taken.
  The `beql` branch at 0xd81b7b8 targets 0xd81b7d8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81b7bc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b7dc targets 0xd81b7f4, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b7e0 runs only when taken and is annulled on fall-through.
  The return at 0xd81b7fc has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetTexEnviv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81b804 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81b804-0xd81b9a4 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81b814 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81b834 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81b838 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81b83c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81b85c, `lw` at 0xd81b954.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81b868, `lw` at 0xd81b880, `lw` at 0xd81b8ac.
  The `lw` at 0xd81b86c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81b884 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81b894, `sw` at 0xd81b8b0.
  The `sh` at 0xd81b8b8 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81b8bc, `sb` at 0xd81b8e8.
  The `lw` at 0xd81b8c0 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81b8d4 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81b8d8 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81b8dc loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81b8e0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81b8ec loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81b8f8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81b904 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81b90c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81b938 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81b95c, `lw` at 0xd81b974.
  The `lw` at 0xd81b960 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81b854 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81b874 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b8a0 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b914 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81b948 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81b968 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81b984 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81b840 targets 0xd81b994, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b844 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b864 targets 0xd81b884, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81b868 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b890 targets 0xd81b8b4, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81b894 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81b928 targets 0xd81b93c, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81b934 targets 0xd81b954 and is always taken.
  The `beql` branch at 0xd81b958 targets 0xd81b978, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81b95c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81b97c targets 0xd81b994, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81b980 runs only when taken and is annulled on fall-through.
  The return at 0xd81b99c has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetTexLevelParameteriv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81b9a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81b9a4-0xd81bb50 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd81b9b4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81b9d8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81b9dc loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81b9e0 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81ba00, `lw` at 0xd81bb00.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81ba0c, `lw` at 0xd81ba24, `lw` at 0xd81ba50.
  The `lw` at 0xd81ba10 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81ba28 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81ba38, `sw` at 0xd81ba54.
  The `sh` at 0xd81ba5c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81ba60, `sb` at 0xd81ba8c.
  The `lw` at 0xd81ba64 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81ba78 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81ba7c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81ba80 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81ba84 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81ba90 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81ba9c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81baa8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81bab0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81bab8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd81bae4 stores 4 bytes to a3 (arg3 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81bb08, `lw` at 0xd81bb20.
  The `lw` at 0xd81bb0c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81b9f8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd81ba18 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81ba44 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81bac0 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81baf4 calls _XRead with a0=[[[0x1014]+276]+216], a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xd81bb14 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81bb30 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd81b9e4 targets 0xd81bb3c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd81ba08 targets 0xd81ba28, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81ba0c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81ba34 targets 0xd81ba58, is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t0(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t0(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81ba38 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81bad4 targets 0xd81bae8, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81bae0 targets 0xd81bb00 and is always taken.
  The `beql` branch at 0xd81bb04 targets 0xd81bb24, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81bb08 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81bb28 targets 0xd81bb40, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81bb2c runs only when taken and is annulled on fall-through.
  The return at 0xd81bb48 has v0 = one of [[[[0x1014]+276]+216]+124], ?.

- `__glx_GetTexLevelParameterfv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81bb50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81bb50-0xd81bcfc (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd81bb60 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81bb84 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81bb88 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81bb8c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81bbac, `lw` at 0xd81bcac.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81bbb8, `lw` at 0xd81bbd0, `lw` at 0xd81bbfc.
  The `lw` at 0xd81bbbc loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81bbd4 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81bbe4, `sw` at 0xd81bc00.
  The `sh` at 0xd81bc08 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81bc0c, `sb` at 0xd81bc38.
  The `lw` at 0xd81bc10 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81bc24 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81bc28 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81bc2c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81bc30 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81bc3c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81bc48 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81bc54 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81bc5c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81bc64 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `swc1` at 0xd81bc90 stores 4 bytes to a3 (arg3 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81bcb4, `lw` at 0xd81bccc.
  The `lw` at 0xd81bcb8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81bba4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd81bbc4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81bbf0 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81bc6c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81bca0 calls _XRead with a0=[[[0x1014]+276]+216], a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xd81bcc0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81bcdc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd81bb90 targets 0xd81bce8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd81bbb4 targets 0xd81bbd4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81bbb8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81bbe0 targets 0xd81bc04, is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t0(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t0(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81bbe4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81bc80 targets 0xd81bc94, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81bc8c targets 0xd81bcac and is always taken.
  The `beql` branch at 0xd81bcb0 targets 0xd81bcd0, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81bcb4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81bcd4 targets 0xd81bcec, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81bcd8 runs only when taken and is annulled on fall-through.
  The return at 0xd81bcf4 has v0 = one of [[[[0x1014]+276]+216]+124], ?.

- `__glx_GetTexParameteriv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81bcfc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81bcfc-0xd81be9c (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81bd0c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81bd2c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81bd30 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81bd34 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81bd54, `lw` at 0xd81be4c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81bd60, `lw` at 0xd81bd78, `lw` at 0xd81bda4.
  The `lw` at 0xd81bd64 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81bd7c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81bd8c, `sw` at 0xd81bda8.
  The `sh` at 0xd81bdb0 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81bdb4, `sb` at 0xd81bde0.
  The `lw` at 0xd81bdb8 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81bdcc stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81bdd0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81bdd4 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81bdd8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81bde4 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81bdf0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81bdfc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81be04 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81be30 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81be54, `lw` at 0xd81be6c.
  The `lw` at 0xd81be58 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81bd4c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81bd6c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81bd98 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81be0c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81be40 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81be60 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81be7c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81bd38 targets 0xd81be8c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81bd3c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81bd5c targets 0xd81bd7c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81bd60 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81bd88 targets 0xd81bdac, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81bd8c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81be20 targets 0xd81be34, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81be2c targets 0xd81be4c and is always taken.
  The `beql` branch at 0xd81be50 targets 0xd81be70, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81be54 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81be74 targets 0xd81be8c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81be78 runs only when taken and is annulled on fall-through.
  The return at 0xd81be94 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetTexParameterfv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81be9c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81be9c-0xd81c03c (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81beac loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81becc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81bed0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81bed4 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81bef4, `lw` at 0xd81bfec.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81bf00, `lw` at 0xd81bf18, `lw` at 0xd81bf44.
  The `lw` at 0xd81bf04 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81bf1c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81bf2c, `sw` at 0xd81bf48.
  The `sh` at 0xd81bf50 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81bf54, `sb` at 0xd81bf80.
  The `lw` at 0xd81bf58 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81bf6c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81bf70 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81bf74 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81bf78 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81bf84 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81bf90 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81bf9c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81bfa4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd81bfd0 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81bff4, `lw` at 0xd81c00c.
  The `lw` at 0xd81bff8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81beec calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81bf0c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81bf38 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81bfac calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81bfe0 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81c000 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c01c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81bed8 targets 0xd81c02c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81bedc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81befc targets 0xd81bf1c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81bf00 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81bf28 targets 0xd81bf4c, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81bf2c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81bfc0 targets 0xd81bfd4, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81bfcc targets 0xd81bfec and is always taken.
  The `beql` branch at 0xd81bff0 targets 0xd81c010, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81bff4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c014 targets 0xd81c02c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81c018 runs only when taken and is annulled on fall-through.
  The return at 0xd81c034 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetTexGeniv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81c03c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81c03c-0xd81c1dc (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81c04c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c06c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c070 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81c074 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81c094, `lw` at 0xd81c18c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81c0a0, `lw` at 0xd81c0b8, `lw` at 0xd81c0e4.
  The `lw` at 0xd81c0a4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81c0bc loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81c0cc, `sw` at 0xd81c0e8.
  The `sh` at 0xd81c0f0 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81c0f4, `sb` at 0xd81c120.
  The `lw` at 0xd81c0f8 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81c10c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81c110 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81c114 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81c118 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81c124 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81c130 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81c13c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81c144 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81c170 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81c194, `lw` at 0xd81c1ac.
  The `lw` at 0xd81c198 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81c08c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81c0ac calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c0d8 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c14c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81c180 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81c1a0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c1bc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81c078 targets 0xd81c1cc, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81c07c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c09c targets 0xd81c0bc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81c0a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c0c8 targets 0xd81c0ec, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81c0cc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81c160 targets 0xd81c174, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81c16c targets 0xd81c18c and is always taken.
  The `beql` branch at 0xd81c190 targets 0xd81c1b0, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81c194 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c1b4 targets 0xd81c1cc, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81c1b8 runs only when taken and is annulled on fall-through.
  The return at 0xd81c1d4 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetTexGenfv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81c1dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81c1dc-0xd81c37c (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd81c1ec loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c20c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c210 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81c214 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81c234, `lw` at 0xd81c32c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81c240, `lw` at 0xd81c258, `lw` at 0xd81c284.
  The `lw` at 0xd81c244 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81c25c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81c26c, `sw` at 0xd81c288.
  The `sh` at 0xd81c290 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81c294, `sb` at 0xd81c2c0.
  The `lw` at 0xd81c298 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81c2ac stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81c2b0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81c2b4 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81c2b8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81c2c4 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81c2d0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81c2dc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81c2e4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd81c310 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81c334, `lw` at 0xd81c34c.
  The `lw` at 0xd81c338 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81c22c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81c24c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c278 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c2ec calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81c320 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81c340 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c35c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81c218 targets 0xd81c36c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81c21c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c23c targets 0xd81c25c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81c240 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c268 targets 0xd81c28c, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81c26c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81c300 targets 0xd81c314, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81c30c targets 0xd81c32c and is always taken.
  The `beql` branch at 0xd81c330 targets 0xd81c350, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81c334 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c354 targets 0xd81c36c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81c358 runs only when taken and is annulled on fall-through.
  The return at 0xd81c374 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_GetTexGendv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81c37c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81c37c-0xd81c52c (432 bytes).
  It occupies 432 bytes.
  The `lw` at 0xd81c38c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c3ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c3b0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81c3b4 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd81c3d4, `lw` at 0xd81c4dc.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd81c3e0, `lw` at 0xd81c3f8, `lw` at 0xd81c424.
  The `lw` at 0xd81c3e4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd81c3fc loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd81c40c, `sw` at 0xd81c428.
  The `sh` at 0xd81c430 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd81c434, `sb` at 0xd81c460.
  The `lw` at 0xd81c438 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd81c44c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd81c450 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd81c454 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd81c458 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd81c464 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd81c470 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd81c47c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd81c484 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd81c4e4, `lw` at 0xd81c4fc.
  The `lw` at 0xd81c4e8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd81c3cc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81c3ec calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c418 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c48c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd81c4b4 calls memcpy with a0=a2 at entry (arg2), a1=sp-36, a2=0x8, a3=?.
  The `jalr` at 0xd81c4d0 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd81c4f0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81c50c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81c3b8 targets 0xd81c51c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81c3bc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c3dc targets 0xd81c3fc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd81c3e0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c408 targets 0xd81c42c, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd81c40c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd81c4a0 targets 0xd81c4c4, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd81c4bc targets 0xd81c4dc and is always taken.
  The `beql` branch at 0xd81c4e0 targets 0xd81c500, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd81c4e4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd81c504 targets 0xd81c51c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd81c508 runs only when taken and is annulled on fall-through.
  The return at 0xd81c524 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).

- `__glx_SamplePatternSGIS` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81c52c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81c52c-0xd81c5a0 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81c538 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c548 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c554 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81c558 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81c55c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81c560 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81c564 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81c56c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81c584 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81c574 targets 0xd81c594, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81c578 runs only when taken and is annulled on fall-through.
  The return at 0xd81c598 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_EvalCoord2d` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81c5a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81c5a0-0xd81c664 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xd81c5b0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c5c8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c5d4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81c5e0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81c5e4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81c620 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81c634 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81c5f4 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81c614 calls memcpy with a0=?, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd81c644 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd81c630 targets 0xd81c650, is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd81c65c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_EvalCoord1f` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81c664 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81c664-0xd81c6d4 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd81c670 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c680 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c68c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81c690 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81c694 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81c698 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81c69c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81c6a4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81c6b8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81c6ac targets 0xd81c6c8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81c6b0 runs only when taken and is annulled on fall-through.
  The return at 0xd81c6cc has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_EvalCoord1dv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81c6d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81c6d4-0xd81c770 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd81c6e4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c6f4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c700 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81c70c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81c710 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81c72c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81c740 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81c720 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81c750 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd81c73c targets 0xd81c75c, is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd81c768 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_EvalCoord1d` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81c770 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81c770-0xd81c810 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd81c780 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c794 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c7a0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81c7ac stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81c7b0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81c7cc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81c7e0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81c7c0 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81c7f0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd81c7dc targets 0xd81c7fc, is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd81c808 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_MapGrid2f` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81c810 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81c810-0xd81c8a8 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xd81c81c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c830 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c83c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81c844 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd81c848 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd81c84c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81c850 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd81c854 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd81c858 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `swc1` at 0xd81c864 stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `swc1` at 0xd81c86c stores 4 bytes to [[[0x1014]+276]+4] +0x18.
  The `lw` at 0xd81c870 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81c874 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81c88c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81c87c targets 0xd81c89c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+28) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81c880 runs only when taken and is annulled on fall-through.
  The return at 0xd81c8a0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_MapGrid2d` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81c8a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81c8a8-0xd81c9b4 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0xd81c8b8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c8d8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c8e4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81c8f0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81c8f4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81c968 stores 4 bytes to [[[0x1014]+276]+4] +0x24.
  The `sw` at 0xd81c970 stores 4 bytes to [[[0x1014]+276]+4] +0x28.
  The `lw` at 0xd81c974 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81c978 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81c900 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp+8, a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd81c91c calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd81c938 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=sp+32, a2=0x8, a3=?.
  The `jalr` at 0xd81c954 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=sp+40, a2=0x8, a3=?.
  The `jalr` at 0xd81c994 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+44, a2=?, a3=?.
  The `beql` branch at 0xd81c980 targets 0xd81c9a4, is taken when t1(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+44) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+44) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd81c984 runs only when taken and is annulled on fall-through.
  The return at 0xd81c9ac has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_MapGrid1f` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81c9b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81c9b4-0xd81ca38 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd81c9c0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81c9d4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81c9e0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81c9e8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd81c9ec stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd81c9f0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81c9f4 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd81c9f8 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd81c9fc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81ca04 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81ca1c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81ca0c targets 0xd81ca2c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81ca10 runs only when taken and is annulled on fall-through.
  The return at 0xd81ca30 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_EvalCoord2dv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81ca38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81ca38-0xd81caf4 (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0xd81ca48 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81ca5c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81ca68 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81ca70 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81ca74 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81cab0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81cac4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81ca84 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81caa4 calls memcpy with a0=?, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd81cad4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd81cac0 targets 0xd81cae0, is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd81caec has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_AlphaFunc` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81caf4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81caf4-0xd81cb70 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd81cb00 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cb10 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81cb1c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81cb24 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd81cb28 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd81cb2c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81cb30 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81cb34 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81cb3c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81cb54 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81cb44 targets 0xd81cb64, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81cb48 runs only when taken and is annulled on fall-through.
  The return at 0xd81cb68 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_EvalPoint2` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81cb70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81cb70-0xd81cbec (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd81cb7c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cb8c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81cb98 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81cb9c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81cba0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81cba4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81cba8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81cbac loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81cbb4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81cbd0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd81cbbc targets 0xd81cbe0, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81cbc0 runs only when taken and is annulled on fall-through.
  The return at 0xd81cbe4 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_EvalMesh2` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81cbec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81cbec-0xd81cc84 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xd81cbfc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cc10 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81cc1c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81cc20 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81cc24 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81cc28 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81cc2c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd81cc30 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd81cc34 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd81cc40 stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `lw` at 0xd81cc44 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81cc48 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81cc64 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+24, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81cc50 targets 0xd81cc74, is taken when t0(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+24) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+24) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd81cc54 runs only when taken and is annulled on fall-through.
  The return at 0xd81cc7c has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_EvalPoint1` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81cc84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81cc84-0xd81ccf8 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81cc90 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cca0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81ccac loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81ccb0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81ccb4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81ccb8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81ccbc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81ccc4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81ccdc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81cccc targets 0xd81ccec, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81ccd0 runs only when taken and is annulled on fall-through.
  The return at 0xd81ccf0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_EvalMesh1` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81ccf8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81ccf8-0xd81cd80 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd81cd08 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cd18 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81cd24 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81cd28 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81cd2c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81cd30 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd81cd34 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd81cd38 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd81cd3c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81cd44 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81cd60 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16.
  The `beql` branch at 0xd81cd4c targets 0xd81cd70, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81cd50 runs only when taken and is annulled on fall-through.
  The return at 0xd81cd78 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_EvalCoord2fv` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81cd80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81cd80-0xd81ce00 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd81cd8c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cd9c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81cda8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81cdac stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81cdb0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd81cdb4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd81cdbc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd81cdc0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd81cdc4 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81cdc8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81cdcc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81cde4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81cdd4 targets 0xd81cdf4, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81cdd8 runs only when taken and is annulled on fall-through.
  The return at 0xd81cdf8 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_EvalCoord2f` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81ce00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81ce00-0xd81ce74 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81ce0c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81ce1c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81ce28 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81ce2c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81ce30 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81ce34 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81ce38 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81ce3c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81ce44 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81ce58 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81ce4c targets 0xd81ce68, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81ce50 runs only when taken and is annulled on fall-through.
  The return at 0xd81ce6c has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_MapGrid1d` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81ce74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81ce74-0xd81cf48 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xd81ce84 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cea0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81ceac loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81ceb8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81cebc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81cf04 stores 4 bytes to ?.
  The `lw` at 0xd81cf08 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81cf0c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81cecc calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp+8, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81ceec calls memcpy with a0=?, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd81cf28 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd81cf14 targets 0xd81cf38, is taken when t0(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < a3(?) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81cf18 runs only when taken and is annulled on fall-through.
  The return at 0xd81cf40 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_ClearStencil` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81cf48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81cf48-0xd81cfbc (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81cf54 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cf64 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81cf70 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81cf74 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81cf78 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81cf7c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81cf80 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81cf88 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81cfa0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81cf90 targets 0xd81cfb0, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81cf94 runs only when taken and is annulled on fall-through.
  The return at 0xd81cfb4 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_ClearColor` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81cfbc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81cfbc-0xd81d048 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd81cfcc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81cfe0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81cfec loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81cff0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81cff4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81cff8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81cffc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd81d008 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `swc1` at 0xd81d010 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd81d014 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d018 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d02c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d020 targets 0xd81d03c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d024 runs only when taken and is annulled on fall-through.
  The return at 0xd81d040 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_ClearIndex` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81d048 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81d048-0xd81d0b8 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd81d054 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d064 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d070 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d074 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d078 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81d07c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81d080 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d088 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d09c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d090 targets 0xd81d0ac, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d094 runs only when taken and is annulled on fall-through.
  The return at 0xd81d0b0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_ClearAccum` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81d0b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81d0b8-0xd81d144 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd81d0c8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d0dc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d0e8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d0ec stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d0f0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd81d0f4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81d0f8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `swc1` at 0xd81d104 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `swc1` at 0xd81d10c stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd81d110 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d114 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d128 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d11c targets 0xd81d138, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d120 runs only when taken and is annulled on fall-through.
  The return at 0xd81d13c has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Clear` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81d144 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81d144-0xd81d1b8 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81d150 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d160 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d16c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d170 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d174 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81d178 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81d17c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d184 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d19c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d18c targets 0xd81d1ac, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d190 runs only when taken and is annulled on fall-through.
  The return at 0xd81d1b0 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_DrawBuffer` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81d1b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81d1b8-0xd81d22c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81d1c4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d1d4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d1e0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d1e4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d1e8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81d1ec stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81d1f0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d1f8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d210 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d200 targets 0xd81d220, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d204 runs only when taken and is annulled on fall-through.
  The return at 0xd81d224 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_PushName` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81d22c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81d22c-0xd81d2a0 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81d238 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d248 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d254 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d258 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d25c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81d260 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81d264 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d26c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d284 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d274 targets 0xd81d294, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d278 runs only when taken and is annulled on fall-through.
  The return at 0xd81d298 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_ClearDepth` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81d2a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81d2a0-0xd81d340 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd81d2b0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d2c4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d2d0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d2dc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d2e0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81d2fc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d310 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d2f0 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81d320 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd81d30c targets 0xd81d32c, is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd81d338 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_PushAttrib` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81d340 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81d340-0xd81d3b4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd81d34c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d35c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d368 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d36c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d370 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd81d374 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd81d378 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d380 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d398 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d388 targets 0xd81d3a8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d38c runs only when taken and is annulled on fall-through.
  The return at 0xd81d3ac has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_PopAttrib` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81d3b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81d3b4-0xd81d420 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd81d3c0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d3d0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d3dc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d3e0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81d3e4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81d3e8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d3f0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d404 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d3f8 targets 0xd81d414, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d3fc runs only when taken and is annulled on fall-through.
  The return at 0xd81d418 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_Accum` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd81d420 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd81d420-0xd81d49c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd81d42c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81d43c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81d448 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81d450 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd81d454 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd81d458 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd81d45c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd81d460 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81d468 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81d480 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd81d470 targets 0xd81d490, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd81d474 runs only when taken and is annulled on fall-through.
  The return at 0xd81d494 has v0 = one of ?, ret(__glXFlushRenderBuffer).

Skipped routines: 4 in total; 4 failed: facts: no function symbol at 0x0; give --size to read it anyway.
