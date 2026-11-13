# Instruction readings from hostfacts

Each entry summarises selected memory accesses, calls, conditional branches and returns reported by hostfacts for the named routine and binary. Every instruction claim includes its address. These are observations of the installed software, not hardware measurements. Unknown values remain marked unknown.








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







- `gl_comm_flush` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec3ff10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec3ff10-0xec4018c (636 bytes).
  It occupies 636 bytes.
  The `lw` at 0xec3ff30 loads 4 bytes from abs 0xecdc614 (comm_curgfile).
  2 such `lw` accesses load 4 bytes from abs 0xecdc604 (comm_buffer), including `lw` at 0xec3ff5c, `lw` at 0xec3ffbc.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0xec3ff74, `lw` at 0xec3ffe8, `lw` at 0xec40050.
  2 such `lw` accesses load 4 bytes from abs 0xecdc60c (comm_curbufpos), including `lw` at 0xec3ff98, `lw` at 0xec3ffa0.
  The `sw` at 0xec3ff9c stores 4 bytes to [0xecdc60c] +0x0.
  The `sw` at 0xec3ffcc stores 4 bytes to abs 0xecdc60c (comm_curbufpos).
  The `lw` at 0xec3ffd0 loads 4 bytes from abs 0xecdc600 (comm_stdsize).
  The `sw` at 0xec3ffe4 stores 4 bytes to abs 0xecdc608 (comm_endbuffer).
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xec40024, `sw` at 0xec400c8.
  2 such `lw` accesses load 4 bytes from abs 0xece324c, including `lw` at 0xec40028, `lw` at 0xec400d0.
  2 such `sw` accesses store 4 bytes to abs 0xece324c, including `sw` at 0xec40038, `sw` at 0xec400e0.
  The `lw` at 0xec40088 loads 4 bytes from abs 0xece323c.
  2 such `lw` accesses load 4 bytes from abs 0xece3244, including `lw` at 0xec4008c, `lw` at 0xec4013c.
  The `sw` at 0xec400a8 stores 4 bytes to abs 0xece323c.
  2 such `sw` accesses store 4 bytes to abs 0xece3244, including `sw` at 0xec400ac, `sw` at 0xec40150.
  The `lw` at 0xec40148 loads 4 bytes from abs 0xece3234.
  The `sw` at 0xec40158 stores 4 bytes to abs 0xece3234.
  The `jalr` at 0xec3ff64 calls gl_comm_default_init [0xec3f090] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xec3ffec calls gl_dgl_info [0xec7f420] with a0=0x6, a1=0xecd3c38, a2=?, a3=?.
  The `jalr` at 0xec40044 calls gl_dgl_info_more [0xec7f4d0] with a0=0x6, a1=0xecd3c58, a2=?, a3=?.
  The `jalr` at 0xec40064 calls gl_comm_io [0xec3f428] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xec4007c calls gl_comm_fatal_error [0xec40754] with a0=0xecd3c5c, a1=?, a2=?, a3=?.
  The `jalr` at 0xec400f4 calls gl_dgl_info_more [0xec7f4d0] with a0=0x6, a1=0xecd3c64, a2=?, a3=?.
  The `jalr` at 0xec40114 calls gl_comm_io [0xec3f428] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xec4012c calls gl_comm_fatal_error [0xec40754] with a0=0xecd3c6c, a1=?, a2=?, a3=?.
  The `bne` branch at 0xec3ff58 targets 0xec3ff74, is taken when s5(=[0xecdc614]) != 0, and falls through when s5(=[0xecdc614]) == 0.
  The `bne` branch at 0xec3ff7c targets 0xec3ff8c, is taken when t6(?) != at(=0x1), and falls through when t6(?) == at(=0x1).
  The `beq` branch at 0xec3ff84 targets 0xec4015c and is always taken.
  The `bne` branch at 0xec3ffac targets 0xec3ffbc, is taken when s2(?) != at(=0x8), and falls through when s2(?) == at(=0x8).
  The `beq` branch at 0xec3ffb4 targets 0xec4015c and is always taken.
  The `beq` branch at 0xec3fff8 targets 0xec400b8, is taken when s0(?) >= s2(?) (signed), and falls through when s0(?) < s2(?) (signed).
  The `beq` branch at 0xec4006c targets 0xec40088, is taken when v0(=ret(gl_comm_io)) == s0(?), and falls through when v0(=ret(gl_comm_io)) != s0(?).
  The `bne` branch at 0xec400b0 targets 0xec40024, is taken when s0(?) < s2(?) (signed), and falls through when s0(?) >= s2(?) (signed).
  The `beq` branch at 0xec4011c targets 0xec40138, is taken when v0(=ret(gl_comm_io)) == s2(?), and falls through when v0(=ret(gl_comm_io)) != s2(?).
  The return at 0xec40184 has v0 = 0x0.







- `push_gfile` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec8c400 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec8c400-0xec8c450 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xec8c418 loads 4 bytes from abs 0xecdc614 (comm_curgfile).
  The `sw` at 0xec8c42c stores 4 bytes to abs 0xeceba70.
  The `jalr` at 0xec8c434 calls gl_comm_flush [0xec3ff10] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xec8c428 targets 0xec8c440, is taken when t6(=[0xecdc614]) == 0, and falls through when t6(=[0xecdc614]) != 0.
  The return at 0xec8c448 has v0 = one of 0xeceba70, ret(gl_comm_flush).







- `_GLsetWM_COMMAND` in `usr/gfx/arch/IGLOO/libgl.so` at 0xecc9dac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xecc9dac-0xecc9f44 (408 bytes).
  It occupies 408 bytes.
  The `lw` at 0xecc9dcc loads 4 bytes from sym(__Argc) +0x0.
  The `lw` at 0xecc9dd0 loads 4 bytes from sym(__Argv) +0x0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xecc9e08, `lw` at 0xecc9e7c, `lw` at 0xecc9e9c.
  The `sb` at 0xecc9e84 stores 1 byte to ?.
  The `lw` at 0xecc9edc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xecc9ee0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jalr` at 0xecc9e20 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc9e54 calls gl_malloc [0xec5fcf4] with a0=?, a1=0xecd8e44, a2=?, a3=?.
  The `jalr` at 0xecc9e90 calls strcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc9ea4 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc9efc calls XChangeProperty with a0=[a0+4], a1=[a0+64], a2=0x22, a3=0x1f.
  The `jalr` at 0xecc9f14 calls gl_free [0xec5fd74] with a0=ret(gl_malloc), a1=0xecd8e58, a2=?, a3=?.
  The `blez` branch at 0xecc9df4 targets 0xecc9e48, is taken when s3(=[sym(__Argc)]) <= 0 (signed), and falls through when s3(=[sym(__Argc)]) > 0 (signed).
  The `beq` branch at 0xecc9e10 targets 0xecc9e34, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xecc9e2c targets 0xecc9e34 and is always taken.
  The `bne` branch at 0xecc9e40 targets 0xecc9e08, is taken when s2(?) != s0(=([sym(__Argc)] << 0x2)), and falls through when s2(?) == s0(=([sym(__Argc)] << 0x2)).
  The `beq` branch at 0xecc9e64 targets 0xecc9f20, is taken when v0(=ret(gl_malloc)) == 0, and falls through when v0(=ret(gl_malloc)) != 0.
  The `blez` branch at 0xecc9e6c targets 0xecc9ed0, is taken when s3(=[sym(__Argc)]) <= 0 (signed), and falls through when s3(=[sym(__Argc)]) > 0 (signed).
  The `beql` branch at 0xecc9e80 targets 0xecc9ec0, is taken when a1(?) == 0, and falls through when a1(?) != 0; its branch-likely delay slot `sb zero,0(s0)` at 0xecc9e84 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xecc9eb4 targets 0xecc9ec4 and is always taken.
  The `bne` branch at 0xecc9ec8 targets 0xecc9e7c, is taken when s2(?) != s5(=([sym(__Argc)] << 0x2)), and falls through when s2(?) == s5(=([sym(__Argc)] << 0x2)).
  The return at 0xecc9f3c has v0 = one of ret(gl_malloc), ret(gl_free).
  The instructions from 0xecc9ebc to 0xecc9ebc are not reached by any path from the entry, and their branches are not listed.







- `gl_comm_flush` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec40750 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec40750-0xec40984 (564 bytes).
  It occupies 564 bytes.
  The `lw` at 0xec4076c loads 4 bytes from abs 0xecdf610 (comm_curgfile).
  2 such `lw` accesses load 4 bytes from abs 0xecd6c44 (comm_buffer), including `lw` at 0xec40778, `lw` at 0xec407c8.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0xec40784, `lw` at 0xec407f8, `lw` at 0xec4084c.
  2 such `lw` accesses load 4 bytes from abs 0xecd6c4c (comm_curbufpos), including `lw` at 0xec40794, `lw` at 0xec407a0.
  The `sw` at 0xec40798 stores 4 bytes to [0xecd6c4c] +0x0.
  The `lw` at 0xec407cc loads 4 bytes from abs 0xecd6c40 (comm_stdsize).
  The `sw` at 0xec407dc stores 4 bytes to abs 0xecd6c4c (comm_curbufpos).
  The `sw` at 0xec407ec stores 4 bytes to abs 0xecd6c48 (comm_endbuffer).
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xec40834, `sw` at 0xec408f0.
  The `jalr` at 0xec407f4 calls gl_dgl_info [0xec83550] with a0=0x6, a1=0xecd70a0, a2=?, a3=([0xecd6c40] + [0xecd6c44])-24, a4=0xecd6c48, a5=[0xecd6c40], a6=[0xecd6c44]+4.
  The `jalr` at 0xec4083c calls gl_dgl_info_more [0xec83600] with a0=0x6, a1=0xecdee4c, a2=?, a3=?.
  The `bgezall` at 0xec40854 calls gl_comm_io [0xec3fdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xec408f8 calls gl_dgl_info_more [0xec83600] with a0=0x6, a1=0xecdee42, a2=?, a3=?.
  The `bgezall` at 0xec40910 calls gl_comm_io [0xec3fdb0] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xec40920 calls gl_comm_fatal_error [0xec40ec0] with a0=0xecdee46, a1=?, a2=?, a3=?.
  The `bgezall` at 0xec40944 calls gl_comm_fatal_error [0xec40ec0] with a0=0xecdee51, a1=?, a2=?, a3=?.
  The `bgezall` at 0xec4096c calls gl_comm_default_init [0xec3fa40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0xecd6c44.
  The `beq` branch at 0xec4077c targets 0xec40964, is taken when at(=[0xecdf610]) == 0, and falls through when at(=[0xecdf610]) != 0.
  The `beq` branch at 0xec40790 targets 0xec40954, is taken when v1(?) == a0(=0x1), and falls through when v1(?) != a0(=0x1).
  The `beq` branch at 0xec407ac targets 0xec40930, is taken when s2(?) == t8(=0x4), and falls through when s2(?) != t8(=0x4).
  The `beq` branch at 0xec40800 targets 0xec40810, is taken when s1(?) >= s2(?) (signed), and falls through when s1(?) < s2(?) (signed).
  The `beq` branch at 0xec40808 targets 0xec408d8 and is always taken.
  The `bne` branch at 0xec4085c targets 0xec40944, is taken when v0(=ret(gl_comm_io)) != s2(?), and falls through when v0(=ret(gl_comm_io)) == s2(?).
  The `beq` branch at 0xec408d0 targets 0xec40810, is taken when s1(?) >= s2(?) (signed), and falls through when s1(?) < s2(?) (signed).
  The `beq` branch at 0xec40918 targets 0xec408a8, is taken when v0(=ret(gl_comm_io)) == s1(?), and falls through when v0(=ret(gl_comm_io)) != s1(?).
  The `beq` branch at 0xec40928 targets 0xec408ac and is always taken.
  The `beq` branch at 0xec4093c targets 0xec4089c and is always taken.
  The `beq` branch at 0xec4094c targets 0xec40868 and is always taken.
  The `beq` branch at 0xec4095c targets 0xec4089c and is always taken.
  The `beq` branch at 0xec4097c targets 0xec40784 and is always taken.
  The return at 0xec40894 has v0 = 0x0.
  The return at 0xec408a0 has v0 = 0x0.







- `_GLsetWM_COMMAND` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xecc86a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xecc86a0-0xecc8834 (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0xecc86d4 loads 4 bytes from sym(__Argc) +0x0.
  The `lw` at 0xecc86e4 loads 4 bytes from sym(__Argv) +0x0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xecc8730, `lw` at 0xecc8790, `lw` at 0xecc87a8.
  The `sb` at 0xecc87b4 stores 1 byte to ?.
  The `lw` at 0xecc87dc loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0xecc87e8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `jalr` at 0xecc8710 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc8750 calls gl_malloc [0xec5f4e0] with a0=?, a1=0xecd2a00, a2=?, a3=?.
  The `jalr` at 0xecc8780 calls strcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc878c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc87e4 calls XChangeProperty with a0=[a0+4], a1=[a0+64], a2=0x22, a3=0x1f, a4=0x8, a5=0x0, a6=ret(gl_malloc).
  The `jalr` at 0xecc87f8 calls gl_free [0xec5f570] with a0=ret(gl_malloc), a1=0xecd2a00, a2=?, a3=?.
  The `blez` branch at 0xecc86e8 targets 0xecc882c, is taken when s4(=[sym(__Argc)]) <= 0 (signed), and falls through when s4(=[sym(__Argc)]) > 0 (signed).
  The `beq` branch at 0xecc86fc targets 0xecc8730 and is always taken.
  The `beq` branch at 0xecc8728 targets 0xecc8744, is taken when s0(?) >= s3(=(([sym(__Argc)] << 0x2) + [sym(__Argv)])) (unsigned), and falls through when s0(?) < s3(=(([sym(__Argc)] << 0x2) + [sym(__Argv)])) (unsigned).
  The `bne` branch at 0xecc8734 targets 0xecc8710, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xecc873c targets 0xecc871c and is always taken.
  The `beq` branch at 0xecc8760 targets 0xecc8800, is taken when v0(=ret(gl_malloc)) == 0, and falls through when v0(=ret(gl_malloc)) != 0.
  The `blez` branch at 0xecc8768 targets 0xecc87c0, is taken when s4(=[sym(__Argc)]) <= 0 (signed), and falls through when s4(=[sym(__Argc)]) > 0 (signed).
  The `beq` branch at 0xecc8770 targets 0xecc87a8 and is always taken.
  The `beq` branch at 0xecc87a0 targets 0xecc87c0, is taken when s0(?) == s3(=(([sym(__Argc)] << 0x2) + [sym(__Argv)])), and falls through when s0(?) != s3(=(([sym(__Argc)] << 0x2) + [sym(__Argv)])).
  The `bne` branch at 0xecc87ac targets 0xecc8780, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xecc87b8 targets 0xecc879c and is always taken.
  The `beq` branch at 0xecc882c targets 0xecc8744 and is always taken.
  The return at 0xecc8824 has v0 = one of ret(gl_malloc), ret(gl_free).
  The instructions from 0xecc8704 to 0xecc870c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xecc8778 to 0xecc877c are not reached by any path from the entry, and their branches are not listed.







- `fcg_get_gfx_fifo_count` in `usr/gfx/gfxinfo` at 0x1000e7b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x1000e7b4-0x1000e7f4 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1000e7c0 loads 4 bytes from abs 0x1002778c.
  The `lw` at 0x1000e7c4 loads 4 bytes from sym(ven_pipeaddr) +0x0.
  The `lw` at 0x1000e7d0 loads 4 bytes from [sym(ven_pipeaddr)] +0xa028.
  The `lw` at 0x1000e7d4 loads 4 bytes from [sym(ven_pipeaddr)] +0xa020.
  The `bne` branch at 0x1000e7dc targets 0x1000e7ec, is taken when a3(=[[sym(ven_pipeaddr)]+41000]) < a4(=[[sym(ven_pipeaddr)]+40992]) (unsigned), and falls through when a3(=[[sym(ven_pipeaddr)]+41000]) >= a4(=[[sym(ven_pipeaddr)]+40992]) (unsigned).
  The return at 0x1000e7e4 has v0 = ?.
  The return at 0x1000e7ec has v0 = ?.







- `wg_flush` in `usr/gfx/gfxinfo` at 0x1000ec4c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x1000ec4c-0x1000edd0 (388 bytes).
  It occupies 388 bytes.
  4 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x1000ec64, `lw` at 0x1000ec9c, `lw` at 0x1000ece4.
  The `lw` at 0x1000ecbc loads 4 bytes from [0x100278a0] +0x0.
  The `sw` at 0x1000ed0c stores 4 bytes to [0x10027838] +0x1fe0.
  The `sw` at 0x1000ed3c stores 4 bytes to [0x1002783c] +0x20.
  2 such `sw` accesses store 4 bytes to [0x1002783c] +0x0, including `sw` at 0x1000ed80, `sw` at 0x1000ed88.
  2 such `sw` accesses store 4 bytes to [0x10027840] +0x0, including `sw` at 0x1000ed94, `sw` at 0x1000ed9c.
  The `jal` at 0x1000ed20 calls get_ven_iptype [0x1000fc1c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(ven_iptype)], a3=a3 at entry (arg3), a4=sym(ven_iptype).
  The `jal` at 0x1000ed40 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype).
  The `jal` at 0x1000ed54 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=[0x1002783c], a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype).
  The `jal` at 0x1000ed68 calls (unnamed) [0x1000eb88] with a0=0x19, a1=[0x100278a0], a2=?, a3=?.
  The `jal` at 0x1000eda4 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype), a5=[sym(ven_iptype)].
  The `jal` at 0x1000edb8 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=0xffffffffdeadbeef, a4=sym(ven_iptype), a6=0x19.
  The `beq` branch at 0x1000ec70 targets 0x1000ed1c, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ec80 targets 0x1000ecd4, is taken when a3(?) == v0(=0x13), and falls through when a3(?) != v0(=0x13).
  The `beq` branch at 0x1000ec88 targets 0x1000ed40, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ec94 targets 0x1000ed38, is taken when a2(?) == v1(=0x15), and falls through when a2(?) != v1(=0x15).
  The `beq` branch at 0x1000eca0 targets 0x1000ed54, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `bne` branch at 0x1000ecac targets 0x1000ecc0, is taken when a2(?) != a0(=0x19), and falls through when a2(?) == a0(=0x19).
  The `beq` branch at 0x1000ecb4 targets 0x1000ed64, is taken when s0(=-0x1) == a1(=[0x100278a0]), and falls through when s0(=-0x1) != a1(=[0x100278a0]).
  The `beq` branch at 0x1000ecd4 targets 0x1000eda0, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ece8 targets 0x1000ed8c, is taken when a5(?) == a6(=0x19), and falls through when a5(?) != a6(=0x19).
  The `beq` branch at 0x1000ecf0 targets 0x1000edb8, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ed04 targets 0x1000ed78, is taken when a2(?) == a7(=0x15), and falls through when a2(?) != a7(=0x15).
  The `beq` branch at 0x1000ed30 targets 0x1000ec7c and is always taken.
  The `beq` branch at 0x1000ed38 targets 0x1000ecc0 and is always taken.
  The `beq` branch at 0x1000ed4c targets 0x1000ec90 and is always taken.
  The `beq` branch at 0x1000ed5c targets 0x1000eca8 and is always taken.
  The `beq` branch at 0x1000ed70 targets 0x1000ecbc and is always taken.
  The `beq` branch at 0x1000ed84 targets 0x1000ecc0 and is always taken.
  The `beq` branch at 0x1000ed98 targets 0x1000ecc0 and is always taken.
  The `beq` branch at 0x1000edb0 targets 0x1000ecdc and is always taken.
  The `beq` branch at 0x1000edc8 targets 0x1000ecf8 and is always taken.
  The return at 0x1000eccc has v0 = one of ?, [0x10027840].
  The return at 0x1000ed14 has v0 = ?.







- `venice_fifo_hack` in `usr/gfx/gfxinfo` at 0x1000fd1c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x1000fd1c-0x1000fdf8 (220 bytes).
  It occupies 220 bytes.
  2 such `lw` accesses load 4 bytes from sym(VEN_info) +0x2c, including `lw` at 0x1000fd80, `lw` at 0x1000fdac.
  The `jalr` at 0x1000fd74 calls printf with a0=0x100243b8, a1=?, a2=?, a3=?.
  The `jal` at 0x1000fda4 calls venice_rmfifo [0x1000fdf8] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1000fd50 targets 0x1000fde8, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x1000fd58 targets 0x1000fd80, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0x1000fd88 targets 0x1000fdc0, is taken when a1(=[sym(VEN_info)+44]) <= 0 (signed), and falls through when a1(=[sym(VEN_info)+44]) > 0 (signed).
  The `bne` branch at 0x1000fdb8 targets 0x1000fd98, is taken when s0(?) < a2(=[sym(VEN_info)+44]) (signed), and falls through when s0(?) >= a2(=[sym(VEN_info)+44]) (signed).
  The `beq` branch at 0x1000fdf0 targets 0x1000fd58 and is always taken.
  The return at 0x1000fde0 has v0 = one of ?, ret(venice_rmfifo).







- `internal_fifo_flow_control` in `usr/gfx/gfxinfo` at 0x100120d8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x100120d8-0x100120e0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100120d8 has v0 = ?.







- `fcg_get_gfx_fifo_count` in `usr/gfx/setmon` at 0x1001015c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001015c-0x1001019c (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10010168 loads 4 bytes from abs 0x10041d94.
  The `lw` at 0x1001016c loads 4 bytes from sym(ven_pipeaddr) +0x0.
  The `lw` at 0x10010178 loads 4 bytes from [sym(ven_pipeaddr)] +0xa028.
  The `lw` at 0x1001017c loads 4 bytes from [sym(ven_pipeaddr)] +0xa020.
  The `bne` branch at 0x10010184 targets 0x10010194, is taken when a3(=[[sym(ven_pipeaddr)]+41000]) < a4(=[[sym(ven_pipeaddr)]+40992]) (unsigned), and falls through when a3(=[[sym(ven_pipeaddr)]+41000]) >= a4(=[[sym(ven_pipeaddr)]+40992]) (unsigned).
  The return at 0x1001018c has v0 = ?.
  The return at 0x10010194 has v0 = ?.







- `wg_flush` in `usr/gfx/setmon` at 0x100105f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100105f4-0x10010778 (388 bytes).
  It occupies 388 bytes.
  4 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x1001060c, `lw` at 0x10010644, `lw` at 0x1001068c.
  The `lw` at 0x10010664 loads 4 bytes from [0x10042340] +0x0.
  The `sw` at 0x100106b4 stores 4 bytes to [0x10041db8] +0x1fe0.
  The `sw` at 0x100106e4 stores 4 bytes to [0x10041dbc] +0x20.
  2 such `sw` accesses store 4 bytes to [0x10041dbc] +0x0, including `sw` at 0x10010728, `sw` at 0x10010730.
  2 such `sw` accesses store 4 bytes to [0x10041dc0] +0x0, including `sw` at 0x1001073c, `sw` at 0x10010744.
  The `jal` at 0x100106c8 calls get_ven_iptype [0x1000fea0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(ven_iptype)], a3=a3 at entry (arg3), a4=sym(ven_iptype).
  The `jal` at 0x100106e8 calls get_ven_iptype [0x1000fea0] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype).
  The `jal` at 0x100106fc calls get_ven_iptype [0x1000fea0] with a0=?, a1=[0x10041dbc], a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype).
  The `jal` at 0x10010710 calls (unnamed) [0x10010530] with a0=0x19, a1=[0x10042340], a2=?, a3=?.
  The `jal` at 0x1001074c calls get_ven_iptype [0x1000fea0] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype), a5=[sym(ven_iptype)].
  The `jal` at 0x10010760 calls get_ven_iptype [0x1000fea0] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=0xffffffffdeadbeef, a4=sym(ven_iptype), a6=0x19.
  The `beq` branch at 0x10010618 targets 0x100106c4, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x10010628 targets 0x1001067c, is taken when a3(?) == v0(=0x13), and falls through when a3(?) != v0(=0x13).
  The `beq` branch at 0x10010630 targets 0x100106e8, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1001063c targets 0x100106e0, is taken when a2(?) == v1(=0x15), and falls through when a2(?) != v1(=0x15).
  The `beq` branch at 0x10010648 targets 0x100106fc, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `bne` branch at 0x10010654 targets 0x10010668, is taken when a2(?) != a0(=0x19), and falls through when a2(?) == a0(=0x19).
  The `beq` branch at 0x1001065c targets 0x1001070c, is taken when s0(=-0x1) == a1(=[0x10042340]), and falls through when s0(=-0x1) != a1(=[0x10042340]).
  The `beq` branch at 0x1001067c targets 0x10010748, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x10010690 targets 0x10010734, is taken when a5(?) == a6(=0x19), and falls through when a5(?) != a6(=0x19).
  The `beq` branch at 0x10010698 targets 0x10010760, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x100106ac targets 0x10010720, is taken when a2(?) == a7(=0x15), and falls through when a2(?) != a7(=0x15).
  The `beq` branch at 0x100106d8 targets 0x10010624 and is always taken.
  The `beq` branch at 0x100106e0 targets 0x10010668 and is always taken.
  The `beq` branch at 0x100106f4 targets 0x10010638 and is always taken.
  The `beq` branch at 0x10010704 targets 0x10010650 and is always taken.
  The `beq` branch at 0x10010718 targets 0x10010664 and is always taken.
  The `beq` branch at 0x1001072c targets 0x10010668 and is always taken.
  The `beq` branch at 0x10010740 targets 0x10010668 and is always taken.
  The `beq` branch at 0x10010758 targets 0x10010684 and is always taken.
  The `beq` branch at 0x10010770 targets 0x100106a0 and is always taken.
  The return at 0x10010674 has v0 = one of ?, [0x10041dc0].
  The return at 0x100106bc has v0 = ?.







- `venice_fifo_hack` in `usr/gfx/setmon` at 0x1001113c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001113c-0x10011218 (220 bytes).
  It occupies 220 bytes.
  2 such `lw` accesses load 4 bytes from sym(VEN_info) +0x2c, including `lw` at 0x100111a0, `lw` at 0x100111cc.
  The `jalr` at 0x10011194 calls printf with a0=0x1003f468, a1=?, a2=?, a3=?.
  The `jal` at 0x100111c4 calls venice_rmfifo [0x10011218] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10011170 targets 0x10011208, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x10011178 targets 0x100111a0, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0x100111a8 targets 0x100111e0, is taken when a1(=[sym(VEN_info)+44]) <= 0 (signed), and falls through when a1(=[sym(VEN_info)+44]) > 0 (signed).
  The `bne` branch at 0x100111d8 targets 0x100111b8, is taken when s0(?) < a2(=[sym(VEN_info)+44]) (signed), and falls through when s0(?) >= a2(=[sym(VEN_info)+44]) (signed).
  The `beq` branch at 0x10011210 targets 0x10011178 and is always taken.
  The return at 0x10011200 has v0 = one of ?, ret(venice_rmfifo).







- `push` in `usr/lib32/libfm.so` at 0xee18880 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libfm.so`.
  Range: 0xee18880-0xee188a8 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0xee18888 loads 4 bytes from abs 0xee71000.
  The `sw` at 0xee18898 stores 4 bytes to abs 0xee71000.
  The `sw` at 0xee188a4 stores 4 bytes to table(0xee70060) +0x0.
  The return at 0xee188a0 has v0 = ([0xee71000] << 0x2).







- `NO_TOKEN` in `usr/lib32/libfm.so` at 0xee4f1d8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libfm.so`.
  Range: 0xee4f1d8-0xee4f1f8 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0xee4f1e4 loads 4 bytes from abs 0xee65a28.
  The `sw` at 0xee4f1f4 stores 4 bytes to sym(tokenType) +0x0.
  The return at 0xee4f1f0 has v0 = 0x100.







- `Push` in `usr/lib32/libfm.so` at 0xee506d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libfm.so`.
  Range: 0xee506d4-0xee5071c (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xee506d8 loads 4 bytes from abs 0xee81b18.
  The `sw` at 0xee506fc stores 4 bytes to abs 0xee81b18.
  The `sdc1` at 0xee5070c stores 8 bytes to table(0xee81a58) +0x0.
  The `sw` at 0xee50710 stores 4 bytes to abs 0xee769cc.
  The `beq` branch at 0xee50700 targets 0xee50710, is taken when a6(=[0xee81b18]) >= 0x17 (signed), and falls through when a6(=[0xee81b18]) < 0x17 (signed).
  The return at 0xee50708 has v0 = 0x0.
  The return at 0xee50714 has v0 = 0x0.







- `init_gfx_group_table` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x124 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfx.o`.
  Range: 0x124-0x188 (100 bytes).
  It occupies 100 bytes.
  The `jal` at 0x13c calls kern_malloc with a0=0x80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x150 calls bzero with a0=?, a1=0x80, a2=?, a3=?.
  The `jal` at 0x160 calls spinlock_init with a0=sym(gfx_group_table_lock)+4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x178 calls cmn_err with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x12c targets 0x13c, is taken when at(=[sym(gfx_group_table)]:8) == 0, and falls through when at(=[sym(gfx_group_table)]:8) != 0.
  The `beq` branch at 0x148 targets 0x174, is taken when v0(=ret(kern_malloc)) == 0, and falls through when v0(=ret(kern_malloc)) != 0.
  The `beq` branch at 0x16c targets 0x134 and is always taken.
  The `beq` branch at 0x180 targets 0x150 and is always taken.
  The return at 0x134 has v0 = one of ?, ret(spinlock_init).







- `gfx_group_create` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x240 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfx.o`.
  Range: 0x240-0x2fc (188 bytes).
  It occupies 188 bytes.
  The `sw` at 0x278 stores 4 bytes to ret(kern_malloc) +0x8.
  The `sd` at 0x27c stores 8 bytes to ret(kern_malloc) +0x0.
  The `ld` at 0x288 loads 8 bytes from ret(kern_malloc) +0x0.
  The `sw` at 0x290 stores 4 bytes to ret(kern_malloc) +0xc.
  The `ld` at 0x2bc loads 8 bytes from ?.
  The `sd` at 0x2c0 stores 8 bytes to ret(kern_malloc) +0x18.
  The `sd` at 0x2d8 stores 8 bytes to ?.
  The `jal` at 0x250 calls kern_malloc with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x268 calls threadhandle_to_threadgrouphandle with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x280 calls spinlock_init with a0=ret(kern_malloc)+16, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2a0 calls gfxtable_writerlock with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x2d4 calls gfxtable_writerunlock with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `bne` branch at 0x258 targets 0x268, is taken when v0(=ret(kern_malloc)) != 0, and falls through when v0(=ret(kern_malloc)) == 0.
  The `beq` branch at 0x260 targets 0x2dc and is always taken.
  The `beq` branch at 0x294 targets 0x2f0, is taken when (a0(=[ret(kern_malloc)]:8) & 0xf) == 0, and falls through when (a0(=[ret(kern_malloc)]:8) & 0xf) != 0.
  The `beq` branch at 0x2f4 targets 0x2a0 and is always taken.
  The return at 0x2e8 has v0 = one of 0x0, ret(kern_malloc).







- `gfx_group_destroy` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x2fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfx.o`.
  Range: 0x2fc-0x3cc (208 bytes).
  It occupies 208 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x300, `ld` at 0x348.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x33c, `ld` at 0x34c, `ld` at 0x35c.
  The `sd` at 0x384 stores 8 bytes to ?.
  The `jal` at 0x324 calls gfxtable_writerlock with a0=sym(gfx_group_table_lock), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x390 calls gfxtable_writerunlock with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `jal` at 0x3a0 calls spinlock_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3a8 calls kern_free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x318 targets 0x3c4, is taken when (a1(=[a0]:8) & 0xf) == 0, and falls through when (a1(=[a0]:8) & 0xf) != 0.
  The `beq` branch at 0x340 targets 0x374, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x350 targets 0x374, is taken when a6(?) == a5(=[a0]:8), and falls through when a6(?) != a5(=[a0]:8).
  The `beq` branch at 0x360 targets 0x38c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x36c targets 0x358, is taken when a6(?) != a5(=[a0]:8), and falls through when a6(?) == a5(=[a0]:8).
  The `beq` branch at 0x374 targets 0x388, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x380 targets 0x38c and is always taken.
  The `beq` branch at 0x398 targets 0x3b4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x3c4 targets 0x324 and is always taken.
  The return at 0x3bc has v0 = one of ret(gfxtable_writerunlock), ret(kern_free).







- `gfx_shdup` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x1234 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfx.o`.
  Range: 0x1234-0x12b0 (124 bytes).
  It occupies 124 bytes.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x1250, `ld` at 0x129c.
  The `ld` at 0x125c loads 8 bytes from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x1268 loads 4 bytes from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `jal` at 0x1240 calls gthread_find with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1284 calls gthread_create with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a4=[[ret(gthread_find)+16]:8+24]:8.
  The `jal` at 0x1298 calls gthread_attach_list with a0=ret(gthread_create), a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0x12a0 calls setgfxsched_thread with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1248 targets 0x1274, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x1254 targets 0x1278, is taken when v0(=[ret(gthread_find)+16]:8) == 0, and falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x1260 targets 0x1278, is taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x1270 targets 0x1284, is taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0, and falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `beq` branch at 0x128c targets 0x1278, is taken when v0(=ret(gthread_create)) == 0, and falls through when v0(=ret(gthread_create)) != 0.
  The `beq` branch at 0x12a8 targets 0x1278 and is always taken.
  The return at 0x127c has v0 = one of [ret(gthread_find)+16]:8, ?, ret(gthread_create), ret(setgfxsched_thread).







- `gfx_conflict_scan` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x1e44 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfx.o`.
  Range: 0x1e44-0x1f28 (228 bytes).
  It occupies 228 bytes.
  The `ld` at 0x1e7c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x1e88 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x1e8c loads 8 bytes from [a0+24]:8 +0x0.
  The `ld` at 0x1ea0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1ea4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1eb0 loads 8 bytes from [a0+16]:8 +0x18.
  The `lw` at 0x1ecc loads 4 bytes from ?.
  The `ld` at 0x1f08 loads 8 bytes from ?.
  The `sw` at 0x1f24 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x1ec4 calls psema with a0=?, a1=0x19, a2=?, a3=?, a5=one of 0x1, 0x2.
  The `jal` at 0x1ef0 calls vsema with a0=?, a1=?, a2=one of 0x1, 0x2, a3=?, a4=0x1.
  The `beq` branch at 0x1e5c targets 0x1e7c, is taken when a2 == a5(=0x1), and falls through when a2 != a5(=0x1).
  The `beq` branch at 0x1e80 targets 0x1e98, is taken when v0(=[a0+24]:8) == 0, and falls through when v0(=[a0+24]:8) != 0.
  The `beq` branch at 0x1e90 targets 0x1ea0, is taken when at(=[[a0+24]:8]:8) == v1(=[a1+8]:8), and falls through when at(=[[a0+24]:8]:8) != v1(=[a1+8]:8).
  The `beq` branch at 0x1e98 targets 0x1e68 and is always taken.
  The `beq` branch at 0x1ea8 targets 0x1eb4, is taken when v0(=[a0+16]:8) == 0, and falls through when v0(=[a0+16]:8) != 0.
  The `beq` branch at 0x1eb4 targets 0x1f14, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1f00 targets 0x1f1c, is taken when a5(=one of 0x1, 0x2) != a6(=[a1]), and falls through when a5(=one of 0x1, 0x2) == a6(=[a1]).
  The `bne` branch at 0x1f0c targets 0x1ec0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1f14 targets 0x1e68 and is always taken.
  The `beq` branch at 0x1f20 targets 0x1e68 and is always taken.
  The return at 0x1e74 has v0 = one of 0x0, 0x1.







- `gfx_shalloc` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x336c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfx.o`.
  Range: 0x336c-0x342c (192 bytes).
  It occupies 192 bytes.
  3 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x33b4, `ld` at 0x33c8, `ld` at 0x33fc.
  The `ld` at 0x33cc loads 8 bytes from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x33dc loads 4 bytes from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `sd` at 0x33ec stores 8 bytes to ?.
  The `ld` at 0x33f0 loads 8 bytes from ?.
  The `sw` at 0x3428 stores 4 bytes to ret(gfx_group_create) +0xc.
  The `jal` at 0x3374 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x337c calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x338c calls gfx_group_create with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x3398 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x33ac calls gthread_attach_group with a0=ret(gthread_find), a1=ret(gfx_group_create), a2=?, a3=?.
  The `jal` at 0x33c0 calls GfxListWriterLock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3400 calls GfxListWriterUnlock with a0=[ret(gthread_find)+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=?, a5=0x1.
  The `jal` at 0x3408 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0x33a0 targets 0x3408, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x33b8 targets 0x3408, is taken when a0(=[ret(gthread_find)+16]:8) == 0, and falls through when a0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x33d4 targets 0x3400, is taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x33e4 targets 0x3424, is taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0, and falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `bne` branch at 0x33f4 targets 0x33ec, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x3424 targets 0x33ec and is always taken.
  The return at 0x341c has v0 = ret(splx).







- `gfx_shfree` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x342c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfx.o`.
  Range: 0x342c-0x3458 (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x3434 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x343c calls gfx_group_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x3444 calls gfx_group_destroy with a0=ret(gfx_group_find), a1=?, a2=?, a3=?.
  The return at 0x3450 has v0 = ret(gfx_group_destroy).







- `gfx_frs_valid_pipenum` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x3458 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfx.o`.
  Range: 0x3458-0x3464 (12 bytes).
  It occupies 12 bytes.
  The return at 0x345c has v0 = ?.







- `gfx_frs_install` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x3464 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfx.o`.
  Range: 0x3464-0x34bc (88 bytes).
  It occupies 88 bytes.
  The `ld` at 0x3470 loads 8 bytes from (sym(GfxBoards) + (a1 << 0x3)) +0x0.
  The `ld` at 0x3474 loads 8 bytes from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x38.
  The `ld` at 0x3478 loads 8 bytes from [[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8 +0xd0.
  The `ld` at 0x348c loads 8 bytes from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x40.
  The `jalr` at 0x3490 calls (unknown callee) with a0=[[(sym(GfxBoards) + (a1 << 0x3))]:8+64]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `jal` at 0x34ac calls cmn_err with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `beq` branch at 0x3484 targets 0x34a4, is taken when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) == 0, and falls through when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) != 0.
  The `beq` branch at 0x34b4 targets 0x349c and is always taken.
  The return at 0x349c has v0 = one of ret(?), ret(cmn_err).







- `gfx_frs_uninstall` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x34bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfx.o`.
  Range: 0x34bc-0x350c (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x34c8 loads 8 bytes from (sym(GfxBoards) + (a0 << 0x3)) +0x0.
  The `ld` at 0x34cc loads 8 bytes from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x38.
  The `ld` at 0x34d0 loads 8 bytes from [[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8 +0xd8.
  The `ld` at 0x34e4 loads 8 bytes from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x40.
  The `jalr` at 0x34e0 calls (unknown callee) with a0=[[(sym(GfxBoards) + (a0 << 0x3))]:8+64]:8, a1=a1 at entry (arg1), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `jal` at 0x34fc calls cmn_err with a0=0x5, a1=sym(.rodata), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `beq` branch at 0x34d8 targets 0x34f4, is taken when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) == 0, and falls through when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) != 0.
  The `beq` branch at 0x3504 targets 0x34ec and is always taken.
  The return at 0x34ec has v0 = one of ret(?), ret(cmn_err).







- `irix5_to_gfx_getboardinfo_args` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x350c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfx.o`.
  Range: 0x350c-0x3584 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x3520 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x3530 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x3534, `sd` at 0x3580.
  The `sw` at 0x353c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x3548 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x354c loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x3550 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x3554 loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x3558 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x355c loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x3560 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `jal` at 0x3570 calls kern_malloc with a0=0xc, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3518 targets 0x3548, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x3528 targets 0x3570, is taken when at(=[a3]) < 0xc (unsigned), and falls through when at(=[a3]) >= 0xc (unsigned).
  The `beq` branch at 0x3540 targets 0x3564 and is always taken.
  The `beq` branch at 0x357c targets 0x3538 and is always taken.
  The return at 0x3568 has v0 = 0x0.







- `irix5_to_gfx_download_args` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x3584 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfx.o`.
  Range: 0x3584-0x3624 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x3598 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x35a8 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x35ac, `sd` at 0x3620.
  The `sw` at 0x35b4 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x35c0 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x35c4 loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x35c8 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x35cc loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x35d0 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x35d4 loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x35d8 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `lw` at 0x35dc loads 4 bytes from [a3+16]:8 +0xc.
  The `sw` at 0x35e0 stores 4 bytes to a1 (arg1 at entry) +0x14.
  The `lw` at 0x35e4 loads 4 bytes from [a3+16]:8 +0x10.
  The `sw` at 0x35e8 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `lw` at 0x35ec loads 4 bytes from [a3+16]:8 +0x14.
  The `sw` at 0x35f0 stores 4 bytes to a1 (arg1 at entry) +0x1c.
  The `lw` at 0x35f4 loads 4 bytes from [a3+16]:8 +0x18.
  The `sw` at 0x35f8 stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `lw` at 0x35fc loads 4 bytes from [a3+16]:8 +0x1c.
  The `sw` at 0x3600 stores 4 bytes to a1 (arg1 at entry) +0x24.
  The `jal` at 0x3610 calls kern_malloc with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3590 targets 0x35c0, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x35a0 targets 0x3610, is taken when at(=[a3]) < 0x20 (unsigned), and falls through when at(=[a3]) >= 0x20 (unsigned).
  The `beq` branch at 0x35b8 targets 0x3604 and is always taken.
  The `beq` branch at 0x361c targets 0x35b0 and is always taken.
  The return at 0x3608 has v0 = 0x0.







- `irix5_to_gfx_attach_board_args` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x3624 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfx.o`.
  Range: 0x3624-0x3694 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x3638 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x3648 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x364c, `sd` at 0x3690.
  The `sw` at 0x3654 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x3660 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x3664 loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x3668 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x366c loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x3670 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `jal` at 0x3680 calls kern_malloc with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3630 targets 0x3660, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x3640 targets 0x3680, is taken when at(=[a3]) < 0x8 (unsigned), and falls through when at(=[a3]) >= 0x8 (unsigned).
  The `beq` branch at 0x3658 targets 0x3674 and is always taken.
  The `beq` branch at 0x368c targets 0x3650 and is always taken.
  The return at 0x3678 has v0 = 0x0.







- `init_gfx_group_table` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x124 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x124-0x188 (100 bytes).
  It occupies 100 bytes.
  The `jal` at 0x13c calls kern_malloc with a0=0x80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x150 calls bzero with a0=?, a1=0x80, a2=?, a3=?.
  The `jal` at 0x160 calls spinlock_init with a0=sym(gfx_group_table_lock)+4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x178 calls cmn_err with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x12c targets 0x13c, is taken when at(=[sym(gfx_group_table)]:8) == 0, and falls through when at(=[sym(gfx_group_table)]:8) != 0.
  The `beq` branch at 0x148 targets 0x174, is taken when v0(=ret(kern_malloc)) == 0, and falls through when v0(=ret(kern_malloc)) != 0.
  The `beq` branch at 0x16c targets 0x134 and is always taken.
  The `beq` branch at 0x180 targets 0x150 and is always taken.
  The return at 0x134 has v0 = one of ?, ret(spinlock_init).







- `gfx_group_create` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x240 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x240-0x2fc (188 bytes).
  It occupies 188 bytes.
  The `sw` at 0x278 stores 4 bytes to ret(kern_malloc) +0x8.
  The `sd` at 0x27c stores 8 bytes to ret(kern_malloc) +0x0.
  The `ld` at 0x288 loads 8 bytes from ret(kern_malloc) +0x0.
  The `sw` at 0x290 stores 4 bytes to ret(kern_malloc) +0xc.
  The `ld` at 0x2bc loads 8 bytes from ?.
  The `sd` at 0x2c0 stores 8 bytes to ret(kern_malloc) +0x18.
  The `sd` at 0x2d8 stores 8 bytes to ?.
  The `jal` at 0x250 calls kern_malloc with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x268 calls threadhandle_to_threadgrouphandle with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x280 calls spinlock_init with a0=ret(kern_malloc)+16, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2a0 calls gfxtable_writerlock with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x2d4 calls gfxtable_writerunlock with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `bne` branch at 0x258 targets 0x268, is taken when v0(=ret(kern_malloc)) != 0, and falls through when v0(=ret(kern_malloc)) == 0.
  The `beq` branch at 0x260 targets 0x2dc and is always taken.
  The `beq` branch at 0x294 targets 0x2f0, is taken when (a0(=[ret(kern_malloc)]:8) & 0xf) == 0, and falls through when (a0(=[ret(kern_malloc)]:8) & 0xf) != 0.
  The `beq` branch at 0x2f4 targets 0x2a0 and is always taken.
  The return at 0x2e8 has v0 = one of 0x0, ret(kern_malloc).







- `gfx_group_destroy` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x2fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x2fc-0x3cc (208 bytes).
  It occupies 208 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x300, `ld` at 0x348.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x33c, `ld` at 0x34c, `ld` at 0x35c.
  The `sd` at 0x384 stores 8 bytes to ?.
  The `jal` at 0x324 calls gfxtable_writerlock with a0=sym(gfx_group_table_lock), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x390 calls gfxtable_writerunlock with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `jal` at 0x3a0 calls spinlock_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3a8 calls kern_free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x318 targets 0x3c4, is taken when (a1(=[a0]:8) & 0xf) == 0, and falls through when (a1(=[a0]:8) & 0xf) != 0.
  The `beq` branch at 0x340 targets 0x374, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x350 targets 0x374, is taken when a6(?) == a5(=[a0]:8), and falls through when a6(?) != a5(=[a0]:8).
  The `beq` branch at 0x360 targets 0x38c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x36c targets 0x358, is taken when a6(?) != a5(=[a0]:8), and falls through when a6(?) == a5(=[a0]:8).
  The `beq` branch at 0x374 targets 0x388, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x380 targets 0x38c and is always taken.
  The `beq` branch at 0x398 targets 0x3b4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x3c4 targets 0x324 and is always taken.
  The return at 0x3bc has v0 = one of ret(gfxtable_writerunlock), ret(kern_free).







- `gfx_shdup` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x1234 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x1234-0x12b0 (124 bytes).
  It occupies 124 bytes.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x1250, `ld` at 0x129c.
  The `ld` at 0x125c loads 8 bytes from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x1268 loads 4 bytes from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `jal` at 0x1240 calls gthread_find with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1284 calls gthread_create with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a4=[[ret(gthread_find)+16]:8+24]:8.
  The `jal` at 0x1298 calls gthread_attach_list with a0=ret(gthread_create), a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0x12a0 calls setgfxsched_thread with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1248 targets 0x1274, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x1254 targets 0x1278, is taken when v0(=[ret(gthread_find)+16]:8) == 0, and falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x1260 targets 0x1278, is taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x1270 targets 0x1284, is taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0, and falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `beq` branch at 0x128c targets 0x1278, is taken when v0(=ret(gthread_create)) == 0, and falls through when v0(=ret(gthread_create)) != 0.
  The `beq` branch at 0x12a8 targets 0x1278 and is always taken.
  The return at 0x127c has v0 = one of [ret(gthread_find)+16]:8, ?, ret(gthread_create), ret(setgfxsched_thread).







- `gfx_conflict_scan` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x1e44 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x1e44-0x1f28 (228 bytes).
  It occupies 228 bytes.
  The `ld` at 0x1e7c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x1e88 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x1e8c loads 8 bytes from [a0+24]:8 +0x0.
  The `ld` at 0x1ea0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1ea4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1eb0 loads 8 bytes from [a0+16]:8 +0x18.
  The `lw` at 0x1ecc loads 4 bytes from ?.
  The `ld` at 0x1f08 loads 8 bytes from ?.
  The `sw` at 0x1f24 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x1ec4 calls psema with a0=?, a1=0x19, a2=?, a3=?, a5=one of 0x1, 0x2.
  The `jal` at 0x1ef0 calls vsema with a0=?, a1=?, a2=one of 0x1, 0x2, a3=?, a4=0x1.
  The `beq` branch at 0x1e5c targets 0x1e7c, is taken when a2 == a5(=0x1), and falls through when a2 != a5(=0x1).
  The `beq` branch at 0x1e80 targets 0x1e98, is taken when v0(=[a0+24]:8) == 0, and falls through when v0(=[a0+24]:8) != 0.
  The `beq` branch at 0x1e90 targets 0x1ea0, is taken when at(=[[a0+24]:8]:8) == v1(=[a1+8]:8), and falls through when at(=[[a0+24]:8]:8) != v1(=[a1+8]:8).
  The `beq` branch at 0x1e98 targets 0x1e68 and is always taken.
  The `beq` branch at 0x1ea8 targets 0x1eb4, is taken when v0(=[a0+16]:8) == 0, and falls through when v0(=[a0+16]:8) != 0.
  The `beq` branch at 0x1eb4 targets 0x1f14, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1f00 targets 0x1f1c, is taken when a5(=one of 0x1, 0x2) != a6(=[a1]), and falls through when a5(=one of 0x1, 0x2) == a6(=[a1]).
  The `bne` branch at 0x1f0c targets 0x1ec0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1f14 targets 0x1e68 and is always taken.
  The `beq` branch at 0x1f20 targets 0x1e68 and is always taken.
  The return at 0x1e74 has v0 = one of 0x0, 0x1.







- `gfx_shalloc` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x336c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x336c-0x342c (192 bytes).
  It occupies 192 bytes.
  3 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x33b4, `ld` at 0x33c8, `ld` at 0x33fc.
  The `ld` at 0x33cc loads 8 bytes from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x33dc loads 4 bytes from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `sd` at 0x33ec stores 8 bytes to ?.
  The `ld` at 0x33f0 loads 8 bytes from ?.
  The `sw` at 0x3428 stores 4 bytes to ret(gfx_group_create) +0xc.
  The `jal` at 0x3374 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x337c calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x338c calls gfx_group_create with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x3398 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x33ac calls gthread_attach_group with a0=ret(gthread_find), a1=ret(gfx_group_create), a2=?, a3=?.
  The `jal` at 0x33c0 calls GfxListWriterLock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3400 calls GfxListWriterUnlock with a0=[ret(gthread_find)+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=?, a5=0x1.
  The `jal` at 0x3408 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0x33a0 targets 0x3408, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x33b8 targets 0x3408, is taken when a0(=[ret(gthread_find)+16]:8) == 0, and falls through when a0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x33d4 targets 0x3400, is taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x33e4 targets 0x3424, is taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0, and falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `bne` branch at 0x33f4 targets 0x33ec, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x3424 targets 0x33ec and is always taken.
  The return at 0x341c has v0 = ret(splx).







- `gfx_shfree` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x342c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x342c-0x3458 (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x3434 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x343c calls gfx_group_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x3444 calls gfx_group_destroy with a0=ret(gfx_group_find), a1=?, a2=?, a3=?.
  The return at 0x3450 has v0 = ret(gfx_group_destroy).







- `gfx_frs_valid_pipenum` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x3458 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x3458-0x3464 (12 bytes).
  It occupies 12 bytes.
  The return at 0x345c has v0 = ?.







- `gfx_frs_install` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x3464 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x3464-0x34bc (88 bytes).
  It occupies 88 bytes.
  The `ld` at 0x3470 loads 8 bytes from (sym(GfxBoards) + (a1 << 0x3)) +0x0.
  The `ld` at 0x3474 loads 8 bytes from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x38.
  The `ld` at 0x3478 loads 8 bytes from [[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8 +0xd0.
  The `ld` at 0x348c loads 8 bytes from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x40.
  The `jalr` at 0x3490 calls (unknown callee) with a0=[[(sym(GfxBoards) + (a1 << 0x3))]:8+64]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `jal` at 0x34ac calls cmn_err with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `beq` branch at 0x3484 targets 0x34a4, is taken when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) == 0, and falls through when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) != 0.
  The `beq` branch at 0x34b4 targets 0x349c and is always taken.
  The return at 0x349c has v0 = one of ret(?), ret(cmn_err).







- `gfx_frs_uninstall` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x34bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x34bc-0x350c (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x34c8 loads 8 bytes from (sym(GfxBoards) + (a0 << 0x3)) +0x0.
  The `ld` at 0x34cc loads 8 bytes from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x38.
  The `ld` at 0x34d0 loads 8 bytes from [[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8 +0xd8.
  The `ld` at 0x34e4 loads 8 bytes from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x40.
  The `jalr` at 0x34e0 calls (unknown callee) with a0=[[(sym(GfxBoards) + (a0 << 0x3))]:8+64]:8, a1=a1 at entry (arg1), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `jal` at 0x34fc calls cmn_err with a0=0x5, a1=sym(.rodata), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `beq` branch at 0x34d8 targets 0x34f4, is taken when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) == 0, and falls through when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) != 0.
  The `beq` branch at 0x3504 targets 0x34ec and is always taken.
  The return at 0x34ec has v0 = one of ret(?), ret(cmn_err).







- `irix5_to_gfx_getboardinfo_args` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x350c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x350c-0x3584 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x3520 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x3530 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x3534, `sd` at 0x3580.
  The `sw` at 0x353c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x3548 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x354c loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x3550 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x3554 loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x3558 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x355c loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x3560 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `jal` at 0x3570 calls kern_malloc with a0=0xc, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3518 targets 0x3548, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x3528 targets 0x3570, is taken when at(=[a3]) < 0xc (unsigned), and falls through when at(=[a3]) >= 0xc (unsigned).
  The `beq` branch at 0x3540 targets 0x3564 and is always taken.
  The `beq` branch at 0x357c targets 0x3538 and is always taken.
  The return at 0x3568 has v0 = 0x0.







- `irix5_to_gfx_download_args` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x3584 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x3584-0x3624 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x3598 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x35a8 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x35ac, `sd` at 0x3620.
  The `sw` at 0x35b4 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x35c0 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x35c4 loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x35c8 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x35cc loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x35d0 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x35d4 loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x35d8 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `lw` at 0x35dc loads 4 bytes from [a3+16]:8 +0xc.
  The `sw` at 0x35e0 stores 4 bytes to a1 (arg1 at entry) +0x14.
  The `lw` at 0x35e4 loads 4 bytes from [a3+16]:8 +0x10.
  The `sw` at 0x35e8 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `lw` at 0x35ec loads 4 bytes from [a3+16]:8 +0x14.
  The `sw` at 0x35f0 stores 4 bytes to a1 (arg1 at entry) +0x1c.
  The `lw` at 0x35f4 loads 4 bytes from [a3+16]:8 +0x18.
  The `sw` at 0x35f8 stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `lw` at 0x35fc loads 4 bytes from [a3+16]:8 +0x1c.
  The `sw` at 0x3600 stores 4 bytes to a1 (arg1 at entry) +0x24.
  The `jal` at 0x3610 calls kern_malloc with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3590 targets 0x35c0, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x35a0 targets 0x3610, is taken when at(=[a3]) < 0x20 (unsigned), and falls through when at(=[a3]) >= 0x20 (unsigned).
  The `beq` branch at 0x35b8 targets 0x3604 and is always taken.
  The `beq` branch at 0x361c targets 0x35b0 and is always taken.
  The return at 0x3608 has v0 = 0x0.







- `irix5_to_gfx_attach_board_args` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x3624 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x3624-0x3694 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x3638 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x3648 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x364c, `sd` at 0x3690.
  The `sw` at 0x3654 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x3660 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x3664 loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x3668 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x366c loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x3670 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `jal` at 0x3680 calls kern_malloc with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3630 targets 0x3660, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x3640 targets 0x3680, is taken when at(=[a3]) < 0x8 (unsigned), and falls through when at(=[a3]) >= 0x8 (unsigned).
  The `beq` branch at 0x3658 targets 0x3674 and is always taken.
  The `beq` branch at 0x368c targets 0x3650 and is always taken.
  The return at 0x3678 has v0 = 0x0.







- `gfx_flow_init` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x90-0x23c (428 bytes).
  It occupies 428 bytes.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0xbc, `lh` at 0xec, `lh` at 0x1e8.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xc8, `ld` at 0x1f4.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0xe8, `sd` at 0xfc, `sd` at 0x218.
  The `jal` at 0x144 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?, a4=[sym(maxnodes)].
  The `jal` at 0x15c calls install_gfxintr with a0=?, a1=0x0, a2=sym(gfx_flow_delayed_hiwater_intr_prehandler), a3=0x0.
  The `jal` at 0x198 calls kmem_zalloc with a0=?, a1=0x0, a2=?, a3=?, a4=[sym(maxnodes)].
  The `jal` at 0x1b8 calls kmem_zalloc with a0=?, a1=0x0, a2=?, a3=?.
  The `blez` branch at 0xa4 targets 0x118, is taken when a4(=[sym(maxnodes)]) <= 0 (signed), and falls through when a4(=[sym(maxnodes)]) > 0 (signed).
  The `bne` branch at 0x110 targets 0xb8, is taken when a0(?) < a4(=[sym(maxnodes)]) (signed), and falls through when a0(?) >= a4(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x128 targets 0x1d0, is taken when a2(=[sym(hub_use_transaction_credits)]) == 0, and falls through when a2(=[sym(hub_use_transaction_credits)]) != 0.
  The `blez` branch at 0x138 targets 0x180, is taken when a3(=[sym(maxcpus)]) <= 0 (signed), and falls through when a3(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x14c targets 0x164, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x178 targets 0x144, is taken when s0(?) < a4(=[sym(maxcpus)]) (signed), and falls through when s0(?) >= a4(=[sym(maxcpus)]) (signed).
  The `blez` branch at 0x1d0 targets 0x130, is taken when a4(=[sym(maxnodes)]) <= 0 (signed), and falls through when a4(=[sym(maxnodes)]) > 0 (signed).
  The `bne` branch at 0x210 targets 0x224, is taken when t1(?) < 0x4 (unsigned), and falls through when t1(?) >= 0x4 (unsigned).
  The `bne` branch at 0x22c targets 0x1e8, is taken when a0(?) < a4(=[sym(maxnodes)]) (signed), and falls through when a0(?) >= a4(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x234 targets 0x134 and is always taken.
  The return at 0x1c8 has v0 = ret(kmem_zalloc).







- `gfx_flow_reset` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x5d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x5d0-0x5dc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0x5d0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0x5d8 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The return at 0x5d4 has v0 = ?.







- `gfx_flow_dealloc` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x5dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x5dc-0x624 (72 bytes).
  It occupies 72 bytes.
  The `lh` at 0x5dc loads 2 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x5e0 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `sd` at 0x614 stores 8 bytes to ?.
  The `jal` at 0x610 calls kmem_free with a0=a0 at entry (arg0), a1=0x70, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x61c has v0 = ret(kmem_free).







- `gfx_flow_wg_info_get` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x624 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x624-0x648 (36 bytes).
  It occupies 36 bytes.
  The `ld` at 0x624 loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `sd` at 0x628 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `ld` at 0x62c loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `sd` at 0x630 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `ld` at 0x634 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `sd` at 0x638 stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `ld` at 0x63c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sd` at 0x644 stores 8 bytes to a1 (arg1 at entry) +0x18.
  The return at 0x640 has v0 = [a0+64]:8.







- `gfx_flow_credit_tnum_get` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x648 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x648-0x650 (8 bytes).
  It occupies 8 bytes.
  The return at 0x648 has v0 = 0x11.







- `gfx_flow_detach_requires_credit_flow_disable` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x6b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x6b0-0x6b8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x6b0 has v0 = 0x1.







- `gfx_flow_am_i_attached` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x990 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x990-0x9d4 (68 bytes).
  It occupies 68 bytes.
  The `lh` at 0x998 loads 2 bytes from a0 (arg0 at entry) +0x60.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc420, including `lh` at 0x99c, `lh` at 0x9b8.
  The `ld` at 0x9c4 loads 8 bytes from ([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3)) +0x0.
  The `beq` branch at 0x990 targets 0x9ac, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x9b0 targets 0x9cc, is taken when a0(=[sym(gfx_flow_cpu_attachments)]:8) == 0, and falls through when a0(=[sym(gfx_flow_cpu_attachments)]:8) != 0.
  The return at 0x9a4 has v0 = ?.
  The return at 0x9cc has v0 = one of 0x1, ?.







- `gfx_flow_set_cpu_attachment` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x9ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x9ec-0xa04 (24 bytes).
  It occupies 24 bytes.
  The `lh` at 0x9ec loads 2 bytes from abs 0xffffffffffffc420.
  The `sd` at 0xa00 stores 8 bytes to ([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3)) +0x0.
  The return at 0x9fc has v0 = ([-0x3be0]:2 << 0x3).






- `gfx_flow_clear_cpu_attachment` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0xa04 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0xa04-0xa1c (24 bytes).
  It occupies 24 bytes.
  The `lh` at 0xa04 loads 2 bytes from abs 0xffffffffffffc420.
  The `sd` at 0xa18 stores 8 bytes to ([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3)) +0x0.
  The return at 0xa14 has v0 = ([-0x3be0]:2 << 0x3).






- `gfx_flow_interface_alloc` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0xa1c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0xa1c-0xa64 (72 bytes).
  It occupies 72 bytes.
  The `sh` at 0xa40 stores 2 bytes to ret(kmem_zalloc) +0x60.
  The `sd` at 0xa44 stores 8 bytes to ret(kmem_zalloc) +0x68.
  The `sd` at 0xa48 stores 8 bytes to ret(kmem_zalloc) +0x20.
  The `sd` at 0xa60 stores 8 bytes to ret(kmem_zalloc) +0x28.
  The `jal` at 0xa34 calls kmem_zalloc with a0=0x70, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa5c has v0 = ret(kmem_zalloc).






- `gfx_earlyinit` in `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)` at 0x10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x10-0x18 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10 has v0 = ?.






- `gfx_shcheck` in `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)` at 0x48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x48-0x50 (8 bytes).
  It occupies 8 bytes.
  The return at 0x48 has v0 = ?.






- `gfx_shdup` in `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)` at 0x50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x50-0x58 (8 bytes).
  It occupies 8 bytes.
  The return at 0x50 has v0 = ?.






- `gfx_shalloc` in `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)` at 0x58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x58-0x60 (8 bytes).
  It occupies 8 bytes.
  The return at 0x58 has v0 = ?.






- `gfx_shfree` in `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)` at 0x60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x60-0x68 (8 bytes).
  It occupies 8 bytes.
  The return at 0x60 has v0 = ?.






- `gfx_frs_valid_pipenum` in `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)` at 0x78 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x78-0x80 (8 bytes).
  It occupies 8 bytes.
  The return at 0x78 has v0 = 0x0.






- `gfx_frs_install` in `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)` at 0x80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x80-0x88 (8 bytes).
  It occupies 8 bytes.
  The return at 0x80 has v0 = ?.






- `gfx_frs_uninstall` in `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)` at 0x88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x88-0x90 (8 bytes).
  It occupies 8 bytes.
  The return at 0x88 has v0 = ?.






- `kona_idma_timeout` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x440 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x440-0x4cc (140 bytes).
  It occupies 140 bytes.
  The `ld` at 0x460 loads 8 bytes from a0 (arg0 at entry) +0x1448.
  The `lw` at 0x48c loads 4 bytes from a0 (arg0 at entry) +0x1458.
  The `ld` at 0x494 loads 8 bytes from a0 (arg0 at entry) +0x1450.
  The `lw` at 0x4a0 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `sd` at 0x4c0 stores 8 bytes to a0 (arg0 at entry) +0x1448.
  The `jal` at 0x458 calls mutex_spinlock with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x474 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x4a4 calls cmn_err_tag with a0=0x84a, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=[a0+5200]:8, a6=[a0+5208].
  The `jal` at 0x4b0 calls kona_die with a0=a0 at entry (arg0), a1=0x4, a2=?, a3=?.
  The `jal` at 0x4bc calls vsema with a0=a0+5176, a1=?, a2=?, a3=?.
  The `bne` branch at 0x464 targets 0x48c, is taken when at(=[a0+5192]:8) != 0, and falls through when at(=[a0+5192]:8) == 0.
  The `beq` branch at 0x4c4 targets 0x46c and is always taken.
  The return at 0x484 has v0 = ret(mutex_spinunlock).






- `kona_free_up_space` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x1520 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x1520-0x1554 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x1534 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `jal` at 0x1540 calls cmn_err_tag with a0=0x84c, a1=0x0, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184].
  The return at 0x154c has v0 = ret(cmn_err_tag).






- `abi32_to_kona_diag_map` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x1ae0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x1ae0-0x1b58 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x1af4 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x1b04 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x1b08, `sd` at 0x1b54.
  The `sw` at 0x1b10 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x1b1c loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lwu` at 0x1b20 loads 4 bytes from [a3+16]:8 +0x0.
  The `sd` at 0x1b24 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x1b28 loads 4 bytes from [a3+16]:8 +0x4.
  The `sw` at 0x1b2c stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x1b30 loads 4 bytes from [a3+16]:8 +0xc.
  The `sw` at 0x1b34 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `jal` at 0x1b44 calls kern_malloc with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1aec targets 0x1b1c, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x1afc targets 0x1b44, is taken when at(=[a3]) < 0x14 (unsigned), and falls through when at(=[a3]) >= 0x14 (unsigned).
  The `beq` branch at 0x1b14 targets 0x1b38 and is always taken.
  The `beq` branch at 0x1b50 targets 0x1b0c and is always taken.
  The return at 0x1b3c has v0 = 0x0.






- `kona_diag_map_to_abi32` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x1b58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x1b58-0x1be0 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x1b58 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `ld` at 0x1b7c loads 8 bytes from a2 (arg2 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a2 (arg2 at entry) +0x10, including `sd` at 0x1b80, `sd` at 0x1bdc.
  The `sw` at 0x1b88 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `ld` at 0x1b90 loads 8 bytes from a0 (arg0 at entry) +0x0.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1b94, `sw` at 0x1b9c, `sw` at 0x1ba4.
  The `lw` at 0x1b98 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1ba0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1ba8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x1bb0 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `jal` at 0x1bc8 calls kern_malloc with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1b74 targets 0x1bc8, is taken when at(=[a2]) < 0x14 (unsigned), and falls through when at(=[a2]) >= 0x14 (unsigned).
  The `beq` branch at 0x1bd8 targets 0x1b84 and is always taken.
  The return at 0x1bc0 has v0 = 0x0.






- `kona_free_bdata` in `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit.o)` at 0x234 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit.o)`.
  Range: 0x234-0x250 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x23c calls kern_free with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x248 has v0 = ret(kern_free).






- `kona_detach` in `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)` at 0x1634 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0x1634-0x163c (8 bytes).
  It occupies 8 bytes.
  The return at 0x1634 has v0 = ?.






- `kona_flow_cleanup` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0x50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)`.
  Range: 0x50-0x84 (52 bytes).
  It occupies 52 bytes.
  The `ld` at 0x50 loads 8 bytes from a0 (arg0 at entry) +0x920.
  The `sd` at 0x74 stores 8 bytes to a0 (arg0 at entry) +0x920.
  The `jal` at 0x68 calls kona_untimeout with a0=a0 at entry (arg0), a1=[a0+2336]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x60 targets 0x78, is taken when a1(=[a0+2336]:8) == 0, and falls through when a1(=[a0+2336]:8) != 0.
  The return at 0x7c has v0 = one of ?, ret(kona_untimeout).






- `kona_delay_monitor_gfifo` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0x144 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)`.
  Range: 0x144-0x1e8 (164 bytes).
  It occupies 164 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0x17c, `ld` at 0x1c4.
  The `lw` at 0x188 loads 4 bytes from a0 (arg0 at entry) +0x92c.
  The `sw` at 0x1d4 stores 4 bytes to a0 (arg0 at entry) +0x928.
  The `jal` at 0x180 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800208, a1=?, a2=?, a3=?.
  The `jal` at 0x198 calls us_delay with a0=0x4, a1=?, a2=?, a3=?.
  The `jal` at 0x1d8 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800238, a1=0x3, a2=0x800238, a3=?.
  The `beq` branch at 0x174 targets 0x1a8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x190 targets 0x1c4, is taken when a1(=[a0+2348]) >= v0(=ret(gfx_pio_read_32)) (unsigned), and falls through when a1(=[a0+2348]) < v0(=ret(gfx_pio_read_32)) (unsigned).
  The `bne` branch at 0x1a4 targets 0x17c, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0x1e0 targets 0x1ac and is always taken.
  The return at 0x1bc has v0 = ?.






- `kona_diag_credits` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0x6f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)`.
  Range: 0x6f4-0x754 (96 bytes).
  It occupies 96 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e0, including `ld` at 0x710, `ld` at 0x71c, `ld` at 0x728.
  The `sw` at 0x714 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x720 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0x734 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sw` at 0x744 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jal` at 0x70c calls gfx_flow_credit_total_get with a0=[a0+2272]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x718 calls gfx_flow_credit_bias_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x724 calls gfx_flow_credit_count_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The return at 0x74c has v0 = 0x0.






- `kona_flow_await_returned_credits` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0x754 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)`.
  Range: 0x754-0x938 (484 bytes).
  It occupies 484 bytes.
  11 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e0, including `ld` at 0x760, `ld` at 0x778, `ld` at 0x7c8.
  The `lw` at 0x78c loads 4 bytes from a0 (arg0 at entry) +0x928.
  The `lw` at 0x798 loads 4 bytes from a0 (arg0 at entry) +0x87c.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48, including `ld` at 0x7a4, `ld` at 0x860, `ld` at 0x894.
  The `lw` at 0x7a8 loads 4 bytes from [a0+72]:8 +0x4.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0x814, `ld` at 0x82c, `ld` at 0x838.
  The `lw` at 0x8a4 loads 4 bytes from a0 (arg0 at entry) +0x8c8.
  The `lw` at 0x8f8 loads 4 bytes from a0 (arg0 at entry) +0x91c.
  The `ld` at 0x910 loads 8 bytes from a0 (arg0 at entry) +0x910.
  The `sd` at 0x924 stores 8 bytes to a0 (arg0 at entry) +0x910.
  The `jal` at 0x768 calls gfx_flow_credit_bias_get with a0=[a0+2272]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x774 calls gfx_flow_credit_count_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7c0 calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x7cc calls gfx_flow_credit_count_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7e0 calls gfx_flow_credit_count_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7ec calls gfx_flow_credit_total_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x804 calls kona_die with a0=a0 at entry (arg0), a1=0x19, a2=?, a3=?.
  The `jal` at 0x80c calls kona_reset_adaptor with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x824 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800300, a1=0x1, a2=?, a3=?.
  The `jal` at 0x830 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800300, a1=?, a2=?, a3=?.
  The `jal` at 0x840 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800300, a1=0x0, a2=?, a3=?.
  The `jal` at 0x84c calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800300, a1=?, a2=?, a3=?.
  The `jal` at 0x854 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x868 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x870 calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x884 calls gfx_flow_detach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x88c calls gfx_flow_reset with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x898 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x8b0 calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x8bc calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x8c4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x8f0 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800208, a1=0x800208, a2=?, a3=?.
  The `jal` at 0x908 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x91c calls curproc with a0=?, a1=?, a2=?, a3=[a0+2320]:8.
  The `jal` at 0x928 calls force_resched with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x780 targets 0x7e0, is taken when v0(=ret(gfx_flow_credit_count_get)) >= s2(=ret(gfx_flow_credit_bias_get)) (unsigned), and falls through when v0(=ret(gfx_flow_credit_count_get)) < s2(=ret(gfx_flow_credit_bias_get)) (unsigned).
  The `bne` branch at 0x790 targets 0x8d0, is taken when v0(=[a0+2344]) != 0, and falls through when v0(=[a0+2344]) == 0.
  The `beq` branch at 0x79c targets 0x7b8, is taken when v1(=[a0+2172]) == 0, and falls through when v1(=[a0+2172]) != 0.
  The `bne` branch at 0x7b0 targets 0x80c, is taken when (a0(=[[a0+72]:8+4]) & 0x4) != 0, and falls through when (a0(=[[a0+72]:8+4]) & 0x4) == 0.
  The `blez` branch at 0x7b8 targets 0x8e4, is taken when s1(?) <= 0 (signed), and falls through when s1(?) > 0 (signed).
  The `bne` branch at 0x7d8 targets 0x78c, is taken when v0(=ret(gfx_flow_credit_count_get)) < s2(=ret(gfx_flow_credit_bias_get)) (unsigned), and falls through when v0(=ret(gfx_flow_credit_count_get)) >= s2(=ret(gfx_flow_credit_bias_get)) (unsigned).
  The `beq` branch at 0x7f8 targets 0x8d0, is taken when v0(=ret(gfx_flow_credit_total_get)) >= s1(=ret(gfx_flow_credit_count_get)) (unsigned), and falls through when v0(=ret(gfx_flow_credit_total_get)) < s1(=ret(gfx_flow_credit_count_get)) (unsigned).
  The `beq` branch at 0x878 targets 0x88c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x900 targets 0x8d0, is taken when a2(=[a0+2332]) >= v0(=ret(gfx_pio_read_32)) (unsigned), and falls through when a2(=[a0+2332]) < v0(=ret(gfx_pio_read_32)) (unsigned).
  The `beq` branch at 0x914 targets 0x928, is taken when a3(=[a0+2320]:8) == v0(=ret(curproc)), and falls through when a3(=[a0+2320]:8) != v0(=ret(curproc)).
  The `beq` branch at 0x930 targets 0x8d0 and is always taken.
  The return at 0x8dc has v0 = one of [a0+2344], ret(gfx_flow_credit_total_get), ret(splx), ret(gfx_pio_read_32), ret(force_resched).






- `kona_mem_init` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)`.
  Range: 0x0-0x40 (64 bytes).
  It occupies 64 bytes.
  The `sd` at 0x34 stores 8 bytes to ?.
  The `bne` branch at 0x30 targets 0x4, is taken when a2(?) < 0x4 (signed), and falls through when a2(?) >= 0x4 (signed).
  The return at 0x38 has v0 = ?.






- `kona_mem_suspend` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0xa78 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)`.
  Range: 0xa78-0xa88 (16 bytes).
  It occupies 16 bytes.
  The `ld` at 0xa78 loads 8 bytes from a1 (arg1 at entry) +0x68.
  The `sw` at 0xa84 stores 4 bytes to a0 (arg0 at entry) +0x13f8.
  The return at 0xa80 has v0 = ?.






- `kona_mem_resume` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0xa88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)`.
  Range: 0xa88-0xd48 (704 bytes).
  It occupies 704 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x13f8, including `lw` at 0xa88, `lw` at 0xacc.
  The `lw` at 0xaa0 loads 4 bytes from a0 (arg0 at entry) +0x87c.
  The `sw` at 0xaac stores 4 bytes to a0 (arg0 at entry) +0x13f8.
  12 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e0, including `ld` at 0xac8, `ld` at 0xaf0, `ld` at 0xb34.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x938, including `sw` at 0xafc, `sw` at 0xb58, `sw` at 0xbe4.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0xb08, `ld` at 0xb64, `ld` at 0xbf0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x938, including `lw` at 0xb14, `lw` at 0xb70, `lw` at 0xbfc.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x900, including `ld` at 0xb28, `ld` at 0xb90.
  The `lw` at 0xb9c loads 4 bytes from ?.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48, including `ld` at 0xc10, `ld` at 0xc5c, `ld` at 0xc78.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c8, including `lw` at 0xc20, `lw` at 0xc88, `lw` at 0xcf0.
  The `jal` at 0xac0 calls psema with a0=a0+5152, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xad4 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xadc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xaec calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb00 calls splx with a0=ret(splhi), a1=0x30000, a2=?, a3=?.
  The `jal` at 0xb18 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=[a0+2376]:8, a3=?.
  The `jal` at 0xb24 calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=0x1de, a2=?, a3=?.
  The `jal` at 0xb30 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xb38 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb48 calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb5c calls splx with a0=ret(splhi), a1=?, a2=0x10000, a3=?.
  The `jal` at 0xb74 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=[a0+2376]:8, a3=?.
  The `jal` at 0xb98 calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xbbc calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xbc4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbd4 calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xbe8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xc00 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=[a0+2376]:8, a3=?.
  The `jal` at 0xc14 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xc2c calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xc34 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc40 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xc48 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xc50 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc60 calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xc68 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0xc7c calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=0x10000, a3=?.
  The `jal` at 0xc94 calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xc9c calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xca8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xcb0 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xcb8 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcc8 calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xcd0 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0xce4 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xcfc calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xd04 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd10 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xd18 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xd20 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd30 calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xd38 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `bne` branch at 0xa98 targets 0xaac, is taken when at(=[a0+5112]) < 0x2 (signed), and falls through when at(=[a0+5112]) >= 0x2 (signed).
  The `beq` branch at 0xaa4 targets 0xabc, is taken when v0(=[a0+2172]) == 0, and falls through when v0(=[a0+2172]) != 0.
  The `beq` branch at 0xaf4 targets 0xc10, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0xb50 targets 0xc78, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `blez` branch at 0xb80 targets 0xbb4, is taken when a1(=[a0+5112]) <= 0 (signed), and falls through when a1(=[a0+5112]) > 0 (signed).
  The `beq` branch at 0xbac targets 0xb90, is taken when a2(=[a0+5112]) >= s1(?) (signed), and falls through when a2(=[a0+5112]) < s1(?) (signed).
  The `beq` branch at 0xbdc targets 0xce0, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0xc08 targets 0xaac and is always taken.
  The `beq` branch at 0xc70 targets 0xafc and is always taken.
  The `beq` branch at 0xcd8 targets 0xb58 and is always taken.
  The `beq` branch at 0xd40 targets 0xbe8 and is always taken.
  The return at 0xab4 has v0 = one of ?, [a0+2172], ret(gfx_pio_write_32).






- `kona_mem_cleanup` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0xfe8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)`.
  Range: 0xfe8-0x1134 (332 bytes).
  It occupies 332 bytes.
  The `ld` at 0x101c loads 8 bytes from a0 (arg0 at entry) +0x13f0.
  The `sd` at 0x1020 stores 8 bytes to a0 (arg0 at entry) +0x13f0.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1040, `ld` at 0x1058, `ld` at 0x109c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1044, `lw` at 0x10e4, `lw` at 0x10e8.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x105c, `sd` at 0x10a8, `sd` at 0x10b0.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x1064, `sb` at 0x10b8.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1068, `lbu` at 0x1088.
  The `lhu` at 0x106c loads 2 bytes from ?.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x888, including `lw` at 0x10a4, `lw` at 0x1128.
  The `sw` at 0x111c stores 4 bytes to ?.
  The `jal` at 0x1010 calls mutex_spinlock with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1024 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x10a0 calls free_gfx_io_space with a0=[a0+2184], a1=?, a2=?, a3=?.
  The `jal` at 0x1110 calls kvpfree with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1124 calls free_gfx_io_space with a0=[a0+2184], a1=?, a2=?, a3=?.
  The `beq` branch at 0x102c targets 0x10bc, is taken when s1(=[a0+5104]:8) == 0, and falls through when s1(=[a0+5104]:8) != 0.
  The `beq` branch at 0x1038 targets 0x1068 and is always taken.
  The `beq` branch at 0x1048 targets 0x10e0, is taken when a0(?) == s4(=0x2), and falls through when a0(?) != s4(=0x2).
  The `beq` branch at 0x1050 targets 0x109c, is taken when a0(?) == s5(=0x1), and falls through when a0(?) != s5(=0x1).
  The `beq` branch at 0x1060 targets 0x10bc, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x108c targets 0x1040, is taken when (a4(?) & 0x1) != 0, and falls through when (a4(?) & 0x1) == 0.
  The `beq` branch at 0x1094 targets 0x1048 and is always taken.
  The `bne` branch at 0x10b4 targets 0x1068, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0x112c targets 0x10ac and is always taken.
  The return at 0x10d8 has v0 = one of ret(mutex_spinunlock), ?, ret(free_gfx_io_space).






- `kona_mem_swapout` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x1134 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)`.
  Range: 0x1134-0x12e0 (428 bytes).
  It occupies 428 bytes.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x1134, `ld` at 0x1264.
  The `lhu` at 0x1150 loads 2 bytes from a2 (arg2 at entry) +0x6.
  The `lw` at 0x117c loads 4 bytes from [a1]:8 +0x8.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x1180, `lw` at 0x11fc.
  2 such `lw` accesses load 4 bytes from [a1]:8 +0x14, including `lw` at 0x1184, `lw` at 0x1274.
  The `lw` at 0x119c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `sw` at 0x11b0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sd` at 0x11e4 stores 8 bytes to a2 (arg2 at entry) +0x10.
  The `lw` at 0x11e8 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `sd` at 0x11f4 stores 8 bytes to a2 (arg2 at entry) +0x18.
  The `sw` at 0x1200 stores 4 bytes to a2 (arg2 at entry) +0x20.
  The `ld` at 0x120c loads 8 bytes from a0 (arg0 at entry) +0x13d0.
  The `sd` at 0x1218 stores 8 bytes to [a0+5072]:8 +0x38.
  The `sd` at 0x121c stores 8 bytes to a0 (arg0 at entry) +0x13d0.
  The `lw` at 0x1254 loads 4 bytes from a2 (arg2 at entry) +0x20.
  The `lw` at 0x1258 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `sd` at 0x125c stores 8 bytes to a2 (arg2 at entry) +0x58.
  The `ld` at 0x1268 loads 8 bytes from a2 (arg2 at entry) +0x18.
  The `ld` at 0x1280 loads 8 bytes from a2 (arg2 at entry) +0x28.
  The `lbu` at 0x1284 loads 1 byte from [a2+40]:8 +0x0.
  The `sb` at 0x128c stores 1 byte to [a2+40]:8 +0x0.
  The `sb` at 0x1298 stores 1 byte to a2 (arg2 at entry) +0x2.
  The `sd` at 0x12dc stores 8 bytes to a0 (arg0 at entry) +0x13d8.
  The `jal` at 0x11b4 calls psema with a0=a2+72, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11bc calls kona_mem_cleanup with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x11d4 calls kvpalloc with a0=?, a1=0x80000, a2=0x0, a3=?.
  The `jal` at 0x11ec calls alloc_gfx_io_space with a0=[a0+2184], a1=ret(kvpalloc), a2=?, a3=0xe.
  The `jal` at 0x1204 calls mutex_spinlock with a0=a0+2576, a1=[a2+8], a2=?, a3=?.
  The `jal` at 0x1220 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x123c calls kona_timeout with a0=sym(kona_mem_swapout_complete), a1=a0 at entry (arg0), a2=[sym(kona_mem_timeout_value)], a3=sym(splhi), a4=0x1, a5=a2 at entry (arg2).
  The `jal` at 0x1278 calls kona_mem_swapout_func with a0=a0 at entry (arg0), a1=?, a2=[a2+12], a3=[a2+32], a4=[[a1]:8+20], a6=[a2+24]:8.
  The `jal` at 0x12a0 calls psema with a0=a2+72, a1=0x19, a2=?, a3=?, a6=0x1, a7=[[a2+40]:8]:1+1.
  The `jal` at 0x12a8 calls vsema with a0=a2+72, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1174 targets 0x1180, is taken when (at(=[a2+6]:2) & 0x1) == 0, and falls through when (at(=[a2+6]:2) & 0x1) != 0.
  The `beq` branch at 0x1210 targets 0x12d8, is taken when a0(=[a0+5072]:8) == 0, and falls through when a0(=[a0+5072]:8) != 0.
  The `beq` branch at 0x1294 targets 0x12b0, is taken when s7(=[sym(kona_mem_serialize)]) == 0, and falls through when s7(=[sym(kona_mem_serialize)]) != 0.
  The `beq` branch at 0x12d8 targets 0x121c and is always taken.
  The return at 0x12d0 has v0 = one of ret(kona_mem_swapout_func), ret(vsema).





- `kona_mem_compress` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x12e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)`.
  Range: 0x12e0-0x13a8 (200 bytes).
  It occupies 200 bytes.
  The `ld` at 0x12f0 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `lbu` at 0x1318 loads 1 byte from [a1+16]:8 +0x4.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1330, `lw` at 0x133c, `lw` at 0x1360.
  The `sw` at 0x1340 stores 4 bytes to ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1348, `ld` at 0x1380.
  The `lbu` at 0x1354 loads 1 byte from ?.
  The `jal` at 0x1334 calls kona_mem_copydown_func with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1308 targets 0x138c, is taken when s1(=[a1+16]:8) == 0, and falls through when s1(=[a1+16]:8) != 0.
  The `beq` branch at 0x1314 targets 0x1358 and is always taken.
  The `beq` branch at 0x134c targets 0x138c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1364 targets 0x1374, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1374 targets 0x131c, is taken when a2(?) != s0(?), and falls through when a2(?) == s0(?).
  The `bne` branch at 0x1384 targets 0x1354, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The return at 0x13a0 has v0 = ?.





- `kona_mem_grow` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x13a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)`.
  Range: 0x13a8-0x14c0 (280 bytes).
  It occupies 280 bytes.
  2 such `ld` accesses load 8 bytes from a2 (arg2 at entry) +0x30, including `ld` at 0x13a8, `ld` at 0x1438.
  The `lw` at 0x13ac loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x13b0, `ld` at 0x1408.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x13bc, `lw` at 0x1464.
  2 such `lw` accesses load 4 bytes from [a1]:8 +0x18, including `lw` at 0x13c0, `lw` at 0x140c.
  The `ld` at 0x1420 loads 8 bytes from [a2+48]:8 +0x30.
  2 such `sd` accesses store 8 bytes to a2 (arg2 at entry) +0x30, including `sd` at 0x1428, `sd` at 0x14ac.
  The `sd` at 0x1434 stores 8 bytes to [a2+48]:8 +0x30.
  The `lw` at 0x1448 loads 4 bytes from [a2+48]:8 +0xc.
  The `lw` at 0x144c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `sw` at 0x1454 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sw` at 0x1470 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `ld` at 0x1484 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `ld` at 0x1494 loads 8 bytes from ?.
  The `sd` at 0x14a8 stores 8 bytes to ?.
  The `jal` at 0x1430 calls kona_mem_swapout with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a2+48]:8, a3=?, a4=[[a2+48]:8+48]:8.
  The `jal` at 0x14b0 calls kona_mem_swapout with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[a2+48]:8.
  The `bne` branch at 0x13f4 targets 0x1484, is taken when at(?) < a3 (unsigned), and falls through when at(?) >= a3 (unsigned).
  The `bne` branch at 0x1400 targets 0x1444, is taken when a6(=[a2+48]:8) != 0, and falls through when a6(=[a2+48]:8) == 0.
  The `beq` branch at 0x1418 targets 0x144c, is taken when a3(?) >= s2(=a3) (unsigned), and falls through when a3(?) < s2(=a3) (unsigned).
  The `beq` branch at 0x143c targets 0x1408, is taken when a2(=[a2+48]:8) == 0, and falls through when a2(=[a2+48]:8) != 0.
  The `beq` branch at 0x1444 targets 0x1410 and is always taken.
  The `beq` branch at 0x1488 targets 0x14a4, is taken when s0(=a2) == a2(=[a1+16]:8), and falls through when s0(=a2) != a2(=[a1+16]:8).
  The `bne` branch at 0x1498 targets 0x1490, is taken when s0(=a2) != a2(?), and falls through when s0(=a2) == a2(?).
  The `beq` branch at 0x14b8 targets 0x145c and is always taken.
  The return at 0x147c has v0 = one of ?, ret(kona_mem_swapout).





- `kona_mem_reserve` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x14c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)`.
  Range: 0x14c0-0x1720 (608 bytes).
  It occupies 608 bytes.
  5 such `lw` accesses load 4 bytes from a4 (arg4 at entry) +0x8, including `lw` at 0x14c0, `lw` at 0x1590, `lw` at 0x15ac.
  5 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x10, including `ld` at 0x14e4, `ld` at 0x15a8, `ld` at 0x15b0.
  5 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x150c, `ld` at 0x1584, `ld` at 0x16dc.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1510, `lw` at 0x1588, `lw` at 0x165c.
  4 such `lw` accesses load 4 bytes from [a1]:8 +0x18, including `lw` at 0x1514, `lw` at 0x158c, `lw` at 0x16e4.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1534, `ld` at 0x1548, `ld` at 0x155c.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1568, `sd` at 0x156c, `sd` at 0x164c.
  The `lw` at 0x15bc loads 4 bytes from [a1+16]:8 +0xc.
  2 such `lbu` accesses load 1 byte from a4 (arg4 at entry) +0x4, including `lbu` at 0x15d8, `lbu` at 0x1710.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x15e0, `lw` at 0x15f4, `lw` at 0x15f8.
  2 such `sd` accesses store 8 bytes to a4 (arg4 at entry) +0x30, including `sd` at 0x1644, `sd` at 0x1650.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x10, including `sd` at 0x1654, `sd` at 0x16b8.
  The `sw` at 0x1664 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sw` at 0x166c stores 4 bytes to a4 (arg4 at entry) +0xc.
  The `ld` at 0x16ac loads 8 bytes from [a1+16]:8 +0x30.
  The `sd` at 0x16c4 stores 8 bytes to [a1+16]:8 +0x30.
  The `lw` at 0x16f8 loads 4 bytes from [a1]:8 +0x10.
  The `jal` at 0x1570 calls kona_mem_swapout with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x16c0 calls kona_mem_swapout with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?, a6=[[a1+16]:8+48]:8, a7=[a1+16]:8.
  The `jal` at 0x1704 calls kona_mem_compress with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x1504 targets 0x15b4, is taken when at(=[a1+16]:8) == 0, and falls through when at(=[a1+16]:8) != 0.
  The `bne` branch at 0x1520 targets 0x1548, is taken when a1(?) < t0(=[a4+8]) (unsigned), and falls through when a1(?) >= t0(=[a4+8]) (unsigned).
  The `beq` branch at 0x1528 targets 0x15b4 and is always taken.
  The `beq` branch at 0x1538 targets 0x15b0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1540 targets 0x15b0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x154c targets 0x1530, is taken when v0(?) == s3(=a2), and falls through when v0(?) != s3(=a2).
  The `beq` branch at 0x1554 targets 0x1530, is taken when v0(?) == s5(=a3), and falls through when v0(?) != s5(=a3).
  The `beq` branch at 0x157c targets 0x15ac, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x159c targets 0x1548, is taken when a1(?) < t0(=[a4+8]) (unsigned), and falls through when a1(?) >= t0(=[a4+8]) (unsigned).
  The `beq` branch at 0x15a4 targets 0x15b4 and is always taken.
  The `beq` branch at 0x15b4 targets 0x16dc, is taken when v0(=[a1+16]:8) == 0, and falls through when v0(=[a1+16]:8) != 0.
  The `beq` branch at 0x15c8 targets 0x1650, is taken when a0(?) >= t0(=[a4+8]) (unsigned), and falls through when a0(?) < t0(=[a4+8]) (unsigned).
  The `beq` branch at 0x15d0 targets 0x1694, is taken when v0(=[a1+16]:8) == 0, and falls through when v0(=[a1+16]:8) != 0.
  The `beq` branch at 0x15dc targets 0x15f8 and is always taken.
  The `beq` branch at 0x15e4 targets 0x1644, is taken when t0(=[a4+8]) == 0, and falls through when t0(=[a4+8]) != 0.
  The `beq` branch at 0x15ec targets 0x1698, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1624 targets 0x16e8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bltz` branch at 0x1634 targets 0x15e4, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `bne` branch at 0x163c targets 0x15ec, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1648 targets 0x1658 and is always taken.
  The `beq` branch at 0x1698 targets 0x16f4, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x16a4 targets 0x16d4, is taken when a7(=[a1+16]:8) == 0, and falls through when a7(=[a1+16]:8) != 0.
  The `bne` branch at 0x16cc targets 0x16ac, is taken when a7(=[a1+16]:8) != 0, and falls through when a7(=[a1+16]:8) == 0.
  The `beq` branch at 0x16d4 targets 0x1670 and is always taken.
  The `beq` branch at 0x16e0 targets 0x15c0 and is always taken.
  The `beq` branch at 0x16ec targets 0x1630 and is always taken.
  The `beq` branch at 0x16fc targets 0x16a0, is taken when a1(=[[a1]:8+16]) == 0, and falls through when a1(=[[a1]:8+16]) != 0.
  The `beq` branch at 0x1718 targets 0x15dc and is always taken.
  The return at 0x168c has v0 = one of 0x0, 0x1.





- `kona_mem_suspend_complete` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x1980 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)`.
  Range: 0x1980-0x1a28 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x19a4 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `lw` at 0x19d4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sd` at 0x19dc stores 8 bytes to a0 (arg0 at entry) +0x1430.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x19f0, `lw` at 0x1a0c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x19f8, `sw` at 0x1a1c.
  The `jal` at 0x19a8 calls cmn_err_tag with a0=0x83d, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184].
  The `jal` at 0x19b4 calls kona_die with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jal` at 0x19bc calls vsema with a0=a0+5152, a1=?, a2=?, a3=?.
  The `beq` branch at 0x198c targets 0x19d4, is taken when a1 == 0, and falls through when a1 != 0.
  The `bltz` branch at 0x19d8 targets 0x19bc, is taken when a3(=[a2]) < 0 (signed), and falls through when a3(=[a2]) >= 0 (signed).
  The `bne` branch at 0x19fc targets 0x19bc, is taken when a3(=[a2]) < a0(?) (signed), and falls through when a3(=[a2]) >= a0(?) (signed).
  The `beq` branch at 0x1a18 targets 0x19e4, is taken when a3(=[a2]) >= a0(?) (signed), and falls through when a3(=[a2]) < a0(?) (signed).
  The `beq` branch at 0x1a20 targets 0x19bc and is always taken.
  The return at 0x19cc has v0 = ret(vsema).





- `kona_mem_swapin` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x1a28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)`.
  Range: 0x1a28-0x1ba0 (376 bytes).
  It occupies 376 bytes.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x20, including `lw` at 0x1a28, `lw` at 0x1b20.
  The `lhu` at 0x1a38 loads 2 bytes from a2 (arg2 at entry) +0x6.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x1a40, `ld` at 0x1b30.
  2 such `lw` accesses load 4 bytes from [a1]:8 +0x14, including `lw` at 0x1a5c, `lw` at 0x1b40.
  The `lw` at 0x1a60 loads 4 bytes from [a1]:8 +0x8.
  2 such `ld` accesses load 8 bytes from a2 (arg2 at entry) +0x10, including `ld` at 0x1aac, `ld` at 0x1b1c.
  The `lw` at 0x1abc loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `sd` at 0x1ac0 stores 8 bytes to a2 (arg2 at entry) +0x18.
  The `ld` at 0x1ad0 loads 8 bytes from a0 (arg0 at entry) +0x13e0.
  The `sd` at 0x1ae0 stores 8 bytes to [a0+5088]:8 +0x38.
  The `sd` at 0x1ae8 stores 8 bytes to a0 (arg0 at entry) +0x13e0.
  The `lw` at 0x1b24 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `sd` at 0x1b28 stores 8 bytes to a2 (arg2 at entry) +0x58.
  The `ld` at 0x1b34 loads 8 bytes from a2 (arg2 at entry) +0x18.
  The `ld` at 0x1b70 loads 8 bytes from a2 (arg2 at entry) +0x28.
  The `lbu` at 0x1b78 loads 1 byte from [a2+40]:8 +0x0.
  The `sb` at 0x1b84 stores 1 byte to [a2+40]:8 +0x0.
  The `sb` at 0x1b88 stores 1 byte to a2 (arg2 at entry) +0x2.
  The `sd` at 0x1b9c stores 8 bytes to a0 (arg0 at entry) +0x13e8.
  The `jal` at 0x1a9c calls psema with a0=a2+72, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[a2+32], a6=[a1]:8, a7=[sym(kona_mem_serialize)].
  The `jal` at 0x1aa4 calls kona_mem_cleanup with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1ab8 calls alloc_gfx_io_space with a0=[a0+2184], a1=[a2+16]:8, a2=?, a3=0xe.
  The `jal` at 0x1ac8 calls mutex_spinlock with a0=a0+2576, a1=?, a2=?, a3=?.
  The `jal` at 0x1ae4 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=[a0+5088]:8, a3=?.
  The `jal` at 0x1b00 calls kona_timeout with a0=sym(kona_mem_swapin_complete), a1=a0 at entry (arg0), a2=[sym(kona_mem_timeout_value)], a3=sym(splhi), a4=0x1, a5=a2 at entry (arg2).
  The `jal` at 0x1b44 calls kona_mem_swapin_func with a0=a0 at entry (arg0), a1=?, a2=[a2+12], a3=[a2+32], a4=[[a1]:8+20], a6=[a2+24]:8, a7=[a2+16]:8.
  The `jal` at 0x1b58 calls psema with a0=a2+72, a1=0x19, a2=?, a3=?, a6=[sym(kona_mem_serialize)].
  The `jal` at 0x1b60 calls vsema with a0=a2+72, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1a58 targets 0x1a64, is taken when (at(=[a2+6]:2) & 0x1) == 0, and falls through when (at(=[a2+6]:2) & 0x1) != 0.
  The `beq` branch at 0x1a8c targets 0x1b68, is taken when a5(=[a2+32]) == 0, and falls through when a5(=[a2+32]) != 0.
  The `beq` branch at 0x1ad8 targets 0x1b98, is taken when a2(=[a0+5088]:8) == 0, and falls through when a2(=[a0+5088]:8) != 0.
  The `beq` branch at 0x1b50 targets 0x1b68, is taken when a6(=[sym(kona_mem_serialize)]) == 0, and falls through when a6(=[sym(kona_mem_serialize)]) != 0.
  The `beq` branch at 0x1b98 targets 0x1ae4 and is always taken.
  The return at 0x1b90 has v0 = one of [[a1]:8+20], ret(kona_mem_swapin_func), ret(vsema).





- `kona_mem_update_driver` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x1ba0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)`.
  Range: 0x1ba0-0x1c80 (224 bytes).
  It occupies 224 bytes.
  The `ld` at 0x1bb4 loads 8 bytes from a2 (arg2 at entry) +0x8.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1bec, `lbu` at 0x1c40.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1bf4, `lw` at 0x1c00, `lw` at 0x1c48.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1c04, `ld` at 0x1c58.
  The `ld` at 0x1c18 loads 8 bytes from a3 (arg3 at entry) +0x8.
  The `jal` at 0x1bfc calls kona_mem_reserve_func with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1c50 calls kona_mem_reserve_func with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1bd4 targets 0x1c10, is taken when s0(=[a2+8]:8) == 0, and falls through when s0(=[a2+8]:8) != 0.
  The `bne` branch at 0x1c08 targets 0x1bec, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1c10 targets 0x1c1c, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `beq` branch at 0x1c20 targets 0x1c64, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1c5c targets 0x1c40, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The return at 0x1c78 has v0 = one of ?, ret(kona_mem_reserve_func).





- `kona_mem_update` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x1c80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)`.
  Range: 0x1c80-0x1d18 (152 bytes).
  It occupies 152 bytes.
  The `ld` at 0x1c94 loads 8 bytes from a1 (arg1 at entry) +0x70.
  2 such `ld` accesses load 8 bytes from [a1+112]:8 +0xf0, including `ld` at 0x1ce0, `ld` at 0x1d14.
  The `jal` at 0x1cc8 calls kona_mem_update_driver with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1c9c targets 0x1d0c and is always taken.
  The `beq` branch at 0x1cd8 targets 0x1cf4, is taken when s0(?) >= 0x4 (signed), and falls through when s0(?) < 0x4 (signed).
  The `bne` branch at 0x1ce4 targets 0x1ca4, is taken when a2(=[[a1+112]:8+240]:8) != 0, and falls through when a2(=[[a1+112]:8+240]:8) == 0.
  The `beq` branch at 0x1cec targets 0x1cac and is always taken.
  The `beq` branch at 0x1d10 targets 0x1ce4 and is always taken.
  The return at 0x1d04 has v0 = ret(kona_mem_update_driver).





- `kona_mem_validate_driver` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x1d18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)`.
  Range: 0x1d18-0x1e40 (296 bytes).
  It occupies 296 bytes.
  The `ld` at 0x1d48 loads 8 bytes from a2 (arg2 at entry) +0x8.
  6 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1d78, `ld` at 0x1d90, `ld` at 0x1dd4.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1d84, `lbu` at 0x1dac, `lbu` at 0x1de0.
  The `ld` at 0x1da4 loads 8 bytes from a3 (arg3 at entry) +0x8.
  The `jal` at 0x1d40 calls kona_mem_cleanup with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1d68 calls kona_mem_reserve with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1dc4 calls kona_mem_reserve with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e1c calls kona_mem_swapin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1e30 calls kona_mem_swapin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x1d4c targets 0x1d84, is taken when s0(=[a2+8]:8) != 0, and falls through when s0(=[a2+8]:8) == 0.
  The `beq` branch at 0x1d54 targets 0x1d9c and is always taken.
  The `beq` branch at 0x1d70 targets 0x1e2c, is taken when v0(=ret(kona_mem_reserve)) == 0, and falls through when v0(=ret(kona_mem_reserve)) != 0.
  The `beq` branch at 0x1d7c targets 0x1d9c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1d88 targets 0x1d5c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x1d94 targets 0x1d84, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1d9c targets 0x1da8, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `bnel` branch at 0x1da8 targets 0x1de4, is taken when s0(?) != 0, and falls through when s0(?) == 0; its branch-likely delay slot `lbu v0,2(s0)` at 0x1dac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1db0 targets 0x1df8 and is always taken.
  The `beq` branch at 0x1dcc targets 0x1e18, is taken when v0(=ret(kona_mem_reserve)) == 0, and falls through when v0(=ret(kona_mem_reserve)) != 0.
  The `beq` branch at 0x1dd8 targets 0x1df8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1de4 targets 0x1db8, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x1df0 targets 0x1de0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1e24 targets 0x1dd8 and is always taken.
  The `beq` branch at 0x1e38 targets 0x1d7c and is always taken.
  The return at 0x1e10 has v0 = ?.





- `kona_mem_validate` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x1e40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)`.
  Range: 0x1e40-0x1f54 (276 bytes).
  It occupies 276 bytes.
  The `ld` at 0x1e48 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x1e88 loads 8 bytes from [a1+112]:8 +0xf0.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1e98, `lbu` at 0x1ec4, `lbu` at 0x1ed8.
  The `jal` at 0x1e58 calls kona_mem_cleanup with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1ebc calls kona_mem_validate_driver with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1e9c targets 0x1f28, is taken when at(=[[a1+112]:8+240]:8) == 0, and falls through when at(=[[a1+112]:8+240]:8) != 0.
  The `beq` branch at 0x1ea4 targets 0x1f38, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x1ec8 targets 0x1eb4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1ed0 targets 0x1ee4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1edc targets 0x1eb4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x1ef8 targets 0x1e84, is taken when s5(?) < 0x4 (signed), and falls through when s5(?) >= 0x4 (signed).
  The `bne` branch at 0x1f28 targets 0x1eb0, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x1f30 targets 0x1ee8 and is always taken.
  The `beq` branch at 0x1f38 targets 0x1ee4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1f44 targets 0x1eb0, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x1f4c targets 0x1ee8 and is always taken.
  The return at 0x1f20 has v0 = ?.





- `kona_mem_free` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x2674 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)`.
  Range: 0x2674-0x28dc (616 bytes).
  It occupies 616 bytes.
  The `ld` at 0x2674 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `lbu` at 0x2680 loads 1 byte from a2 (arg2 at entry) +0x1.
  The `lbu` at 0x268c loads 1 byte from a2 (arg2 at entry) +0x0.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x2694, `ld` at 0x26e4, `ld` at 0x287c.
  The `ld` at 0x26d0 loads 8 bytes from a1 (arg1 at entry) +0x40.
  3 such `lw` accesses load 4 bytes from [a0+40]:8 +0x50, including `lw` at 0x26e8, `lw` at 0x2880, `lw` at 0x28a4.
  3 such `sw` accesses store 4 bytes to [a0+40]:8 +0x50, including `sw` at 0x26f4, `sw` at 0x2890, `sw` at 0x28b8.
  The `ld` at 0x26f8 loads 8 bytes from [a1+112]:8 +0xf0.
  The `ld` at 0x2718 loads 8 bytes from (([a2]:1 << 0x4) + [a1+112]:8) +0x98.
  The `lbu` at 0x2728 loads 1 byte from [(([a2]:1 << 0x4) + [a1+112]:8)+152]:8 +0x0.
  10 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2730, `ld` at 0x2758, `ld` at 0x2770.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x273c, `lbu` at 0x2768, `lbu` at 0x277c.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x27b4, `sd` at 0x27c0, `sd` at 0x281c.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x27b8, `lw` at 0x27c8, `lw` at 0x2820.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x27d8, `sw` at 0x283c.
  The `lw` at 0x284c loads 4 bytes from [a0+40]:8 +0x87c.
  2 such `ld` accesses load 8 bytes from [a0+40]:8 +0x900, including `ld` at 0x28c4, `ld` at 0x28c8.
  The `jal` at 0x26cc calls RRM_CheckValidFault with a0=[a1+64]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2844 calls kona_mem_reserve_func with a0=[a0+40]:8, a1=[a2]:1, a2=?, a3=0x0, a4=0x0.
  The `jal` at 0x2858 calls psema with a0=?, a1=0x19, a2=?, a3=?.
  The `jal` at 0x2864 calls kona_mem_cleanup with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x286c calls freesema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2874 calls kern_free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28c0 calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=0x172, a2=?, a3=?.
  The `jal` at 0x28cc calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=0x0, a2=?, a3=?.
  The `bne` branch at 0x26a4 targets 0x26cc, is taken when s3(=[a2]:1) < 0x4 (signed), and falls through when s3(=[a2]:1) >= 0x4 (signed).
  The `beq` branch at 0x26d4 targets 0x26e4, is taken when v0(=ret(RRM_CheckValidFault)) == 0, and falls through when v0(=ret(RRM_CheckValidFault)) != 0.
  The `beq` branch at 0x26dc targets 0x26b0 and is always taken.
  The `beq` branch at 0x26fc targets 0x2894, is taken when v0(=[[a1+112]:8+240]:8) == 0, and falls through when v0(=[[a1+112]:8+240]:8) != 0.
  The `beq` branch at 0x271c targets 0x2750, is taken when s0(=[(([a2]:1 << 0x4) + [a1+112]:8)+152]:8) == 0, and falls through when s0(=[(([a2]:1 << 0x4) + [a1+112]:8)+152]:8) != 0.
  The `beq` branch at 0x2724 targets 0x2740 and is always taken.
  The `beq` branch at 0x2734 targets 0x2750, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x2740 targets 0x272c, is taken when v1(?) != s2(=[a2+1]:1), and falls through when v1(?) == s2(=[a2+1]:1).
  The `bne` branch at 0x2748 targets 0x27a4, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x2750 targets 0x27a4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x275c targets 0x27a4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x2764 targets 0x2780 and is always taken.
  The `beq` branch at 0x2774 targets 0x27a4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x2780 targets 0x27a4, is taken when a0(?) == s2(=[a2+1]:1), and falls through when a0(?) != s2(=[a2+1]:1).
  The `beq` branch at 0x2790 targets 0x27a4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x279c targets 0x276c, is taken when a1(?) != s2(=[a2+1]:1), and falls through when a1(?) == s2(=[a2+1]:1).
  The `beq` branch at 0x27a4 targets 0x28a0, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x27e0 targets 0x2818, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x27e8 targets 0x2818, is taken when s2(?) == s0(?), and falls through when s2(?) != s0(?).
  The `beq` branch at 0x27f8 targets 0x2818, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x2800 targets 0x2818, is taken when s2(?) == s0(?), and falls through when s2(?) != s0(?).
  The `bne` branch at 0x2810 targets 0x27e8, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x2850 targets 0x28bc, is taken when t8(=[[a0+40]:8+2172]) == 0, and falls through when t8(=[[a0+40]:8+2172]) != 0.
  The `beq` branch at 0x288c targets 0x26b0 and is always taken.
  The `beq` branch at 0x2898 targets 0x2710 and is always taken.
  The `beq` branch at 0x28b4 targets 0x26b0 and is always taken.
  The `beq` branch at 0x28d4 targets 0x2858 and is always taken.
  The return at 0x26c4 has v0 = one of 0x0, 0x2, 0xe, 0x16.





- `kona_nclops_destroy` in `usr/cpu/sysgen/IP27boot/kona.a(kona_nclops.o)` at 0x1b58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_nclops.o)`.
  Range: 0x1b58-0x1d48 (496 bytes).
  It occupies 496 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1b70, `lw` at 0x1b94, `lw` at 0x1c58.
  11 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1bf4, `ld` at 0x1c08, `ld` at 0x1c54.
  The `sd` at 0x1c20 stores 8 bytes to ?.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1c2c, `sw` at 0x1d24.
  The `jal` at 0x1c00 calls gfx_pio_write_32 with a0=table(0x8003c0), a1=0xe200, a2=?, a3=?.
  The `jal` at 0x1c0c calls gfx_pio_read_32 with a0=table(0x8003d0), a1=?, a2=?, a3=?.
  The `jal` at 0x1c30 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1c64 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1c78 calls gfx_pio_write_32 with a0=table(0x8003c0), a1=0x80, a2=?, a3=?.
  The `jal` at 0x1c88 calls gfx_pio_write_32 with a0=table(0x8003d0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1c98 calls gfx_pio_write_32 with a0=table(0x8003c0), a1=0x8400, a2=?, a3=?.
  The `jal` at 0x1ca8 calls gfx_pio_write_32 with a0=table(0x8003d0), a1=0x7000, a2=?, a3=?.
  The `jal` at 0x1cb8 calls gfx_pio_write_32 with a0=table(0x8003c0), a1=0xe300, a2=?, a3=?.
  The `jal` at 0x1cc8 calls gfx_pio_write_32 with a0=table(0x8003d0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1cd8 calls gfx_pio_write_32 with a0=table(0x8003c0), a1=0xe500, a2=?, a3=?.
  The `jal` at 0x1ce8 calls gfx_pio_write_32 with a0=table(0x8003d0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1d18 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d28 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x1b7c targets 0x1b94, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1ba4 targets 0x1bb4, is taken when at(?) == v1(=0x1), and falls through when at(?) != v1(=0x1).
  The `beq` branch at 0x1bac targets 0x1b88 and is always taken.
  The `blez` branch at 0x1bdc targets 0x1cf8, is taken when v0(=[sym(KonaGfxNumberOfBoards)]) <= 0 (signed), and falls through when v0(=[sym(KonaGfxNumberOfBoards)]) > 0 (signed).
  The `beq` branch at 0x1be4 targets 0x1d3c and is always taken.
  The `beq` branch at 0x1bec targets 0x1c20, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1c18 targets 0x1bec, is taken when (v0(=ret(gfx_pio_read_32)) & 0x2) == 0, and falls through when (v0(=ret(gfx_pio_read_32)) & 0x2) != 0.
  The `beq` branch at 0x1c48 targets 0x1cf8, is taken when s1(?) >= v0(=[sym(KonaGfxNumberOfBoards)]) (signed), and falls through when s1(?) < v0(=[sym(KonaGfxNumberOfBoards)]) (signed).
  The `bne` branch at 0x1c5c targets 0x1c3c, is taken when a3(?) != s5(=a1), and falls through when a3(?) == s5(=a1).
  The `beq` branch at 0x1cf0 targets 0x1bf4 and is always taken.
  The `beq` branch at 0x1d34 targets 0x1b84 and is always taken.
  The `beq` branch at 0x1d40 targets 0x1c54 and is always taken.
  The return at 0x1b8c has v0 = one of 0x0, 0x1.





- `kona_nclops_cleanup` in `usr/cpu/sysgen/IP27boot/kona.a(kona_nclops.o)` at 0x1d48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_nclops.o)`.
  Range: 0x1d48-0x1e04 (188 bytes).
  It occupies 188 bytes.
  The `ld` at 0x1d48 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `lh` at 0x1d4c loads 2 bytes from [a1+112]:8 +0xf8.
  The `sh` at 0x1d68 stores 2 bytes to [a1+112]:8 +0xf8.
  The `lw` at 0x1d78 loads 4 bytes from a0 (arg0 at entry) +0x158c.
  The `sw` at 0x1d90 stores 4 bytes to a0 (arg0 at entry) +0x158c.
  The `lw` at 0x1da8 loads 4 bytes from a0 (arg0 at entry) +0x157c.
  The `ld` at 0x1db0 loads 8 bytes from a0 (arg0 at entry) +0x1568.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1dcc, `lw` at 0x1ddc.
  The `sw` at 0x1de4 stores 4 bytes to ?.
  The `jal` at 0x1d70 calls mutex_spinlock with a0=a0+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1d94 calls mutex_spinunlock with a0=a0+3520, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+5516]-1.
  The `jal` at 0x1dc4 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?, a5=[a0+5516].
  The `jal` at 0x1de8 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `bltz` branch at 0x1d5c targets 0x1df0, is taken when at(=[[a1+112]:8+248]:2) < 0 (signed), and falls through when at(=[[a1+112]:8+248]:2) >= 0 (signed).
  The `blez` branch at 0x1d88 targets 0x1d94, is taken when a4(=[a0+5516]) <= 0 (signed), and falls through when a4(=[a0+5516]) > 0 (signed).
  The `blez` branch at 0x1da0 targets 0x1df0, is taken when a5(=[a0+5516]) <= 0 (signed), and falls through when a5(=[a0+5516]) > 0 (signed).
  The `blez` branch at 0x1dd4 targets 0x1de8, is taken when ra(?) <= 0 (signed), and falls through when ra(?) > 0 (signed).
  The return at 0x1dfc has v0 = 0x0.





- `kona_nclops_init` in `usr/cpu/sysgen/IP27boot/kona.a(kona_nclops.o)` at 0x1e04 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_nclops.o)`.
  Range: 0x1e04-0x1e34 (48 bytes).
  It occupies 48 bytes.
  The `ld` at 0x1e04 loads 8 bytes from a0 (arg0 at entry) +0x1568.
  The `jal` at 0x1e24 calls bzero with a0=a0+5480, a1=0x40, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `bne` branch at 0x1e10 targets 0x1e20, is taken when at(=[a0+5480]:8) != 0, and falls through when at(=[a0+5480]:8) == 0.
  The `beq` branch at 0x1e2c targets 0x1e18 and is always taken.
  The return at 0x1e18 has v0 = one of ?, ret(bzero).





- `kona_timeout_init` in `usr/cpu/sysgen/IP27boot/kona.a(kona_timeout.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_timeout.o)`.
  Range: 0x0-0x58 (88 bytes).
  It occupies 88 bytes.
  The `sd` at 0x30 stores 8 bytes to a0 (arg0 at entry) +0x1528.
  The `sd` at 0x40 stores 8 bytes to a0 (arg0 at entry) +0x1518.
  The `sd` at 0x48 stores 8 bytes to a0 (arg0 at entry) +0x1530.
  The `jal` at 0x14 calls spinlock_init with a0=a0+5368, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x24 calls spinlock_init with a0=a0+5372, a1=sym(.rodata), a2=?, a3=?.
  The return at 0x50 has v0 = ret(spinlock_init).





- `kona_timeout_alloc` in `usr/cpu/sysgen/IP27boot/kona.a(kona_timeout.o)` at 0x58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_timeout.o)`.
  Range: 0x58-0xac (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x70 calls kmem_alloc with a0=0x40, a1=0x1, a2=?, a3=?.
  The `jal` at 0x80 calls us_delay with a0=0xa, a1=?, a2=?, a3=?.
  The `bne` branch at 0x78 targets 0x94, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `bne` branch at 0x90 targets 0x6c, is taken when s0(?) < 0xa (unsigned), and falls through when s0(?) >= 0xa (unsigned).
  The return at 0xa4 has v0 = ret(kmem_alloc).





- `kona_timeout_free` in `usr/cpu/sysgen/IP27boot/kona.a(kona_timeout.o)` at 0xac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_timeout.o)`.
  Range: 0xac-0xc8 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xb4 calls kmem_free with a0=a0 at entry (arg0), a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xc0 has v0 = ret(kmem_free).





- `kona_itimeout_func` in `usr/cpu/sysgen/IP27boot/kona.a(kona_timeout.o)` at 0x350 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_timeout.o)`.
  Range: 0x350-0x3f0 (160 bytes).
  It occupies 160 bytes.
  The `ld` at 0x350 loads 8 bytes from a0 (arg0 at entry) +0x1560.
  The `ld` at 0x3a4 loads 8 bytes from a0 (arg0 at entry) +0x1500.
  The `jal` at 0x374 calls mutex_spinlock_spl with a0=a0+5368, a1=[sym(pltimeout)]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x380 calls kona_callout with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x38c calls mutex_spinunlock with a0=a0+5368, a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `jal` at 0x398 calls mutex_spinlock with a0=a0+5372, a1=?, a2=?, a3=?.
  The `jal` at 0x3b4 calls kona_sched_tick with a0=a0 at entry (arg0), a1=0x7a120, a2=?, a3=?.
  The `jal` at 0x3c8 calls mutex_spinunlock with a0=a0+5372, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3e0 calls kona_die with a0=a0 at entry (arg0), a1=0x9, a2=?, a3=?.
  The `bne` branch at 0x364 targets 0x3d0, is taken when a1 < at(=[a0+5472]:8) (unsigned), and falls through when a1 >= at(=[a0+5472]:8) (unsigned).
  The `beq` branch at 0x3a8 targets 0x3c4, is taken when v0(=[a0+5376]:8) == 0, and falls through when v0(=[a0+5376]:8) != 0.
  The `beq` branch at 0x3bc targets 0x3e0, is taken when v0(=ret(kona_sched_tick)) == 0, and falls through when v0(=ret(kona_sched_tick)) != 0.
  The `beq` branch at 0x3e8 targets 0x3c8 and is always taken.
  The return at 0x3d8 has v0 = one of ?, ret(mutex_spinunlock).





- `kona_setcolor` in `usr/cpu/sysgen/IP27boot/kona.a(kona_tport.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_tport.o)`.
  Range: 0x0-0x154 (340 bytes).
  It occupies 340 bytes.
  4 such `lw` accesses load 4 bytes from [sym(.sbss)]:8 +0x800208, including `lw` at 0x54, `lw` at 0x9c, `lw` at 0xe0.
  3 such `sw` accesses store 4 bytes to [sym(.sbss)]:8 +0xc10000, including `sw` at 0xc8, `sw` at 0xd0, `sw` at 0xd4.
  The `jal` at 0x40 calls mutex_spinlock with a0=sym(ktport_lock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x84 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0xac calls kona_fc_attach with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xfc calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x12c calls kona_fc_detach with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x140 calls mutex_spinunlock with a0=sym(ktport_lock), a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x1c targets 0x34, is taken when at(=[sym(ktport_mute)]) == 0, and falls through when at(=[sym(ktport_mute)]) != 0.
  The `bgtz` branch at 0x6c targets 0x84, is taken when t8(?) > 0 (signed), and falls through when t8(?) <= 0 (signed).
  The `beq` branch at 0x74 targets 0xac and is always taken.
  The `blez` branch at 0x7c targets 0xac, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0xa4 targets 0x7c, is taken when v0(?) < s2(=0x186a1) (signed), and falls through when v0(?) >= s2(=0x186a1) (signed).
  The `blez` branch at 0xf4 targets 0x12c, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x11c targets 0x12c, is taken when v0(?) >= s2(=0x186a1) (signed), and falls through when v0(?) < s2(=0x186a1) (signed).
  The `bgtz` branch at 0x124 targets 0xfc, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0x14c targets 0x2c and is always taken.
  The return at 0x2c has v0 = one of 0x1, ret(mutex_spinunlock).





- `kona_unblank` in `usr/cpu/sysgen/IP27boot/kona.a(kona_tport.o)` at 0x5c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_tport.o)`.
  Range: 0x5c8-0x710 (328 bytes).
  It occupies 328 bytes.
  4 such `lw` accesses load 4 bytes from [sym(.sbss)]:8 +0x800208, including `lw` at 0x618, `lw` at 0x660, `lw` at 0x69c.
  3 such `sw` accesses store 4 bytes to [sym(.sbss)]:8 +0xc10000, including `sw` at 0x688, `sw` at 0x68c, `sw` at 0x690.
  The `jal` at 0x604 calls mutex_spinlock with a0=sym(ktport_lock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x648 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x670 calls kona_fc_attach with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x6b8 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x6e8 calls kona_fc_detach with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x6fc calls mutex_spinunlock with a0=sym(ktport_lock), a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x5e0 targets 0x5f8, is taken when at(=[sym(ktport_mute)]) == 0, and falls through when at(=[sym(ktport_mute)]) != 0.
  The `bgtz` branch at 0x630 targets 0x648, is taken when t8(?) > 0 (signed), and falls through when t8(?) <= 0 (signed).
  The `beq` branch at 0x638 targets 0x670 and is always taken.
  The `blez` branch at 0x640 targets 0x670, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0x668 targets 0x640, is taken when v0(?) < s2(=0x186a1) (signed), and falls through when v0(?) >= s2(=0x186a1) (signed).
  The `blez` branch at 0x6b0 targets 0x6e8, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x6d8 targets 0x6e8, is taken when v0(?) >= s2(=0x186a1) (signed), and falls through when v0(?) < s2(=0x186a1) (signed).
  The `bgtz` branch at 0x6e0 targets 0x6b8, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0x708 targets 0x5f0 and is always taken.
  The return at 0x5f0 has v0 = one of 0x1, ret(mutex_spinunlock).





- `kona_movechar` in `usr/cpu/sysgen/IP27boot/kona.a(kona_tport.o)` at 0x710 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_tport.o)`.
  Range: 0x710-0x870 (352 bytes).
  It occupies 352 bytes.
  4 such `lw` accesses load 4 bytes from [sym(.sbss)]:8 +0x800208, including `lw` at 0x768, `lw` at 0x7b0, `lw` at 0x7fc.
  4 such `sw` accesses store 4 bytes to [sym(.sbss)]:8 +0xc10000, including `sw` at 0x7e0, `sw` at 0x7e8, `sw` at 0x7ec.
  The `jal` at 0x754 calls mutex_spinlock with a0=sym(ktport_lock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x798 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x7c0 calls kona_fc_attach with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x818 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x848 calls kona_fc_detach with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x85c calls mutex_spinunlock with a0=sym(ktport_lock), a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x730 targets 0x748, is taken when at(=[sym(ktport_mute)]) == 0, and falls through when at(=[sym(ktport_mute)]) != 0.
  The `bgtz` branch at 0x780 targets 0x798, is taken when t8(?) > 0 (signed), and falls through when t8(?) <= 0 (signed).
  The `beq` branch at 0x788 targets 0x7c0 and is always taken.
  The `blez` branch at 0x790 targets 0x7c0, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0x7b8 targets 0x790, is taken when v0(?) < s2(=0x186a1) (signed), and falls through when v0(?) >= s2(=0x186a1) (signed).
  The `blez` branch at 0x810 targets 0x848, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x838 targets 0x848, is taken when v0(?) >= s2(=0x186a1) (signed), and falls through when v0(?) < s2(=0x186a1) (signed).
  The `bgtz` branch at 0x840 targets 0x818, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0x868 targets 0x740 and is always taken.
  The return at 0x740 has v0 = one of 0x1, ret(mutex_spinunlock).





- `kona_getdesc` in `usr/cpu/sysgen/IP27boot/kona.a(kona_tport.o)` at 0xcd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_tport.o)`.
  Range: 0xcd0-0xce8 (24 bytes).
  It occupies 24 bytes.
  The `beq` branch at 0xcd4 targets 0xce0, is taken when a1 == at(=0x1), and falls through when a1 != at(=0x1).
  The return at 0xce0 has v0 = one of 0x0, 0x1.





- `kona_select_cursor` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)`.
  Range: 0x0-0x74 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0xc loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x2c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sb` at 0x30 stores 1 byte to [a0+40]:8 +0xde3.
  The `lw` at 0x34 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `sw` at 0x38 stores 4 bytes to [a0+40]:8 +0xde8.
  The `lw` at 0x3c loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `sh` at 0x40 stores 2 bytes to [a0+40]:8 +0xdf0.
  The `lw` at 0x44 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `sb` at 0x4c stores 1 byte to [a0+40]:8 +0xde1.
  The `sb` at 0x50 stores 1 byte to [a0+40]:8 +0xde0.
  The `sh` at 0x5c stores 2 bytes to [a0+40]:8 +0xdf2.
  The `jal` at 0x1c calls mutex_spinlock with a0=[a0+40]:8+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x58 calls mutex_spinunlock with a0=[a0+40]:8+3520, a1=ret(mutex_spinlock), a2=[a2+12], a3=[a0+40]:8, a4=0x1, a5=[a2+8], a6=[a2+4], a7=[a2].
  The return at 0x6c has v0 = 0x0.





- `kona_video_rundown` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0xd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)`.
  Range: 0xd0-0x178 (168 bytes).
  It occupies 168 bytes.
  The `ld` at 0xe0 loads 8 bytes from a0 (arg0 at entry) +0xdd8.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x104, `ld` at 0x114, `ld` at 0x14c.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x150, `sd` at 0x158, `sd` at 0x15c.
  The `ld` at 0x160 loads 8 bytes from a0 (arg0 at entry) +0xdd0.
  The `sd` at 0x16c stores 8 bytes to a0 (arg0 at entry) +0xdd0.
  The `jal` at 0x148 calls kona_untimeout with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xf8 targets 0x120, is taken when v0(=[a0+3544]:8) == 0, and falls through when v0(=[a0+3544]:8) != 0.
  The `beq` branch at 0x108 targets 0x144, is taken when s0(=a1) == v0(?), and falls through when s0(=a1) != v0(?).
  The `bne` branch at 0x118 targets 0x104, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x164 targets 0x170, is taken when at(=[a0+3536]:8) != s0(=a1), and falls through when at(=[a0+3536]:8) == s0(=a1).
  The `beq` branch at 0x170 targets 0x128 and is always taken.
  The return at 0x13c has v0 = one of 0x0, 0x1.





- `kona_video_cleanup` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x178 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)`.
  Range: 0x178-0x1cc (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x190 calls mutex_spinlock with a0=a0+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a0 calls kona_video_rundown with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1b0 calls mutex_spinunlock with a0=a0+3520, a1=ret(mutex_spinlock), a2=?, a3=?.
  The return at 0x1c4 has v0 = ret(kona_video_rundown).





- `kona_swap_complete` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x1cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)`.
  Range: 0x1cc-0x2b8 (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0x1f8 loads 4 bytes from a0 (arg0 at entry) +0x888.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x78, including `ld` at 0x204, `ld` at 0x220.
  2 such `ld` accesses load 8 bytes from [a1+120]:8 +0xa0, including `ld` at 0x208, `ld` at 0x228.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0, including `lw` at 0x214, `lw` at 0x29c.
  The `ld` at 0x224 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `ld` at 0x234 loads 8 bytes from ?.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0x26c, `ld` at 0x284.
  The `jal` at 0x1fc calls cmn_err_tag with a0=0x837, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=a1 at entry (arg1).
  The `jal` at 0x24c calls rrmValidateBuffer with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x27c calls gfx_pio_write_32 with a0=[a0+2376]:8+0x8003c0, a1=0x80, a2=[a0+2376]:8, a3=?, a6=[a0+176], a7=[[a1+120]:8+160]:8.
  The `jal` at 0x294 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x8003d0, a1=0x2, a2=[a0+2376]:8, a3=?.
  The `beq` branch at 0x1e0 targets 0x204, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x20c targets 0x24c, is taken when at(=[[a1+120]:8+160]:8) == 0, and falls through when at(=[[a1+120]:8+160]:8) != 0.
  The `beq` branch at 0x218 targets 0x24c, is taken when a6(=[a0+176]) == 0, and falls through when a6(=[a0+176]) != 0.
  The `beq` branch at 0x23c targets 0x26c, is taken when t1(?) == a7(=[[a1+120]:8+160]:8), and falls through when t1(?) != a7(=[[a1+120]:8+160]:8).
  The `bne` branch at 0x244 targets 0x22c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x2a8 targets 0x220, is taken when s0(?) < a6(=[a0+176]) (unsigned), and falls through when s0(?) >= a6(=[a0+176]) (unsigned).
  The `beq` branch at 0x2b0 targets 0x24c and is always taken.
  The return at 0x264 has v0 = ret(rrmValidateBuffer).




- `kona_gsync_complete` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x2b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)`.
  Range: 0x2b8-0x308 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x2e4 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `jal` at 0x2e8 calls cmn_err_tag with a0=0x838, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `jal` at 0x2f0 calls rrmValidateRetrace with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2c8 targets 0x2f0, is taken when a2 == 0, and falls through when a2 != 0.
  The return at 0x300 has v0 = ret(rrmValidateRetrace).




- `kona_retrace_timeout` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x308 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)`.
  Range: 0x308-0x3c8 (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x340 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x354 loads 8 bytes from [a1+112]:8 +0x78.
  The `sd` at 0x364 stores 8 bytes to [a1+112]:8 +0x78.
  The `ld` at 0x370 loads 8 bytes from [a1+112]:8 +0x80.
  The `sd` at 0x384 stores 8 bytes to [a1+112]:8 +0x80.
  The `jal` at 0x32c calls mutex_spinlock with a0=a0+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x368 calls kona_video_rundown with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=[a1+112]:8.
  The `jalr` at 0x37c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=?.
  The `jal` at 0x38c calls mutex_spinunlock with a0=a0+3520, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3b8 calls mutex_spinunlock with a0=a0+3520, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x338 targets 0x3b4, is taken when s0(=a1) == 0, and falls through when s0(=a1) != 0.
  The `beq` branch at 0x344 targets 0x3b4, is taken when a4(=[a1+112]:8) == 0, and falls through when a4(=[a1+112]:8) != 0.
  The `beq` branch at 0x34c targets 0x3b8, is taken when s1(=[a1+112]:8+112) == 0, and falls through when s1(=[a1+112]:8+112) != 0.
  The `beq` branch at 0x358 targets 0x38c, is taken when at(=[[a1+112]:8+120]:8) == 0, and falls through when at(=[[a1+112]:8+120]:8) != 0.
  The `beq` branch at 0x3c0 targets 0x398 and is always taken.
  The return at 0x3ac has v0 = ret(mutex_spinunlock).




- `kona_mswap_complete` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x1004 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)`.
  Range: 0x1004-0x1138 (308 bytes).
  It occupies 308 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdf8, including `lw` at 0x103c, `lw` at 0x105c, `lw` at 0x1070.
  The `ld` at 0x1058 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x1064 stores 4 bytes to a0 (arg0 at entry) +0xdf8.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1068, `sw` at 0x106c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x108c, `lw` at 0x1098.
  The `lw` at 0x10e8 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `ld` at 0x112c loads 8 bytes from a0 (arg0 at entry) +0xe00.
  The `sd` at 0x1134 stores 8 bytes to a0 (arg0 at entry) +0xe00.
  The `jal` at 0x1030 calls mutex_spinlock with a0=a0+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1054 calls rrmValidateMGRSwapBuf with a0=[a0]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x10d0 calls mutex_spinunlock with a0=a0+3520, a1=?, a2=?, a3=?.
  The `jal` at 0x10ec calls cmn_err_tag with a0=0x839, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184].
  The `jal` at 0x1128 calls kona_untimeout with a0=a0 at entry (arg0), a1=[a0+3584]:8, a2=?, a3=?.
  The `beq` branch at 0x1028 targets 0x103c, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x1044 targets 0x10c8, is taken when a0(=[a0+3576]) == 0, and falls through when a0(=[a0+3576]) != 0.
  The `beq` branch at 0x104c targets 0x1084 and is always taken.
  The `beq` branch at 0x1078 targets 0x10c8, is taken when a0(=[a0+3576]) == 0, and falls through when a0(=[a0+3576]) != 0.
  The `beq` branch at 0x1080 targets 0x10c8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1090 targets 0x10a8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10a0 targets 0x1054, is taken when s4(=a2) >= t8(?) (unsigned), and falls through when s4(=a2) < t8(?) (unsigned).
  The `bne` branch at 0x10a8 targets 0x1054, is taken when s3(=a1) != 0, and falls through when s3(=a1) == 0.
  The `beq` branch at 0x10b4 targets 0x10c8, is taken when a0(=[a0+3576]) == 0, and falls through when a0(=[a0+3576]) != 0.
  The `bne` branch at 0x10c0 targets 0x1088, is taken when a1(?) < 0x60 (signed), and falls through when a1(?) >= 0x60 (signed).
  The `beq` branch at 0x10c8 targets 0x10fc, is taken when s3(=a1) == 0, and falls through when s3(=a1) != 0.
  The `beq` branch at 0x10f4 targets 0x1104 and is always taken.
  The `beq` branch at 0x10fc targets 0x1124, is taken when a0(=[a0+3576]) == 0, and falls through when a0(=[a0+3576]) != 0.
  The `beq` branch at 0x1130 targets 0x1100 and is always taken.
  The return at 0x111c has v0 = one of ret(cmn_err_tag), ?.




- `kona_video_tick` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x1468 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)`.
  Range: 0x1468-0x14d8 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1468 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `ld` at 0x1484 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `lw` at 0x1488 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `lw` at 0x148c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x1490 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `ld` at 0x1494 loads 8 bytes from a0 (arg0 at entry) +0x88.
  The `sw` at 0x149c stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x14a4 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x14b0 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `ld` at 0x14b4 loads 8 bytes from a0 (arg0 at entry) +0xa8.
  The `jal` at 0x1480 calls sendgroupintr with a0=[a0+152]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x14c0 calls rrmValidateVideoSync with a0=a0 at entry (arg0), a1=[a0+128]+1, a2=?, a3=?.
  The `beq` branch at 0x1478 targets 0x1488, is taken when at(=[a0+144]) == 0, and falls through when at(=[a0+144]) != 0.
  The `bne` branch at 0x14ac targets 0x14c0, is taken when v1(=[a0+136]:8) != 0, and falls through when v1(=[a0+136]:8) == 0.
  The `beq` branch at 0x14b8 targets 0x14cc, is taken when a2(=[a0+168]:8) == 0, and falls through when a2(=[a0+168]:8) != 0.
  The return at 0x14d0 has v0 = one of [a0+164]+1, ret(rrmValidateVideoSync).




- `kona_determine_cursor_channel` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x14d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)`.
  Range: 0x14d8-0x1694 (444 bytes).
  It occupies 444 bytes.
  The `lbu` at 0x14dc loads 1 byte from a0 (arg0 at entry) +0x1c.
  The `lh` at 0x14e8 loads 2 bytes from a0 (arg0 at entry) +0x24.
  The `lh` at 0x14f4 loads 2 bytes from a0 (arg0 at entry) +0x26.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1514, `lbu` at 0x1590, `lbu` at 0x1650.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x1520, `lb` at 0x159c.
  8 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1530, `lh` at 0x1540, `lh` at 0x1550.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x1a, including `lbu` at 0x1614, `lbu` at 0x166c.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x1a, including `sb` at 0x1624, `sb` at 0x167c.
  2 such `lb` accesses load 1 byte from (a0 + ([a0+28]:1 << 0x4)) +0x3a1, including `lb` at 0x1628, `lb` at 0x1648.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x1c, including `sb` at 0x1644, `sb` at 0x1690.
  The `beq` branch at 0x14f8 targets 0x150c and is always taken.
  The `bltz` branch at 0x1504 targets 0x1604, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x1518 targets 0x1580, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x1528 targets 0x1580, is taken when a4(?) < a5(?) (signed), and falls through when a4(?) >= a5(?) (signed).
  The `bne` branch at 0x1538 targets 0x1580, is taken when a6(=[a0+36]:2) < a1(?) (signed), and falls through when a6(=[a0+36]:2) >= a1(?) (signed).
  The `beq` branch at 0x1548 targets 0x1580, is taken when a6(=[a0+36]:2) >= a2(?) (signed), and falls through when a6(=[a0+36]:2) < a2(?) (signed).
  The `bne` branch at 0x1558 targets 0x1580, is taken when a7(=[a0+38]:2) < t3(?) (signed), and falls through when a7(=[a0+38]:2) >= t3(?) (signed).
  The `beq` branch at 0x156c targets 0x1580, is taken when a7(=[a0+38]:2) >= t9(?) (signed), and falls through when a7(=[a0+38]:2) < t9(?) (signed).
  The `bltz` branch at 0x1588 targets 0x1600, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x1594 targets 0x1500, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x15a4 targets 0x1500, is taken when a4(?) < a5(?) (signed), and falls through when a4(?) >= a5(?) (signed).
  The `bne` branch at 0x15b4 targets 0x1500, is taken when a6(=[a0+36]:2) < a2(?) (signed), and falls through when a6(=[a0+36]:2) >= a2(?) (signed).
  The `beq` branch at 0x15c4 targets 0x1500, is taken when a6(=[a0+36]:2) >= t3(?) (signed), and falls through when a6(=[a0+36]:2) < t3(?) (signed).
  The `bne` branch at 0x15d8 targets 0x1500, is taken when a7(=[a0+38]:2) < t9(?) (signed), and falls through when a7(=[a0+38]:2) >= t9(?) (signed).
  The `beq` branch at 0x15e8 targets 0x1500, is taken when a7(=[a0+38]:2) >= t9(?) (signed), and falls through when a7(=[a0+38]:2) < t9(?) (signed).
  The `beq` branch at 0x15f8 targets 0x1500 and is always taken.
  The `bne` branch at 0x160c targets 0x1648, is taken when t1(?) < 0x8 (signed), and falls through when t1(?) >= 0x8 (signed).
  The `beq` branch at 0x1618 targets 0x1628, is taken when a6(=[a0+26]:1) == 0, and falls through when a6(=[a0+26]:1) != 0.
  The `bne` branch at 0x162c targets 0x163c, is taken when a7(=[(a0 + ([a0+28]:1 << 0x4))+929]:1) != a4(?), and falls through when a7(=[(a0 + ([a0+28]:1 << 0x4))+929]:1) == a4(?).
  The `bne` branch at 0x1634 targets 0x1680, is taken when t0(=one of 0x0, 0x1) != 0, and falls through when t0(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x165c targets 0x1688, is taken when a6(=[(a0 + ([a0+28]:1 << 0x4))+929]:1) != a4(?), and falls through when a6(=[(a0 + ([a0+28]:1 << 0x4))+929]:1) == a4(?).
  The `beq` branch at 0x1664 targets 0x1688, is taken when t0(=one of 0x0, 0x1) == 0, and falls through when t0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1670 targets 0x1680, is taken when a5(?) == a6(=[a0+26]:1), and falls through when a5(?) != a6(=[a0+26]:1).
  The `beq` branch at 0x168c targets 0x166c and is always taken.
  The return at 0x1640 has v0 = 0x1.
  The return at 0x1680 has v0 = one of 0x0, 0x1.




- `kona_set_channel_rect` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x1c4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)`.
  Range: 0x1c4c-0x1d18 (204 bytes).
  It occupies 204 bytes.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x0, including `lbu` at 0x1c4c, `lbu` at 0x1c8c.
  The `ld` at 0x1c50 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lbu` at 0x1c9c loads 1 byte from a1 (arg1 at entry) +0x1.
  The `sb` at 0x1ca4 stores 1 byte to ([a0+40]:8 + ([a1]:1 << 0x4)) +0x1168.
  The `lb` at 0x1ca8 loads 1 byte from a1 (arg1 at entry) +0x2.
  The `sb` at 0x1cac stores 1 byte to ([a0+40]:8 + ([a1]:1 << 0x4)) +0x1169.
  The `lh` at 0x1cb0 loads 2 bytes from a1 (arg1 at entry) +0x4.
  The `sh` at 0x1cb4 stores 2 bytes to ([a0+40]:8 + ([a1]:1 << 0x4)) +0x116a.
  The `lh` at 0x1cb8 loads 2 bytes from a1 (arg1 at entry) +0x6.
  The `sh` at 0x1cbc stores 2 bytes to ([a0+40]:8 + ([a1]:1 << 0x4)) +0x116c.
  The `lh` at 0x1cc0 loads 2 bytes from a1 (arg1 at entry) +0x8.
  The `sh` at 0x1cc4 stores 2 bytes to ([a0+40]:8 + ([a1]:1 << 0x4)) +0x116e.
  The `lh` at 0x1cc8 loads 2 bytes from a1 (arg1 at entry) +0xa.
  The `sh` at 0x1ccc stores 2 bytes to ([a0+40]:8 + ([a1]:1 << 0x4)) +0x1170.
  The `lb` at 0x1cd0 loads 1 byte from a1 (arg1 at entry) +0xc.
  The `sb` at 0x1cd4 stores 1 byte to ([a0+40]:8 + ([a1]:1 << 0x4)) +0x1172.
  The `lb` at 0x1cd8 loads 1 byte from a1 (arg1 at entry) +0xd.
  The `sb` at 0x1cdc stores 1 byte to ([a0+40]:8 + ([a1]:1 << 0x4)) +0x1173.
  The `lh` at 0x1ce0 loads 2 bytes from a1 (arg1 at entry) +0xe.
  The `sh` at 0x1ce4 stores 2 bytes to ([a0+40]:8 + ([a1]:1 << 0x4)) +0x1174.
  The `lh` at 0x1ce8 loads 2 bytes from a1 (arg1 at entry) +0x10.
  The `sh` at 0x1cec stores 2 bytes to ([a0+40]:8 + ([a1]:1 << 0x4)) +0x1176.
  The `sb` at 0x1cf4 stores 1 byte to [a0+40]:8 +0xde4.
  The `sb` at 0x1cfc stores 1 byte to [a0+40]:8 +0xde1.
  The `sb` at 0x1d08 stores 1 byte to [a0+40]:8 +0xde0.
  The `jal` at 0x1c80 calls mutex_spinlock with a0=[a0+40]:8+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1d04 calls mutex_spinunlock with a0=[a0+40]:8+3520, a1=ret(mutex_spinlock), a2=0x1, a3=[a0+40]:8, a4=0x20, a5=[a1+16]:2, a6=([a0+40]:8 + ([a1]:1 << 0x4)), a7=[a1+14]:2.
  The `bne` branch at 0x1c68 targets 0x1c78, is taken when at(=[a1]:1) < 0x20 (signed), and falls through when at(=[a1]:1) >= 0x20 (signed).
  The `beq` branch at 0x1d10 targets 0x1c70 and is always taken.
  The return at 0x1c70 has v0 = one of 0x0, 0x16.




- `gfx_earlyinit` in `usr/cpu/sysgen/IP27boot/tport.a(tport.o)` at 0x11cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/tport.a(tport.o)`.
  Range: 0x11cc-0x1238 (108 bytes).
  It occupies 108 bytes.
  The `jal` at 0x11d4 calls mgras_earlyinit with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11ec calls kona_earlyinit with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1210 calls rad4_earlyinit with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1220 calls rad1_earlyinit with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x11dc targets 0x11ec, is taken when v0(=ret(mgras_earlyinit)) == 0, and falls through when v0(=ret(mgras_earlyinit)) != 0.
  The `bne` branch at 0x11f4 targets 0x11e4, is taken when v0(=ret(kona_earlyinit)) != 0, and falls through when v0(=ret(kona_earlyinit)) == 0.
  The `bne` branch at 0x1200 targets 0x1220, is taken when at(=sym(rad1_earlyinit)) != 0, and falls through when at(=sym(rad1_earlyinit)) == 0.
  The `beq` branch at 0x1208 targets 0x11e4, is taken when v0(=sym(rad4_earlyinit)) == 0, and falls through when v0(=sym(rad4_earlyinit)) != 0.
  The `beq` branch at 0x1218 targets 0x11e4 and is always taken.
  The `bne` branch at 0x1228 targets 0x11e4, is taken when v0(=ret(rad1_earlyinit)) != 0, and falls through when v0(=ret(rad1_earlyinit)) == 0.
  The `beq` branch at 0x1230 targets 0x1208 and is always taken.
  The return at 0x11e4 has v0 = one of ret(mgras_earlyinit), ret(kona_earlyinit), sym(rad4_earlyinit), ret(rad4_earlyinit), ret(rad1_earlyinit).




- `init_gfx_group_table` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x124 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x124-0x188 (100 bytes).
  It occupies 100 bytes.
  The `jal` at 0x13c calls kern_malloc with a0=0x80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x150 calls bzero with a0=?, a1=0x80, a2=?, a3=?.
  The `jal` at 0x160 calls spinlock_init with a0=sym(gfx_group_table_lock)+4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x178 calls cmn_err with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x12c targets 0x13c, is taken when at(=[sym(gfx_group_table)]:8) == 0, and falls through when at(=[sym(gfx_group_table)]:8) != 0.
  The `beq` branch at 0x148 targets 0x174, is taken when v0(=ret(kern_malloc)) == 0, and falls through when v0(=ret(kern_malloc)) != 0.
  The `beq` branch at 0x16c targets 0x134 and is always taken.
  The `beq` branch at 0x180 targets 0x150 and is always taken.
  The return at 0x134 has v0 = one of ?, ret(spinlock_init).




- `gfx_group_find` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x188 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x188-0x240 (184 bytes).
  It occupies 184 bytes.
  6 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1cc, `ld` at 0x1d8, `ld` at 0x1e4.
  The `jal` at 0x194 calls threadhandle_to_threadgrouphandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1b4 calls gfxtable_readerlock with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x21c calls gfxtable_readerunlock with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1a8 targets 0x238, is taken when (v0(=ret(threadhandle_to_threadgrouphandle)) & 0xf) == 0, and falls through when (v0(=ret(threadhandle_to_threadgrouphandle)) & 0xf) != 0.
  The `beq` branch at 0x1d0 targets 0x218, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1dc targets 0x218, is taken when t9(?) == s1(=ret(threadhandle_to_threadgrouphandle)), and falls through when t9(?) != s1(=ret(threadhandle_to_threadgrouphandle)).
  The `beq` branch at 0x1e8 targets 0x214, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1f4 targets 0x214, is taken when ra(?) == s1(=ret(threadhandle_to_threadgrouphandle)), and falls through when ra(?) != s1(=ret(threadhandle_to_threadgrouphandle)).
  The `beq` branch at 0x200 targets 0x214, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x20c targets 0x1e4, is taken when at(?) != s1(=ret(threadhandle_to_threadgrouphandle)), and falls through when at(?) == s1(=ret(threadhandle_to_threadgrouphandle)).
  The `beq` branch at 0x238 targets 0x1b4 and is always taken.
  The return at 0x230 has v0 = ?.




- `gfx_group_create` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x240 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x240-0x2fc (188 bytes).
  It occupies 188 bytes.
  The `sw` at 0x278 stores 4 bytes to ret(kern_malloc) +0x8.
  The `sd` at 0x27c stores 8 bytes to ret(kern_malloc) +0x0.
  The `ld` at 0x288 loads 8 bytes from ret(kern_malloc) +0x0.
  The `sw` at 0x290 stores 4 bytes to ret(kern_malloc) +0xc.
  The `ld` at 0x2bc loads 8 bytes from ?.
  The `sd` at 0x2c0 stores 8 bytes to ret(kern_malloc) +0x18.
  The `sd` at 0x2d8 stores 8 bytes to ?.
  The `jal` at 0x250 calls kern_malloc with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x268 calls threadhandle_to_threadgrouphandle with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x280 calls spinlock_init with a0=ret(kern_malloc)+16, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2a0 calls gfxtable_writerlock with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x2d4 calls gfxtable_writerunlock with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `bne` branch at 0x258 targets 0x268, is taken when v0(=ret(kern_malloc)) != 0, and falls through when v0(=ret(kern_malloc)) == 0.
  The `beq` branch at 0x260 targets 0x2dc and is always taken.
  The `beq` branch at 0x294 targets 0x2f0, is taken when (a0(=[ret(kern_malloc)]:8) & 0xf) == 0, and falls through when (a0(=[ret(kern_malloc)]:8) & 0xf) != 0.
  The `beq` branch at 0x2f4 targets 0x2a0 and is always taken.
  The return at 0x2e8 has v0 = one of 0x0, ret(kern_malloc).




- `gfx_group_destroy` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x2fc-0x3cc (208 bytes).
  It occupies 208 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x300, `ld` at 0x348.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x33c, `ld` at 0x34c, `ld` at 0x35c.
  The `sd` at 0x384 stores 8 bytes to ?.
  The `jal` at 0x324 calls gfxtable_writerlock with a0=sym(gfx_group_table_lock), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x390 calls gfxtable_writerunlock with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `jal` at 0x3a0 calls spinlock_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3a8 calls kern_free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x318 targets 0x3c4, is taken when (a1(=[a0]:8) & 0xf) == 0, and falls through when (a1(=[a0]:8) & 0xf) != 0.
  The `beq` branch at 0x340 targets 0x374, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x350 targets 0x374, is taken when a6(?) == a5(=[a0]:8), and falls through when a6(?) != a5(=[a0]:8).
  The `beq` branch at 0x360 targets 0x38c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x36c targets 0x358, is taken when a6(?) != a5(=[a0]:8), and falls through when a6(?) == a5(=[a0]:8).
  The `beq` branch at 0x374 targets 0x388, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x380 targets 0x38c and is always taken.
  The `beq` branch at 0x398 targets 0x3b4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x3c4 targets 0x324 and is always taken.
  The return at 0x3bc has v0 = one of ret(gfxtable_writerunlock), ret(kern_free).




- `gfx_disp` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xc28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0xc28-0xd5c (308 bytes).
  It occupies 308 bytes.
  The `ld` at 0xc4c loads 8 bytes from ret(gthread_find) +0x10.
  The `ld` at 0xc58 loads 8 bytes from [ret(gthread_find)+16]:8 +0x18.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0xc68, `ld` at 0xc98, `ld` at 0xca4.
  The `ld` at 0xc7c loads 8 bytes from ret(gthread_find) +0x18.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xc88, `lw` at 0xcb0, `lw` at 0xcc8.
  The `lw` at 0xd1c loads 4 bytes from ret(gthread_find) +0x8.
  The `lw` at 0xd38 loads 4 bytes from [ret(gthread_find)+24]:8 +0xc.
  The `jal` at 0xc30 calls gthread_find with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xc6c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd44 calls valusema with a0=?, a1=?, a2=?, a3=?, a5=[[ret(gthread_find)+24]:8+12].
  The `beq` branch at 0xc44 targets 0xc5c, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0xc50 targets 0xc5c, is taken when v0(=[ret(gthread_find)+16]:8) == 0, and falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0xc5c targets 0xcfc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xc64 targets 0xca8 and is always taken.
  The `beq` branch at 0xc74 targets 0xcc8, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xc80 targets 0xc98, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xc90 targets 0xd04, is taken when (at(?) & 0x8) == 0, and falls through when (at(?) & 0x8) != 0.
  The `beq` branch at 0xc9c targets 0xcfc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xca8 targets 0xc98, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `blez` branch at 0xcb4 targets 0xc7c, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `bne` branch at 0xcc0 targets 0xc6c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xcd0 targets 0xce4, is taken when (v1(?) & 0x3) != 0, and falls through when (v1(?) & 0x3) == 0.
  The `bne` branch at 0xcdc targets 0xc7c, is taken when a0(?) != s0(?), and falls through when a0(?) == s0(?).
  The `beq` branch at 0xcfc targets 0xce4 and is always taken.
  The `bne` branch at 0xd08 targets 0xc98, is taken when a1(?) != s0(?), and falls through when a1(?) == s0(?).
  The `bne` branch at 0xd14 targets 0xc98, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0xd24 targets 0xc98, is taken when (a3(=[ret(gthread_find)+8]) & 0x4) != 0, and falls through when (a3(=[ret(gthread_find)+8]) & 0x4) == 0.
  The `bne` branch at 0xd30 targets 0xc98, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xd3c targets 0xc98, is taken when a5(=[[ret(gthread_find)+24]:8+12]) == 0, and falls through when a5(=[[ret(gthread_find)+24]:8+12]) != 0.
  The `bgezl` branch at 0xd4c targets 0xc9c, is taken when v0(=ret(valusema)) >= 0 (signed), and falls through when v0(=ret(valusema)) < 0 (signed); its branch-likely delay slot `ld s0,24(s0)` at 0xd50 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd54 targets 0xce4 and is always taken.
  The return at 0xcf4 has v0 = one of 0x0, 0x1.




- `gfx_fault` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xd5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0xd5c-0xe34 (216 bytes).
  It occupies 216 bytes.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x18, including `ld` at 0xd8c, `ld` at 0xdcc.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0xd94, `lw` at 0xdd8, `lw` at 0xe20.
  The `ld` at 0xdb0 loads 8 bytes from a1 (arg1 at entry) +0x20.
  The `ld` at 0xdb4 loads 8 bytes from [a1+32]:8 +0x70.
  The `jal` at 0xd6c calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xd78 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jalr` at 0xdb8 calls (unknown callee) with a0=a1 at entry (arg1), a1=[[a1+32]:8+112]:8, a2=?, a3=?.
  The `jal` at 0xdc4 calls RRM_ValidFault with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0xe14 calls psema with a0=a1+80, a1=0x19, a2=?, a3=?.
  The `jal` at 0xe24 calls vsema with a0=a1+80, a1=?, a2=[ret(gthread_find)+24]:8, a3=?.
  The `beq` branch at 0xd84 targets 0xdf0, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0xd90 targets 0xda4, is taken when at(=[ret(gthread_find)+24]:8) == 0, and falls through when at(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xd9c targets 0xe14, is taken when (a0(=[a1+4]) & 0x8) == 0, and falls through when (a0(=[a1+4]) & 0x8) != 0.
  The `beq` branch at 0xda8 targets 0xdc4, is taken when (a0(=[a1+4]) & 0x1) == 0, and falls through when (a0(=[a1+4]) & 0x1) != 0.
  The `beq` branch at 0xdd0 targets 0xde8, is taken when a2(=[ret(gthread_find)+24]:8) == 0, and falls through when a2(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xde0 targets 0xe24, is taken when (a3(=[a1+4]) & 0x8) == 0, and falls through when (a3(=[a1+4]) & 0x8) != 0.
  The `bltz` branch at 0xde8 targets 0xe08, is taken when v0(=ret(RRM_ValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_ValidFault)) >= 0 (signed).
  The `beq` branch at 0xe0c targets 0xdf4 and is always taken.
  The `beq` branch at 0xe1c targets 0xda4 and is always taken.
  The `beq` branch at 0xe2c targets 0xde8 and is always taken.
  The return at 0xe00 has v0 = one of 0x0, 0x1.




- `gfx_exit` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xe34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0xe34-0xfe0 (428 bytes).
  It occupies 428 bytes.
  The `ld` at 0xe5c loads 8 bytes from ret(gthread_find) +0x18.
  The `lw` at 0xe60 loads 4 bytes from ret(gthread_find) +0x8.
  5 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0xe64, `ld` at 0xe84, `ld` at 0xf44.
  The `sw` at 0xe70 stores 4 bytes to ret(gthread_find) +0x8.
  2 such `ld` accesses load 8 bytes from [ret(gthread_find)+16]:8 +0x18, including `ld` at 0xe88, `ld` at 0xebc.
  The `lw` at 0xe94 loads 4 bytes from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  13 such `ld` accesses load 8 bytes from ?, including `ld` at 0xec4, `ld` at 0xed8, `ld` at 0xee4.
  The `ld` at 0xf34 loads 8 bytes from ret(gthread_find) +0x0.
  The `sd` at 0xfb4 stores 8 bytes to ?.
  The `jal` at 0xe3c calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe48 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0xe7c calls GfxListReaderLock with a0=[ret(gthread_find)+16]:8, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0xea4 calls GfxListReaderUnlock with a0=[ret(gthread_find)+16]:8, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jalr` at 0xed0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf24 calls mutex_spinlock with a0=[ret(gthread_find)+16]:8+16, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0xf30 calls threadgroup_refcnt with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf4c calls mutex_spinunlock with a0=[ret(gthread_find)+16]:8+16, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xf54 calls GfxListReaderUnlock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf90 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xfa8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfbc calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfc4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0xe54 targets 0xf1c, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0xe6c targets 0xeb4, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xe74 targets 0xf64, is taken when a1(=[ret(gthread_find)+16]:8) == 0, and falls through when a1(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0xe8c targets 0xea4, is taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0xe9c targets 0xf24, is taken when (v0(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0, and falls through when (v0(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `beq` branch at 0xeac targets 0xf08 and is always taken.
  The `beq` branch at 0xeb4 targets 0xec0, is taken when a1(=[ret(gthread_find)+16]:8) == 0, and falls through when a1(=[ret(gthread_find)+16]:8) != 0.
  The `bnel` branch at 0xec0 targets 0xee8, is taken when s0(?) != 0, and falls through when s0(?) == 0; its branch-likely delay slot `ld v0,32(s0)` at 0xec4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xec8 targets 0xf08 and is always taken.
  The `beq` branch at 0xedc targets 0xf08, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xee8 targets 0xefc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xef4 targets 0xed0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0xf00 targets 0xee4, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xf1c targets 0xf08 and is always taken.
  The `beq` branch at 0xf3c targets 0xf78, is taken when v0(=ret(threadgroup_refcnt)) == v1(=0x1), and falls through when v0(=ret(threadgroup_refcnt)) != v1(=0x1).
  The `beq` branch at 0xf5c targets 0xf08 and is always taken.
  The `beq` branch at 0xf64 targets 0xf0c and is always taken.
  The `beq` branch at 0xf70 targets 0xf44, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xf7c targets 0xf6c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xf88 targets 0xf6c, is taken when a1(?) != s0(?), and falls through when a1(?) == s0(?).
  The `beq` branch at 0xfa0 targets 0xfb0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0xfd0 targets 0xf78, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xfd8 targets 0xf48 and is always taken.
  The return at 0xf14 has v0 = 0x0.




- `gfx_shdup` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1234 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x1234-0x12b0 (124 bytes).
  It occupies 124 bytes.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x1250, `ld` at 0x129c.
  The `ld` at 0x125c loads 8 bytes from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x1268 loads 4 bytes from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `jal` at 0x1240 calls gthread_find with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1284 calls gthread_create with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a4=[[ret(gthread_find)+16]:8+24]:8.
  The `jal` at 0x1298 calls gthread_attach_list with a0=ret(gthread_create), a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0x12a0 calls setgfxsched_thread with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1248 targets 0x1274, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x1254 targets 0x1278, is taken when v0(=[ret(gthread_find)+16]:8) == 0, and falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x1260 targets 0x1278, is taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x1270 targets 0x1284, is taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0, and falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `beq` branch at 0x128c targets 0x1278, is taken when v0(=ret(gthread_create)) == 0, and falls through when v0(=ret(gthread_create)) != 0.
  The `beq` branch at 0x12a8 targets 0x1278 and is always taken.
  The return at 0x127c has v0 = one of [ret(gthread_find)+16]:8, ?, ret(gthread_create), ret(setgfxsched_thread).




- `gfx_conflict_scan` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1e44 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x1e44-0x1f28 (228 bytes).
  It occupies 228 bytes.
  The `ld` at 0x1e7c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x1e88 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x1e8c loads 8 bytes from [a0+24]:8 +0x0.
  The `ld` at 0x1ea0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1ea4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1eb0 loads 8 bytes from [a0+16]:8 +0x18.
  The `lw` at 0x1ecc loads 4 bytes from ?.
  The `ld` at 0x1f08 loads 8 bytes from ?.
  The `sw` at 0x1f24 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x1ec4 calls psema with a0=?, a1=0x19, a2=?, a3=?, a5=one of 0x1, 0x2.
  The `jal` at 0x1ef0 calls vsema with a0=?, a1=?, a2=one of 0x1, 0x2, a3=?, a4=0x1.
  The `beq` branch at 0x1e5c targets 0x1e7c, is taken when a2 == a5(=0x1), and falls through when a2 != a5(=0x1).
  The `beq` branch at 0x1e80 targets 0x1e98, is taken when v0(=[a0+24]:8) == 0, and falls through when v0(=[a0+24]:8) != 0.
  The `beq` branch at 0x1e90 targets 0x1ea0, is taken when at(=[[a0+24]:8]:8) == v1(=[a1+8]:8), and falls through when at(=[[a0+24]:8]:8) != v1(=[a1+8]:8).
  The `beq` branch at 0x1e98 targets 0x1e68 and is always taken.
  The `beq` branch at 0x1ea8 targets 0x1eb4, is taken when v0(=[a0+16]:8) == 0, and falls through when v0(=[a0+16]:8) != 0.
  The `beq` branch at 0x1eb4 targets 0x1f14, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1f00 targets 0x1f1c, is taken when a5(=one of 0x1, 0x2) != a6(=[a1]), and falls through when a5(=one of 0x1, 0x2) == a6(=[a1]).
  The `bne` branch at 0x1f0c targets 0x1ec0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1f14 targets 0x1e68 and is always taken.
  The `beq` branch at 0x1f20 targets 0x1e68 and is always taken.
  The return at 0x1e74 has v0 = one of 0x0, 0x1.




- `gfx_shalloc` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3378 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3378-0x3438 (192 bytes).
  It occupies 192 bytes.
  3 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x33c0, `ld` at 0x33d4, `ld` at 0x3408.
  The `ld` at 0x33d8 loads 8 bytes from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x33e8 loads 4 bytes from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `sd` at 0x33f8 stores 8 bytes to ?.
  The `ld` at 0x33fc loads 8 bytes from ?.
  The `sw` at 0x3434 stores 4 bytes to ret(gfx_group_create) +0xc.
  The `jal` at 0x3380 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3388 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3398 calls gfx_group_create with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x33a4 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x33b8 calls gthread_attach_group with a0=ret(gthread_find), a1=ret(gfx_group_create), a2=?, a3=?.
  The `jal` at 0x33cc calls GfxListWriterLock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x340c calls GfxListWriterUnlock with a0=[ret(gthread_find)+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=?, a5=0x1.
  The `jal` at 0x3414 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0x33ac targets 0x3414, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x33c4 targets 0x3414, is taken when a0(=[ret(gthread_find)+16]:8) == 0, and falls through when a0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x33e0 targets 0x340c, is taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x33f0 targets 0x3430, is taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0, and falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `bne` branch at 0x3400 targets 0x33f8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x3430 targets 0x33f8 and is always taken.
  The return at 0x3428 has v0 = ret(splx).




- `gfx_shfree` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3438 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3438-0x3464 (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x3440 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3448 calls gfx_group_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x3450 calls gfx_group_destroy with a0=ret(gfx_group_find), a1=?, a2=?, a3=?.
  The return at 0x345c has v0 = ret(gfx_group_destroy).




- `gfx_frs_valid_pipenum` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3464 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3464-0x3470 (12 bytes).
  It occupies 12 bytes.
  The return at 0x3468 has v0 = ?.




- `gfx_frs_install` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3470 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3470-0x34c8 (88 bytes).
  It occupies 88 bytes.
  The `ld` at 0x347c loads 8 bytes from (sym(GfxBoards) + (a1 << 0x3)) +0x0.
  The `ld` at 0x3480 loads 8 bytes from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x38.
  The `ld` at 0x3484 loads 8 bytes from [[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8 +0xd0.
  The `ld` at 0x3498 loads 8 bytes from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x40.
  The `jalr` at 0x349c calls (unknown callee) with a0=[[(sym(GfxBoards) + (a1 << 0x3))]:8+64]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `jal` at 0x34b8 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `beq` branch at 0x3490 targets 0x34b0, is taken when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) == 0, and falls through when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) != 0.
  The `beq` branch at 0x34c0 targets 0x34a8 and is always taken.
  The return at 0x34a8 has v0 = one of ret(?), ret(cmn_err).




- `gfx_frs_uninstall` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x34c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x34c8-0x3518 (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x34d4 loads 8 bytes from (sym(GfxBoards) + (a0 << 0x3)) +0x0.
  The `ld` at 0x34d8 loads 8 bytes from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x38.
  The `ld` at 0x34dc loads 8 bytes from [[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8 +0xd8.
  The `ld` at 0x34f0 loads 8 bytes from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x40.
  The `jalr` at 0x34ec calls (unknown callee) with a0=[[(sym(GfxBoards) + (a0 << 0x3))]:8+64]:8, a1=a1 at entry (arg1), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `jal` at 0x3508 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `beq` branch at 0x34e4 targets 0x3500, is taken when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) == 0, and falls through when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) != 0.
  The `beq` branch at 0x3510 targets 0x34f8 and is always taken.
  The return at 0x34f8 has v0 = one of ret(?), ret(cmn_err).




- `irix5_to_gfx_getboardinfo_args` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3518 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3518-0x3590 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x352c loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x353c loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x3540, `sd` at 0x358c.
  The `sw` at 0x3548 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x3554 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x3558 loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x355c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x3560 loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x3564 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x3568 loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x356c stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `jal` at 0x357c calls kern_malloc with a0=0xc, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3524 targets 0x3554, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x3534 targets 0x357c, is taken when at(=[a3]) < 0xc (unsigned), and falls through when at(=[a3]) >= 0xc (unsigned).
  The `beq` branch at 0x354c targets 0x3570 and is always taken.
  The `beq` branch at 0x3588 targets 0x3544 and is always taken.
  The return at 0x3574 has v0 = 0x0.




- `irix5_to_gfx_download_args` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3590 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3590-0x3630 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x35a4 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x35b4 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x35b8, `sd` at 0x362c.
  The `sw` at 0x35c0 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x35cc loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x35d0 loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x35d4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x35d8 loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x35dc stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x35e0 loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x35e4 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `lw` at 0x35e8 loads 4 bytes from [a3+16]:8 +0xc.
  The `sw` at 0x35ec stores 4 bytes to a1 (arg1 at entry) +0x14.
  The `lw` at 0x35f0 loads 4 bytes from [a3+16]:8 +0x10.
  The `sw` at 0x35f4 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `lw` at 0x35f8 loads 4 bytes from [a3+16]:8 +0x14.
  The `sw` at 0x35fc stores 4 bytes to a1 (arg1 at entry) +0x1c.
  The `lw` at 0x3600 loads 4 bytes from [a3+16]:8 +0x18.
  The `sw` at 0x3604 stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `lw` at 0x3608 loads 4 bytes from [a3+16]:8 +0x1c.
  The `sw` at 0x360c stores 4 bytes to a1 (arg1 at entry) +0x24.
  The `jal` at 0x361c calls kern_malloc with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x359c targets 0x35cc, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x35ac targets 0x361c, is taken when at(=[a3]) < 0x20 (unsigned), and falls through when at(=[a3]) >= 0x20 (unsigned).
  The `beq` branch at 0x35c4 targets 0x3610 and is always taken.
  The `beq` branch at 0x3628 targets 0x35bc and is always taken.
  The return at 0x3614 has v0 = 0x0.




- `irix5_to_gfx_attach_board_args` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3630 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3630-0x36a0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x3644 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x3654 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x3658, `sd` at 0x369c.
  The `sw` at 0x3660 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x366c loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x3670 loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x3674 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x3678 loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x367c stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `jal` at 0x368c calls kern_malloc with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x363c targets 0x366c, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x364c targets 0x368c, is taken when at(=[a3]) < 0x8 (unsigned), and falls through when at(=[a3]) >= 0x8 (unsigned).
  The `beq` branch at 0x3664 targets 0x3680 and is always taken.
  The `beq` branch at 0x3698 targets 0x365c and is always taken.
  The return at 0x3684 has v0 = 0x0.




- `init_gfx_group_table` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x124 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x124-0x188 (100 bytes).
  It occupies 100 bytes.
  The `jal` at 0x13c calls kern_malloc with a0=0x80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x150 calls bzero with a0=?, a1=0x80, a2=?, a3=?.
  The `jal` at 0x160 calls spinlock_init with a0=sym(gfx_group_table_lock)+4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x178 calls cmn_err with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x12c targets 0x13c, is taken when at(=[sym(gfx_group_table)]:8) == 0, and falls through when at(=[sym(gfx_group_table)]:8) != 0.
  The `beq` branch at 0x148 targets 0x174, is taken when v0(=ret(kern_malloc)) == 0, and falls through when v0(=ret(kern_malloc)) != 0.
  The `beq` branch at 0x16c targets 0x134 and is always taken.
  The `beq` branch at 0x180 targets 0x150 and is always taken.
  The return at 0x134 has v0 = one of ?, ret(spinlock_init).



- `gfx_group_find` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x188 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x188-0x240 (184 bytes).
  It occupies 184 bytes.
  6 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1cc, `ld` at 0x1d8, `ld` at 0x1e4.
  The `jal` at 0x194 calls threadhandle_to_threadgrouphandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1b4 calls gfxtable_readerlock with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x21c calls gfxtable_readerunlock with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1a8 targets 0x238, is taken when (v0(=ret(threadhandle_to_threadgrouphandle)) & 0xf) == 0, and falls through when (v0(=ret(threadhandle_to_threadgrouphandle)) & 0xf) != 0.
  The `beq` branch at 0x1d0 targets 0x218, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1dc targets 0x218, is taken when t9(?) == s1(=ret(threadhandle_to_threadgrouphandle)), and falls through when t9(?) != s1(=ret(threadhandle_to_threadgrouphandle)).
  The `beq` branch at 0x1e8 targets 0x214, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1f4 targets 0x214, is taken when ra(?) == s1(=ret(threadhandle_to_threadgrouphandle)), and falls through when ra(?) != s1(=ret(threadhandle_to_threadgrouphandle)).
  The `beq` branch at 0x200 targets 0x214, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x20c targets 0x1e4, is taken when at(?) != s1(=ret(threadhandle_to_threadgrouphandle)), and falls through when at(?) == s1(=ret(threadhandle_to_threadgrouphandle)).
  The `beq` branch at 0x238 targets 0x1b4 and is always taken.
  The return at 0x230 has v0 = ?.



- `gfx_group_create` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x240 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x240-0x2fc (188 bytes).
  It occupies 188 bytes.
  The `sw` at 0x278 stores 4 bytes to ret(kern_malloc) +0x8.
  The `sd` at 0x27c stores 8 bytes to ret(kern_malloc) +0x0.
  The `ld` at 0x288 loads 8 bytes from ret(kern_malloc) +0x0.
  The `sw` at 0x290 stores 4 bytes to ret(kern_malloc) +0xc.
  The `ld` at 0x2bc loads 8 bytes from ?.
  The `sd` at 0x2c0 stores 8 bytes to ret(kern_malloc) +0x18.
  The `sd` at 0x2d8 stores 8 bytes to ?.
  The `jal` at 0x250 calls kern_malloc with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x268 calls threadhandle_to_threadgrouphandle with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x280 calls spinlock_init with a0=ret(kern_malloc)+16, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2a0 calls gfxtable_writerlock with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x2d4 calls gfxtable_writerunlock with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `bne` branch at 0x258 targets 0x268, is taken when v0(=ret(kern_malloc)) != 0, and falls through when v0(=ret(kern_malloc)) == 0.
  The `beq` branch at 0x260 targets 0x2dc and is always taken.
  The `beq` branch at 0x294 targets 0x2f0, is taken when (a0(=[ret(kern_malloc)]:8) & 0xf) == 0, and falls through when (a0(=[ret(kern_malloc)]:8) & 0xf) != 0.
  The `beq` branch at 0x2f4 targets 0x2a0 and is always taken.
  The return at 0x2e8 has v0 = one of 0x0, ret(kern_malloc).



- `gfx_group_destroy` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x2fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x2fc-0x3cc (208 bytes).
  It occupies 208 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x300, `ld` at 0x348.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x33c, `ld` at 0x34c, `ld` at 0x35c.
  The `sd` at 0x384 stores 8 bytes to ?.
  The `jal` at 0x324 calls gfxtable_writerlock with a0=sym(gfx_group_table_lock), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x390 calls gfxtable_writerunlock with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `jal` at 0x3a0 calls spinlock_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3a8 calls kern_free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x318 targets 0x3c4, is taken when (a1(=[a0]:8) & 0xf) == 0, and falls through when (a1(=[a0]:8) & 0xf) != 0.
  The `beq` branch at 0x340 targets 0x374, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x350 targets 0x374, is taken when a6(?) == a5(=[a0]:8), and falls through when a6(?) != a5(=[a0]:8).
  The `beq` branch at 0x360 targets 0x38c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x36c targets 0x358, is taken when a6(?) != a5(=[a0]:8), and falls through when a6(?) == a5(=[a0]:8).
  The `beq` branch at 0x374 targets 0x388, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x380 targets 0x38c and is always taken.
  The `beq` branch at 0x398 targets 0x3b4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x3c4 targets 0x324 and is always taken.
  The return at 0x3bc has v0 = one of ret(gfxtable_writerunlock), ret(kern_free).



- `gfx_disp` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xc28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0xc28-0xd5c (308 bytes).
  It occupies 308 bytes.
  The `ld` at 0xc4c loads 8 bytes from ret(gthread_find) +0x10.
  The `ld` at 0xc58 loads 8 bytes from [ret(gthread_find)+16]:8 +0x18.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0xc68, `ld` at 0xc98, `ld` at 0xca4.
  The `ld` at 0xc7c loads 8 bytes from ret(gthread_find) +0x18.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xc88, `lw` at 0xcb0, `lw` at 0xcc8.
  The `lw` at 0xd1c loads 4 bytes from ret(gthread_find) +0x8.
  The `lw` at 0xd38 loads 4 bytes from [ret(gthread_find)+24]:8 +0xc.
  The `jal` at 0xc30 calls gthread_find with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xc6c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd44 calls valusema with a0=?, a1=?, a2=?, a3=?, a5=[[ret(gthread_find)+24]:8+12].
  The `beq` branch at 0xc44 targets 0xc5c, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0xc50 targets 0xc5c, is taken when v0(=[ret(gthread_find)+16]:8) == 0, and falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0xc5c targets 0xcfc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xc64 targets 0xca8 and is always taken.
  The `beq` branch at 0xc74 targets 0xcc8, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xc80 targets 0xc98, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xc90 targets 0xd04, is taken when (at(?) & 0x8) == 0, and falls through when (at(?) & 0x8) != 0.
  The `beq` branch at 0xc9c targets 0xcfc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xca8 targets 0xc98, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `blez` branch at 0xcb4 targets 0xc7c, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `bne` branch at 0xcc0 targets 0xc6c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xcd0 targets 0xce4, is taken when (v1(?) & 0x3) != 0, and falls through when (v1(?) & 0x3) == 0.
  The `bne` branch at 0xcdc targets 0xc7c, is taken when a0(?) != s0(?), and falls through when a0(?) == s0(?).
  The `beq` branch at 0xcfc targets 0xce4 and is always taken.
  The `bne` branch at 0xd08 targets 0xc98, is taken when a1(?) != s0(?), and falls through when a1(?) == s0(?).
  The `bne` branch at 0xd14 targets 0xc98, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0xd24 targets 0xc98, is taken when (a3(=[ret(gthread_find)+8]) & 0x4) != 0, and falls through when (a3(=[ret(gthread_find)+8]) & 0x4) == 0.
  The `bne` branch at 0xd30 targets 0xc98, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xd3c targets 0xc98, is taken when a5(=[[ret(gthread_find)+24]:8+12]) == 0, and falls through when a5(=[[ret(gthread_find)+24]:8+12]) != 0.
  The `bgezl` branch at 0xd4c targets 0xc9c, is taken when v0(=ret(valusema)) >= 0 (signed), and falls through when v0(=ret(valusema)) < 0 (signed); its branch-likely delay slot `ld s0,24(s0)` at 0xd50 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd54 targets 0xce4 and is always taken.
  The return at 0xcf4 has v0 = one of 0x0, 0x1.



- `gfx_fault` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xd5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0xd5c-0xe34 (216 bytes).
  It occupies 216 bytes.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x18, including `ld` at 0xd8c, `ld` at 0xdcc.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0xd94, `lw` at 0xdd8, `lw` at 0xe20.
  The `ld` at 0xdb0 loads 8 bytes from a1 (arg1 at entry) +0x20.
  The `ld` at 0xdb4 loads 8 bytes from [a1+32]:8 +0x70.
  The `jal` at 0xd6c calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xd78 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jalr` at 0xdb8 calls (unknown callee) with a0=a1 at entry (arg1), a1=[[a1+32]:8+112]:8, a2=?, a3=?.
  The `jal` at 0xdc4 calls RRM_ValidFault with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0xe14 calls psema with a0=a1+80, a1=0x19, a2=?, a3=?.
  The `jal` at 0xe24 calls vsema with a0=a1+80, a1=?, a2=[ret(gthread_find)+24]:8, a3=?.
  The `beq` branch at 0xd84 targets 0xdf0, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0xd90 targets 0xda4, is taken when at(=[ret(gthread_find)+24]:8) == 0, and falls through when at(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xd9c targets 0xe14, is taken when (a0(=[a1+4]) & 0x8) == 0, and falls through when (a0(=[a1+4]) & 0x8) != 0.
  The `beq` branch at 0xda8 targets 0xdc4, is taken when (a0(=[a1+4]) & 0x1) == 0, and falls through when (a0(=[a1+4]) & 0x1) != 0.
  The `beq` branch at 0xdd0 targets 0xde8, is taken when a2(=[ret(gthread_find)+24]:8) == 0, and falls through when a2(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xde0 targets 0xe24, is taken when (a3(=[a1+4]) & 0x8) == 0, and falls through when (a3(=[a1+4]) & 0x8) != 0.
  The `bltz` branch at 0xde8 targets 0xe08, is taken when v0(=ret(RRM_ValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_ValidFault)) >= 0 (signed).
  The `beq` branch at 0xe0c targets 0xdf4 and is always taken.
  The `beq` branch at 0xe1c targets 0xda4 and is always taken.
  The `beq` branch at 0xe2c targets 0xde8 and is always taken.
  The return at 0xe00 has v0 = one of 0x0, 0x1.



- `gfx_exit` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xe34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0xe34-0xfe0 (428 bytes).
  It occupies 428 bytes.
  The `ld` at 0xe5c loads 8 bytes from ret(gthread_find) +0x18.
  The `lw` at 0xe60 loads 4 bytes from ret(gthread_find) +0x8.
  5 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0xe64, `ld` at 0xe84, `ld` at 0xf44.
  The `sw` at 0xe70 stores 4 bytes to ret(gthread_find) +0x8.
  2 such `ld` accesses load 8 bytes from [ret(gthread_find)+16]:8 +0x18, including `ld` at 0xe88, `ld` at 0xebc.
  The `lw` at 0xe94 loads 4 bytes from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  13 such `ld` accesses load 8 bytes from ?, including `ld` at 0xec4, `ld` at 0xed8, `ld` at 0xee4.
  The `ld` at 0xf34 loads 8 bytes from ret(gthread_find) +0x0.
  The `sd` at 0xfb4 stores 8 bytes to ?.
  The `jal` at 0xe3c calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe48 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0xe7c calls GfxListReaderLock with a0=[ret(gthread_find)+16]:8, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0xea4 calls GfxListReaderUnlock with a0=[ret(gthread_find)+16]:8, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jalr` at 0xed0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf24 calls mutex_spinlock with a0=[ret(gthread_find)+16]:8+16, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0xf30 calls threadgroup_refcnt with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf4c calls mutex_spinunlock with a0=[ret(gthread_find)+16]:8+16, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xf54 calls GfxListReaderUnlock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf90 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xfa8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfbc calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfc4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0xe54 targets 0xf1c, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0xe6c targets 0xeb4, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xe74 targets 0xf64, is taken when a1(=[ret(gthread_find)+16]:8) == 0, and falls through when a1(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0xe8c targets 0xea4, is taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0xe9c targets 0xf24, is taken when (v0(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0, and falls through when (v0(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `beq` branch at 0xeac targets 0xf08 and is always taken.
  The `beq` branch at 0xeb4 targets 0xec0, is taken when a1(=[ret(gthread_find)+16]:8) == 0, and falls through when a1(=[ret(gthread_find)+16]:8) != 0.
  The `bnel` branch at 0xec0 targets 0xee8, is taken when s0(?) != 0, and falls through when s0(?) == 0; its branch-likely delay slot `ld v0,32(s0)` at 0xec4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xec8 targets 0xf08 and is always taken.
  The `beq` branch at 0xedc targets 0xf08, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xee8 targets 0xefc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xef4 targets 0xed0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0xf00 targets 0xee4, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xf1c targets 0xf08 and is always taken.
  The `beq` branch at 0xf3c targets 0xf78, is taken when v0(=ret(threadgroup_refcnt)) == v1(=0x1), and falls through when v0(=ret(threadgroup_refcnt)) != v1(=0x1).
  The `beq` branch at 0xf5c targets 0xf08 and is always taken.
  The `beq` branch at 0xf64 targets 0xf0c and is always taken.
  The `beq` branch at 0xf70 targets 0xf44, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xf7c targets 0xf6c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xf88 targets 0xf6c, is taken when a1(?) != s0(?), and falls through when a1(?) == s0(?).
  The `beq` branch at 0xfa0 targets 0xfb0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0xfd0 targets 0xf78, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xfd8 targets 0xf48 and is always taken.
  The return at 0xf14 has v0 = 0x0.



- `gfx_shdup` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x1234 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x1234-0x12b0 (124 bytes).
  It occupies 124 bytes.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x1250, `ld` at 0x129c.
  The `ld` at 0x125c loads 8 bytes from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x1268 loads 4 bytes from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `jal` at 0x1240 calls gthread_find with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1284 calls gthread_create with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a4=[[ret(gthread_find)+16]:8+24]:8.
  The `jal` at 0x1298 calls gthread_attach_list with a0=ret(gthread_create), a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0x12a0 calls setgfxsched_thread with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1248 targets 0x1274, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x1254 targets 0x1278, is taken when v0(=[ret(gthread_find)+16]:8) == 0, and falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x1260 targets 0x1278, is taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x1270 targets 0x1284, is taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0, and falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `beq` branch at 0x128c targets 0x1278, is taken when v0(=ret(gthread_create)) == 0, and falls through when v0(=ret(gthread_create)) != 0.
  The `beq` branch at 0x12a8 targets 0x1278 and is always taken.
  The return at 0x127c has v0 = one of [ret(gthread_find)+16]:8, ?, ret(gthread_create), ret(setgfxsched_thread).



- `gfx_conflict_scan` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x1e44 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x1e44-0x1f28 (228 bytes).
  It occupies 228 bytes.
  The `ld` at 0x1e7c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x1e88 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x1e8c loads 8 bytes from [a0+24]:8 +0x0.
  The `ld` at 0x1ea0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1ea4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1eb0 loads 8 bytes from [a0+16]:8 +0x18.
  The `lw` at 0x1ecc loads 4 bytes from ?.
  The `ld` at 0x1f08 loads 8 bytes from ?.
  The `sw` at 0x1f24 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x1ec4 calls psema with a0=?, a1=0x19, a2=?, a3=?, a5=one of 0x1, 0x2.
  The `jal` at 0x1ef0 calls vsema with a0=?, a1=?, a2=one of 0x1, 0x2, a3=?, a4=0x1.
  The `beq` branch at 0x1e5c targets 0x1e7c, is taken when a2 == a5(=0x1), and falls through when a2 != a5(=0x1).
  The `beq` branch at 0x1e80 targets 0x1e98, is taken when v0(=[a0+24]:8) == 0, and falls through when v0(=[a0+24]:8) != 0.
  The `beq` branch at 0x1e90 targets 0x1ea0, is taken when at(=[[a0+24]:8]:8) == v1(=[a1+8]:8), and falls through when at(=[[a0+24]:8]:8) != v1(=[a1+8]:8).
  The `beq` branch at 0x1e98 targets 0x1e68 and is always taken.
  The `beq` branch at 0x1ea8 targets 0x1eb4, is taken when v0(=[a0+16]:8) == 0, and falls through when v0(=[a0+16]:8) != 0.
  The `beq` branch at 0x1eb4 targets 0x1f14, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1f00 targets 0x1f1c, is taken when a5(=one of 0x1, 0x2) != a6(=[a1]), and falls through when a5(=one of 0x1, 0x2) == a6(=[a1]).
  The `bne` branch at 0x1f0c targets 0x1ec0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1f14 targets 0x1e68 and is always taken.
  The `beq` branch at 0x1f20 targets 0x1e68 and is always taken.
  The return at 0x1e74 has v0 = one of 0x0, 0x1.



- `gfx_shalloc` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3378 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x3378-0x3438 (192 bytes).
  It occupies 192 bytes.
  3 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x33c0, `ld` at 0x33d4, `ld` at 0x3408.
  The `ld` at 0x33d8 loads 8 bytes from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x33e8 loads 4 bytes from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `sd` at 0x33f8 stores 8 bytes to ?.
  The `ld` at 0x33fc loads 8 bytes from ?.
  The `sw` at 0x3434 stores 4 bytes to ret(gfx_group_create) +0xc.
  The `jal` at 0x3380 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3388 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3398 calls gfx_group_create with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x33a4 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x33b8 calls gthread_attach_group with a0=ret(gthread_find), a1=ret(gfx_group_create), a2=?, a3=?.
  The `jal` at 0x33cc calls GfxListWriterLock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x340c calls GfxListWriterUnlock with a0=[ret(gthread_find)+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=?, a5=0x1.
  The `jal` at 0x3414 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0x33ac targets 0x3414, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x33c4 targets 0x3414, is taken when a0(=[ret(gthread_find)+16]:8) == 0, and falls through when a0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x33e0 targets 0x340c, is taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x33f0 targets 0x3430, is taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0, and falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `bne` branch at 0x3400 targets 0x33f8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x3430 targets 0x33f8 and is always taken.
  The return at 0x3428 has v0 = ret(splx).



- `gfx_shfree` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3438 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x3438-0x3464 (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x3440 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3448 calls gfx_group_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x3450 calls gfx_group_destroy with a0=ret(gfx_group_find), a1=?, a2=?, a3=?.
  The return at 0x345c has v0 = ret(gfx_group_destroy).



- `gfx_frs_valid_pipenum` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3464 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x3464-0x3470 (12 bytes).
  It occupies 12 bytes.
  The return at 0x3468 has v0 = ?.



- `gfx_frs_install` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3470 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x3470-0x34c8 (88 bytes).
  It occupies 88 bytes.
  The `ld` at 0x347c loads 8 bytes from (sym(GfxBoards) + (a1 << 0x3)) +0x0.
  The `ld` at 0x3480 loads 8 bytes from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x38.
  The `ld` at 0x3484 loads 8 bytes from [[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8 +0xd0.
  The `ld` at 0x3498 loads 8 bytes from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x40.
  The `jalr` at 0x349c calls (unknown callee) with a0=[[(sym(GfxBoards) + (a1 << 0x3))]:8+64]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `jal` at 0x34b8 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `beq` branch at 0x3490 targets 0x34b0, is taken when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) == 0, and falls through when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) != 0.
  The `beq` branch at 0x34c0 targets 0x34a8 and is always taken.
  The return at 0x34a8 has v0 = one of ret(?), ret(cmn_err).



- `gfx_frs_uninstall` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x34c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x34c8-0x3518 (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x34d4 loads 8 bytes from (sym(GfxBoards) + (a0 << 0x3)) +0x0.
  The `ld` at 0x34d8 loads 8 bytes from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x38.
  The `ld` at 0x34dc loads 8 bytes from [[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8 +0xd8.
  The `ld` at 0x34f0 loads 8 bytes from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x40.
  The `jalr` at 0x34ec calls (unknown callee) with a0=[[(sym(GfxBoards) + (a0 << 0x3))]:8+64]:8, a1=a1 at entry (arg1), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `jal` at 0x3508 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `beq` branch at 0x34e4 targets 0x3500, is taken when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) == 0, and falls through when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) != 0.
  The `beq` branch at 0x3510 targets 0x34f8 and is always taken.
  The return at 0x34f8 has v0 = one of ret(?), ret(cmn_err).



- `irix5_to_gfx_getboardinfo_args` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3518 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x3518-0x3590 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x352c loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x353c loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x3540, `sd` at 0x358c.
  The `sw` at 0x3548 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x3554 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x3558 loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x355c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x3560 loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x3564 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x3568 loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x356c stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `jal` at 0x357c calls kern_malloc with a0=0xc, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3524 targets 0x3554, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x3534 targets 0x357c, is taken when at(=[a3]) < 0xc (unsigned), and falls through when at(=[a3]) >= 0xc (unsigned).
  The `beq` branch at 0x354c targets 0x3570 and is always taken.
  The `beq` branch at 0x3588 targets 0x3544 and is always taken.
  The return at 0x3574 has v0 = 0x0.



- `irix5_to_gfx_download_args` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3590 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x3590-0x3630 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x35a4 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x35b4 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x35b8, `sd` at 0x362c.
  The `sw` at 0x35c0 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x35cc loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x35d0 loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x35d4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x35d8 loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x35dc stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x35e0 loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x35e4 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `lw` at 0x35e8 loads 4 bytes from [a3+16]:8 +0xc.
  The `sw` at 0x35ec stores 4 bytes to a1 (arg1 at entry) +0x14.
  The `lw` at 0x35f0 loads 4 bytes from [a3+16]:8 +0x10.
  The `sw` at 0x35f4 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `lw` at 0x35f8 loads 4 bytes from [a3+16]:8 +0x14.
  The `sw` at 0x35fc stores 4 bytes to a1 (arg1 at entry) +0x1c.
  The `lw` at 0x3600 loads 4 bytes from [a3+16]:8 +0x18.
  The `sw` at 0x3604 stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `lw` at 0x3608 loads 4 bytes from [a3+16]:8 +0x1c.
  The `sw` at 0x360c stores 4 bytes to a1 (arg1 at entry) +0x24.
  The `jal` at 0x361c calls kern_malloc with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x359c targets 0x35cc, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x35ac targets 0x361c, is taken when at(=[a3]) < 0x20 (unsigned), and falls through when at(=[a3]) >= 0x20 (unsigned).
  The `beq` branch at 0x35c4 targets 0x3610 and is always taken.
  The `beq` branch at 0x3628 targets 0x35bc and is always taken.
  The return at 0x3614 has v0 = 0x0.



- `irix5_to_gfx_attach_board_args` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3630 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x3630-0x36a0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x3644 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x3654 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x3658, `sd` at 0x369c.
  The `sw` at 0x3660 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x366c loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x3670 loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x3674 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x3678 loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x367c stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `jal` at 0x368c calls kern_malloc with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x363c targets 0x366c, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x364c targets 0x368c, is taken when at(=[a3]) < 0x8 (unsigned), and falls through when at(=[a3]) >= 0x8 (unsigned).
  The `beq` branch at 0x3664 targets 0x3680 and is always taken.
  The `beq` branch at 0x3698 targets 0x365c and is always taken.
  The return at 0x3684 has v0 = 0x0.



- `gfx_flow_init` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x94 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x94-0x204 (368 bytes).
  It occupies 368 bytes.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0xdc, `lh` at 0xf0, `lh` at 0x114.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0xe8, `sd` at 0x108, `sd` at 0x128.
  The `jal` at 0x178 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?, a6=[sym(maxnodes)].
  The `jal` at 0x190 calls install_gfxintr with a0=?, a1=0x0, a2=sym(gfx_flow_delayed_hiwater_intr_prehandler), a3=0x0.
  The `jal` at 0x1cc calls kmem_zalloc with a0=?, a1=0x0, a2=?, a3=?, a6=[sym(maxnodes)].
  The `jal` at 0x1ec calls kmem_zalloc with a0=?, a1=0x0, a2=?, a3=?.
  The `blez` branch at 0xa0 targets 0x164, is taken when a6(=[sym(maxnodes)]) <= 0 (signed), and falls through when a6(=[sym(maxnodes)]) > 0 (signed).
  The `bne` branch at 0x14c targets 0x110, is taken when a0(?) < 0x2 (unsigned), and falls through when a0(?) >= 0x2 (unsigned).
  The `bnel` branch at 0x15c targets 0xd8, is taken when a5(?) < a6(=[sym(maxnodes)]) (signed), and falls through when a5(?) >= a6(=[sym(maxnodes)]) (signed); its branch-likely delay slot `daddu a6,a5,a5` at 0x160 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0x16c targets 0x1b4, is taken when v1(=[sym(maxcpus)]) <= 0 (signed), and falls through when v1(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x180 targets 0x198, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x1ac targets 0x178, is taken when s0(?) < a0(=[sym(maxcpus)]) (signed), and falls through when s0(?) >= a0(=[sym(maxcpus)]) (signed).
  The return at 0x1fc has v0 = ret(kmem_zalloc).



- `gfx_flow_alloc` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x204 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x204-0x454 (592 bytes).
  It occupies 592 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x25c, `ld` at 0x410.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x28c, `sd` at 0x3e8.
  The `lh` at 0x290 loads 2 bytes from ret(kmem_alloc) +0x50.
  The `sw` at 0x298 stores 4 bytes to ret(kmem_alloc) +0x54.
  The `lh` at 0x2a0 loads 2 bytes from (sym(compact_to_nasid_node) + ([ret(kmem_alloc)+80]:2 + [ret(kmem_alloc)+80]:2)) +0x0.
  The `sh` at 0x2a4 stores 2 bytes to ret(kmem_alloc) +0x60.
  The `sd` at 0x2b0 stores 8 bytes to ret(kmem_alloc) +0x68.
  The `sd` at 0x2bc stores 8 bytes to ret(kmem_alloc) +0x58.
  The `sw` at 0x2ec stores 4 bytes to ret(kmem_alloc) +0x0.
  The `sw` at 0x304 stores 4 bytes to ret(kmem_alloc) +0x4.
  The `sd` at 0x31c stores 8 bytes to ret(kmem_alloc) +0x8.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x40, including `sw` at 0x328, `sw` at 0x3a0.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x10, including `sw` at 0x334, `sw` at 0x340.
  The `sw` at 0x350 stores 4 bytes to ret(kmem_alloc) +0x14.
  The `sw` at 0x354 stores 4 bytes to ret(kmem_alloc) +0x3c.
  The `sw` at 0x35c stores 4 bytes to ret(kmem_alloc) +0x18.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x1c, including `sw` at 0x364, `sw` at 0x450.
  The `sw` at 0x36c stores 4 bytes to ret(kmem_alloc) +0x30.
  The `sw` at 0x370 stores 4 bytes to ret(kmem_alloc) +0x34.
  The `sw` at 0x374 stores 4 bytes to ret(kmem_alloc) +0x38.
  The `sd` at 0x380 stores 8 bytes to ret(kmem_alloc) +0x28.
  The `sd` at 0x390 stores 8 bytes to ret(kmem_alloc) +0x20.
  The `sd` at 0x3b0 stores 8 bytes to ret(kmem_alloc) +0x48.
  The `lwu` at 0x3c4 loads 4 bytes from ret(kmem_alloc) +0x3c.
  The `sh` at 0x3f8 stores 2 bytes to ret(kmem_alloc) +0x50.
  The `jal` at 0x244 calls kmem_alloc with a0=0x70, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2d8 calls xwidget_info_get with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2e8 calls xwidget_info_id_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x39c calls kvalloc with a0=0x1, a1=0x0, a2=0x0, a3=0x44, a4=0x38, a5=0x100.
  The `jal` at 0x3e4 calls xwidget_info_master_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?, a4=0x4000000400000007.
  The `jal` at 0x3ec calls master_node_get with a0=ret(xwidget_info_master_get), a1=?, a2=?, a3=?.
  The `jal` at 0x42c calls gfx_flow_init with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x234 targets 0x42c, is taken when at(=[sym(gfx_flow_igfx_owners)]:8) == 0, and falls through when at(=[sym(gfx_flow_igfx_owners)]:8) != 0.
  The `bne` branch at 0x24c targets 0x2d8, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x254 targets 0x2c0 and is always taken.
  The `beq` branch at 0x260 targets 0x28c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x278 targets 0x25c, is taken when a0(?) < 0x2 (unsigned), and falls through when a0(?) >= 0x2 (unsigned).
  The `bne` branch at 0x338 targets 0x348, is taken when t2(?) < 0x101 (unsigned), and falls through when t2(?) >= 0x101 (unsigned).
  The `beq` branch at 0x360 targets 0x44c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x41c targets 0x43c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x424 targets 0x26c and is always taken.
  The `beq` branch at 0x434 targets 0x240 and is always taken.
  The `beq` branch at 0x444 targets 0x28c and is always taken.
  The `beq` branch at 0x44c targets 0x368 and is always taken.
  The return at 0x2d0 has v0 = one of 0x0, ret(kmem_alloc).



- `gfx_flow_reset` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x454 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x454-0x460 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0x454 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0x45c stores 4 bytes to a0 (arg0 at entry) +0x14.
  The return at 0x458 has v0 = ?.



- `gfx_flow_dealloc` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x460 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x460-0x4a8 (72 bytes).
  It occupies 72 bytes.
  The `lh` at 0x460 loads 2 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x464 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `sd` at 0x498 stores 8 bytes to ?.
  The `jal` at 0x494 calls kmem_free with a0=a0 at entry (arg0), a1=0x70, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4a0 has v0 = ret(kmem_free).



- `gfx_flow_wg_info_get` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x4a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x4a8-0x4cc (36 bytes).
  It occupies 36 bytes.
  The `ld` at 0x4a8 loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `sd` at 0x4ac stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `ld` at 0x4b0 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `sd` at 0x4b4 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `ld` at 0x4b8 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `sd` at 0x4bc stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `ld` at 0x4c0 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sd` at 0x4c8 stores 8 bytes to a1 (arg1 at entry) +0x18.
  The return at 0x4c4 has v0 = [a0+64]:8.



- `gfx_flow_credit_tnum_get` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x4cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x4cc-0x4d4 (8 bytes).
  It occupies 8 bytes.
  The return at 0x4cc has v0 = 0x11.



- `gfx_flow_credit_total_get` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x4d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x4d4-0x4e0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0x4d4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The return at 0x4d8 has v0 = ([a0+16] << 0x3).



- `gfx_flow_credit_bias_get` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x4e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x4e0-0x4ec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0x4e0 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The return at 0x4e4 has v0 = ([a0+24] << 0x3).



- `gfx_flow_credit_count_get` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x4ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x4ec-0x538 (76 bytes).
  It occupies 76 bytes.
  The `lh` at 0x4ec loads 2 bytes from abs 0xffffffffffffc428.
  The `ld` at 0x4fc loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x500 loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `ld` at 0x528 loads 8 bytes from table(0x9200000001000000) +0x0.
  The return at 0x530 has v0 = ((entry(0x9200000001000000) << 0x3) << 0x0).


- `gfx_flow_detach_requires_credit_flow_disable` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x538 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x538-0x540 (8 bytes).
  It occupies 8 bytes.
  The return at 0x538 has v0 = 0x1.


- `gfx_flow_attach_me_finish` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x664 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x664-0x6b4 (80 bytes).
  It occupies 80 bytes.
  The `lh` at 0x664 loads 2 bytes from abs 0xffffffffffffc428.
  The `ld` at 0x674 loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x678 loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `lwu` at 0x69c loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sd` at 0x6a4 stores 8 bytes to ?.
  The return at 0x6ac has v0 = ?.


- `gfx_flow_am_i_attached` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x790 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x790-0x7d4 (68 bytes).
  It occupies 68 bytes.
  The `lh` at 0x798 loads 2 bytes from a0 (arg0 at entry) +0x60.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc428, including `lh` at 0x79c, `lh` at 0x7b8.
  The `ld` at 0x7c4 loads 8 bytes from ([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3bd8]:2 << 0x3)) +0x0.
  The `beq` branch at 0x790 targets 0x7ac, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x7b0 targets 0x7cc, is taken when a0(=[sym(gfx_flow_cpu_attachments)]:8) == 0, and falls through when a0(=[sym(gfx_flow_cpu_attachments)]:8) != 0.
  The return at 0x7a4 has v0 = ?.
  The return at 0x7cc has v0 = one of 0x1, ?.


- `gfx_exit` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x0-0x8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x0 has v0 = 0x0.


- `gfx_disp` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x8-0x10 (8 bytes).
  It occupies 8 bytes.
  The return at 0x8 has v0 = 0x1.


- `gfx_earlyinit` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x10-0x18 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10 has v0 = ?.


- `gfx_fault` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x30-0x38 (8 bytes).
  It occupies 8 bytes.
  The return at 0x30 has v0 = 0x1.


- `gfx_shcheck` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x48-0x50 (8 bytes).
  It occupies 8 bytes.
  The return at 0x48 has v0 = ?.


- `gfx_shdup` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x50-0x58 (8 bytes).
  It occupies 8 bytes.
  The return at 0x50 has v0 = ?.


- `gfx_shalloc` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x58-0x60 (8 bytes).
  It occupies 8 bytes.
  The return at 0x58 has v0 = ?.


- `gfx_shfree` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x60-0x68 (8 bytes).
  It occupies 8 bytes.
  The return at 0x60 has v0 = ?.


- `gfx_frs_valid_pipenum` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x78 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x78-0x80 (8 bytes).
  It occupies 8 bytes.
  The return at 0x78 has v0 = 0x0.


- `gfx_frs_install` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x80-0x88 (8 bytes).
  It occupies 8 bytes.
  The return at 0x80 has v0 = ?.


- `gfx_frs_uninstall` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)`.
  Range: 0x88-0x90 (8 bytes).
  It occupies 8 bytes.
  The return at 0x88 has v0 = ?.


- `kona_idma_timeout` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x440 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
  Range: 0x440-0x4cc (140 bytes).
  It occupies 140 bytes.
  The `ld` at 0x460 loads 8 bytes from a0 (arg0 at entry) +0x1448.
  The `lw` at 0x48c loads 4 bytes from a0 (arg0 at entry) +0x1458.
  The `ld` at 0x494 loads 8 bytes from a0 (arg0 at entry) +0x1450.
  The `lw` at 0x4a0 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `sd` at 0x4c0 stores 8 bytes to a0 (arg0 at entry) +0x1448.
  The `jal` at 0x458 calls mutex_spinlock with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x474 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x4a4 calls cmn_err_tag with a0=0x84a, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=[a0+5200]:8, a6=[a0+5208].
  The `jal` at 0x4b0 calls kona_die with a0=a0 at entry (arg0), a1=0x4, a2=?, a3=?.
  The `jal` at 0x4bc calls vsema with a0=a0+5176, a1=?, a2=?, a3=?.
  The `bne` branch at 0x464 targets 0x48c, is taken when at(=[a0+5192]:8) != 0, and falls through when at(=[a0+5192]:8) == 0.
  The `beq` branch at 0x4c4 targets 0x46c and is always taken.
  The return at 0x484 has v0 = ret(mutex_spinunlock).


- `kona_free_up_space` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1520 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
  Range: 0x1520-0x1554 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x1534 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `jal` at 0x1540 calls cmn_err_tag with a0=0x84c, a1=0x0, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184].
  The return at 0x154c has v0 = ret(cmn_err_tag).


- `kona_diag_map_cleanup` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1554 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
  Range: 0x1554-0x15b8 (100 bytes).
  It occupies 100 bytes.
  The `ld` at 0x1568 loads 8 bytes from a0 (arg0 at entry) +0x1460.
  The `ld` at 0x1574 loads 8 bytes from a0 (arg0 at entry) +0x1468.
  The `lw` at 0x1584 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `sd` at 0x1588 stores 8 bytes to a0 (arg0 at entry) +0x1468.
  The `lw` at 0x158c loads 4 bytes from a0 (arg0 at entry) +0x1478.
  The `sw` at 0x15a0 stores 4 bytes to a0 (arg0 at entry) +0x1478.
  The `sd` at 0x15a4 stores 8 bytes to a0 (arg0 at entry) +0x1460.
  The `jal` at 0x1560 calls curproc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1580 calls free_gfx_io_space with a0=[a0+2184], a1=[a0+5224]:8, a2=?, a3=?.
  The `jal` at 0x1598 calls unlock_dmavec with a0=a0+5232, a1=0x1, a2=?, a3=?.
  The `bne` branch at 0x156c targets 0x15ac, is taken when at(=[a0+5216]:8) != v0(=ret(curproc)), and falls through when at(=[a0+5216]:8) == v0(=ret(curproc)).
  The `beq` branch at 0x1578 targets 0x158c, is taken when a1(=[a0+5224]:8) == 0, and falls through when a1(=[a0+5224]:8) != 0.
  The `beq` branch at 0x1590 targets 0x15a4, is taken when v0(=[a0+5240]) == 0, and falls through when v0(=[a0+5240]) != 0.
  The return at 0x15b0 has v0 = one of ret(curproc), ?.


- `abi32_to_kona_diag_map` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1ae0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
  Range: 0x1ae0-0x1b58 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x1af4 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x1b04 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x1b08, `sd` at 0x1b54.
  The `sw` at 0x1b10 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x1b1c loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lwu` at 0x1b20 loads 4 bytes from [a3+16]:8 +0x0.
  The `sd` at 0x1b24 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x1b28 loads 4 bytes from [a3+16]:8 +0x4.
  The `sw` at 0x1b2c stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x1b30 loads 4 bytes from [a3+16]:8 +0xc.
  The `sw` at 0x1b34 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `jal` at 0x1b44 calls kern_malloc with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1aec targets 0x1b1c, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x1afc targets 0x1b44, is taken when at(=[a3]) < 0x14 (unsigned), and falls through when at(=[a3]) >= 0x14 (unsigned).
  The `beq` branch at 0x1b14 targets 0x1b38 and is always taken.
  The `beq` branch at 0x1b50 targets 0x1b0c and is always taken.
  The return at 0x1b3c has v0 = 0x0.


- `kona_diag_map_to_abi32` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1b58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
  Range: 0x1b58-0x1be0 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x1b58 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `ld` at 0x1b7c loads 8 bytes from a2 (arg2 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a2 (arg2 at entry) +0x10, including `sd` at 0x1b80, `sd` at 0x1bdc.
  The `sw` at 0x1b88 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `ld` at 0x1b90 loads 8 bytes from a0 (arg0 at entry) +0x0.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1b94, `sw` at 0x1b9c, `sw` at 0x1ba4.
  The `lw` at 0x1b98 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1ba0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1ba8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x1bb0 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `jal` at 0x1bc8 calls kern_malloc with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1b74 targets 0x1bc8, is taken when at(=[a2]) < 0x14 (unsigned), and falls through when at(=[a2]) >= 0x14 (unsigned).
  The `beq` branch at 0x1bd8 targets 0x1b84 and is always taken.
  The return at 0x1bc0 has v0 = 0x0.


- `kona_init` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0x0-0xc8 (200 bytes).
  It occupies 200 bytes.
  The `sb` at 0x5c stores 1 byte to ret(kona_alloc_bdata) +0x8a0.
  The `sh` at 0x64 stores 2 bytes to ret(kona_alloc_bdata) +0x8a2.
  The `jal` at 0x8 calls kona_debug_init with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x14 calls psema with a0=sym(GfxBoardInitSema), a1=0x19, a2=?, a3=?.
  The `jal` at 0x34 calls find_konapipe with a0=?, a1=sp-32, a2=sp-30, a3=?.
  The `jal` at 0x4c calls kona_alloc_bdata with a0=[sym(GfxBoardLimit)], a1=?, a2=?, a3=?.
  The `jal` at 0x7c calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x98 calls xwidget_driver_register with a0=0xc102, a1=0x2aa, a2=sym(.rodata), a3=0x0.
  The `jal` at 0xb8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `blez` branch at 0x20 targets 0x7c, is taken when at(=[sym(GfxBoardLimit)]) <= 0 (signed), and falls through when at(=[sym(GfxBoardLimit)]) > 0 (signed).
  The `beq` branch at 0x3c targets 0x6c, is taken when v0(=ret(find_konapipe)) == 0, and falls through when v0(=ret(find_konapipe)) != 0.
  The `bltz` branch at 0x44 targets 0x7c, is taken when v0(=ret(find_konapipe)) < 0 (signed), and falls through when v0(=ret(find_konapipe)) >= 0 (signed).
  The `beq` branch at 0x54 targets 0xac, is taken when v0(=ret(kona_alloc_bdata)) == 0, and falls through when v0(=ret(kona_alloc_bdata)) != 0.
  The `bne` branch at 0x74 targets 0x30, is taken when s0(?) < a0(=[sym(GfxBoardLimit)]) (signed), and falls through when s0(?) >= a0(=[sym(GfxBoardLimit)]) (signed).
  The `beq` branch at 0xc0 targets 0x7c and is always taken.
  The return at 0xa4 has v0 = ret(xwidget_driver_register).


- `kona_report_errs` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0xd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0xd0-0x5ec (1308 bytes).
  It occupies 1308 bytes.
  The `ld` at 0xdc loads 8 bytes from a0 (arg0 at entry) +0x948.
  31 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x888, including `lw` at 0x228, `lw` at 0x244, `lw` at 0x264.
  The `jal` at 0xe8 calls gfx_pio_read_32 with a0=[a0+2376]:8+108, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x22c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x248 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x268 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a4=(ret(gfx_pio_read_32) << 0x1c).
  The `jal` at 0x284 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a4=(ret(gfx_pio_read_32) << 0x1c).
  The `jal` at 0x2a0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a5=(ret(gfx_pio_read_32) << 0x1b).
  The `jal` at 0x2bc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a6=(ret(gfx_pio_read_32) << 0x1a).
  The `jal` at 0x2dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a7=(ret(gfx_pio_read_32) << 0x19).
  The `jal` at 0x2fc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x31c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x33c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x35c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x37c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x39c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x3bc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x3dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x3fc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x41c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x43c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x45c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x47c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x49c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a4=(ret(gfx_pio_read_32) << 0xa).
  The `jal` at 0x4bc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a4=(ret(gfx_pio_read_32) << 0xa), a5=(ret(gfx_pio_read_32) << 0x9).
  The `jal` at 0x4dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a5=(ret(gfx_pio_read_32) << 0x9).
  The `jal` at 0x4fc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a6=(ret(gfx_pio_read_32) << 0x8), a7=(ret(gfx_pio_read_32) << 0x9).
  The `jal` at 0x51c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a7=(ret(gfx_pio_read_32) << 0x9).
  The `jal` at 0x53c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x55c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x57c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x59c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x5bc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x5dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `bne` branch at 0xf8 targets 0x21c, is taken when (v0(=ret(gfx_pio_read_32)) & 0x1) != 0, and falls through when (v0(=ret(gfx_pio_read_32)) & 0x1) == 0.
  The `bltz` branch at 0x104 targets 0x23c, is taken when a2(=(ret(gfx_pio_read_32) << 0x1e)) < 0 (signed), and falls through when a2(=(ret(gfx_pio_read_32) << 0x1e)) >= 0 (signed).
  The `bltz` branch at 0x110 targets 0x258, is taken when a3(=(ret(gfx_pio_read_32) << 0x1d)) < 0 (signed), and falls through when a3(=(ret(gfx_pio_read_32) << 0x1d)) >= 0 (signed).
  The `bltz` branch at 0x118 targets 0x278, is taken when a4(=(ret(gfx_pio_read_32) << 0x1c)) < 0 (signed), and falls through when a4(=(ret(gfx_pio_read_32) << 0x1c)) >= 0 (signed).
  The `bltz` branch at 0x124 targets 0x294, is taken when a5(=(ret(gfx_pio_read_32) << 0x1b)) < 0 (signed), and falls through when a5(=(ret(gfx_pio_read_32) << 0x1b)) >= 0 (signed).
  The `bltz` branch at 0x130 targets 0x2b0, is taken when a6(=(ret(gfx_pio_read_32) << 0x1a)) < 0 (signed), and falls through when a6(=(ret(gfx_pio_read_32) << 0x1a)) >= 0 (signed).
  The `bltz` branch at 0x13c targets 0x2cc, is taken when a7(=(ret(gfx_pio_read_32) << 0x19)) < 0 (signed), and falls through when a7(=(ret(gfx_pio_read_32) << 0x19)) >= 0 (signed).
  The `bltz` branch at 0x144 targets 0x2ec, is taken when t0(=(ret(gfx_pio_read_32) << 0x18)) < 0 (signed), and falls through when t0(=(ret(gfx_pio_read_32) << 0x18)) >= 0 (signed).
  The `bltz` branch at 0x14c targets 0x30c, is taken when t1(=(ret(gfx_pio_read_32) << 0x17)) < 0 (signed), and falls through when t1(=(ret(gfx_pio_read_32) << 0x17)) >= 0 (signed).
  The `bltz` branch at 0x154 targets 0x32c, is taken when t2(=(ret(gfx_pio_read_32) << 0x16)) < 0 (signed), and falls through when t2(=(ret(gfx_pio_read_32) << 0x16)) >= 0 (signed).
  The `bltz` branch at 0x15c targets 0x34c, is taken when t3(=(ret(gfx_pio_read_32) << 0x15)) < 0 (signed), and falls through when t3(=(ret(gfx_pio_read_32) << 0x15)) >= 0 (signed).
  The `bltz` branch at 0x164 targets 0x36c, is taken when t8(=(ret(gfx_pio_read_32) << 0x14)) < 0 (signed), and falls through when t8(=(ret(gfx_pio_read_32) << 0x14)) >= 0 (signed).
  The `bltz` branch at 0x16c targets 0x38c, is taken when t9(=(ret(gfx_pio_read_32) << 0x13)) < 0 (signed), and falls through when t9(=(ret(gfx_pio_read_32) << 0x13)) >= 0 (signed).
  The `bltz` branch at 0x174 targets 0x3ac, is taken when ra(=(ret(gfx_pio_read_32) << 0x12)) < 0 (signed), and falls through when ra(=(ret(gfx_pio_read_32) << 0x12)) >= 0 (signed).
  The `bltz` branch at 0x17c targets 0x3cc, is taken when at(=(ret(gfx_pio_read_32) << 0x11)) < 0 (signed), and falls through when at(=(ret(gfx_pio_read_32) << 0x11)) >= 0 (signed).
  The `bltz` branch at 0x184 targets 0x3ec, is taken when v0(=(ret(gfx_pio_read_32) << 0x10)) < 0 (signed), and falls through when v0(=(ret(gfx_pio_read_32) << 0x10)) >= 0 (signed).
  The `bltz` branch at 0x18c targets 0x40c, is taken when v1(=(ret(gfx_pio_read_32) << 0xf)) < 0 (signed), and falls through when v1(=(ret(gfx_pio_read_32) << 0xf)) >= 0 (signed).
  The `bltz` branch at 0x194 targets 0x42c, is taken when a0(=(ret(gfx_pio_read_32) << 0xe)) < 0 (signed), and falls through when a0(=(ret(gfx_pio_read_32) << 0xe)) >= 0 (signed).
  The `bltz` branch at 0x19c targets 0x44c, is taken when a1(=(ret(gfx_pio_read_32) << 0xd)) < 0 (signed), and falls through when a1(=(ret(gfx_pio_read_32) << 0xd)) >= 0 (signed).
  The `bltz` branch at 0x1a4 targets 0x46c, is taken when a2(=(ret(gfx_pio_read_32) << 0xc)) < 0 (signed), and falls through when a2(=(ret(gfx_pio_read_32) << 0xc)) >= 0 (signed).
  The `bltz` branch at 0x1ac targets 0x48c, is taken when a3(=(ret(gfx_pio_read_32) << 0xb)) < 0 (signed), and falls through when a3(=(ret(gfx_pio_read_32) << 0xb)) >= 0 (signed).
  The `bltz` branch at 0x1b4 targets 0x4ac, is taken when a4(=(ret(gfx_pio_read_32) << 0xa)) < 0 (signed), and falls through when a4(=(ret(gfx_pio_read_32) << 0xa)) >= 0 (signed).
  The `bltz` branch at 0x1bc targets 0x4cc, is taken when a5(=(ret(gfx_pio_read_32) << 0x9)) < 0 (signed), and falls through when a5(=(ret(gfx_pio_read_32) << 0x9)) >= 0 (signed).
  The `bltz` branch at 0x1c8 targets 0x4ec, is taken when a6(=(ret(gfx_pio_read_32) << 0x8)) < 0 (signed), and falls through when a6(=(ret(gfx_pio_read_32) << 0x8)) >= 0 (signed).
  The `bltz` branch at 0x1d0 targets 0x50c, is taken when a7(=(ret(gfx_pio_read_32) << 0x9)) < 0 (signed), and falls through when a7(=(ret(gfx_pio_read_32) << 0x9)) >= 0 (signed).
  The `bltz` branch at 0x1d8 targets 0x52c, is taken when t0(=(ret(gfx_pio_read_32) << 0x6)) < 0 (signed), and falls through when t0(=(ret(gfx_pio_read_32) << 0x6)) >= 0 (signed).
  The `bltz` branch at 0x1e0 targets 0x54c, is taken when t1(=(ret(gfx_pio_read_32) << 0x5)) < 0 (signed), and falls through when t1(=(ret(gfx_pio_read_32) << 0x5)) >= 0 (signed).
  The `bltz` branch at 0x1e8 targets 0x56c, is taken when t2(=(ret(gfx_pio_read_32) << 0x4)) < 0 (signed), and falls through when t2(=(ret(gfx_pio_read_32) << 0x4)) >= 0 (signed).
  The `bltz` branch at 0x1f0 targets 0x58c, is taken when t3(=(ret(gfx_pio_read_32) << 0x3)) < 0 (signed), and falls through when t3(=(ret(gfx_pio_read_32) << 0x3)) >= 0 (signed).
  The `bltz` branch at 0x1f8 targets 0x5ac, is taken when t8(=(ret(gfx_pio_read_32) << 0x2)) < 0 (signed), and falls through when t8(=(ret(gfx_pio_read_32) << 0x2)) >= 0 (signed).
  The `bltz` branch at 0x200 targets 0x5cc, is taken when t9(=(ret(gfx_pio_read_32) << 0x1)) < 0 (signed), and falls through when t9(=(ret(gfx_pio_read_32) << 0x1)) >= 0 (signed).
  The `beq` branch at 0x234 targets 0x104 and is always taken.
  The `beq` branch at 0x250 targets 0x110 and is always taken.
  The `beq` branch at 0x270 targets 0x118 and is always taken.
  The `beq` branch at 0x28c targets 0x124 and is always taken.
  The `beq` branch at 0x2a8 targets 0x130 and is always taken.
  The `beq` branch at 0x2c4 targets 0x13c and is always taken.
  The `beq` branch at 0x2e4 targets 0x144 and is always taken.
  The `beq` branch at 0x304 targets 0x14c and is always taken.
  The `beq` branch at 0x324 targets 0x154 and is always taken.
  The `beq` branch at 0x344 targets 0x15c and is always taken.
  The `beq` branch at 0x364 targets 0x164 and is always taken.
  The `beq` branch at 0x384 targets 0x16c and is always taken.
  The `beq` branch at 0x3a4 targets 0x174 and is always taken.
  The `beq` branch at 0x3c4 targets 0x17c and is always taken.
  The `beq` branch at 0x3e4 targets 0x184 and is always taken.
  The `beq` branch at 0x404 targets 0x18c and is always taken.
  The `beq` branch at 0x424 targets 0x194 and is always taken.
  The `beq` branch at 0x444 targets 0x19c and is always taken.
  The `beq` branch at 0x464 targets 0x1a4 and is always taken.
  The `beq` branch at 0x484 targets 0x1ac and is always taken.
  The `beq` branch at 0x4a4 targets 0x1b4 and is always taken.
  The `beq` branch at 0x4c4 targets 0x1bc and is always taken.
  The `beq` branch at 0x4e4 targets 0x1c8 and is always taken.
  The `beq` branch at 0x504 targets 0x1d0 and is always taken.
  The `beq` branch at 0x524 targets 0x1d8 and is always taken.
  The `beq` branch at 0x544 targets 0x1e0 and is always taken.
  The `beq` branch at 0x564 targets 0x1e8 and is always taken.
  The `beq` branch at 0x584 targets 0x1f0 and is always taken.
  The `beq` branch at 0x5a4 targets 0x1f8 and is always taken.
  The `beq` branch at 0x5c4 targets 0x200 and is always taken.
  The `beq` branch at 0x5e4 targets 0x208 and is always taken.
  The return at 0x214 has v0 = one of ?, ret(cmn_err).


- `kona_extract_nic_info` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0x69c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0x69c-0xed4 (2104 bytes).
  It occupies 2104 bytes.
  The `lbu` at 0x6d0 loads 1 byte from a1 (arg1 at entry) +0x0.
  26 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x72c, `lbu` at 0x784, `lbu` at 0x7a8.
  30 such `sb` accesses store 1 byte to ?, including `sb` at 0x8cc, `sb` at 0x8e0, `sb` at 0x8f8.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd88, `sh` at 0xd8c.
  The `jal` at 0x704 calls strncmp with a0=?, a1=sym(.rodata), a2=0x2, a3=?.
  The `jal` at 0x774 calls strncmp with a0=?, a1=sym(.rodata), a2=0x6, a3=?.
  The `jal` at 0x7e8 calls strncmp with a0=?, a1=sym(.rodata), a2=0x5, a3=?.
  The `jal` at 0x840 calls strncmp with a0=?, a1=sym(.rodata), a2=0x6, a3=?.
  The `jal` at 0x860 calls strncmp with a0=?, a1=sym(.rodata), a2=0x5, a3=?.
  The `jal` at 0xc34 calls hexstrtol with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc8c calls hexstrtol with a0=sp-152, a1=?, a2=?, a3=?.
  The `jal` at 0xcb8 calls hexstrtol with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd14 calls hexstrtol with a0=sp-149, a1=?, a2=?, a3=?, a4=0x1.
  The `jal` at 0xda0 calls strncmp with a0=?, a1=sym(.rodata), a2=0x5, a3=?.
  The `jal` at 0xdc0 calls strncmp with a0=?, a1=sym(.rodata), a2=0x7, a3=?.
  The `jal` at 0xe10 calls strncmp with a0=?, a1=sym(.rodata), a2=0x9, a3=?.
  The `jal` at 0xe34 calls strncmp with a0=?, a1=sym(.rodata), a2=0x6, a3=?.
  The `jal` at 0xe58 calls strncmp with a0=?, a1=sym(.rodata), a2=0xb, a3=?.
  The `jal` at 0xe8c calls strncmp with a0=?, a1=sym(.rodata), a2=0x8, a3=?.
  The `jal` at 0xeb0 calls strncmp with a0=?, a1=sym(.rodata), a2=0x6, a3=?.
  The `beq` branch at 0x6c8 targets 0xdd8, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x6d4 targets 0xdd8, is taken when a3(=[a1]:1) == 0, and falls through when a3(=[a1]:1) != 0.
  The `beq` branch at 0x6f4 targets 0x738 and is always taken.
  The `beq` branch at 0x70c targets 0xe74, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x71c targets 0x874, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x724 targets 0xdd8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x730 targets 0xdd8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x738 targets 0x724, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x760 targets 0x790 and is always taken.
  The `beq` branch at 0x77c targets 0x850, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x788 targets 0x850, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x790 targets 0x7c4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x798 targets 0x7e0, is taken when s2(=0x3a) == a3(?), and falls through when s2(=0x3a) != a3(?).
  The `beq` branch at 0x7a0 targets 0x7c4, is taken when s1(=0x3b) == a3(?), and falls through when s1(=0x3b) != a3(?).
  The `beq` branch at 0x7ac targets 0x7c4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x7b4 targets 0x7e0, is taken when s2(=0x3a) == a3(?), and falls through when s2(=0x3a) != a3(?).
  The `bne` branch at 0x7bc targets 0x7a8, is taken when s1(=0x3b) != a3(?), and falls through when s1(=0x3b) == a3(?).
  The `beq` branch at 0x7c4 targets 0x7e0, is taken when s2(=0x3a) == a3(?), and falls through when s2(=0x3a) != a3(?).
  The `bne` branch at 0x7cc targets 0x76c, is taken when s1(=0x3b) != a3(?), and falls through when s1(=0x3b) == a3(?).
  The `beq` branch at 0x7d4 targets 0x768 and is always taken.
  The `bne` branch at 0x7f0 targets 0xd98, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x804 targets 0x838, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x80c targets 0x828, is taken when s1(=0x3b) == a3(?), and falls through when s1(=0x3b) != a3(?).
  The `beq` branch at 0x818 targets 0x834, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x820 targets 0x814, is taken when s1(=0x3b) != a3(?), and falls through when s1(=0x3b) == a3(?).
  The `beq` branch at 0x828 targets 0x838, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bnel` branch at 0x848 targets 0x788, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0; its branch-likely delay slot `lbu a3,0(s0)` at 0x84c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x850 targets 0x724, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `bne` branch at 0x868 targets 0x6fc, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x878 targets 0xe7c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x880 targets 0xec8, is taken when s1(=0x3b) == a3(?), and falls through when s1(=0x3b) != a3(?).
  The `blez` branch at 0x894 targets 0x900, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x8a4 targets 0x8b4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x8ac targets 0x890, is taken when s1(=0x3b) != a4(?), and falls through when s1(=0x3b) == a4(?).
  The `blez` branch at 0x8b4 targets 0x900, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x8d0 targets 0x8fc, is taken when a3(?) >= a1(?) (signed), and falls through when a3(?) < a1(?) (signed).
  The `beq` branch at 0x8e4 targets 0x8fc, is taken when a3(?) >= a1(?) (signed), and falls through when a3(?) < a1(?) (signed).
  The `bne` branch at 0x8f4 targets 0x8c0, is taken when a3(?) < a1(?) (signed), and falls through when a3(?) >= a1(?) (signed).
  The `beq` branch at 0x914 targets 0x964, is taken when a1(?) >= 0xe (signed), and falls through when a1(?) < 0xe (signed).
  The `bne` branch at 0x93c targets 0x964, is taken when a7(?) < a6(?) (signed), and falls through when a7(?) >= a6(?) (signed).
  The `beq` branch at 0x95c targets 0x91c, is taken when a7(?) >= a6(?) (signed), and falls through when a7(?) < a6(?) (signed).
  The `beq` branch at 0x964 targets 0xa4c, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0x970 targets 0x9b0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x978 targets 0x9b0, is taken when s1(=0x3b) == a6(?), and falls through when s1(=0x3b) != a6(?).
  The `blez` branch at 0x988 targets 0x9f4, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x998 targets 0x9a8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x9a0 targets 0x984, is taken when s1(=0x3b) != a6(?), and falls through when s1(=0x3b) == a6(?).
  The `blez` branch at 0x9a8 targets 0x9f4, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x9c4 targets 0x9f0, is taken when a1(?) >= a5(?) (signed), and falls through when a1(?) < a5(?) (signed).
  The `beq` branch at 0x9d8 targets 0x9f0, is taken when a1(?) >= a5(?) (signed), and falls through when a1(?) < a5(?) (signed).
  The `bne` branch at 0x9e8 targets 0x9b4, is taken when a1(?) < a5(?) (signed), and falls through when a1(?) >= a5(?) (signed).
  The `beq` branch at 0x9fc targets 0xa4c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0xa24 targets 0xa4c, is taken when a6(?) < a1(?) (signed), and falls through when a6(?) >= a1(?) (signed).
  The `beq` branch at 0xa44 targets 0xa04, is taken when a6(?) >= a1(?) (signed), and falls through when a6(?) < a1(?) (signed).
  The `beq` branch at 0xa4c targets 0xb34, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0xa58 targets 0xa98, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xa60 targets 0xa98, is taken when s1(=0x3b) == a5(?), and falls through when s1(=0x3b) != a5(?).
  The `blez` branch at 0xa70 targets 0xadc, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0xa80 targets 0xa90, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xa88 targets 0xa6c, is taken when s1(=0x3b) != a5(?), and falls through when s1(=0x3b) == a5(?).
  The `blez` branch at 0xa90 targets 0xadc, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0xaac targets 0xad8, is taken when a1(?) >= a3(?) (signed), and falls through when a1(?) < a3(?) (signed).
  The `beq` branch at 0xac0 targets 0xad8, is taken when a1(?) >= a3(?) (signed), and falls through when a1(?) < a3(?) (signed).
  The `bne` branch at 0xad0 targets 0xa9c, is taken when a1(?) < a3(?) (signed), and falls through when a1(?) >= a3(?) (signed).
  The `beq` branch at 0xae4 targets 0xb34, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xb0c targets 0xb34, is taken when a5(?) < a1(?) (signed), and falls through when a5(?) >= a1(?) (signed).
  The `beq` branch at 0xb2c targets 0xaec, is taken when a5(?) >= a1(?) (signed), and falls through when a5(?) < a1(?) (signed).
  The `beq` branch at 0xb38 targets 0xc28, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xb44 targets 0xb84, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xb4c targets 0xb84, is taken when s1(=0x3b) == a3(?), and falls through when s1(=0x3b) != a3(?).
  The `blez` branch at 0xb5c targets 0xbc4, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `beq` branch at 0xb6c targets 0xb7c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xb74 targets 0xb58, is taken when s1(=0x3b) != a3(?), and falls through when s1(=0x3b) == a3(?).
  The `blez` branch at 0xb7c targets 0xbc8, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `beq` branch at 0xb98 targets 0xbc4, is taken when a1(?) >= a4(?) (signed), and falls through when a1(?) < a4(?) (signed).
  The `beq` branch at 0xbac targets 0xbc4, is taken when a1(?) >= a4(?) (signed), and falls through when a1(?) < a4(?) (signed).
  The `bne` branch at 0xbbc targets 0xb88, is taken when a1(?) < a4(?) (signed), and falls through when a1(?) >= a4(?) (signed).
  The `beq` branch at 0xbd0 targets 0xc28, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xbfc targets 0xc28, is taken when a3(?) < a1(?) (signed), and falls through when a3(?) >= a1(?) (signed).
  The `beq` branch at 0xc20 targets 0xbd8, is taken when a3(?) >= a1(?) (signed), and falls through when a3(?) < a1(?) (signed).
  The `beq` branch at 0xc28 targets 0xc44, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0xc48 targets 0xcac, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xc68 targets 0xcac, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xc70 targets 0xcac, is taken when s1(=0x3b) == a3(?), and falls through when s1(=0x3b) != a3(?).
  The `beq` branch at 0xc7c targets 0xcac, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xc84 targets 0xcac, is taken when s1(=0x3b) == a3(?), and falls through when s1(=0x3b) != a3(?).
  The `bne` branch at 0xca4 targets 0xc5c, is taken when s6(?) < 0x4 (signed), and falls through when s6(?) >= 0x4 (signed).
  The `beq` branch at 0xcb0 targets 0xcc8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xcc8 targets 0xd48, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xcf0 targets 0xd34, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xcf8 targets 0xd38, is taken when s1(=0x3b) == a1(?), and falls through when s1(=0x3b) != a1(?).
  The `beq` branch at 0xd04 targets 0xd34, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xd0c targets 0xd38, is taken when s1(=0x3b) == a1(?), and falls through when s1(=0x3b) != a1(?).
  The `bne` branch at 0xd2c targets 0xce4, is taken when s6(?) < 0x6 (signed), and falls through when s6(?) >= 0x6 (signed).
  The `beq` branch at 0xd58 targets 0xd84, is taken when a0(?) >= 0x6 (signed), and falls through when a0(?) < 0x6 (signed).
  The `beq` branch at 0xd6c targets 0xd84, is taken when a0(?) >= 0x6 (signed), and falls through when a0(?) < 0x6 (signed).
  The `bne` branch at 0xd7c targets 0xd48, is taken when a0(?) < 0x6 (signed), and falls through when a0(?) >= 0x6 (signed).
  The `beq` branch at 0xd90 targets 0x724 and is always taken.
  The `bne` branch at 0xda8 targets 0xdb8, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0xdb0 targets 0x7fc and is always taken.
  The `bne` branch at 0xdc8 targets 0xe08, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0xdd0 targets 0x7fc and is always taken.
  The `bne` branch at 0xe18 targets 0xe28, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0xe20 targets 0x7fc and is always taken.
  The `bne` branch at 0xe3c targets 0xe50, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0xe48 targets 0x7fc and is always taken.
  The `bne` branch at 0xe60 targets 0xe84, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0xe6c targets 0x7fc and is always taken.
  The `beq` branch at 0xe74 targets 0x718 and is always taken.
  The `beq` branch at 0xe7c targets 0x8c0 and is always taken.
  The `bne` branch at 0xe94 targets 0xea8, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0xea0 targets 0x7fc and is always taken.
  The `bne` branch at 0xeb8 targets 0x7fc, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0xec0 targets 0x7fc and is always taken.
  The `beq` branch at 0xecc targets 0x8c0 and is always taken.
  The return at 0xe00 has v0 = ?.
  The instructions from 0x7dc to 0x7dc are not reached by any path from the entry, and their branches are not listed.


- `kona_detach` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0x1628 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0x1628-0x1630 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1628 has v0 = ?.


- `kona_flow_init` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)`.
  Range: 0x0-0x50 (80 bytes).
  It occupies 80 bytes.
  The `sw` at 0x0 stores 4 bytes to a0 (arg0 at entry) +0x918.
  The `sw` at 0x8 stores 4 bytes to a0 (arg0 at entry) +0x91c.
  The `sw` at 0x10 stores 4 bytes to a0 (arg0 at entry) +0x92c.
  The `ld` at 0x18 loads 8 bytes from a0 (arg0 at entry) +0x948.
  The `sd` at 0x3c stores 8 bytes to a0 (arg0 at entry) +0x920.
  The `sw` at 0x40 stores 4 bytes to a0 (arg0 at entry) +0x928.
  The `jal` at 0x30 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800210, a1=0x700, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x48 has v0 = ret(gfx_pio_write_32).


- `kona_flow_cleanup` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)`.
  Range: 0x50-0x84 (52 bytes).
  It occupies 52 bytes.
  The `ld` at 0x50 loads 8 bytes from a0 (arg0 at entry) +0x920.
  The `sd` at 0x74 stores 8 bytes to a0 (arg0 at entry) +0x920.
  The `jal` at 0x68 calls kona_untimeout with a0=a0 at entry (arg0), a1=[a0+2336]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x60 targets 0x78, is taken when a1(=[a0+2336]:8) == 0, and falls through when a1(=[a0+2336]:8) != 0.
  The return at 0x7c has v0 = one of ?, ret(kona_untimeout).

- `kona_hiwater_timeout` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)`.
  Range: 0x84-0x144 (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x84 loads 8 bytes from a0 (arg0 at entry) +0x920.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0x9c, `ld` at 0xc0.
  The `lw` at 0xb0 loads 4 bytes from a0 (arg0 at entry) +0x91c.
  The `lw` at 0xe8 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `lw` at 0xf4 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `sd` at 0xfc stores 8 bytes to a0 (arg0 at entry) +0x920.
  The `lw` at 0x11c loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `sw` at 0x128 stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `jal` at 0xa8 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800208, a1=[a0+2376]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xcc calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800208, a1=[a0+2376]:8, a2=?, a3=?.
  The `jal` at 0xec calls cmn_err_tag with a0=0x836, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=ret(gfx_pio_read_32).
  The `jal` at 0x104 calls kona_die with a0=a0 at entry (arg0), a1=0x6, a2=?, a3=?, a4=[a0+108].
  The `jal` at 0x12c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x134 calls kona_lowater_intr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x94 targets 0x10c, is taken when at(=[a0+2336]:8) == 0, and falls through when at(=[a0+2336]:8) != 0.
  The `beq` branch at 0xb8 targets 0x12c, is taken when a1(=[a0+2332]) >= v0(=ret(gfx_pio_read_32)) (unsigned), and falls through when a1(=[a0+2332]) < v0(=ret(gfx_pio_read_32)) (unsigned).
  The `beq` branch at 0xf8 targets 0x11c, is taken when a4(=[a0+108]) == 0, and falls through when a4(=[a0+108]) != 0.
  The `beq` branch at 0x124 targets 0x100 and is always taken.
  The `beq` branch at 0x13c targets 0x110 and is always taken.
  The return at 0x114 has v0 = one of ?, ret(kona_lowater_intr).

- `kona_delay_monitor_gfifo` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x144 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)`.
  Range: 0x144-0x1e8 (164 bytes).
  It occupies 164 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0x17c, `ld` at 0x1c4.
  The `lw` at 0x188 loads 4 bytes from a0 (arg0 at entry) +0x92c.
  The `sw` at 0x1d4 stores 4 bytes to a0 (arg0 at entry) +0x928.
  The `jal` at 0x180 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800208, a1=?, a2=?, a3=?.
  The `jal` at 0x198 calls us_delay with a0=0x4, a1=?, a2=?, a3=?.
  The `jal` at 0x1d8 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800238, a1=0x3, a2=0x800238, a3=?.
  The `beq` branch at 0x174 targets 0x1a8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x190 targets 0x1c4, is taken when a1(=[a0+2348]) >= v0(=ret(gfx_pio_read_32)) (unsigned), and falls through when a1(=[a0+2348]) < v0(=ret(gfx_pio_read_32)) (unsigned).
  The `bne` branch at 0x1a4 targets 0x17c, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0x1e0 targets 0x1ac and is always taken.
  The return at 0x1bc has v0 = ?.

- `kona_diag_flow` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x5a4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)`.
  Range: 0x5a4-0x6f4 (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0x5d4 loads 4 bytes from a0 (arg0 at entry) +0x87c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x940, including `lw` at 0x5e8, `lw` at 0x61c.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0x5f0, `ld` at 0x614, `ld` at 0x66c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x940, including `sw` at 0x600, `sw` at 0x630.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e0, including `ld` at 0x63c, `ld` at 0x654, `ld` at 0x694.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x938, including `sw` at 0x660, `sw` at 0x6f0.
  The `lw` at 0x678 loads 4 bytes from a0 (arg0 at entry) +0x938.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48, including `ld` at 0x68c, `ld` at 0x6d8.
  The `lw` at 0x69c loads 4 bytes from a0 (arg0 at entry) +0x8c8.
  The `jal` at 0x604 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800230, a1=?, a2=0x800230, a3=-0x8.
  The `jal` at 0x62c calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800230, a1=([a0+2368] | 0x4), a2=0x800230, a3=a3 at entry (arg3).
  The `jal` at 0x638 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x640 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x650 calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x664 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x67c calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=0xc00108, a3=?.
  The `jal` at 0x690 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x6a8 calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x6b0 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6bc calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x6c4 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x6cc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6dc calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x6e4 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `beq` branch at 0x5b4 targets 0x5d4, is taken when a1 == at(=0x1), and falls through when a1 != at(=0x1).
  The `beq` branch at 0x5bc targets 0x5e8, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x5d8 targets 0x614, is taken when v0(=[a0+2172]) == 0, and falls through when v0(=[a0+2172]) != 0.
  The `beq` branch at 0x5e0 targets 0x5c8 and is always taken.
  The `beq` branch at 0x60c targets 0x5c4 and is always taken.
  The `beq` branch at 0x658 targets 0x68c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x684 targets 0x5c4 and is always taken.
  The `beq` branch at 0x6ec targets 0x664 and is always taken.
  The return at 0x5cc has v0 = one of 0x0, 0xd, 0x16.

- `kona_diag_credits` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x6f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)`.
  Range: 0x6f4-0x754 (96 bytes).
  It occupies 96 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e0, including `ld` at 0x710, `ld` at 0x71c, `ld` at 0x728.
  The `sw` at 0x714 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x720 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0x734 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sw` at 0x744 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jal` at 0x70c calls gfx_flow_credit_total_get with a0=[a0+2272]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x718 calls gfx_flow_credit_bias_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x724 calls gfx_flow_credit_count_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The return at 0x74c has v0 = 0x0.

- `kona_flow_await_returned_credits` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x754 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)`.
  Range: 0x754-0x938 (484 bytes).
  It occupies 484 bytes.
  11 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e0, including `ld` at 0x760, `ld` at 0x778, `ld` at 0x7c8.
  The `lw` at 0x78c loads 4 bytes from a0 (arg0 at entry) +0x928.
  The `lw` at 0x798 loads 4 bytes from a0 (arg0 at entry) +0x87c.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48, including `ld` at 0x7a4, `ld` at 0x860, `ld` at 0x894.
  The `lw` at 0x7a8 loads 4 bytes from [a0+72]:8 +0x4.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0x814, `ld` at 0x82c, `ld` at 0x838.
  The `lw` at 0x8a4 loads 4 bytes from a0 (arg0 at entry) +0x8c8.
  The `lw` at 0x8f8 loads 4 bytes from a0 (arg0 at entry) +0x91c.
  The `ld` at 0x910 loads 8 bytes from a0 (arg0 at entry) +0x910.
  The `sd` at 0x924 stores 8 bytes to a0 (arg0 at entry) +0x910.
  The `jal` at 0x768 calls gfx_flow_credit_bias_get with a0=[a0+2272]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x774 calls gfx_flow_credit_count_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7c0 calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x7cc calls gfx_flow_credit_count_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7e0 calls gfx_flow_credit_count_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7ec calls gfx_flow_credit_total_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x804 calls kona_die with a0=a0 at entry (arg0), a1=0x19, a2=?, a3=?.
  The `jal` at 0x80c calls kona_reset_adaptor with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x824 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800300, a1=0x1, a2=?, a3=?.
  The `jal` at 0x830 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800300, a1=?, a2=?, a3=?.
  The `jal` at 0x840 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800300, a1=0x0, a2=?, a3=?.
  The `jal` at 0x84c calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800300, a1=?, a2=?, a3=?.
  The `jal` at 0x854 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x868 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x870 calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x884 calls gfx_flow_detach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x88c calls gfx_flow_reset with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x898 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x8b0 calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x8bc calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x8c4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x8f0 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800208, a1=0x800208, a2=?, a3=?.
  The `jal` at 0x908 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x91c calls curproc with a0=?, a1=?, a2=?, a3=[a0+2320]:8.
  The `jal` at 0x928 calls force_resched with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x780 targets 0x7e0, is taken when v0(=ret(gfx_flow_credit_count_get)) >= s2(=ret(gfx_flow_credit_bias_get)) (unsigned), and falls through when v0(=ret(gfx_flow_credit_count_get)) < s2(=ret(gfx_flow_credit_bias_get)) (unsigned).
  The `bne` branch at 0x790 targets 0x8d0, is taken when v0(=[a0+2344]) != 0, and falls through when v0(=[a0+2344]) == 0.
  The `beq` branch at 0x79c targets 0x7b8, is taken when v1(=[a0+2172]) == 0, and falls through when v1(=[a0+2172]) != 0.
  The `bne` branch at 0x7b0 targets 0x80c, is taken when (a0(=[[a0+72]:8+4]) & 0x4) != 0, and falls through when (a0(=[[a0+72]:8+4]) & 0x4) == 0.
  The `blez` branch at 0x7b8 targets 0x8e4, is taken when s1(?) <= 0 (signed), and falls through when s1(?) > 0 (signed).
  The `bne` branch at 0x7d8 targets 0x78c, is taken when v0(=ret(gfx_flow_credit_count_get)) < s2(=ret(gfx_flow_credit_bias_get)) (unsigned), and falls through when v0(=ret(gfx_flow_credit_count_get)) >= s2(=ret(gfx_flow_credit_bias_get)) (unsigned).
  The `beq` branch at 0x7f8 targets 0x8d0, is taken when v0(=ret(gfx_flow_credit_total_get)) >= s1(=ret(gfx_flow_credit_count_get)) (unsigned), and falls through when v0(=ret(gfx_flow_credit_total_get)) < s1(=ret(gfx_flow_credit_count_get)) (unsigned).
  The `beq` branch at 0x878 targets 0x88c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x900 targets 0x8d0, is taken when a2(=[a0+2332]) >= v0(=ret(gfx_pio_read_32)) (unsigned), and falls through when a2(=[a0+2332]) < v0(=ret(gfx_pio_read_32)) (unsigned).
  The `beq` branch at 0x914 targets 0x928, is taken when a3(=[a0+2320]:8) == v0(=ret(curproc)), and falls through when a3(=[a0+2320]:8) != v0(=ret(curproc)).
  The `beq` branch at 0x930 targets 0x8d0 and is always taken.
  The return at 0x8dc has v0 = one of [a0+2344], ret(gfx_flow_credit_total_get), ret(splx), ret(gfx_pio_read_32), ret(force_resched).

- `kona_mem_suspend` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0xa78 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0xa78-0xa88 (16 bytes).
  It occupies 16 bytes.
  The `ld` at 0xa78 loads 8 bytes from a1 (arg1 at entry) +0x68.
  The `sw` at 0xa84 stores 4 bytes to a0 (arg0 at entry) +0x13f8.
  The return at 0xa80 has v0 = ?.

- `kona_mem_resume` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0xa88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0xa88-0xd48 (704 bytes).
  It occupies 704 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x13f8, including `lw` at 0xa88, `lw` at 0xacc.
  The `lw` at 0xaa0 loads 4 bytes from a0 (arg0 at entry) +0x87c.
  The `sw` at 0xaac stores 4 bytes to a0 (arg0 at entry) +0x13f8.
  12 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e0, including `ld` at 0xac8, `ld` at 0xaf0, `ld` at 0xb34.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x938, including `sw` at 0xafc, `sw` at 0xb58, `sw` at 0xbe4.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0xb08, `ld` at 0xb64, `ld` at 0xbf0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x938, including `lw` at 0xb14, `lw` at 0xb70, `lw` at 0xbfc.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x900, including `ld` at 0xb28, `ld` at 0xb90.
  The `lw` at 0xb9c loads 4 bytes from ?.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48, including `ld` at 0xc10, `ld` at 0xc5c, `ld` at 0xc78.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c8, including `lw` at 0xc20, `lw` at 0xc88, `lw` at 0xcf0.
  The `jal` at 0xac0 calls psema with a0=a0+5152, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xad4 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xadc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xaec calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb00 calls splx with a0=ret(splhi), a1=0x30000, a2=?, a3=?.
  The `jal` at 0xb18 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=[a0+2376]:8, a3=?.
  The `jal` at 0xb24 calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=0x1de, a2=?, a3=?.
  The `jal` at 0xb30 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xb38 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb48 calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb5c calls splx with a0=ret(splhi), a1=?, a2=0x10000, a3=?.
  The `jal` at 0xb74 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=[a0+2376]:8, a3=?.
  The `jal` at 0xb98 calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xbbc calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xbc4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbd4 calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xbe8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xc00 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=[a0+2376]:8, a3=?.
  The `jal` at 0xc14 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xc2c calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xc34 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc40 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xc48 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xc50 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc60 calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xc68 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0xc7c calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=0x10000, a3=?.
  The `jal` at 0xc94 calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xc9c calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xca8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xcb0 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xcb8 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcc8 calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xcd0 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0xce4 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xcfc calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xd04 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd10 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xd18 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xd20 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd30 calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xd38 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `bne` branch at 0xa98 targets 0xaac, is taken when at(=[a0+5112]) < 0x2 (signed), and falls through when at(=[a0+5112]) >= 0x2 (signed).
  The `beq` branch at 0xaa4 targets 0xabc, is taken when v0(=[a0+2172]) == 0, and falls through when v0(=[a0+2172]) != 0.
  The `beq` branch at 0xaf4 targets 0xc10, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0xb50 targets 0xc78, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `blez` branch at 0xb80 targets 0xbb4, is taken when a1(=[a0+5112]) <= 0 (signed), and falls through when a1(=[a0+5112]) > 0 (signed).
  The `beq` branch at 0xbac targets 0xb90, is taken when a2(=[a0+5112]) >= s1(?) (signed), and falls through when a2(=[a0+5112]) < s1(?) (signed).
  The `beq` branch at 0xbdc targets 0xce0, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0xc08 targets 0xaac and is always taken.
  The `beq` branch at 0xc70 targets 0xafc and is always taken.
  The `beq` branch at 0xcd8 targets 0xb58 and is always taken.
  The `beq` branch at 0xd40 targets 0xbe8 and is always taken.
  The return at 0xab4 has v0 = one of ?, [a0+2172], ret(gfx_pio_write_32).

- `kona_mem_cleanup` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0xfe8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0xfe8-0x1134 (332 bytes).
  It occupies 332 bytes.
  The `ld` at 0x101c loads 8 bytes from a0 (arg0 at entry) +0x13f0.
  The `sd` at 0x1020 stores 8 bytes to a0 (arg0 at entry) +0x13f0.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1040, `ld` at 0x1058, `ld` at 0x109c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1044, `lw` at 0x10e4, `lw` at 0x10e8.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x105c, `sd` at 0x10a8, `sd` at 0x10b0.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x1064, `sb` at 0x10b8.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1068, `lbu` at 0x1088.
  The `lhu` at 0x106c loads 2 bytes from ?.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x888, including `lw` at 0x10a4, `lw` at 0x1128.
  The `sw` at 0x111c stores 4 bytes to ?.
  The `jal` at 0x1010 calls mutex_spinlock with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1024 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x10a0 calls free_gfx_io_space with a0=[a0+2184], a1=?, a2=?, a3=?.
  The `jal` at 0x1110 calls kvpfree with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1124 calls free_gfx_io_space with a0=[a0+2184], a1=?, a2=?, a3=?.
  The `beq` branch at 0x102c targets 0x10bc, is taken when s1(=[a0+5104]:8) == 0, and falls through when s1(=[a0+5104]:8) != 0.
  The `beq` branch at 0x1038 targets 0x1068 and is always taken.
  The `beq` branch at 0x1048 targets 0x10e0, is taken when a0(?) == s4(=0x2), and falls through when a0(?) != s4(=0x2).
  The `beq` branch at 0x1050 targets 0x109c, is taken when a0(?) == s5(=0x1), and falls through when a0(?) != s5(=0x1).
  The `beq` branch at 0x1060 targets 0x10bc, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x108c targets 0x1040, is taken when (a4(?) & 0x1) != 0, and falls through when (a4(?) & 0x1) == 0.
  The `beq` branch at 0x1094 targets 0x1048 and is always taken.
  The `bne` branch at 0x10b4 targets 0x1068, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0x112c targets 0x10ac and is always taken.
  The return at 0x10d8 has v0 = one of ret(mutex_spinunlock), ?, ret(free_gfx_io_space).

- `kona_mem_swapout` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1134 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x1134-0x12e0 (428 bytes).
  It occupies 428 bytes.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x1134, `ld` at 0x1264.
  The `lhu` at 0x1150 loads 2 bytes from a2 (arg2 at entry) +0x6.
  The `lw` at 0x117c loads 4 bytes from [a1]:8 +0x8.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x1180, `lw` at 0x11fc.
  2 such `lw` accesses load 4 bytes from [a1]:8 +0x14, including `lw` at 0x1184, `lw` at 0x1274.
  The `lw` at 0x119c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `sw` at 0x11b0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sd` at 0x11e4 stores 8 bytes to a2 (arg2 at entry) +0x10.
  The `lw` at 0x11e8 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `sd` at 0x11f4 stores 8 bytes to a2 (arg2 at entry) +0x18.
  The `sw` at 0x1200 stores 4 bytes to a2 (arg2 at entry) +0x20.
  The `ld` at 0x120c loads 8 bytes from a0 (arg0 at entry) +0x13d0.
  The `sd` at 0x1218 stores 8 bytes to [a0+5072]:8 +0x38.
  The `sd` at 0x121c stores 8 bytes to a0 (arg0 at entry) +0x13d0.
  The `lw` at 0x1254 loads 4 bytes from a2 (arg2 at entry) +0x20.
  The `lw` at 0x1258 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `sd` at 0x125c stores 8 bytes to a2 (arg2 at entry) +0x58.
  The `ld` at 0x1268 loads 8 bytes from a2 (arg2 at entry) +0x18.
  The `ld` at 0x1280 loads 8 bytes from a2 (arg2 at entry) +0x28.
  The `lbu` at 0x1284 loads 1 byte from [a2+40]:8 +0x0.
  The `sb` at 0x128c stores 1 byte to [a2+40]:8 +0x0.
  The `sb` at 0x1298 stores 1 byte to a2 (arg2 at entry) +0x2.
  The `sd` at 0x12dc stores 8 bytes to a0 (arg0 at entry) +0x13d8.
  The `jal` at 0x11b4 calls psema with a0=a2+72, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11bc calls kona_mem_cleanup with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x11d4 calls kvpalloc with a0=?, a1=0x80000, a2=0x0, a3=?.
  The `jal` at 0x11ec calls alloc_gfx_io_space with a0=[a0+2184], a1=ret(kvpalloc), a2=?, a3=0xe.
  The `jal` at 0x1204 calls mutex_spinlock with a0=a0+2576, a1=[a2+8], a2=?, a3=?.
  The `jal` at 0x1220 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x123c calls kona_timeout with a0=sym(kona_mem_swapout_complete), a1=a0 at entry (arg0), a2=[sym(kona_mem_timeout_value)], a3=sym(splhi), a4=0x1, a5=a2 at entry (arg2).
  The `jal` at 0x1278 calls kona_mem_swapout_func with a0=a0 at entry (arg0), a1=?, a2=[a2+12], a3=[a2+32], a4=[[a1]:8+20], a6=[a2+24]:8.
  The `jal` at 0x12a0 calls psema with a0=a2+72, a1=0x19, a2=?, a3=?, a6=0x1, a7=[[a2+40]:8]:1+1.
  The `jal` at 0x12a8 calls vsema with a0=a2+72, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1174 targets 0x1180, is taken when (at(=[a2+6]:2) & 0x1) == 0, and falls through when (at(=[a2+6]:2) & 0x1) != 0.
  The `beq` branch at 0x1210 targets 0x12d8, is taken when a0(=[a0+5072]:8) == 0, and falls through when a0(=[a0+5072]:8) != 0.
  The `beq` branch at 0x1294 targets 0x12b0, is taken when s7(=[sym(kona_mem_serialize)]) == 0, and falls through when s7(=[sym(kona_mem_serialize)]) != 0.
  The `beq` branch at 0x12d8 targets 0x121c and is always taken.
  The return at 0x12d0 has v0 = one of ret(kona_mem_swapout_func), ret(vsema).

- `kona_mem_compress` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x12e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x12e0-0x13a8 (200 bytes).
  It occupies 200 bytes.
  The `ld` at 0x12f0 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `lbu` at 0x1318 loads 1 byte from [a1+16]:8 +0x4.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1330, `lw` at 0x133c, `lw` at 0x1360.
  The `sw` at 0x1340 stores 4 bytes to ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1348, `ld` at 0x1380.
  The `lbu` at 0x1354 loads 1 byte from ?.
  The `jal` at 0x1334 calls kona_mem_copydown_func with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1308 targets 0x138c, is taken when s1(=[a1+16]:8) == 0, and falls through when s1(=[a1+16]:8) != 0.
  The `beq` branch at 0x1314 targets 0x1358 and is always taken.
  The `beq` branch at 0x134c targets 0x138c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1364 targets 0x1374, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1374 targets 0x131c, is taken when a2(?) != s0(?), and falls through when a2(?) == s0(?).
  The `bne` branch at 0x1384 targets 0x1354, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The return at 0x13a0 has v0 = ?.

- `kona_mem_grow` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x13a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x13a8-0x14c0 (280 bytes).
  It occupies 280 bytes.
  2 such `ld` accesses load 8 bytes from a2 (arg2 at entry) +0x30, including `ld` at 0x13a8, `ld` at 0x1438.
  The `lw` at 0x13ac loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x13b0, `ld` at 0x1408.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x13bc, `lw` at 0x1464.
  2 such `lw` accesses load 4 bytes from [a1]:8 +0x18, including `lw` at 0x13c0, `lw` at 0x140c.
  The `ld` at 0x1420 loads 8 bytes from [a2+48]:8 +0x30.
  2 such `sd` accesses store 8 bytes to a2 (arg2 at entry) +0x30, including `sd` at 0x1428, `sd` at 0x14ac.
  The `sd` at 0x1434 stores 8 bytes to [a2+48]:8 +0x30.
  The `lw` at 0x1448 loads 4 bytes from [a2+48]:8 +0xc.
  The `lw` at 0x144c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `sw` at 0x1454 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sw` at 0x1470 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `ld` at 0x1484 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `ld` at 0x1494 loads 8 bytes from ?.
  The `sd` at 0x14a8 stores 8 bytes to ?.
  The `jal` at 0x1430 calls kona_mem_swapout with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a2+48]:8, a3=?, a4=[[a2+48]:8+48]:8.
  The `jal` at 0x14b0 calls kona_mem_swapout with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[a2+48]:8.
  The `bne` branch at 0x13f4 targets 0x1484, is taken when at(?) < a3 (unsigned), and falls through when at(?) >= a3 (unsigned).
  The `bne` branch at 0x1400 targets 0x1444, is taken when a6(=[a2+48]:8) != 0, and falls through when a6(=[a2+48]:8) == 0.
  The `beq` branch at 0x1418 targets 0x144c, is taken when a3(?) >= s2(=a3) (unsigned), and falls through when a3(?) < s2(=a3) (unsigned).
  The `beq` branch at 0x143c targets 0x1408, is taken when a2(=[a2+48]:8) == 0, and falls through when a2(=[a2+48]:8) != 0.
  The `beq` branch at 0x1444 targets 0x1410 and is always taken.
  The `beq` branch at 0x1488 targets 0x14a4, is taken when s0(=a2) == a2(=[a1+16]:8), and falls through when s0(=a2) != a2(=[a1+16]:8).
  The `bne` branch at 0x1498 targets 0x1490, is taken when s0(=a2) != a2(?), and falls through when s0(=a2) == a2(?).
  The `beq` branch at 0x14b8 targets 0x145c and is always taken.
  The return at 0x147c has v0 = one of ?, ret(kona_mem_swapout).

- `kona_mem_reserve` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x14c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x14c0-0x1720 (608 bytes).
  It occupies 608 bytes.
  5 such `lw` accesses load 4 bytes from a4 (arg4 at entry) +0x8, including `lw` at 0x14c0, `lw` at 0x1590, `lw` at 0x15ac.
  5 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x10, including `ld` at 0x14e4, `ld` at 0x15a8, `ld` at 0x15b0.
  5 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x150c, `ld` at 0x1584, `ld` at 0x16dc.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1510, `lw` at 0x1588, `lw` at 0x165c.
  4 such `lw` accesses load 4 bytes from [a1]:8 +0x18, including `lw` at 0x1514, `lw` at 0x158c, `lw` at 0x16e4.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1534, `ld` at 0x1548, `ld` at 0x155c.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1568, `sd` at 0x156c, `sd` at 0x164c.
  The `lw` at 0x15bc loads 4 bytes from [a1+16]:8 +0xc.
  2 such `lbu` accesses load 1 byte from a4 (arg4 at entry) +0x4, including `lbu` at 0x15d8, `lbu` at 0x1710.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x15e0, `lw` at 0x15f4, `lw` at 0x15f8.
  2 such `sd` accesses store 8 bytes to a4 (arg4 at entry) +0x30, including `sd` at 0x1644, `sd` at 0x1650.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x10, including `sd` at 0x1654, `sd` at 0x16b8.
  The `sw` at 0x1664 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sw` at 0x166c stores 4 bytes to a4 (arg4 at entry) +0xc.
  The `ld` at 0x16ac loads 8 bytes from [a1+16]:8 +0x30.
  The `sd` at 0x16c4 stores 8 bytes to [a1+16]:8 +0x30.
  The `lw` at 0x16f8 loads 4 bytes from [a1]:8 +0x10.
  The `jal` at 0x1570 calls kona_mem_swapout with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x16c0 calls kona_mem_swapout with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?, a6=[[a1+16]:8+48]:8, a7=[a1+16]:8.
  The `jal` at 0x1704 calls kona_mem_compress with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x1504 targets 0x15b4, is taken when at(=[a1+16]:8) == 0, and falls through when at(=[a1+16]:8) != 0.
  The `bne` branch at 0x1520 targets 0x1548, is taken when a1(?) < t0(=[a4+8]) (unsigned), and falls through when a1(?) >= t0(=[a4+8]) (unsigned).
  The `beq` branch at 0x1528 targets 0x15b4 and is always taken.
  The `beq` branch at 0x1538 targets 0x15b0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1540 targets 0x15b0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x154c targets 0x1530, is taken when v0(?) == s3(=a2), and falls through when v0(?) != s3(=a2).
  The `beq` branch at 0x1554 targets 0x1530, is taken when v0(?) == s5(=a3), and falls through when v0(?) != s5(=a3).
  The `beq` branch at 0x157c targets 0x15ac, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x159c targets 0x1548, is taken when a1(?) < t0(=[a4+8]) (unsigned), and falls through when a1(?) >= t0(=[a4+8]) (unsigned).
  The `beq` branch at 0x15a4 targets 0x15b4 and is always taken.
  The `beq` branch at 0x15b4 targets 0x16dc, is taken when v0(=[a1+16]:8) == 0, and falls through when v0(=[a1+16]:8) != 0.
  The `beq` branch at 0x15c8 targets 0x1650, is taken when a0(?) >= t0(=[a4+8]) (unsigned), and falls through when a0(?) < t0(=[a4+8]) (unsigned).
  The `beq` branch at 0x15d0 targets 0x1694, is taken when v0(=[a1+16]:8) == 0, and falls through when v0(=[a1+16]:8) != 0.
  The `beq` branch at 0x15dc targets 0x15f8 and is always taken.
  The `beq` branch at 0x15e4 targets 0x1644, is taken when t0(=[a4+8]) == 0, and falls through when t0(=[a4+8]) != 0.
  The `beq` branch at 0x15ec targets 0x1698, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1624 targets 0x16e8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bltz` branch at 0x1634 targets 0x15e4, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `bne` branch at 0x163c targets 0x15ec, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1648 targets 0x1658 and is always taken.
  The `beq` branch at 0x1698 targets 0x16f4, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x16a4 targets 0x16d4, is taken when a7(=[a1+16]:8) == 0, and falls through when a7(=[a1+16]:8) != 0.
  The `bne` branch at 0x16cc targets 0x16ac, is taken when a7(=[a1+16]:8) != 0, and falls through when a7(=[a1+16]:8) == 0.
  The `beq` branch at 0x16d4 targets 0x1670 and is always taken.
  The `beq` branch at 0x16e0 targets 0x15c0 and is always taken.
  The `beq` branch at 0x16ec targets 0x1630 and is always taken.
  The `beq` branch at 0x16fc targets 0x16a0, is taken when a1(=[[a1]:8+16]) == 0, and falls through when a1(=[[a1]:8+16]) != 0.
  The `beq` branch at 0x1718 targets 0x15dc and is always taken.
  The return at 0x168c has v0 = one of 0x0, 0x1.

- `kona_mem_swapin` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1a28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x1a28-0x1ba0 (376 bytes).
  It occupies 376 bytes.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x20, including `lw` at 0x1a28, `lw` at 0x1b20.
  The `lhu` at 0x1a38 loads 2 bytes from a2 (arg2 at entry) +0x6.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x1a40, `ld` at 0x1b30.
  2 such `lw` accesses load 4 bytes from [a1]:8 +0x14, including `lw` at 0x1a5c, `lw` at 0x1b40.
  The `lw` at 0x1a60 loads 4 bytes from [a1]:8 +0x8.
  2 such `ld` accesses load 8 bytes from a2 (arg2 at entry) +0x10, including `ld` at 0x1aac, `ld` at 0x1b1c.
  The `lw` at 0x1abc loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `sd` at 0x1ac0 stores 8 bytes to a2 (arg2 at entry) +0x18.
  The `ld` at 0x1ad0 loads 8 bytes from a0 (arg0 at entry) +0x13e0.
  The `sd` at 0x1ae0 stores 8 bytes to [a0+5088]:8 +0x38.
  The `sd` at 0x1ae8 stores 8 bytes to a0 (arg0 at entry) +0x13e0.
  The `lw` at 0x1b24 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `sd` at 0x1b28 stores 8 bytes to a2 (arg2 at entry) +0x58.
  The `ld` at 0x1b34 loads 8 bytes from a2 (arg2 at entry) +0x18.
  The `ld` at 0x1b70 loads 8 bytes from a2 (arg2 at entry) +0x28.
  The `lbu` at 0x1b78 loads 1 byte from [a2+40]:8 +0x0.
  The `sb` at 0x1b84 stores 1 byte to [a2+40]:8 +0x0.
  The `sb` at 0x1b88 stores 1 byte to a2 (arg2 at entry) +0x2.
  The `sd` at 0x1b9c stores 8 bytes to a0 (arg0 at entry) +0x13e8.
  The `jal` at 0x1a9c calls psema with a0=a2+72, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[a2+32], a6=[a1]:8, a7=[sym(kona_mem_serialize)].
  The `jal` at 0x1aa4 calls kona_mem_cleanup with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1ab8 calls alloc_gfx_io_space with a0=[a0+2184], a1=[a2+16]:8, a2=?, a3=0xe.
  The `jal` at 0x1ac8 calls mutex_spinlock with a0=a0+2576, a1=?, a2=?, a3=?.
  The `jal` at 0x1ae4 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=[a0+5088]:8, a3=?.
  The `jal` at 0x1b00 calls kona_timeout with a0=sym(kona_mem_swapin_complete), a1=a0 at entry (arg0), a2=[sym(kona_mem_timeout_value)], a3=sym(splhi), a4=0x1, a5=a2 at entry (arg2).
  The `jal` at 0x1b44 calls kona_mem_swapin_func with a0=a0 at entry (arg0), a1=?, a2=[a2+12], a3=[a2+32], a4=[[a1]:8+20], a6=[a2+24]:8, a7=[a2+16]:8.
  The `jal` at 0x1b58 calls psema with a0=a2+72, a1=0x19, a2=?, a3=?, a6=[sym(kona_mem_serialize)].
  The `jal` at 0x1b60 calls vsema with a0=a2+72, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1a58 targets 0x1a64, is taken when (at(=[a2+6]:2) & 0x1) == 0, and falls through when (at(=[a2+6]:2) & 0x1) != 0.
  The `beq` branch at 0x1a8c targets 0x1b68, is taken when a5(=[a2+32]) == 0, and falls through when a5(=[a2+32]) != 0.
  The `beq` branch at 0x1ad8 targets 0x1b98, is taken when a2(=[a0+5088]:8) == 0, and falls through when a2(=[a0+5088]:8) != 0.
  The `beq` branch at 0x1b50 targets 0x1b68, is taken when a6(=[sym(kona_mem_serialize)]) == 0, and falls through when a6(=[sym(kona_mem_serialize)]) != 0.
  The `beq` branch at 0x1b98 targets 0x1ae4 and is always taken.
  The return at 0x1b90 has v0 = one of [[a1]:8+20], ret(kona_mem_swapin_func), ret(vsema).

- `kona_mem_update_driver` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1ba0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x1ba0-0x1c80 (224 bytes).
  It occupies 224 bytes.
  The `ld` at 0x1bb4 loads 8 bytes from a2 (arg2 at entry) +0x8.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1bec, `lbu` at 0x1c40.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1bf4, `lw` at 0x1c00, `lw` at 0x1c48.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1c04, `ld` at 0x1c58.
  The `ld` at 0x1c18 loads 8 bytes from a3 (arg3 at entry) +0x8.
  The `jal` at 0x1bfc calls kona_mem_reserve_func with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1c50 calls kona_mem_reserve_func with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1bd4 targets 0x1c10, is taken when s0(=[a2+8]:8) == 0, and falls through when s0(=[a2+8]:8) != 0.
  The `bne` branch at 0x1c08 targets 0x1bec, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1c10 targets 0x1c1c, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `beq` branch at 0x1c20 targets 0x1c64, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1c5c targets 0x1c40, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The return at 0x1c78 has v0 = one of ?, ret(kona_mem_reserve_func).

- `kona_mem_update` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1c80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x1c80-0x1d18 (152 bytes).
  It occupies 152 bytes.
  The `ld` at 0x1c94 loads 8 bytes from a1 (arg1 at entry) +0x70.
  2 such `ld` accesses load 8 bytes from [a1+112]:8 +0xf0, including `ld` at 0x1ce0, `ld` at 0x1d14.
  The `jal` at 0x1cc8 calls kona_mem_update_driver with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1c9c targets 0x1d0c and is always taken.
  The `beq` branch at 0x1cd8 targets 0x1cf4, is taken when s0(?) >= 0x4 (signed), and falls through when s0(?) < 0x4 (signed).
  The `bne` branch at 0x1ce4 targets 0x1ca4, is taken when a2(=[[a1+112]:8+240]:8) != 0, and falls through when a2(=[[a1+112]:8+240]:8) == 0.
  The `beq` branch at 0x1cec targets 0x1cac and is always taken.
  The `beq` branch at 0x1d10 targets 0x1ce4 and is always taken.
  The return at 0x1d04 has v0 = ret(kona_mem_update_driver).

- `kona_mem_validate_driver` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1d18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x1d18-0x1e40 (296 bytes).
  It occupies 296 bytes.
  The `ld` at 0x1d48 loads 8 bytes from a2 (arg2 at entry) +0x8.
  6 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1d78, `ld` at 0x1d90, `ld` at 0x1dd4.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1d84, `lbu` at 0x1dac, `lbu` at 0x1de0.
  The `ld` at 0x1da4 loads 8 bytes from a3 (arg3 at entry) +0x8.
  The `jal` at 0x1d40 calls kona_mem_cleanup with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1d68 calls kona_mem_reserve with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1dc4 calls kona_mem_reserve with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e1c calls kona_mem_swapin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1e30 calls kona_mem_swapin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x1d4c targets 0x1d84, is taken when s0(=[a2+8]:8) != 0, and falls through when s0(=[a2+8]:8) == 0.
  The `beq` branch at 0x1d54 targets 0x1d9c and is always taken.
  The `beq` branch at 0x1d70 targets 0x1e2c, is taken when v0(=ret(kona_mem_reserve)) == 0, and falls through when v0(=ret(kona_mem_reserve)) != 0.
  The `beq` branch at 0x1d7c targets 0x1d9c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1d88 targets 0x1d5c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x1d94 targets 0x1d84, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1d9c targets 0x1da8, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `bnel` branch at 0x1da8 targets 0x1de4, is taken when s0(?) != 0, and falls through when s0(?) == 0; its branch-likely delay slot `lbu v0,2(s0)` at 0x1dac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1db0 targets 0x1df8 and is always taken.
  The `beq` branch at 0x1dcc targets 0x1e18, is taken when v0(=ret(kona_mem_reserve)) == 0, and falls through when v0(=ret(kona_mem_reserve)) != 0.
  The `beq` branch at 0x1dd8 targets 0x1df8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1de4 targets 0x1db8, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x1df0 targets 0x1de0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1e24 targets 0x1dd8 and is always taken.
  The `beq` branch at 0x1e38 targets 0x1d7c and is always taken.
  The return at 0x1e10 has v0 = ?.

- `kona_mem_validate` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1e40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x1e40-0x1f54 (276 bytes).
  It occupies 276 bytes.
  The `ld` at 0x1e48 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x1e88 loads 8 bytes from [a1+112]:8 +0xf0.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1e98, `lbu` at 0x1ec4, `lbu` at 0x1ed8.
  The `jal` at 0x1e58 calls kona_mem_cleanup with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1ebc calls kona_mem_validate_driver with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1e9c targets 0x1f28, is taken when at(=[[a1+112]:8+240]:8) == 0, and falls through when at(=[[a1+112]:8+240]:8) != 0.
  The `beq` branch at 0x1ea4 targets 0x1f38, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x1ec8 targets 0x1eb4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1ed0 targets 0x1ee4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1edc targets 0x1eb4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x1ef8 targets 0x1e84, is taken when s5(?) < 0x4 (signed), and falls through when s5(?) >= 0x4 (signed).
  The `bne` branch at 0x1f28 targets 0x1eb0, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x1f30 targets 0x1ee8 and is always taken.
  The `beq` branch at 0x1f38 targets 0x1ee4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1f44 targets 0x1eb0, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x1f4c targets 0x1ee8 and is always taken.
  The return at 0x1f20 has v0 = ?.

- `kona_mem_destroy` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1f54 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x1f54-0x213c (488 bytes).
  It occupies 488 bytes.
  The `ld` at 0x1f80 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x1fa8 loads 8 bytes from [a1+112]:8 +0xf0.
  11 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1fb4, `ld` at 0x1fcc, `ld` at 0x1fe0.
  6 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2004, `sd` at 0x200c, `sd` at 0x203c.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2008, `lw` at 0x2010, `lw` at 0x2040.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x201c, `sw` at 0x2054.
  The `lhu` at 0x20e4 loads 2 bytes from ?.
  The `jal` at 0x2098 calls kvpfree with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20a0 calls freesema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20a8 calls kern_free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20c8 calls psema with a0=?, a1=0x19, a2=?, a3=?.
  The `jal` at 0x20d0 calls kona_mem_cleanup with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1f88 targets 0x2130 and is always taken.
  The `beq` branch at 0x1f98 targets 0x20fc, is taken when s4(?) >= 0x4 (signed), and falls through when s4(?) < 0x4 (signed).
  The `beq` branch at 0x1fa0 targets 0x2128, is taken when s7(=a2) == 0, and falls through when s7(=a2) != 0.
  The `beq` branch at 0x1fc4 targets 0x1f90, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1fd4 targets 0x205c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1fdc targets 0x1ff4 and is always taken.
  The `beq` branch at 0x1fe8 targets 0x2058, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x1ffc targets 0x2020, is taken when t8(?) != a6(?), and falls through when t8(?) == a6(?).
  The `beq` branch at 0x2018 targets 0x2024 and is always taken.
  The `beq` branch at 0x2024 targets 0x2058, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x2034 targets 0x1fe4, is taken when at(?) != a6(?), and falls through when at(?) == a6(?).
  The `beq` branch at 0x2050 targets 0x1fe8 and is always taken.
  The `beq` branch at 0x205c targets 0x1f90, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x2064 targets 0x20b8 and is always taken.
  The `beq` branch at 0x20b0 targets 0x1f90, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x20dc targets 0x20a0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x20ec targets 0x206c, is taken when (a5(?) & 0x1) != 0, and falls through when (a5(?) & 0x1) == 0.
  The `beq` branch at 0x20f4 targets 0x2070 and is always taken.
  The `beq` branch at 0x2128 targets 0x1fb4 and is always taken.
  The `beq` branch at 0x2134 targets 0x1fa0 and is always taken.
  The return at 0x2120 has v0 = ?.

- `kona_nclops_destroy` in `usr/cpu/sysgen/IP35boot/kona.a(kona_nclops.o)` at 0x1b58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_nclops.o)`.
  Range: 0x1b58-0x1d48 (496 bytes).
  It occupies 496 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1b70, `lw` at 0x1b94, `lw` at 0x1c58.
  11 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1bf4, `ld` at 0x1c08, `ld` at 0x1c54.
  The `sd` at 0x1c20 stores 8 bytes to ?.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1c2c, `sw` at 0x1d24.
  The `jal` at 0x1c00 calls gfx_pio_write_32 with a0=table(0x8003c0), a1=0xe200, a2=?, a3=?.
  The `jal` at 0x1c0c calls gfx_pio_read_32 with a0=table(0x8003d0), a1=?, a2=?, a3=?.
  The `jal` at 0x1c30 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1c64 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1c78 calls gfx_pio_write_32 with a0=table(0x8003c0), a1=0x80, a2=?, a3=?.
  The `jal` at 0x1c88 calls gfx_pio_write_32 with a0=table(0x8003d0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1c98 calls gfx_pio_write_32 with a0=table(0x8003c0), a1=0x8400, a2=?, a3=?.
  The `jal` at 0x1ca8 calls gfx_pio_write_32 with a0=table(0x8003d0), a1=0x7000, a2=?, a3=?.
  The `jal` at 0x1cb8 calls gfx_pio_write_32 with a0=table(0x8003c0), a1=0xe300, a2=?, a3=?.
  The `jal` at 0x1cc8 calls gfx_pio_write_32 with a0=table(0x8003d0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1cd8 calls gfx_pio_write_32 with a0=table(0x8003c0), a1=0xe500, a2=?, a3=?.
  The `jal` at 0x1ce8 calls gfx_pio_write_32 with a0=table(0x8003d0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1d18 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d28 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x1b7c targets 0x1b94, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1ba4 targets 0x1bb4, is taken when at(?) == v1(=0x1), and falls through when at(?) != v1(=0x1).
  The `beq` branch at 0x1bac targets 0x1b88 and is always taken.
  The `blez` branch at 0x1bdc targets 0x1cf8, is taken when v0(=[sym(KonaGfxNumberOfBoards)]) <= 0 (signed), and falls through when v0(=[sym(KonaGfxNumberOfBoards)]) > 0 (signed).
  The `beq` branch at 0x1be4 targets 0x1d3c and is always taken.
  The `beq` branch at 0x1bec targets 0x1c20, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1c18 targets 0x1bec, is taken when (v0(=ret(gfx_pio_read_32)) & 0x2) == 0, and falls through when (v0(=ret(gfx_pio_read_32)) & 0x2) != 0.
  The `beq` branch at 0x1c48 targets 0x1cf8, is taken when s1(?) >= v0(=[sym(KonaGfxNumberOfBoards)]) (signed), and falls through when s1(?) < v0(=[sym(KonaGfxNumberOfBoards)]) (signed).
  The `bne` branch at 0x1c5c targets 0x1c3c, is taken when a3(?) != s5(=a1), and falls through when a3(?) == s5(=a1).
  The `beq` branch at 0x1cf0 targets 0x1bf4 and is always taken.
  The `beq` branch at 0x1d34 targets 0x1b84 and is always taken.
  The `beq` branch at 0x1d40 targets 0x1c54 and is always taken.
  The return at 0x1b8c has v0 = one of 0x0, 0x1.

- `kona_nclops_cleanup` in `usr/cpu/sysgen/IP35boot/kona.a(kona_nclops.o)` at 0x1d48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_nclops.o)`.
  Range: 0x1d48-0x1e04 (188 bytes).
  It occupies 188 bytes.
  The `ld` at 0x1d48 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `lh` at 0x1d4c loads 2 bytes from [a1+112]:8 +0xf8.
  The `sh` at 0x1d68 stores 2 bytes to [a1+112]:8 +0xf8.
  The `lw` at 0x1d78 loads 4 bytes from a0 (arg0 at entry) +0x158c.
  The `sw` at 0x1d90 stores 4 bytes to a0 (arg0 at entry) +0x158c.
  The `lw` at 0x1da8 loads 4 bytes from a0 (arg0 at entry) +0x157c.
  The `ld` at 0x1db0 loads 8 bytes from a0 (arg0 at entry) +0x1568.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1dcc, `lw` at 0x1ddc.
  The `sw` at 0x1de4 stores 4 bytes to ?.
  The `jal` at 0x1d70 calls mutex_spinlock with a0=a0+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1d94 calls mutex_spinunlock with a0=a0+3520, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+5516]-1.
  The `jal` at 0x1dc4 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?, a5=[a0+5516].
  The `jal` at 0x1de8 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `bltz` branch at 0x1d5c targets 0x1df0, is taken when at(=[[a1+112]:8+248]:2) < 0 (signed), and falls through when at(=[[a1+112]:8+248]:2) >= 0 (signed).
  The `blez` branch at 0x1d88 targets 0x1d94, is taken when a4(=[a0+5516]) <= 0 (signed), and falls through when a4(=[a0+5516]) > 0 (signed).
  The `blez` branch at 0x1da0 targets 0x1df0, is taken when a5(=[a0+5516]) <= 0 (signed), and falls through when a5(=[a0+5516]) > 0 (signed).
  The `blez` branch at 0x1dd4 targets 0x1de8, is taken when ra(?) <= 0 (signed), and falls through when ra(?) > 0 (signed).
  The return at 0x1dfc has v0 = 0x0.
