# Instruction readings from hostfacts

Each entry summarises selected memory accesses, calls, conditional branches and returns reported by hostfacts for the named routine and binary. Every instruction claim includes its address. These are observations of the installed software, not hardware measurements. Unknown values remain marked unknown.








- `__glkonle_Push` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22bc880 (n64).
  It occupies 100 bytes.
  The `lw` at 0x22bc888 loads 4 bytes into a1 from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x22bc88c loads 4 bytes into $f0 from a0 (arg0 at entry) +0x4.
  The `swc1` at 0x22bc898 stores 4 bytes from $f0 to abs 0x4000 (value [a0+4]).
  The `ldc1` at 0x22bc8ac loads 8 bytes into $f0 from ? (base unknown).
  The `sdc1` at 0x22bc8c0 stores 8 bytes from $f0 to abs 0x4000 (value unknown).
  The `lwc1` at 0x22bc8cc loads 4 bytes into $f0 from ? (base unknown).
  The `swc1` at 0x22bc8d8 stores 4 bytes from $f0 to abs 0x4000 (value unknown).
  The `bne` branch at 0x22bc884 has these conditions:
    taken when (a0 & 0x4) != 0.
    falls through when (a0 & 0x4) == 0.
  The `beq` branch at 0x22bc8a0 has these conditions:
    taken when a1(?) == at(=0x1).
    falls through when a1(?) != at(=0x1).
  The `beq` branch at 0x22bc8bc has these conditions:
    taken when a1(?) >= t2(=0x2) (signed).
    falls through when a1(?) < t2(=0x2) (signed).
  The `beq` branch at 0x22bc8c4 has these conditions:
    taken when a1(?) == 0.
    falls through when a1(?) != 0.
  The return at 0x22bc8d4 has v0 = ?.
  The return at 0x22bc8dc has v0 = ?.







- `gl_comm_flush` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec3ff10 (o32).
  It occupies 636 bytes.
  The `lw` at 0xec3ff24 loads 4 bytes into s5 from abs 0xece2380.
  The `lw` at 0xec3ff2c loads 4 bytes into s3 from abs 0xece2370.
  The `lw` at 0xec3ff30 loads 4 bytes into s5 from abs 0xecdc614 (comm_curgfile).
  The `lw` at 0xec3ff5c loads 4 bytes into s1 from abs 0xecdc604 (comm_buffer).
  The `lw` at 0xec3ff60 loads 4 bytes into t9 from abs 0xece0520.
  The `lw` at 0xec3ff74 loads 4 bytes into t6 from ? (base unknown).
  The `lw` at 0xec3ff8c loads 4 bytes into v1 from abs 0xece2378.
  The `lw` at 0xec3ff98 loads 4 bytes into t7 from abs 0xecdc60c (comm_curbufpos).
  The `sw` at 0xec3ff9c stores 4 bytes from zero to [0xecdc60c] +0x0 (value 0x0).
  The `lw` at 0xec3ffa0 loads 4 bytes into t8 from abs 0xecdc60c (comm_curbufpos).
  The `lw` at 0xec3ffbc loads 4 bytes into v0 from abs 0xecdc604 (comm_buffer).
  The `lw` at 0xec3ffc0 loads 4 bytes into t0 from abs 0xece236c.
  The `lw` at 0xec3ffc4 loads 4 bytes into at from abs 0xece2374.
  The `sw` at 0xec3ffcc stores 4 bytes from t9 to abs 0xecdc60c (comm_curbufpos) (value [0xecdc604]+4).
  The `lw` at 0xec3ffd0 loads 4 bytes into t0 from abs 0xecdc600 (comm_stdsize).
  The `lw` at 0xec3ffd4 loads 4 bytes into t9 from abs 0xece1264.
  The `lw` at 0xec3ffd8 loads 4 bytes into a1 from abs 0xece004c.
  The `sw` at 0xec3ffe4 stores 4 bytes from t2 to abs 0xecdc608 (comm_endbuffer) (value ([0xecdc604] + [0xecdc600])-24).
  The `lw` at 0xec3ffe8 loads 4 bytes into s0 from ? (base unknown).
  The `lw` at 0xec40000 loads 4 bytes into s8 from abs 0xece004c.
  The `lw` at 0xec40004 loads 4 bytes into s6 from abs 0xece0080.
  The `lw` at 0xec40008 loads 4 bytes into s4 from abs 0xece0080.
  The `lw` at 0xec4000c loads 4 bytes into s3 from abs 0xece0080.
  The `sw` at 0xec40024 stores 4 bytes from s7 to ? (base unknown) (value unknown).
  The `lw` at 0xec40028 loads 4 bytes into t3 from abs 0xece324c.
  The `sw` at 0xec40038 stores 4 bytes from t4 to abs 0xece324c (value [0xece324c]+1).
  The `lw` at 0xec4003c loads 4 bytes into t9 from abs 0xece1268.
  The `lw` at 0xec40050 loads 4 bytes into a0 from ? (base unknown).
  The `lw` at 0xec40054 loads 4 bytes into a1 from ? (base unknown).
  The `lw` at 0xec40058 loads 4 bytes into t9 from abs 0xece0528.
  The `lw` at 0xec40074 loads 4 bytes into t9 from abs 0xece0554.
  The `lw` at 0xec40078 loads 4 bytes into a0 from abs 0xece004c.
  The `lw` at 0xec40088 loads 4 bytes into t5 from abs 0xece323c.
  The `lw` at 0xec4008c loads 4 bytes into t7 from abs 0xece3244.
  The `sw` at 0xec400a8 stores 4 bytes from t6 to abs 0xece323c (value [0xece323c]+1).
  The `sw` at 0xec400ac stores 4 bytes from t8 to abs 0xece3244 (value unknown).
  The `lw` at 0xec400b8 loads 4 bytes into s3 from abs 0xece0080.
  The `sw` at 0xec400c8 stores 4 bytes from t0 to ? (base unknown) (value unknown).
  The `lw` at 0xec400d0 loads 4 bytes into t1 from abs 0xece324c.
  The `lw` at 0xec400d4 loads 4 bytes into s6 from abs 0xece0080.
  The `lw` at 0xec400d8 loads 4 bytes into a1 from abs 0xece004c.
  The `sw` at 0xec400e0 stores 4 bytes from t2 to abs 0xece324c (value [0xece324c]+1).
  The `lw` at 0xec400e4 loads 4 bytes into t9 from abs 0xece1268.
  The `lw` at 0xec40100 loads 4 bytes into a0 from ? (base unknown).
  The `lw` at 0xec40104 loads 4 bytes into a1 from ? (base unknown).
  The `lw` at 0xec40108 loads 4 bytes into t9 from abs 0xece0528.
  The `lw` at 0xec40124 loads 4 bytes into t9 from abs 0xece0554.
  The `lw` at 0xec40128 loads 4 bytes into a0 from abs 0xece004c.
  The `lw` at 0xec40138 loads 4 bytes into v1 from abs 0xece0080.
  The `lw` at 0xec4013c loads 4 bytes into t5 from abs 0xece3244.
  The `lw` at 0xec40148 loads 4 bytes into t3 from abs 0xece3234.
  The `sw` at 0xec40150 stores 4 bytes from t6 to abs 0xece3244 (value unknown).
  The `sw` at 0xec40158 stores 4 bytes from t4 to abs 0xece3234 (value [0xece3234]+1).
  The `jalr` at 0xec3ff64 calls `gl_comm_default_init [0xec3f090]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xec3ffec calls `gl_dgl_info [0xec7f420]` with a0=0x6, a1=0xecd3c38, a2=?, a3=?.
  The `jalr` at 0xec40044 calls `gl_dgl_info_more [0xec7f4d0]` with a0=0x6, a1=0xecd3c58, a2=?, a3=?.
  The `jalr` at 0xec40064 calls `gl_comm_io [0xec3f428]` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xec4007c calls `gl_comm_fatal_error [0xec40754]` with a0=0xecd3c5c, a1=?, a2=?, a3=?.
  The `jalr` at 0xec400f4 calls `gl_dgl_info_more [0xec7f4d0]` with a0=0x6, a1=0xecd3c64, a2=?, a3=?.
  The `jalr` at 0xec40114 calls `gl_comm_io [0xec3f428]` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xec4012c calls `gl_comm_fatal_error [0xec40754]` with a0=0xecd3c6c, a1=?, a2=?, a3=?.
  The `bne` branch at 0xec3ff58 has these conditions:
    taken when s5(=[0xecdc614]) != 0.
    falls through when s5(=[0xecdc614]) == 0.
  The `bne` branch at 0xec3ff7c has these conditions:
    taken when t6(?) != at(=0x1).
    falls through when t6(?) == at(=0x1).
  The `bne` branch at 0xec3ffac has these conditions:
    taken when s2(?) != at(=0x8).
    falls through when s2(?) == at(=0x8).
  The `beq` branch at 0xec3fff8 has these conditions:
    taken when s0(?) >= s2(?) (signed).
    falls through when s0(?) < s2(?) (signed).
  The `beq` branch at 0xec4006c has these conditions:
    taken when v0(=ret(gl_comm_io)) == s0(?).
    falls through when v0(=ret(gl_comm_io)) != s0(?).
  The `bne` branch at 0xec400b0 has these conditions:
    taken when s0(?) < s2(?) (signed).
    falls through when s0(?) >= s2(?) (signed).
  The `beq` branch at 0xec4011c has these conditions:
    taken when v0(=ret(gl_comm_io)) == s2(?).
    falls through when v0(=ret(gl_comm_io)) != s2(?).
  The return at 0xec40184 has v0 = 0x0.







- `push_gfile` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec8c400 (o32).
  It occupies 80 bytes.
  The `lw` at 0xec8c40c loads 4 bytes into t6 from abs 0xece2380.
  The `lw` at 0xec8c410 loads 4 bytes into v0 from abs 0xece0084.
  The `lw` at 0xec8c418 loads 4 bytes into t6 from abs 0xecdc614 (comm_curgfile).
  The `sw` at 0xec8c42c stores 4 bytes from t6 to abs 0xeceba70 (value [0xecdc614]).
  The `lw` at 0xec8c430 loads 4 bytes into t9 from abs 0xece0540.
  The `jalr` at 0xec8c434 calls `gl_comm_flush [0xec3ff10]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xec8c428 has these conditions:
    taken when t6(=[0xecdc614]) == 0.
    falls through when t6(=[0xecdc614]) != 0.
  The return at 0xec8c448 has v0 = ?.







- `_GLsetWM_COMMAND` in `usr/gfx/arch/IGLOO/libgl.so` at 0xecc9dac (o32).
  It occupies 408 bytes.
  The `lw` at 0xecc9dc0 loads 4 bytes into s3 from abs 0xece2520.
  The `lw` at 0xecc9dc4 loads 4 bytes into t6 from abs 0xece24f8.
  The `lw` at 0xecc9dcc loads 4 bytes into s3 from sym(__Argc) +0x0.
  The `lw` at 0xecc9dd0 loads 4 bytes into t6 from sym(__Argv) +0x0.
  The `lw` at 0xecc9e08 loads 4 bytes into a1 from ? (base unknown).
  The `lw` at 0xecc9e18 loads 4 bytes into t9 from abs 0xece256c.
  The `lw` at 0xecc9e48 loads 4 bytes into t9 from abs 0xece0f88.
  The `lw` at 0xecc9e4c loads 4 bytes into a1 from abs 0xece0050.
  The `lw` at 0xecc9e7c loads 4 bytes into a1 from ? (base unknown).
  The `sb` at 0xecc9e84 stores byte from zero to ? (base unknown) (value 0x0).
  The `lw` at 0xecc9e88 loads 4 bytes into t9 from abs 0xece2640.
  The `lw` at 0xecc9e9c loads 4 bytes into a0 from ? (base unknown).
  The `lw` at 0xecc9ea0 loads 4 bytes into t9 from abs 0xece256c.
  The `lw` at 0xecc9edc loads 4 bytes into a0 from a0 (arg0 at entry) +0x4.
  The `lw` at 0xecc9ee0 loads 4 bytes into a1 from a0 (arg0 at entry) +0x40.
  The `lw` at 0xecc9ee8 loads 4 bytes into t9 from abs 0xece2700.
  The `lw` at 0xecc9f0c loads 4 bytes into t9 from abs 0xece0f90.
  The `lw` at 0xecc9f10 loads 4 bytes into a1 from abs 0xece0050.
  The `jalr` at 0xecc9e20 calls `strlen` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc9e54 calls `gl_malloc [0xec5fcf4]` with a0=?, a1=0xecd8e44, a2=?, a3=?.
  The `jalr` at 0xecc9e90 calls `strcpy` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc9ea4 calls `strlen` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc9efc calls `XChangeProperty` with a0=[a0+4], a1=[a0+64], a2=0x22, a3=0x1f.
  The `jalr` at 0xecc9f14 calls `gl_free [0xec5fd74]` with a0=?, a1=0xecd8e58, a2=?, a3=?.
  The `blez` branch at 0xecc9df4 has these conditions:
    taken when s3(=[sym(__Argc)]) <= 0 (signed).
    falls through when s3(=[sym(__Argc)]) > 0 (signed).
  The `beq` branch at 0xecc9e10 has these conditions:
    taken when a1(?) == 0.
    falls through when a1(?) != 0.
  The `bne` branch at 0xecc9e40 has these conditions:
    taken when s2(?) != s0(=([sym(__Argc)] << 0x2)).
    falls through when s2(?) == s0(=([sym(__Argc)] << 0x2)).
  The `beq` branch at 0xecc9e64 has these conditions:
    taken when v0(=ret(gl_malloc)) == 0.
    falls through when v0(=ret(gl_malloc)) != 0.
  The `blez` branch at 0xecc9e6c has these conditions:
    taken when s3(=[sym(__Argc)]) <= 0 (signed).
    falls through when s3(=[sym(__Argc)]) > 0 (signed).
  The `beql` branch at 0xecc9e80 has these conditions:
    taken when a1(?) == 0.
    falls through when a1(?) != 0.
  The `bne` branch at 0xecc9ec8 has these conditions:
    taken when s2(?) != s5(=([sym(__Argc)] << 0x2)).
    falls through when s2(?) == s5(=([sym(__Argc)] << 0x2)).
  The return at 0xecc9f3c has v0 = ?.







- `gl_comm_flush` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec40750 (n32).
  It occupies 564 bytes.
  The `lw` at 0xec40764 loads 4 bytes into at from abs 0xecdcf24.
  The `lw` at 0xec4076c loads 4 bytes into at from abs 0xecdf610 (comm_curgfile).
  The `lw` at 0xec40770 loads 4 bytes into a3 from abs 0xecdcec0.
  The `lw` at 0xec40778 loads 4 bytes into s0 from abs 0xecd6c44 (comm_buffer).
  The `lw` at 0xec40784 loads 4 bytes into v1 from ? (base unknown).
  The `lw` at 0xec40788 loads 4 bytes into v0 from abs 0xecdcec8.
  The `lw` at 0xec40794 loads 4 bytes into t8 from abs 0xecd6c4c (comm_curbufpos).
  The `sw` at 0xec40798 stores 4 bytes from zero to [0xecd6c4c] +0x0 (value 0x0).
  The `lw` at 0xec407a0 loads 4 bytes into s2 from abs 0xecd6c4c (comm_curbufpos).
  The `lw` at 0xec407bc loads 4 bytes into a1 from abs 0xecdabdc.
  The `lw` at 0xec407c0 loads 4 bytes into a4 from abs 0xecdcec4.
  The `lw` at 0xec407c4 loads 4 bytes into a5 from abs 0xecdcebc.
  The `lw` at 0xec407c8 loads 4 bytes into a3 from abs 0xecd6c44 (comm_buffer).
  The `lw` at 0xec407cc loads 4 bytes into a5 from abs 0xecd6c40 (comm_stdsize).
  The `lw` at 0xec407d4 loads 4 bytes into t9 from abs 0xecdbdc4.
  The `sw` at 0xec407dc stores 4 bytes from a6 to abs 0xecd6c4c (comm_curbufpos) (value [0xecd6c44]+4).
  The `sw` at 0xec407ec stores 4 bytes from a3 to abs 0xecd6c48 (comm_endbuffer) (value ([0xecd6c40] + [0xecd6c44])-24).
  The `lw` at 0xec407f8 loads 4 bytes into s1 from ? (base unknown).
  The `lw` at 0xec4081c loads 4 bytes into t9 from abs 0xecdbdc8.
  The `lw` at 0xec40828 loads 4 bytes into t0 from abs 0xecdd9fc.
  The `sw` at 0xec40834 stores 4 bytes from t1 to ? (base unknown) (value unknown).
  The `sw` at 0xec40840 stores 4 bytes from t0 to abs 0xecdd9fc (value [0xecdd9fc]+1).
  The `lw` at 0xec40844 loads 4 bytes into t9 from abs 0xecdb088.
  The `lw` at 0xec4084c loads 4 bytes into a1 from ? (base unknown).
  The `lw` at 0xec40858 loads 4 bytes into a0 from ? (base unknown).
  The `lw` at 0xec40860 loads 4 bytes into t9 from abs 0xecdb0b4.
  The `lw` at 0xec40868 loads 4 bytes into s0 from abs 0xecdd9f4.
  The `lw` at 0xec4086c loads 4 bytes into t3 from abs 0xecdd9e4.
  The `sw` at 0xec40874 stores 4 bytes from s0 to abs 0xecdd9f4 (value unknown).
  The `sw` at 0xec4087c stores 4 bytes from t3 to abs 0xecdd9e4 (value [0xecdd9e4]+1).
  The `lw` at 0xec408ac loads 4 bytes into ra from abs 0xecdd9f4.
  The `lw` at 0xec408b8 loads 4 bytes into t8 from abs 0xecdd9ec.
  The `sw` at 0xec408c8 stores 4 bytes from ra to abs 0xecdd9f4 (value unknown).
  The `sw` at 0xec408d4 stores 4 bytes from t8 to abs 0xecdd9ec (value [0xecdd9ec]+1).
  The `lw` at 0xec408dc loads 4 bytes into t9 from abs 0xecdbdc8.
  The `lw` at 0xec408e4 loads 4 bytes into t8 from abs 0xecdd9fc.
  The `sw` at 0xec408f0 stores 4 bytes from ra to ? (base unknown) (value unknown).
  The `sw` at 0xec408fc stores 4 bytes from t8 to abs 0xecdd9fc (value [0xecdd9fc]+1).
  The `lw` at 0xec40900 loads 4 bytes into t9 from abs 0xecdb088.
  The `lw` at 0xec40908 loads 4 bytes into a1 from ? (base unknown).
  The `lw` at 0xec40914 loads 4 bytes into a0 from ? (base unknown).
  The `lw` at 0xec4091c loads 4 bytes into t9 from abs 0xecdb0b4.
  The `lw` at 0xec40964 loads 4 bytes into t9 from abs 0xecdb080.
  The `lw` at 0xec40978 loads 4 bytes into a3 from abs 0xecdcec0.
  The `jalr` at 0xec407f4 calls `gl_dgl_info [0xec83550]` with a0=0x6, a1=0xecd70a0, a2=?, a3=([0xecd6c40] + [0xecd6c44])-24, a4=0xecd6c48, a5=[0xecd6c40], a6=[0xecd6c44]+4.
  The `jalr` at 0xec4083c calls `gl_dgl_info_more [0xec83600]` with a0=0x6, a1=0xecdee4c, a2=?, a3=?.
  The `bgezall` at 0xec40854 calls `gl_comm_io [0xec3fdb0]` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xec408f8 calls `gl_dgl_info_more [0xec83600]` with a0=0x6, a1=0xecdee42, a2=?, a3=?.
  The `bgezall` at 0xec40910 calls `gl_comm_io [0xec3fdb0]` with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xec40920 calls `gl_comm_fatal_error [0xec40ec0]` with a0=0xecdee46, a1=?, a2=?, a3=?.
  The `bgezall` at 0xec40944 calls `gl_comm_fatal_error [0xec40ec0]` with a0=0xecdee51, a1=?, a2=?, a3=?.
  The `bgezall` at 0xec4096c calls `gl_comm_default_init [0xec3fa40]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0xecd6c44.
  The `beq` branch at 0xec4077c has these conditions:
    taken when at(=[0xecdf610]) == 0.
    falls through when at(=[0xecdf610]) != 0.
  The `beq` branch at 0xec40790 has these conditions:
    taken when v1(?) == a0(=0x1).
    falls through when v1(?) != a0(=0x1).
  The `beq` branch at 0xec407ac has these conditions:
    taken when s2(?) == t8(=0x4).
    falls through when s2(?) != t8(=0x4).
  The `beq` branch at 0xec40800 has these conditions:
    taken when s1(?) >= s2(?) (signed).
    falls through when s1(?) < s2(?) (signed).
  The `bne` branch at 0xec4085c has these conditions:
    taken when v0(=ret(gl_comm_io)) != s2(?).
    falls through when v0(=ret(gl_comm_io)) == s2(?).
  The `beq` branch at 0xec408d0 has these conditions:
    taken when s1(?) >= s2(?) (signed).
    falls through when s1(?) < s2(?) (signed).
  The `beq` branch at 0xec40918 has these conditions:
    taken when v0(=ret(gl_comm_io)) == s1(?).
    falls through when v0(=ret(gl_comm_io)) != s1(?).
  The return at 0xec40894 has v0 = 0x0.
  The return at 0xec408a0 has v0 = 0x0.







- `_GLsetWM_COMMAND` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xecc86a0 (n32).
  It occupies 404 bytes.
  The `lw` at 0xecc86cc loads 4 bytes into s4 from abs 0xecdd000.
  The `lw` at 0xecc86d4 loads 4 bytes into s4 from sym(__Argc) +0x0.
  The `lw` at 0xecc86d8 loads 4 bytes into s6 from abs 0xecdd018.
  The `lw` at 0xecc86e4 loads 4 bytes into s6 from sym(__Argv) +0x0.
  The `lw` at 0xecc8730 loads 4 bytes into a1 from ? (base unknown).
  The `lw` at 0xecc8738 loads 4 bytes into t9 from abs 0xecdd0cc.
  The `lw` at 0xecc8744 loads 4 bytes into t9 from abs 0xecdbae8.
  The `lw` at 0xecc8748 loads 4 bytes into a1 from abs 0xecdabac.
  The `lw` at 0xecc8788 loads 4 bytes into t9 from abs 0xecdd0cc.
  The `lw` at 0xecc8790 loads 4 bytes into a0 from ? (base unknown).
  The `lw` at 0xecc87a8 loads 4 bytes into a1 from ? (base unknown).
  The `lw` at 0xecc87b0 loads 4 bytes into t9 from abs 0xecdd1a4.
  The `sb` at 0xecc87b4 stores byte from zero to ? (base unknown) (value 0x0).
  The `lw` at 0xecc87c8 loads 4 bytes into t9 from abs 0xecdd25c.
  The `lw` at 0xecc87dc loads 4 bytes into a1 from a0 (arg0 at entry) +0x40.
  The `lw` at 0xecc87e8 loads 4 bytes into a0 from a0 (arg0 at entry) +0x4.
  The `lw` at 0xecc87ec loads 4 bytes into t9 from abs 0xecdbaf0.
  The `lw` at 0xecc87f0 loads 4 bytes into a1 from abs 0xecdabac.
  The `jalr` at 0xecc8710 calls `strlen` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc8750 calls `gl_malloc [0xec5f4e0]` with a0=?, a1=0xecd2a00, a2=?, a3=?.
  The `jalr` at 0xecc8780 calls `strcpy` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc878c calls `strlen` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc87e4 calls `XChangeProperty` with a0=[a0+4], a1=[a0+64], a2=0x22, a3=0x1f, a4=0x8, a5=0x0, a6=ret(gl_malloc).
  The `jalr` at 0xecc87f8 calls `gl_free [0xec5f570]` with a0=ret(gl_malloc), a1=0xecd2a00, a2=?, a3=?.
  The `blez` branch at 0xecc86e8 has these conditions:
    taken when s4(=[sym(__Argc)]) <= 0 (signed).
    falls through when s4(=[sym(__Argc)]) > 0 (signed).
  The `beq` branch at 0xecc8728 has these conditions:
    taken when s0(?) >= s3(=(([sym(__Argc)] << 0x2) + [sym(__Argv)])) (unsigned).
    falls through when s0(?) < s3(=(([sym(__Argc)] << 0x2) + [sym(__Argv)])) (unsigned).
  The `bne` branch at 0xecc8734 has these conditions:
    taken when a1(?) != 0.
    falls through when a1(?) == 0.
  The `beq` branch at 0xecc8760 has these conditions:
    taken when v0(=ret(gl_malloc)) == 0.
    falls through when v0(=ret(gl_malloc)) != 0.
  The `blez` branch at 0xecc8768 has these conditions:
    taken when s4(=[sym(__Argc)]) <= 0 (signed).
    falls through when s4(=[sym(__Argc)]) > 0 (signed).
  The `beq` branch at 0xecc87a0 has these conditions:
    taken when s0(?) == s3(=(([sym(__Argc)] << 0x2) + [sym(__Argv)])).
    falls through when s0(?) != s3(=(([sym(__Argc)] << 0x2) + [sym(__Argv)])).
  The `bne` branch at 0xecc87ac has these conditions:
    taken when a1(?) != 0.
    falls through when a1(?) == 0.
  The return at 0xecc8824 has v0 = ?.







- `fcg_get_gfx_fifo_count` in `usr/gfx/gfxinfo` at 0x1000e7b4 (n32).
  It occupies 64 bytes.
  The `lw` at 0x1000e7c0 loads 4 bytes into a4 from abs 0x1002778c.
  The `lw` at 0x1000e7c4 loads 4 bytes into a4 from sym(ven_pipeaddr) +0x0.
  The `lw` at 0x1000e7d0 loads 4 bytes into a3 from [sym(ven_pipeaddr)] +0xa028.
  The `lw` at 0x1000e7d4 loads 4 bytes into a4 from [sym(ven_pipeaddr)] +0xa020.
  The `bne` branch at 0x1000e7dc has these conditions:
    taken when a3(=[[sym(ven_pipeaddr)]+41000]) < a4(=[[sym(ven_pipeaddr)]+40992]) (unsigned).
    falls through when a3(=[[sym(ven_pipeaddr)]+41000]) >= a4(=[[sym(ven_pipeaddr)]+40992]) (unsigned).
  The return at 0x1000e7e4 has v0 = ?.
  The return at 0x1000e7ec has v0 = ?.







- `wg_flush` in `usr/gfx/gfxinfo` at 0x1000ec4c (n32).
  It occupies 388 bytes.
  The `lw` at 0x1000ec60 loads 4 bytes into a4 from abs 0x10027720.
  The `lw` at 0x1000ec64 loads 4 bytes into a2 from sym(ven_iptype) +0x0.
  The `lw` at 0x1000ec8c loads 4 bytes into t9 from abs 0x100274a4.
  The `lw` at 0x1000ec98 loads 4 bytes into a1 from abs 0x1002783c.
  The `lw` at 0x1000ec9c loads 4 bytes into a2 from sym(ven_iptype) +0x0.
  The `lw` at 0x1000eca4 loads 4 bytes into t9 from abs 0x100274a4.
  The `lw` at 0x1000ecb0 loads 4 bytes into a1 from abs 0x100278a0.
  The `lw` at 0x1000ecb8 loads 4 bytes into t9 from abs 0x1002727c.
  The `lw` at 0x1000ecbc loads 4 bytes into a2 from [0x100278a0] +0x0.
  The `lw` at 0x1000ece4 loads 4 bytes into a2 from sym(ven_iptype) +0x0.
  The `lw` at 0x1000ecf4 loads 4 bytes into t9 from abs 0x100274a4.
  The `lw` at 0x1000ed08 loads 4 bytes into a1 from abs 0x10027838.
  The `sw` at 0x1000ed0c stores 4 bytes from a3 to [0x10027838] +0x1fe0 (value 0xffffffffdeadbeef).
  The `lw` at 0x1000ed1c loads 4 bytes into t9 from abs 0x100274a4.
  The `lw` at 0x1000ed28 loads 4 bytes into a4 from abs 0x10027720.
  The `lw` at 0x1000ed34 loads 4 bytes into a2 from sym(ven_iptype) +0x0.
  The `sw` at 0x1000ed3c stores 4 bytes from zero to [0x1002783c] +0x20 (value 0x0).
  The `lw` at 0x1000ed48 loads 4 bytes into a4 from abs 0x10027720.
  The `lw` at 0x1000ed74 loads 4 bytes into a1 from abs 0x100278a0.
  The `lw` at 0x1000ed78 loads 4 bytes into ra from abs 0x1002783c.
  The `sw` at 0x1000ed80 stores 4 bytes from at to [0x1002783c] +0x0 (value 0xff).
  The `sw` at 0x1000ed88 stores 4 bytes from a3 to [0x1002783c] +0x0 (value 0xffffffffdeadbeef).
  The `lw` at 0x1000ed8c loads 4 bytes into v0 from abs 0x10027840.
  The `sw` at 0x1000ed94 stores 4 bytes from v1 to [0x10027840] +0x0 (value 0xff).
  The `sw` at 0x1000ed9c stores 4 bytes from a3 to [0x10027840] +0x0 (value 0xffffffffdeadbeef).
  The `lw` at 0x1000eda0 loads 4 bytes into t9 from abs 0x100274a4.
  The `lw` at 0x1000edac loads 4 bytes into a4 from abs 0x10027720.
  The `jal` at 0x1000ed20 calls `get_ven_iptype [0x1000fc1c]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(ven_iptype)], a3=a3 at entry (arg3), a4=sym(ven_iptype).
  The `jal` at 0x1000ed40 calls `get_ven_iptype [0x1000fc1c]` with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype).
  The `jal` at 0x1000ed54 calls `get_ven_iptype [0x1000fc1c]` with a0=?, a1=[0x1002783c], a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype).
  The `jal` at 0x1000ed68 calls `(unnamed) [0x1000eb88]` with a0=0x19, a1=[0x100278a0], a2=?, a3=?.
  The `jal` at 0x1000eda4 calls `get_ven_iptype [0x1000fc1c]` with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype), a5=[sym(ven_iptype)].
  The `jal` at 0x1000edb8 calls `get_ven_iptype [0x1000fc1c]` with a0=?, a1=?, a2=[sym(ven_iptype)], a3=0xffffffffdeadbeef, a4=sym(ven_iptype), a6=0x19.
  The `beq` branch at 0x1000ec70 has these conditions:
    taken when a2(=[sym(ven_iptype)]) == s0(=-0x1).
    falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ec80 has these conditions:
    taken when a3(?) == v0(=0x13).
    falls through when a3(?) != v0(=0x13).
  The `beq` branch at 0x1000ec88 has these conditions:
    taken when a2(=[sym(ven_iptype)]) == s0(=-0x1).
    falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ec94 has these conditions:
    taken when a2(?) == v1(=0x15).
    falls through when a2(?) != v1(=0x15).
  The `beq` branch at 0x1000eca0 has these conditions:
    taken when a2(=[sym(ven_iptype)]) == s0(=-0x1).
    falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `bne` branch at 0x1000ecac has these conditions:
    taken when a2(?) != a0(=0x19).
    falls through when a2(?) == a0(=0x19).
  The `beq` branch at 0x1000ecb4 has these conditions:
    taken when s0(=-0x1) == a1(=[0x100278a0]).
    falls through when s0(=-0x1) != a1(=[0x100278a0]).
  The `beq` branch at 0x1000ecd4 has these conditions:
    taken when a2(=[sym(ven_iptype)]) == s0(=-0x1).
    falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ece8 has these conditions:
    taken when a5(?) == a6(=0x19).
    falls through when a5(?) != a6(=0x19).
  The `beq` branch at 0x1000ecf0 has these conditions:
    taken when a2(=[sym(ven_iptype)]) == s0(=-0x1).
    falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ed04 has these conditions:
    taken when a2(?) == a7(=0x15).
    falls through when a2(?) != a7(=0x15).
  The return at 0x1000eccc has v0 = ?.
  The return at 0x1000ed14 has v0 = ?.







- `venice_fifo_hack` in `usr/gfx/gfxinfo` at 0x1000fd1c (n32).
  It occupies 220 bytes.
  The `lw` at 0x1000fd5c loads 4 bytes into s5 from abs 0x100277d8.
  The `lw` at 0x1000fd60 loads 4 bytes into t9 from abs 0x10027360.
  The `lw` at 0x1000fd68 loads 4 bytes into a0 from abs 0x100272b0.
  The `lw` at 0x1000fd7c loads 4 bytes into s5 from abs 0x100277d8.
  The `lw` at 0x1000fd80 loads 4 bytes into a1 from sym(VEN_info) +0x2c.
  The `lw` at 0x1000fd84 loads 4 bytes into s4 from abs 0x100274b8.
  The `lw` at 0x1000fdac loads 4 bytes into a2 from sym(VEN_info) +0x2c.
  The `jalr` at 0x1000fd74 calls `printf` with a0=0x100243b8, a1=?, a2=?, a3=?.
  The `jal` at 0x1000fda4 calls `venice_rmfifo [0x1000fdf8]` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1000fd50 has these conditions:
    taken when a1 == 0.
    falls through when a1 != 0.
  The `beq` branch at 0x1000fd58 has these conditions:
    taken when a0 == 0.
    falls through when a0 != 0.
  The `blez` branch at 0x1000fd88 has these conditions:
    taken when a1(=[sym(VEN_info)+44]) <= 0 (signed).
    falls through when a1(=[sym(VEN_info)+44]) > 0 (signed).
  The `bne` branch at 0x1000fdb8 has these conditions:
    taken when s0(?) < a2(=[sym(VEN_info)+44]) (signed).
    falls through when s0(?) >= a2(=[sym(VEN_info)+44]) (signed).
  The return at 0x1000fde0 has v0 = ?.







- `internal_fifo_flow_control` in `usr/gfx/gfxinfo` at 0x100120d8 (n32).
  It occupies 8 bytes.
  The return at 0x100120d8 has v0 = ?.







- `fcg_get_gfx_fifo_count` in `usr/gfx/setmon` at 0x1001015c (n32).
  It occupies 64 bytes.
  The `lw` at 0x10010168 loads 4 bytes into a4 from abs 0x10041d94.
  The `lw` at 0x1001016c loads 4 bytes into a4 from sym(ven_pipeaddr) +0x0.
  The `lw` at 0x10010178 loads 4 bytes into a3 from [sym(ven_pipeaddr)] +0xa028.
  The `lw` at 0x1001017c loads 4 bytes into a4 from [sym(ven_pipeaddr)] +0xa020.
  The `bne` branch at 0x10010184 has these conditions:
    taken when a3(=[[sym(ven_pipeaddr)]+41000]) < a4(=[[sym(ven_pipeaddr)]+40992]) (unsigned).
    falls through when a3(=[[sym(ven_pipeaddr)]+41000]) >= a4(=[[sym(ven_pipeaddr)]+40992]) (unsigned).
  The return at 0x1001018c has v0 = ?.
  The return at 0x10010194 has v0 = ?.







- `wg_flush` in `usr/gfx/setmon` at 0x100105f4 (n32).
  It occupies 388 bytes.
  The `lw` at 0x10010608 loads 4 bytes into a4 from abs 0x10041c94.
  The `lw` at 0x1001060c loads 4 bytes into a2 from sym(ven_iptype) +0x0.
  The `lw` at 0x10010634 loads 4 bytes into t9 from abs 0x10041a58.
  The `lw` at 0x10010640 loads 4 bytes into a1 from abs 0x10041dbc.
  The `lw` at 0x10010644 loads 4 bytes into a2 from sym(ven_iptype) +0x0.
  The `lw` at 0x1001064c loads 4 bytes into t9 from abs 0x10041a58.
  The `lw` at 0x10010658 loads 4 bytes into a1 from abs 0x10042340.
  The `lw` at 0x10010660 loads 4 bytes into t9 from abs 0x10041778.
  The `lw` at 0x10010664 loads 4 bytes into a2 from [0x10042340] +0x0.
  The `lw` at 0x1001068c loads 4 bytes into a2 from sym(ven_iptype) +0x0.
  The `lw` at 0x1001069c loads 4 bytes into t9 from abs 0x10041a58.
  The `lw` at 0x100106b0 loads 4 bytes into a1 from abs 0x10041db8.
  The `sw` at 0x100106b4 stores 4 bytes from a3 to [0x10041db8] +0x1fe0 (value 0xffffffffdeadbeef).
  The `lw` at 0x100106c4 loads 4 bytes into t9 from abs 0x10041a58.
  The `lw` at 0x100106d0 loads 4 bytes into a4 from abs 0x10041c94.
  The `lw` at 0x100106dc loads 4 bytes into a2 from sym(ven_iptype) +0x0.
  The `sw` at 0x100106e4 stores 4 bytes from zero to [0x10041dbc] +0x20 (value 0x0).
  The `lw` at 0x100106f0 loads 4 bytes into a4 from abs 0x10041c94.
  The `lw` at 0x1001071c loads 4 bytes into a1 from abs 0x10042340.
  The `lw` at 0x10010720 loads 4 bytes into ra from abs 0x10041dbc.
  The `sw` at 0x10010728 stores 4 bytes from at to [0x10041dbc] +0x0 (value 0xff).
  The `sw` at 0x10010730 stores 4 bytes from a3 to [0x10041dbc] +0x0 (value 0xffffffffdeadbeef).
  The `lw` at 0x10010734 loads 4 bytes into v0 from abs 0x10041dc0.
  The `sw` at 0x1001073c stores 4 bytes from v1 to [0x10041dc0] +0x0 (value 0xff).
  The `sw` at 0x10010744 stores 4 bytes from a3 to [0x10041dc0] +0x0 (value 0xffffffffdeadbeef).
  The `lw` at 0x10010748 loads 4 bytes into t9 from abs 0x10041a58.
  The `lw` at 0x10010754 loads 4 bytes into a4 from abs 0x10041c94.
  The `jal` at 0x100106c8 calls `get_ven_iptype [0x1000fea0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(ven_iptype)], a3=a3 at entry (arg3), a4=sym(ven_iptype).
  The `jal` at 0x100106e8 calls `get_ven_iptype [0x1000fea0]` with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype).
  The `jal` at 0x100106fc calls `get_ven_iptype [0x1000fea0]` with a0=?, a1=[0x10041dbc], a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype).
  The `jal` at 0x10010710 calls `(unnamed) [0x10010530]` with a0=0x19, a1=[0x10042340], a2=?, a3=?.
  The `jal` at 0x1001074c calls `get_ven_iptype [0x1000fea0]` with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype), a5=[sym(ven_iptype)].
  The `jal` at 0x10010760 calls `get_ven_iptype [0x1000fea0]` with a0=?, a1=?, a2=[sym(ven_iptype)], a3=0xffffffffdeadbeef, a4=sym(ven_iptype), a6=0x19.
  The `beq` branch at 0x10010618 has these conditions:
    taken when a2(=[sym(ven_iptype)]) == s0(=-0x1).
    falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x10010628 has these conditions:
    taken when a3(?) == v0(=0x13).
    falls through when a3(?) != v0(=0x13).
  The `beq` branch at 0x10010630 has these conditions:
    taken when a2(=[sym(ven_iptype)]) == s0(=-0x1).
    falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1001063c has these conditions:
    taken when a2(?) == v1(=0x15).
    falls through when a2(?) != v1(=0x15).
  The `beq` branch at 0x10010648 has these conditions:
    taken when a2(=[sym(ven_iptype)]) == s0(=-0x1).
    falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `bne` branch at 0x10010654 has these conditions:
    taken when a2(?) != a0(=0x19).
    falls through when a2(?) == a0(=0x19).
  The `beq` branch at 0x1001065c has these conditions:
    taken when s0(=-0x1) == a1(=[0x10042340]).
    falls through when s0(=-0x1) != a1(=[0x10042340]).
  The `beq` branch at 0x1001067c has these conditions:
    taken when a2(=[sym(ven_iptype)]) == s0(=-0x1).
    falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x10010690 has these conditions:
    taken when a5(?) == a6(=0x19).
    falls through when a5(?) != a6(=0x19).
  The `beq` branch at 0x10010698 has these conditions:
    taken when a2(=[sym(ven_iptype)]) == s0(=-0x1).
    falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x100106ac has these conditions:
    taken when a2(?) == a7(=0x15).
    falls through when a2(?) != a7(=0x15).
  The return at 0x10010674 has v0 = ?.
  The return at 0x100106bc has v0 = ?.







- `venice_fifo_hack` in `usr/gfx/setmon` at 0x1001113c (n32).
  It occupies 220 bytes.
  The `lw` at 0x1001117c loads 4 bytes into s5 from abs 0x10041d9c.
  The `lw` at 0x10011180 loads 4 bytes into t9 from abs 0x10041870.
  The `lw` at 0x10011188 loads 4 bytes into a0 from abs 0x100417b4.
  The `lw` at 0x1001119c loads 4 bytes into s5 from abs 0x10041d9c.
  The `lw` at 0x100111a0 loads 4 bytes into a1 from sym(VEN_info) +0x2c.
  The `lw` at 0x100111a4 loads 4 bytes into s4 from abs 0x10041a70.
  The `lw` at 0x100111cc loads 4 bytes into a2 from sym(VEN_info) +0x2c.
  The `jalr` at 0x10011194 calls `printf` with a0=0x1003f468, a1=?, a2=?, a3=?.
  The `jal` at 0x100111c4 calls `venice_rmfifo [0x10011218]` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10011170 has these conditions:
    taken when a1 == 0.
    falls through when a1 != 0.
  The `beq` branch at 0x10011178 has these conditions:
    taken when a0 == 0.
    falls through when a0 != 0.
  The `blez` branch at 0x100111a8 has these conditions:
    taken when a1(=[sym(VEN_info)+44]) <= 0 (signed).
    falls through when a1(=[sym(VEN_info)+44]) > 0 (signed).
  The `bne` branch at 0x100111d8 has these conditions:
    taken when s0(?) < a2(=[sym(VEN_info)+44]) (signed).
    falls through when s0(?) >= a2(=[sym(VEN_info)+44]) (signed).
  The return at 0x10011200 has v0 = ?.







- `push` in `usr/lib32/libfm.so` at 0xee18880 (n32).
  It occupies 40 bytes.
  The `lw` at 0xee18880 loads 4 bytes into a1 from abs 0xee65104.
  The `lw` at 0xee18884 loads 4 bytes into at from abs 0xee65104.
  The `lw` at 0xee18888 loads 4 bytes into v1 from abs 0xee71000.
  The `sw` at 0xee18898 stores 4 bytes from v1 to abs 0xee71000 (value [0xee71000]+1).
  The `sw` at 0xee188a4 stores 4 bytes from a0 to table(0xee70060) +0x0 (value a0).
  The return at 0xee188a0 has v0 = ([0xee71000] << 0x2).







- `NO_TOKEN` in `usr/lib32/libfm.so` at 0xee4f1d8 (n32).
  It occupies 32 bytes.
  The `lw` at 0xee4f1e4 loads 4 bytes into a0 from abs 0xee65a28.
  The `sw` at 0xee4f1f4 stores 4 bytes from v1 to sym(tokenType) +0x0 (value -0x1).
  The return at 0xee4f1f0 has v0 = 0x100.







- `Push` in `usr/lib32/libfm.so` at 0xee506d4 (n32).
  It occupies 72 bytes.
  The `lw` at 0xee506d4 loads 4 bytes into t0 from abs 0xee65108.
  The `lw` at 0xee506d8 loads 4 bytes into a6 from abs 0xee81b18.
  The `lw` at 0xee506e4 loads 4 bytes into a2 from abs 0xee65108.
  The `lw` at 0xee506f0 loads 4 bytes into a3 from abs 0xee65104.
  The `sw` at 0xee506fc stores 4 bytes from a7 to abs 0xee81b18 (value [0xee81b18]+1).
  The `sdc1` at 0xee5070c stores 8 bytes from $f12 to table(0xee81a58) +0x0 (value f12).
  The `sw` at 0xee50710 stores 4 bytes from a4 to abs 0xee769cc (value 0x1).
  The `beq` branch at 0xee50700 has these conditions:
    taken when a6(=[0xee81b18]) >= 0x17 (signed).
    falls through when a6(=[0xee81b18]) < 0x17 (signed).
  The return at 0xee50708 has v0 = 0x0.
  The return at 0xee50714 has v0 = 0x0.







- `init_gfx_group_table` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x124 (n64).
  It occupies 100 bytes.
  The `ld` at 0x124 loads 8 bytes into at from sym(gfx_group_table) +0x0.
  The `sd` at 0x14c stores 8 bytes from v0 to sym(gfx_group_table) +0x0 (value ret(kern_malloc)).
  The `ld` at 0x158 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `sw` at 0x170 stores 4 bytes from zero to sym(gfx_group_table_lock) +0x0 (value 0x0).
  The `ld` at 0x17c loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `ld` at 0x184 loads 8 bytes into a0 from sym(gfx_group_table) +0x0.
  The `jal` at 0x13c calls `kern_malloc` with a0=0x80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x150 calls `bzero` with a0=?, a1=0x80, a2=?, a3=?.
  The `jal` at 0x160 calls `spinlock_init` with a0=sym(gfx_group_table_lock)+4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x178 calls `cmn_err` with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x12c has these conditions:
    taken when at(=[sym(gfx_group_table)]:8) == 0.
    falls through when at(=[sym(gfx_group_table)]:8) != 0.
  The `beq` branch at 0x148 has these conditions:
    taken when v0(=ret(kern_malloc)) == 0.
    falls through when v0(=ret(kern_malloc)) != 0.
  The return at 0x134 has v0 = ?.







- `gfx_group_create` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x240 (n64).
  It occupies 188 bytes.
  The `ld` at 0x270 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `sw` at 0x278 stores 4 bytes from zero to ret(kern_malloc) +0x8 (value 0x0).
  The `sd` at 0x27c stores 8 bytes from v0 to ret(kern_malloc) +0x0 (value ret(threadhandle_to_threadgrouphandle)).
  The `ld` at 0x288 loads 8 bytes into a0 from ret(kern_malloc) +0x0.
  The `sw` at 0x290 stores 4 bytes from zero to ret(kern_malloc) +0xc (value 0x0).
  The `ld` at 0x2ac loads 8 bytes into a4 from sym(gfx_group_table) +0x0.
  The `ld` at 0x2bc loads 8 bytes into a4 from ? (base unknown).
  The `sd` at 0x2c0 stores 8 bytes from a4 to ret(kern_malloc) +0x18 (value unknown).
  The `ld` at 0x2c4 loads 8 bytes into a2 from sym(gfx_group_table) +0x0.
  The `sd` at 0x2d8 stores 8 bytes from s0 to ? (base unknown) (value ret(kern_malloc)).
  The `jal` at 0x250 calls `kern_malloc` with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x268 calls `threadhandle_to_threadgrouphandle` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x280 calls `spinlock_init` with a0=ret(kern_malloc)+16, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2a0 calls `gfxtable_writerlock` with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x2d4 calls `gfxtable_writerunlock` with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `bne` branch at 0x258 has these conditions:
    taken when v0(=ret(kern_malloc)) != 0.
    falls through when v0(=ret(kern_malloc)) == 0.
  The `beq` branch at 0x294 has these conditions:
    taken when (a0(=[ret(kern_malloc)]:8) & 0xf) == 0.
    falls through when (a0(=[ret(kern_malloc)]:8) & 0xf) != 0.
  The return at 0x2e8 has v0 = ?.







- `gfx_group_destroy` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x2fc (n64).
  It occupies 208 bytes.
  The `ld` at 0x300 loads 8 bytes into a1 from a0 (arg0 at entry) +0x0.
  The `ld` at 0x32c loads 8 bytes into a4 from sym(gfx_group_table) +0x0.
  The `ld` at 0x33c loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x348 loads 8 bytes into a5 from a0 (arg0 at entry) +0x0.
  The `ld` at 0x34c loads 8 bytes into a6 from ? (base unknown).
  The `ld` at 0x35c loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x368 loads 8 bytes into a6 from ? (base unknown).
  The `ld` at 0x37c loads 8 bytes into a7 from ? (base unknown).
  The `sd` at 0x384 stores 8 bytes from a7 to ? (base unknown) (value unknown).
  The `jal` at 0x324 calls `gfxtable_writerlock` with a0=sym(gfx_group_table_lock), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x390 calls `gfxtable_writerunlock` with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `jal` at 0x3a0 calls `spinlock_destroy` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3a8 calls `kern_free` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x318 has these conditions:
    taken when (a1(=[a0]:8) & 0xf) == 0.
    falls through when (a1(=[a0]:8) & 0xf) != 0.
  The `beq` branch at 0x340 has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `beq` branch at 0x350 has these conditions:
    taken when a6(?) == a5(=[a0]:8).
    falls through when a6(?) != a5(=[a0]:8).
  The `beq` branch at 0x360 has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `bne` branch at 0x36c has these conditions:
    taken when a6(?) != a5(=[a0]:8).
    falls through when a6(?) == a5(=[a0]:8).
  The `beq` branch at 0x374 has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `beq` branch at 0x398 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The return at 0x3bc has v0 = ?.







- `gfx_shdup` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x1234 (n64).
  It occupies 124 bytes.
  The `ld` at 0x1250 loads 8 bytes into v0 from ret(gthread_find) +0x10.
  The `ld` at 0x125c loads 8 bytes into a4 from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x1268 loads 4 bytes into at from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `ld` at 0x129c loads 8 bytes into a1 from ret(gthread_find) +0x10.
  The `jal` at 0x1240 calls `gthread_find` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1284 calls `gthread_create` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a4=[[ret(gthread_find)+16]:8+24]:8.
  The `jal` at 0x1298 calls `gthread_attach_list` with a0=ret(gthread_create), a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0x12a0 calls `setgfxsched_thread` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1248 has these conditions:
    taken when v0(=ret(gthread_find)) == 0.
    falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x1254 has these conditions:
    taken when v0(=[ret(gthread_find)+16]:8) == 0.
    falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x1260 has these conditions:
    taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0.
    falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x1270 has these conditions:
    taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0.
    falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `beq` branch at 0x128c has these conditions:
    taken when v0(=ret(gthread_create)) == 0.
    falls through when v0(=ret(gthread_create)) != 0.
  The return at 0x127c has v0 = ?.







- `gfx_conflict_scan` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x1e44 (n64).
  It occupies 228 bytes.
  The `ld` at 0x1e7c loads 8 bytes into v0 from a0 (arg0 at entry) +0x18.
  The `ld` at 0x1e88 loads 8 bytes into v1 from a1 (arg1 at entry) +0x8.
  The `ld` at 0x1e8c loads 8 bytes into at from [a0+24]:8 +0x0.
  The `ld` at 0x1ea0 loads 8 bytes into v0 from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1ea4 loads 4 bytes into a1 from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1eb0 loads 8 bytes into s0 from [a0+16]:8 +0x18.
  The `lw` at 0x1ecc loads 4 bytes into a4 from ? (base unknown).
  The `ld` at 0x1f08 loads 8 bytes into s0 from ? (base unknown).
  The `sw` at 0x1f24 stores 4 bytes from a7 to a1 (arg1 at entry) +0x0 (value 0x3).
  The `jal` at 0x1ec4 calls `psema` with a0=?, a1=0x19, a2=?, a3=?.
  The `jal` at 0x1ef0 calls `vsema` with a0=?, a1=?, a2=one of 0x1, 0x2, a3=?, a4=0x1.
  The `beq` branch at 0x1e5c has these conditions:
    taken when a2 == a5(=0x1).
    falls through when a2 != a5(=0x1).
  The `beq` branch at 0x1e80 has these conditions:
    taken when v0(=[a0+24]:8) == 0.
    falls through when v0(=[a0+24]:8) != 0.
  The `beq` branch at 0x1e90 has these conditions:
    taken when at(=[[a0+24]:8]:8) == v1(=[a1+8]:8).
    falls through when at(=[[a0+24]:8]:8) != v1(=[a1+8]:8).
  The `beq` branch at 0x1ea8 has these conditions:
    taken when v0(=[a0+16]:8) == 0.
    falls through when v0(=[a0+16]:8) != 0.
  The `beq` branch at 0x1eb4 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x1f00 has these conditions:
    taken when a5(?) != a6(?).
    falls through when a5(?) == a6(?).
  The `bne` branch at 0x1f0c has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The return at 0x1e74 has v0 = one of 0x0, 0x1.







- `gfx_shalloc` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x336c (n64).
  It occupies 192 bytes.
  The `ld` at 0x33b4 loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `ld` at 0x33c8 loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `ld` at 0x33cc loads 8 bytes into a4 from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x33dc loads 4 bytes into at from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `sd` at 0x33ec stores 8 bytes from s0 to ? (base unknown) (value ret(gfx_group_create)).
  The `ld` at 0x33f0 loads 8 bytes into a4 from ? (base unknown).
  The `ld` at 0x33fc loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `sw` at 0x3428 stores 4 bytes from a5 to ret(gfx_group_create) +0xc (value 0x1).
  The `jal` at 0x3374 calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x337c calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x338c calls `gfx_group_create` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x3398 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x33ac calls `gthread_attach_group` with a0=ret(gthread_find), a1=ret(gfx_group_create), a2=?, a3=?.
  The `jal` at 0x33c0 calls `GfxListWriterLock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3400 calls `GfxListWriterUnlock` with a0=[ret(gthread_find)+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=?, a5=0x1.
  The `jal` at 0x3408 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x33a0 has these conditions:
    taken when v0(=ret(gthread_find)) == 0.
    falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x33b8 has these conditions:
    taken when a0(=[ret(gthread_find)+16]:8) == 0.
    falls through when a0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x33d4 has these conditions:
    taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0.
    falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x33e4 has these conditions:
    taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0.
    falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `bne` branch at 0x33f4 has these conditions:
    taken when a4(?) != 0.
    falls through when a4(?) == 0.
  The return at 0x341c has v0 = ret(splx); f0 = ret(splx).







- `gfx_shfree` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x342c (n64).
  It occupies 44 bytes.
  The `jal` at 0x3434 calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x343c calls `gfx_group_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x3444 calls `gfx_group_destroy` with a0=ret(gfx_group_find), a1=?, a2=?, a3=?.
  The return at 0x3450 has v0 = ret(gfx_group_destroy); f0 = ret(gfx_group_destroy).







- `gfx_frs_valid_pipenum` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x3458 (n64).
  It occupies 12 bytes.
  The `lw` at 0x3458 loads 4 bytes into v0 from sym(GfxNumberOfBoards) +0x0.
  The return at 0x345c has v0 = ?.







- `gfx_frs_install` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x3464 (n64).
  It occupies 88 bytes.
  The `ld` at 0x3464 loads 8 bytes into a4 from sym(.srdata) +0x8.
  The `ld` at 0x3470 loads 8 bytes into a4 from (sym(GfxBoards) + (a1 << 0x3)) +0x0.
  The `ld` at 0x3474 loads 8 bytes into a3 from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x38.
  The `ld` at 0x3478 loads 8 bytes into a3 from [[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8 +0xd0.
  The `ld` at 0x348c loads 8 bytes into a0 from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x40.
  The `ld` at 0x34a4 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `jalr` at 0x3490 calls `(unknown callee)` with a0=[[(sym(GfxBoards) + (a1 << 0x3))]:8+64]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `jal` at 0x34ac calls `cmn_err` with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `beq` branch at 0x3484 has these conditions:
    taken when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) == 0.
    falls through when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) != 0.
  The return at 0x349c has v0 = ?.







- `gfx_frs_uninstall` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x34bc (n64).
  It occupies 80 bytes.
  The `ld` at 0x34bc loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `ld` at 0x34c8 loads 8 bytes into a2 from (sym(GfxBoards) + (a0 << 0x3)) +0x0.
  The `ld` at 0x34cc loads 8 bytes into a3 from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x38.
  The `ld` at 0x34d0 loads 8 bytes into a3 from [[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8 +0xd8.
  The `ld` at 0x34e4 loads 8 bytes into a0 from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x40.
  The `ld` at 0x34f4 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `jalr` at 0x34e0 calls `(unknown callee)` with a0=[[(sym(GfxBoards) + (a0 << 0x3))]:8+64]:8, a1=a1 at entry (arg1), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `jal` at 0x34fc calls `cmn_err` with a0=0x5, a1=sym(.rodata), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `beq` branch at 0x34d8 has these conditions:
    taken when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) == 0.
    falls through when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) != 0.
  The return at 0x34ec has v0 = ?.







- `irix5_to_gfx_getboardinfo_args` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x350c (n64).
  It occupies 120 bytes.
  The `lw` at 0x3520 loads 4 bytes into at from a3 (arg3 at entry) +0x0.
  The `ld` at 0x3530 loads 8 bytes into v0 from a3 (arg3 at entry) +0x8.
  The `sd` at 0x3534 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x353c stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0xc).
  The `ld` at 0x3548 loads 8 bytes into a0 from a3 (arg3 at entry) +0x10.
  The `lw` at 0x354c loads 4 bytes into a3 from [a3+16]:8 +0x0.
  The `sw` at 0x3550 stores 4 bytes from a3 to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `lwu` at 0x3554 loads 4 bytes into a2 from [a3+16]:8 +0x4.
  The `sd` at 0x3558 stores 8 bytes from a2 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+4]).
  The `lw` at 0x355c loads 4 bytes into a0 from [a3+16]:8 +0x8.
  The `sw` at 0x3560 stores 4 bytes from a0 to a1 (arg1 at entry) +0x10 (value [[a3+16]:8+8]).
  The `sd` at 0x3580 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x3570 calls `kern_malloc` with a0=0xc, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3518 has these conditions:
    taken when a0 != 0.
    falls through when a0 == 0.
  The `bne` branch at 0x3528 has these conditions:
    taken when at(=[a3]) < 0xc (unsigned).
    falls through when at(=[a3]) >= 0xc (unsigned).
  The return at 0x3568 has v0 = 0x0.







- `irix5_to_gfx_download_args` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x3584 (n64).
  It occupies 160 bytes.
  The `lw` at 0x3598 loads 4 bytes into at from a3 (arg3 at entry) +0x0.
  The `ld` at 0x35a8 loads 8 bytes into v0 from a3 (arg3 at entry) +0x8.
  The `sd` at 0x35ac stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x35b4 stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0x20).
  The `ld` at 0x35c0 loads 8 bytes into a0 from a3 (arg3 at entry) +0x10.
  The `lw` at 0x35c4 loads 4 bytes into t0 from [a3+16]:8 +0x0.
  The `sw` at 0x35c8 stores 4 bytes from t0 to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `lwu` at 0x35cc loads 4 bytes into a7 from [a3+16]:8 +0x4.
  The `sd` at 0x35d0 stores 8 bytes from a7 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+4]).
  The `lw` at 0x35d4 loads 4 bytes into a6 from [a3+16]:8 +0x8.
  The `sw` at 0x35d8 stores 4 bytes from a6 to a1 (arg1 at entry) +0x10 (value [[a3+16]:8+8]).
  The `lw` at 0x35dc loads 4 bytes into a5 from [a3+16]:8 +0xc.
  The `sw` at 0x35e0 stores 4 bytes from a5 to a1 (arg1 at entry) +0x14 (value [[a3+16]:8+12]).
  The `lw` at 0x35e4 loads 4 bytes into a4 from [a3+16]:8 +0x10.
  The `sw` at 0x35e8 stores 4 bytes from a4 to a1 (arg1 at entry) +0x18 (value [[a3+16]:8+16]).
  The `lw` at 0x35ec loads 4 bytes into a3 from [a3+16]:8 +0x14.
  The `sw` at 0x35f0 stores 4 bytes from a3 to a1 (arg1 at entry) +0x1c (value [[a3+16]:8+20]).
  The `lw` at 0x35f4 loads 4 bytes into a2 from [a3+16]:8 +0x18.
  The `sw` at 0x35f8 stores 4 bytes from a2 to a1 (arg1 at entry) +0x20 (value [[a3+16]:8+24]).
  The `lw` at 0x35fc loads 4 bytes into a0 from [a3+16]:8 +0x1c.
  The `sw` at 0x3600 stores 4 bytes from a0 to a1 (arg1 at entry) +0x24 (value [[a3+16]:8+28]).
  The `sd` at 0x3620 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x3610 calls `kern_malloc` with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3590 has these conditions:
    taken when a0 != 0.
    falls through when a0 == 0.
  The `bne` branch at 0x35a0 has these conditions:
    taken when at(=[a3]) < 0x20 (unsigned).
    falls through when at(=[a3]) >= 0x20 (unsigned).
  The return at 0x3608 has v0 = 0x0.







- `irix5_to_gfx_attach_board_args` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x3624 (n64).
  It occupies 112 bytes.
  The `lw` at 0x3638 loads 4 bytes into at from a3 (arg3 at entry) +0x0.
  The `ld` at 0x3648 loads 8 bytes into v0 from a3 (arg3 at entry) +0x8.
  The `sd` at 0x364c stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x3654 stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0x8).
  The `ld` at 0x3660 loads 8 bytes into a0 from a3 (arg3 at entry) +0x10.
  The `lw` at 0x3664 loads 4 bytes into a2 from [a3+16]:8 +0x0.
  The `sw` at 0x3668 stores 4 bytes from a2 to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `lwu` at 0x366c loads 4 bytes into a0 from [a3+16]:8 +0x4.
  The `sd` at 0x3670 stores 8 bytes from a0 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+4]).
  The `sd` at 0x3690 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x3680 calls `kern_malloc` with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3630 has these conditions:
    taken when a0 != 0.
    falls through when a0 == 0.
  The `bne` branch at 0x3640 has these conditions:
    taken when at(=[a3]) < 0x8 (unsigned).
    falls through when at(=[a3]) >= 0x8 (unsigned).
  The return at 0x3678 has v0 = 0x0.







- `init_gfx_group_table` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x124 (n64).
  It occupies 100 bytes.
  The `ld` at 0x124 loads 8 bytes into at from sym(gfx_group_table) +0x0.
  The `sd` at 0x14c stores 8 bytes from v0 to sym(gfx_group_table) +0x0 (value ret(kern_malloc)).
  The `ld` at 0x158 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `sw` at 0x170 stores 4 bytes from zero to sym(gfx_group_table_lock) +0x0 (value 0x0).
  The `ld` at 0x17c loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `ld` at 0x184 loads 8 bytes into a0 from sym(gfx_group_table) +0x0.
  The `jal` at 0x13c calls `kern_malloc` with a0=0x80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x150 calls `bzero` with a0=?, a1=0x80, a2=?, a3=?.
  The `jal` at 0x160 calls `spinlock_init` with a0=sym(gfx_group_table_lock)+4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x178 calls `cmn_err` with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x12c has these conditions:
    taken when at(=[sym(gfx_group_table)]:8) == 0.
    falls through when at(=[sym(gfx_group_table)]:8) != 0.
  The `beq` branch at 0x148 has these conditions:
    taken when v0(=ret(kern_malloc)) == 0.
    falls through when v0(=ret(kern_malloc)) != 0.
  The return at 0x134 has v0 = ?.







- `gfx_group_create` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x240 (n64).
  It occupies 188 bytes.
  The `ld` at 0x270 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `sw` at 0x278 stores 4 bytes from zero to ret(kern_malloc) +0x8 (value 0x0).
  The `sd` at 0x27c stores 8 bytes from v0 to ret(kern_malloc) +0x0 (value ret(threadhandle_to_threadgrouphandle)).
  The `ld` at 0x288 loads 8 bytes into a0 from ret(kern_malloc) +0x0.
  The `sw` at 0x290 stores 4 bytes from zero to ret(kern_malloc) +0xc (value 0x0).
  The `ld` at 0x2ac loads 8 bytes into a4 from sym(gfx_group_table) +0x0.
  The `ld` at 0x2bc loads 8 bytes into a4 from ? (base unknown).
  The `sd` at 0x2c0 stores 8 bytes from a4 to ret(kern_malloc) +0x18 (value unknown).
  The `ld` at 0x2c4 loads 8 bytes into a2 from sym(gfx_group_table) +0x0.
  The `sd` at 0x2d8 stores 8 bytes from s0 to ? (base unknown) (value ret(kern_malloc)).
  The `jal` at 0x250 calls `kern_malloc` with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x268 calls `threadhandle_to_threadgrouphandle` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x280 calls `spinlock_init` with a0=ret(kern_malloc)+16, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2a0 calls `gfxtable_writerlock` with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x2d4 calls `gfxtable_writerunlock` with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `bne` branch at 0x258 has these conditions:
    taken when v0(=ret(kern_malloc)) != 0.
    falls through when v0(=ret(kern_malloc)) == 0.
  The `beq` branch at 0x294 has these conditions:
    taken when (a0(=[ret(kern_malloc)]:8) & 0xf) == 0.
    falls through when (a0(=[ret(kern_malloc)]:8) & 0xf) != 0.
  The return at 0x2e8 has v0 = ?.







- `gfx_group_destroy` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x2fc (n64).
  It occupies 208 bytes.
  The `ld` at 0x300 loads 8 bytes into a1 from a0 (arg0 at entry) +0x0.
  The `ld` at 0x32c loads 8 bytes into a4 from sym(gfx_group_table) +0x0.
  The `ld` at 0x33c loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x348 loads 8 bytes into a5 from a0 (arg0 at entry) +0x0.
  The `ld` at 0x34c loads 8 bytes into a6 from ? (base unknown).
  The `ld` at 0x35c loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x368 loads 8 bytes into a6 from ? (base unknown).
  The `ld` at 0x37c loads 8 bytes into a7 from ? (base unknown).
  The `sd` at 0x384 stores 8 bytes from a7 to ? (base unknown) (value unknown).
  The `jal` at 0x324 calls `gfxtable_writerlock` with a0=sym(gfx_group_table_lock), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x390 calls `gfxtable_writerunlock` with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `jal` at 0x3a0 calls `spinlock_destroy` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3a8 calls `kern_free` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x318 has these conditions:
    taken when (a1(=[a0]:8) & 0xf) == 0.
    falls through when (a1(=[a0]:8) & 0xf) != 0.
  The `beq` branch at 0x340 has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `beq` branch at 0x350 has these conditions:
    taken when a6(?) == a5(=[a0]:8).
    falls through when a6(?) != a5(=[a0]:8).
  The `beq` branch at 0x360 has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `bne` branch at 0x36c has these conditions:
    taken when a6(?) != a5(=[a0]:8).
    falls through when a6(?) == a5(=[a0]:8).
  The `beq` branch at 0x374 has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `beq` branch at 0x398 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The return at 0x3bc has v0 = ?.







- `gfx_shdup` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x1234 (n64).
  It occupies 124 bytes.
  The `ld` at 0x1250 loads 8 bytes into v0 from ret(gthread_find) +0x10.
  The `ld` at 0x125c loads 8 bytes into a4 from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x1268 loads 4 bytes into at from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `ld` at 0x129c loads 8 bytes into a1 from ret(gthread_find) +0x10.
  The `jal` at 0x1240 calls `gthread_find` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1284 calls `gthread_create` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a4=[[ret(gthread_find)+16]:8+24]:8.
  The `jal` at 0x1298 calls `gthread_attach_list` with a0=ret(gthread_create), a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0x12a0 calls `setgfxsched_thread` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1248 has these conditions:
    taken when v0(=ret(gthread_find)) == 0.
    falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x1254 has these conditions:
    taken when v0(=[ret(gthread_find)+16]:8) == 0.
    falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x1260 has these conditions:
    taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0.
    falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x1270 has these conditions:
    taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0.
    falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `beq` branch at 0x128c has these conditions:
    taken when v0(=ret(gthread_create)) == 0.
    falls through when v0(=ret(gthread_create)) != 0.
  The return at 0x127c has v0 = ?.







- `gfx_conflict_scan` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x1e44 (n64).
  It occupies 228 bytes.
  The `ld` at 0x1e7c loads 8 bytes into v0 from a0 (arg0 at entry) +0x18.
  The `ld` at 0x1e88 loads 8 bytes into v1 from a1 (arg1 at entry) +0x8.
  The `ld` at 0x1e8c loads 8 bytes into at from [a0+24]:8 +0x0.
  The `ld` at 0x1ea0 loads 8 bytes into v0 from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1ea4 loads 4 bytes into a1 from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1eb0 loads 8 bytes into s0 from [a0+16]:8 +0x18.
  The `lw` at 0x1ecc loads 4 bytes into a4 from ? (base unknown).
  The `ld` at 0x1f08 loads 8 bytes into s0 from ? (base unknown).
  The `sw` at 0x1f24 stores 4 bytes from a7 to a1 (arg1 at entry) +0x0 (value 0x3).
  The `jal` at 0x1ec4 calls `psema` with a0=?, a1=0x19, a2=?, a3=?.
  The `jal` at 0x1ef0 calls `vsema` with a0=?, a1=?, a2=one of 0x1, 0x2, a3=?, a4=0x1.
  The `beq` branch at 0x1e5c has these conditions:
    taken when a2 == a5(=0x1).
    falls through when a2 != a5(=0x1).
  The `beq` branch at 0x1e80 has these conditions:
    taken when v0(=[a0+24]:8) == 0.
    falls through when v0(=[a0+24]:8) != 0.
  The `beq` branch at 0x1e90 has these conditions:
    taken when at(=[[a0+24]:8]:8) == v1(=[a1+8]:8).
    falls through when at(=[[a0+24]:8]:8) != v1(=[a1+8]:8).
  The `beq` branch at 0x1ea8 has these conditions:
    taken when v0(=[a0+16]:8) == 0.
    falls through when v0(=[a0+16]:8) != 0.
  The `beq` branch at 0x1eb4 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x1f00 has these conditions:
    taken when a5(?) != a6(?).
    falls through when a5(?) == a6(?).
  The `bne` branch at 0x1f0c has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The return at 0x1e74 has v0 = one of 0x0, 0x1.







- `gfx_shalloc` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x336c (n64).
  It occupies 192 bytes.
  The `ld` at 0x33b4 loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `ld` at 0x33c8 loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `ld` at 0x33cc loads 8 bytes into a4 from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x33dc loads 4 bytes into at from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `sd` at 0x33ec stores 8 bytes from s0 to ? (base unknown) (value ret(gfx_group_create)).
  The `ld` at 0x33f0 loads 8 bytes into a4 from ? (base unknown).
  The `ld` at 0x33fc loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `sw` at 0x3428 stores 4 bytes from a5 to ret(gfx_group_create) +0xc (value 0x1).
  The `jal` at 0x3374 calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x337c calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x338c calls `gfx_group_create` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x3398 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x33ac calls `gthread_attach_group` with a0=ret(gthread_find), a1=ret(gfx_group_create), a2=?, a3=?.
  The `jal` at 0x33c0 calls `GfxListWriterLock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3400 calls `GfxListWriterUnlock` with a0=[ret(gthread_find)+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=?, a5=0x1.
  The `jal` at 0x3408 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x33a0 has these conditions:
    taken when v0(=ret(gthread_find)) == 0.
    falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x33b8 has these conditions:
    taken when a0(=[ret(gthread_find)+16]:8) == 0.
    falls through when a0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x33d4 has these conditions:
    taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0.
    falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x33e4 has these conditions:
    taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0.
    falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `bne` branch at 0x33f4 has these conditions:
    taken when a4(?) != 0.
    falls through when a4(?) == 0.
  The return at 0x341c has v0 = ret(splx); f0 = ret(splx).







- `gfx_shfree` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x342c (n64).
  It occupies 44 bytes.
  The `jal` at 0x3434 calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x343c calls `gfx_group_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x3444 calls `gfx_group_destroy` with a0=ret(gfx_group_find), a1=?, a2=?, a3=?.
  The return at 0x3450 has v0 = ret(gfx_group_destroy); f0 = ret(gfx_group_destroy).







- `gfx_frs_valid_pipenum` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x3458 (n64).
  It occupies 12 bytes.
  The `lw` at 0x3458 loads 4 bytes into v0 from sym(GfxNumberOfBoards) +0x0.
  The return at 0x345c has v0 = ?.







- `gfx_frs_install` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x3464 (n64).
  It occupies 88 bytes.
  The `ld` at 0x3464 loads 8 bytes into a4 from sym(.srdata) +0x8.
  The `ld` at 0x3470 loads 8 bytes into a4 from (sym(GfxBoards) + (a1 << 0x3)) +0x0.
  The `ld` at 0x3474 loads 8 bytes into a3 from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x38.
  The `ld` at 0x3478 loads 8 bytes into a3 from [[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8 +0xd0.
  The `ld` at 0x348c loads 8 bytes into a0 from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x40.
  The `ld` at 0x34a4 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `jalr` at 0x3490 calls `(unknown callee)` with a0=[[(sym(GfxBoards) + (a1 << 0x3))]:8+64]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `jal` at 0x34ac calls `cmn_err` with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `beq` branch at 0x3484 has these conditions:
    taken when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) == 0.
    falls through when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) != 0.
  The return at 0x349c has v0 = ?.







- `gfx_frs_uninstall` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x34bc (n64).
  It occupies 80 bytes.
  The `ld` at 0x34bc loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `ld` at 0x34c8 loads 8 bytes into a2 from (sym(GfxBoards) + (a0 << 0x3)) +0x0.
  The `ld` at 0x34cc loads 8 bytes into a3 from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x38.
  The `ld` at 0x34d0 loads 8 bytes into a3 from [[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8 +0xd8.
  The `ld` at 0x34e4 loads 8 bytes into a0 from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x40.
  The `ld` at 0x34f4 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `jalr` at 0x34e0 calls `(unknown callee)` with a0=[[(sym(GfxBoards) + (a0 << 0x3))]:8+64]:8, a1=a1 at entry (arg1), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `jal` at 0x34fc calls `cmn_err` with a0=0x5, a1=sym(.rodata), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `beq` branch at 0x34d8 has these conditions:
    taken when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) == 0.
    falls through when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) != 0.
  The return at 0x34ec has v0 = ?.







- `irix5_to_gfx_getboardinfo_args` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x350c (n64).
  It occupies 120 bytes.
  The `lw` at 0x3520 loads 4 bytes into at from a3 (arg3 at entry) +0x0.
  The `ld` at 0x3530 loads 8 bytes into v0 from a3 (arg3 at entry) +0x8.
  The `sd` at 0x3534 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x353c stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0xc).
  The `ld` at 0x3548 loads 8 bytes into a0 from a3 (arg3 at entry) +0x10.
  The `lw` at 0x354c loads 4 bytes into a3 from [a3+16]:8 +0x0.
  The `sw` at 0x3550 stores 4 bytes from a3 to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `lwu` at 0x3554 loads 4 bytes into a2 from [a3+16]:8 +0x4.
  The `sd` at 0x3558 stores 8 bytes from a2 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+4]).
  The `lw` at 0x355c loads 4 bytes into a0 from [a3+16]:8 +0x8.
  The `sw` at 0x3560 stores 4 bytes from a0 to a1 (arg1 at entry) +0x10 (value [[a3+16]:8+8]).
  The `sd` at 0x3580 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x3570 calls `kern_malloc` with a0=0xc, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3518 has these conditions:
    taken when a0 != 0.
    falls through when a0 == 0.
  The `bne` branch at 0x3528 has these conditions:
    taken when at(=[a3]) < 0xc (unsigned).
    falls through when at(=[a3]) >= 0xc (unsigned).
  The return at 0x3568 has v0 = 0x0.







- `irix5_to_gfx_download_args` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x3584 (n64).
  It occupies 160 bytes.
  The `lw` at 0x3598 loads 4 bytes into at from a3 (arg3 at entry) +0x0.
  The `ld` at 0x35a8 loads 8 bytes into v0 from a3 (arg3 at entry) +0x8.
  The `sd` at 0x35ac stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x35b4 stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0x20).
  The `ld` at 0x35c0 loads 8 bytes into a0 from a3 (arg3 at entry) +0x10.
  The `lw` at 0x35c4 loads 4 bytes into t0 from [a3+16]:8 +0x0.
  The `sw` at 0x35c8 stores 4 bytes from t0 to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `lwu` at 0x35cc loads 4 bytes into a7 from [a3+16]:8 +0x4.
  The `sd` at 0x35d0 stores 8 bytes from a7 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+4]).
  The `lw` at 0x35d4 loads 4 bytes into a6 from [a3+16]:8 +0x8.
  The `sw` at 0x35d8 stores 4 bytes from a6 to a1 (arg1 at entry) +0x10 (value [[a3+16]:8+8]).
  The `lw` at 0x35dc loads 4 bytes into a5 from [a3+16]:8 +0xc.
  The `sw` at 0x35e0 stores 4 bytes from a5 to a1 (arg1 at entry) +0x14 (value [[a3+16]:8+12]).
  The `lw` at 0x35e4 loads 4 bytes into a4 from [a3+16]:8 +0x10.
  The `sw` at 0x35e8 stores 4 bytes from a4 to a1 (arg1 at entry) +0x18 (value [[a3+16]:8+16]).
  The `lw` at 0x35ec loads 4 bytes into a3 from [a3+16]:8 +0x14.
  The `sw` at 0x35f0 stores 4 bytes from a3 to a1 (arg1 at entry) +0x1c (value [[a3+16]:8+20]).
  The `lw` at 0x35f4 loads 4 bytes into a2 from [a3+16]:8 +0x18.
  The `sw` at 0x35f8 stores 4 bytes from a2 to a1 (arg1 at entry) +0x20 (value [[a3+16]:8+24]).
  The `lw` at 0x35fc loads 4 bytes into a0 from [a3+16]:8 +0x1c.
  The `sw` at 0x3600 stores 4 bytes from a0 to a1 (arg1 at entry) +0x24 (value [[a3+16]:8+28]).
  The `sd` at 0x3620 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x3610 calls `kern_malloc` with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3590 has these conditions:
    taken when a0 != 0.
    falls through when a0 == 0.
  The `bne` branch at 0x35a0 has these conditions:
    taken when at(=[a3]) < 0x20 (unsigned).
    falls through when at(=[a3]) >= 0x20 (unsigned).
  The return at 0x3608 has v0 = 0x0.







- `irix5_to_gfx_attach_board_args` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x3624 (n64).
  It occupies 112 bytes.
  The `lw` at 0x3638 loads 4 bytes into at from a3 (arg3 at entry) +0x0.
  The `ld` at 0x3648 loads 8 bytes into v0 from a3 (arg3 at entry) +0x8.
  The `sd` at 0x364c stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x3654 stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0x8).
  The `ld` at 0x3660 loads 8 bytes into a0 from a3 (arg3 at entry) +0x10.
  The `lw` at 0x3664 loads 4 bytes into a2 from [a3+16]:8 +0x0.
  The `sw` at 0x3668 stores 4 bytes from a2 to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `lwu` at 0x366c loads 4 bytes into a0 from [a3+16]:8 +0x4.
  The `sd` at 0x3670 stores 8 bytes from a0 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+4]).
  The `sd` at 0x3690 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x3680 calls `kern_malloc` with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3630 has these conditions:
    taken when a0 != 0.
    falls through when a0 == 0.
  The `bne` branch at 0x3640 has these conditions:
    taken when at(=[a3]) < 0x8 (unsigned).
    falls through when at(=[a3]) >= 0x8 (unsigned).
  The return at 0x3678 has v0 = 0x0.







- `gfx_flow_init` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x90 (n64).
  It occupies 428 bytes.
  The `lw` at 0x90 loads 4 bytes into a4 from sym(maxnodes) +0x0.
  The `ld` at 0x94 loads 8 bytes into a2 from sym(.lit8) +0x8.
  The `ld` at 0x98 loads 8 bytes into a3 from sym(.lit8) +0x10.
  The `ld` at 0xac loads 8 bytes into a5 from sym(.srdata) +0x8.
  The `lh` at 0xbc loads 2 bytes into a4 from ? (base unknown).
  The `ld` at 0xc8 loads 8 bytes into t0 from ? (base unknown).
  The `lw` at 0xd4 loads 4 bytes into a7 from sym(hub_use_transaction_credits) +0x0.
  The `sw` at 0xe4 stores 4 bytes from a7 to sym(hub_use_transaction_credits) +0x0 (value unknown).
  The `sd` at 0xe8 stores 8 bytes from a6 to ? (base unknown) (value 0x2710).
  The `lh` at 0xec loads 2 bytes into a1 from ? (base unknown).
  The `sd` at 0xfc stores 8 bytes from a6 to ? (base unknown) (value 0x2710).
  The `lw` at 0x104 loads 4 bytes into a4 from sym(maxnodes) +0x0.
  The `lw` at 0x118 loads 4 bytes into a2 from sym(hub_use_transaction_credits) +0x0.
  The `ld` at 0x11c loads 8 bytes into a5 from sym(.srdata) +0x8.
  The `ld` at 0x120 loads 8 bytes into a6 from sym(.lit8) +0x18.
  The `lw` at 0x130 loads 4 bytes into a3 from sym(maxcpus) +0x0.
  The `ld` at 0x134 loads 8 bytes into s1 from sym(.srdata) +0x10.
  The `lw` at 0x168 loads 4 bytes into a4 from sym(maxcpus) +0x0.
  The `lw` at 0x17c loads 4 bytes into a4 from sym(maxnodes) +0x0.
  The `lw` at 0x1a0 loads 4 bytes into a0 from sym(maxcpus) +0x0.
  The `sd` at 0x1b0 stores 8 bytes from v0 to sym(gfx_flow_igfx_owners) +0x0 (value ret(kmem_zalloc)).
  The `sd` at 0x1c4 stores 8 bytes from v0 to sym(gfx_flow_cpu_attachments) +0x0 (value ret(kmem_zalloc)).
  The `ld` at 0x1d4 loads 8 bytes into a2 from sym(.lit8) +0x8.
  The `lh` at 0x1e8 loads 2 bytes into a3 from ? (base unknown).
  The `ld` at 0x1f4 loads 8 bytes into t1 from ? (base unknown).
  The `sd` at 0x218 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `lw` at 0x220 loads 4 bytes into a4 from sym(maxnodes) +0x0.
  The `lw` at 0x238 loads 4 bytes into a3 from sym(maxcpus) +0x0.
  The `jal` at 0x144 calls `cpu_enabled` with a0=?, a1=?, a2=?, a3=?, a4=[sym(maxnodes)].
  The `jal` at 0x15c calls `install_gfxintr` with a0=?, a1=0x0, a2=sym(gfx_flow_delayed_hiwater_intr_prehandler), a3=0x0.
  The `jal` at 0x198 calls `kmem_zalloc` with a0=?, a1=0x0, a2=?, a3=?, a4=[sym(maxnodes)].
  The `jal` at 0x1b8 calls `kmem_zalloc` with a0=?, a1=0x0, a2=?, a3=?.
  The `blez` branch at 0xa4 has these conditions:
    taken when a4(=[sym(maxnodes)]) <= 0 (signed).
    falls through when a4(=[sym(maxnodes)]) > 0 (signed).
  The `bne` branch at 0x110 has these conditions:
    taken when a0(?) < a4(=[sym(maxnodes)]) (signed).
    falls through when a0(?) >= a4(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x128 has these conditions:
    taken when a2(=[sym(hub_use_transaction_credits)]) == 0.
    falls through when a2(=[sym(hub_use_transaction_credits)]) != 0.
  The `blez` branch at 0x138 has these conditions:
    taken when a3(=[sym(maxcpus)]) <= 0 (signed).
    falls through when a3(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x14c has these conditions:
    taken when v0(=ret(cpu_enabled)) == 0.
    falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x178 has these conditions:
    taken when s0(?) < a4(=[sym(maxcpus)]) (signed).
    falls through when s0(?) >= a4(=[sym(maxcpus)]) (signed).
  The `blez` branch at 0x1d0 has these conditions:
    taken when a4(=[sym(maxnodes)]) <= 0 (signed).
    falls through when a4(=[sym(maxnodes)]) > 0 (signed).
  The `bne` branch at 0x210 has these conditions:
    taken when t1(?) < 0x4 (unsigned).
    falls through when t1(?) >= 0x4 (unsigned).
  The `bne` branch at 0x22c has these conditions:
    taken when a0(?) < a4(=[sym(maxnodes)]) (signed).
    falls through when a0(?) >= a4(=[sym(maxnodes)]) (signed).
  The return at 0x1c8 has v0 = ret(kmem_zalloc); f0 = ret(kmem_zalloc).







- `gfx_flow_reset` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x5d0 (n64).
  It occupies 12 bytes.
  The `lw` at 0x5d0 loads 4 bytes into at from a0 (arg0 at entry) +0x10.
  The `sw` at 0x5d8 stores 4 bytes from at to a0 (arg0 at entry) +0x14 (value [a0+16]).
  The return at 0x5d4 has v0 = ?.







- `gfx_flow_dealloc` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x5dc (n64).
  It occupies 72 bytes.
  The `lh` at 0x5dc loads 2 bytes into a1 from a0 (arg0 at entry) +0x50.
  The `lw` at 0x5e0 loads 4 bytes into v0 from a0 (arg0 at entry) +0x54.
  The `ld` at 0x5f0 loads 8 bytes into at from sym(gfx_flow_igfx_owners) +0x0.
  The `sd` at 0x614 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `jal` at 0x610 calls `kmem_free` with a0=a0 at entry (arg0), a1=0x70, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x61c has v0 = ret(kmem_free); f0 = ret(kmem_free).







- `gfx_flow_wg_info_get` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x624 (n64).
  It occupies 36 bytes.
  The `ld` at 0x624 loads 8 bytes into a2 from a0 (arg0 at entry) +0x30.
  The `sd` at 0x628 stores 8 bytes from a2 to a1 (arg1 at entry) +0x0 (value [a0+48]:8).
  The `ld` at 0x62c loads 8 bytes into v1 from a0 (arg0 at entry) +0x38.
  The `sd` at 0x630 stores 8 bytes from v1 to a1 (arg1 at entry) +0x8 (value [a0+56]:8).
  The `ld` at 0x634 loads 8 bytes into v0 from a0 (arg0 at entry) +0x40.
  The `sd` at 0x638 stores 8 bytes from v0 to a1 (arg1 at entry) +0x10 (value [a0+64]:8).
  The `ld` at 0x63c loads 8 bytes into at from a0 (arg0 at entry) +0x48.
  The `sd` at 0x644 stores 8 bytes from at to a1 (arg1 at entry) +0x18 (value [a0+72]:8).
  The return at 0x640 has v0 = [a0+64]:8.







- `gfx_flow_credit_tnum_get` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x648 (n64).
  It occupies 8 bytes.
  The return at 0x648 has v0 = 0x11.







- `gfx_flow_detach_requires_credit_flow_disable` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x6b0 (n64).
  It occupies 8 bytes.
  The return at 0x6b0 has v0 = 0x1.







- `gfx_flow_am_i_attached` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x990 (n64).
  It occupies 68 bytes.
  The `lh` at 0x998 loads 2 bytes into v1 from a0 (arg0 at entry) +0x60.
  The `lh` at 0x99c loads 2 bytes into v0 from abs 0xffffffffffffc420.
  The `ld` at 0x9ac loads 8 bytes into a0 from sym(gfx_flow_cpu_attachments) +0x0.
  The `lh` at 0x9b8 loads 2 bytes into v0 from abs 0xffffffffffffc420.
  The `ld` at 0x9c4 loads 8 bytes into v0 from ([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3)) +0x0.
  The `beq` branch at 0x990 has these conditions:
    taken when a0 == 0.
    falls through when a0 != 0.
  The `beq` branch at 0x9b0 has these conditions:
    taken when a0(=[sym(gfx_flow_cpu_attachments)]:8) == 0.
    falls through when a0(=[sym(gfx_flow_cpu_attachments)]:8) != 0.
  The return at 0x9a4 has v0 = ?.
  The return at 0x9cc has v0 = ?.







- `gfx_flow_set_cpu_attachment` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x9ec (n64).
  It occupies 24 bytes.
  The `lh` at 0x9ec loads 2 bytes into v0 from abs 0xffffffffffffc420.
  The `ld` at 0x9f0 loads 8 bytes into at from sym(gfx_flow_cpu_attachments) +0x0.
  The `sd` at 0xa00 stores 8 bytes from a0 to ([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3)) +0x0 (value a0).
  The return at 0x9fc has v0 = ([-0x3be0]:2 << 0x3).






- `gfx_flow_clear_cpu_attachment` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0xa04 (n64).
  It occupies 24 bytes.
  The `lh` at 0xa04 loads 2 bytes into v0 from abs 0xffffffffffffc420.
  The `ld` at 0xa08 loads 8 bytes into at from sym(gfx_flow_cpu_attachments) +0x0.
  The `sd` at 0xa18 stores 8 bytes from zero to ([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3)) +0x0 (value 0x0).
  The return at 0xa14 has v0 = ([-0x3be0]:2 << 0x3).






- `gfx_flow_interface_alloc` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0xa1c (n64).
  It occupies 72 bytes.
  The `sh` at 0xa40 stores 2 bytes from v1 to ret(kmem_zalloc) +0x60 (value -0x1).
  The `sd` at 0xa44 stores 8 bytes from v1 to ret(kmem_zalloc) +0x68 (value -0x1).
  The `sd` at 0xa48 stores 8 bytes from s8 to ret(kmem_zalloc) +0x20 (value a0).
  The `sd` at 0xa60 stores 8 bytes from a0 to ret(kmem_zalloc) +0x28 (value a1).
  The `jal` at 0xa34 calls `kmem_zalloc` with a0=0x70, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa5c has v0 = ret(kmem_zalloc); f0 = ret(kmem_zalloc).






- `gfx_earlyinit` in `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)` at 0x10 (n64).
  It occupies 8 bytes.
  The return at 0x10 has v0 = ?.






- `gfx_shcheck` in `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)` at 0x48 (n64).
  It occupies 8 bytes.
  The return at 0x48 has v0 = ?.






- `gfx_shdup` in `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)` at 0x50 (n64).
  It occupies 8 bytes.
  The return at 0x50 has v0 = ?.






- `gfx_shalloc` in `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)` at 0x58 (n64).
  It occupies 8 bytes.
  The return at 0x58 has v0 = ?.






- `gfx_shfree` in `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)` at 0x60 (n64).
  It occupies 8 bytes.
  The return at 0x60 has v0 = ?.






- `gfx_frs_valid_pipenum` in `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)` at 0x78 (n64).
  It occupies 8 bytes.
  The return at 0x78 has v0 = 0x0.






- `gfx_frs_install` in `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)` at 0x80 (n64).
  It occupies 8 bytes.
  The return at 0x80 has v0 = ?.






- `gfx_frs_uninstall` in `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)` at 0x88 (n64).
  It occupies 8 bytes.
  The return at 0x88 has v0 = ?.






- `kona_idma_timeout` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x440 (n64).
  It occupies 140 bytes.
  The `ld` at 0x460 loads 8 bytes into at from a0 (arg0 at entry) +0x1448.
  The `lw` at 0x48c loads 4 bytes into a6 from a0 (arg0 at entry) +0x1458.
  The `ld` at 0x490 loads 8 bytes into a2 from sym(.srdata) +0x0.
  The `ld` at 0x494 loads 8 bytes into a5 from a0 (arg0 at entry) +0x1450.
  The `lw` at 0x4a0 loads 4 bytes into a4 from a0 (arg0 at entry) +0x888.
  The `sd` at 0x4c0 stores 8 bytes from zero to a0 (arg0 at entry) +0x1448 (value 0x0).
  The `jal` at 0x458 calls `mutex_spinlock` with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x474 calls `mutex_spinunlock` with a0=a0+2576, a1=?, a2=?, a3=?.
  The `jal` at 0x4a4 calls `cmn_err_tag` with a0=0x84a, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=[a0+5200]:8, a6=[a0+5208].
  The `jal` at 0x4b0 calls `kona_die` with a0=a0 at entry (arg0), a1=0x4, a2=?, a3=?.
  The `jal` at 0x4bc calls `vsema` with a0=a0+5176, a1=?, a2=?, a3=?.
  The `bne` branch at 0x464 has these conditions:
    taken when at(=[a0+5192]:8) != 0.
    falls through when at(=[a0+5192]:8) == 0.
  The return at 0x484 has v0 = ret(mutex_spinunlock); f0 = ret(mutex_spinunlock).






- `kona_free_up_space` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x1520 (n64).
  It occupies 52 bytes.
  The `ld` at 0x1524 loads 8 bytes into a3 from sym(.srdata) +0x0.
  The `lw` at 0x1534 loads 4 bytes into a4 from a0 (arg0 at entry) +0x888.
  The `jal` at 0x1540 calls `cmn_err_tag` with a0=0x84c, a1=0x0, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184].
  The return at 0x154c has v0 = ret(cmn_err_tag); f0 = ret(cmn_err_tag).






- `abi32_to_kona_diag_map` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x1ae0 (n64).
  It occupies 120 bytes.
  The `lw` at 0x1af4 loads 4 bytes into at from a3 (arg3 at entry) +0x0.
  The `ld` at 0x1b04 loads 8 bytes into v0 from a3 (arg3 at entry) +0x8.
  The `sd` at 0x1b08 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x1b10 stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0x14).
  The `ld` at 0x1b1c loads 8 bytes into a0 from a3 (arg3 at entry) +0x10.
  The `lwu` at 0x1b20 loads 4 bytes into a3 from [a3+16]:8 +0x0.
  The `sd` at 0x1b24 stores 8 bytes from a3 to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `lw` at 0x1b28 loads 4 bytes into a2 from [a3+16]:8 +0x4.
  The `sw` at 0x1b2c stores 4 bytes from a2 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+4]).
  The `lw` at 0x1b30 loads 4 bytes into a0 from [a3+16]:8 +0xc.
  The `sw` at 0x1b34 stores 4 bytes from a0 to a1 (arg1 at entry) +0x10 (value [[a3+16]:8+12]).
  The `sd` at 0x1b54 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x1b44 calls `kern_malloc` with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1aec has these conditions:
    taken when a0 != 0.
    falls through when a0 == 0.
  The `bne` branch at 0x1afc has these conditions:
    taken when at(=[a3]) < 0x14 (unsigned).
    falls through when at(=[a3]) >= 0x14 (unsigned).
  The return at 0x1b3c has v0 = 0x0.






- `kona_diag_map_to_abi32` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x1b58 (n64).
  It occupies 136 bytes.
  The `lw` at 0x1b58 loads 4 bytes into at from a2 (arg2 at entry) +0x0.
  The `ld` at 0x1b7c loads 8 bytes into a2 from a2 (arg2 at entry) +0x8.
  The `sd` at 0x1b80 stores 8 bytes from a2 to a2 (arg2 at entry) +0x10 (value [a2+8]:8).
  The `sw` at 0x1b88 stores 4 bytes from a4 to a2 (arg2 at entry) +0x4 (value 0x14).
  The `ld` at 0x1b90 loads 8 bytes into a3 from a0 (arg0 at entry) +0x0.
  The `sw` at 0x1b94 stores 4 bytes from a3 to ? (base unknown) (value [a0]:8).
  The `lw` at 0x1b98 loads 4 bytes into a1 from a0 (arg0 at entry) +0x8.
  The `sw` at 0x1b9c stores 4 bytes from a1 to ? (base unknown) (value [a0+8]).
  The `lw` at 0x1ba0 loads 4 bytes into a0 from a0 (arg0 at entry) +0x10.
  The `sw` at 0x1ba4 stores 4 bytes from a0 to ? (base unknown) (value [a0+16]).
  The `lw` at 0x1ba8 loads 4 bytes into v1 from a0 (arg0 at entry) +0xc.
  The `sw` at 0x1bac stores 4 bytes from v1 to ? (base unknown) (value [a0+12]).
  The `lw` at 0x1bb0 loads 4 bytes into v0 from a0 (arg0 at entry) +0x14.
  The `sw` at 0x1bbc stores 4 bytes from v0 to ? (base unknown) (value [a0+20]).
  The `sd` at 0x1bdc stores 8 bytes from v0 to a2 (arg2 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x1bc8 calls `kern_malloc` with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1b74 has these conditions:
    taken when at(=[a2]) < 0x14 (unsigned).
    falls through when at(=[a2]) >= 0x14 (unsigned).
  The return at 0x1bc0 has v0 = 0x0.






- `kona_free_bdata` in `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit.o)` at 0x234 (n64).
  It occupies 28 bytes.
  The `jal` at 0x23c calls `kern_free` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x248 has v0 = ret(kern_free); f0 = ret(kern_free).






- `kona_detach` in `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)` at 0x1634 (n64).
  It occupies 8 bytes.
  The return at 0x1634 has v0 = ?.






- `kona_flow_cleanup` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0x50 (n64).
  It occupies 52 bytes.
  The `ld` at 0x50 loads 8 bytes into a1 from a0 (arg0 at entry) +0x920.
  The `sd` at 0x74 stores 8 bytes from zero to a0 (arg0 at entry) +0x920 (value 0x0).
  The `jal` at 0x68 calls `kona_untimeout` with a0=a0 at entry (arg0), a1=[a0+2336]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x60 has these conditions:
    taken when a1(=[a0+2336]:8) == 0.
    falls through when a1(=[a0+2336]:8) != 0.
  The return at 0x7c has v0 = ?.






- `kona_delay_monitor_gfifo` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0x144 (n64).
  It occupies 164 bytes.
  The `ld` at 0x17c loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `lw` at 0x188 loads 4 bytes into a1 from a0 (arg0 at entry) +0x92c.
  The `ld` at 0x1c4 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `sw` at 0x1d4 stores 4 bytes from zero to a0 (arg0 at entry) +0x928 (value 0x0).
  The `jal` at 0x180 calls `gfx_pio_read_32` with a0=[a0+2376]:8+0x800208, a1=?, a2=?, a3=?.
  The `jal` at 0x198 calls `us_delay` with a0=0x4, a1=?, a2=?, a3=?.
  The `jal` at 0x1d8 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0x800238, a1=0x3, a2=0x800238, a3=?.
  The `beq` branch at 0x174 has these conditions:
    taken when s1(?) == 0.
    falls through when s1(?) != 0.
  The `beq` branch at 0x190 has these conditions:
    taken when a1(=[a0+2348]) >= v0(=ret(gfx_pio_read_32)) (unsigned).
    falls through when a1(=[a0+2348]) < v0(=ret(gfx_pio_read_32)) (unsigned).
  The `bne` branch at 0x1a4 has these conditions:
    taken when s1(?) != 0.
    falls through when s1(?) == 0.
  The return at 0x1bc has v0 = ?.






- `kona_diag_credits` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0x6f4 (n64).
  It occupies 96 bytes.
  The `ld` at 0x710 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `sw` at 0x714 stores 4 bytes from v0 to a1 (arg1 at entry) +0x0 (value ret(gfx_flow_credit_total_get)).
  The `ld` at 0x71c loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `sw` at 0x720 stores 4 bytes from v0 to a1 (arg1 at entry) +0x4 (value ret(gfx_flow_credit_bias_get)).
  The `ld` at 0x728 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `sw` at 0x734 stores 4 bytes from v0 to a1 (arg1 at entry) +0x8 (value ret(gfx_flow_credit_count_get)).
  The `sw` at 0x744 stores 4 bytes from at to a1 (arg1 at entry) +0xc (value 0x186a0).
  The `jal` at 0x70c calls `gfx_flow_credit_total_get` with a0=[a0+2272]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x718 calls `gfx_flow_credit_bias_get` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x724 calls `gfx_flow_credit_count_get` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The return at 0x74c has v0 = 0x0; f0 = ret(gfx_flow_credit_count_get).






- `kona_flow_await_returned_credits` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0x754 (n64).
  It occupies 484 bytes.
  The `ld` at 0x760 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x778 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `lw` at 0x78c loads 4 bytes into v0 from a0 (arg0 at entry) +0x928.
  The `lw` at 0x798 loads 4 bytes into v1 from a0 (arg0 at entry) +0x87c.
  The `ld` at 0x7a4 loads 8 bytes into a0 from a0 (arg0 at entry) +0x48.
  The `lw` at 0x7a8 loads 4 bytes into a0 from [a0+72]:8 +0x4.
  The `ld` at 0x7c8 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x7e4 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x7f0 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x814 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `ld` at 0x82c loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `ld` at 0x838 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `ld` at 0x848 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `ld` at 0x860 loads 8 bytes into s1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0x86c loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x874 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x880 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x890 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x894 loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0x89c loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x8a0 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `lw` at 0x8a4 loads 4 bytes into a1 from a0 (arg0 at entry) +0x8c8.
  The `ld` at 0x8b8 loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0x8c0 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x8e4 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `lw` at 0x8f8 loads 4 bytes into a2 from a0 (arg0 at entry) +0x91c.
  The `ld` at 0x910 loads 8 bytes into a3 from a0 (arg0 at entry) +0x910.
  The `sd` at 0x924 stores 8 bytes from v0 to a0 (arg0 at entry) +0x910 (value ret(curproc)).
  The `jal` at 0x768 calls `gfx_flow_credit_bias_get` with a0=[a0+2272]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x774 calls `gfx_flow_credit_count_get` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7c0 calls `us_delay` with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x7cc calls `gfx_flow_credit_count_get` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7e0 calls `gfx_flow_credit_count_get` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7ec calls `gfx_flow_credit_total_get` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x804 calls `kona_die` with a0=a0 at entry (arg0), a1=0x19, a2=?, a3=?.
  The `jal` at 0x80c calls `kona_reset_adaptor` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x824 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0x800300, a1=0x1, a2=?, a3=?.
  The `jal` at 0x830 calls `gfx_pio_read_32` with a0=[a0+2376]:8+0x800300, a1=?, a2=?, a3=?.
  The `jal` at 0x840 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0x800300, a1=0x0, a2=?, a3=?.
  The `jal` at 0x84c calls `gfx_pio_read_32` with a0=[a0+2376]:8+0x800300, a1=?, a2=?, a3=?.
  The `jal` at 0x854 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x868 calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x870 calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x884 calls `gfx_flow_detach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x88c calls `gfx_flow_reset` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x898 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x8b0 calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x8bc calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x8c4 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x8f0 calls `gfx_pio_read_32` with a0=[a0+2376]:8+0x800208, a1=0x800208, a2=?, a3=?.
  The `jal` at 0x908 calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x91c calls `curproc` with a0=?, a1=?, a2=?, a3=[a0+2320]:8.
  The `jal` at 0x928 calls `force_resched` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x780 has these conditions:
    taken when v0(=ret(gfx_flow_credit_count_get)) >= s2(=ret(gfx_flow_credit_bias_get)) (unsigned).
    falls through when v0(=ret(gfx_flow_credit_count_get)) < s2(=ret(gfx_flow_credit_bias_get)) (unsigned).
  The `bne` branch at 0x790 has these conditions:
    taken when v0(=[a0+2344]) != 0.
    falls through when v0(=[a0+2344]) == 0.
  The `beq` branch at 0x79c has these conditions:
    taken when v1(=[a0+2172]) == 0.
    falls through when v1(=[a0+2172]) != 0.
  The `bne` branch at 0x7b0 has these conditions:
    taken when (a0(=[[a0+72]:8+4]) & 0x4) != 0.
    falls through when (a0(=[[a0+72]:8+4]) & 0x4) == 0.
  The `blez` branch at 0x7b8 has these conditions:
    taken when s1(?) <= 0 (signed).
    falls through when s1(?) > 0 (signed).
  The `bne` branch at 0x7d8 has these conditions:
    taken when v0(=ret(gfx_flow_credit_count_get)) < s2(=ret(gfx_flow_credit_bias_get)) (unsigned).
    falls through when v0(=ret(gfx_flow_credit_count_get)) >= s2(=ret(gfx_flow_credit_bias_get)) (unsigned).
  The `beq` branch at 0x7f8 has these conditions:
    taken when v0(=ret(gfx_flow_credit_total_get)) >= s1(=ret(gfx_flow_credit_count_get)) (unsigned).
    falls through when v0(=ret(gfx_flow_credit_total_get)) < s1(=ret(gfx_flow_credit_count_get)) (unsigned).
  The `beq` branch at 0x878 has these conditions:
    taken when v0(=ret(gfx_flow_am_i_attached)) == 0.
    falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x900 has these conditions:
    taken when a2(=[a0+2332]) >= v0(=ret(gfx_pio_read_32)) (unsigned).
    falls through when a2(=[a0+2332]) < v0(=ret(gfx_pio_read_32)) (unsigned).
  The `beq` branch at 0x914 has these conditions:
    taken when a3(=[a0+2320]:8) == v0(=ret(curproc)).
    falls through when a3(=[a0+2320]:8) != v0(=ret(curproc)).
  The return at 0x8dc has v0 = ?.






- `kona_mem_init` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x0 (n64).
  It occupies 64 bytes.
  The `sd` at 0x34 stores 8 bytes from at to ? (base unknown) (value unknown).
  The `bne` branch at 0x30 has these conditions:
    taken when a2(?) < 0x4 (signed).
    falls through when a2(?) >= 0x4 (signed).
  The return at 0x38 has v0 = ?.






- `kona_mem_suspend` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0xa78 (n64).
  It occupies 16 bytes.
  The `ld` at 0xa78 loads 8 bytes into at from a1 (arg1 at entry) +0x68.
  The `sw` at 0xa84 stores 4 bytes from at to a0 (arg0 at entry) +0x13f8 (value unknown).
  The return at 0xa80 has v0 = ?.






- `kona_mem_resume` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0xa88 (n64).
  It occupies 704 bytes.
  The `lw` at 0xa88 loads 4 bytes into at from a0 (arg0 at entry) +0x13f8.
  The `lw` at 0xaa0 loads 4 bytes into v0 from a0 (arg0 at entry) +0x87c.
  The `sw` at 0xaac stores 4 bytes from zero to a0 (arg0 at entry) +0x13f8 (value 0x0).
  The `ld` at 0xac8 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `lw` at 0xacc loads 4 bytes into v1 from a0 (arg0 at entry) +0x13f8.
  The `ld` at 0xaf0 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `sw` at 0xafc stores 4 bytes from a1 to a0 (arg0 at entry) +0x938 (value 0x30000).
  The `ld` at 0xb08 loads 8 bytes into a2 from a0 (arg0 at entry) +0x948.
  The `lw` at 0xb14 loads 4 bytes into a1 from a0 (arg0 at entry) +0x938.
  The `ld` at 0xb28 loads 8 bytes into a0 from a0 (arg0 at entry) +0x900.
  The `ld` at 0xb34 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0xb4c loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `sw` at 0xb58 stores 4 bytes from a2 to a0 (arg0 at entry) +0x938 (value 0x10000).
  The `ld` at 0xb64 loads 8 bytes into a2 from a0 (arg0 at entry) +0x948.
  The `lw` at 0xb70 loads 4 bytes into a1 from a0 (arg0 at entry) +0x938.
  The `ld` at 0xb90 loads 8 bytes into a0 from a0 (arg0 at entry) +0x900.
  The `lw` at 0xb9c loads 4 bytes into a1 from ? (base unknown).
  The `ld` at 0xbc0 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0xbd8 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `sw` at 0xbe4 stores 4 bytes from zero to a0 (arg0 at entry) +0x938 (value 0x0).
  The `ld` at 0xbf0 loads 8 bytes into a2 from a0 (arg0 at entry) +0x948.
  The `lw` at 0xbfc loads 4 bytes into a1 from a0 (arg0 at entry) +0x938.
  The `ld` at 0xc10 loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0xc18 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0xc1c loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `lw` at 0xc20 loads 4 bytes into a1 from a0 (arg0 at entry) +0x8c8.
  The `ld` at 0xc5c loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0xc64 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0xc78 loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0xc80 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0xc84 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `lw` at 0xc88 loads 4 bytes into a1 from a0 (arg0 at entry) +0x8c8.
  The `ld` at 0xcc4 loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0xccc loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0xce0 loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0xce8 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0xcec loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `lw` at 0xcf0 loads 4 bytes into a1 from a0 (arg0 at entry) +0x8c8.
  The `ld` at 0xd2c loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0xd34 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `sw` at 0xd44 stores 4 bytes from zero to a0 (arg0 at entry) +0x938 (value 0x0).
  The `jal` at 0xac0 calls `psema` with a0=a0+5152, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xad4 calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xadc calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xaec calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb00 calls `splx` with a0=?, a1=0x30000, a2=?, a3=?.
  The `jal` at 0xb18 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=[a0+2376]:8, a3=?.
  The `jal` at 0xb24 calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=0x1de, a2=?, a3=?.
  The `jal` at 0xb30 calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xb38 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb48 calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb5c calls `splx` with a0=?, a1=?, a2=0x10000, a3=?.
  The `jal` at 0xb74 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=[a0+2376]:8, a3=?.
  The `jal` at 0xb98 calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xbbc calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xbc4 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbd4 calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xbe8 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc00 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=[a0+2376]:8, a3=?.
  The `jal` at 0xc14 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xc2c calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xc34 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc40 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc48 calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xc50 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc60 calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xc68 calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc7c calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=0x10000, a3=?.
  The `jal` at 0xc94 calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xc9c calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xca8 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcb0 calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xcb8 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcc8 calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xcd0 calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xce4 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xcfc calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xd04 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd10 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd18 calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xd20 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd30 calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xd38 calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xa98 has these conditions:
    taken when at(=[a0+5112]) < 0x2 (signed).
    falls through when at(=[a0+5112]) >= 0x2 (signed).
  The `beq` branch at 0xaa4 has these conditions:
    taken when v0(=[a0+2172]) == 0.
    falls through when v0(=[a0+2172]) != 0.
  The `beq` branch at 0xaf4 has these conditions:
    taken when v0(=ret(gfx_flow_am_i_attached)) == 0.
    falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0xb50 has these conditions:
    taken when v0(=ret(gfx_flow_am_i_attached)) == 0.
    falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `blez` branch at 0xb80 has these conditions:
    taken when a1(?) <= 0 (signed).
    falls through when a1(?) > 0 (signed).
  The `beq` branch at 0xbac has these conditions:
    taken when a2(?) >= s1(?) (signed).
    falls through when a2(?) < s1(?) (signed).
  The `beq` branch at 0xbdc has these conditions:
    taken when v0(=ret(gfx_flow_am_i_attached)) == 0.
    falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The return at 0xab4 has v0 = ?.






- `kona_mem_cleanup` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0xfe8 (n64).
  It occupies 332 bytes.
  The `ld` at 0x101c loads 8 bytes into s1 from a0 (arg0 at entry) +0x13f0.
  The `sd` at 0x1020 stores 8 bytes from zero to a0 (arg0 at entry) +0x13f0 (value 0x0).
  The `ld` at 0x1040 loads 8 bytes into a4 from ? (base unknown).
  The `lw` at 0x1044 loads 4 bytes into a4 from ? (base unknown).
  The `ld` at 0x1058 loads 8 bytes into s1 from ? (base unknown).
  The `sd` at 0x105c stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sb` at 0x1064 stores byte from s3 to ? (base unknown) (value 0xdb).
  The `lbu` at 0x1068 loads byte into a5 from ? (base unknown).
  The `lhu` at 0x106c loads 2 bytes into a4 from ? (base unknown).
  The `lbu` at 0x1088 loads byte into a0 from ? (base unknown).
  The `ld` at 0x109c loads 8 bytes into a1 from ? (base unknown).
  The `lw` at 0x10a4 loads 4 bytes into a0 from a0 (arg0 at entry) +0x888.
  The `sd` at 0x10a8 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `ld` at 0x10ac loads 8 bytes into s1 from ? (base unknown).
  The `sd` at 0x10b0 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sb` at 0x10b8 stores byte from s3 to ? (base unknown) (value 0xdb).
  The `ld` at 0x10e0 loads 8 bytes into a3 from ? (base unknown).
  The `lw` at 0x10e4 loads 4 bytes into a5 from ? (base unknown).
  The `lw` at 0x10e8 loads 4 bytes into a3 from ? (base unknown).
  The `ld` at 0x110c loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1118 loads 8 bytes into a1 from ? (base unknown).
  The `sw` at 0x111c stores 4 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0x1120 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `lw` at 0x1128 loads 4 bytes into a0 from a0 (arg0 at entry) +0x888.
  The `sd` at 0x1130 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `jal` at 0x1010 calls `mutex_spinlock` with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1024 calls `mutex_spinunlock` with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x10a0 calls `free_gfx_io_space` with a0=[a0+2184], a1=?, a2=?, a3=?.
  The `jal` at 0x1110 calls `kvpfree` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1124 calls `free_gfx_io_space` with a0=[a0+2184], a1=?, a2=?, a3=?.
  The `beq` branch at 0x102c has these conditions:
    taken when s1(=[a0+5104]:8) == 0.
    falls through when s1(=[a0+5104]:8) != 0.
  The `beq` branch at 0x1048 has these conditions:
    taken when a0(?) == s4(=0x2).
    falls through when a0(?) != s4(=0x2).
  The `beq` branch at 0x1050 has these conditions:
    taken when a0(?) == s5(=0x1).
    falls through when a0(?) != s5(=0x1).
  The `beq` branch at 0x1060 has these conditions:
    taken when s1(?) == 0.
    falls through when s1(?) != 0.
  The `bne` branch at 0x108c has these conditions:
    taken when (a4(?) & 0x1) != 0.
    falls through when (a4(?) & 0x1) == 0.
  The `bne` branch at 0x10b4 has these conditions:
    taken when s1(?) != 0.
    falls through when s1(?) == 0.
  The return at 0x10d8 has v0 = ?.






- `kona_mem_swapout` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x1134 (n64).
  It occupies 428 bytes.
  The `ld` at 0x1134 loads 8 bytes into v0 from a1 (arg1 at entry) +0x0.
  The `lw` at 0x1140 loads 4 bytes into s7 from sym(kona_mem_serialize) +0x0.
  The `lhu` at 0x1150 loads 2 bytes into at from a2 (arg2 at entry) +0x6.
  The `lw` at 0x117c loads 4 bytes into s2 from [a1]:8 +0x8.
  The `lw` at 0x1180 loads 4 bytes into v1 from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1184 loads 4 bytes into a1 from [a1]:8 +0x14.
  The `lw` at 0x119c loads 4 bytes into v0 from a1 (arg1 at entry) +0x8.
  The `sw` at 0x11b0 stores 4 bytes from v0 to a1 (arg1 at entry) +0x8 (value unknown).
  The `sd` at 0x11e4 stores 8 bytes from v0 to a2 (arg2 at entry) +0x10 (value ret(kvpalloc)).
  The `lw` at 0x11e8 loads 4 bytes into a0 from a0 (arg0 at entry) +0x888.
  The `sd` at 0x11f4 stores 8 bytes from v0 to a2 (arg2 at entry) +0x18 (value ret(alloc_gfx_io_space)).
  The `lw` at 0x11fc loads 4 bytes into a1 from a2 (arg2 at entry) +0x8.
  The `sw` at 0x1200 stores 4 bytes from a1 to a2 (arg2 at entry) +0x20 (value [a2+8]).
  The `ld` at 0x120c loads 8 bytes into a0 from a0 (arg0 at entry) +0x13d0.
  The `sd` at 0x1218 stores 8 bytes from s0 to [a0+5072]:8 +0x38 (value a2).
  The `sd` at 0x121c stores 8 bytes from s0 to a0 (arg0 at entry) +0x13d0 (value a2).
  The `ld` at 0x1228 loads 8 bytes into a0 from sym(.srdata) +0x10.
  The `lwu` at 0x122c loads 4 bytes into a2 from sym(kona_mem_timeout_value) +0x0.
  The `ld` at 0x1238 loads 8 bytes into a3 from sym(.srdata) +0x8.
  The `lw` at 0x1254 loads 4 bytes into a3 from a2 (arg2 at entry) +0x20.
  The `lw` at 0x1258 loads 4 bytes into a2 from a2 (arg2 at entry) +0xc.
  The `sd` at 0x125c stores 8 bytes from v0 to a2 (arg2 at entry) +0x58 (value ret(kona_timeout)).
  The `ld` at 0x1264 loads 8 bytes into a4 from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1268 loads 8 bytes into a6 from a2 (arg2 at entry) +0x18.
  The `lw` at 0x1274 loads 4 bytes into a4 from [a1]:8 +0x14.
  The `ld` at 0x1280 loads 8 bytes into t0 from a2 (arg2 at entry) +0x28.
  The `lbu` at 0x1284 loads byte into a7 from [a2+40]:8 +0x0.
  The `sb` at 0x128c stores byte from a7 to [a2+40]:8 +0x0 (value [[a2+40]:8]:1+1).
  The `sb` at 0x1298 stores byte from a6 to a2 (arg2 at entry) +0x2 (value 0x1).
  The `sd` at 0x12dc stores 8 bytes from s0 to a0 (arg0 at entry) +0x13d8 (value a2).
  The `jal` at 0x11b4 calls `psema` with a0=a2+72, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11bc calls `kona_mem_cleanup` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x11d4 calls `kvpalloc` with a0=?, a1=0x80000, a2=0x0, a3=?.
  The `jal` at 0x11ec calls `alloc_gfx_io_space` with a0=[a0+2184], a1=ret(kvpalloc), a2=?, a3=0xe.
  The `jal` at 0x1204 calls `mutex_spinlock` with a0=a0+2576, a1=[a2+8], a2=?, a3=?.
  The `jal` at 0x1220 calls `mutex_spinunlock` with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x123c calls `kona_timeout` with a0=sym(kona_mem_swapout_complete), a1=a0 at entry (arg0), a2=[sym(kona_mem_timeout_value)], a3=sym(splhi), a4=0x1, a5=a2 at entry (arg2).
  The `jal` at 0x1278 calls `kona_mem_swapout_func` with a0=a0 at entry (arg0), a1=?, a2=[a2+12], a3=[a2+32], a4=[[a1]:8+20], a6=[a2+24]:8.
  The `jal` at 0x12a0 calls `psema` with a0=a2+72, a1=0x19, a2=?, a3=?, a6=0x1, a7=[[a2+40]:8]:1+1.
  The `jal` at 0x12a8 calls `vsema` with a0=a2+72, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1174 has these conditions:
    taken when (at(=[a2+6]:2) & 0x1) == 0.
    falls through when (at(=[a2+6]:2) & 0x1) != 0.
  The `beq` branch at 0x1210 has these conditions:
    taken when a0(=[a0+5072]:8) == 0.
    falls through when a0(=[a0+5072]:8) != 0.
  The `beq` branch at 0x1294 has these conditions:
    taken when s7(=[sym(kona_mem_serialize)]) == 0.
    falls through when s7(=[sym(kona_mem_serialize)]) != 0.
  The return at 0x12d0 has v0 = ?.





- `kona_mem_compress` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x12e0 (n64).
  It occupies 200 bytes.
  The `ld` at 0x12f0 loads 8 bytes into s1 from a1 (arg1 at entry) +0x10.
  The `lbu` at 0x1318 loads byte into a3 from [a1+16]:8 +0x4.
  The `lw` at 0x1330 loads 4 bytes into a4 from ? (base unknown).
  The `lw` at 0x133c loads 4 bytes into a4 from ? (base unknown).
  The `sw` at 0x1340 stores 4 bytes from s0 to ? (base unknown) (value unknown).
  The `ld` at 0x1348 loads 8 bytes into s1 from ? (base unknown).
  The `lbu` at 0x1354 loads byte into a3 from ? (base unknown).
  The `lw` at 0x1360 loads 4 bytes into a2 from ? (base unknown).
  The `ld` at 0x1380 loads 8 bytes into s1 from ? (base unknown).
  The `jal` at 0x1334 calls `kona_mem_copydown_func` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1308 has these conditions:
    taken when s1(=[a1+16]:8) == 0.
    falls through when s1(=[a1+16]:8) != 0.
  The `beq` branch at 0x134c has these conditions:
    taken when s1(?) == 0.
    falls through when s1(?) != 0.
  The `beq` branch at 0x1364 has these conditions:
    taken when v0(?) == 0.
    falls through when v0(?) != 0.
  The `bne` branch at 0x1374 has these conditions:
    taken when a2(?) != s0(?).
    falls through when a2(?) == s0(?).
  The `bne` branch at 0x1384 has these conditions:
    taken when s1(?) != 0.
    falls through when s1(?) == 0.
  The return at 0x13a0 has v0 = ?.





- `kona_mem_grow` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x13a8 (n64).
  It occupies 280 bytes.
  The `ld` at 0x13a8 loads 8 bytes into a6 from a2 (arg2 at entry) +0x30.
  The `lw` at 0x13ac loads 4 bytes into t8 from a2 (arg2 at entry) +0xc.
  The `ld` at 0x13b0 loads 8 bytes into at from a1 (arg1 at entry) +0x0.
  The `lw` at 0x13bc loads 4 bytes into s4 from a2 (arg2 at entry) +0x8.
  The `lw` at 0x13c0 loads 4 bytes into at from [a1]:8 +0x18.
  The `ld` at 0x1408 loads 8 bytes into a1 from a1 (arg1 at entry) +0x0.
  The `lw` at 0x140c loads 4 bytes into a1 from [a1]:8 +0x18.
  The `ld` at 0x1420 loads 8 bytes into a4 from [a2+48]:8 +0x30.
  The `sd` at 0x1428 stores 8 bytes from a4 to a2 (arg2 at entry) +0x30 (value [[a2+48]:8+48]:8).
  The `sd` at 0x1434 stores 8 bytes from zero to [a2+48]:8 +0x30 (value 0x0).
  The `ld` at 0x1438 loads 8 bytes into a2 from a2 (arg2 at entry) +0x30.
  The `lw` at 0x1448 loads 4 bytes into a1 from [a2+48]:8 +0xc.
  The `lw` at 0x144c loads 4 bytes into a5 from a1 (arg1 at entry) +0x8.
  The `sw` at 0x1454 stores 4 bytes from a5 to a1 (arg1 at entry) +0x8 (value (a3 + [a1+8])).
  The `lw` at 0x1464 loads 4 bytes into a6 from a2 (arg2 at entry) +0x8.
  The `sw` at 0x1470 stores 4 bytes from a6 to a2 (arg2 at entry) +0x8 (value (a3 + [a2+8])).
  The `ld` at 0x1484 loads 8 bytes into a2 from a1 (arg1 at entry) +0x10.
  The `ld` at 0x1494 loads 8 bytes into a2 from ? (base unknown).
  The `sd` at 0x14a8 stores 8 bytes from a6 to ? (base unknown) (value [a2+48]:8).
  The `sd` at 0x14ac stores 8 bytes from zero to a2 (arg2 at entry) +0x30 (value 0x0).
  The `jal` at 0x1430 calls `kona_mem_swapout` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a2+48]:8, a3=?, a4=[[a2+48]:8+48]:8.
  The `jal` at 0x14b0 calls `kona_mem_swapout` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[a2+48]:8.
  The `bne` branch at 0x13f4 has these conditions:
    taken when at(?) < a3 (unsigned).
    falls through when at(?) >= a3 (unsigned).
  The `bne` branch at 0x1400 has these conditions:
    taken when a6(=[a2+48]:8) != 0.
    falls through when a6(=[a2+48]:8) == 0.
  The `beq` branch at 0x1418 has these conditions:
    taken when a3(?) >= s2(=a3) (unsigned).
    falls through when a3(?) < s2(=a3) (unsigned).
  The `beq` branch at 0x143c has these conditions:
    taken when a2(=[a2+48]:8) == 0.
    falls through when a2(=[a2+48]:8) != 0.
  The `beq` branch at 0x1488 has these conditions:
    taken when s0(=a2) == a2(=[a1+16]:8).
    falls through when s0(=a2) != a2(=[a1+16]:8).
  The `bne` branch at 0x1498 has these conditions:
    taken when s0(=a2) != a2(?).
    falls through when s0(=a2) == a2(?).
  The return at 0x147c has v0 = ?.





- `kona_mem_reserve` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x14c0 (n64).
  It occupies 608 bytes.
  The `lw` at 0x14c0 loads 4 bytes into t0 from a4 (arg4 at entry) +0x8.
  The `ld` at 0x14e4 loads 8 bytes into at from a1 (arg1 at entry) +0x10.
  The `ld` at 0x150c loads 8 bytes into a1 from a1 (arg1 at entry) +0x0.
  The `lw` at 0x1510 loads 4 bytes into a2 from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1514 loads 4 bytes into a1 from [a1]:8 +0x18.
  The `ld` at 0x1534 loads 8 bytes into a7 from ? (base unknown).
  The `ld` at 0x1548 loads 8 bytes into v0 from ? (base unknown).
  The `ld` at 0x155c loads 8 bytes into a2 from ? (base unknown).
  The `sd` at 0x1568 stores 8 bytes from a2 to ? (base unknown) (value unknown).
  The `sd` at 0x156c stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `ld` at 0x1578 loads 8 bytes into a7 from ? (base unknown).
  The `ld` at 0x1584 loads 8 bytes into a1 from a1 (arg1 at entry) +0x0.
  The `lw` at 0x1588 loads 4 bytes into a2 from a1 (arg1 at entry) +0x8.
  The `lw` at 0x158c loads 4 bytes into a1 from [a1]:8 +0x18.
  The `lw` at 0x1590 loads 4 bytes into t0 from a4 (arg4 at entry) +0x8.
  The `ld` at 0x15a8 loads 8 bytes into v0 from a1 (arg1 at entry) +0x10.
  The `lw` at 0x15ac loads 4 bytes into t0 from a4 (arg4 at entry) +0x8.
  The `ld` at 0x15b0 loads 8 bytes into v0 from a1 (arg1 at entry) +0x10.
  The `lw` at 0x15bc loads 4 bytes into a0 from [a1+16]:8 +0xc.
  The `lbu` at 0x15d8 loads byte into a2 from a4 (arg4 at entry) +0x4.
  The `lw` at 0x15e0 loads 4 bytes into a5 from ? (base unknown).
  The `lw` at 0x15f4 loads 4 bytes into a5 from ? (base unknown).
  The `lw` at 0x15f8 loads 4 bytes into a4 from ? (base unknown).
  The `ld` at 0x161c loads 8 bytes into v0 from ? (base unknown).
  The `lw` at 0x162c loads 4 bytes into a0 from ? (base unknown).
  The `sd` at 0x1644 stores 8 bytes from v0 to a4 (arg4 at entry) +0x30 (value unknown).
  The `sd` at 0x164c stores 8 bytes from s1 to ? (base unknown) (value a4).
  The `sd` at 0x1650 stores 8 bytes from v0 to a4 (arg4 at entry) +0x30 (value [a1+16]:8).
  The `sd` at 0x1654 stores 8 bytes from s1 to a1 (arg1 at entry) +0x10 (value a4).
  The `lw` at 0x1658 loads 4 bytes into a5 from a4 (arg4 at entry) +0x8.
  The `lw` at 0x165c loads 4 bytes into a4 from a1 (arg1 at entry) +0x8.
  The `sw` at 0x1664 stores 4 bytes from a4 to a1 (arg1 at entry) +0x8 (value ([a1+8] + [a4+8])).
  The `sw` at 0x166c stores 4 bytes from a1 to a4 (arg4 at entry) +0xc (value unknown).
  The `ld` at 0x16a0 loads 8 bytes into a7 from a1 (arg1 at entry) +0x10.
  The `ld` at 0x16ac loads 8 bytes into a6 from [a1+16]:8 +0x30.
  The `sd` at 0x16b8 stores 8 bytes from a6 to a1 (arg1 at entry) +0x10 (value [[a1+16]:8+48]:8).
  The `sd` at 0x16c4 stores 8 bytes from zero to [a1+16]:8 +0x30 (value 0x0).
  The `ld` at 0x16c8 loads 8 bytes into a7 from a1 (arg1 at entry) +0x10.
  The `ld` at 0x16dc loads 8 bytes into a0 from a1 (arg1 at entry) +0x0.
  The `lw` at 0x16e4 loads 4 bytes into a0 from [a1]:8 +0x18.
  The `ld` at 0x16e8 loads 8 bytes into a0 from a1 (arg1 at entry) +0x0.
  The `lw` at 0x16f0 loads 4 bytes into a0 from [a1]:8 +0x18.
  The `ld` at 0x16f4 loads 8 bytes into a1 from a1 (arg1 at entry) +0x0.
  The `lw` at 0x16f8 loads 4 bytes into a1 from [a1]:8 +0x10.
  The `lbu` at 0x1710 loads byte into a2 from a4 (arg4 at entry) +0x4.
  The `lw` at 0x1714 loads 4 bytes into t0 from a4 (arg4 at entry) +0x8.
  The `jal` at 0x1570 calls `kona_mem_swapout` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x16c0 calls `kona_mem_swapout` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?, a6=[[a1+16]:8+48]:8, a7=[a1+16]:8.
  The `jal` at 0x1704 calls `kona_mem_compress` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x1504 has these conditions:
    taken when at(=[a1+16]:8) == 0.
    falls through when at(=[a1+16]:8) != 0.
  The `bne` branch at 0x1520 has these conditions:
    taken when a1(?) < t0(=[a4+8]) (unsigned).
    falls through when a1(?) >= t0(=[a4+8]) (unsigned).
  The `beq` branch at 0x1538 has these conditions:
    taken when a7(?) == 0.
    falls through when a7(?) != 0.
  The `beq` branch at 0x1540 has these conditions:
    taken when a1(?) == 0.
    falls through when a1(?) != 0.
  The `beq` branch at 0x154c has these conditions:
    taken when v0(?) == s3(=a2).
    falls through when v0(?) != s3(=a2).
  The `beq` branch at 0x1554 has these conditions:
    taken when v0(?) == s5(=a3).
    falls through when v0(?) != s5(=a3).
  The `beq` branch at 0x157c has these conditions:
    taken when a7(?) == 0.
    falls through when a7(?) != 0.
  The `bne` branch at 0x159c has these conditions:
    taken when a1(?) < t0(=[a4+8]) (unsigned).
    falls through when a1(?) >= t0(=[a4+8]) (unsigned).
  The `beq` branch at 0x15b4 has these conditions:
    taken when v0(=[a1+16]:8) == 0.
    falls through when v0(=[a1+16]:8) != 0.
  The `beq` branch at 0x15c8 has these conditions:
    taken when a0(?) >= t0(=[a4+8]) (unsigned).
    falls through when a0(?) < t0(=[a4+8]) (unsigned).
  The `beq` branch at 0x15d0 has these conditions:
    taken when v0(=[a1+16]:8) == 0.
    falls through when v0(=[a1+16]:8) != 0.
  The `beq` branch at 0x15e4 has these conditions:
    taken when t0(=[a4+8]) == 0.
    falls through when t0(=[a4+8]) != 0.
  The `beq` branch at 0x15ec has these conditions:
    taken when v0(?) == 0.
    falls through when v0(?) != 0.
  The `beq` branch at 0x1624 has these conditions:
    taken when v0(?) == 0.
    falls through when v0(?) != 0.
  The `bltz` branch at 0x1634 has these conditions:
    taken when a3(?) < 0 (signed).
    falls through when a3(?) >= 0 (signed).
  The `bne` branch at 0x163c has these conditions:
    taken when a3(?) != 0.
    falls through when a3(?) == 0.
  The `beq` branch at 0x1698 has these conditions:
    taken when s2(?) == 0.
    falls through when s2(?) != 0.
  The `beq` branch at 0x16a4 has these conditions:
    taken when a7(=[a1+16]:8) == 0.
    falls through when a7(=[a1+16]:8) != 0.
  The `bne` branch at 0x16cc has these conditions:
    taken when a7(=[a1+16]:8) != 0.
    falls through when a7(=[a1+16]:8) == 0.
  The `beq` branch at 0x16fc has these conditions:
    taken when a1(=[[a1]:8+16]) == 0.
    falls through when a1(=[[a1]:8+16]) != 0.
  The return at 0x168c has v0 = one of 0x0, 0x1.





- `kona_mem_suspend_complete` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x1980 (n64).
  It occupies 168 bytes.
  The `ld` at 0x1994 loads 8 bytes into a2 from sym(.srdata) +0x18.
  The `lw` at 0x19a4 loads 4 bytes into a4 from a0 (arg0 at entry) +0x888.
  The `lw` at 0x19d4 loads 4 bytes into a3 from a2 (arg2 at entry) +0x0.
  The `sd` at 0x19dc stores 8 bytes from zero to a0 (arg0 at entry) +0x1430 (value 0x0).
  The `lw` at 0x19f0 loads 4 bytes into a5 from ? (base unknown).
  The `sw` at 0x19f8 stores 4 bytes from a5 to ? (base unknown) (value unknown).
  The `lw` at 0x1a0c loads 4 bytes into a7 from ? (base unknown).
  The `sw` at 0x1a1c stores 4 bytes from a7 to ? (base unknown) (value unknown).
  The `jal` at 0x19a8 calls `cmn_err_tag` with a0=0x83d, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184].
  The `jal` at 0x19b4 calls `kona_die` with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jal` at 0x19bc calls `vsema` with a0=a0+5152, a1=?, a2=?, a3=?.
  The `beq` branch at 0x198c has these conditions:
    taken when a1 == 0.
    falls through when a1 != 0.
  The `bltz` branch at 0x19d8 has these conditions:
    taken when a3(=[a2]) < 0 (signed).
    falls through when a3(=[a2]) >= 0 (signed).
  The `bne` branch at 0x19fc has these conditions:
    taken when a3(=[a2]) < a0(?) (signed).
    falls through when a3(=[a2]) >= a0(?) (signed).
  The `beq` branch at 0x1a18 has these conditions:
    taken when a3(=[a2]) >= a0(?) (signed).
    falls through when a3(=[a2]) < a0(?) (signed).
  The return at 0x19cc has v0 = ret(vsema); f0 = ret(vsema).





- `kona_mem_swapin` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x1a28 (n64).
  It occupies 376 bytes.
  The `lw` at 0x1a28 loads 4 bytes into a5 from a2 (arg2 at entry) +0x20.
  The `lw` at 0x1a2c loads 4 bytes into a7 from sym(kona_mem_serialize) +0x0.
  The `lhu` at 0x1a38 loads 2 bytes into at from a2 (arg2 at entry) +0x6.
  The `ld` at 0x1a40 loads 8 bytes into a6 from a1 (arg1 at entry) +0x0.
  The `lw` at 0x1a5c loads 4 bytes into v0 from [a1]:8 +0x14.
  The `lw` at 0x1a60 loads 4 bytes into s2 from [a1]:8 +0x8.
  The `ld` at 0x1aac loads 8 bytes into a1 from a2 (arg2 at entry) +0x10.
  The `lw` at 0x1abc loads 4 bytes into a0 from a0 (arg0 at entry) +0x888.
  The `sd` at 0x1ac0 stores 8 bytes from v0 to a2 (arg2 at entry) +0x18 (value ret(alloc_gfx_io_space)).
  The `ld` at 0x1ad0 loads 8 bytes into a2 from a0 (arg0 at entry) +0x13e0.
  The `sd` at 0x1ae0 stores 8 bytes from s0 to [a0+5088]:8 +0x38 (value a2).
  The `sd` at 0x1ae8 stores 8 bytes from s0 to a0 (arg0 at entry) +0x13e0 (value a2).
  The `ld` at 0x1aec loads 8 bytes into a0 from sym(.srdata) +0x20.
  The `lwu` at 0x1af0 loads 4 bytes into a2 from sym(kona_mem_timeout_value) +0x0.
  The `ld` at 0x1afc loads 8 bytes into a3 from sym(.srdata) +0x8.
  The `ld` at 0x1b1c loads 8 bytes into a7 from a2 (arg2 at entry) +0x10.
  The `lw` at 0x1b20 loads 4 bytes into a3 from a2 (arg2 at entry) +0x20.
  The `lw` at 0x1b24 loads 4 bytes into a2 from a2 (arg2 at entry) +0xc.
  The `sd` at 0x1b28 stores 8 bytes from v0 to a2 (arg2 at entry) +0x58 (value ret(kona_timeout)).
  The `ld` at 0x1b30 loads 8 bytes into a4 from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1b34 loads 8 bytes into a6 from a2 (arg2 at entry) +0x18.
  The `lw` at 0x1b40 loads 4 bytes into a4 from [a1]:8 +0x14.
  The `ld` at 0x1b70 loads 8 bytes into t0 from a2 (arg2 at entry) +0x28.
  The `lbu` at 0x1b78 loads byte into a7 from [a2+40]:8 +0x0.
  The `sb` at 0x1b84 stores byte from a7 to [a2+40]:8 +0x0 (value [[a2+40]:8]:1-1).
  The `sb` at 0x1b88 stores byte from zero to a2 (arg2 at entry) +0x2 (value 0x0).
  The `sd` at 0x1b9c stores 8 bytes from s0 to a0 (arg0 at entry) +0x13e8 (value a2).
  The `jal` at 0x1a9c calls `psema` with a0=a2+72, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[a2+32], a6=[a1]:8, a7=[sym(kona_mem_serialize)].
  The `jal` at 0x1aa4 calls `kona_mem_cleanup` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1ab8 calls `alloc_gfx_io_space` with a0=[a0+2184], a1=[a2+16]:8, a2=?, a3=0xe.
  The `jal` at 0x1ac8 calls `mutex_spinlock` with a0=a0+2576, a1=?, a2=?, a3=?.
  The `jal` at 0x1ae4 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=[a0+5088]:8, a3=?.
  The `jal` at 0x1b00 calls `kona_timeout` with a0=sym(kona_mem_swapin_complete), a1=a0 at entry (arg0), a2=[sym(kona_mem_timeout_value)], a3=sym(splhi), a4=0x1, a5=a2 at entry (arg2).
  The `jal` at 0x1b44 calls `kona_mem_swapin_func` with a0=a0 at entry (arg0), a1=?, a2=[a2+12], a3=[a2+32], a4=[[a1]:8+20], a6=[a2+24]:8, a7=[a2+16]:8.
  The `jal` at 0x1b58 calls `psema` with a0=a2+72, a1=0x19, a2=?, a3=?.
  The `jal` at 0x1b60 calls `vsema` with a0=a2+72, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1a58 has these conditions:
    taken when (at(=[a2+6]:2) & 0x1) == 0.
    falls through when (at(=[a2+6]:2) & 0x1) != 0.
  The `beq` branch at 0x1a8c has these conditions:
    taken when a5(=[a2+32]) == 0.
    falls through when a5(=[a2+32]) != 0.
  The `beq` branch at 0x1ad8 has these conditions:
    taken when a2(=[a0+5088]:8) == 0.
    falls through when a2(=[a0+5088]:8) != 0.
  The `beq` branch at 0x1b50 has these conditions:
    taken when a6(?) == 0.
    falls through when a6(?) != 0.
  The return at 0x1b90 has v0 = ?.





- `kona_mem_update_driver` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x1ba0 (n64).
  It occupies 224 bytes.
  The `ld` at 0x1bb4 loads 8 bytes into s0 from a2 (arg2 at entry) +0x8.
  The `lbu` at 0x1bec loads byte into a2 from ? (base unknown).
  The `lw` at 0x1bf4 loads 4 bytes into a3 from ? (base unknown).
  The `lw` at 0x1c00 loads 4 bytes into a4 from ? (base unknown).
  The `ld` at 0x1c04 loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x1c18 loads 8 bytes into s0 from a3 (arg3 at entry) +0x8.
  The `lbu` at 0x1c40 loads byte into a2 from ? (base unknown).
  The `lw` at 0x1c48 loads 4 bytes into a3 from ? (base unknown).
  The `lw` at 0x1c54 loads 4 bytes into a4 from ? (base unknown).
  The `ld` at 0x1c58 loads 8 bytes into s0 from ? (base unknown).
  The `jal` at 0x1bfc calls `kona_mem_reserve_func` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1c50 calls `kona_mem_reserve_func` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1bd4 has these conditions:
    taken when s0(=[a2+8]:8) == 0.
    falls through when s0(=[a2+8]:8) != 0.
  The `bne` branch at 0x1c08 has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The `beq` branch at 0x1c10 has these conditions:
    taken when s3(=a3) == 0.
    falls through when s3(=a3) != 0.
  The `beq` branch at 0x1c20 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x1c5c has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The return at 0x1c78 has v0 = ?.





- `kona_mem_update` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x1c80 (n64).
  It occupies 152 bytes.
  The `ld` at 0x1c94 loads 8 bytes into s1 from a1 (arg1 at entry) +0x70.
  The `ld` at 0x1ce0 loads 8 bytes into a2 from [a1+112]:8 +0xf0.
  The `ld` at 0x1d14 loads 8 bytes into a2 from [a1+112]:8 +0xf0.
  The `jal` at 0x1cc8 calls `kona_mem_update_driver` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1cd8 has these conditions:
    taken when s0(?) >= 0x4 (signed).
    falls through when s0(?) < 0x4 (signed).
  The `bne` branch at 0x1ce4 has these conditions:
    taken when a2(=[[a1+112]:8+240]:8) != 0.
    falls through when a2(=[[a1+112]:8+240]:8) == 0.
  The return at 0x1d04 has v0 = ret(kona_mem_update_driver); f0 = ret(kona_mem_update_driver).





- `kona_mem_validate_driver` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x1d18 (n64).
  It occupies 296 bytes.
  The `ld` at 0x1d48 loads 8 bytes into s0 from a2 (arg2 at entry) +0x8.
  The `ld` at 0x1d78 loads 8 bytes into s0 from ? (base unknown).
  The `lbu` at 0x1d84 loads byte into at from ? (base unknown).
  The `ld` at 0x1d90 loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x1da4 loads 8 bytes into s0 from a3 (arg3 at entry) +0x8.
  The `lbu` at 0x1dac loads byte into v0 from ? (base unknown).
  The `ld` at 0x1dd4 loads 8 bytes into s0 from ? (base unknown).
  The `lbu` at 0x1de0 loads byte into v0 from ? (base unknown).
  The `ld` at 0x1dec loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x1e28 loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x1e3c loads 8 bytes into s0 from ? (base unknown).
  The `jal` at 0x1d40 calls `kona_mem_cleanup` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1d68 calls `kona_mem_reserve` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1dc4 calls `kona_mem_reserve` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e1c calls `kona_mem_swapin` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1e30 calls `kona_mem_swapin` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x1d4c has these conditions:
    taken when s0(=[a2+8]:8) != 0.
    falls through when s0(=[a2+8]:8) == 0.
  The `beq` branch at 0x1d70 has these conditions:
    taken when v0(=ret(kona_mem_reserve)) == 0.
    falls through when v0(=ret(kona_mem_reserve)) != 0.
  The `beq` branch at 0x1d7c has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x1d88 has these conditions:
    taken when at(?) != 0.
    falls through when at(?) == 0.
  The `bne` branch at 0x1d94 has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The `beq` branch at 0x1d9c has these conditions:
    taken when s1(=a3) == 0.
    falls through when s1(=a3) != 0.
  The `bnel` branch at 0x1da8 has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The `beq` branch at 0x1dcc has these conditions:
    taken when v0(=ret(kona_mem_reserve)) == 0.
    falls through when v0(=ret(kona_mem_reserve)) != 0.
  The `beq` branch at 0x1dd8 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x1de4 has these conditions:
    taken when v0(?) != 0.
    falls through when v0(?) == 0.
  The `bne` branch at 0x1df0 has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The return at 0x1e10 has v0 = ?.





- `kona_mem_validate` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x1e40 (n64).
  It occupies 276 bytes.
  The `ld` at 0x1e48 loads 8 bytes into s6 from a1 (arg1 at entry) +0x70.
  The `ld` at 0x1e88 loads 8 bytes into at from [a1+112]:8 +0xf0.
  The `lbu` at 0x1e98 loads byte into a0 from ? (base unknown).
  The `lbu` at 0x1ec4 loads byte into a2 from ? (base unknown).
  The `lbu` at 0x1ed8 loads byte into a3 from ? (base unknown).
  The `lbu` at 0x1f40 loads byte into a7 from ? (base unknown).
  The `jal` at 0x1e58 calls `kona_mem_cleanup` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1ebc calls `kona_mem_validate_driver` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1e9c has these conditions:
    taken when at(=[[a1+112]:8+240]:8) == 0.
    falls through when at(=[[a1+112]:8+240]:8) != 0.
  The `beq` branch at 0x1ea4 has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `bne` branch at 0x1ec8 has these conditions:
    taken when a2(?) != 0.
    falls through when a2(?) == 0.
  The `beq` branch at 0x1ed0 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x1edc has these conditions:
    taken when a3(?) != 0.
    falls through when a3(?) == 0.
  The `bne` branch at 0x1ef8 has these conditions:
    taken when s5(?) < 0x4 (signed).
    falls through when s5(?) >= 0x4 (signed).
  The `bne` branch at 0x1f28 has these conditions:
    taken when a0(?) != 0.
    falls through when a0(?) == 0.
  The `beq` branch at 0x1f38 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x1f44 has these conditions:
    taken when a7(?) != 0.
    falls through when a7(?) == 0.
  The return at 0x1f20 has v0 = ?.





- `kona_mem_free` in `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)` at 0x2674 (n64).
  It occupies 616 bytes.
  The `ld` at 0x2674 loads 8 bytes into v0 from a1 (arg1 at entry) +0x70.
  The `lbu` at 0x2680 loads byte into s2 from a2 (arg2 at entry) +0x1.
  The `lbu` at 0x268c loads byte into s3 from a2 (arg2 at entry) +0x0.
  The `ld` at 0x2694 loads 8 bytes into s1 from a0 (arg0 at entry) +0x28.
  The `ld` at 0x26d0 loads 8 bytes into a0 from a1 (arg1 at entry) +0x40.
  The `ld` at 0x26e4 loads 8 bytes into a0 from a0 (arg0 at entry) +0x28.
  The `lw` at 0x26e8 loads 4 bytes into v1 from [a0+40]:8 +0x50.
  The `sw` at 0x26f4 stores 4 bytes from v1 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]+1).
  The `ld` at 0x26f8 loads 8 bytes into v0 from ? (base unknown).
  The `ld` at 0x2718 loads 8 bytes into s0 from ? (base unknown).
  The `lbu` at 0x2728 loads byte into v1 from ? (base unknown).
  The `ld` at 0x2730 loads 8 bytes into s0 from ? (base unknown).
  The `lbu` at 0x273c loads byte into v1 from ? (base unknown).
  The `ld` at 0x2758 loads 8 bytes into s0 from ? (base unknown).
  The `lbu` at 0x2768 loads byte into a0 from ? (base unknown).
  The `ld` at 0x2770 loads 8 bytes into s0 from ? (base unknown).
  The `lbu` at 0x277c loads byte into a0 from ? (base unknown).
  The `ld` at 0x278c loads 8 bytes into s0 from ? (base unknown).
  The `lbu` at 0x2798 loads byte into a1 from ? (base unknown).
  The `ld` at 0x27b0 loads 8 bytes into t0 from ? (base unknown).
  The `sd` at 0x27b4 stores 8 bytes from t0 to ? (base unknown) (value unknown).
  The `lw` at 0x27b8 loads 4 bytes into a4 from ? (base unknown).
  The `ld` at 0x27bc loads 8 bytes into a3 from ? (base unknown).
  The `sd` at 0x27c0 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `lw` at 0x27c8 loads 4 bytes into a2 from ? (base unknown).
  The `sw` at 0x27d8 stores 4 bytes from a2 to ? (base unknown) (value unknown).
  The `ld` at 0x27dc loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x27f4 loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x280c loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x2818 loads 8 bytes into t3 from ? (base unknown).
  The `sd` at 0x281c stores 8 bytes from t3 to ? (base unknown) (value unknown).
  The `lw` at 0x2820 loads 4 bytes into t2 from ? (base unknown).
  The `sd` at 0x2824 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `lw` at 0x2828 loads 4 bytes into t1 from ? (base unknown).
  The `sw` at 0x283c stores 4 bytes from t1 to ? (base unknown) (value unknown).
  The `lbu` at 0x2848 loads byte into a2 from ? (base unknown).
  The `lw` at 0x284c loads 4 bytes into t8 from [a0+40]:8 +0x87c.
  The `ld` at 0x287c loads 8 bytes into ra from a0 (arg0 at entry) +0x28.
  The `lw` at 0x2880 loads 4 bytes into t9 from [a0+40]:8 +0x50.
  The `sw` at 0x2890 stores 4 bytes from t9 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `ld` at 0x28a0 loads 8 bytes into at from a0 (arg0 at entry) +0x28.
  The `lw` at 0x28a4 loads 4 bytes into ra from [a0+40]:8 +0x50.
  The `sw` at 0x28b8 stores 4 bytes from ra to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `ld` at 0x28c4 loads 8 bytes into a0 from [a0+40]:8 +0x900.
  The `ld` at 0x28c8 loads 8 bytes into a0 from [a0+40]:8 +0x900.
  The `jal` at 0x26cc calls `RRM_CheckValidFault` with a0=[a1+64]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2844 calls `kona_mem_reserve_func` with a0=[a0+40]:8, a1=[a2]:1, a2=?, a3=0x0, a4=0x0.
  The `jal` at 0x2858 calls `psema` with a0=?, a1=0x19, a2=?, a3=?.
  The `jal` at 0x2864 calls `kona_mem_cleanup` with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x286c calls `freesema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2874 calls `kern_free` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28c0 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2304]:8, a1=0x172, a2=?, a3=?.
  The `jal` at 0x28cc calls `gfx_pio_write_32` with a0=[[a0+40]:8+2304]:8, a1=0x0, a2=?, a3=?.
  The `bne` branch at 0x26a4 has these conditions:
    taken when s3(=[a2]:1) < 0x4 (signed).
    falls through when s3(=[a2]:1) >= 0x4 (signed).
  The `beq` branch at 0x26d4 has these conditions:
    taken when v0(=ret(RRM_CheckValidFault)) == 0.
    falls through when v0(=ret(RRM_CheckValidFault)) != 0.
  The `beq` branch at 0x26fc has these conditions:
    taken when v0(?) == 0.
    falls through when v0(?) != 0.
  The `beq` branch at 0x271c has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0x2734 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x2740 has these conditions:
    taken when v1(?) != s2(=[a2+1]:1).
    falls through when v1(?) == s2(=[a2+1]:1).
  The `bne` branch at 0x2748 has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The `beq` branch at 0x2750 has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `beq` branch at 0x275c has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0x2774 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0x2780 has these conditions:
    taken when a0(?) == s2(=[a2+1]:1).
    falls through when a0(?) != s2(=[a2+1]:1).
  The `beq` branch at 0x2790 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x279c has these conditions:
    taken when a1(?) != s2(=[a2+1]:1).
    falls through when a1(?) == s2(=[a2+1]:1).
  The `beq` branch at 0x27a4 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0x27e0 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0x27e8 has these conditions:
    taken when s2(?) == s0(?).
    falls through when s2(?) != s0(?).
  The `beq` branch at 0x27f8 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0x2800 has these conditions:
    taken when s2(?) == s0(?).
    falls through when s2(?) != s0(?).
  The `bne` branch at 0x2810 has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The `beq` branch at 0x2850 has these conditions:
    taken when t8(=[[a0+40]:8+2172]) == 0.
    falls through when t8(=[[a0+40]:8+2172]) != 0.
  The return at 0x26c4 has v0 = one of 0x0, 0x2, 0xe, 0x16.





- `kona_nclops_destroy` in `usr/cpu/sysgen/IP27boot/kona.a(kona_nclops.o)` at 0x1b58 (n64).
  It occupies 496 bytes.
  The `lw` at 0x1b70 loads 4 bytes into at from ? (base unknown).
  The `lw` at 0x1b94 loads 4 bytes into at from ? (base unknown).
  The `lw` at 0x1bc0 loads 4 bytes into v0 from sym(KonaGfxNumberOfBoards) +0x0.
  The `ld` at 0x1be8 loads 8 bytes into s0 from sym(kona_boards) +0x0.
  The `ld` at 0x1bf4 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1c08 loads 8 bytes into a0 from ? (base unknown).
  The `sd` at 0x1c20 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sw` at 0x1c2c stores 4 bytes from s4 to ? (base unknown) (value -0x1).
  The `lw` at 0x1c38 loads 4 bytes into v0 from sym(KonaGfxNumberOfBoards) +0x0.
  The `ld` at 0x1c44 loads 8 bytes into s0 from sym(kona_boards) +0x0.
  The `ld` at 0x1c54 loads 8 bytes into s0 from ? (base unknown).
  The `lw` at 0x1c58 loads 4 bytes into a3 from ? (base unknown).
  The `ld` at 0x1c6c loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1c80 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1c90 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1ca0 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1cb0 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1cc0 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1cd0 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1ce0 loads 8 bytes into a0 from ? (base unknown).
  The `sw` at 0x1d24 stores 4 bytes from zero to ? (base unknown) (value 0x0).
  The `jal` at 0x1c00 calls `gfx_pio_write_32` with a0=table(0x8003c0), a1=0xe200, a2=?, a3=?.
  The `jal` at 0x1c0c calls `gfx_pio_read_32` with a0=table(0x8003d0), a1=?, a2=?, a3=?.
  The `jal` at 0x1c30 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1c64 calls `mutex_spinlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1c78 calls `gfx_pio_write_32` with a0=table(0x8003c0), a1=0x80, a2=?, a3=?.
  The `jal` at 0x1c88 calls `gfx_pio_write_32` with a0=table(0x8003d0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1c98 calls `gfx_pio_write_32` with a0=table(0x8003c0), a1=0x8400, a2=?, a3=?.
  The `jal` at 0x1ca8 calls `gfx_pio_write_32` with a0=table(0x8003d0), a1=0x7000, a2=?, a3=?.
  The `jal` at 0x1cb8 calls `gfx_pio_write_32` with a0=table(0x8003c0), a1=0xe300, a2=?, a3=?.
  The `jal` at 0x1cc8 calls `gfx_pio_write_32` with a0=table(0x8003d0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1cd8 calls `gfx_pio_write_32` with a0=table(0x8003c0), a1=0xe500, a2=?, a3=?.
  The `jal` at 0x1ce8 calls `gfx_pio_write_32` with a0=table(0x8003d0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1d18 calls `mutex_spinlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d28 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x1b7c has these conditions:
    taken when at(?) == 0.
    falls through when at(?) != 0.
  The `beq` branch at 0x1ba4 has these conditions:
    taken when at(?) == v1(=0x1).
    falls through when at(?) != v1(=0x1).
  The `blez` branch at 0x1bdc has these conditions:
    taken when v0(=[sym(KonaGfxNumberOfBoards)]) <= 0 (signed).
    falls through when v0(=[sym(KonaGfxNumberOfBoards)]) > 0 (signed).
  The `beq` branch at 0x1bec has these conditions:
    taken when a4(?) == 0.
    falls through when a4(?) != 0.
  The `beq` branch at 0x1c18 has these conditions:
    taken when (v0(=ret(gfx_pio_read_32)) & 0x2) == 0.
    falls through when (v0(=ret(gfx_pio_read_32)) & 0x2) != 0.
  The `beq` branch at 0x1c48 has these conditions:
    taken when s1(?) >= v0(=[sym(KonaGfxNumberOfBoards)]) (signed).
    falls through when s1(?) < v0(=[sym(KonaGfxNumberOfBoards)]) (signed).
  The `bne` branch at 0x1c5c has these conditions:
    taken when a3(?) != s5(=a1).
    falls through when a3(?) == s5(=a1).
  The return at 0x1b8c has v0 = one of 0x0, 0x1.





- `kona_nclops_cleanup` in `usr/cpu/sysgen/IP27boot/kona.a(kona_nclops.o)` at 0x1d48 (n64).
  It occupies 188 bytes.
  The `ld` at 0x1d48 loads 8 bytes into v0 from a1 (arg1 at entry) +0x70.
  The `lh` at 0x1d4c loads 2 bytes into at from [a1+112]:8 +0xf8.
  The `sh` at 0x1d68 stores 2 bytes from v1 to [a1+112]:8 +0xf8 (value -0x1).
  The `lw` at 0x1d78 loads 4 bytes into a4 from a0 (arg0 at entry) +0x158c.
  The `sw` at 0x1d90 stores 4 bytes from a4 to a0 (arg0 at entry) +0x158c (value [a0+5516]-1).
  The `lw` at 0x1da8 loads 4 bytes into t9 from a0 (arg0 at entry) +0x157c.
  The `ld` at 0x1db0 loads 8 bytes into s1 from a0 (arg0 at entry) +0x1568.
  The `lw` at 0x1dcc loads 4 bytes into ra from ? (base unknown).
  The `lw` at 0x1ddc loads 4 bytes into at from ? (base unknown).
  The `sw` at 0x1de4 stores 4 bytes from at to ? (base unknown) (value unknown).
  The `jal` at 0x1d70 calls `mutex_spinlock` with a0=a0+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1d94 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+5516]-1.
  The `jal` at 0x1dc4 calls `mutex_spinlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1de8 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `bltz` branch at 0x1d5c has these conditions:
    taken when at(=[[a1+112]:8+248]:2) < 0 (signed).
    falls through when at(=[[a1+112]:8+248]:2) >= 0 (signed).
  The `blez` branch at 0x1d88 has these conditions:
    taken when a4(=[a0+5516]) <= 0 (signed).
    falls through when a4(=[a0+5516]) > 0 (signed).
  The `blez` branch at 0x1da0 has these conditions:
    taken when a5(?) <= 0 (signed).
    falls through when a5(?) > 0 (signed).
  The `blez` branch at 0x1dd4 has these conditions:
    taken when ra(?) <= 0 (signed).
    falls through when ra(?) > 0 (signed).
  The return at 0x1dfc has v0 = 0x0.





- `kona_nclops_init` in `usr/cpu/sysgen/IP27boot/kona.a(kona_nclops.o)` at 0x1e04 (n64).
  It occupies 48 bytes.
  The `ld` at 0x1e04 loads 8 bytes into at from a0 (arg0 at entry) +0x1568.
  The `jal` at 0x1e24 calls `bzero` with a0=a0+5480, a1=0x40, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `bne` branch at 0x1e10 has these conditions:
    taken when at(=[a0+5480]:8) != 0.
    falls through when at(=[a0+5480]:8) == 0.
  The return at 0x1e18 has v0 = ?.





- `kona_timeout_init` in `usr/cpu/sysgen/IP27boot/kona.a(kona_timeout.o)` at 0x0 (n64).
  It occupies 88 bytes.
  The `ld` at 0x0 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `ld` at 0x1c loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `sd` at 0x30 stores 8 bytes from a4 to a0 (arg0 at entry) +0x1528 (value 0x4).
  The `ld` at 0x34 loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `ld` at 0x38 loads 8 bytes into a3 from sym(.srdata) +0x0.
  The `sd` at 0x40 stores 8 bytes from a2 to a0 (arg0 at entry) +0x1518 (value sym(cmn_err)).
  The `sd` at 0x48 stores 8 bytes from a3 to a0 (arg0 at entry) +0x1530 (value sym(.rodata)).
  The `jal` at 0x14 calls `spinlock_init` with a0=a0+5368, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x24 calls `spinlock_init` with a0=a0+5372, a1=sym(.rodata), a2=?, a3=?.
  The return at 0x50 has v0 = ret(spinlock_init); f0 = ret(spinlock_init).





- `kona_timeout_alloc` in `usr/cpu/sysgen/IP27boot/kona.a(kona_timeout.o)` at 0x58 (n64).
  It occupies 84 bytes.
  The `jal` at 0x70 calls `kmem_alloc` with a0=0x40, a1=0x1, a2=?, a3=?.
  The `jal` at 0x80 calls `us_delay` with a0=0xa, a1=?, a2=?, a3=?.
  The `bne` branch at 0x78 has these conditions:
    taken when v0(=ret(kmem_alloc)) != 0.
    falls through when v0(=ret(kmem_alloc)) == 0.
  The `bne` branch at 0x90 has these conditions:
    taken when s0(?) < 0xa (unsigned).
    falls through when s0(?) >= 0xa (unsigned).
  The return at 0xa4 has v0 = ret(kmem_alloc).





- `kona_timeout_free` in `usr/cpu/sysgen/IP27boot/kona.a(kona_timeout.o)` at 0xac (n64).
  It occupies 28 bytes.
  The `jal` at 0xb4 calls `kmem_free` with a0=a0 at entry (arg0), a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xc0 has v0 = ret(kmem_free); f0 = ret(kmem_free).





- `kona_itimeout_func` in `usr/cpu/sysgen/IP27boot/kona.a(kona_timeout.o)` at 0x350 (n64).
  It occupies 160 bytes.
  The `ld` at 0x350 loads 8 bytes into at from a0 (arg0 at entry) +0x1560.
  The `ld` at 0x378 loads 8 bytes into a1 from sym(pltimeout) +0x0.
  The `ld` at 0x3a4 loads 8 bytes into v0 from a0 (arg0 at entry) +0x1500.
  The `jal` at 0x374 calls `mutex_spinlock_spl` with a0=a0+5368, a1=[sym(pltimeout)]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x380 calls `kona_callout` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x38c calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x398 calls `mutex_spinlock` with a0=a0+5372, a1=?, a2=?, a3=?.
  The `jal` at 0x3b4 calls `kona_sched_tick` with a0=a0 at entry (arg0), a1=0x7a120, a2=?, a3=?.
  The `jal` at 0x3c8 calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3e0 calls `kona_die` with a0=a0 at entry (arg0), a1=0x9, a2=?, a3=?.
  The `bne` branch at 0x364 has these conditions:
    taken when a1 < at(=[a0+5472]:8) (unsigned).
    falls through when a1 >= at(=[a0+5472]:8) (unsigned).
  The `beq` branch at 0x3a8 has these conditions:
    taken when v0(=[a0+5376]:8) == 0.
    falls through when v0(=[a0+5376]:8) != 0.
  The `beq` branch at 0x3bc has these conditions:
    taken when v0(=ret(kona_sched_tick)) == 0.
    falls through when v0(=ret(kona_sched_tick)) != 0.
  The return at 0x3d8 has v0 = ?.





- `kona_setcolor` in `usr/cpu/sysgen/IP27boot/kona.a(kona_tport.o)` at 0x0 (n64).
  It occupies 340 bytes.
  The `sw` at 0x4 stores 4 bytes from v0 to sym(ktport_inuse) +0x0 (value 0x1).
  The `lw` at 0xc loads 4 bytes into at from sym(ktport_mute) +0x0.
  The `sw` at 0x24 stores 4 bytes from zero to sym(ktport_inuse) +0x0 (value 0x0).
  The `sd` at 0x34 stores 8 bytes from s1 to sym(.sbss) +0x0 (value a0).
  The `ld` at 0x48 loads 8 bytes into t8 from sym(.sbss) +0x0.
  The `lw` at 0x54 loads 4 bytes into t8 from [sym(.sbss)]:8 +0x800208.
  The `ld` at 0x8c loads 8 bytes into a0 from sym(.sbss) +0x0.
  The `lw` at 0x9c loads 4 bytes into a0 from [sym(.sbss)]:8 +0x800208.
  The `ld` at 0xb4 loads 8 bytes into t8 from sym(.sbss) +0x0.
  The `sw` at 0xc8 stores 4 bytes from v0 to [sym(.sbss)]:8 +0xc10000 (value 0x1).
  The `sw` at 0xd0 stores 4 bytes from at to [sym(.sbss)]:8 +0xc10000 (value 0x2).
  The `sw` at 0xd4 stores 4 bytes from t9 to [sym(.sbss)]:8 +0xc10000 (value a1).
  The `sw` at 0xdc stores 4 bytes from zero to sym(ktport_inuse) +0x0 (value 0x0).
  The `lw` at 0xe0 loads 4 bytes into t8 from [sym(.sbss)]:8 +0x800208.
  The `ld` at 0x104 loads 8 bytes into a0 from sym(.sbss) +0x0.
  The `lw` at 0x114 loads 4 bytes into a0 from [sym(.sbss)]:8 +0x800208.
  The `jal` at 0x40 calls `mutex_spinlock` with a0=sym(ktport_lock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x84 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0xac calls `kona_fc_attach` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xfc calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x12c calls `kona_fc_detach` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x140 calls `mutex_spinunlock` with a0=sym(ktport_lock), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1c has these conditions:
    taken when at(=[sym(ktport_mute)]) == 0.
    falls through when at(=[sym(ktport_mute)]) != 0.
  The `bgtz` branch at 0x6c has these conditions:
    taken when t8(?) > 0 (signed).
    falls through when t8(?) <= 0 (signed).
  The `blez` branch at 0x7c has these conditions:
    taken when a0(?) <= 0 (signed).
    falls through when a0(?) > 0 (signed).
  The `bne` branch at 0xa4 has these conditions:
    taken when v0(?) < s2(=0x186a1) (signed).
    falls through when v0(?) >= s2(=0x186a1) (signed).
  The `blez` branch at 0xf4 has these conditions:
    taken when t8(?) <= 0 (signed).
    falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x11c has these conditions:
    taken when v0(?) >= s2(=0x186a1) (signed).
    falls through when v0(?) < s2(=0x186a1) (signed).
  The `bgtz` branch at 0x124 has these conditions:
    taken when a0(?) > 0 (signed).
    falls through when a0(?) <= 0 (signed).
  The return at 0x2c has v0 = ?.





- `kona_unblank` in `usr/cpu/sysgen/IP27boot/kona.a(kona_tport.o)` at 0x5c8 (n64).
  It occupies 328 bytes.
  The `lw` at 0x5c8 loads 4 bytes into at from sym(ktport_mute) +0x0.
  The `sw` at 0x5d0 stores 4 bytes from v0 to sym(ktport_inuse) +0x0 (value 0x1).
  The `sw` at 0x5e8 stores 4 bytes from zero to sym(ktport_inuse) +0x0 (value 0x0).
  The `sd` at 0x5f8 stores 8 bytes from s1 to sym(.sbss) +0x0 (value a0).
  The `ld` at 0x60c loads 8 bytes into t8 from sym(.sbss) +0x0.
  The `lw` at 0x618 loads 4 bytes into t8 from [sym(.sbss)]:8 +0x800208.
  The `ld` at 0x650 loads 8 bytes into a0 from sym(.sbss) +0x0.
  The `lw` at 0x660 loads 4 bytes into a0 from [sym(.sbss)]:8 +0x800208.
  The `ld` at 0x678 loads 8 bytes into t8 from sym(.sbss) +0x0.
  The `sw` at 0x688 stores 4 bytes from ra to [sym(.sbss)]:8 +0xc10000 (value 0x1).
  The `sw` at 0x68c stores 4 bytes from ra to [sym(.sbss)]:8 +0xc10000 (value 0x1).
  The `sw` at 0x690 stores 4 bytes from zero to [sym(.sbss)]:8 +0xc10000 (value 0x0).
  The `sw` at 0x698 stores 4 bytes from zero to sym(ktport_inuse) +0x0 (value 0x0).
  The `lw` at 0x69c loads 4 bytes into t8 from [sym(.sbss)]:8 +0x800208.
  The `ld` at 0x6c0 loads 8 bytes into a0 from sym(.sbss) +0x0.
  The `lw` at 0x6d0 loads 4 bytes into a0 from [sym(.sbss)]:8 +0x800208.
  The `jal` at 0x604 calls `mutex_spinlock` with a0=sym(ktport_lock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x648 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x670 calls `kona_fc_attach` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x6b8 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x6e8 calls `kona_fc_detach` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x6fc calls `mutex_spinunlock` with a0=sym(ktport_lock), a1=?, a2=?, a3=?.
  The `beq` branch at 0x5e0 has these conditions:
    taken when at(=[sym(ktport_mute)]) == 0.
    falls through when at(=[sym(ktport_mute)]) != 0.
  The `bgtz` branch at 0x630 has these conditions:
    taken when t8(?) > 0 (signed).
    falls through when t8(?) <= 0 (signed).
  The `blez` branch at 0x640 has these conditions:
    taken when a0(?) <= 0 (signed).
    falls through when a0(?) > 0 (signed).
  The `bne` branch at 0x668 has these conditions:
    taken when v0(?) < s2(=0x186a1) (signed).
    falls through when v0(?) >= s2(=0x186a1) (signed).
  The `blez` branch at 0x6b0 has these conditions:
    taken when t8(?) <= 0 (signed).
    falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x6d8 has these conditions:
    taken when v0(?) >= s2(=0x186a1) (signed).
    falls through when v0(?) < s2(=0x186a1) (signed).
  The `bgtz` branch at 0x6e0 has these conditions:
    taken when a0(?) > 0 (signed).
    falls through when a0(?) <= 0 (signed).
  The return at 0x5f0 has v0 = ?.





- `kona_movechar` in `usr/cpu/sysgen/IP27boot/kona.a(kona_tport.o)` at 0x710 (n64).
  It occupies 352 bytes.
  The `sw` at 0x714 stores 4 bytes from v0 to sym(ktport_inuse) +0x0 (value 0x1).
  The `lw` at 0x720 loads 4 bytes into at from sym(ktport_mute) +0x0.
  The `sw` at 0x738 stores 4 bytes from zero to sym(ktport_inuse) +0x0 (value 0x0).
  The `sd` at 0x748 stores 8 bytes from s1 to sym(.sbss) +0x0 (value a0).
  The `ld` at 0x75c loads 8 bytes into t8 from sym(.sbss) +0x0.
  The `lw` at 0x768 loads 4 bytes into t8 from [sym(.sbss)]:8 +0x800208.
  The `ld` at 0x7a0 loads 8 bytes into a0 from sym(.sbss) +0x0.
  The `lw` at 0x7b0 loads 4 bytes into a0 from [sym(.sbss)]:8 +0x800208.
  The `ld` at 0x7c8 loads 8 bytes into t8 from sym(.sbss) +0x0.
  The `sw` at 0x7e0 stores 4 bytes from v1 to [sym(.sbss)]:8 +0xc10000 (value 0x1).
  The `sw` at 0x7e8 stores 4 bytes from v0 to [sym(.sbss)]:8 +0xc10000 (value 0x4).
  The `sw` at 0x7ec stores 4 bytes from at to [sym(.sbss)]:8 +0xc10000 (value a1).
  The `sw` at 0x7f0 stores 4 bytes from t9 to [sym(.sbss)]:8 +0xc10000 (value a2).
  The `sw` at 0x7f8 stores 4 bytes from zero to sym(ktport_inuse) +0x0 (value 0x0).
  The `lw` at 0x7fc loads 4 bytes into t8 from [sym(.sbss)]:8 +0x800208.
  The `ld` at 0x820 loads 8 bytes into a0 from sym(.sbss) +0x0.
  The `lw` at 0x830 loads 4 bytes into a0 from [sym(.sbss)]:8 +0x800208.
  The `jal` at 0x754 calls `mutex_spinlock` with a0=sym(ktport_lock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x798 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x7c0 calls `kona_fc_attach` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x818 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x848 calls `kona_fc_detach` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x85c calls `mutex_spinunlock` with a0=sym(ktport_lock), a1=?, a2=?, a3=?.
  The `beq` branch at 0x730 has these conditions:
    taken when at(=[sym(ktport_mute)]) == 0.
    falls through when at(=[sym(ktport_mute)]) != 0.
  The `bgtz` branch at 0x780 has these conditions:
    taken when t8(?) > 0 (signed).
    falls through when t8(?) <= 0 (signed).
  The `blez` branch at 0x790 has these conditions:
    taken when a0(?) <= 0 (signed).
    falls through when a0(?) > 0 (signed).
  The `bne` branch at 0x7b8 has these conditions:
    taken when v0(?) < s2(=0x186a1) (signed).
    falls through when v0(?) >= s2(=0x186a1) (signed).
  The `blez` branch at 0x810 has these conditions:
    taken when t8(?) <= 0 (signed).
    falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x838 has these conditions:
    taken when v0(?) >= s2(=0x186a1) (signed).
    falls through when v0(?) < s2(=0x186a1) (signed).
  The `bgtz` branch at 0x840 has these conditions:
    taken when a0(?) > 0 (signed).
    falls through when a0(?) <= 0 (signed).
  The return at 0x740 has v0 = ?.





- `kona_getdesc` in `usr/cpu/sysgen/IP27boot/kona.a(kona_tport.o)` at 0xcd0 (n64).
  It occupies 24 bytes.
  The `beq` branch at 0xcd4 has these conditions:
    taken when a1 == at(=0x1).
    falls through when a1 != at(=0x1).
  The return at 0xce0 has v0 = one of 0x0, 0x1.





- `kona_select_cursor` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x0 (n64).
  It occupies 116 bytes.
  The `ld` at 0xc loads 8 bytes into a0 from a0 (arg0 at entry) +0x28.
  The `lw` at 0x2c loads 4 bytes into a7 from a2 (arg2 at entry) +0x0.
  The `sb` at 0x30 stores byte from a7 to ? (base unknown) (value [a2]).
  The `lw` at 0x34 loads 4 bytes into a6 from a2 (arg2 at entry) +0x4.
  The `sw` at 0x38 stores 4 bytes from a6 to ? (base unknown) (value [a2+4]).
  The `lw` at 0x3c loads 4 bytes into a5 from a2 (arg2 at entry) +0x8.
  The `sh` at 0x40 stores 2 bytes from a5 to ? (base unknown) (value [a2+8]).
  The `lw` at 0x44 loads 4 bytes into a2 from a2 (arg2 at entry) +0xc.
  The `sb` at 0x4c stores byte from a4 to ? (base unknown) (value 0x1).
  The `sb` at 0x50 stores byte from a4 to ? (base unknown) (value 0x1).
  The `sh` at 0x5c stores 2 bytes from a2 to ? (base unknown) (value [a2+12]).
  The `jal` at 0x1c calls `mutex_spinlock` with a0=[a0+40]:8+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x58 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=[a2+12], a3=?, a4=0x1, a5=[a2+8], a6=[a2+4], a7=[a2].
  The return at 0x6c has v0 = 0x0; f0 = ret(mutex_spinunlock).





- `kona_video_rundown` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0xd0 (n64).
  It occupies 168 bytes.
  The `ld` at 0xe0 loads 8 bytes into v0 from a0 (arg0 at entry) +0xdd8.
  The `ld` at 0x104 loads 8 bytes into a4 from ? (base unknown).
  The `ld` at 0x114 loads 8 bytes into v0 from ? (base unknown).
  The `ld` at 0x14c loads 8 bytes into a1 from ? (base unknown).
  The `sd` at 0x150 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `ld` at 0x154 loads 8 bytes into v0 from ? (base unknown).
  The `sd` at 0x158 stores 8 bytes from v0 to ? (base unknown) (value unknown).
  The `sd` at 0x15c stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `ld` at 0x160 loads 8 bytes into at from a0 (arg0 at entry) +0xdd0.
  The `sd` at 0x16c stores 8 bytes from s2 to a0 (arg0 at entry) +0xdd0 (value unknown).
  The `jal` at 0x148 calls `kona_untimeout` with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xf8 has these conditions:
    taken when v0(=[a0+3544]:8) == 0.
    falls through when v0(=[a0+3544]:8) != 0.
  The `beq` branch at 0x108 has these conditions:
    taken when s0(=a1) == v0(?).
    falls through when s0(=a1) != v0(?).
  The `bne` branch at 0x118 has these conditions:
    taken when v0(?) != 0.
    falls through when v0(?) == 0.
  The `bne` branch at 0x164 has these conditions:
    taken when at(=[a0+3536]:8) != s0(=a1).
    falls through when at(=[a0+3536]:8) == s0(=a1).
  The return at 0x13c has v0 = one of 0x0, 0x1.





- `kona_video_cleanup` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x178 (n64).
  It occupies 84 bytes.
  The `jal` at 0x190 calls `mutex_spinlock` with a0=a0+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a0 calls `kona_video_rundown` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1b0 calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The return at 0x1c4 has v0 = ret(kona_video_rundown); f0 = ret(mutex_spinunlock).





- `kona_swap_complete` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x1cc (n64).
  It occupies 236 bytes.
  The `ld` at 0x1ec loads 8 bytes into a2 from sym(.srdata) +0x0.
  The `lw` at 0x1f8 loads 4 bytes into a4 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x204 loads 8 bytes into at from a1 (arg1 at entry) +0x78.
  The `ld` at 0x208 loads 8 bytes into at from [a1+120]:8 +0xa0.
  The `lw` at 0x214 loads 4 bytes into a6 from a0 (arg0 at entry) +0xb0.
  The `ld` at 0x220 loads 8 bytes into a7 from a1 (arg1 at entry) +0x78.
  The `ld` at 0x224 loads 8 bytes into t0 from a0 (arg0 at entry) +0xb8.
  The `ld` at 0x228 loads 8 bytes into a7 from [a1+120]:8 +0xa0.
  The `ld` at 0x234 loads 8 bytes into t1 from ? (base unknown).
  The `ld` at 0x26c loads 8 bytes into a2 from a0 (arg0 at entry) +0x948.
  The `ld` at 0x284 loads 8 bytes into a2 from a0 (arg0 at entry) +0x948.
  The `lw` at 0x29c loads 4 bytes into a6 from a0 (arg0 at entry) +0xb0.
  The `jal` at 0x1fc calls `cmn_err_tag` with a0=0x837, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=a1 at entry (arg1).
  The `jal` at 0x24c calls `rrmValidateBuffer` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x27c calls `gfx_pio_write_32` with a0=[a0+2376]:8+0x8003c0, a1=0x80, a2=[a0+2376]:8, a3=?, a6=[a0+176], a7=[[a1+120]:8+160]:8.
  The `jal` at 0x294 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0x8003d0, a1=0x2, a2=[a0+2376]:8, a3=?.
  The `beq` branch at 0x1e0 has these conditions:
    taken when a2 == 0.
    falls through when a2 != 0.
  The `beq` branch at 0x20c has these conditions:
    taken when at(=[[a1+120]:8+160]:8) == 0.
    falls through when at(=[[a1+120]:8+160]:8) != 0.
  The `beq` branch at 0x218 has these conditions:
    taken when a6(=[a0+176]) == 0.
    falls through when a6(=[a0+176]) != 0.
  The `beq` branch at 0x23c has these conditions:
    taken when t1(?) == a7(=[[a1+120]:8+160]:8).
    falls through when t1(?) != a7(=[[a1+120]:8+160]:8).
  The `bne` branch at 0x244 has these conditions:
    taken when a4(?) != 0.
    falls through when a4(?) == 0.
  The `bne` branch at 0x2a8 has these conditions:
    taken when s0(?) < a6(=[a0+176]) (unsigned).
    falls through when s0(?) >= a6(=[a0+176]) (unsigned).
  The return at 0x264 has v0 = ret(rrmValidateBuffer); f0 = ret(rrmValidateBuffer).




- `kona_gsync_complete` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x2b8 (n64).
  It occupies 80 bytes.
  The `ld` at 0x2d0 loads 8 bytes into a3 from sym(.srdata) +0x0.
  The `lw` at 0x2e4 loads 4 bytes into a4 from a0 (arg0 at entry) +0x888.
  The `jal` at 0x2e8 calls `cmn_err_tag` with a0=0x838, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `jal` at 0x2f0 calls `rrmValidateRetrace` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2c8 has these conditions:
    taken when a2 == 0.
    falls through when a2 != 0.
  The return at 0x300 has v0 = ret(rrmValidateRetrace); f0 = ret(rrmValidateRetrace).




- `kona_retrace_timeout` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x308 (n64).
  It occupies 192 bytes.
  The `ld` at 0x340 loads 8 bytes into a4 from a1 (arg1 at entry) +0x70.
  The `ld` at 0x354 loads 8 bytes into at from [a1+112]:8 +0x78.
  The `sd` at 0x364 stores 8 bytes from zero to [a1+112]:8 +0x78 (value 0x0).
  The `ld` at 0x370 loads 8 bytes into v0 from [a1+112]:8 +0x80.
  The `sd` at 0x384 stores 8 bytes from zero to [a1+112]:8 +0x80 (value 0x0).
  The `jal` at 0x32c calls `mutex_spinlock` with a0=a0+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x368 calls `kona_video_rundown` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=[a1+112]:8.
  The `jalr` at 0x37c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=?.
  The `jal` at 0x38c calls `mutex_spinunlock` with a0=a0+3520, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3b8 calls `mutex_spinunlock` with a0=a0+3520, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x338 has these conditions:
    taken when s0(=a1) == 0.
    falls through when s0(=a1) != 0.
  The `beq` branch at 0x344 has these conditions:
    taken when a4(=[a1+112]:8) == 0.
    falls through when a4(=[a1+112]:8) != 0.
  The `beq` branch at 0x34c has these conditions:
    taken when s1(=[a1+112]:8+112) == 0.
    falls through when s1(=[a1+112]:8+112) != 0.
  The `beq` branch at 0x358 has these conditions:
    taken when at(=[[a1+112]:8+120]:8) == 0.
    falls through when at(=[[a1+112]:8+120]:8) != 0.
  The return at 0x3ac has v0 = ret(mutex_spinunlock); f0 = ret(mutex_spinunlock).




- `kona_mswap_complete` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x1004 (n64).
  It occupies 308 bytes.
  The `lw` at 0x103c loads 4 bytes into a0 from a0 (arg0 at entry) +0xdf8.
  The `ld` at 0x1058 loads 8 bytes into a0 from a0 (arg0 at entry) +0x0.
  The `lw` at 0x105c loads 4 bytes into at from a0 (arg0 at entry) +0xdf8.
  The `sw` at 0x1064 stores 4 bytes from at to a0 (arg0 at entry) +0xdf8 (value [a0+3576]-1).
  The `sw` at 0x1068 stores 4 bytes from s5 to ? (base unknown) (value -0x1).
  The `sw` at 0x106c stores 4 bytes from zero to ? (base unknown) (value 0x0).
  The `lw` at 0x1070 loads 4 bytes into a0 from a0 (arg0 at entry) +0xdf8.
  The `lw` at 0x108c loads 4 bytes into a1 from ? (base unknown).
  The `lw` at 0x1098 loads 4 bytes into t8 from ? (base unknown).
  The `ld` at 0x10d8 loads 8 bytes into a2 from sym(.srdata) +0x0.
  The `lw` at 0x10e8 loads 4 bytes into a4 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x112c loads 8 bytes into a1 from a0 (arg0 at entry) +0xe00.
  The `sd` at 0x1134 stores 8 bytes from zero to a0 (arg0 at entry) +0xe00 (value 0x0).
  The `jal` at 0x1030 calls `mutex_spinlock` with a0=a0+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1054 calls `rrmValidateMGRSwapBuf` with a0=[a0]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x10d0 calls `mutex_spinunlock` with a0=a0+3520, a1=?, a2=?, a3=?.
  The `jal` at 0x10ec calls `cmn_err_tag` with a0=0x839, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184].
  The `jal` at 0x1128 calls `kona_untimeout` with a0=a0 at entry (arg0), a1=[a0+3584]:8, a2=?, a3=?.
  The `beq` branch at 0x1028 has these conditions:
    taken when a1 == 0.
    falls through when a1 != 0.
  The `beq` branch at 0x1044 has these conditions:
    taken when a0(=[a0+3576]) == 0.
    falls through when a0(=[a0+3576]) != 0.
  The `beq` branch at 0x1078 has these conditions:
    taken when a0(=[a0+3576]) == 0.
    falls through when a0(=[a0+3576]) != 0.
  The `beq` branch at 0x1080 has these conditions:
    taken when a1(?) == 0.
    falls through when a1(?) != 0.
  The `beq` branch at 0x1090 has these conditions:
    taken when a1(?) == 0.
    falls through when a1(?) != 0.
  The `beq` branch at 0x10a0 has these conditions:
    taken when s4(=a2) >= t8(?) (unsigned).
    falls through when s4(=a2) < t8(?) (unsigned).
  The `bne` branch at 0x10a8 has these conditions:
    taken when s3(=a1) != 0.
    falls through when s3(=a1) == 0.
  The `beq` branch at 0x10b4 has these conditions:
    taken when a0(=[a0+3576]) == 0.
    falls through when a0(=[a0+3576]) != 0.
  The `bne` branch at 0x10c0 has these conditions:
    taken when a1(?) < 0x60 (signed).
    falls through when a1(?) >= 0x60 (signed).
  The `beq` branch at 0x10c8 has these conditions:
    taken when s3(=a1) == 0.
    falls through when s3(=a1) != 0.
  The `beq` branch at 0x10fc has these conditions:
    taken when a0(=[a0+3576]) == 0.
    falls through when a0(=[a0+3576]) != 0.
  The return at 0x111c has v0 = ?.




- `kona_video_tick` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x1468 (n64).
  It occupies 112 bytes.
  The `lw` at 0x1468 loads 4 bytes into at from a0 (arg0 at entry) +0x90.
  The `ld` at 0x1484 loads 8 bytes into a0 from a0 (arg0 at entry) +0x98.
  The `lw` at 0x1488 loads 4 bytes into v0 from a0 (arg0 at entry) +0xa4.
  The `lw` at 0x148c loads 4 bytes into a0 from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x1490 loads 4 bytes into a1 from a0 (arg0 at entry) +0x80.
  The `ld` at 0x1494 loads 8 bytes into v1 from a0 (arg0 at entry) +0x88.
  The `sw` at 0x149c stores 4 bytes from a1 to a0 (arg0 at entry) +0x80 (value [a0+128]+1).
  The `sw` at 0x14a4 stores 4 bytes from a0 to a0 (arg0 at entry) +0x7c (value [a0+124]+1).
  The `sw` at 0x14b0 stores 4 bytes from v0 to a0 (arg0 at entry) +0xa4 (value [a0+164]+1).
  The `ld` at 0x14b4 loads 8 bytes into a2 from a0 (arg0 at entry) +0xa8.
  The `jal` at 0x1480 calls `sendgroupintr` with a0=[a0+152]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x14c0 calls `rrmValidateVideoSync` with a0=a0 at entry (arg0), a1=[a0+128]+1, a2=?, a3=?.
  The `beq` branch at 0x1478 has these conditions:
    taken when at(=[a0+144]) == 0.
    falls through when at(=[a0+144]) != 0.
  The `bne` branch at 0x14ac has these conditions:
    taken when v1(=[a0+136]:8) != 0.
    falls through when v1(=[a0+136]:8) == 0.
  The `beq` branch at 0x14b8 has these conditions:
    taken when a2(=[a0+168]:8) == 0.
    falls through when a2(=[a0+168]:8) != 0.
  The return at 0x14d0 has v0 = ?.




- `kona_determine_cursor_channel` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x14d8 (n64).
  It occupies 444 bytes.
  The `lbu` at 0x14dc loads byte into t2 from a0 (arg0 at entry) +0x1c.
  The `lh` at 0x14e8 loads 2 bytes into a6 from a0 (arg0 at entry) +0x24.
  The `lh` at 0x14f4 loads 2 bytes into a7 from a0 (arg0 at entry) +0x26.
  The `lbu` at 0x1514 loads byte into a5 from ? (base unknown).
  The `lb` at 0x1520 loads byte into a5 from ? (base unknown).
  The `lh` at 0x1530 loads 2 bytes into a1 from ? (base unknown).
  The `lh` at 0x1540 loads 2 bytes into a2 from ? (base unknown).
  The `lh` at 0x1550 loads 2 bytes into t3 from ? (base unknown).
  The `lh` at 0x1560 loads 2 bytes into t9 from ? (base unknown).
  The `lbu` at 0x1590 loads byte into v1 from ? (base unknown).
  The `lb` at 0x159c loads byte into a5 from ? (base unknown).
  The `lh` at 0x15ac loads 2 bytes into a2 from ? (base unknown).
  The `lh` at 0x15bc loads 2 bytes into t3 from ? (base unknown).
  The `lh` at 0x15cc loads 2 bytes into t9 from ? (base unknown).
  The `lh` at 0x15e0 loads 2 bytes into t9 from ? (base unknown).
  The `lbu` at 0x1614 loads byte into a6 from a0 (arg0 at entry) +0x1a.
  The `sb` at 0x1624 stores byte from zero to a0 (arg0 at entry) +0x1a (value 0x0).
  The `lb` at 0x1628 loads byte into a7 from (a0 + ([a0+28]:1 << 0x4)) +0x3a1.
  The `sb` at 0x1644 stores byte from t1 to a0 (arg0 at entry) +0x1c (value unknown).
  The `lb` at 0x1648 loads byte into a6 from (a0 + ([a0+28]:1 << 0x4)) +0x3a1.
  The `lbu` at 0x1650 loads byte into a5 from ? (base unknown).
  The `lbu` at 0x166c loads byte into a6 from a0 (arg0 at entry) +0x1a.
  The `sb` at 0x167c stores byte from a5 to a0 (arg0 at entry) +0x1a (value unknown).
  The `sb` at 0x1690 stores byte from t1 to a0 (arg0 at entry) +0x1c (value unknown).
  The `bltz` branch at 0x1504 has these conditions:
    taken when a3(?) < 0 (signed).
    falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x1518 has these conditions:
    taken when a5(?) == 0.
    falls through when a5(?) != 0.
  The `bne` branch at 0x1528 has these conditions:
    taken when a4(?) < a5(?) (signed).
    falls through when a4(?) >= a5(?) (signed).
  The `bne` branch at 0x1538 has these conditions:
    taken when a6(=[a0+36]:2) < a1(?) (signed).
    falls through when a6(=[a0+36]:2) >= a1(?) (signed).
  The `beq` branch at 0x1548 has these conditions:
    taken when a6(=[a0+36]:2) >= a2(?) (signed).
    falls through when a6(=[a0+36]:2) < a2(?) (signed).
  The `bne` branch at 0x1558 has these conditions:
    taken when a7(=[a0+38]:2) < t3(?) (signed).
    falls through when a7(=[a0+38]:2) >= t3(?) (signed).
  The `beq` branch at 0x156c has these conditions:
    taken when a7(=[a0+38]:2) >= t9(?) (signed).
    falls through when a7(=[a0+38]:2) < t9(?) (signed).
  The `bltz` branch at 0x1588 has these conditions:
    taken when a3(?) < 0 (signed).
    falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x1594 has these conditions:
    taken when v1(?) == 0.
    falls through when v1(?) != 0.
  The `bne` branch at 0x15a4 has these conditions:
    taken when a4(?) < a5(?) (signed).
    falls through when a4(?) >= a5(?) (signed).
  The `bne` branch at 0x15b4 has these conditions:
    taken when a6(=[a0+36]:2) < a2(?) (signed).
    falls through when a6(=[a0+36]:2) >= a2(?) (signed).
  The `beq` branch at 0x15c4 has these conditions:
    taken when a6(=[a0+36]:2) >= t3(?) (signed).
    falls through when a6(=[a0+36]:2) < t3(?) (signed).
  The `bne` branch at 0x15d8 has these conditions:
    taken when a7(=[a0+38]:2) < t9(?) (signed).
    falls through when a7(=[a0+38]:2) >= t9(?) (signed).
  The `beq` branch at 0x15e8 has these conditions:
    taken when a7(=[a0+38]:2) >= t9(?) (signed).
    falls through when a7(=[a0+38]:2) < t9(?) (signed).
  The `bne` branch at 0x160c has these conditions:
    taken when t1(?) < 0x8 (signed).
    falls through when t1(?) >= 0x8 (signed).
  The `beq` branch at 0x1618 has these conditions:
    taken when a6(=[a0+26]:1) == 0.
    falls through when a6(=[a0+26]:1) != 0.
  The `bne` branch at 0x162c has these conditions:
    taken when a7(=[(a0 + ([a0+28]:1 << 0x4))+929]:1) != a4(?).
    falls through when a7(=[(a0 + ([a0+28]:1 << 0x4))+929]:1) == a4(?).
  The `bne` branch at 0x1634 has these conditions:
    taken when t0(=one of 0x0, 0x1) != 0.
    falls through when t0(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x165c has these conditions:
    taken when a6(=[(a0 + ([a0+28]:1 << 0x4))+929]:1) != a4(?).
    falls through when a6(=[(a0 + ([a0+28]:1 << 0x4))+929]:1) == a4(?).
  The `beq` branch at 0x1664 has these conditions:
    taken when t0(=one of 0x0, 0x1) == 0.
    falls through when t0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1670 has these conditions:
    taken when a5(?) == a6(=[a0+26]:1).
    falls through when a5(?) != a6(=[a0+26]:1).
  The return at 0x1640 has v0 = 0x1.
  The return at 0x1680 has v0 = one of 0x0, 0x1.




- `kona_set_channel_rect` in `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)` at 0x1c4c (n64).
  It occupies 204 bytes.
  The `lbu` at 0x1c4c loads byte into at from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1c50 loads 8 bytes into v0 from a0 (arg0 at entry) +0x28.
  The `lbu` at 0x1c8c loads byte into a6 from a1 (arg1 at entry) +0x0.
  The `lbu` at 0x1c9c loads byte into at from a1 (arg1 at entry) +0x1.
  The `sb` at 0x1ca4 stores byte from at to ? (base unknown) (value [a1+1]:1).
  The `lb` at 0x1ca8 loads byte into ra from a1 (arg1 at entry) +0x2.
  The `sb` at 0x1cac stores byte from ra to ? (base unknown) (value [a1+2]:1).
  The `lh` at 0x1cb0 loads 2 bytes into t9 from a1 (arg1 at entry) +0x4.
  The `sh` at 0x1cb4 stores 2 bytes from t9 to ? (base unknown) (value [a1+4]:2).
  The `lh` at 0x1cb8 loads 2 bytes into t8 from a1 (arg1 at entry) +0x6.
  The `sh` at 0x1cbc stores 2 bytes from t8 to ? (base unknown) (value [a1+6]:2).
  The `lh` at 0x1cc0 loads 2 bytes into t3 from a1 (arg1 at entry) +0x8.
  The `sh` at 0x1cc4 stores 2 bytes from t3 to ? (base unknown) (value [a1+8]:2).
  The `lh` at 0x1cc8 loads 2 bytes into t2 from a1 (arg1 at entry) +0xa.
  The `sh` at 0x1ccc stores 2 bytes from t2 to ? (base unknown) (value [a1+10]:2).
  The `lb` at 0x1cd0 loads byte into t1 from a1 (arg1 at entry) +0xc.
  The `sb` at 0x1cd4 stores byte from t1 to ? (base unknown) (value [a1+12]:1).
  The `lb` at 0x1cd8 loads byte into t0 from a1 (arg1 at entry) +0xd.
  The `sb` at 0x1cdc stores byte from t0 to ? (base unknown) (value [a1+13]:1).
  The `lh` at 0x1ce0 loads 2 bytes into a7 from a1 (arg1 at entry) +0xe.
  The `sh` at 0x1ce4 stores 2 bytes from a7 to ? (base unknown) (value [a1+14]:2).
  The `lh` at 0x1ce8 loads 2 bytes into a5 from a1 (arg1 at entry) +0x10.
  The `sh` at 0x1cec stores 2 bytes from a5 to ? (base unknown) (value [a1+16]:2).
  The `sb` at 0x1cf4 stores byte from a4 to ? (base unknown) (value 0x20).
  The `sb` at 0x1cfc stores byte from a2 to ? (base unknown) (value 0x1).
  The `sb` at 0x1d08 stores byte from a2 to ? (base unknown) (value 0x1).
  The `jal` at 0x1c80 calls `mutex_spinlock` with a0=[a0+40]:8+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1d04 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=0x1, a3=?, a4=0x20, a5=[a1+16]:2, a7=[a1+14]:2.
  The `bne` branch at 0x1c68 has these conditions:
    taken when at(=[a1]:1) < 0x20 (signed).
    falls through when at(=[a1]:1) >= 0x20 (signed).
  The return at 0x1c70 has v0 = one of 0x0, 0x16.




- `gfx_earlyinit` in `usr/cpu/sysgen/IP27boot/tport.a(tport.o)` at 0x11cc (n64).
  It occupies 108 bytes.
  The `ld` at 0x11fc loads 8 bytes into at from sym(.srdata) +0x68.
  The `ld` at 0x1204 loads 8 bytes into v0 from sym(.srdata) +0x70.
  The `ld` at 0x1234 loads 8 bytes into v0 from sym(.srdata) +0x70.
  The `jal` at 0x11d4 calls `mgras_earlyinit` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11ec calls `kona_earlyinit` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1210 calls `rad4_earlyinit` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1220 calls `rad1_earlyinit` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x11dc has these conditions:
    taken when v0(=ret(mgras_earlyinit)) == 0.
    falls through when v0(=ret(mgras_earlyinit)) != 0.
  The `bne` branch at 0x11f4 has these conditions:
    taken when v0(=ret(kona_earlyinit)) != 0.
    falls through when v0(=ret(kona_earlyinit)) == 0.
  The `bne` branch at 0x1200 has these conditions:
    taken when at(=sym(rad1_earlyinit)) != 0.
    falls through when at(=sym(rad1_earlyinit)) == 0.
  The `beq` branch at 0x1208 has these conditions:
    taken when v0(=sym(rad4_earlyinit)) == 0.
    falls through when v0(=sym(rad4_earlyinit)) != 0.
  The `bne` branch at 0x1228 has these conditions:
    taken when v0(=ret(rad1_earlyinit)) != 0.
    falls through when v0(=ret(rad1_earlyinit)) == 0.
  The return at 0x11e4 has v0 = ?.




- `init_gfx_group_table` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x124 (n64).
  It occupies 100 bytes.
  The `ld` at 0x124 loads 8 bytes into at from sym(gfx_group_table) +0x0.
  The `sd` at 0x14c stores 8 bytes from v0 to sym(gfx_group_table) +0x0 (value ret(kern_malloc)).
  The `ld` at 0x158 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `sw` at 0x170 stores 4 bytes from zero to sym(gfx_group_table_lock) +0x0 (value 0x0).
  The `ld` at 0x17c loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `ld` at 0x184 loads 8 bytes into a0 from sym(gfx_group_table) +0x0.
  The `jal` at 0x13c calls `kern_malloc` with a0=0x80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x150 calls `bzero` with a0=?, a1=0x80, a2=?, a3=?.
  The `jal` at 0x160 calls `spinlock_init` with a0=sym(gfx_group_table_lock)+4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x178 calls `cmn_err` with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x12c has these conditions:
    taken when at(=[sym(gfx_group_table)]:8) == 0.
    falls through when at(=[sym(gfx_group_table)]:8) != 0.
  The `beq` branch at 0x148 has these conditions:
    taken when v0(=ret(kern_malloc)) == 0.
    falls through when v0(=ret(kern_malloc)) != 0.
  The return at 0x134 has v0 = ?.




- `gfx_group_find` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x188 (n64).
  It occupies 184 bytes.
  The `ld` at 0x1bc loads 8 bytes into s0 from sym(gfx_group_table) +0x0.
  The `ld` at 0x1cc loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x1d8 loads 8 bytes into t9 from ? (base unknown).
  The `ld` at 0x1e4 loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x1f0 loads 8 bytes into ra from ? (base unknown).
  The `ld` at 0x1fc loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x208 loads 8 bytes into at from ? (base unknown).
  The `jal` at 0x194 calls `threadhandle_to_threadgrouphandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1b4 calls `gfxtable_readerlock` with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x21c calls `gfxtable_readerunlock` with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1a8 has these conditions:
    taken when (v0(=ret(threadhandle_to_threadgrouphandle)) & 0xf) == 0.
    falls through when (v0(=ret(threadhandle_to_threadgrouphandle)) & 0xf) != 0.
  The `beq` branch at 0x1d0 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0x1dc has these conditions:
    taken when t9(?) == s1(=ret(threadhandle_to_threadgrouphandle)).
    falls through when t9(?) != s1(=ret(threadhandle_to_threadgrouphandle)).
  The `beq` branch at 0x1e8 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0x1f4 has these conditions:
    taken when ra(?) == s1(=ret(threadhandle_to_threadgrouphandle)).
    falls through when ra(?) != s1(=ret(threadhandle_to_threadgrouphandle)).
  The `beq` branch at 0x200 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x20c has these conditions:
    taken when at(?) != s1(=ret(threadhandle_to_threadgrouphandle)).
    falls through when at(?) == s1(=ret(threadhandle_to_threadgrouphandle)).
  The return at 0x230 has v0 = ?; f0 = ret(gfxtable_readerunlock).




- `gfx_group_create` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x240 (n64).
  It occupies 188 bytes.
  The `ld` at 0x270 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `sw` at 0x278 stores 4 bytes from zero to ret(kern_malloc) +0x8 (value 0x0).
  The `sd` at 0x27c stores 8 bytes from v0 to ret(kern_malloc) +0x0 (value ret(threadhandle_to_threadgrouphandle)).
  The `ld` at 0x288 loads 8 bytes into a0 from ret(kern_malloc) +0x0.
  The `sw` at 0x290 stores 4 bytes from zero to ret(kern_malloc) +0xc (value 0x0).
  The `ld` at 0x2ac loads 8 bytes into a4 from sym(gfx_group_table) +0x0.
  The `ld` at 0x2bc loads 8 bytes into a4 from ? (base unknown).
  The `sd` at 0x2c0 stores 8 bytes from a4 to ret(kern_malloc) +0x18 (value unknown).
  The `ld` at 0x2c4 loads 8 bytes into a2 from sym(gfx_group_table) +0x0.
  The `sd` at 0x2d8 stores 8 bytes from s0 to ? (base unknown) (value ret(kern_malloc)).
  The `jal` at 0x250 calls `kern_malloc` with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x268 calls `threadhandle_to_threadgrouphandle` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x280 calls `spinlock_init` with a0=ret(kern_malloc)+16, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2a0 calls `gfxtable_writerlock` with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x2d4 calls `gfxtable_writerunlock` with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `bne` branch at 0x258 has these conditions:
    taken when v0(=ret(kern_malloc)) != 0.
    falls through when v0(=ret(kern_malloc)) == 0.
  The `beq` branch at 0x294 has these conditions:
    taken when (a0(=[ret(kern_malloc)]:8) & 0xf) == 0.
    falls through when (a0(=[ret(kern_malloc)]:8) & 0xf) != 0.
  The return at 0x2e8 has v0 = ?.




- `gfx_group_destroy` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2fc (n64).
  It occupies 208 bytes.
  The `ld` at 0x300 loads 8 bytes into a1 from a0 (arg0 at entry) +0x0.
  The `ld` at 0x32c loads 8 bytes into a4 from sym(gfx_group_table) +0x0.
  The `ld` at 0x33c loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x348 loads 8 bytes into a5 from a0 (arg0 at entry) +0x0.
  The `ld` at 0x34c loads 8 bytes into a6 from ? (base unknown).
  The `ld` at 0x35c loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x368 loads 8 bytes into a6 from ? (base unknown).
  The `ld` at 0x37c loads 8 bytes into a7 from ? (base unknown).
  The `sd` at 0x384 stores 8 bytes from a7 to ? (base unknown) (value unknown).
  The `jal` at 0x324 calls `gfxtable_writerlock` with a0=sym(gfx_group_table_lock), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x390 calls `gfxtable_writerunlock` with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `jal` at 0x3a0 calls `spinlock_destroy` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3a8 calls `kern_free` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x318 has these conditions:
    taken when (a1(=[a0]:8) & 0xf) == 0.
    falls through when (a1(=[a0]:8) & 0xf) != 0.
  The `beq` branch at 0x340 has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `beq` branch at 0x350 has these conditions:
    taken when a6(?) == a5(=[a0]:8).
    falls through when a6(?) != a5(=[a0]:8).
  The `beq` branch at 0x360 has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `bne` branch at 0x36c has these conditions:
    taken when a6(?) != a5(=[a0]:8).
    falls through when a6(?) == a5(=[a0]:8).
  The `beq` branch at 0x374 has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `beq` branch at 0x398 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The return at 0x3bc has v0 = ?.




- `gfx_disp` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xc28 (n64).
  It occupies 308 bytes.
  The `ld` at 0xc4c loads 8 bytes into v0 from ret(gthread_find) +0x10.
  The `ld` at 0xc58 loads 8 bytes into s0 from [ret(gthread_find)+16]:8 +0x18.
  The `ld` at 0xc68 loads 8 bytes into s1 from ? (base unknown).
  The `ld` at 0xc7c loads 8 bytes into v0 from ret(gthread_find) +0x18.
  The `lw` at 0xc88 loads 4 bytes into at from ? (base unknown).
  The `ld` at 0xc98 loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0xca4 loads 8 bytes into s1 from ? (base unknown).
  The `lw` at 0xcb0 loads 4 bytes into v0 from ? (base unknown).
  The `ld` at 0xcbc loads 8 bytes into v0 from ? (base unknown).
  The `lw` at 0xcc8 loads 4 bytes into v1 from ? (base unknown).
  The `ld` at 0xcd8 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0xd04 loads 8 bytes into a1 from ? (base unknown).
  The `lw` at 0xd10 loads 4 bytes into a2 from ? (base unknown).
  The `lw` at 0xd1c loads 4 bytes into a3 from ret(gthread_find) +0x8.
  The `lw` at 0xd2c loads 4 bytes into a4 from ? (base unknown).
  The `lw` at 0xd38 loads 4 bytes into a5 from [ret(gthread_find)+24]:8 +0xc.
  The `ld` at 0xd50 loads 8 bytes into s0 from ? (base unknown).
  The `jal` at 0xc30 calls `gthread_find` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xc6c calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd44 calls `valusema` with a0=?, a1=?, a2=?, a3=?, a5=[[ret(gthread_find)+24]:8+12].
  The `beq` branch at 0xc44 has these conditions:
    taken when v0(=ret(gthread_find)) == 0.
    falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0xc50 has these conditions:
    taken when v0(=[ret(gthread_find)+16]:8) == 0.
    falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0xc5c has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0xc74 has these conditions:
    taken when v0(=ret(?)) == 0.
    falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xc80 has these conditions:
    taken when v0(=[ret(gthread_find)+24]:8) == 0.
    falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xc90 has these conditions:
    taken when (at(?) & 0x8) == 0.
    falls through when (at(?) & 0x8) != 0.
  The `beq` branch at 0xc9c has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0xca8 has these conditions:
    taken when s1(?) == 0.
    falls through when s1(?) != 0.
  The `blez` branch at 0xcb4 has these conditions:
    taken when v0(?) <= 0 (signed).
    falls through when v0(?) > 0 (signed).
  The `bne` branch at 0xcc0 has these conditions:
    taken when v0(?) != 0.
    falls through when v0(?) == 0.
  The `bne` branch at 0xcd0 has these conditions:
    taken when (v1(?) & 0x3) != 0.
    falls through when (v1(?) & 0x3) == 0.
  The `bne` branch at 0xcdc has these conditions:
    taken when a0(?) != s0(?).
    falls through when a0(?) == s0(?).
  The `bne` branch at 0xd08 has these conditions:
    taken when a1(?) != s0(?).
    falls through when a1(?) == s0(?).
  The `bne` branch at 0xd14 has these conditions:
    taken when a2(?) != 0.
    falls through when a2(?) == 0.
  The `bne` branch at 0xd24 has these conditions:
    taken when (a3(=[ret(gthread_find)+8]) & 0x4) != 0.
    falls through when (a3(=[ret(gthread_find)+8]) & 0x4) == 0.
  The `bne` branch at 0xd30 has these conditions:
    taken when a4(?) != 0.
    falls through when a4(?) == 0.
  The `beq` branch at 0xd3c has these conditions:
    taken when a5(=[[ret(gthread_find)+24]:8+12]) == 0.
    falls through when a5(=[[ret(gthread_find)+24]:8+12]) != 0.
  The `bgezl` branch at 0xd4c has these conditions:
    taken when v0(=ret(valusema)) >= 0 (signed).
    falls through when v0(=ret(valusema)) < 0 (signed).
  The return at 0xcf4 has v0 = one of 0x0, 0x1.




- `gfx_fault` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xd5c (n64).
  It occupies 216 bytes.
  The `ld` at 0xd8c loads 8 bytes into at from ret(gthread_find) +0x18.
  The `lw` at 0xd94 loads 4 bytes into a0 from a1 (arg1 at entry) +0x4.
  The `ld` at 0xdb0 loads 8 bytes into a1 from a1 (arg1 at entry) +0x20.
  The `ld` at 0xdb4 loads 8 bytes into a1 from [a1+32]:8 +0x70.
  The `ld` at 0xdcc loads 8 bytes into a2 from ret(gthread_find) +0x18.
  The `lw` at 0xdd8 loads 4 bytes into a3 from a1 (arg1 at entry) +0x4.
  The `lw` at 0xe20 loads 4 bytes into a0 from a1 (arg1 at entry) +0x4.
  The `jal` at 0xd6c calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xd78 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jalr` at 0xdb8 calls `(unknown callee)` with a0=a1 at entry (arg1), a1=[[a1+32]:8+112]:8, a2=?, a3=?.
  The `jal` at 0xdc4 calls `RRM_ValidFault` with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0xe14 calls `psema` with a0=a1+80, a1=0x19, a2=?, a3=?.
  The `jal` at 0xe24 calls `vsema` with a0=a1+80, a1=?, a2=[ret(gthread_find)+24]:8, a3=?.
  The `beq` branch at 0xd84 has these conditions:
    taken when v0(=ret(gthread_find)) == 0.
    falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0xd90 has these conditions:
    taken when at(=[ret(gthread_find)+24]:8) == 0.
    falls through when at(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xd9c has these conditions:
    taken when (a0(=[a1+4]) & 0x8) == 0.
    falls through when (a0(=[a1+4]) & 0x8) != 0.
  The `beq` branch at 0xda8 has these conditions:
    taken when (a0(=[a1+4]) & 0x1) == 0.
    falls through when (a0(=[a1+4]) & 0x1) != 0.
  The `beq` branch at 0xdd0 has these conditions:
    taken when a2(=[ret(gthread_find)+24]:8) == 0.
    falls through when a2(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xde0 has these conditions:
    taken when (a3(=[a1+4]) & 0x8) == 0.
    falls through when (a3(=[a1+4]) & 0x8) != 0.
  The `bltz` branch at 0xde8 has these conditions:
    taken when v0(?) < 0 (signed).
    falls through when v0(?) >= 0 (signed).
  The return at 0xe00 has v0 = one of 0x0, 0x1.




- `gfx_exit` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xe34 (n64).
  It occupies 428 bytes.
  The `ld` at 0xe5c loads 8 bytes into v0 from ret(gthread_find) +0x18.
  The `lw` at 0xe60 loads 4 bytes into at from ret(gthread_find) +0x8.
  The `ld` at 0xe64 loads 8 bytes into a1 from ret(gthread_find) +0x10.
  The `sw` at 0xe70 stores 4 bytes from at to ret(gthread_find) +0x8 (value ([ret(gthread_find)+8] | 0x4)).
  The `ld` at 0xe84 loads 8 bytes into a1 from ret(gthread_find) +0x10.
  The `ld` at 0xe88 loads 8 bytes into s0 from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0xe94 loads 4 bytes into v0 from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `ld` at 0xebc loads 8 bytes into s0 from [ret(gthread_find)+16]:8 +0x18.
  The `ld` at 0xec4 loads 8 bytes into v0 from ? (base unknown).
  The `ld` at 0xed8 loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0xee4 loads 8 bytes into v0 from ? (base unknown).
  The `ld` at 0xef0 loads 8 bytes into a1 from ? (base unknown).
  The `ld` at 0xefc loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0xf34 loads 8 bytes into a0 from ret(gthread_find) +0x0.
  The `ld` at 0xf44 loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `ld` at 0xf58 loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `ld` at 0xf6c loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0xf78 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0xf84 loads 8 bytes into a1 from ? (base unknown).
  The `ld` at 0xf98 loads 8 bytes into a4 from ? (base unknown).
  The `ld` at 0xf9c loads 8 bytes into a4 from ? (base unknown).
  The `ld` at 0xfb0 loads 8 bytes into a1 from ? (base unknown).
  The `sd` at 0xfb4 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `ld` at 0xfb8 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0xfcc loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0xfdc loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `jal` at 0xe3c calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe48 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0xe7c calls `GfxListReaderLock` with a0=[ret(gthread_find)+16]:8, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0xea4 calls `GfxListReaderUnlock` with a0=[ret(gthread_find)+16]:8, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jalr` at 0xed0 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf24 calls `mutex_spinlock` with a0=[ret(gthread_find)+16]:8+16, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0xf30 calls `threadgroup_refcnt` with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf4c calls `mutex_spinunlock` with a0=[ret(gthread_find)+16]:8+16, a1=?, a2=?, a3=?.
  The `jal` at 0xf54 calls `GfxListReaderUnlock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf90 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xfa8 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfbc calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfc4 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xe54 has these conditions:
    taken when v0(=ret(gthread_find)) == 0.
    falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0xe6c has these conditions:
    taken when v0(=[ret(gthread_find)+24]:8) == 0.
    falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xe74 has these conditions:
    taken when a1(=[ret(gthread_find)+16]:8) == 0.
    falls through when a1(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0xe8c has these conditions:
    taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0.
    falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0xe9c has these conditions:
    taken when (v0(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0.
    falls through when (v0(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `beq` branch at 0xeb4 has these conditions:
    taken when a1(=[ret(gthread_find)+16]:8) == 0.
    falls through when a1(=[ret(gthread_find)+16]:8) != 0.
  The `bnel` branch at 0xec0 has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The `beq` branch at 0xedc has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0xee8 has these conditions:
    taken when v0(?) == 0.
    falls through when v0(?) != 0.
  The `bne` branch at 0xef4 has these conditions:
    taken when a1(?) != 0.
    falls through when a1(?) == 0.
  The `bne` branch at 0xf00 has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The `beq` branch at 0xf3c has these conditions:
    taken when v0(=ret(threadgroup_refcnt)) == v1(=0x1).
    falls through when v0(=ret(threadgroup_refcnt)) != v1(=0x1).
  The `beq` branch at 0xf70 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0xf7c has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `bne` branch at 0xf88 has these conditions:
    taken when a1(?) != s0(?).
    falls through when a1(?) == s0(?).
  The `beq` branch at 0xfa0 has these conditions:
    taken when a4(?) == 0.
    falls through when a4(?) != 0.
  The `bne` branch at 0xfd0 has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The return at 0xf14 has v0 = 0x0.




- `gfx_shdup` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1234 (n64).
  It occupies 124 bytes.
  The `ld` at 0x1250 loads 8 bytes into v0 from ret(gthread_find) +0x10.
  The `ld` at 0x125c loads 8 bytes into a4 from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x1268 loads 4 bytes into at from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `ld` at 0x129c loads 8 bytes into a1 from ret(gthread_find) +0x10.
  The `jal` at 0x1240 calls `gthread_find` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1284 calls `gthread_create` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a4=[[ret(gthread_find)+16]:8+24]:8.
  The `jal` at 0x1298 calls `gthread_attach_list` with a0=ret(gthread_create), a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0x12a0 calls `setgfxsched_thread` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1248 has these conditions:
    taken when v0(=ret(gthread_find)) == 0.
    falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x1254 has these conditions:
    taken when v0(=[ret(gthread_find)+16]:8) == 0.
    falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x1260 has these conditions:
    taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0.
    falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x1270 has these conditions:
    taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0.
    falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `beq` branch at 0x128c has these conditions:
    taken when v0(=ret(gthread_create)) == 0.
    falls through when v0(=ret(gthread_create)) != 0.
  The return at 0x127c has v0 = ?.




- `gfx_conflict_scan` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1e44 (n64).
  It occupies 228 bytes.
  The `ld` at 0x1e7c loads 8 bytes into v0 from a0 (arg0 at entry) +0x18.
  The `ld` at 0x1e88 loads 8 bytes into v1 from a1 (arg1 at entry) +0x8.
  The `ld` at 0x1e8c loads 8 bytes into at from [a0+24]:8 +0x0.
  The `ld` at 0x1ea0 loads 8 bytes into v0 from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1ea4 loads 4 bytes into a1 from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1eb0 loads 8 bytes into s0 from [a0+16]:8 +0x18.
  The `lw` at 0x1ecc loads 4 bytes into a4 from ? (base unknown).
  The `ld` at 0x1f08 loads 8 bytes into s0 from ? (base unknown).
  The `sw` at 0x1f24 stores 4 bytes from a7 to a1 (arg1 at entry) +0x0 (value 0x3).
  The `jal` at 0x1ec4 calls `psema` with a0=?, a1=0x19, a2=?, a3=?.
  The `jal` at 0x1ef0 calls `vsema` with a0=?, a1=?, a2=one of 0x1, 0x2, a3=?, a4=0x1.
  The `beq` branch at 0x1e5c has these conditions:
    taken when a2 == a5(=0x1).
    falls through when a2 != a5(=0x1).
  The `beq` branch at 0x1e80 has these conditions:
    taken when v0(=[a0+24]:8) == 0.
    falls through when v0(=[a0+24]:8) != 0.
  The `beq` branch at 0x1e90 has these conditions:
    taken when at(=[[a0+24]:8]:8) == v1(=[a1+8]:8).
    falls through when at(=[[a0+24]:8]:8) != v1(=[a1+8]:8).
  The `beq` branch at 0x1ea8 has these conditions:
    taken when v0(=[a0+16]:8) == 0.
    falls through when v0(=[a0+16]:8) != 0.
  The `beq` branch at 0x1eb4 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x1f00 has these conditions:
    taken when a5(?) != a6(?).
    falls through when a5(?) == a6(?).
  The `bne` branch at 0x1f0c has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The return at 0x1e74 has v0 = one of 0x0, 0x1.




- `gfx_shalloc` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3378 (n64).
  It occupies 192 bytes.
  The `ld` at 0x33c0 loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `ld` at 0x33d4 loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `ld` at 0x33d8 loads 8 bytes into a4 from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x33e8 loads 4 bytes into at from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `sd` at 0x33f8 stores 8 bytes from s0 to ? (base unknown) (value ret(gfx_group_create)).
  The `ld` at 0x33fc loads 8 bytes into a4 from ? (base unknown).
  The `ld` at 0x3408 loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `sw` at 0x3434 stores 4 bytes from a5 to ret(gfx_group_create) +0xc (value 0x1).
  The `jal` at 0x3380 calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3388 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3398 calls `gfx_group_create` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x33a4 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x33b8 calls `gthread_attach_group` with a0=ret(gthread_find), a1=ret(gfx_group_create), a2=?, a3=?.
  The `jal` at 0x33cc calls `GfxListWriterLock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x340c calls `GfxListWriterUnlock` with a0=[ret(gthread_find)+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=?, a5=0x1.
  The `jal` at 0x3414 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x33ac has these conditions:
    taken when v0(=ret(gthread_find)) == 0.
    falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x33c4 has these conditions:
    taken when a0(=[ret(gthread_find)+16]:8) == 0.
    falls through when a0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x33e0 has these conditions:
    taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0.
    falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x33f0 has these conditions:
    taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0.
    falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `bne` branch at 0x3400 has these conditions:
    taken when a4(?) != 0.
    falls through when a4(?) == 0.
  The return at 0x3428 has v0 = ret(splx); f0 = ret(splx).




- `gfx_shfree` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3438 (n64).
  It occupies 44 bytes.
  The `jal` at 0x3440 calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3448 calls `gfx_group_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x3450 calls `gfx_group_destroy` with a0=ret(gfx_group_find), a1=?, a2=?, a3=?.
  The return at 0x345c has v0 = ret(gfx_group_destroy); f0 = ret(gfx_group_destroy).




- `gfx_frs_valid_pipenum` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3464 (n64).
  It occupies 12 bytes.
  The `lw` at 0x3464 loads 4 bytes into v0 from sym(GfxNumberOfBoards) +0x0.
  The return at 0x3468 has v0 = ?.




- `gfx_frs_install` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3470 (n64).
  It occupies 88 bytes.
  The `ld` at 0x3470 loads 8 bytes into a4 from sym(.srdata) +0x8.
  The `ld` at 0x347c loads 8 bytes into a4 from (sym(GfxBoards) + (a1 << 0x3)) +0x0.
  The `ld` at 0x3480 loads 8 bytes into a3 from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x38.
  The `ld` at 0x3484 loads 8 bytes into a3 from [[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8 +0xd0.
  The `ld` at 0x3498 loads 8 bytes into a0 from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x40.
  The `ld` at 0x34b0 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `jalr` at 0x349c calls `(unknown callee)` with a0=[[(sym(GfxBoards) + (a1 << 0x3))]:8+64]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `jal` at 0x34b8 calls `cmn_err` with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `beq` branch at 0x3490 has these conditions:
    taken when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) == 0.
    falls through when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) != 0.
  The return at 0x34a8 has v0 = ?.




- `gfx_frs_uninstall` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x34c8 (n64).
  It occupies 80 bytes.
  The `ld` at 0x34c8 loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `ld` at 0x34d4 loads 8 bytes into a2 from (sym(GfxBoards) + (a0 << 0x3)) +0x0.
  The `ld` at 0x34d8 loads 8 bytes into a3 from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x38.
  The `ld` at 0x34dc loads 8 bytes into a3 from [[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8 +0xd8.
  The `ld` at 0x34f0 loads 8 bytes into a0 from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x40.
  The `ld` at 0x3500 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `jalr` at 0x34ec calls `(unknown callee)` with a0=[[(sym(GfxBoards) + (a0 << 0x3))]:8+64]:8, a1=a1 at entry (arg1), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `jal` at 0x3508 calls `cmn_err` with a0=0x5, a1=sym(.rodata), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `beq` branch at 0x34e4 has these conditions:
    taken when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) == 0.
    falls through when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) != 0.
  The return at 0x34f8 has v0 = ?.




- `irix5_to_gfx_getboardinfo_args` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3518 (n64).
  It occupies 120 bytes.
  The `lw` at 0x352c loads 4 bytes into at from a3 (arg3 at entry) +0x0.
  The `ld` at 0x353c loads 8 bytes into v0 from a3 (arg3 at entry) +0x8.
  The `sd` at 0x3540 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x3548 stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0xc).
  The `ld` at 0x3554 loads 8 bytes into a0 from a3 (arg3 at entry) +0x10.
  The `lw` at 0x3558 loads 4 bytes into a3 from [a3+16]:8 +0x0.
  The `sw` at 0x355c stores 4 bytes from a3 to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `lwu` at 0x3560 loads 4 bytes into a2 from [a3+16]:8 +0x4.
  The `sd` at 0x3564 stores 8 bytes from a2 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+4]).
  The `lw` at 0x3568 loads 4 bytes into a0 from [a3+16]:8 +0x8.
  The `sw` at 0x356c stores 4 bytes from a0 to a1 (arg1 at entry) +0x10 (value [[a3+16]:8+8]).
  The `sd` at 0x358c stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x357c calls `kern_malloc` with a0=0xc, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3524 has these conditions:
    taken when a0 != 0.
    falls through when a0 == 0.
  The `bne` branch at 0x3534 has these conditions:
    taken when at(=[a3]) < 0xc (unsigned).
    falls through when at(=[a3]) >= 0xc (unsigned).
  The return at 0x3574 has v0 = 0x0.




- `irix5_to_gfx_download_args` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3590 (n64).
  It occupies 160 bytes.
  The `lw` at 0x35a4 loads 4 bytes into at from a3 (arg3 at entry) +0x0.
  The `ld` at 0x35b4 loads 8 bytes into v0 from a3 (arg3 at entry) +0x8.
  The `sd` at 0x35b8 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x35c0 stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0x20).
  The `ld` at 0x35cc loads 8 bytes into a0 from a3 (arg3 at entry) +0x10.
  The `lw` at 0x35d0 loads 4 bytes into t0 from [a3+16]:8 +0x0.
  The `sw` at 0x35d4 stores 4 bytes from t0 to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `lwu` at 0x35d8 loads 4 bytes into a7 from [a3+16]:8 +0x4.
  The `sd` at 0x35dc stores 8 bytes from a7 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+4]).
  The `lw` at 0x35e0 loads 4 bytes into a6 from [a3+16]:8 +0x8.
  The `sw` at 0x35e4 stores 4 bytes from a6 to a1 (arg1 at entry) +0x10 (value [[a3+16]:8+8]).
  The `lw` at 0x35e8 loads 4 bytes into a5 from [a3+16]:8 +0xc.
  The `sw` at 0x35ec stores 4 bytes from a5 to a1 (arg1 at entry) +0x14 (value [[a3+16]:8+12]).
  The `lw` at 0x35f0 loads 4 bytes into a4 from [a3+16]:8 +0x10.
  The `sw` at 0x35f4 stores 4 bytes from a4 to a1 (arg1 at entry) +0x18 (value [[a3+16]:8+16]).
  The `lw` at 0x35f8 loads 4 bytes into a3 from [a3+16]:8 +0x14.
  The `sw` at 0x35fc stores 4 bytes from a3 to a1 (arg1 at entry) +0x1c (value [[a3+16]:8+20]).
  The `lw` at 0x3600 loads 4 bytes into a2 from [a3+16]:8 +0x18.
  The `sw` at 0x3604 stores 4 bytes from a2 to a1 (arg1 at entry) +0x20 (value [[a3+16]:8+24]).
  The `lw` at 0x3608 loads 4 bytes into a0 from [a3+16]:8 +0x1c.
  The `sw` at 0x360c stores 4 bytes from a0 to a1 (arg1 at entry) +0x24 (value [[a3+16]:8+28]).
  The `sd` at 0x362c stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x361c calls `kern_malloc` with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x359c has these conditions:
    taken when a0 != 0.
    falls through when a0 == 0.
  The `bne` branch at 0x35ac has these conditions:
    taken when at(=[a3]) < 0x20 (unsigned).
    falls through when at(=[a3]) >= 0x20 (unsigned).
  The return at 0x3614 has v0 = 0x0.




- `irix5_to_gfx_attach_board_args` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3630 (n64).
  It occupies 112 bytes.
  The `lw` at 0x3644 loads 4 bytes into at from a3 (arg3 at entry) +0x0.
  The `ld` at 0x3654 loads 8 bytes into v0 from a3 (arg3 at entry) +0x8.
  The `sd` at 0x3658 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x3660 stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0x8).
  The `ld` at 0x366c loads 8 bytes into a0 from a3 (arg3 at entry) +0x10.
  The `lw` at 0x3670 loads 4 bytes into a2 from [a3+16]:8 +0x0.
  The `sw` at 0x3674 stores 4 bytes from a2 to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `lwu` at 0x3678 loads 4 bytes into a0 from [a3+16]:8 +0x4.
  The `sd` at 0x367c stores 8 bytes from a0 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+4]).
  The `sd` at 0x369c stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x368c calls `kern_malloc` with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x363c has these conditions:
    taken when a0 != 0.
    falls through when a0 == 0.
  The `bne` branch at 0x364c has these conditions:
    taken when at(=[a3]) < 0x8 (unsigned).
    falls through when at(=[a3]) >= 0x8 (unsigned).
  The return at 0x3684 has v0 = 0x0.




- `init_gfx_group_table` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x124 (n64).
  It occupies 100 bytes.
  The `ld` at 0x124 loads 8 bytes into at from sym(gfx_group_table) +0x0.
  The `sd` at 0x14c stores 8 bytes from v0 to sym(gfx_group_table) +0x0 (value ret(kern_malloc)).
  The `ld` at 0x158 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `sw` at 0x170 stores 4 bytes from zero to sym(gfx_group_table_lock) +0x0 (value 0x0).
  The `ld` at 0x17c loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `ld` at 0x184 loads 8 bytes into a0 from sym(gfx_group_table) +0x0.
  The `jal` at 0x13c calls `kern_malloc` with a0=0x80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x150 calls `bzero` with a0=?, a1=0x80, a2=?, a3=?.
  The `jal` at 0x160 calls `spinlock_init` with a0=sym(gfx_group_table_lock)+4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x178 calls `cmn_err` with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x12c has these conditions:
    taken when at(=[sym(gfx_group_table)]:8) == 0.
    falls through when at(=[sym(gfx_group_table)]:8) != 0.
  The `beq` branch at 0x148 has these conditions:
    taken when v0(=ret(kern_malloc)) == 0.
    falls through when v0(=ret(kern_malloc)) != 0.
  The return at 0x134 has v0 = ?.



- `gfx_group_find` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x188 (n64).
  It occupies 184 bytes.
  The `ld` at 0x1bc loads 8 bytes into s0 from sym(gfx_group_table) +0x0.
  The `ld` at 0x1cc loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x1d8 loads 8 bytes into t9 from ? (base unknown).
  The `ld` at 0x1e4 loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x1f0 loads 8 bytes into ra from ? (base unknown).
  The `ld` at 0x1fc loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x208 loads 8 bytes into at from ? (base unknown).
  The `jal` at 0x194 calls `threadhandle_to_threadgrouphandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1b4 calls `gfxtable_readerlock` with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x21c calls `gfxtable_readerunlock` with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1a8 has these conditions:
    taken when (v0(=ret(threadhandle_to_threadgrouphandle)) & 0xf) == 0.
    falls through when (v0(=ret(threadhandle_to_threadgrouphandle)) & 0xf) != 0.
  The `beq` branch at 0x1d0 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0x1dc has these conditions:
    taken when t9(?) == s1(=ret(threadhandle_to_threadgrouphandle)).
    falls through when t9(?) != s1(=ret(threadhandle_to_threadgrouphandle)).
  The `beq` branch at 0x1e8 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0x1f4 has these conditions:
    taken when ra(?) == s1(=ret(threadhandle_to_threadgrouphandle)).
    falls through when ra(?) != s1(=ret(threadhandle_to_threadgrouphandle)).
  The `beq` branch at 0x200 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x20c has these conditions:
    taken when at(?) != s1(=ret(threadhandle_to_threadgrouphandle)).
    falls through when at(?) == s1(=ret(threadhandle_to_threadgrouphandle)).
  The return at 0x230 has v0 = ?; f0 = ret(gfxtable_readerunlock).



- `gfx_group_create` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x240 (n64).
  It occupies 188 bytes.
  The `ld` at 0x270 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `sw` at 0x278 stores 4 bytes from zero to ret(kern_malloc) +0x8 (value 0x0).
  The `sd` at 0x27c stores 8 bytes from v0 to ret(kern_malloc) +0x0 (value ret(threadhandle_to_threadgrouphandle)).
  The `ld` at 0x288 loads 8 bytes into a0 from ret(kern_malloc) +0x0.
  The `sw` at 0x290 stores 4 bytes from zero to ret(kern_malloc) +0xc (value 0x0).
  The `ld` at 0x2ac loads 8 bytes into a4 from sym(gfx_group_table) +0x0.
  The `ld` at 0x2bc loads 8 bytes into a4 from ? (base unknown).
  The `sd` at 0x2c0 stores 8 bytes from a4 to ret(kern_malloc) +0x18 (value unknown).
  The `ld` at 0x2c4 loads 8 bytes into a2 from sym(gfx_group_table) +0x0.
  The `sd` at 0x2d8 stores 8 bytes from s0 to ? (base unknown) (value ret(kern_malloc)).
  The `jal` at 0x250 calls `kern_malloc` with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x268 calls `threadhandle_to_threadgrouphandle` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x280 calls `spinlock_init` with a0=ret(kern_malloc)+16, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2a0 calls `gfxtable_writerlock` with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x2d4 calls `gfxtable_writerunlock` with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `bne` branch at 0x258 has these conditions:
    taken when v0(=ret(kern_malloc)) != 0.
    falls through when v0(=ret(kern_malloc)) == 0.
  The `beq` branch at 0x294 has these conditions:
    taken when (a0(=[ret(kern_malloc)]:8) & 0xf) == 0.
    falls through when (a0(=[ret(kern_malloc)]:8) & 0xf) != 0.
  The return at 0x2e8 has v0 = ?.



- `gfx_group_destroy` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x2fc (n64).
  It occupies 208 bytes.
  The `ld` at 0x300 loads 8 bytes into a1 from a0 (arg0 at entry) +0x0.
  The `ld` at 0x32c loads 8 bytes into a4 from sym(gfx_group_table) +0x0.
  The `ld` at 0x33c loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x348 loads 8 bytes into a5 from a0 (arg0 at entry) +0x0.
  The `ld` at 0x34c loads 8 bytes into a6 from ? (base unknown).
  The `ld` at 0x35c loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x368 loads 8 bytes into a6 from ? (base unknown).
  The `ld` at 0x37c loads 8 bytes into a7 from ? (base unknown).
  The `sd` at 0x384 stores 8 bytes from a7 to ? (base unknown) (value unknown).
  The `jal` at 0x324 calls `gfxtable_writerlock` with a0=sym(gfx_group_table_lock), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x390 calls `gfxtable_writerunlock` with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `jal` at 0x3a0 calls `spinlock_destroy` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3a8 calls `kern_free` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x318 has these conditions:
    taken when (a1(=[a0]:8) & 0xf) == 0.
    falls through when (a1(=[a0]:8) & 0xf) != 0.
  The `beq` branch at 0x340 has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `beq` branch at 0x350 has these conditions:
    taken when a6(?) == a5(=[a0]:8).
    falls through when a6(?) != a5(=[a0]:8).
  The `beq` branch at 0x360 has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `bne` branch at 0x36c has these conditions:
    taken when a6(?) != a5(=[a0]:8).
    falls through when a6(?) == a5(=[a0]:8).
  The `beq` branch at 0x374 has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `beq` branch at 0x398 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The return at 0x3bc has v0 = ?.



- `gfx_disp` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xc28 (n64).
  It occupies 308 bytes.
  The `ld` at 0xc4c loads 8 bytes into v0 from ret(gthread_find) +0x10.
  The `ld` at 0xc58 loads 8 bytes into s0 from [ret(gthread_find)+16]:8 +0x18.
  The `ld` at 0xc68 loads 8 bytes into s1 from ? (base unknown).
  The `ld` at 0xc7c loads 8 bytes into v0 from ret(gthread_find) +0x18.
  The `lw` at 0xc88 loads 4 bytes into at from ? (base unknown).
  The `ld` at 0xc98 loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0xca4 loads 8 bytes into s1 from ? (base unknown).
  The `lw` at 0xcb0 loads 4 bytes into v0 from ? (base unknown).
  The `ld` at 0xcbc loads 8 bytes into v0 from ? (base unknown).
  The `lw` at 0xcc8 loads 4 bytes into v1 from ? (base unknown).
  The `ld` at 0xcd8 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0xd04 loads 8 bytes into a1 from ? (base unknown).
  The `lw` at 0xd10 loads 4 bytes into a2 from ? (base unknown).
  The `lw` at 0xd1c loads 4 bytes into a3 from ret(gthread_find) +0x8.
  The `lw` at 0xd2c loads 4 bytes into a4 from ? (base unknown).
  The `lw` at 0xd38 loads 4 bytes into a5 from [ret(gthread_find)+24]:8 +0xc.
  The `ld` at 0xd50 loads 8 bytes into s0 from ? (base unknown).
  The `jal` at 0xc30 calls `gthread_find` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xc6c calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd44 calls `valusema` with a0=?, a1=?, a2=?, a3=?, a5=[[ret(gthread_find)+24]:8+12].
  The `beq` branch at 0xc44 has these conditions:
    taken when v0(=ret(gthread_find)) == 0.
    falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0xc50 has these conditions:
    taken when v0(=[ret(gthread_find)+16]:8) == 0.
    falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0xc5c has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0xc74 has these conditions:
    taken when v0(=ret(?)) == 0.
    falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xc80 has these conditions:
    taken when v0(=[ret(gthread_find)+24]:8) == 0.
    falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xc90 has these conditions:
    taken when (at(?) & 0x8) == 0.
    falls through when (at(?) & 0x8) != 0.
  The `beq` branch at 0xc9c has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0xca8 has these conditions:
    taken when s1(?) == 0.
    falls through when s1(?) != 0.
  The `blez` branch at 0xcb4 has these conditions:
    taken when v0(?) <= 0 (signed).
    falls through when v0(?) > 0 (signed).
  The `bne` branch at 0xcc0 has these conditions:
    taken when v0(?) != 0.
    falls through when v0(?) == 0.
  The `bne` branch at 0xcd0 has these conditions:
    taken when (v1(?) & 0x3) != 0.
    falls through when (v1(?) & 0x3) == 0.
  The `bne` branch at 0xcdc has these conditions:
    taken when a0(?) != s0(?).
    falls through when a0(?) == s0(?).
  The `bne` branch at 0xd08 has these conditions:
    taken when a1(?) != s0(?).
    falls through when a1(?) == s0(?).
  The `bne` branch at 0xd14 has these conditions:
    taken when a2(?) != 0.
    falls through when a2(?) == 0.
  The `bne` branch at 0xd24 has these conditions:
    taken when (a3(=[ret(gthread_find)+8]) & 0x4) != 0.
    falls through when (a3(=[ret(gthread_find)+8]) & 0x4) == 0.
  The `bne` branch at 0xd30 has these conditions:
    taken when a4(?) != 0.
    falls through when a4(?) == 0.
  The `beq` branch at 0xd3c has these conditions:
    taken when a5(=[[ret(gthread_find)+24]:8+12]) == 0.
    falls through when a5(=[[ret(gthread_find)+24]:8+12]) != 0.
  The `bgezl` branch at 0xd4c has these conditions:
    taken when v0(=ret(valusema)) >= 0 (signed).
    falls through when v0(=ret(valusema)) < 0 (signed).
  The return at 0xcf4 has v0 = one of 0x0, 0x1.



- `gfx_fault` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xd5c (n64).
  It occupies 216 bytes.
  The `ld` at 0xd8c loads 8 bytes into at from ret(gthread_find) +0x18.
  The `lw` at 0xd94 loads 4 bytes into a0 from a1 (arg1 at entry) +0x4.
  The `ld` at 0xdb0 loads 8 bytes into a1 from a1 (arg1 at entry) +0x20.
  The `ld` at 0xdb4 loads 8 bytes into a1 from [a1+32]:8 +0x70.
  The `ld` at 0xdcc loads 8 bytes into a2 from ret(gthread_find) +0x18.
  The `lw` at 0xdd8 loads 4 bytes into a3 from a1 (arg1 at entry) +0x4.
  The `lw` at 0xe20 loads 4 bytes into a0 from a1 (arg1 at entry) +0x4.
  The `jal` at 0xd6c calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xd78 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jalr` at 0xdb8 calls `(unknown callee)` with a0=a1 at entry (arg1), a1=[[a1+32]:8+112]:8, a2=?, a3=?.
  The `jal` at 0xdc4 calls `RRM_ValidFault` with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0xe14 calls `psema` with a0=a1+80, a1=0x19, a2=?, a3=?.
  The `jal` at 0xe24 calls `vsema` with a0=a1+80, a1=?, a2=[ret(gthread_find)+24]:8, a3=?.
  The `beq` branch at 0xd84 has these conditions:
    taken when v0(=ret(gthread_find)) == 0.
    falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0xd90 has these conditions:
    taken when at(=[ret(gthread_find)+24]:8) == 0.
    falls through when at(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xd9c has these conditions:
    taken when (a0(=[a1+4]) & 0x8) == 0.
    falls through when (a0(=[a1+4]) & 0x8) != 0.
  The `beq` branch at 0xda8 has these conditions:
    taken when (a0(=[a1+4]) & 0x1) == 0.
    falls through when (a0(=[a1+4]) & 0x1) != 0.
  The `beq` branch at 0xdd0 has these conditions:
    taken when a2(=[ret(gthread_find)+24]:8) == 0.
    falls through when a2(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xde0 has these conditions:
    taken when (a3(=[a1+4]) & 0x8) == 0.
    falls through when (a3(=[a1+4]) & 0x8) != 0.
  The `bltz` branch at 0xde8 has these conditions:
    taken when v0(?) < 0 (signed).
    falls through when v0(?) >= 0 (signed).
  The return at 0xe00 has v0 = one of 0x0, 0x1.



- `gfx_exit` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xe34 (n64).
  It occupies 428 bytes.
  The `ld` at 0xe5c loads 8 bytes into v0 from ret(gthread_find) +0x18.
  The `lw` at 0xe60 loads 4 bytes into at from ret(gthread_find) +0x8.
  The `ld` at 0xe64 loads 8 bytes into a1 from ret(gthread_find) +0x10.
  The `sw` at 0xe70 stores 4 bytes from at to ret(gthread_find) +0x8 (value ([ret(gthread_find)+8] | 0x4)).
  The `ld` at 0xe84 loads 8 bytes into a1 from ret(gthread_find) +0x10.
  The `ld` at 0xe88 loads 8 bytes into s0 from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0xe94 loads 4 bytes into v0 from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `ld` at 0xebc loads 8 bytes into s0 from [ret(gthread_find)+16]:8 +0x18.
  The `ld` at 0xec4 loads 8 bytes into v0 from ? (base unknown).
  The `ld` at 0xed8 loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0xee4 loads 8 bytes into v0 from ? (base unknown).
  The `ld` at 0xef0 loads 8 bytes into a1 from ? (base unknown).
  The `ld` at 0xefc loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0xf34 loads 8 bytes into a0 from ret(gthread_find) +0x0.
  The `ld` at 0xf44 loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `ld` at 0xf58 loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `ld` at 0xf6c loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0xf78 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0xf84 loads 8 bytes into a1 from ? (base unknown).
  The `ld` at 0xf98 loads 8 bytes into a4 from ? (base unknown).
  The `ld` at 0xf9c loads 8 bytes into a4 from ? (base unknown).
  The `ld` at 0xfb0 loads 8 bytes into a1 from ? (base unknown).
  The `sd` at 0xfb4 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `ld` at 0xfb8 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0xfcc loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0xfdc loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `jal` at 0xe3c calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe48 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0xe7c calls `GfxListReaderLock` with a0=[ret(gthread_find)+16]:8, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0xea4 calls `GfxListReaderUnlock` with a0=[ret(gthread_find)+16]:8, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jalr` at 0xed0 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf24 calls `mutex_spinlock` with a0=[ret(gthread_find)+16]:8+16, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0xf30 calls `threadgroup_refcnt` with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf4c calls `mutex_spinunlock` with a0=[ret(gthread_find)+16]:8+16, a1=?, a2=?, a3=?.
  The `jal` at 0xf54 calls `GfxListReaderUnlock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf90 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xfa8 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfbc calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfc4 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xe54 has these conditions:
    taken when v0(=ret(gthread_find)) == 0.
    falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0xe6c has these conditions:
    taken when v0(=[ret(gthread_find)+24]:8) == 0.
    falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xe74 has these conditions:
    taken when a1(=[ret(gthread_find)+16]:8) == 0.
    falls through when a1(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0xe8c has these conditions:
    taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0.
    falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0xe9c has these conditions:
    taken when (v0(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0.
    falls through when (v0(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `beq` branch at 0xeb4 has these conditions:
    taken when a1(=[ret(gthread_find)+16]:8) == 0.
    falls through when a1(=[ret(gthread_find)+16]:8) != 0.
  The `bnel` branch at 0xec0 has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The `beq` branch at 0xedc has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0xee8 has these conditions:
    taken when v0(?) == 0.
    falls through when v0(?) != 0.
  The `bne` branch at 0xef4 has these conditions:
    taken when a1(?) != 0.
    falls through when a1(?) == 0.
  The `bne` branch at 0xf00 has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The `beq` branch at 0xf3c has these conditions:
    taken when v0(=ret(threadgroup_refcnt)) == v1(=0x1).
    falls through when v0(=ret(threadgroup_refcnt)) != v1(=0x1).
  The `beq` branch at 0xf70 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0xf7c has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `bne` branch at 0xf88 has these conditions:
    taken when a1(?) != s0(?).
    falls through when a1(?) == s0(?).
  The `beq` branch at 0xfa0 has these conditions:
    taken when a4(?) == 0.
    falls through when a4(?) != 0.
  The `bne` branch at 0xfd0 has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The return at 0xf14 has v0 = 0x0.



- `gfx_shdup` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x1234 (n64).
  It occupies 124 bytes.
  The `ld` at 0x1250 loads 8 bytes into v0 from ret(gthread_find) +0x10.
  The `ld` at 0x125c loads 8 bytes into a4 from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x1268 loads 4 bytes into at from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `ld` at 0x129c loads 8 bytes into a1 from ret(gthread_find) +0x10.
  The `jal` at 0x1240 calls `gthread_find` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1284 calls `gthread_create` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a4=[[ret(gthread_find)+16]:8+24]:8.
  The `jal` at 0x1298 calls `gthread_attach_list` with a0=ret(gthread_create), a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0x12a0 calls `setgfxsched_thread` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1248 has these conditions:
    taken when v0(=ret(gthread_find)) == 0.
    falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x1254 has these conditions:
    taken when v0(=[ret(gthread_find)+16]:8) == 0.
    falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x1260 has these conditions:
    taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0.
    falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x1270 has these conditions:
    taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0.
    falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `beq` branch at 0x128c has these conditions:
    taken when v0(=ret(gthread_create)) == 0.
    falls through when v0(=ret(gthread_create)) != 0.
  The return at 0x127c has v0 = ?.



- `gfx_conflict_scan` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x1e44 (n64).
  It occupies 228 bytes.
  The `ld` at 0x1e7c loads 8 bytes into v0 from a0 (arg0 at entry) +0x18.
  The `ld` at 0x1e88 loads 8 bytes into v1 from a1 (arg1 at entry) +0x8.
  The `ld` at 0x1e8c loads 8 bytes into at from [a0+24]:8 +0x0.
  The `ld` at 0x1ea0 loads 8 bytes into v0 from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1ea4 loads 4 bytes into a1 from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1eb0 loads 8 bytes into s0 from [a0+16]:8 +0x18.
  The `lw` at 0x1ecc loads 4 bytes into a4 from ? (base unknown).
  The `ld` at 0x1f08 loads 8 bytes into s0 from ? (base unknown).
  The `sw` at 0x1f24 stores 4 bytes from a7 to a1 (arg1 at entry) +0x0 (value 0x3).
  The `jal` at 0x1ec4 calls `psema` with a0=?, a1=0x19, a2=?, a3=?.
  The `jal` at 0x1ef0 calls `vsema` with a0=?, a1=?, a2=one of 0x1, 0x2, a3=?, a4=0x1.
  The `beq` branch at 0x1e5c has these conditions:
    taken when a2 == a5(=0x1).
    falls through when a2 != a5(=0x1).
  The `beq` branch at 0x1e80 has these conditions:
    taken when v0(=[a0+24]:8) == 0.
    falls through when v0(=[a0+24]:8) != 0.
  The `beq` branch at 0x1e90 has these conditions:
    taken when at(=[[a0+24]:8]:8) == v1(=[a1+8]:8).
    falls through when at(=[[a0+24]:8]:8) != v1(=[a1+8]:8).
  The `beq` branch at 0x1ea8 has these conditions:
    taken when v0(=[a0+16]:8) == 0.
    falls through when v0(=[a0+16]:8) != 0.
  The `beq` branch at 0x1eb4 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x1f00 has these conditions:
    taken when a5(?) != a6(?).
    falls through when a5(?) == a6(?).
  The `bne` branch at 0x1f0c has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The return at 0x1e74 has v0 = one of 0x0, 0x1.



- `gfx_shalloc` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3378 (n64).
  It occupies 192 bytes.
  The `ld` at 0x33c0 loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `ld` at 0x33d4 loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `ld` at 0x33d8 loads 8 bytes into a4 from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x33e8 loads 4 bytes into at from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `sd` at 0x33f8 stores 8 bytes from s0 to ? (base unknown) (value ret(gfx_group_create)).
  The `ld` at 0x33fc loads 8 bytes into a4 from ? (base unknown).
  The `ld` at 0x3408 loads 8 bytes into a0 from ret(gthread_find) +0x10.
  The `sw` at 0x3434 stores 4 bytes from a5 to ret(gfx_group_create) +0xc (value 0x1).
  The `jal` at 0x3380 calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3388 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3398 calls `gfx_group_create` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x33a4 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x33b8 calls `gthread_attach_group` with a0=ret(gthread_find), a1=ret(gfx_group_create), a2=?, a3=?.
  The `jal` at 0x33cc calls `GfxListWriterLock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x340c calls `GfxListWriterUnlock` with a0=[ret(gthread_find)+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=?, a5=0x1.
  The `jal` at 0x3414 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x33ac has these conditions:
    taken when v0(=ret(gthread_find)) == 0.
    falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x33c4 has these conditions:
    taken when a0(=[ret(gthread_find)+16]:8) == 0.
    falls through when a0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x33e0 has these conditions:
    taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0.
    falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x33f0 has these conditions:
    taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0.
    falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `bne` branch at 0x3400 has these conditions:
    taken when a4(?) != 0.
    falls through when a4(?) == 0.
  The return at 0x3428 has v0 = ret(splx); f0 = ret(splx).



- `gfx_shfree` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3438 (n64).
  It occupies 44 bytes.
  The `jal` at 0x3440 calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3448 calls `gfx_group_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x3450 calls `gfx_group_destroy` with a0=ret(gfx_group_find), a1=?, a2=?, a3=?.
  The return at 0x345c has v0 = ret(gfx_group_destroy); f0 = ret(gfx_group_destroy).



- `gfx_frs_valid_pipenum` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3464 (n64).
  It occupies 12 bytes.
  The `lw` at 0x3464 loads 4 bytes into v0 from sym(GfxNumberOfBoards) +0x0.
  The return at 0x3468 has v0 = ?.



- `gfx_frs_install` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3470 (n64).
  It occupies 88 bytes.
  The `ld` at 0x3470 loads 8 bytes into a4 from sym(.srdata) +0x8.
  The `ld` at 0x347c loads 8 bytes into a4 from (sym(GfxBoards) + (a1 << 0x3)) +0x0.
  The `ld` at 0x3480 loads 8 bytes into a3 from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x38.
  The `ld` at 0x3484 loads 8 bytes into a3 from [[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8 +0xd0.
  The `ld` at 0x3498 loads 8 bytes into a0 from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x40.
  The `ld` at 0x34b0 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `jalr` at 0x349c calls `(unknown callee)` with a0=[[(sym(GfxBoards) + (a1 << 0x3))]:8+64]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `jal` at 0x34b8 calls `cmn_err` with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `beq` branch at 0x3490 has these conditions:
    taken when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) == 0.
    falls through when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) != 0.
  The return at 0x34a8 has v0 = ?.



- `gfx_frs_uninstall` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x34c8 (n64).
  It occupies 80 bytes.
  The `ld` at 0x34c8 loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `ld` at 0x34d4 loads 8 bytes into a2 from (sym(GfxBoards) + (a0 << 0x3)) +0x0.
  The `ld` at 0x34d8 loads 8 bytes into a3 from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x38.
  The `ld` at 0x34dc loads 8 bytes into a3 from [[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8 +0xd8.
  The `ld` at 0x34f0 loads 8 bytes into a0 from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x40.
  The `ld` at 0x3500 loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `jalr` at 0x34ec calls `(unknown callee)` with a0=[[(sym(GfxBoards) + (a0 << 0x3))]:8+64]:8, a1=a1 at entry (arg1), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `jal` at 0x3508 calls `cmn_err` with a0=0x5, a1=sym(.rodata), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `beq` branch at 0x34e4 has these conditions:
    taken when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) == 0.
    falls through when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) != 0.
  The return at 0x34f8 has v0 = ?.



- `irix5_to_gfx_getboardinfo_args` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3518 (n64).
  It occupies 120 bytes.
  The `lw` at 0x352c loads 4 bytes into at from a3 (arg3 at entry) +0x0.
  The `ld` at 0x353c loads 8 bytes into v0 from a3 (arg3 at entry) +0x8.
  The `sd` at 0x3540 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x3548 stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0xc).
  The `ld` at 0x3554 loads 8 bytes into a0 from a3 (arg3 at entry) +0x10.
  The `lw` at 0x3558 loads 4 bytes into a3 from [a3+16]:8 +0x0.
  The `sw` at 0x355c stores 4 bytes from a3 to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `lwu` at 0x3560 loads 4 bytes into a2 from [a3+16]:8 +0x4.
  The `sd` at 0x3564 stores 8 bytes from a2 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+4]).
  The `lw` at 0x3568 loads 4 bytes into a0 from [a3+16]:8 +0x8.
  The `sw` at 0x356c stores 4 bytes from a0 to a1 (arg1 at entry) +0x10 (value [[a3+16]:8+8]).
  The `sd` at 0x358c stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x357c calls `kern_malloc` with a0=0xc, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3524 has these conditions:
    taken when a0 != 0.
    falls through when a0 == 0.
  The `bne` branch at 0x3534 has these conditions:
    taken when at(=[a3]) < 0xc (unsigned).
    falls through when at(=[a3]) >= 0xc (unsigned).
  The return at 0x3574 has v0 = 0x0.



- `irix5_to_gfx_download_args` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3590 (n64).
  It occupies 160 bytes.
  The `lw` at 0x35a4 loads 4 bytes into at from a3 (arg3 at entry) +0x0.
  The `ld` at 0x35b4 loads 8 bytes into v0 from a3 (arg3 at entry) +0x8.
  The `sd` at 0x35b8 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x35c0 stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0x20).
  The `ld` at 0x35cc loads 8 bytes into a0 from a3 (arg3 at entry) +0x10.
  The `lw` at 0x35d0 loads 4 bytes into t0 from [a3+16]:8 +0x0.
  The `sw` at 0x35d4 stores 4 bytes from t0 to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `lwu` at 0x35d8 loads 4 bytes into a7 from [a3+16]:8 +0x4.
  The `sd` at 0x35dc stores 8 bytes from a7 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+4]).
  The `lw` at 0x35e0 loads 4 bytes into a6 from [a3+16]:8 +0x8.
  The `sw` at 0x35e4 stores 4 bytes from a6 to a1 (arg1 at entry) +0x10 (value [[a3+16]:8+8]).
  The `lw` at 0x35e8 loads 4 bytes into a5 from [a3+16]:8 +0xc.
  The `sw` at 0x35ec stores 4 bytes from a5 to a1 (arg1 at entry) +0x14 (value [[a3+16]:8+12]).
  The `lw` at 0x35f0 loads 4 bytes into a4 from [a3+16]:8 +0x10.
  The `sw` at 0x35f4 stores 4 bytes from a4 to a1 (arg1 at entry) +0x18 (value [[a3+16]:8+16]).
  The `lw` at 0x35f8 loads 4 bytes into a3 from [a3+16]:8 +0x14.
  The `sw` at 0x35fc stores 4 bytes from a3 to a1 (arg1 at entry) +0x1c (value [[a3+16]:8+20]).
  The `lw` at 0x3600 loads 4 bytes into a2 from [a3+16]:8 +0x18.
  The `sw` at 0x3604 stores 4 bytes from a2 to a1 (arg1 at entry) +0x20 (value [[a3+16]:8+24]).
  The `lw` at 0x3608 loads 4 bytes into a0 from [a3+16]:8 +0x1c.
  The `sw` at 0x360c stores 4 bytes from a0 to a1 (arg1 at entry) +0x24 (value [[a3+16]:8+28]).
  The `sd` at 0x362c stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x361c calls `kern_malloc` with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x359c has these conditions:
    taken when a0 != 0.
    falls through when a0 == 0.
  The `bne` branch at 0x35ac has these conditions:
    taken when at(=[a3]) < 0x20 (unsigned).
    falls through when at(=[a3]) >= 0x20 (unsigned).
  The return at 0x3614 has v0 = 0x0.



- `irix5_to_gfx_attach_board_args` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3630 (n64).
  It occupies 112 bytes.
  The `lw` at 0x3644 loads 4 bytes into at from a3 (arg3 at entry) +0x0.
  The `ld` at 0x3654 loads 8 bytes into v0 from a3 (arg3 at entry) +0x8.
  The `sd` at 0x3658 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x3660 stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0x8).
  The `ld` at 0x366c loads 8 bytes into a0 from a3 (arg3 at entry) +0x10.
  The `lw` at 0x3670 loads 4 bytes into a2 from [a3+16]:8 +0x0.
  The `sw` at 0x3674 stores 4 bytes from a2 to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `lwu` at 0x3678 loads 4 bytes into a0 from [a3+16]:8 +0x4.
  The `sd` at 0x367c stores 8 bytes from a0 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+4]).
  The `sd` at 0x369c stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x368c calls `kern_malloc` with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x363c has these conditions:
    taken when a0 != 0.
    falls through when a0 == 0.
  The `bne` branch at 0x364c has these conditions:
    taken when at(=[a3]) < 0x8 (unsigned).
    falls through when at(=[a3]) >= 0x8 (unsigned).
  The return at 0x3684 has v0 = 0x0.



- `gfx_flow_init` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x94 (n64).
  It occupies 368 bytes.
  The `lw` at 0x94 loads 4 bytes into a6 from sym(maxnodes) +0x0.
  The `ld` at 0xac loads 8 bytes into a2 from sym(.lit8) +0x18.
  The `ld` at 0xb0 loads 8 bytes into a7 from sym(.lit8) +0x10.
  The `ld` at 0xbc loads 8 bytes into t0 from sym(.lit8) +0x8.
  The `ld` at 0xc8 loads 8 bytes into ra from sym(.srdata) +0x8.
  The `lh` at 0xdc loads 2 bytes into v0 from ? (base unknown).
  The `sd` at 0xe8 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `lh` at 0xf0 loads 2 bytes into at from ? (base unknown).
  The `sd` at 0x108 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `lh` at 0x114 loads 2 bytes into at from ? (base unknown).
  The `sd` at 0x128 stores 8 bytes from t3 to ? (base unknown) (value 0x4e20).
  The `lh` at 0x130 loads 2 bytes into v1 from ? (base unknown).
  The `sd` at 0x150 stores 8 bytes from t3 to ? (base unknown) (value 0x4e20).
  The `lw` at 0x154 loads 4 bytes into a6 from sym(maxnodes) +0x0.
  The `lw` at 0x164 loads 4 bytes into v1 from sym(maxcpus) +0x0.
  The `ld` at 0x168 loads 8 bytes into s1 from sym(.srdata) +0x10.
  The `lw` at 0x19c loads 4 bytes into a0 from sym(maxcpus) +0x0.
  The `lw` at 0x1b0 loads 4 bytes into a6 from sym(maxnodes) +0x0.
  The `lw` at 0x1d4 loads 4 bytes into a0 from sym(maxcpus) +0x0.
  The `sd` at 0x1e4 stores 8 bytes from v0 to sym(gfx_flow_igfx_owners) +0x0 (value ret(kmem_zalloc)).
  The `sd` at 0x1f8 stores 8 bytes from v0 to sym(gfx_flow_cpu_attachments) +0x0 (value ret(kmem_zalloc)).
  The `jal` at 0x178 calls `cpu_enabled` with a0=?, a1=?, a2=?, a3=?, a6=[sym(maxnodes)].
  The `jal` at 0x190 calls `install_gfxintr` with a0=?, a1=0x0, a2=sym(gfx_flow_delayed_hiwater_intr_prehandler), a3=0x0.
  The `jal` at 0x1cc calls `kmem_zalloc` with a0=?, a1=0x0, a2=?, a3=?, a6=[sym(maxnodes)].
  The `jal` at 0x1ec calls `kmem_zalloc` with a0=?, a1=0x0, a2=?, a3=?.
  The `blez` branch at 0xa0 has these conditions:
    taken when a6(=[sym(maxnodes)]) <= 0 (signed).
    falls through when a6(=[sym(maxnodes)]) > 0 (signed).
  The `bne` branch at 0x14c has these conditions:
    taken when a0(?) < 0x2 (unsigned).
    falls through when a0(?) >= 0x2 (unsigned).
  The `bnel` branch at 0x15c has these conditions:
    taken when a5(?) < a6(=[sym(maxnodes)]) (signed).
    falls through when a5(?) >= a6(=[sym(maxnodes)]) (signed).
  The `blez` branch at 0x16c has these conditions:
    taken when v1(=[sym(maxcpus)]) <= 0 (signed).
    falls through when v1(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x180 has these conditions:
    taken when v0(=ret(cpu_enabled)) == 0.
    falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x1ac has these conditions:
    taken when s0(?) < a0(=[sym(maxcpus)]) (signed).
    falls through when s0(?) >= a0(=[sym(maxcpus)]) (signed).
  The return at 0x1fc has v0 = ret(kmem_zalloc); f0 = ret(kmem_zalloc).



- `gfx_flow_alloc` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x204 (n64).
  It occupies 592 bytes.
  The `ld` at 0x220 loads 8 bytes into at from sym(gfx_flow_igfx_owners) +0x0.
  The `ld` at 0x25c loads 8 bytes into v0 from ? (base unknown).
  The `sd` at 0x28c stores 8 bytes from s0 to ? (base unknown) (value ret(kmem_alloc)).
  The `lh` at 0x290 loads 2 bytes into a5 from ret(kmem_alloc) +0x50.
  The `sw` at 0x298 stores 4 bytes from a0 to ret(kmem_alloc) +0x54 (value unknown).
  The `lh` at 0x2a0 loads 2 bytes into a4 from (sym(compact_to_nasid_node) + ([ret(kmem_alloc)+80]:2 + [ret(kmem_alloc)+80]:2)) +0x0.
  The `sh` at 0x2a4 stores 2 bytes from a6 to ret(kmem_alloc) +0x60 (value -0x1).
  The `ld` at 0x2a8 loads 8 bytes into a5 from sym(.lit8) +0x28.
  The `sd` at 0x2b0 stores 8 bytes from a6 to ret(kmem_alloc) +0x68 (value -0x1).
  The `sd` at 0x2bc stores 8 bytes from a4 to ret(kmem_alloc) +0x58 (value table(0x9200000001c00140)).
  The `sw` at 0x2ec stores 4 bytes from s1 to ret(kmem_alloc) +0x0 (value a0).
  The `sw` at 0x304 stores 4 bytes from v0 to ret(kmem_alloc) +0x4 (value ret(xwidget_info_id_get)).
  The `sd` at 0x31c stores 8 bytes from s1 to ret(kmem_alloc) +0x8 (value a1).
  The `sw` at 0x328 stores 4 bytes from t9 to ret(kmem_alloc) +0x40 (value 0x4).
  The `sw` at 0x334 stores 4 bytes from t2 to ret(kmem_alloc) +0x10 (value unknown).
  The `sw` at 0x340 stores 4 bytes from a5 to ret(kmem_alloc) +0x10 (value 0x100).
  The `sw` at 0x350 stores 4 bytes from t2 to ret(kmem_alloc) +0x14 (value unknown).
  The `sw` at 0x354 stores 4 bytes from a4 to ret(kmem_alloc) +0x3c (value 0x38).
  The `sw` at 0x35c stores 4 bytes from a3 to ret(kmem_alloc) +0x18 (value 0x44).
  The `sw` at 0x364 stores 4 bytes from at to ret(kmem_alloc) +0x1c (value unknown).
  The `sw` at 0x36c stores 4 bytes from t9 to ret(kmem_alloc) +0x30 (value 0x1).
  The `sw` at 0x370 stores 4 bytes from t9 to ret(kmem_alloc) +0x34 (value 0x1).
  The `sw` at 0x374 stores 4 bytes from t9 to ret(kmem_alloc) +0x38 (value 0x1).
  The `sd` at 0x380 stores 8 bytes from a0 to ret(kmem_alloc) +0x28 (value a6).
  The `sd` at 0x390 stores 8 bytes from a1 to ret(kmem_alloc) +0x20 (value a5).
  The `sw` at 0x3a0 stores 4 bytes from v1 to ret(kmem_alloc) +0x40 (value (a7 | 0x4)).
  The `sd` at 0x3b0 stores 8 bytes from v0 to ret(kmem_alloc) +0x48 (value ret(kvalloc)).
  The `ld` at 0x3b8 loads 8 bytes into a3 from sym(kptbl) +0x0.
  The `lwu` at 0x3c4 loads 4 bytes into a2 from ret(kmem_alloc) +0x3c.
  The `ld` at 0x3d0 loads 8 bytes into a4 from sym(.lit8) +0x20.
  The `sd` at 0x3e8 stores 8 bytes from a2 to ? (base unknown) (value unknown).
  The `sh` at 0x3f8 stores 2 bytes from v0 to ret(kmem_alloc) +0x50 (value ret(master_node_get)).
  The `ld` at 0x400 loads 8 bytes into a1 from sym(gfx_flow_igfx_owners) +0x0.
  The `ld` at 0x410 loads 8 bytes into a7 from ? (base unknown).
  The `ld` at 0x418 loads 8 bytes into a4 from sym(.srdata) +0x8.
  The `sw` at 0x450 stores 4 bytes from t9 to ret(kmem_alloc) +0x1c (value 0x1).
  The `jal` at 0x244 calls `kmem_alloc` with a0=0x70, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2d8 calls `xwidget_info_get` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2e8 calls `xwidget_info_id_get` with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x39c calls `kvalloc` with a0=0x1, a1=0x0, a2=0x0, a3=0x44, a4=0x38, a5=0x100.
  The `jal` at 0x3e4 calls `xwidget_info_master_get` with a0=?, a1=?, a2=?, a3=?, a4=0x4000000400000007.
  The `jal` at 0x3ec calls `master_node_get` with a0=ret(xwidget_info_master_get), a1=?, a2=?, a3=?.
  The `jal` at 0x42c calls `gfx_flow_init` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x234 has these conditions:
    taken when at(=[sym(gfx_flow_igfx_owners)]:8) == 0.
    falls through when at(=[sym(gfx_flow_igfx_owners)]:8) != 0.
  The `bne` branch at 0x24c has these conditions:
    taken when v0(=ret(kmem_alloc)) != 0.
    falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x260 has these conditions:
    taken when v0(?) == 0.
    falls through when v0(?) != 0.
  The `bne` branch at 0x278 has these conditions:
    taken when a0(?) < 0x2 (unsigned).
    falls through when a0(?) >= 0x2 (unsigned).
  The `bne` branch at 0x338 has these conditions:
    taken when t2(?) < 0x101 (unsigned).
    falls through when t2(?) >= 0x101 (unsigned).
  The `beq` branch at 0x360 has these conditions:
    taken when at(?) == 0.
    falls through when at(?) != 0.
  The `beq` branch at 0x41c has these conditions:
    taken when a7(?) == 0.
    falls through when a7(?) != 0.
  The return at 0x2d0 has v0 = ?.



- `gfx_flow_reset` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x454 (n64).
  It occupies 12 bytes.
  The `lw` at 0x454 loads 4 bytes into at from a0 (arg0 at entry) +0x10.
  The `sw` at 0x45c stores 4 bytes from at to a0 (arg0 at entry) +0x14 (value [a0+16]).
  The return at 0x458 has v0 = ?.



- `gfx_flow_dealloc` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x460 (n64).
  It occupies 72 bytes.
  The `lh` at 0x460 loads 2 bytes into a1 from a0 (arg0 at entry) +0x50.
  The `lw` at 0x464 loads 4 bytes into v0 from a0 (arg0 at entry) +0x54.
  The `ld` at 0x474 loads 8 bytes into at from sym(gfx_flow_igfx_owners) +0x0.
  The `sd` at 0x498 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `jal` at 0x494 calls `kmem_free` with a0=a0 at entry (arg0), a1=0x70, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4a0 has v0 = ret(kmem_free); f0 = ret(kmem_free).



- `gfx_flow_wg_info_get` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x4a8 (n64).
  It occupies 36 bytes.
  The `ld` at 0x4a8 loads 8 bytes into a2 from a0 (arg0 at entry) +0x30.
  The `sd` at 0x4ac stores 8 bytes from a2 to a1 (arg1 at entry) +0x0 (value [a0+48]:8).
  The `ld` at 0x4b0 loads 8 bytes into v1 from a0 (arg0 at entry) +0x38.
  The `sd` at 0x4b4 stores 8 bytes from v1 to a1 (arg1 at entry) +0x8 (value [a0+56]:8).
  The `ld` at 0x4b8 loads 8 bytes into v0 from a0 (arg0 at entry) +0x40.
  The `sd` at 0x4bc stores 8 bytes from v0 to a1 (arg1 at entry) +0x10 (value [a0+64]:8).
  The `ld` at 0x4c0 loads 8 bytes into at from a0 (arg0 at entry) +0x48.
  The `sd` at 0x4c8 stores 8 bytes from at to a1 (arg1 at entry) +0x18 (value [a0+72]:8).
  The return at 0x4c4 has v0 = [a0+64]:8.



- `gfx_flow_credit_tnum_get` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x4cc (n64).
  It occupies 8 bytes.
  The return at 0x4cc has v0 = 0x11.



- `gfx_flow_credit_total_get` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x4d4 (n64).
  It occupies 12 bytes.
  The `lw` at 0x4d4 loads 4 bytes into v0 from a0 (arg0 at entry) +0x10.
  The return at 0x4d8 has v0 = ([a0+16] << 0x3).



- `gfx_flow_credit_bias_get` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x4e0 (n64).
  It occupies 12 bytes.
  The `lw` at 0x4e0 loads 4 bytes into v0 from a0 (arg0 at entry) +0x18.
  The return at 0x4e4 has v0 = ([a0+24] << 0x3).



- `gfx_flow_credit_count_get` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x4ec (n64).
  It occupies 76 bytes.
  The `lh` at 0x4ec loads 2 bytes into a0 from abs 0xffffffffffffc428.
  The `ld` at 0x4f0 loads 8 bytes into v1 from sym(.srdata) +0x0.
  The `ld` at 0x4fc loads 8 bytes into v1 from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x500 loads byte into v1 from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `ld` at 0x518 loads 8 bytes into v1 from sym(.lit8) +0x0.
  The `ld` at 0x528 loads 8 bytes into v0 from table(0x9200000001000000) +0x0.
  The return at 0x530 has v0 = ((entry(0x9200000001000000) << 0x3) << 0x0).


- `gfx_flow_detach_requires_credit_flow_disable` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x538 (n64).
  It occupies 8 bytes.
  The return at 0x538 has v0 = 0x1.


- `gfx_flow_attach_me_finish` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x664 (n64).
  It occupies 80 bytes.
  The `lh` at 0x664 loads 2 bytes into a1 from abs 0xffffffffffffc428.
  The `ld` at 0x668 loads 8 bytes into v1 from sym(.srdata) +0x0.
  The `ld` at 0x674 loads 8 bytes into v1 from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x678 loads byte into v1 from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `ld` at 0x690 loads 8 bytes into v1 from sym(.lit8) +0x30.
  The `lwu` at 0x69c loads 4 bytes into at from a0 (arg0 at entry) +0x18.
  The `sd` at 0x6a4 stores 8 bytes from at to ? (base unknown) (value [a0+24]).
  The return at 0x6ac has v0 = ?.


- `gfx_flow_am_i_attached` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x790 (n64).
  It occupies 68 bytes.
  The `lh` at 0x798 loads 2 bytes into v1 from a0 (arg0 at entry) +0x60.
  The `lh` at 0x79c loads 2 bytes into v0 from abs 0xffffffffffffc428.
  The `ld` at 0x7ac loads 8 bytes into a0 from sym(gfx_flow_cpu_attachments) +0x0.
  The `lh` at 0x7b8 loads 2 bytes into v0 from abs 0xffffffffffffc428.
  The `ld` at 0x7c4 loads 8 bytes into v0 from ([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3bd8]:2 << 0x3)) +0x0.
  The `beq` branch at 0x790 has these conditions:
    taken when a0 == 0.
    falls through when a0 != 0.
  The `beq` branch at 0x7b0 has these conditions:
    taken when a0(=[sym(gfx_flow_cpu_attachments)]:8) == 0.
    falls through when a0(=[sym(gfx_flow_cpu_attachments)]:8) != 0.
  The return at 0x7a4 has v0 = ?.
  The return at 0x7cc has v0 = ?.


- `gfx_exit` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x0 (n64).
  It occupies 8 bytes.
  The return at 0x0 has v0 = 0x0.


- `gfx_disp` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x8 (n64).
  It occupies 8 bytes.
  The return at 0x8 has v0 = 0x1.


- `gfx_earlyinit` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x10 (n64).
  It occupies 8 bytes.
  The return at 0x10 has v0 = ?.


- `gfx_fault` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x30 (n64).
  It occupies 8 bytes.
  The return at 0x30 has v0 = 0x1.


- `gfx_shcheck` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x48 (n64).
  It occupies 8 bytes.
  The return at 0x48 has v0 = ?.


- `gfx_shdup` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x50 (n64).
  It occupies 8 bytes.
  The return at 0x50 has v0 = ?.


- `gfx_shalloc` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x58 (n64).
  It occupies 8 bytes.
  The return at 0x58 has v0 = ?.


- `gfx_shfree` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x60 (n64).
  It occupies 8 bytes.
  The return at 0x60 has v0 = ?.


- `gfx_frs_valid_pipenum` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x78 (n64).
  It occupies 8 bytes.
  The return at 0x78 has v0 = 0x0.


- `gfx_frs_install` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x80 (n64).
  It occupies 8 bytes.
  The return at 0x80 has v0 = ?.


- `gfx_frs_uninstall` in `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)` at 0x88 (n64).
  It occupies 8 bytes.
  The return at 0x88 has v0 = ?.


- `kona_idma_timeout` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x440 (n64).
  It occupies 140 bytes.
  The `ld` at 0x460 loads 8 bytes into at from a0 (arg0 at entry) +0x1448.
  The `lw` at 0x48c loads 4 bytes into a6 from a0 (arg0 at entry) +0x1458.
  The `ld` at 0x490 loads 8 bytes into a2 from sym(.srdata) +0x0.
  The `ld` at 0x494 loads 8 bytes into a5 from a0 (arg0 at entry) +0x1450.
  The `lw` at 0x4a0 loads 4 bytes into a4 from a0 (arg0 at entry) +0x888.
  The `sd` at 0x4c0 stores 8 bytes from zero to a0 (arg0 at entry) +0x1448 (value 0x0).
  The `jal` at 0x458 calls `mutex_spinlock` with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x474 calls `mutex_spinunlock` with a0=a0+2576, a1=?, a2=?, a3=?.
  The `jal` at 0x4a4 calls `cmn_err_tag` with a0=0x84a, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=[a0+5200]:8, a6=[a0+5208].
  The `jal` at 0x4b0 calls `kona_die` with a0=a0 at entry (arg0), a1=0x4, a2=?, a3=?.
  The `jal` at 0x4bc calls `vsema` with a0=a0+5176, a1=?, a2=?, a3=?.
  The `bne` branch at 0x464 has these conditions:
    taken when at(=[a0+5192]:8) != 0.
    falls through when at(=[a0+5192]:8) == 0.
  The return at 0x484 has v0 = ret(mutex_spinunlock); f0 = ret(mutex_spinunlock).


- `kona_free_up_space` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1520 (n64).
  It occupies 52 bytes.
  The `ld` at 0x1524 loads 8 bytes into a3 from sym(.srdata) +0x0.
  The `lw` at 0x1534 loads 4 bytes into a4 from a0 (arg0 at entry) +0x888.
  The `jal` at 0x1540 calls `cmn_err_tag` with a0=0x84c, a1=0x0, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184].
  The return at 0x154c has v0 = ret(cmn_err_tag); f0 = ret(cmn_err_tag).


- `kona_diag_map_cleanup` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1554 (n64).
  It occupies 100 bytes.
  The `ld` at 0x1568 loads 8 bytes into at from a0 (arg0 at entry) +0x1460.
  The `ld` at 0x1574 loads 8 bytes into a1 from a0 (arg0 at entry) +0x1468.
  The `lw` at 0x1584 loads 4 bytes into a0 from a0 (arg0 at entry) +0x888.
  The `sd` at 0x1588 stores 8 bytes from zero to a0 (arg0 at entry) +0x1468 (value 0x0).
  The `lw` at 0x158c loads 4 bytes into v0 from a0 (arg0 at entry) +0x1478.
  The `sw` at 0x15a0 stores 4 bytes from zero to a0 (arg0 at entry) +0x1478 (value 0x0).
  The `sd` at 0x15a4 stores 8 bytes from zero to a0 (arg0 at entry) +0x1460 (value 0x0).
  The `jal` at 0x1560 calls `curproc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1580 calls `free_gfx_io_space` with a0=[a0+2184], a1=[a0+5224]:8, a2=?, a3=?.
  The `jal` at 0x1598 calls `unlock_dmavec` with a0=a0+5232, a1=0x1, a2=?, a3=?.
  The `bne` branch at 0x156c has these conditions:
    taken when at(=[a0+5216]:8) != v0(=ret(curproc)).
    falls through when at(=[a0+5216]:8) == v0(=ret(curproc)).
  The `beq` branch at 0x1578 has these conditions:
    taken when a1(=[a0+5224]:8) == 0.
    falls through when a1(=[a0+5224]:8) != 0.
  The `beq` branch at 0x1590 has these conditions:
    taken when v0(=[a0+5240]) == 0.
    falls through when v0(=[a0+5240]) != 0.
  The return at 0x15b0 has v0 = ?.


- `abi32_to_kona_diag_map` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1ae0 (n64).
  It occupies 120 bytes.
  The `lw` at 0x1af4 loads 4 bytes into at from a3 (arg3 at entry) +0x0.
  The `ld` at 0x1b04 loads 8 bytes into v0 from a3 (arg3 at entry) +0x8.
  The `sd` at 0x1b08 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x1b10 stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0x14).
  The `ld` at 0x1b1c loads 8 bytes into a0 from a3 (arg3 at entry) +0x10.
  The `lwu` at 0x1b20 loads 4 bytes into a3 from [a3+16]:8 +0x0.
  The `sd` at 0x1b24 stores 8 bytes from a3 to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `lw` at 0x1b28 loads 4 bytes into a2 from [a3+16]:8 +0x4.
  The `sw` at 0x1b2c stores 4 bytes from a2 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+4]).
  The `lw` at 0x1b30 loads 4 bytes into a0 from [a3+16]:8 +0xc.
  The `sw` at 0x1b34 stores 4 bytes from a0 to a1 (arg1 at entry) +0x10 (value [[a3+16]:8+12]).
  The `sd` at 0x1b54 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x1b44 calls `kern_malloc` with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1aec has these conditions:
    taken when a0 != 0.
    falls through when a0 == 0.
  The `bne` branch at 0x1afc has these conditions:
    taken when at(=[a3]) < 0x14 (unsigned).
    falls through when at(=[a3]) >= 0x14 (unsigned).
  The return at 0x1b3c has v0 = 0x0.


- `kona_diag_map_to_abi32` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1b58 (n64).
  It occupies 136 bytes.
  The `lw` at 0x1b58 loads 4 bytes into at from a2 (arg2 at entry) +0x0.
  The `ld` at 0x1b7c loads 8 bytes into a2 from a2 (arg2 at entry) +0x8.
  The `sd` at 0x1b80 stores 8 bytes from a2 to a2 (arg2 at entry) +0x10 (value [a2+8]:8).
  The `sw` at 0x1b88 stores 4 bytes from a4 to a2 (arg2 at entry) +0x4 (value 0x14).
  The `ld` at 0x1b90 loads 8 bytes into a3 from a0 (arg0 at entry) +0x0.
  The `sw` at 0x1b94 stores 4 bytes from a3 to ? (base unknown) (value [a0]:8).
  The `lw` at 0x1b98 loads 4 bytes into a1 from a0 (arg0 at entry) +0x8.
  The `sw` at 0x1b9c stores 4 bytes from a1 to ? (base unknown) (value [a0+8]).
  The `lw` at 0x1ba0 loads 4 bytes into a0 from a0 (arg0 at entry) +0x10.
  The `sw` at 0x1ba4 stores 4 bytes from a0 to ? (base unknown) (value [a0+16]).
  The `lw` at 0x1ba8 loads 4 bytes into v1 from a0 (arg0 at entry) +0xc.
  The `sw` at 0x1bac stores 4 bytes from v1 to ? (base unknown) (value [a0+12]).
  The `lw` at 0x1bb0 loads 4 bytes into v0 from a0 (arg0 at entry) +0x14.
  The `sw` at 0x1bbc stores 4 bytes from v0 to ? (base unknown) (value [a0+20]).
  The `sd` at 0x1bdc stores 8 bytes from v0 to a2 (arg2 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x1bc8 calls `kern_malloc` with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1b74 has these conditions:
    taken when at(=[a2]) < 0x14 (unsigned).
    falls through when at(=[a2]) >= 0x14 (unsigned).
  The return at 0x1bc0 has v0 = 0x0.


- `kona_init` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0x0 (n64).
  It occupies 200 bytes.
  The `ld` at 0x10 loads 8 bytes into a0 from sym(.srdata) +0x0.
  The `lw` at 0x1c loads 4 bytes into at from sym(GfxBoardLimit) +0x0.
  The `lw` at 0x40 loads 4 bytes into a0 from sym(GfxBoardLimit) +0x0.
  The `sb` at 0x5c stores byte from a3 to ret(kona_alloc_bdata) +0x8a0 (value unknown).
  The `sh` at 0x64 stores 2 bytes from v1 to ret(kona_alloc_bdata) +0x8a2 (value unknown).
  The `lw` at 0x68 loads 4 bytes into a0 from sym(GfxBoardLimit) +0x0.
  The `ld` at 0x80 loads 8 bytes into a0 from sym(.srdata) +0x0.
  The `ld` at 0x88 loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `ld` at 0xac loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `jal` at 0x8 calls `kona_debug_init` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x14 calls `psema` with a0=sym(GfxBoardInitSema), a1=0x19, a2=?, a3=?.
  The `jal` at 0x34 calls `find_konapipe` with a0=?, a1=sp-32, a2=sp-30, a3=?.
  The `jal` at 0x4c calls `kona_alloc_bdata` with a0=[sym(GfxBoardLimit)], a1=?, a2=?, a3=?.
  The `jal` at 0x7c calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x98 calls `xwidget_driver_register` with a0=0xc102, a1=0x2aa, a2=sym(.rodata), a3=0x0.
  The `jal` at 0xb8 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `blez` branch at 0x20 has these conditions:
    taken when at(=[sym(GfxBoardLimit)]) <= 0 (signed).
    falls through when at(=[sym(GfxBoardLimit)]) > 0 (signed).
  The `beq` branch at 0x3c has these conditions:
    taken when v0(=ret(find_konapipe)) == 0.
    falls through when v0(=ret(find_konapipe)) != 0.
  The `bltz` branch at 0x44 has these conditions:
    taken when v0(=ret(find_konapipe)) < 0 (signed).
    falls through when v0(=ret(find_konapipe)) >= 0 (signed).
  The `beq` branch at 0x54 has these conditions:
    taken when v0(=ret(kona_alloc_bdata)) == 0.
    falls through when v0(=ret(kona_alloc_bdata)) != 0.
  The `bne` branch at 0x74 has these conditions:
    taken when s0(?) < a0(=[sym(GfxBoardLimit)]) (signed).
    falls through when s0(?) >= a0(=[sym(GfxBoardLimit)]) (signed).
  The return at 0xa4 has v0 = ret(xwidget_driver_register); f0 = ret(xwidget_driver_register).


- `kona_report_errs` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0xd0 (n64).
  It occupies 1308 bytes.
  The `ld` at 0xdc loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `ld` at 0x108 loads 8 bytes into s2 from sym(.srdata) +0x8.
  The `ld` at 0x11c loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `ld` at 0x128 loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `ld` at 0x134 loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `ld` at 0x21c loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `lw` at 0x228 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `lw` at 0x244 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x258 loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x264 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `lw` at 0x280 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `lw` at 0x29c loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `lw` at 0x2b8 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x2cc loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x2d8 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x2ec loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x2f8 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x30c loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x318 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x32c loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x338 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x34c loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x358 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x36c loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x378 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x38c loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x398 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x3ac loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x3b8 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x3cc loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x3d8 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x3ec loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x3f8 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x40c loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x418 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x42c loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x438 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x44c loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x458 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x46c loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x478 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x48c loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x498 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x4ac loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x4b8 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x4cc loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x4d8 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x4ec loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x4f8 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x50c loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x518 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x52c loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x538 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x54c loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x558 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x56c loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x578 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x58c loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x598 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x5ac loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x5b8 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `ld` at 0x5cc loads 8 bytes into a2 from sym(.srdata) +0x8.
  The `lw` at 0x5d8 loads 4 bytes into a3 from a0 (arg0 at entry) +0x888.
  The `jal` at 0xe8 calls `gfx_pio_read_32` with a0=[a0+2376]:8+108, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x22c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x248 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x268 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a4=(ret(gfx_pio_read_32) << 0x1c).
  The `jal` at 0x284 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a4=(ret(gfx_pio_read_32) << 0x1c).
  The `jal` at 0x2a0 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a5=(ret(gfx_pio_read_32) << 0x1b).
  The `jal` at 0x2bc calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a6=(ret(gfx_pio_read_32) << 0x1a).
  The `jal` at 0x2dc calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a7=(ret(gfx_pio_read_32) << 0x19).
  The `jal` at 0x2fc calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x31c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x33c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x35c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x37c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x39c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x3bc calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x3dc calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x3fc calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x41c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x43c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x45c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x47c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x49c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a4=(ret(gfx_pio_read_32) << 0xa).
  The `jal` at 0x4bc calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a4=(ret(gfx_pio_read_32) << 0xa), a5=(ret(gfx_pio_read_32) << 0x9).
  The `jal` at 0x4dc calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a5=(ret(gfx_pio_read_32) << 0x9).
  The `jal` at 0x4fc calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a6=(ret(gfx_pio_read_32) << 0x8).
  The `jal` at 0x51c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x53c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x55c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x57c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x59c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x5bc calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x5dc calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `bne` branch at 0xf8 has these conditions:
    taken when (v0(=ret(gfx_pio_read_32)) & 0x1) != 0.
    falls through when (v0(=ret(gfx_pio_read_32)) & 0x1) == 0.
  The `bltz` branch at 0x104 has these conditions:
    taken when a2(=(ret(gfx_pio_read_32) << 0x1e)) < 0 (signed).
    falls through when a2(=(ret(gfx_pio_read_32) << 0x1e)) >= 0 (signed).
  The `bltz` branch at 0x110 has these conditions:
    taken when a3(=(ret(gfx_pio_read_32) << 0x1d)) < 0 (signed).
    falls through when a3(=(ret(gfx_pio_read_32) << 0x1d)) >= 0 (signed).
  The `bltz` branch at 0x118 has these conditions:
    taken when a4(=(ret(gfx_pio_read_32) << 0x1c)) < 0 (signed).
    falls through when a4(=(ret(gfx_pio_read_32) << 0x1c)) >= 0 (signed).
  The `bltz` branch at 0x124 has these conditions:
    taken when a5(=(ret(gfx_pio_read_32) << 0x1b)) < 0 (signed).
    falls through when a5(=(ret(gfx_pio_read_32) << 0x1b)) >= 0 (signed).
  The `bltz` branch at 0x130 has these conditions:
    taken when a6(=(ret(gfx_pio_read_32) << 0x1a)) < 0 (signed).
    falls through when a6(=(ret(gfx_pio_read_32) << 0x1a)) >= 0 (signed).
  The `bltz` branch at 0x13c has these conditions:
    taken when a7(=(ret(gfx_pio_read_32) << 0x19)) < 0 (signed).
    falls through when a7(=(ret(gfx_pio_read_32) << 0x19)) >= 0 (signed).
  The `bltz` branch at 0x144 has these conditions:
    taken when t0(=(ret(gfx_pio_read_32) << 0x18)) < 0 (signed).
    falls through when t0(=(ret(gfx_pio_read_32) << 0x18)) >= 0 (signed).
  The `bltz` branch at 0x14c has these conditions:
    taken when t1(=(ret(gfx_pio_read_32) << 0x17)) < 0 (signed).
    falls through when t1(=(ret(gfx_pio_read_32) << 0x17)) >= 0 (signed).
  The `bltz` branch at 0x154 has these conditions:
    taken when t2(=(ret(gfx_pio_read_32) << 0x16)) < 0 (signed).
    falls through when t2(=(ret(gfx_pio_read_32) << 0x16)) >= 0 (signed).
  The `bltz` branch at 0x15c has these conditions:
    taken when t3(=(ret(gfx_pio_read_32) << 0x15)) < 0 (signed).
    falls through when t3(=(ret(gfx_pio_read_32) << 0x15)) >= 0 (signed).
  The `bltz` branch at 0x164 has these conditions:
    taken when t8(=(ret(gfx_pio_read_32) << 0x14)) < 0 (signed).
    falls through when t8(=(ret(gfx_pio_read_32) << 0x14)) >= 0 (signed).
  The `bltz` branch at 0x16c has these conditions:
    taken when t9(=(ret(gfx_pio_read_32) << 0x13)) < 0 (signed).
    falls through when t9(=(ret(gfx_pio_read_32) << 0x13)) >= 0 (signed).
  The `bltz` branch at 0x174 has these conditions:
    taken when ra(=(ret(gfx_pio_read_32) << 0x12)) < 0 (signed).
    falls through when ra(=(ret(gfx_pio_read_32) << 0x12)) >= 0 (signed).
  The `bltz` branch at 0x17c has these conditions:
    taken when at(=(ret(gfx_pio_read_32) << 0x11)) < 0 (signed).
    falls through when at(=(ret(gfx_pio_read_32) << 0x11)) >= 0 (signed).
  The `bltz` branch at 0x184 has these conditions:
    taken when v0(=(ret(gfx_pio_read_32) << 0x10)) < 0 (signed).
    falls through when v0(=(ret(gfx_pio_read_32) << 0x10)) >= 0 (signed).
  The `bltz` branch at 0x18c has these conditions:
    taken when v1(=(ret(gfx_pio_read_32) << 0xf)) < 0 (signed).
    falls through when v1(=(ret(gfx_pio_read_32) << 0xf)) >= 0 (signed).
  The `bltz` branch at 0x194 has these conditions:
    taken when a0(=(ret(gfx_pio_read_32) << 0xe)) < 0 (signed).
    falls through when a0(=(ret(gfx_pio_read_32) << 0xe)) >= 0 (signed).
  The `bltz` branch at 0x19c has these conditions:
    taken when a1(=(ret(gfx_pio_read_32) << 0xd)) < 0 (signed).
    falls through when a1(=(ret(gfx_pio_read_32) << 0xd)) >= 0 (signed).
  The `bltz` branch at 0x1a4 has these conditions:
    taken when a2(=(ret(gfx_pio_read_32) << 0xc)) < 0 (signed).
    falls through when a2(=(ret(gfx_pio_read_32) << 0xc)) >= 0 (signed).
  The `bltz` branch at 0x1ac has these conditions:
    taken when a3(=(ret(gfx_pio_read_32) << 0xb)) < 0 (signed).
    falls through when a3(=(ret(gfx_pio_read_32) << 0xb)) >= 0 (signed).
  The `bltz` branch at 0x1b4 has these conditions:
    taken when a4(=(ret(gfx_pio_read_32) << 0xa)) < 0 (signed).
    falls through when a4(=(ret(gfx_pio_read_32) << 0xa)) >= 0 (signed).
  The `bltz` branch at 0x1bc has these conditions:
    taken when a5(=(ret(gfx_pio_read_32) << 0x9)) < 0 (signed).
    falls through when a5(=(ret(gfx_pio_read_32) << 0x9)) >= 0 (signed).
  The `bltz` branch at 0x1c8 has these conditions:
    taken when a6(=(ret(gfx_pio_read_32) << 0x8)) < 0 (signed).
    falls through when a6(=(ret(gfx_pio_read_32) << 0x8)) >= 0 (signed).
  The `bltz` branch at 0x1d0 has these conditions:
    taken when a7(?) < 0 (signed).
    falls through when a7(?) >= 0 (signed).
  The `bltz` branch at 0x1d8 has these conditions:
    taken when t0(=(ret(gfx_pio_read_32) << 0x6)) < 0 (signed).
    falls through when t0(=(ret(gfx_pio_read_32) << 0x6)) >= 0 (signed).
  The `bltz` branch at 0x1e0 has these conditions:
    taken when t1(=(ret(gfx_pio_read_32) << 0x5)) < 0 (signed).
    falls through when t1(=(ret(gfx_pio_read_32) << 0x5)) >= 0 (signed).
  The `bltz` branch at 0x1e8 has these conditions:
    taken when t2(=(ret(gfx_pio_read_32) << 0x4)) < 0 (signed).
    falls through when t2(=(ret(gfx_pio_read_32) << 0x4)) >= 0 (signed).
  The `bltz` branch at 0x1f0 has these conditions:
    taken when t3(=(ret(gfx_pio_read_32) << 0x3)) < 0 (signed).
    falls through when t3(=(ret(gfx_pio_read_32) << 0x3)) >= 0 (signed).
  The `bltz` branch at 0x1f8 has these conditions:
    taken when t8(=(ret(gfx_pio_read_32) << 0x2)) < 0 (signed).
    falls through when t8(=(ret(gfx_pio_read_32) << 0x2)) >= 0 (signed).
  The `bltz` branch at 0x200 has these conditions:
    taken when t9(=(ret(gfx_pio_read_32) << 0x1)) < 0 (signed).
    falls through when t9(=(ret(gfx_pio_read_32) << 0x1)) >= 0 (signed).
  The return at 0x214 has v0 = ?.


- `kona_extract_nic_info` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0x69c (n64).
  It occupies 2104 bytes.
  The `lbu` at 0x6d0 loads byte into a3 from a1 (arg1 at entry) +0x0.
  The `lbu` at 0x72c loads byte into a3 from ? (base unknown).
  The `ld` at 0x768 loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `lbu` at 0x784 loads byte into a3 from ? (base unknown).
  The `ld` at 0x79c loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `lbu` at 0x7a8 loads byte into a3 from ? (base unknown).
  The `ld` at 0x7b8 loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `ld` at 0x7c8 loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `ld` at 0x7d0 loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `ld` at 0x7f4 loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `lbu` at 0x800 loads byte into a3 from ? (base unknown).
  The `ld` at 0x808 loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `lbu` at 0x814 loads byte into a3 from ? (base unknown).
  The `ld` at 0x82c loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `ld` at 0x834 loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `lbu` at 0x84c loads byte into a3 from ? (base unknown).
  The `ld` at 0x854 loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `ld` at 0x86c loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `lbu` at 0x874 loads byte into a3 from ? (base unknown).
  The `lbu` at 0x8a0 loads byte into a4 from ? (base unknown).
  The `sb` at 0x8cc stores byte from s5 to ? (base unknown) (value 0x20).
  The `sb` at 0x8e0 stores byte from s5 to ? (base unknown) (value 0x20).
  The `sb` at 0x8f8 stores byte from s5 to ? (base unknown) (value 0x20).
  The `lbu` at 0x920 loads byte into t2 from ? (base unknown).
  The `sb` at 0x938 stores byte from t2 to ? (base unknown) (value unknown).
  The `lbu` at 0x944 loads byte into t9 from ? (base unknown).
  The `sb` at 0x960 stores byte from t9 to ? (base unknown) (value unknown).
  The `lbu` at 0x96c loads byte into a6 from ? (base unknown).
  The `lbu` at 0x994 loads byte into a6 from ? (base unknown).
  The `sb` at 0x9c0 stores byte from s5 to ? (base unknown) (value 0x20).
  The `sb` at 0x9d4 stores byte from s5 to ? (base unknown) (value 0x20).
  The `sb` at 0x9ec stores byte from s5 to ? (base unknown) (value 0x20).
  The `lbu` at 0xa08 loads byte into t1 from ? (base unknown).
  The `sb` at 0xa20 stores byte from t1 to ? (base unknown) (value unknown).
  The `lbu` at 0xa2c loads byte into t8 from ? (base unknown).
  The `sb` at 0xa48 stores byte from t8 to ? (base unknown) (value unknown).
  The `lbu` at 0xa54 loads byte into a5 from ? (base unknown).
  The `lbu` at 0xa7c loads byte into a5 from ? (base unknown).
  The `sb` at 0xaa8 stores byte from s5 to ? (base unknown) (value 0x20).
  The `sb` at 0xabc stores byte from s5 to ? (base unknown) (value 0x20).
  The `sb` at 0xad4 stores byte from s5 to ? (base unknown) (value 0x20).
  The `lbu` at 0xaf0 loads byte into t0 from ? (base unknown).
  The `sb` at 0xb08 stores byte from t0 to ? (base unknown) (value unknown).
  The `lbu` at 0xb14 loads byte into t3 from ? (base unknown).
  The `sb` at 0xb30 stores byte from t3 to ? (base unknown) (value unknown).
  The `lbu` at 0xb40 loads byte into a3 from ? (base unknown).
  The `lbu` at 0xb68 loads byte into a3 from ? (base unknown).
  The `sb` at 0xb94 stores byte from s5 to ? (base unknown) (value 0x20).
  The `sb` at 0xba8 stores byte from s5 to ? (base unknown) (value 0x20).
  The `sb` at 0xbc0 stores byte from s5 to ? (base unknown) (value 0x20).
  The `lbu` at 0xbe0 loads byte into a7 from ? (base unknown).
  The `sb` at 0xc00 stores byte from a7 to ? (base unknown) (value unknown).
  The `lbu` at 0xc08 loads byte into t2 from ? (base unknown).
  The `sb` at 0xc24 stores byte from t2 to ? (base unknown) (value unknown).
  The `sb` at 0xc3c stores byte from v0 to ? (base unknown) (value ret(hexstrtol)).
  The `lbu` at 0xc64 loads byte into a3 from ? (base unknown).
  The `lbu` at 0xc78 loads byte into a3 from ? (base unknown).
  The `sb` at 0xca8 stores byte from v0 to ? (base unknown) (value ret(hexstrtol)).
  The `sb` at 0xcc0 stores byte from v0 to ? (base unknown) (value ret(hexstrtol)).
  The `lbu` at 0xcec loads byte into a1 from ? (base unknown).
  The `lbu` at 0xd00 loads byte into a1 from ? (base unknown).
  The `sb` at 0xd30 stores byte from v0 to ? (base unknown) (value ret(hexstrtol)).
  The `sb` at 0xd38 stores byte from a4 to ? (base unknown) (value 0x1).
  The `sb` at 0xd40 stores byte from a3 to ? (base unknown) (value 0xb).
  The `sb` at 0xd54 stores byte from s5 to ? (base unknown) (value 0x20).
  The `sb` at 0xd68 stores byte from s5 to ? (base unknown) (value 0x20).
  The `sb` at 0xd80 stores byte from s5 to ? (base unknown) (value 0x20).
  The `sh` at 0xd88 stores 2 bytes from zero to ? (base unknown) (value 0x0).
  The `sh` at 0xd8c stores 2 bytes from zero to ? (base unknown) (value 0x0).
  The `sb` at 0xd94 stores byte from t3 to ? (base unknown) (value 0x1).
  The `ld` at 0xdac loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `ld` at 0xdcc loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `ld` at 0xe28 loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `ld` at 0xe40 loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `ld` at 0xe64 loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `ld` at 0xe98 loads 8 bytes into a1 from sym(.srdata) +0x8.
  The `jal` at 0x704 calls `strncmp` with a0=?, a1=sym(.rodata), a2=0x2, a3=?.
  The `jal` at 0x774 calls `strncmp` with a0=?, a1=sym(.rodata), a2=0x6, a3=?.
  The `jal` at 0x7e8 calls `strncmp` with a0=?, a1=sym(.rodata), a2=0x5, a3=?.
  The `jal` at 0x840 calls `strncmp` with a0=?, a1=sym(.rodata), a2=0x6, a3=?.
  The `jal` at 0x860 calls `strncmp` with a0=?, a1=sym(.rodata), a2=0x5, a3=?.
  The `jal` at 0xc34 calls `hexstrtol` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc8c calls `hexstrtol` with a0=sp-152, a1=?, a2=?, a3=?.
  The `jal` at 0xcb8 calls `hexstrtol` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd14 calls `hexstrtol` with a0=sp-149, a1=?, a2=?, a3=?, a4=0x1.
  The `jal` at 0xda0 calls `strncmp` with a0=?, a1=sym(.rodata), a2=0x5, a3=?.
  The `jal` at 0xdc0 calls `strncmp` with a0=?, a1=sym(.rodata), a2=0x7, a3=?.
  The `jal` at 0xe10 calls `strncmp` with a0=?, a1=sym(.rodata), a2=0x9, a3=?.
  The `jal` at 0xe34 calls `strncmp` with a0=?, a1=sym(.rodata), a2=0x6, a3=?.
  The `jal` at 0xe58 calls `strncmp` with a0=?, a1=sym(.rodata), a2=0xb, a3=?.
  The `jal` at 0xe8c calls `strncmp` with a0=?, a1=sym(.rodata), a2=0x8, a3=?.
  The `jal` at 0xeb0 calls `strncmp` with a0=?, a1=sym(.rodata), a2=0x6, a3=?.
  The `beq` branch at 0x6c8 has these conditions:
    taken when a1 == 0.
    falls through when a1 != 0.
  The `beq` branch at 0x6d4 has these conditions:
    taken when a3(=[a1]:1) == 0.
    falls through when a3(=[a1]:1) != 0.
  The `beq` branch at 0x70c has these conditions:
    taken when v0(=ret(strncmp)) == 0.
    falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x71c has these conditions:
    taken when a3(?) == 0.
    falls through when a3(?) != 0.
  The `beq` branch at 0x724 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `beq` branch at 0x730 has these conditions:
    taken when a3(?) == 0.
    falls through when a3(?) != 0.
  The `beq` branch at 0x738 has these conditions:
    taken when a3(?) == 0.
    falls through when a3(?) != 0.
  The `beq` branch at 0x77c has these conditions:
    taken when v0(=ret(strncmp)) == 0.
    falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x788 has these conditions:
    taken when a3(?) == 0.
    falls through when a3(?) != 0.
  The `beq` branch at 0x790 has these conditions:
    taken when a3(?) == 0.
    falls through when a3(?) != 0.
  The `beq` branch at 0x798 has these conditions:
    taken when s2(=0x3a) == a3(?).
    falls through when s2(=0x3a) != a3(?).
  The `beq` branch at 0x7a0 has these conditions:
    taken when s1(=0x3b) == a3(?).
    falls through when s1(=0x3b) != a3(?).
  The `beq` branch at 0x7ac has these conditions:
    taken when a3(?) == 0.
    falls through when a3(?) != 0.
  The `beq` branch at 0x7b4 has these conditions:
    taken when s2(=0x3a) == a3(?).
    falls through when s2(=0x3a) != a3(?).
  The `bne` branch at 0x7bc has these conditions:
    taken when s1(=0x3b) != a3(?).
    falls through when s1(=0x3b) == a3(?).
  The `beq` branch at 0x7c4 has these conditions:
    taken when s2(=0x3a) == a3(?).
    falls through when s2(=0x3a) != a3(?).
  The `bne` branch at 0x7cc has these conditions:
    taken when s1(=0x3b) != a3(?).
    falls through when s1(=0x3b) == a3(?).
  The `bne` branch at 0x7f0 has these conditions:
    taken when v0(=ret(strncmp)) != 0.
    falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x804 has these conditions:
    taken when a3(?) == 0.
    falls through when a3(?) != 0.
  The `beq` branch at 0x80c has these conditions:
    taken when s1(=0x3b) == a3(?).
    falls through when s1(=0x3b) != a3(?).
  The `beq` branch at 0x818 has these conditions:
    taken when a3(?) == 0.
    falls through when a3(?) != 0.
  The `bne` branch at 0x820 has these conditions:
    taken when s1(=0x3b) != a3(?).
    falls through when s1(=0x3b) == a3(?).
  The `beq` branch at 0x828 has these conditions:
    taken when a3(?) == 0.
    falls through when a3(?) != 0.
  The `bnel` branch at 0x848 has these conditions:
    taken when v0(=ret(strncmp)) != 0.
    falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x850 has these conditions:
    taken when s6(?) == 0.
    falls through when s6(?) != 0.
  The `bne` branch at 0x868 has these conditions:
    taken when v0(=ret(strncmp)) != 0.
    falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x878 has these conditions:
    taken when a3(?) == 0.
    falls through when a3(?) != 0.
  The `beq` branch at 0x880 has these conditions:
    taken when s1(=0x3b) == a3(?).
    falls through when s1(=0x3b) != a3(?).
  The `blez` branch at 0x894 has these conditions:
    taken when a1(?) <= 0 (signed).
    falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x8a4 has these conditions:
    taken when a4(?) == 0.
    falls through when a4(?) != 0.
  The `bne` branch at 0x8ac has these conditions:
    taken when s1(=0x3b) != a4(?).
    falls through when s1(=0x3b) == a4(?).
  The `blez` branch at 0x8b4 has these conditions:
    taken when a1(?) <= 0 (signed).
    falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x8d0 has these conditions:
    taken when a3(?) >= a1(?) (signed).
    falls through when a3(?) < a1(?) (signed).
  The `beq` branch at 0x8e4 has these conditions:
    taken when a3(?) >= a1(?) (signed).
    falls through when a3(?) < a1(?) (signed).
  The `bne` branch at 0x8f4 has these conditions:
    taken when a3(?) < a1(?) (signed).
    falls through when a3(?) >= a1(?) (signed).
  The `beq` branch at 0x914 has these conditions:
    taken when a1(?) >= 0xe (signed).
    falls through when a1(?) < 0xe (signed).
  The `bne` branch at 0x93c has these conditions:
    taken when a7(?) < a6(?) (signed).
    falls through when a7(?) >= a6(?) (signed).
  The `beq` branch at 0x95c has these conditions:
    taken when a7(?) >= a6(?) (signed).
    falls through when a7(?) < a6(?) (signed).
  The `beq` branch at 0x964 has these conditions:
    taken when s8(?) == 0.
    falls through when s8(?) != 0.
  The `beq` branch at 0x970 has these conditions:
    taken when a6(?) == 0.
    falls through when a6(?) != 0.
  The `beq` branch at 0x978 has these conditions:
    taken when s1(=0x3b) == a6(?).
    falls through when s1(=0x3b) != a6(?).
  The `blez` branch at 0x988 has these conditions:
    taken when a5(?) <= 0 (signed).
    falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x998 has these conditions:
    taken when a6(?) == 0.
    falls through when a6(?) != 0.
  The `bne` branch at 0x9a0 has these conditions:
    taken when s1(=0x3b) != a6(?).
    falls through when s1(=0x3b) == a6(?).
  The `blez` branch at 0x9a8 has these conditions:
    taken when a5(?) <= 0 (signed).
    falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x9c4 has these conditions:
    taken when a1(?) >= a5(?) (signed).
    falls through when a1(?) < a5(?) (signed).
  The `beq` branch at 0x9d8 has these conditions:
    taken when a1(?) >= a5(?) (signed).
    falls through when a1(?) < a5(?) (signed).
  The `bne` branch at 0x9e8 has these conditions:
    taken when a1(?) < a5(?) (signed).
    falls through when a1(?) >= a5(?) (signed).
  The `beq` branch at 0x9fc has these conditions:
    taken when a7(?) == 0.
    falls through when a7(?) != 0.
  The `bne` branch at 0xa24 has these conditions:
    taken when a6(?) < a1(?) (signed).
    falls through when a6(?) >= a1(?) (signed).
  The `beq` branch at 0xa44 has these conditions:
    taken when a6(?) >= a1(?) (signed).
    falls through when a6(?) < a1(?) (signed).
  The `beq` branch at 0xa4c has these conditions:
    taken when s7(?) == 0.
    falls through when s7(?) != 0.
  The `beq` branch at 0xa58 has these conditions:
    taken when a5(?) == 0.
    falls through when a5(?) != 0.
  The `beq` branch at 0xa60 has these conditions:
    taken when s1(=0x3b) == a5(?).
    falls through when s1(=0x3b) != a5(?).
  The `blez` branch at 0xa70 has these conditions:
    taken when a3(?) <= 0 (signed).
    falls through when a3(?) > 0 (signed).
  The `beq` branch at 0xa80 has these conditions:
    taken when a5(?) == 0.
    falls through when a5(?) != 0.
  The `bne` branch at 0xa88 has these conditions:
    taken when s1(=0x3b) != a5(?).
    falls through when s1(=0x3b) == a5(?).
  The `blez` branch at 0xa90 has these conditions:
    taken when a3(?) <= 0 (signed).
    falls through when a3(?) > 0 (signed).
  The `beq` branch at 0xaac has these conditions:
    taken when a1(?) >= a3(?) (signed).
    falls through when a1(?) < a3(?) (signed).
  The `beq` branch at 0xac0 has these conditions:
    taken when a1(?) >= a3(?) (signed).
    falls through when a1(?) < a3(?) (signed).
  The `bne` branch at 0xad0 has these conditions:
    taken when a1(?) < a3(?) (signed).
    falls through when a1(?) >= a3(?) (signed).
  The `beq` branch at 0xae4 has these conditions:
    taken when a6(?) == 0.
    falls through when a6(?) != 0.
  The `bne` branch at 0xb0c has these conditions:
    taken when a5(?) < a1(?) (signed).
    falls through when a5(?) >= a1(?) (signed).
  The `beq` branch at 0xb2c has these conditions:
    taken when a5(?) >= a1(?) (signed).
    falls through when a5(?) < a1(?) (signed).
  The `beq` branch at 0xb38 has these conditions:
    taken when at(?) == 0.
    falls through when at(?) != 0.
  The `beq` branch at 0xb44 has these conditions:
    taken when a3(?) == 0.
    falls through when a3(?) != 0.
  The `beq` branch at 0xb4c has these conditions:
    taken when s1(=0x3b) == a3(?).
    falls through when s1(=0x3b) != a3(?).
  The `blez` branch at 0xb5c has these conditions:
    taken when a4(?) <= 0 (signed).
    falls through when a4(?) > 0 (signed).
  The `beq` branch at 0xb6c has these conditions:
    taken when a3(?) == 0.
    falls through when a3(?) != 0.
  The `bne` branch at 0xb74 has these conditions:
    taken when s1(=0x3b) != a3(?).
    falls through when s1(=0x3b) == a3(?).
  The `blez` branch at 0xb7c has these conditions:
    taken when a4(?) <= 0 (signed).
    falls through when a4(?) > 0 (signed).
  The `beq` branch at 0xb98 has these conditions:
    taken when a1(?) >= a4(?) (signed).
    falls through when a1(?) < a4(?) (signed).
  The `beq` branch at 0xbac has these conditions:
    taken when a1(?) >= a4(?) (signed).
    falls through when a1(?) < a4(?) (signed).
  The `bne` branch at 0xbbc has these conditions:
    taken when a1(?) < a4(?) (signed).
    falls through when a1(?) >= a4(?) (signed).
  The `beq` branch at 0xbd0 has these conditions:
    taken when a5(?) == 0.
    falls through when a5(?) != 0.
  The `bne` branch at 0xbfc has these conditions:
    taken when a3(?) < a1(?) (signed).
    falls through when a3(?) >= a1(?) (signed).
  The `beq` branch at 0xc20 has these conditions:
    taken when a3(?) >= a1(?) (signed).
    falls through when a3(?) < a1(?) (signed).
  The `beq` branch at 0xc28 has these conditions:
    taken when ra(?) == 0.
    falls through when ra(?) != 0.
  The `beq` branch at 0xc48 has these conditions:
    taken when at(?) == 0.
    falls through when at(?) != 0.
  The `beq` branch at 0xc68 has these conditions:
    taken when a3(?) == 0.
    falls through when a3(?) != 0.
  The `beq` branch at 0xc70 has these conditions:
    taken when s1(=0x3b) == a3(?).
    falls through when s1(=0x3b) != a3(?).
  The `beq` branch at 0xc7c has these conditions:
    taken when a3(?) == 0.
    falls through when a3(?) != 0.
  The `beq` branch at 0xc84 has these conditions:
    taken when s1(=0x3b) == a3(?).
    falls through when s1(=0x3b) != a3(?).
  The `bne` branch at 0xca4 has these conditions:
    taken when s6(?) < 0x4 (signed).
    falls through when s6(?) >= 0x4 (signed).
  The `beq` branch at 0xcb0 has these conditions:
    taken when a4(?) == 0.
    falls through when a4(?) != 0.
  The `beq` branch at 0xcc8 has these conditions:
    taken when a5(?) == 0.
    falls through when a5(?) != 0.
  The `beq` branch at 0xcf0 has these conditions:
    taken when a1(?) == 0.
    falls through when a1(?) != 0.
  The `beq` branch at 0xcf8 has these conditions:
    taken when s1(=0x3b) == a1(?).
    falls through when s1(=0x3b) != a1(?).
  The `beq` branch at 0xd04 has these conditions:
    taken when a1(?) == 0.
    falls through when a1(?) != 0.
  The `beq` branch at 0xd0c has these conditions:
    taken when s1(=0x3b) == a1(?).
    falls through when s1(=0x3b) != a1(?).
  The `bne` branch at 0xd2c has these conditions:
    taken when s6(?) < 0x6 (signed).
    falls through when s6(?) >= 0x6 (signed).
  The `beq` branch at 0xd58 has these conditions:
    taken when a0(?) >= 0x6 (signed).
    falls through when a0(?) < 0x6 (signed).
  The `beq` branch at 0xd6c has these conditions:
    taken when a0(?) >= 0x6 (signed).
    falls through when a0(?) < 0x6 (signed).
  The `bne` branch at 0xd7c has these conditions:
    taken when a0(?) < 0x6 (signed).
    falls through when a0(?) >= 0x6 (signed).
  The `bne` branch at 0xda8 has these conditions:
    taken when v0(=ret(strncmp)) != 0.
    falls through when v0(=ret(strncmp)) == 0.
  The `bne` branch at 0xdc8 has these conditions:
    taken when v0(=ret(strncmp)) != 0.
    falls through when v0(=ret(strncmp)) == 0.
  The `bne` branch at 0xe18 has these conditions:
    taken when v0(=ret(strncmp)) != 0.
    falls through when v0(=ret(strncmp)) == 0.
  The `bne` branch at 0xe3c has these conditions:
    taken when v0(=ret(strncmp)) != 0.
    falls through when v0(=ret(strncmp)) == 0.
  The `bne` branch at 0xe60 has these conditions:
    taken when v0(=ret(strncmp)) != 0.
    falls through when v0(=ret(strncmp)) == 0.
  The `bne` branch at 0xe94 has these conditions:
    taken when v0(=ret(strncmp)) != 0.
    falls through when v0(=ret(strncmp)) == 0.
  The `bne` branch at 0xeb8 has these conditions:
    taken when v0(=ret(strncmp)) != 0.
    falls through when v0(=ret(strncmp)) == 0.
  The return at 0xe00 has v0 = ?.


- `kona_detach` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0x1628 (n64).
  It occupies 8 bytes.
  The return at 0x1628 has v0 = ?.


- `kona_flow_init` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x0 (n64).
  It occupies 80 bytes.
  The `sw` at 0x0 stores 4 bytes from zero to a0 (arg0 at entry) +0x918 (value 0x0).
  The `sw` at 0x8 stores 4 bytes from v1 to a0 (arg0 at entry) +0x91c (value 0x300).
  The `sw` at 0x10 stores 4 bytes from v1 to a0 (arg0 at entry) +0x92c (value 0x300).
  The `ld` at 0x18 loads 8 bytes into at from a0 (arg0 at entry) +0x948.
  The `sd` at 0x3c stores 8 bytes from zero to a0 (arg0 at entry) +0x920 (value 0x0).
  The `sw` at 0x40 stores 4 bytes from zero to a0 (arg0 at entry) +0x928 (value 0x0).
  The `jal` at 0x30 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0x800210, a1=0x700, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x48 has v0 = ret(gfx_pio_write_32); f0 = ret(gfx_pio_write_32).


- `kona_flow_cleanup` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x50 (n64).
  It occupies 52 bytes.
  The `ld` at 0x50 loads 8 bytes into a1 from a0 (arg0 at entry) +0x920.
  The `sd` at 0x74 stores 8 bytes from zero to a0 (arg0 at entry) +0x920 (value 0x0).
  The `jal` at 0x68 calls `kona_untimeout` with a0=a0 at entry (arg0), a1=[a0+2336]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x60 has these conditions:
    taken when a1(=[a0+2336]:8) == 0.
    falls through when a1(=[a0+2336]:8) != 0.
  The return at 0x7c has v0 = ?.

- `kona_hiwater_timeout` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x84 (n64).
  It occupies 192 bytes.
  The `ld` at 0x84 loads 8 bytes into at from a0 (arg0 at entry) +0x920.
  The `ld` at 0x9c loads 8 bytes into a1 from a0 (arg0 at entry) +0x948.
  The `lw` at 0xb0 loads 4 bytes into a1 from a0 (arg0 at entry) +0x91c.
  The `ld` at 0xbc loads 8 bytes into a1 from sym(.srdata) +0x0.
  The `ld` at 0xc0 loads 8 bytes into a1 from a0 (arg0 at entry) +0x948.
  The `ld` at 0xd4 loads 8 bytes into a3 from sym(.srdata) +0x0.
  The `lw` at 0xe8 loads 4 bytes into a4 from a0 (arg0 at entry) +0x888.
  The `lw` at 0xf4 loads 4 bytes into a4 from a0 (arg0 at entry) +0x6c.
  The `sd` at 0xfc stores 8 bytes from zero to a0 (arg0 at entry) +0x920 (value 0x0).
  The `lw` at 0x11c loads 4 bytes into a5 from a0 (arg0 at entry) +0x50.
  The `sw` at 0x128 stores 4 bytes from a5 to a0 (arg0 at entry) +0x50 (value [a0+80]-1).
  The `jal` at 0xa8 calls `gfx_pio_read_32` with a0=[a0+2376]:8+0x800208, a1=[a0+2376]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xcc calls `gfx_pio_read_32` with a0=[a0+2376]:8+0x800208, a1=[a0+2376]:8, a2=?, a3=?.
  The `jal` at 0xec calls `cmn_err_tag` with a0=0x836, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=ret(gfx_pio_read_32).
  The `jal` at 0x104 calls `kona_die` with a0=a0 at entry (arg0), a1=0x6, a2=?, a3=?, a4=[a0+108].
  The `jal` at 0x12c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x134 calls `kona_lowater_intr` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x94 has these conditions:
    taken when at(=[a0+2336]:8) == 0.
    falls through when at(=[a0+2336]:8) != 0.
  The `beq` branch at 0xb8 has these conditions:
    taken when a1(=[a0+2332]) >= v0(=ret(gfx_pio_read_32)) (unsigned).
    falls through when a1(=[a0+2332]) < v0(=ret(gfx_pio_read_32)) (unsigned).
  The `beq` branch at 0xf8 has these conditions:
    taken when a4(=[a0+108]) == 0.
    falls through when a4(=[a0+108]) != 0.
  The return at 0x114 has v0 = ?.

- `kona_delay_monitor_gfifo` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x144 (n64).
  It occupies 164 bytes.
  The `ld` at 0x17c loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `lw` at 0x188 loads 4 bytes into a1 from a0 (arg0 at entry) +0x92c.
  The `ld` at 0x1c4 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `sw` at 0x1d4 stores 4 bytes from zero to a0 (arg0 at entry) +0x928 (value 0x0).
  The `jal` at 0x180 calls `gfx_pio_read_32` with a0=[a0+2376]:8+0x800208, a1=?, a2=?, a3=?.
  The `jal` at 0x198 calls `us_delay` with a0=0x4, a1=?, a2=?, a3=?.
  The `jal` at 0x1d8 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0x800238, a1=0x3, a2=0x800238, a3=?.
  The `beq` branch at 0x174 has these conditions:
    taken when s1(?) == 0.
    falls through when s1(?) != 0.
  The `beq` branch at 0x190 has these conditions:
    taken when a1(=[a0+2348]) >= v0(=ret(gfx_pio_read_32)) (unsigned).
    falls through when a1(=[a0+2348]) < v0(=ret(gfx_pio_read_32)) (unsigned).
  The `bne` branch at 0x1a4 has these conditions:
    taken when s1(?) != 0.
    falls through when s1(?) == 0.
  The return at 0x1bc has v0 = ?.

- `kona_diag_flow` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x5a4 (n64).
  It occupies 336 bytes.
  The `lw` at 0x5d4 loads 4 bytes into v0 from a0 (arg0 at entry) +0x87c.
  The `lw` at 0x5e8 loads 4 bytes into a1 from a0 (arg0 at entry) +0x940.
  The `ld` at 0x5f0 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `sw` at 0x600 stores 4 bytes from a1 to a0 (arg0 at entry) +0x940 (value unknown).
  The `ld` at 0x614 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `lw` at 0x61c loads 4 bytes into a1 from a0 (arg0 at entry) +0x940.
  The `sw` at 0x630 stores 4 bytes from a1 to a0 (arg0 at entry) +0x940 (value ([a0+2368] | 0x4)).
  The `ld` at 0x63c loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x654 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `sw` at 0x660 stores 4 bytes from zero to a0 (arg0 at entry) +0x938 (value 0x0).
  The `ld` at 0x66c loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `lw` at 0x678 loads 4 bytes into a1 from a0 (arg0 at entry) +0x938.
  The `ld` at 0x68c loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0x694 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x698 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `lw` at 0x69c loads 4 bytes into a1 from a0 (arg0 at entry) +0x8c8.
  The `ld` at 0x6d8 loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0x6e0 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `sw` at 0x6f0 stores 4 bytes from zero to a0 (arg0 at entry) +0x938 (value 0x0).
  The `jal` at 0x604 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0x800230, a1=?, a2=0x800230, a3=-0x8.
  The `jal` at 0x62c calls `gfx_pio_write_32` with a0=[a0+2376]:8+0x800230, a1=([a0+2368] | 0x4), a2=0x800230, a3=a3 at entry (arg3).
  The `jal` at 0x638 calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x640 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x650 calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x664 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x67c calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=0xc00108, a3=?.
  The `jal` at 0x690 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x6a8 calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x6b0 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6bc calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6c4 calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x6cc calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6dc calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x6e4 calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x5b4 has these conditions:
    taken when a1 == at(=0x1).
    falls through when a1 != at(=0x1).
  The `beq` branch at 0x5bc has these conditions:
    taken when a1 == 0.
    falls through when a1 != 0.
  The `beq` branch at 0x5d8 has these conditions:
    taken when v0(=[a0+2172]) == 0.
    falls through when v0(=[a0+2172]) != 0.
  The `beq` branch at 0x658 has these conditions:
    taken when v0(=ret(gfx_flow_am_i_attached)) == 0.
    falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The return at 0x5cc has v0 = one of 0x0, 0xd, 0x16.

- `kona_diag_credits` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x6f4 (n64).
  It occupies 96 bytes.
  The `ld` at 0x710 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `sw` at 0x714 stores 4 bytes from v0 to a1 (arg1 at entry) +0x0 (value ret(gfx_flow_credit_total_get)).
  The `ld` at 0x71c loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `sw` at 0x720 stores 4 bytes from v0 to a1 (arg1 at entry) +0x4 (value ret(gfx_flow_credit_bias_get)).
  The `ld` at 0x728 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `sw` at 0x734 stores 4 bytes from v0 to a1 (arg1 at entry) +0x8 (value ret(gfx_flow_credit_count_get)).
  The `sw` at 0x744 stores 4 bytes from at to a1 (arg1 at entry) +0xc (value 0x186a0).
  The `jal` at 0x70c calls `gfx_flow_credit_total_get` with a0=[a0+2272]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x718 calls `gfx_flow_credit_bias_get` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x724 calls `gfx_flow_credit_count_get` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The return at 0x74c has v0 = 0x0; f0 = ret(gfx_flow_credit_count_get).

- `kona_flow_await_returned_credits` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x754 (n64).
  It occupies 484 bytes.
  The `ld` at 0x760 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x778 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `lw` at 0x78c loads 4 bytes into v0 from a0 (arg0 at entry) +0x928.
  The `lw` at 0x798 loads 4 bytes into v1 from a0 (arg0 at entry) +0x87c.
  The `ld` at 0x7a4 loads 8 bytes into a0 from a0 (arg0 at entry) +0x48.
  The `lw` at 0x7a8 loads 4 bytes into a0 from [a0+72]:8 +0x4.
  The `ld` at 0x7c8 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x7e4 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x7f0 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x814 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `ld` at 0x82c loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `ld` at 0x838 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `ld` at 0x848 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `ld` at 0x860 loads 8 bytes into s1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0x86c loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x874 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x880 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x890 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x894 loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0x89c loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x8a0 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `lw` at 0x8a4 loads 4 bytes into a1 from a0 (arg0 at entry) +0x8c8.
  The `ld` at 0x8b8 loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0x8c0 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0x8e4 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `lw` at 0x8f8 loads 4 bytes into a2 from a0 (arg0 at entry) +0x91c.
  The `ld` at 0x910 loads 8 bytes into a3 from a0 (arg0 at entry) +0x910.
  The `sd` at 0x924 stores 8 bytes from v0 to a0 (arg0 at entry) +0x910 (value ret(curproc)).
  The `jal` at 0x768 calls `gfx_flow_credit_bias_get` with a0=[a0+2272]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x774 calls `gfx_flow_credit_count_get` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7c0 calls `us_delay` with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x7cc calls `gfx_flow_credit_count_get` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7e0 calls `gfx_flow_credit_count_get` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7ec calls `gfx_flow_credit_total_get` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x804 calls `kona_die` with a0=a0 at entry (arg0), a1=0x19, a2=?, a3=?.
  The `jal` at 0x80c calls `kona_reset_adaptor` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x824 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0x800300, a1=0x1, a2=?, a3=?.
  The `jal` at 0x830 calls `gfx_pio_read_32` with a0=[a0+2376]:8+0x800300, a1=?, a2=?, a3=?.
  The `jal` at 0x840 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0x800300, a1=0x0, a2=?, a3=?.
  The `jal` at 0x84c calls `gfx_pio_read_32` with a0=[a0+2376]:8+0x800300, a1=?, a2=?, a3=?.
  The `jal` at 0x854 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x868 calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x870 calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x884 calls `gfx_flow_detach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x88c calls `gfx_flow_reset` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x898 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x8b0 calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x8bc calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x8c4 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x8f0 calls `gfx_pio_read_32` with a0=[a0+2376]:8+0x800208, a1=0x800208, a2=?, a3=?.
  The `jal` at 0x908 calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x91c calls `curproc` with a0=?, a1=?, a2=?, a3=[a0+2320]:8.
  The `jal` at 0x928 calls `force_resched` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x780 has these conditions:
    taken when v0(=ret(gfx_flow_credit_count_get)) >= s2(=ret(gfx_flow_credit_bias_get)) (unsigned).
    falls through when v0(=ret(gfx_flow_credit_count_get)) < s2(=ret(gfx_flow_credit_bias_get)) (unsigned).
  The `bne` branch at 0x790 has these conditions:
    taken when v0(=[a0+2344]) != 0.
    falls through when v0(=[a0+2344]) == 0.
  The `beq` branch at 0x79c has these conditions:
    taken when v1(=[a0+2172]) == 0.
    falls through when v1(=[a0+2172]) != 0.
  The `bne` branch at 0x7b0 has these conditions:
    taken when (a0(=[[a0+72]:8+4]) & 0x4) != 0.
    falls through when (a0(=[[a0+72]:8+4]) & 0x4) == 0.
  The `blez` branch at 0x7b8 has these conditions:
    taken when s1(?) <= 0 (signed).
    falls through when s1(?) > 0 (signed).
  The `bne` branch at 0x7d8 has these conditions:
    taken when v0(=ret(gfx_flow_credit_count_get)) < s2(=ret(gfx_flow_credit_bias_get)) (unsigned).
    falls through when v0(=ret(gfx_flow_credit_count_get)) >= s2(=ret(gfx_flow_credit_bias_get)) (unsigned).
  The `beq` branch at 0x7f8 has these conditions:
    taken when v0(=ret(gfx_flow_credit_total_get)) >= s1(=ret(gfx_flow_credit_count_get)) (unsigned).
    falls through when v0(=ret(gfx_flow_credit_total_get)) < s1(=ret(gfx_flow_credit_count_get)) (unsigned).
  The `beq` branch at 0x878 has these conditions:
    taken when v0(=ret(gfx_flow_am_i_attached)) == 0.
    falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x900 has these conditions:
    taken when a2(=[a0+2332]) >= v0(=ret(gfx_pio_read_32)) (unsigned).
    falls through when a2(=[a0+2332]) < v0(=ret(gfx_pio_read_32)) (unsigned).
  The `beq` branch at 0x914 has these conditions:
    taken when a3(=[a0+2320]:8) == v0(=ret(curproc)).
    falls through when a3(=[a0+2320]:8) != v0(=ret(curproc)).
  The return at 0x8dc has v0 = ?.

- `kona_mem_suspend` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0xa78 (n64).
  It occupies 16 bytes.
  The `ld` at 0xa78 loads 8 bytes into at from a1 (arg1 at entry) +0x68.
  The `sw` at 0xa84 stores 4 bytes from at to a0 (arg0 at entry) +0x13f8 (value unknown).
  The return at 0xa80 has v0 = ?.

- `kona_mem_resume` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0xa88 (n64).
  It occupies 704 bytes.
  The `lw` at 0xa88 loads 4 bytes into at from a0 (arg0 at entry) +0x13f8.
  The `lw` at 0xaa0 loads 4 bytes into v0 from a0 (arg0 at entry) +0x87c.
  The `sw` at 0xaac stores 4 bytes from zero to a0 (arg0 at entry) +0x13f8 (value 0x0).
  The `ld` at 0xac8 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `lw` at 0xacc loads 4 bytes into v1 from a0 (arg0 at entry) +0x13f8.
  The `ld` at 0xaf0 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `sw` at 0xafc stores 4 bytes from a1 to a0 (arg0 at entry) +0x938 (value 0x30000).
  The `ld` at 0xb08 loads 8 bytes into a2 from a0 (arg0 at entry) +0x948.
  The `lw` at 0xb14 loads 4 bytes into a1 from a0 (arg0 at entry) +0x938.
  The `ld` at 0xb28 loads 8 bytes into a0 from a0 (arg0 at entry) +0x900.
  The `ld` at 0xb34 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0xb4c loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `sw` at 0xb58 stores 4 bytes from a2 to a0 (arg0 at entry) +0x938 (value 0x10000).
  The `ld` at 0xb64 loads 8 bytes into a2 from a0 (arg0 at entry) +0x948.
  The `lw` at 0xb70 loads 4 bytes into a1 from a0 (arg0 at entry) +0x938.
  The `ld` at 0xb90 loads 8 bytes into a0 from a0 (arg0 at entry) +0x900.
  The `lw` at 0xb9c loads 4 bytes into a1 from ? (base unknown).
  The `ld` at 0xbc0 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0xbd8 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `sw` at 0xbe4 stores 4 bytes from zero to a0 (arg0 at entry) +0x938 (value 0x0).
  The `ld` at 0xbf0 loads 8 bytes into a2 from a0 (arg0 at entry) +0x948.
  The `lw` at 0xbfc loads 4 bytes into a1 from a0 (arg0 at entry) +0x938.
  The `ld` at 0xc10 loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0xc18 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0xc1c loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `lw` at 0xc20 loads 4 bytes into a1 from a0 (arg0 at entry) +0x8c8.
  The `ld` at 0xc5c loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0xc64 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0xc78 loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0xc80 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0xc84 loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `lw` at 0xc88 loads 4 bytes into a1 from a0 (arg0 at entry) +0x8c8.
  The `ld` at 0xcc4 loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0xccc loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0xce0 loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0xce8 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `ld` at 0xcec loads 8 bytes into a0 from a0 (arg0 at entry) +0x948.
  The `lw` at 0xcf0 loads 4 bytes into a1 from a0 (arg0 at entry) +0x8c8.
  The `ld` at 0xd2c loads 8 bytes into a1 from a0 (arg0 at entry) +0x48.
  The `ld` at 0xd34 loads 8 bytes into a0 from a0 (arg0 at entry) +0x8e0.
  The `sw` at 0xd44 stores 4 bytes from zero to a0 (arg0 at entry) +0x938 (value 0x0).
  The `jal` at 0xac0 calls `psema` with a0=a0+5152, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xad4 calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xadc calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xaec calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb00 calls `splx` with a0=?, a1=0x30000, a2=?, a3=?.
  The `jal` at 0xb18 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=[a0+2376]:8, a3=?.
  The `jal` at 0xb24 calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=0x1de, a2=?, a3=?.
  The `jal` at 0xb30 calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xb38 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb48 calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb5c calls `splx` with a0=?, a1=?, a2=0x10000, a3=?.
  The `jal` at 0xb74 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=[a0+2376]:8, a3=?.
  The `jal` at 0xb98 calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xbbc calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xbc4 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbd4 calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xbe8 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc00 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=[a0+2376]:8, a3=?.
  The `jal` at 0xc14 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xc2c calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xc34 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc40 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc48 calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xc50 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc60 calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xc68 calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc7c calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=0x10000, a3=?.
  The `jal` at 0xc94 calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xc9c calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xca8 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcb0 calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xcb8 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcc8 calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xcd0 calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xce4 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xcfc calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xd04 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd10 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd18 calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xd20 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd30 calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xd38 calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xa98 has these conditions:
    taken when at(=[a0+5112]) < 0x2 (signed).
    falls through when at(=[a0+5112]) >= 0x2 (signed).
  The `beq` branch at 0xaa4 has these conditions:
    taken when v0(=[a0+2172]) == 0.
    falls through when v0(=[a0+2172]) != 0.
  The `beq` branch at 0xaf4 has these conditions:
    taken when v0(=ret(gfx_flow_am_i_attached)) == 0.
    falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0xb50 has these conditions:
    taken when v0(=ret(gfx_flow_am_i_attached)) == 0.
    falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `blez` branch at 0xb80 has these conditions:
    taken when a1(?) <= 0 (signed).
    falls through when a1(?) > 0 (signed).
  The `beq` branch at 0xbac has these conditions:
    taken when a2(?) >= s1(?) (signed).
    falls through when a2(?) < s1(?) (signed).
  The `beq` branch at 0xbdc has these conditions:
    taken when v0(=ret(gfx_flow_am_i_attached)) == 0.
    falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The return at 0xab4 has v0 = ?.

- `kona_mem_cleanup` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0xfe8 (n64).
  It occupies 332 bytes.
  The `ld` at 0x101c loads 8 bytes into s1 from a0 (arg0 at entry) +0x13f0.
  The `sd` at 0x1020 stores 8 bytes from zero to a0 (arg0 at entry) +0x13f0 (value 0x0).
  The `ld` at 0x1040 loads 8 bytes into a4 from ? (base unknown).
  The `lw` at 0x1044 loads 4 bytes into a4 from ? (base unknown).
  The `ld` at 0x1058 loads 8 bytes into s1 from ? (base unknown).
  The `sd` at 0x105c stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sb` at 0x1064 stores byte from s3 to ? (base unknown) (value 0xdb).
  The `lbu` at 0x1068 loads byte into a5 from ? (base unknown).
  The `lhu` at 0x106c loads 2 bytes into a4 from ? (base unknown).
  The `lbu` at 0x1088 loads byte into a0 from ? (base unknown).
  The `ld` at 0x109c loads 8 bytes into a1 from ? (base unknown).
  The `lw` at 0x10a4 loads 4 bytes into a0 from a0 (arg0 at entry) +0x888.
  The `sd` at 0x10a8 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `ld` at 0x10ac loads 8 bytes into s1 from ? (base unknown).
  The `sd` at 0x10b0 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sb` at 0x10b8 stores byte from s3 to ? (base unknown) (value 0xdb).
  The `ld` at 0x10e0 loads 8 bytes into a3 from ? (base unknown).
  The `lw` at 0x10e4 loads 4 bytes into a5 from ? (base unknown).
  The `lw` at 0x10e8 loads 4 bytes into a3 from ? (base unknown).
  The `ld` at 0x110c loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1118 loads 8 bytes into a1 from ? (base unknown).
  The `sw` at 0x111c stores 4 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0x1120 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `lw` at 0x1128 loads 4 bytes into a0 from a0 (arg0 at entry) +0x888.
  The `sd` at 0x1130 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `jal` at 0x1010 calls `mutex_spinlock` with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1024 calls `mutex_spinunlock` with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x10a0 calls `free_gfx_io_space` with a0=[a0+2184], a1=?, a2=?, a3=?.
  The `jal` at 0x1110 calls `kvpfree` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1124 calls `free_gfx_io_space` with a0=[a0+2184], a1=?, a2=?, a3=?.
  The `beq` branch at 0x102c has these conditions:
    taken when s1(=[a0+5104]:8) == 0.
    falls through when s1(=[a0+5104]:8) != 0.
  The `beq` branch at 0x1048 has these conditions:
    taken when a0(?) == s4(=0x2).
    falls through when a0(?) != s4(=0x2).
  The `beq` branch at 0x1050 has these conditions:
    taken when a0(?) == s5(=0x1).
    falls through when a0(?) != s5(=0x1).
  The `beq` branch at 0x1060 has these conditions:
    taken when s1(?) == 0.
    falls through when s1(?) != 0.
  The `bne` branch at 0x108c has these conditions:
    taken when (a4(?) & 0x1) != 0.
    falls through when (a4(?) & 0x1) == 0.
  The `bne` branch at 0x10b4 has these conditions:
    taken when s1(?) != 0.
    falls through when s1(?) == 0.
  The return at 0x10d8 has v0 = ?.

- `kona_mem_swapout` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1134 (n64).
  It occupies 428 bytes.
  The `ld` at 0x1134 loads 8 bytes into v0 from a1 (arg1 at entry) +0x0.
  The `lw` at 0x1140 loads 4 bytes into s7 from sym(kona_mem_serialize) +0x0.
  The `lhu` at 0x1150 loads 2 bytes into at from a2 (arg2 at entry) +0x6.
  The `lw` at 0x117c loads 4 bytes into s2 from [a1]:8 +0x8.
  The `lw` at 0x1180 loads 4 bytes into v1 from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1184 loads 4 bytes into a1 from [a1]:8 +0x14.
  The `lw` at 0x119c loads 4 bytes into v0 from a1 (arg1 at entry) +0x8.
  The `sw` at 0x11b0 stores 4 bytes from v0 to a1 (arg1 at entry) +0x8 (value unknown).
  The `sd` at 0x11e4 stores 8 bytes from v0 to a2 (arg2 at entry) +0x10 (value ret(kvpalloc)).
  The `lw` at 0x11e8 loads 4 bytes into a0 from a0 (arg0 at entry) +0x888.
  The `sd` at 0x11f4 stores 8 bytes from v0 to a2 (arg2 at entry) +0x18 (value ret(alloc_gfx_io_space)).
  The `lw` at 0x11fc loads 4 bytes into a1 from a2 (arg2 at entry) +0x8.
  The `sw` at 0x1200 stores 4 bytes from a1 to a2 (arg2 at entry) +0x20 (value [a2+8]).
  The `ld` at 0x120c loads 8 bytes into a0 from a0 (arg0 at entry) +0x13d0.
  The `sd` at 0x1218 stores 8 bytes from s0 to [a0+5072]:8 +0x38 (value a2).
  The `sd` at 0x121c stores 8 bytes from s0 to a0 (arg0 at entry) +0x13d0 (value a2).
  The `ld` at 0x1228 loads 8 bytes into a0 from sym(.srdata) +0x10.
  The `lwu` at 0x122c loads 4 bytes into a2 from sym(kona_mem_timeout_value) +0x0.
  The `ld` at 0x1238 loads 8 bytes into a3 from sym(.srdata) +0x8.
  The `lw` at 0x1254 loads 4 bytes into a3 from a2 (arg2 at entry) +0x20.
  The `lw` at 0x1258 loads 4 bytes into a2 from a2 (arg2 at entry) +0xc.
  The `sd` at 0x125c stores 8 bytes from v0 to a2 (arg2 at entry) +0x58 (value ret(kona_timeout)).
  The `ld` at 0x1264 loads 8 bytes into a4 from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1268 loads 8 bytes into a6 from a2 (arg2 at entry) +0x18.
  The `lw` at 0x1274 loads 4 bytes into a4 from [a1]:8 +0x14.
  The `ld` at 0x1280 loads 8 bytes into t0 from a2 (arg2 at entry) +0x28.
  The `lbu` at 0x1284 loads byte into a7 from [a2+40]:8 +0x0.
  The `sb` at 0x128c stores byte from a7 to [a2+40]:8 +0x0 (value [[a2+40]:8]:1+1).
  The `sb` at 0x1298 stores byte from a6 to a2 (arg2 at entry) +0x2 (value 0x1).
  The `sd` at 0x12dc stores 8 bytes from s0 to a0 (arg0 at entry) +0x13d8 (value a2).
  The `jal` at 0x11b4 calls `psema` with a0=a2+72, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11bc calls `kona_mem_cleanup` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x11d4 calls `kvpalloc` with a0=?, a1=0x80000, a2=0x0, a3=?.
  The `jal` at 0x11ec calls `alloc_gfx_io_space` with a0=[a0+2184], a1=ret(kvpalloc), a2=?, a3=0xe.
  The `jal` at 0x1204 calls `mutex_spinlock` with a0=a0+2576, a1=[a2+8], a2=?, a3=?.
  The `jal` at 0x1220 calls `mutex_spinunlock` with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x123c calls `kona_timeout` with a0=sym(kona_mem_swapout_complete), a1=a0 at entry (arg0), a2=[sym(kona_mem_timeout_value)], a3=sym(splhi), a4=0x1, a5=a2 at entry (arg2).
  The `jal` at 0x1278 calls `kona_mem_swapout_func` with a0=a0 at entry (arg0), a1=?, a2=[a2+12], a3=[a2+32], a4=[[a1]:8+20], a6=[a2+24]:8.
  The `jal` at 0x12a0 calls `psema` with a0=a2+72, a1=0x19, a2=?, a3=?, a6=0x1, a7=[[a2+40]:8]:1+1.
  The `jal` at 0x12a8 calls `vsema` with a0=a2+72, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1174 has these conditions:
    taken when (at(=[a2+6]:2) & 0x1) == 0.
    falls through when (at(=[a2+6]:2) & 0x1) != 0.
  The `beq` branch at 0x1210 has these conditions:
    taken when a0(=[a0+5072]:8) == 0.
    falls through when a0(=[a0+5072]:8) != 0.
  The `beq` branch at 0x1294 has these conditions:
    taken when s7(=[sym(kona_mem_serialize)]) == 0.
    falls through when s7(=[sym(kona_mem_serialize)]) != 0.
  The return at 0x12d0 has v0 = ?.

- `kona_mem_compress` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x12e0 (n64).
  It occupies 200 bytes.
  The `ld` at 0x12f0 loads 8 bytes into s1 from a1 (arg1 at entry) +0x10.
  The `lbu` at 0x1318 loads byte into a3 from [a1+16]:8 +0x4.
  The `lw` at 0x1330 loads 4 bytes into a4 from ? (base unknown).
  The `lw` at 0x133c loads 4 bytes into a4 from ? (base unknown).
  The `sw` at 0x1340 stores 4 bytes from s0 to ? (base unknown) (value unknown).
  The `ld` at 0x1348 loads 8 bytes into s1 from ? (base unknown).
  The `lbu` at 0x1354 loads byte into a3 from ? (base unknown).
  The `lw` at 0x1360 loads 4 bytes into a2 from ? (base unknown).
  The `ld` at 0x1380 loads 8 bytes into s1 from ? (base unknown).
  The `jal` at 0x1334 calls `kona_mem_copydown_func` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1308 has these conditions:
    taken when s1(=[a1+16]:8) == 0.
    falls through when s1(=[a1+16]:8) != 0.
  The `beq` branch at 0x134c has these conditions:
    taken when s1(?) == 0.
    falls through when s1(?) != 0.
  The `beq` branch at 0x1364 has these conditions:
    taken when v0(?) == 0.
    falls through when v0(?) != 0.
  The `bne` branch at 0x1374 has these conditions:
    taken when a2(?) != s0(?).
    falls through when a2(?) == s0(?).
  The `bne` branch at 0x1384 has these conditions:
    taken when s1(?) != 0.
    falls through when s1(?) == 0.
  The return at 0x13a0 has v0 = ?.

- `kona_mem_grow` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x13a8 (n64).
  It occupies 280 bytes.
  The `ld` at 0x13a8 loads 8 bytes into a6 from a2 (arg2 at entry) +0x30.
  The `lw` at 0x13ac loads 4 bytes into t8 from a2 (arg2 at entry) +0xc.
  The `ld` at 0x13b0 loads 8 bytes into at from a1 (arg1 at entry) +0x0.
  The `lw` at 0x13bc loads 4 bytes into s4 from a2 (arg2 at entry) +0x8.
  The `lw` at 0x13c0 loads 4 bytes into at from [a1]:8 +0x18.
  The `ld` at 0x1408 loads 8 bytes into a1 from a1 (arg1 at entry) +0x0.
  The `lw` at 0x140c loads 4 bytes into a1 from [a1]:8 +0x18.
  The `ld` at 0x1420 loads 8 bytes into a4 from [a2+48]:8 +0x30.
  The `sd` at 0x1428 stores 8 bytes from a4 to a2 (arg2 at entry) +0x30 (value [[a2+48]:8+48]:8).
  The `sd` at 0x1434 stores 8 bytes from zero to [a2+48]:8 +0x30 (value 0x0).
  The `ld` at 0x1438 loads 8 bytes into a2 from a2 (arg2 at entry) +0x30.
  The `lw` at 0x1448 loads 4 bytes into a1 from [a2+48]:8 +0xc.
  The `lw` at 0x144c loads 4 bytes into a5 from a1 (arg1 at entry) +0x8.
  The `sw` at 0x1454 stores 4 bytes from a5 to a1 (arg1 at entry) +0x8 (value (a3 + [a1+8])).
  The `lw` at 0x1464 loads 4 bytes into a6 from a2 (arg2 at entry) +0x8.
  The `sw` at 0x1470 stores 4 bytes from a6 to a2 (arg2 at entry) +0x8 (value (a3 + [a2+8])).
  The `ld` at 0x1484 loads 8 bytes into a2 from a1 (arg1 at entry) +0x10.
  The `ld` at 0x1494 loads 8 bytes into a2 from ? (base unknown).
  The `sd` at 0x14a8 stores 8 bytes from a6 to ? (base unknown) (value [a2+48]:8).
  The `sd` at 0x14ac stores 8 bytes from zero to a2 (arg2 at entry) +0x30 (value 0x0).
  The `jal` at 0x1430 calls `kona_mem_swapout` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a2+48]:8, a3=?, a4=[[a2+48]:8+48]:8.
  The `jal` at 0x14b0 calls `kona_mem_swapout` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[a2+48]:8.
  The `bne` branch at 0x13f4 has these conditions:
    taken when at(?) < a3 (unsigned).
    falls through when at(?) >= a3 (unsigned).
  The `bne` branch at 0x1400 has these conditions:
    taken when a6(=[a2+48]:8) != 0.
    falls through when a6(=[a2+48]:8) == 0.
  The `beq` branch at 0x1418 has these conditions:
    taken when a3(?) >= s2(=a3) (unsigned).
    falls through when a3(?) < s2(=a3) (unsigned).
  The `beq` branch at 0x143c has these conditions:
    taken when a2(=[a2+48]:8) == 0.
    falls through when a2(=[a2+48]:8) != 0.
  The `beq` branch at 0x1488 has these conditions:
    taken when s0(=a2) == a2(=[a1+16]:8).
    falls through when s0(=a2) != a2(=[a1+16]:8).
  The `bne` branch at 0x1498 has these conditions:
    taken when s0(=a2) != a2(?).
    falls through when s0(=a2) == a2(?).
  The return at 0x147c has v0 = ?.

- `kona_mem_reserve` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x14c0 (n64).
  It occupies 608 bytes.
  The `lw` at 0x14c0 loads 4 bytes into t0 from a4 (arg4 at entry) +0x8.
  The `ld` at 0x14e4 loads 8 bytes into at from a1 (arg1 at entry) +0x10.
  The `ld` at 0x150c loads 8 bytes into a1 from a1 (arg1 at entry) +0x0.
  The `lw` at 0x1510 loads 4 bytes into a2 from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1514 loads 4 bytes into a1 from [a1]:8 +0x18.
  The `ld` at 0x1534 loads 8 bytes into a7 from ? (base unknown).
  The `ld` at 0x1548 loads 8 bytes into v0 from ? (base unknown).
  The `ld` at 0x155c loads 8 bytes into a2 from ? (base unknown).
  The `sd` at 0x1568 stores 8 bytes from a2 to ? (base unknown) (value unknown).
  The `sd` at 0x156c stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `ld` at 0x1578 loads 8 bytes into a7 from ? (base unknown).
  The `ld` at 0x1584 loads 8 bytes into a1 from a1 (arg1 at entry) +0x0.
  The `lw` at 0x1588 loads 4 bytes into a2 from a1 (arg1 at entry) +0x8.
  The `lw` at 0x158c loads 4 bytes into a1 from [a1]:8 +0x18.
  The `lw` at 0x1590 loads 4 bytes into t0 from a4 (arg4 at entry) +0x8.
  The `ld` at 0x15a8 loads 8 bytes into v0 from a1 (arg1 at entry) +0x10.
  The `lw` at 0x15ac loads 4 bytes into t0 from a4 (arg4 at entry) +0x8.
  The `ld` at 0x15b0 loads 8 bytes into v0 from a1 (arg1 at entry) +0x10.
  The `lw` at 0x15bc loads 4 bytes into a0 from [a1+16]:8 +0xc.
  The `lbu` at 0x15d8 loads byte into a2 from a4 (arg4 at entry) +0x4.
  The `lw` at 0x15e0 loads 4 bytes into a5 from ? (base unknown).
  The `lw` at 0x15f4 loads 4 bytes into a5 from ? (base unknown).
  The `lw` at 0x15f8 loads 4 bytes into a4 from ? (base unknown).
  The `ld` at 0x161c loads 8 bytes into v0 from ? (base unknown).
  The `lw` at 0x162c loads 4 bytes into a0 from ? (base unknown).
  The `sd` at 0x1644 stores 8 bytes from v0 to a4 (arg4 at entry) +0x30 (value unknown).
  The `sd` at 0x164c stores 8 bytes from s1 to ? (base unknown) (value a4).
  The `sd` at 0x1650 stores 8 bytes from v0 to a4 (arg4 at entry) +0x30 (value [a1+16]:8).
  The `sd` at 0x1654 stores 8 bytes from s1 to a1 (arg1 at entry) +0x10 (value a4).
  The `lw` at 0x1658 loads 4 bytes into a5 from a4 (arg4 at entry) +0x8.
  The `lw` at 0x165c loads 4 bytes into a4 from a1 (arg1 at entry) +0x8.
  The `sw` at 0x1664 stores 4 bytes from a4 to a1 (arg1 at entry) +0x8 (value ([a1+8] + [a4+8])).
  The `sw` at 0x166c stores 4 bytes from a1 to a4 (arg4 at entry) +0xc (value unknown).
  The `ld` at 0x16a0 loads 8 bytes into a7 from a1 (arg1 at entry) +0x10.
  The `ld` at 0x16ac loads 8 bytes into a6 from [a1+16]:8 +0x30.
  The `sd` at 0x16b8 stores 8 bytes from a6 to a1 (arg1 at entry) +0x10 (value [[a1+16]:8+48]:8).
  The `sd` at 0x16c4 stores 8 bytes from zero to [a1+16]:8 +0x30 (value 0x0).
  The `ld` at 0x16c8 loads 8 bytes into a7 from a1 (arg1 at entry) +0x10.
  The `ld` at 0x16dc loads 8 bytes into a0 from a1 (arg1 at entry) +0x0.
  The `lw` at 0x16e4 loads 4 bytes into a0 from [a1]:8 +0x18.
  The `ld` at 0x16e8 loads 8 bytes into a0 from a1 (arg1 at entry) +0x0.
  The `lw` at 0x16f0 loads 4 bytes into a0 from [a1]:8 +0x18.
  The `ld` at 0x16f4 loads 8 bytes into a1 from a1 (arg1 at entry) +0x0.
  The `lw` at 0x16f8 loads 4 bytes into a1 from [a1]:8 +0x10.
  The `lbu` at 0x1710 loads byte into a2 from a4 (arg4 at entry) +0x4.
  The `lw` at 0x1714 loads 4 bytes into t0 from a4 (arg4 at entry) +0x8.
  The `jal` at 0x1570 calls `kona_mem_swapout` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x16c0 calls `kona_mem_swapout` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?, a6=[[a1+16]:8+48]:8, a7=[a1+16]:8.
  The `jal` at 0x1704 calls `kona_mem_compress` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x1504 has these conditions:
    taken when at(=[a1+16]:8) == 0.
    falls through when at(=[a1+16]:8) != 0.
  The `bne` branch at 0x1520 has these conditions:
    taken when a1(?) < t0(=[a4+8]) (unsigned).
    falls through when a1(?) >= t0(=[a4+8]) (unsigned).
  The `beq` branch at 0x1538 has these conditions:
    taken when a7(?) == 0.
    falls through when a7(?) != 0.
  The `beq` branch at 0x1540 has these conditions:
    taken when a1(?) == 0.
    falls through when a1(?) != 0.
  The `beq` branch at 0x154c has these conditions:
    taken when v0(?) == s3(=a2).
    falls through when v0(?) != s3(=a2).
  The `beq` branch at 0x1554 has these conditions:
    taken when v0(?) == s5(=a3).
    falls through when v0(?) != s5(=a3).
  The `beq` branch at 0x157c has these conditions:
    taken when a7(?) == 0.
    falls through when a7(?) != 0.
  The `bne` branch at 0x159c has these conditions:
    taken when a1(?) < t0(=[a4+8]) (unsigned).
    falls through when a1(?) >= t0(=[a4+8]) (unsigned).
  The `beq` branch at 0x15b4 has these conditions:
    taken when v0(=[a1+16]:8) == 0.
    falls through when v0(=[a1+16]:8) != 0.
  The `beq` branch at 0x15c8 has these conditions:
    taken when a0(?) >= t0(=[a4+8]) (unsigned).
    falls through when a0(?) < t0(=[a4+8]) (unsigned).
  The `beq` branch at 0x15d0 has these conditions:
    taken when v0(=[a1+16]:8) == 0.
    falls through when v0(=[a1+16]:8) != 0.
  The `beq` branch at 0x15e4 has these conditions:
    taken when t0(=[a4+8]) == 0.
    falls through when t0(=[a4+8]) != 0.
  The `beq` branch at 0x15ec has these conditions:
    taken when v0(?) == 0.
    falls through when v0(?) != 0.
  The `beq` branch at 0x1624 has these conditions:
    taken when v0(?) == 0.
    falls through when v0(?) != 0.
  The `bltz` branch at 0x1634 has these conditions:
    taken when a3(?) < 0 (signed).
    falls through when a3(?) >= 0 (signed).
  The `bne` branch at 0x163c has these conditions:
    taken when a3(?) != 0.
    falls through when a3(?) == 0.
  The `beq` branch at 0x1698 has these conditions:
    taken when s2(?) == 0.
    falls through when s2(?) != 0.
  The `beq` branch at 0x16a4 has these conditions:
    taken when a7(=[a1+16]:8) == 0.
    falls through when a7(=[a1+16]:8) != 0.
  The `bne` branch at 0x16cc has these conditions:
    taken when a7(=[a1+16]:8) != 0.
    falls through when a7(=[a1+16]:8) == 0.
  The `beq` branch at 0x16fc has these conditions:
    taken when a1(=[[a1]:8+16]) == 0.
    falls through when a1(=[[a1]:8+16]) != 0.
  The return at 0x168c has v0 = one of 0x0, 0x1.

- `kona_mem_swapin` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1a28 (n64).
  It occupies 376 bytes.
  The `lw` at 0x1a28 loads 4 bytes into a5 from a2 (arg2 at entry) +0x20.
  The `lw` at 0x1a2c loads 4 bytes into a7 from sym(kona_mem_serialize) +0x0.
  The `lhu` at 0x1a38 loads 2 bytes into at from a2 (arg2 at entry) +0x6.
  The `ld` at 0x1a40 loads 8 bytes into a6 from a1 (arg1 at entry) +0x0.
  The `lw` at 0x1a5c loads 4 bytes into v0 from [a1]:8 +0x14.
  The `lw` at 0x1a60 loads 4 bytes into s2 from [a1]:8 +0x8.
  The `ld` at 0x1aac loads 8 bytes into a1 from a2 (arg2 at entry) +0x10.
  The `lw` at 0x1abc loads 4 bytes into a0 from a0 (arg0 at entry) +0x888.
  The `sd` at 0x1ac0 stores 8 bytes from v0 to a2 (arg2 at entry) +0x18 (value ret(alloc_gfx_io_space)).
  The `ld` at 0x1ad0 loads 8 bytes into a2 from a0 (arg0 at entry) +0x13e0.
  The `sd` at 0x1ae0 stores 8 bytes from s0 to [a0+5088]:8 +0x38 (value a2).
  The `sd` at 0x1ae8 stores 8 bytes from s0 to a0 (arg0 at entry) +0x13e0 (value a2).
  The `ld` at 0x1aec loads 8 bytes into a0 from sym(.srdata) +0x20.
  The `lwu` at 0x1af0 loads 4 bytes into a2 from sym(kona_mem_timeout_value) +0x0.
  The `ld` at 0x1afc loads 8 bytes into a3 from sym(.srdata) +0x8.
  The `ld` at 0x1b1c loads 8 bytes into a7 from a2 (arg2 at entry) +0x10.
  The `lw` at 0x1b20 loads 4 bytes into a3 from a2 (arg2 at entry) +0x20.
  The `lw` at 0x1b24 loads 4 bytes into a2 from a2 (arg2 at entry) +0xc.
  The `sd` at 0x1b28 stores 8 bytes from v0 to a2 (arg2 at entry) +0x58 (value ret(kona_timeout)).
  The `ld` at 0x1b30 loads 8 bytes into a4 from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1b34 loads 8 bytes into a6 from a2 (arg2 at entry) +0x18.
  The `lw` at 0x1b40 loads 4 bytes into a4 from [a1]:8 +0x14.
  The `ld` at 0x1b70 loads 8 bytes into t0 from a2 (arg2 at entry) +0x28.
  The `lbu` at 0x1b78 loads byte into a7 from [a2+40]:8 +0x0.
  The `sb` at 0x1b84 stores byte from a7 to [a2+40]:8 +0x0 (value [[a2+40]:8]:1-1).
  The `sb` at 0x1b88 stores byte from zero to a2 (arg2 at entry) +0x2 (value 0x0).
  The `sd` at 0x1b9c stores 8 bytes from s0 to a0 (arg0 at entry) +0x13e8 (value a2).
  The `jal` at 0x1a9c calls `psema` with a0=a2+72, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[a2+32], a6=[a1]:8, a7=[sym(kona_mem_serialize)].
  The `jal` at 0x1aa4 calls `kona_mem_cleanup` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1ab8 calls `alloc_gfx_io_space` with a0=[a0+2184], a1=[a2+16]:8, a2=?, a3=0xe.
  The `jal` at 0x1ac8 calls `mutex_spinlock` with a0=a0+2576, a1=?, a2=?, a3=?.
  The `jal` at 0x1ae4 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=[a0+5088]:8, a3=?.
  The `jal` at 0x1b00 calls `kona_timeout` with a0=sym(kona_mem_swapin_complete), a1=a0 at entry (arg0), a2=[sym(kona_mem_timeout_value)], a3=sym(splhi), a4=0x1, a5=a2 at entry (arg2).
  The `jal` at 0x1b44 calls `kona_mem_swapin_func` with a0=a0 at entry (arg0), a1=?, a2=[a2+12], a3=[a2+32], a4=[[a1]:8+20], a6=[a2+24]:8, a7=[a2+16]:8.
  The `jal` at 0x1b58 calls `psema` with a0=a2+72, a1=0x19, a2=?, a3=?.
  The `jal` at 0x1b60 calls `vsema` with a0=a2+72, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1a58 has these conditions:
    taken when (at(=[a2+6]:2) & 0x1) == 0.
    falls through when (at(=[a2+6]:2) & 0x1) != 0.
  The `beq` branch at 0x1a8c has these conditions:
    taken when a5(=[a2+32]) == 0.
    falls through when a5(=[a2+32]) != 0.
  The `beq` branch at 0x1ad8 has these conditions:
    taken when a2(=[a0+5088]:8) == 0.
    falls through when a2(=[a0+5088]:8) != 0.
  The `beq` branch at 0x1b50 has these conditions:
    taken when a6(?) == 0.
    falls through when a6(?) != 0.
  The return at 0x1b90 has v0 = ?.

- `kona_mem_update_driver` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1ba0 (n64).
  It occupies 224 bytes.
  The `ld` at 0x1bb4 loads 8 bytes into s0 from a2 (arg2 at entry) +0x8.
  The `lbu` at 0x1bec loads byte into a2 from ? (base unknown).
  The `lw` at 0x1bf4 loads 4 bytes into a3 from ? (base unknown).
  The `lw` at 0x1c00 loads 4 bytes into a4 from ? (base unknown).
  The `ld` at 0x1c04 loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x1c18 loads 8 bytes into s0 from a3 (arg3 at entry) +0x8.
  The `lbu` at 0x1c40 loads byte into a2 from ? (base unknown).
  The `lw` at 0x1c48 loads 4 bytes into a3 from ? (base unknown).
  The `lw` at 0x1c54 loads 4 bytes into a4 from ? (base unknown).
  The `ld` at 0x1c58 loads 8 bytes into s0 from ? (base unknown).
  The `jal` at 0x1bfc calls `kona_mem_reserve_func` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1c50 calls `kona_mem_reserve_func` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1bd4 has these conditions:
    taken when s0(=[a2+8]:8) == 0.
    falls through when s0(=[a2+8]:8) != 0.
  The `bne` branch at 0x1c08 has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The `beq` branch at 0x1c10 has these conditions:
    taken when s3(=a3) == 0.
    falls through when s3(=a3) != 0.
  The `beq` branch at 0x1c20 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x1c5c has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The return at 0x1c78 has v0 = ?.

- `kona_mem_update` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1c80 (n64).
  It occupies 152 bytes.
  The `ld` at 0x1c94 loads 8 bytes into s1 from a1 (arg1 at entry) +0x70.
  The `ld` at 0x1ce0 loads 8 bytes into a2 from [a1+112]:8 +0xf0.
  The `ld` at 0x1d14 loads 8 bytes into a2 from [a1+112]:8 +0xf0.
  The `jal` at 0x1cc8 calls `kona_mem_update_driver` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1cd8 has these conditions:
    taken when s0(?) >= 0x4 (signed).
    falls through when s0(?) < 0x4 (signed).
  The `bne` branch at 0x1ce4 has these conditions:
    taken when a2(=[[a1+112]:8+240]:8) != 0.
    falls through when a2(=[[a1+112]:8+240]:8) == 0.
  The return at 0x1d04 has v0 = ret(kona_mem_update_driver); f0 = ret(kona_mem_update_driver).

- `kona_mem_validate_driver` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1d18 (n64).
  It occupies 296 bytes.
  The `ld` at 0x1d48 loads 8 bytes into s0 from a2 (arg2 at entry) +0x8.
  The `ld` at 0x1d78 loads 8 bytes into s0 from ? (base unknown).
  The `lbu` at 0x1d84 loads byte into at from ? (base unknown).
  The `ld` at 0x1d90 loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x1da4 loads 8 bytes into s0 from a3 (arg3 at entry) +0x8.
  The `lbu` at 0x1dac loads byte into v0 from ? (base unknown).
  The `ld` at 0x1dd4 loads 8 bytes into s0 from ? (base unknown).
  The `lbu` at 0x1de0 loads byte into v0 from ? (base unknown).
  The `ld` at 0x1dec loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x1e28 loads 8 bytes into s0 from ? (base unknown).
  The `ld` at 0x1e3c loads 8 bytes into s0 from ? (base unknown).
  The `jal` at 0x1d40 calls `kona_mem_cleanup` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1d68 calls `kona_mem_reserve` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1dc4 calls `kona_mem_reserve` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e1c calls `kona_mem_swapin` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1e30 calls `kona_mem_swapin` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x1d4c has these conditions:
    taken when s0(=[a2+8]:8) != 0.
    falls through when s0(=[a2+8]:8) == 0.
  The `beq` branch at 0x1d70 has these conditions:
    taken when v0(=ret(kona_mem_reserve)) == 0.
    falls through when v0(=ret(kona_mem_reserve)) != 0.
  The `beq` branch at 0x1d7c has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x1d88 has these conditions:
    taken when at(?) != 0.
    falls through when at(?) == 0.
  The `bne` branch at 0x1d94 has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The `beq` branch at 0x1d9c has these conditions:
    taken when s1(=a3) == 0.
    falls through when s1(=a3) != 0.
  The `bnel` branch at 0x1da8 has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The `beq` branch at 0x1dcc has these conditions:
    taken when v0(=ret(kona_mem_reserve)) == 0.
    falls through when v0(=ret(kona_mem_reserve)) != 0.
  The `beq` branch at 0x1dd8 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x1de4 has these conditions:
    taken when v0(?) != 0.
    falls through when v0(?) == 0.
  The `bne` branch at 0x1df0 has these conditions:
    taken when s0(?) != 0.
    falls through when s0(?) == 0.
  The return at 0x1e10 has v0 = ?.

- `kona_mem_validate` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1e40 (n64).
  It occupies 276 bytes.
  The `ld` at 0x1e48 loads 8 bytes into s6 from a1 (arg1 at entry) +0x70.
  The `ld` at 0x1e88 loads 8 bytes into at from [a1+112]:8 +0xf0.
  The `lbu` at 0x1e98 loads byte into a0 from ? (base unknown).
  The `lbu` at 0x1ec4 loads byte into a2 from ? (base unknown).
  The `lbu` at 0x1ed8 loads byte into a3 from ? (base unknown).
  The `lbu` at 0x1f40 loads byte into a7 from ? (base unknown).
  The `jal` at 0x1e58 calls `kona_mem_cleanup` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1ebc calls `kona_mem_validate_driver` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1e9c has these conditions:
    taken when at(=[[a1+112]:8+240]:8) == 0.
    falls through when at(=[[a1+112]:8+240]:8) != 0.
  The `beq` branch at 0x1ea4 has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `bne` branch at 0x1ec8 has these conditions:
    taken when a2(?) != 0.
    falls through when a2(?) == 0.
  The `beq` branch at 0x1ed0 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x1edc has these conditions:
    taken when a3(?) != 0.
    falls through when a3(?) == 0.
  The `bne` branch at 0x1ef8 has these conditions:
    taken when s5(?) < 0x4 (signed).
    falls through when s5(?) >= 0x4 (signed).
  The `bne` branch at 0x1f28 has these conditions:
    taken when a0(?) != 0.
    falls through when a0(?) == 0.
  The `beq` branch at 0x1f38 has these conditions:
    taken when s0(?) == 0.
    falls through when s0(?) != 0.
  The `bne` branch at 0x1f44 has these conditions:
    taken when a7(?) != 0.
    falls through when a7(?) == 0.
  The return at 0x1f20 has v0 = ?.

- `kona_mem_destroy` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1f54 (n64).
  It occupies 488 bytes.
  The `ld` at 0x1f80 loads 8 bytes into s6 from a1 (arg1 at entry) +0x70.
  The `ld` at 0x1fa8 loads 8 bytes into a6 from [a1+112]:8 +0xf0.
  The `ld` at 0x1fb4 loads 8 bytes into s1 from ? (base unknown).
  The `ld` at 0x1fcc loads 8 bytes into a4 from ? (base unknown).
  The `ld` at 0x1fe0 loads 8 bytes into t8 from ? (base unknown).
  The `ld` at 0x1ff0 loads 8 bytes into t8 from ? (base unknown).
  The `ld` at 0x1ff4 loads 8 bytes into a3 from ? (base unknown).
  The `sd` at 0x2004 stores 8 bytes from a3 to ? (base unknown) (value unknown).
  The `lw` at 0x2008 loads 4 bytes into ra from ? (base unknown).
  The `sd` at 0x200c stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `lw` at 0x2010 loads 4 bytes into t9 from ? (base unknown).
  The `sw` at 0x201c stores 4 bytes from t9 to ? (base unknown) (value unknown).
  The `ld` at 0x202c loads 8 bytes into at from ? (base unknown).
  The `ld` at 0x2030 loads 8 bytes into a3 from ? (base unknown).
  The `sd` at 0x203c stores 8 bytes from a3 to ? (base unknown) (value unknown).
  The `lw` at 0x2040 loads 4 bytes into v1 from ? (base unknown).
  The `sd` at 0x2044 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `lw` at 0x2048 loads 4 bytes into v0 from ? (base unknown).
  The `sw` at 0x2054 stores 4 bytes from v0 to ? (base unknown) (value unknown).
  The `ld` at 0x2058 loads 8 bytes into s1 from ? (base unknown).
  The `sd` at 0x2060 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `lw` at 0x206c loads 4 bytes into a5 from ? (base unknown).
  The `lw` at 0x2070 loads 4 bytes into a3 from ? (base unknown).
  The `lw` at 0x2074 loads 4 bytes into a4 from ? (base unknown).
  The `ld` at 0x20bc loads 8 bytes into s1 from ? (base unknown).
  The `sd` at 0x20c4 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `ld` at 0x20d8 loads 8 bytes into a0 from ? (base unknown).
  The `lhu` at 0x20e4 loads 2 bytes into a5 from ? (base unknown).
  The `ld` at 0x20f0 loads 8 bytes into a4 from ? (base unknown).
  The `jal` at 0x2098 calls `kvpfree` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20a0 calls `freesema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20a8 calls `kern_free` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20c8 calls `psema` with a0=?, a1=0x19, a2=?, a3=?.
  The `jal` at 0x20d0 calls `kona_mem_cleanup` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1f98 has these conditions:
    taken when s4(?) >= 0x4 (signed).
    falls through when s4(?) < 0x4 (signed).
  The `beq` branch at 0x1fa0 has these conditions:
    taken when s7(=a2) == 0.
    falls through when s7(=a2) != 0.
  The `beq` branch at 0x1fc4 has these conditions:
    taken when s1(?) == 0.
    falls through when s1(?) != 0.
  The `beq` branch at 0x1fd4 has these conditions:
    taken when a4(?) == 0.
    falls through when a4(?) != 0.
  The `beq` branch at 0x1fe8 has these conditions:
    taken when a3(?) == 0.
    falls through when a3(?) != 0.
  The `bne` branch at 0x1ffc has these conditions:
    taken when t8(?) != a6(?).
    falls through when t8(?) == a6(?).
  The `beq` branch at 0x2024 has these conditions:
    taken when a3(?) == 0.
    falls through when a3(?) != 0.
  The `bne` branch at 0x2034 has these conditions:
    taken when at(?) != a6(?).
    falls through when at(?) == a6(?).
  The `beq` branch at 0x205c has these conditions:
    taken when s1(?) == 0.
    falls through when s1(?) != 0.
  The `beq` branch at 0x20b0 has these conditions:
    taken when s1(?) == 0.
    falls through when s1(?) != 0.
  The `beq` branch at 0x20dc has these conditions:
    taken when a0(?) == 0.
    falls through when a0(?) != 0.
  The `bne` branch at 0x20ec has these conditions:
    taken when (a5(?) & 0x1) != 0.
    falls through when (a5(?) & 0x1) == 0.
  The return at 0x2120 has v0 = ?.

- `kona_nclops_destroy` in `usr/cpu/sysgen/IP35boot/kona.a(kona_nclops.o)` at 0x1b58 (n64).
  It occupies 496 bytes.
  The `lw` at 0x1b70 loads 4 bytes into at from ? (base unknown).
  The `lw` at 0x1b94 loads 4 bytes into at from ? (base unknown).
  The `lw` at 0x1bc0 loads 4 bytes into v0 from sym(KonaGfxNumberOfBoards) +0x0.
  The `ld` at 0x1be8 loads 8 bytes into s0 from sym(kona_boards) +0x0.
  The `ld` at 0x1bf4 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1c08 loads 8 bytes into a0 from ? (base unknown).
  The `sd` at 0x1c20 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sw` at 0x1c2c stores 4 bytes from s4 to ? (base unknown) (value -0x1).
  The `lw` at 0x1c38 loads 4 bytes into v0 from sym(KonaGfxNumberOfBoards) +0x0.
  The `ld` at 0x1c44 loads 8 bytes into s0 from sym(kona_boards) +0x0.
  The `ld` at 0x1c54 loads 8 bytes into s0 from ? (base unknown).
  The `lw` at 0x1c58 loads 4 bytes into a3 from ? (base unknown).
  The `ld` at 0x1c6c loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1c80 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1c90 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1ca0 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1cb0 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1cc0 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1cd0 loads 8 bytes into a0 from ? (base unknown).
  The `ld` at 0x1ce0 loads 8 bytes into a0 from ? (base unknown).
  The `sw` at 0x1d24 stores 4 bytes from zero to ? (base unknown) (value 0x0).
  The `jal` at 0x1c00 calls `gfx_pio_write_32` with a0=table(0x8003c0), a1=0xe200, a2=?, a3=?.
  The `jal` at 0x1c0c calls `gfx_pio_read_32` with a0=table(0x8003d0), a1=?, a2=?, a3=?.
  The `jal` at 0x1c30 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1c64 calls `mutex_spinlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1c78 calls `gfx_pio_write_32` with a0=table(0x8003c0), a1=0x80, a2=?, a3=?.
  The `jal` at 0x1c88 calls `gfx_pio_write_32` with a0=table(0x8003d0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1c98 calls `gfx_pio_write_32` with a0=table(0x8003c0), a1=0x8400, a2=?, a3=?.
  The `jal` at 0x1ca8 calls `gfx_pio_write_32` with a0=table(0x8003d0), a1=0x7000, a2=?, a3=?.
  The `jal` at 0x1cb8 calls `gfx_pio_write_32` with a0=table(0x8003c0), a1=0xe300, a2=?, a3=?.
  The `jal` at 0x1cc8 calls `gfx_pio_write_32` with a0=table(0x8003d0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1cd8 calls `gfx_pio_write_32` with a0=table(0x8003c0), a1=0xe500, a2=?, a3=?.
  The `jal` at 0x1ce8 calls `gfx_pio_write_32` with a0=table(0x8003d0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1d18 calls `mutex_spinlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d28 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x1b7c has these conditions:
    taken when at(?) == 0.
    falls through when at(?) != 0.
  The `beq` branch at 0x1ba4 has these conditions:
    taken when at(?) == v1(=0x1).
    falls through when at(?) != v1(=0x1).
  The `blez` branch at 0x1bdc has these conditions:
    taken when v0(=[sym(KonaGfxNumberOfBoards)]) <= 0 (signed).
    falls through when v0(=[sym(KonaGfxNumberOfBoards)]) > 0 (signed).
  The `beq` branch at 0x1bec has these conditions:
    taken when a4(?) == 0.
    falls through when a4(?) != 0.
  The `beq` branch at 0x1c18 has these conditions:
    taken when (v0(=ret(gfx_pio_read_32)) & 0x2) == 0.
    falls through when (v0(=ret(gfx_pio_read_32)) & 0x2) != 0.
  The `beq` branch at 0x1c48 has these conditions:
    taken when s1(?) >= v0(=[sym(KonaGfxNumberOfBoards)]) (signed).
    falls through when s1(?) < v0(=[sym(KonaGfxNumberOfBoards)]) (signed).
  The `bne` branch at 0x1c5c has these conditions:
    taken when a3(?) != s5(=a1).
    falls through when a3(?) == s5(=a1).
  The return at 0x1b8c has v0 = one of 0x0, 0x1.

- `kona_nclops_cleanup` in `usr/cpu/sysgen/IP35boot/kona.a(kona_nclops.o)` at 0x1d48 (n64).
  It occupies 188 bytes.
  The `ld` at 0x1d48 loads 8 bytes into v0 from a1 (arg1 at entry) +0x70.
  The `lh` at 0x1d4c loads 2 bytes into at from [a1+112]:8 +0xf8.
  The `sh` at 0x1d68 stores 2 bytes from v1 to [a1+112]:8 +0xf8 (value -0x1).
  The `lw` at 0x1d78 loads 4 bytes into a4 from a0 (arg0 at entry) +0x158c.
  The `sw` at 0x1d90 stores 4 bytes from a4 to a0 (arg0 at entry) +0x158c (value [a0+5516]-1).
  The `lw` at 0x1da8 loads 4 bytes into t9 from a0 (arg0 at entry) +0x157c.
  The `ld` at 0x1db0 loads 8 bytes into s1 from a0 (arg0 at entry) +0x1568.
  The `lw` at 0x1dcc loads 4 bytes into ra from ? (base unknown).
  The `lw` at 0x1ddc loads 4 bytes into at from ? (base unknown).
  The `sw` at 0x1de4 stores 4 bytes from at to ? (base unknown) (value unknown).
  The `jal` at 0x1d70 calls `mutex_spinlock` with a0=a0+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1d94 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+5516]-1.
  The `jal` at 0x1dc4 calls `mutex_spinlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1de8 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `bltz` branch at 0x1d5c has these conditions:
    taken when at(=[[a1+112]:8+248]:2) < 0 (signed).
    falls through when at(=[[a1+112]:8+248]:2) >= 0 (signed).
  The `blez` branch at 0x1d88 has these conditions:
    taken when a4(=[a0+5516]) <= 0 (signed).
    falls through when a4(=[a0+5516]) > 0 (signed).
  The `blez` branch at 0x1da0 has these conditions:
    taken when a5(?) <= 0 (signed).
    falls through when a5(?) > 0 (signed).
  The `blez` branch at 0x1dd4 has these conditions:
    taken when ra(?) <= 0 (signed).
    falls through when ra(?) > 0 (signed).
  The return at 0x1dfc has v0 = 0x0.
