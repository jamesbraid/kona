# Instruction readings from hostfacts

These entries record selected memory accesses, calls, branches and returns from each cited routine body. Every instruction claim names its address in the exact binary build. They describe software behavior, not hardware measurements.

Skipped routines: 2,246 symbols in the selected binaries were left out, 1,654 because an earlier readings document already covers them and 592 because the symbol has no bounded routine address or size.

- `TEST_perf` in `usr/diags/IR/bin/irsaudit` at 0x100ffb2c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x100ffb2c-0x100fff48 (1052 bytes).
  It occupies 1052 bytes.
  The `lw` at 0x100ffb50 loads 4 bytes from a0 (arg0 at entry) +0x16c.
  2 such `lw` accesses load 4 bytes from abs 0x102be48c, including `lw` at 0x100ffb5c, `lw` at 0x100ffe70.
  2 such `sw` accesses store 4 bytes to sym(KonatestTexRepeat) +0x0, including `sw` at 0x100ffb6c, `sw` at 0x100ffe88.
  3 such `lw` accesses load 4 bytes from abs 0x102bd730, including `lw` at 0x100ffb8c, `lw` at 0x100ffde0, `lw` at 0x100ffe08.
  7 such `lw` accesses load 4 bytes from abs 0x102bcee8, including `lw` at 0x100ffba0, `lw` at 0x100ffbb8, `lw` at 0x100ffd1c.
  5 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x100ffbb4, `lw` at 0x100ffe50, `lw` at 0x100ffee0.
  The `lw` at 0x100ffbd8 loads 4 bytes from abs 0x102be1e0.
  The `lw` at 0x100ffbdc loads 4 bytes from sym(KONAINFO) +0x0.
  The `lw` at 0x100ffbe0 loads 4 bytes from [sym(KONAINFO)] +0x0.
  The `lw` at 0x100ffbf4 loads 4 bytes from abs 0x102be20c.
  The `lw` at 0x100ffbf8 loads 4 bytes from sym(SET_HUB_WAR) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x102be448, including `lw` at 0x100ffc08, `lw` at 0x100ffeac.
  2 such `sw` accesses store 4 bytes to sym(HUB_WAR) +0x0, including `sw` at 0x100ffc0c, `sw` at 0x100ffeb4.
  2 such `lw` accesses load 4 bytes from abs 0x102be498, including `lw` at 0x100ffc18, `lw` at 0x100ffea8.
  2 such `sw` accesses store 4 bytes to sym(el_perf_flago) +0x0, including `sw` at 0x100ffc24, `sw` at 0x100ffeb0.
  The `lw` at 0x100ffc34 loads 4 bytes from abs 0x102bd764.
  The `lw` at 0x100ffc64 loads 4 bytes from abs 0x102bddf4.
  The `lw` at 0x100ffc88 loads 4 bytes from abs 0x102bd458.
  2 such `lw` accesses load 4 bytes from abs 0x102bd45c, including `lw` at 0x100ffccc, `lw` at 0x100ffe7c.
  2 such `lw` accesses load 4 bytes from abs 0x102be77c, including `lw` at 0x100ffcd4, `lw` at 0x100ffe80.
  2 such `lw` accesses load 4 bytes from sym(pipeFD) +0x0, including `lw` at 0x100ffcec, `lw` at 0x100ffe94.
  The `lw` at 0x100ffcfc loads 4 bytes from abs 0x102bd7fc.
  The `lw` at 0x100ffd18 loads 4 bytes from abs 0x102bd7cc.
  The `lw` at 0x100ffd3c loads 4 bytes from abs 0x102bd92c.
  The `lw` at 0x100ffd98 loads 4 bytes from abs 0x102bd49c.
  The `lw` at 0x100ffdac loads 4 bytes from abs 0x102bceec.
  The `lw` at 0x100ffdc0 loads 4 bytes from abs 0x102bcef0.
  The `lw` at 0x100ffe14 loads 4 bytes from abs 0x102bcef4.
  The `jal` at 0x100ffb9c calls kt_output_info [0x10046374] with a0=0x101b3410, a1=[a0+364], a2=0x1c4814, a3=0x2, a4=0x4.
  The `jal` at 0x100ffbc0 calls kt_output_rslt [0x10045978] with a0=0x2, a1=0x101b3428, a2=?, a3=?.
  The `jal` at 0x100ffc44 calls kt_code_result [0x10048068] with a0=0x2, a1=?, a2=0x1, a3=?.
  The `jal` at 0x100ffc6c calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jalr` at 0x100ffc90 calls sginap with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x100ffc9c calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jalr` at 0x100ffce8 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=?.
  The `jal` at 0x100ffd00 calls reset_dacs [0x10061f50] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100ffd20 calls kt_data_file [0x1005a128] with a0=0x101b3480, a1=?, a2=?, a3=?.
  The `jal` at 0x100ffd5c calls tst_multi_voc [0x100b6c58] with a0=0x8, a1=0x1, a2=0x1, a3=ret(kt_data_file), a4=0x1, a5=0x0, a6=0x0, a7=-0x1.
  The `jal` at 0x100ffd88 calls tst_multi_voc [0x100b6c58] with a0=0x8, a1=0x1, a2=0x0, a3=ret(kt_data_file), a4=0x1, a5=0x1, a6=0x0, a7=-0x1.
  The `jalr` at 0x100ffd9c calls sleep with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x100ffdb0 calls (unnamed) [0x10101f64] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100ffdc4 calls (unnamed) [0x100fff48] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100ffdf0 calls kt_output_info [0x10046374] with a0=0x101b3498, a1=?, a2=?, a3=?.
  The `jal` at 0x100ffe18 calls (unnamed) [0x1010000c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100ffe34 calls kt_output_info [0x10046374] with a0=0x101b34b8, a1=?, a2=?, a3=?.
  The `jal` at 0x100ffe58 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100ffe90 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=?.
  The `jal` at 0x100ffef0 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b3448, a2=?, a3=?.
  The `jal` at 0x100fff1c calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b3460, a2=?, a3=?.
  The `jal` at 0x100fff38 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x100ffb68 targets 0x100ffbd0, is taken when s2(=[a0+364]) == v0(=0x1), and falls through when s2(=[a0+364]) != v0(=0x1).
  The `beq` branch at 0x100ffb74 targets 0x100ffbd4, is taken when s2(=[a0+364]) == a3(=0x2), and falls through when s2(=[a0+364]) != a3(=0x2).
  The `beq` branch at 0x100ffb80 targets 0x100ffbd0, is taken when s2(=[a0+364]) == a4(=0x4), and falls through when s2(=[a0+364]) != a4(=0x4).
  The `beq` branch at 0x100ffbc8 targets 0x100ffebc and is always taken.
  The `beq` branch at 0x100ffbe4 targets 0x100ffc14, is taken when ra(=[[sym(KONAINFO)]]) == 0, and falls through when ra(=[[sym(KONAINFO)]]) != 0.
  The `beq` branch at 0x100ffbfc targets 0x100ffc10, is taken when at(=[sym(SET_HUB_WAR)]) == 0, and falls through when at(=[sym(SET_HUB_WAR)]) != 0.
  The `blez` branch at 0x100ffc20 targets 0x100ffc5c, is taken when s2(=[a0+364]) <= 0 (signed), and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` branch at 0x100ffc54 targets 0x100ffc3c, is taken when s0(?) < s2(=[a0+364]) (signed), and falls through when s0(?) >= s2(=[a0+364]) (signed).
  The `beq` branch at 0x100ffc74 targets 0x100ffcc4, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` branch at 0x100ffca4 targets 0x100ffcb4, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` branch at 0x100ffcb0 targets 0x100ffc8c, is taken when s0(?) < 0x5 (unsigned), and falls through when s0(?) >= 0x5 (unsigned).
  The `beq` branch at 0x100ffcb8 targets 0x100ffed4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bltz` branch at 0x100ffcf0 targets 0x100fff00, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x100ffdcc targets 0x100ffe00, is taken when v0(=ret(0x100fff48)) == 0, and falls through when v0(=ret(0x100fff48)) != 0.
  The `beq` branch at 0x100ffdf8 targets 0x100ffe0c and is always taken.
  The `beq` branch at 0x100ffe20 targets 0x100ffe40, is taken when v0(=ret(0x1010000c)) == 0, and falls through when v0(=ret(0x1010000c)) != 0.
  The `beq` branch at 0x100ffe40 targets 0x100fff2c, is taken when s0(=one of 0x0, 0x1, 0x2) == 0, and falls through when s0(=one of 0x0, 0x1, 0x2) != 0.
  The `beq` branch at 0x100ffef8 targets 0x100ffebc and is always taken.
  The `beq` branch at 0x100fff24 targets 0x100ffebc and is always taken.
  The `beq` branch at 0x100fff40 targets 0x100ffe64 and is always taken.
  The return at 0x100ffecc has v0 = one of ret(kt_output_rslt), ret(ioctl).

- `TEST_aaspoke` in `usr/diags/IR/bin/irsaudit` at 0x101022b8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x101022b8-0x1010274c (1172 bytes).
  It occupies 1172 bytes.
  The `lw` at 0x101022d0 loads 4 bytes from a0 (arg0 at entry) +0x16c.
  4 such `lw` accesses load 4 bytes from abs 0x102bd730, including `lw` at 0x10102310, `lw` at 0x1010261c, `lw` at 0x10102660.
  9 such `lw` accesses load 4 bytes from abs 0x102bcf08, including `lw` at 0x10102324, `lw` at 0x1010233c, `lw` at 0x10102440.
  10 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x10102338, `lw` at 0x1010243c, `lw` at 0x10102530.
  The `lw` at 0x1010235c loads 4 bytes from abs 0x102be1e0.
  The `lw` at 0x10102360 loads 4 bytes from sym(KONAINFO) +0x0.
  The `lw` at 0x10102364 loads 4 bytes from [sym(KONAINFO)] +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x10102378, `lw` at 0x101026dc.
  2 such `lw` accesses load 4 bytes from abs 0x102bcf0c, including `lw` at 0x1010238c, `lw` at 0x101026a0.
  The `lw` at 0x101023a4 loads 4 bytes from abs 0x102bd764.
  The `lw` at 0x101023d4 loads 4 bytes from abs 0x102bddf4.
  The `lw` at 0x101023f8 loads 4 bytes from abs 0x102bd458.
  The `lw` at 0x10102460 loads 4 bytes from abs 0x102bd7cc.
  The `lw` at 0x10102468 loads 4 bytes from abs 0x1020c7e0.
  The `lw` at 0x10102474 loads 4 bytes from abs 0x102bcf10.
  The `sw` at 0x1010247c stores 4 bytes to abs 0x10344a98.
  2 such `lw` accesses load 4 bytes from abs 0x102bd744, including `lw` at 0x10102490, `lw` at 0x101026b0.
  The `lw` at 0x101024b0 loads 4 bytes from abs 0x102bcf14.
  The `lw` at 0x101024b8 loads 4 bytes from abs 0x10344a98.
  The `lw` at 0x101024d0 loads 4 bytes from abs 0x102bd45c.
  The `lw` at 0x101024d8 loads 4 bytes from abs 0x102be77c.
  2 such `lw` accesses load 4 bytes from sym(pipeFD) +0x0, including `lw` at 0x101024ec, `lw` at 0x10102548.
  The `lw` at 0x101024fc loads 4 bytes from abs 0x102be488.
  The `lw` at 0x10102500 loads 4 bytes from sym(Nocrc) +0x0.
  The `lw` at 0x10102514 loads 4 bytes from abs 0x102bdbf8.
  The `ld` at 0x10102580 loads 8 bytes from abs 0x1020c7a8.
  2 such `sd` accesses store 8 bytes to abs 0x1020c7a8, including `sd` at 0x10102594, `sd` at 0x101026cc.
  The `lw` at 0x1010259c loads 4 bytes from abs 0x102bd584.
  The `sd` at 0x101026c8 stores 8 bytes to abs 0x1020c7b0.
  The `jal` at 0x10102320 calls kt_output_info [0x10046374] with a0=0x101b3758, a1=[a0+364], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10102344 calls kt_output_rslt [0x10045978] with a0=0x2, a1=0x101b3770, a2=?, a3=?.
  The `jal` at 0x101023b4 calls kt_code_result [0x10048068] with a0=0x2, a1=?, a2=0x1, a3=?.
  The `jal` at 0x101023dc calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jalr` at 0x10102400 calls sginap with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x1010240c calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jal` at 0x10102448 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b37f0, a2=?, a3=?.
  The `jal` at 0x10102464 calls kt_data_file [0x1005a128] with a0=[0x1020c7e0], a1=?, a2=?, a3=?.
  The `jal` at 0x101024a0 calls kt_output_dbug [0x10046d74] with a0=0x6, a1=0x101b3820, a2=ret(kt_data_file), a3=?.
  The `jal` at 0x101024b4 calls (unnamed) [0x101032d8] with a0=[0x10344a98], a1=?, a2=?, a3=?.
  The `jalr` at 0x101024e8 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=?.
  The `jal` at 0x10102518 calls aaspoke [0x1010274c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10102538 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1010254c calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=?.
  The `jal` at 0x101025a4 calls run_crc_testlist [0x1001d0dc] with a0=0x1020c7b8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x101025c4 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x101025e0 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x101025fc calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10102628 calls kt_output_info [0x10046374] with a0=0x101b3808, a1=ret(kt_data_file), a2=?, a3=?.
  The `jal` at 0x10102640 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10102668 calls kt_output_info [0x10046374] with a0=0x101b3838, a1=?, a2=?, a3=?.
  The `jal` at 0x10102680 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x101026d0 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b37b0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101026f8 calls kt_output_info [0x10046374] with a0=0x101b3790, a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10102710 calls kt_output_rslt [0x10045978] with a0=0x2, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1010273c calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b3858, a2=?, a3=?.
  The `beq` branch at 0x101022f0 targets 0x10102354, is taken when s2(=[a0+364]) == at(=0x1), and falls through when s2(=[a0+364]) != at(=0x1).
  The `beq` branch at 0x101022f8 targets 0x10102358, is taken when s2(=[a0+364]) == a1(=0x2), and falls through when s2(=[a0+364]) != a1(=0x2).
  The `beq` branch at 0x10102304 targets 0x10102354, is taken when s2(=[a0+364]) == v1(=0x4), and falls through when s2(=[a0+364]) != v1(=0x4).
  The `beq` branch at 0x1010234c targets 0x10102558 and is always taken.
  The `beq` branch at 0x10102368 targets 0x101026e0, is taken when v0(=[[sym(KONAINFO)]]) == a1(=0x2), and falls through when v0(=[[sym(KONAINFO)]]) != a1(=0x2).
  The `beq` branch at 0x10102370 targets 0x10102690, is taken when v0(=[[sym(KONAINFO)]]) == v1(=0x6), and falls through when v0(=[[sym(KONAINFO)]]) != v1(=0x6).
  The `beq` branch at 0x10102388 targets 0x10102578, is taken when t8(=[a0+116]) == t9(=0x8), and falls through when t8(=[a0+116]) != t9(=0x8).
  The `blez` branch at 0x10102390 targets 0x101023d0, is taken when s2(=[a0+364]) <= 0 (signed), and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` branch at 0x101023c4 targets 0x101023ac, is taken when s0(?) < s2(=[a0+364]) (signed), and falls through when s0(?) >= s2(=[a0+364]) (signed).
  The `beq` branch at 0x101023e4 targets 0x1010245c, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` branch at 0x10102414 targets 0x10102424, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` branch at 0x10102420 targets 0x101023fc, is taken when s0(?) < 0x5 (unsigned), and falls through when s0(?) >= 0x5 (unsigned).
  The `bne` branch at 0x10102428 targets 0x10102458, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x10102450 targets 0x10102558 and is always taken.
  The `beq` branch at 0x10102478 targets 0x1010260c, is taken when v0(=ret(kt_data_file)) == 0, and falls through when v0(=ret(kt_data_file)) != 0.
  The `beq` branch at 0x101024c0 targets 0x10102650, is taken when v0(=ret(0x101032d8)) == ra(=-0x1), and falls through when v0(=ret(0x101032d8)) != ra(=-0x1).
  The `bltz` branch at 0x101024f0 targets 0x10102720, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x10102504 targets 0x10102598, is taken when t8(=[sym(Nocrc)]) == 0, and falls through when t8(=[sym(Nocrc)]) != 0.
  The `beq` branch at 0x10102520 targets 0x101025d4, is taken when v0(=ret(aaspoke)) == 0, and falls through when v0(=ret(aaspoke)) != 0.
  The `beq` branch at 0x10102590 targets 0x10102390 and is always taken.
  The `bne` branch at 0x101025ac targets 0x101025f0, is taken when v0(=ret(run_crc_testlist)) != 0, and falls through when v0(=ret(run_crc_testlist)) == 0.
  The `beq` branch at 0x101025cc targets 0x10102544 and is always taken.
  The `beq` branch at 0x101025e8 targets 0x10102544 and is always taken.
  The `beq` branch at 0x10102604 targets 0x10102544 and is always taken.
  The `beq` branch at 0x10102648 targets 0x10102558 and is always taken.
  The `beq` branch at 0x10102688 targets 0x10102558 and is always taken.
  The `beq` branch at 0x101026d8 targets 0x1010237c and is always taken.
  The `beq` branch at 0x10102718 targets 0x10102558 and is always taken.
  The `beq` branch at 0x10102744 targets 0x10102558 and is always taken.
  The return at 0x10102570 has v0 = one of ret(kt_output_rslt), ret(ioctl).

- `TEST_checktex` in `usr/diags/IR/bin/irsaudit` at 0x10103594 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10103594-0x10103810 (636 bytes).
  It occupies 636 bytes.
  The `lw` at 0x101035bc loads 4 bytes from a0 (arg0 at entry) +0x16c.
  2 such `lw` accesses load 4 bytes from abs 0x102be48c, including `lw` at 0x101035cc, `lw` at 0x10103768.
  2 such `sw` accesses store 4 bytes to sym(KonatestTexRepeat) +0x0, including `sw` at 0x101035e4, `sw` at 0x10103774.
  The `lw` at 0x101035fc loads 4 bytes from abs 0x102bd730.
  4 such `lw` accesses load 4 bytes from abs 0x102bcf18, including `lw` at 0x10103610, `lw` at 0x10103628, `lw` at 0x101037ac.
  5 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x10103624, `lw` at 0x10103738, `lw` at 0x101037a8.
  2 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x10103648, `lw` at 0x10103690.
  The `lw` at 0x10103678 loads 4 bytes from abs 0x102bddf4.
  The `lw` at 0x101036a8 loads 4 bytes from abs 0x102bd458.
  The `lw` at 0x101036ec loads 4 bytes from abs 0x102bd45c.
  The `lw` at 0x101036f4 loads 4 bytes from abs 0x102be77c.
  2 such `lw` accesses load 4 bytes from sym(pipeFD) +0x0, including `lw` at 0x1010370c, `lw` at 0x10103770.
  The `lw` at 0x1010371c loads 4 bytes from abs 0x102bdbfc.
  The `jal` at 0x1010360c calls kt_output_info [0x10046374] with a0=0x101b3b40, a1=[a0+364], a2=a2 at entry (arg2), a3=0x4, a4=0x102c4340, a5=0x0, a6=sym(KonatestTexRepeat), a7=0x1c0dac.
  The `jal` at 0x10103630 calls kt_output_rslt [0x10045978] with a0=0x2, a1=0x101b3b58, a2=?, a3=?.
  The `jal` at 0x10103658 calls kt_code_result [0x10048068] with a0=0x2, a1=?, a2=0x1, a3=?.
  The `jal` at 0x1010368c calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jalr` at 0x101036b0 calls sginap with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x101036bc calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jalr` at 0x10103708 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=?.
  The `jal` at 0x10103720 calls TestTex [0x10103810] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10103740 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10103754 calls kt_code_result [0x10048068] with a0=0x2, a1=0x0, a2=0x4, a3=?.
  The `jalr` at 0x10103778 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=?.
  The `jal` at 0x101037b8 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b3b78, a2=?, a3=?.
  The `jal` at 0x101037e4 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b3b90, a2=?, a3=?.
  The `jal` at 0x10103800 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x101035e0 targets 0x10103640, is taken when s2(=[a0+364]) == at(=0x1), and falls through when s2(=[a0+364]) != at(=0x1).
  The `beq` branch at 0x101035e8 targets 0x10103640, is taken when s2(=[a0+364]) == a1(=0x2), and falls through when s2(=[a0+364]) != a1(=0x2).
  The `beq` branch at 0x101035f0 targets 0x10103640, is taken when s2(=[a0+364]) == a3(=0x4), and falls through when s2(=[a0+364]) != a3(=0x4).
  The `beq` branch at 0x10103638 targets 0x10103784 and is always taken.
  The `blez` branch at 0x10103640 targets 0x10103670, is taken when s2(=[a0+364]) <= 0 (signed), and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` branch at 0x10103668 targets 0x10103650, is taken when s0(?) < s2(=[a0+364]) (signed), and falls through when s0(?) >= s2(=[a0+364]) (signed).
  The `beq` branch at 0x10103698 targets 0x101036e0, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` branch at 0x101036c4 targets 0x101036d4, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` branch at 0x101036d0 targets 0x101036ac, is taken when s0(?) < 0x5 (unsigned), and falls through when s0(?) >= 0x5 (unsigned).
  The `beq` branch at 0x101036d8 targets 0x1010379c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bltz` branch at 0x10103710 targets 0x101037c8, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x10103728 targets 0x101037f4, is taken when v0(=ret(TestTex)) == 0, and falls through when v0(=ret(TestTex)) != 0.
  The `beq` branch at 0x101037c0 targets 0x10103784 and is always taken.
  The `beq` branch at 0x101037ec targets 0x10103784 and is always taken.
  The `beq` branch at 0x10103808 targets 0x1010375c and is always taken.
  The return at 0x10103794 has v0 = one of ret(kt_output_rslt), ret(ioctl).

- `TEST_callig` in `usr/diags/IR/bin/irsaudit` at 0x10104794 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10104794-0x10104b08 (884 bytes).
  It occupies 884 bytes.
  The `lw` at 0x101047b0 loads 4 bytes from abs 0x102be1e0.
  The `lw` at 0x101047b8 loads 4 bytes from sym(KONAINFO) +0x0.
  The `lw` at 0x101047bc loads 4 bytes from a0 (arg0 at entry) +0x16c.
  The `lw` at 0x101047c0 loads 4 bytes from [sym(KONAINFO)] +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x102bd730, including `lw` at 0x10104808, `lw` at 0x10104aa8.
  6 such `lw` accesses load 4 bytes from abs 0x102bcf34, including `lw` at 0x1010480c, `lw` at 0x10104830, `lw` at 0x101049b4.
  8 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x1010482c, `lw` at 0x10104964, `lw` at 0x101049b0.
  The `lw` at 0x10104868 loads 4 bytes from abs 0x102bd764.
  The `lw` at 0x10104898 loads 4 bytes from abs 0x102bddf4.
  The `lw` at 0x101048bc loads 4 bytes from abs 0x102bd458.
  The `lw` at 0x10104900 loads 4 bytes from abs 0x102bd45c.
  The `lw` at 0x10104908 loads 4 bytes from abs 0x102be77c.
  2 such `lw` accesses load 4 bytes from sym(pipeFD) +0x0, including `lw` at 0x10104920, `lw` at 0x1010497c.
  The `lw` at 0x10104930 loads 4 bytes from abs 0x102be488.
  The `lw` at 0x10104934 loads 4 bytes from sym(Nocrc) +0x0.
  The `lw` at 0x10104948 loads 4 bytes from abs 0x102bdc00.
  The `lw` at 0x101049dc loads 4 bytes from abs 0x102bd584.
  2 such `lw` accesses load 4 bytes from abs 0x102bcf38, including `lw` at 0x101049e0, `lw` at 0x10104a60.
  The `lw` at 0x10104a70 loads 4 bytes from abs 0x102bd744.
  The `sd` at 0x10104a88 stores 8 bytes to abs 0x1020c800.
  The `sd` at 0x10104a94 stores 8 bytes to abs 0x1020c808.
  The `jal` at 0x10104814 calls kt_output_info [0x10046374] with a0=0x101b3d80, a1=[a0+364], a2=0x1bfbac, a3=0x2, a4=0x1, a5=0x4.
  The `jal` at 0x10104838 calls kt_output_rslt [0x10045978] with a0=0x2, a1=0x101b3d98, a2=?, a3=?.
  The `jal` at 0x10104878 calls kt_code_result [0x10048068] with a0=0x2, a1=?, a2=0x1, a3=?.
  The `jal` at 0x101048a0 calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jalr` at 0x101048c4 calls sginap with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x101048d0 calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jalr` at 0x1010491c calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=?.
  The `jal` at 0x1010494c calls test_callig [0x10104b08] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1010496c calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10104980 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=?.
  The `jal` at 0x101049c0 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b3df8, a2=?, a3=?.
  The `jal` at 0x101049e8 calls run_crc_testlist [0x1001d0dc] with a0=0x1020c810, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10104a08 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10104a24 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10104a40 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10104a90 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b3db8, a2=0x1bfbac, a3=0x2, a4=0x1.
  The `jal` at 0x10104ab4 calls kt_output_info [0x10046374] with a0=0x101b3d50, a1=[[sym(KONAINFO)]], a2=0x1bfbac, a3=0x2.
  The `jal` at 0x10104acc calls kt_output_rslt [0x10045978] with a0=0x2, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10104af8 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b3e10, a2=?, a3=?.
  The `beq` branch at 0x101047d4 targets 0x10104aa0, is taken when a1(=[[sym(KONAINFO)]]) == a3(=0x2), and falls through when a1(=[[sym(KONAINFO)]]) != a3(=0x2).
  The `beq` branch at 0x101047e0 targets 0x1010484c, is taken when s2(=[a0+364]) == a4(=0x1), and falls through when s2(=[a0+364]) != a4(=0x1).
  The `beq` branch at 0x101047e8 targets 0x1010484c, is taken when s2(=[a0+364]) == a3(=0x2), and falls through when s2(=[a0+364]) != a3(=0x2).
  The `beq` branch at 0x101047f4 targets 0x10104848, is taken when s2(=[a0+364]) == a5(=0x4), and falls through when s2(=[a0+364]) != a5(=0x4).
  The `beq` branch at 0x10104840 targets 0x1010498c and is always taken.
  The `beq` branch at 0x1010484c targets 0x10104a50, is taken when a1(=[[sym(KONAINFO)]]) == ra(=0x6), and falls through when a1(=[[sym(KONAINFO)]]) != ra(=0x6).
  The `blez` branch at 0x10104854 targets 0x10104890, is taken when s2(=[a0+364]) <= 0 (signed), and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` branch at 0x10104888 targets 0x10104870, is taken when s0(?) < s2(=[a0+364]) (signed), and falls through when s0(?) >= s2(=[a0+364]) (signed).
  The `beq` branch at 0x101048a8 targets 0x101048f8, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` branch at 0x101048d8 targets 0x101048e8, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` branch at 0x101048e4 targets 0x101048c0, is taken when s0(?) < 0x5 (unsigned), and falls through when s0(?) >= 0x5 (unsigned).
  The `beq` branch at 0x101048ec targets 0x101049a4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bltz` branch at 0x10104924 targets 0x10104adc, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x10104938 targets 0x101049d0, is taken when t8(=[sym(Nocrc)]) == 0, and falls through when t8(=[sym(Nocrc)]) != 0.
  The `beq` branch at 0x10104954 targets 0x10104a18, is taken when v0(=ret(test_callig)) == 0, and falls through when v0(=ret(test_callig)) != 0.
  The `beq` branch at 0x101049c8 targets 0x1010498c and is always taken.
  The `bne` branch at 0x101049f0 targets 0x10104a34, is taken when v0(=ret(run_crc_testlist)) != 0, and falls through when v0(=ret(run_crc_testlist)) == 0.
  The `beq` branch at 0x10104a10 targets 0x10104978 and is always taken.
  The `beq` branch at 0x10104a2c targets 0x10104978 and is always taken.
  The `beq` branch at 0x10104a48 targets 0x10104978 and is always taken.
  The `beq` branch at 0x10104a98 targets 0x10104854 and is always taken.
  The `beq` branch at 0x10104ad4 targets 0x1010498c and is always taken.
  The `beq` branch at 0x10104b00 targets 0x1010498c and is always taken.
  The return at 0x1010499c has v0 = one of ret(kt_output_rslt), ret(ioctl).

- `TEST_xgregs` in `usr/diags/IR/bin/irsaudit` at 0x10105864 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10105864-0x10105930 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0x10105884 loads 4 bytes from abs 0x102bcf50.
  2 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x101058a0, `lw` at 0x101058fc.
  The `lw` at 0x101058bc loads 4 bytes from abs 0x102bd760.
  2 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x101058d8, `lw` at 0x10105918.
  The `jal` at 0x10105888 calls (unnamed) [0x10105930] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101058ac calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x101058c8 calls kt_code_chip [0x1004797c] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x101058e0 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10105908 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x10105920 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x10105890 targets 0x101058f8, is taken when v0(=ret(0x10105930)) == 0, and falls through when v0(=ret(0x10105930)) != 0.
  The `beq` branch at 0x10105928 targets 0x101058ec and is always taken.
  The return at 0x101058f0 has v0 = ret(kt_output_rslt).

- `TEST_xgram` in `usr/diags/IR/bin/irsaudit` at 0x10105cc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10105cc0-0x101060e8 (1064 bytes).
  It occupies 1064 bytes.
  The `lw` at 0x10105ce0 loads 4 bytes from abs 0x102bddec.
  4 such `lw` accesses load 4 bytes from abs 0x102bd730, including `lw` at 0x10105d1c, `lw` at 0x10105da4, `lw` at 0x10105e1c.
  6 such `lw` accesses load 4 bytes from abs 0x102bcf5c, including `lw` at 0x10105d2c, `lw` at 0x10105da8, `lw` at 0x10105e20.
  5 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x10105d38, `lw` at 0x10105dbc, `lw` at 0x10105f6c.
  4 such `lw` accesses load 4 bytes from abs 0x102bd760, including `lw` at 0x10105d54, `lw` at 0x10105dd8, `lw` at 0x10105f88.
  5 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x10105d70, `lw` at 0x10105df4, `lw` at 0x10105fa4.
  2 such `lw` accesses load 4 bytes from abs 0x102bd744, including `lw` at 0x10105e54, `lw` at 0x10105f00.
  The `lw` at 0x10105e84 loads 4 bytes from abs 0x102bdde4.
  The `lw` at 0x10105ea0 loads 4 bytes from abs 0x102bcf60.
  The `lw` at 0x10105eb4 loads 4 bytes from abs 0x102bcf64.
  The `lw` at 0x10105ec8 loads 4 bytes from abs 0x102bcf68.
  The `jal` at 0x10105cec calls fcAdapPioRead32 [0x1013dd20] with a0=0x64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10105d28 calls kt_output_info [0x10046374] with a0=0x101b4130, a1=?, a2=?, a3=?.
  The `jal` at 0x10105d44 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10105d60 calls kt_code_chip [0x1004797c] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10105d78 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10105dac calls kt_output_info [0x10046374] with a0=0x101b4150, a1=?, a2=?, a3=?.
  The `jal` at 0x10105dc8 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10105de4 calls kt_code_chip [0x1004797c] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10105dfc calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10105e28 calls kt_output_info [0x10046374] with a0=0x101b4190, a1=?, a2=0x8, a3=?.
  The `jal` at 0x10105e34 calls fcAdapPioRead32 [0x1013dd20] with a0=0x24, a1=?, a2=?, a3=?.
  The `jal` at 0x10105e74 calls kt_output_dbug [0x10046d74] with a0=0x5, a1=0x101b41b8, a2=?, a3=0xfffffffffffdffff.
  The `jal` at 0x10105e90 calls fcAdapPioWrite32 [0x1013dcb8] with a0=0x24, a1=?, a2=?, a3=?.
  The `jal` at 0x10105ea4 calls (unnamed) [0x101060e8] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10105eb8 calls (unnamed) [0x10106374] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10105ed0 calls (unnamed) [0x10106654] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10105ee4 calls fcAdapPioWrite32 [0x1013dcb8] with a0=0x6c, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10105efc calls fcAdapPioRead32 [0x1013dd20] with a0=0x24, a1=?, a2=?, a3=?.
  The `jal` at 0x10105f30 calls kt_output_dbug [0x10046d74] with a0=0x5, a1=0x101b41f0, a2=?, a3=?.
  The `jal` at 0x10105f48 calls fcAdapPioWrite32 [0x1013dcb8] with a0=0x24, a1=?, a2=?, a3=?.
  The `jal` at 0x10105f78 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10105f94 calls kt_code_chip [0x1004797c] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10105fac calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10106020 calls kt_output_info [0x10046374] with a0=0x101b4178, a1=0x10, a2=0x8, a3=?.
  The `jal` at 0x1010603c calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10106058 calls kt_code_chip [0x1004797c] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10106070 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1010609c calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x101060b4 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x10105cf8 targets 0x10105d88, is taken when (v0(=ret(fcAdapPioRead32)) & 0xc0) == 0, and falls through when (v0(=ret(fcAdapPioRead32)) & 0xc0) != 0.
  The `beq` branch at 0x10105d04 targets 0x10105d8c, is taken when a0(?) == t9(=0x40), and falls through when a0(?) != t9(=0x40).
  The `beq` branch at 0x10105d10 targets 0x10105d88, is taken when a0(?) == ra(=0x80), and falls through when a0(?) != ra(=0x80).
  The `beq` branch at 0x10105d80 targets 0x10105fb8 and is always taken.
  The `beq` branch at 0x10105d8c targets 0x10105fcc, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x10105e04 targets 0x10105fb8 and is always taken.
  The `beq` branch at 0x10105f5c targets 0x10106088, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10105fd0 targets 0x10106080, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10105fdc targets 0x101060c4, is taken when a0(?) == ra(=0x30), and falls through when a0(?) != ra(=0x30).
  The `beq` branch at 0x10105fe8 targets 0x101060cc, is taken when a0(?) == at(=0x20), and falls through when a0(?) != at(=0x20).
  The `beq` branch at 0x10105ff4 targets 0x101060d4, is taken when a0(?) == v0(=0x18), and falls through when a0(?) != v0(=0x18).
  The `beq` branch at 0x10105ffc targets 0x101060dc, is taken when a0(?) == a1(=0x10), and falls through when a0(?) != a1(=0x10).
  The `beq` branch at 0x10106004 targets 0x10105e0c, is taken when a0(?) == a2(=0x8), and falls through when a0(?) != a2(=0x8).
  The `beq` branch at 0x10106078 targets 0x10105fb8 and is always taken.
  The `beq` branch at 0x10106080 targets 0x10105e0c and is always taken.
  The `beq` branch at 0x101060bc targets 0x10105fb8 and is always taken.
  The `beq` branch at 0x101060c4 targets 0x10105e10 and is always taken.
  The `beq` branch at 0x101060cc targets 0x10105e0c and is always taken.
  The `beq` branch at 0x101060d4 targets 0x10105e10 and is always taken.
  The `beq` branch at 0x101060e0 targets 0x10105e10 and is always taken.
  The return at 0x10105fc4 has v0 = ret(kt_output_rslt).

- `TEST_xgerr` in `usr/diags/IR/bin/irsaudit` at 0x1010697c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1010697c-0x10106a88 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0x1010699c loads 4 bytes from abs 0x102bcf6c.
  The `lw` at 0x101069cc loads 4 bytes from abs 0x102bcf70.
  2 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x101069f0, `lw` at 0x10106a54.
  The `lw` at 0x10106a0c loads 4 bytes from abs 0x102bd760.
  2 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x10106a28, `lw` at 0x10106a70.
  The `jal` at 0x101069ac calls (unnamed) [0x10106a88] with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101069bc calls (unnamed) [0x10106a88] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x101069d0 calls (unnamed) [0x10106f6c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x101069fc calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10106a18 calls kt_code_chip [0x1004797c] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10106a30 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10106a60 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x10106a78 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x101069e0 targets 0x10106a50, is taken when ra(=(ret(0x10106f6c) + (ret(0x10106a88) + ret(0x10106a88)))) == 0, and falls through when ra(=(ret(0x10106f6c) + (ret(0x10106a88) + ret(0x10106a88)))) != 0.
  The `beq` branch at 0x10106a80 targets 0x10106a3c and is always taken.
  The return at 0x10106a48 has v0 = ret(kt_output_rslt).

- `TEST_xgcred` in `usr/diags/IR/bin/irsaudit` at 0x10107384 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10107384-0x10107450 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0x101073a4 loads 4 bytes from abs 0x102bcf78.
  2 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x101073c0, `lw` at 0x1010741c.
  The `lw` at 0x101073dc loads 4 bytes from abs 0x102bd760.
  2 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x101073f8, `lw` at 0x10107438.
  The `jal` at 0x101073a8 calls (unnamed) [0x10107450] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101073cc calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x101073e8 calls kt_code_chip [0x1004797c] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10107400 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10107428 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x10107440 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x101073b0 targets 0x10107418, is taken when v0(=ret(0x10107450)) == 0, and falls through when v0(=ret(0x10107450)) != 0.
  The `beq` branch at 0x10107448 targets 0x1010740c and is always taken.
  The return at 0x10107410 has v0 = ret(kt_output_rslt).

- `TEST_xgid` in `usr/diags/IR/bin/irsaudit` at 0x10107e70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10107e70-0x101081e4 (884 bytes).
  It occupies 884 bytes.
  The `lw` at 0x10107ea0 loads 4 bytes from abs 0x102bddec.
  8 such `lw` accesses load 4 bytes from abs 0x102bcf80, including `lw` at 0x10107ea4, `lw` at 0x10107ee0, `lw` at 0x10107f18.
  2 such `lw` accesses load 4 bytes from abs 0x102bd744, including `lw` at 0x10107ed8, `lw` at 0x10108074.
  The `lw` at 0x10107f08 loads 4 bytes from abs 0x102bd730.
  4 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x10107f80, `lw` at 0x10107ffc, `lw` at 0x101080ac.
  3 such `lw` accesses load 4 bytes from abs 0x102bd760, including `lw` at 0x10107f9c, `lw` at 0x10108018, `lw` at 0x10108178.
  4 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x10107fb8, `lw` at 0x10108034, `lw` at 0x101080c8.
  The `lw` at 0x10108078 loads 4 bytes from ?.
  The `jal` at 0x10107ec0 calls fcAdapPioRead32 [0x1013dd20] with a0=0x4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10107ef0 calls kt_output_dbug [0x10046d74] with a0=0x2, a1=0x101b4fe8, a2=ret(fcAdapPioRead32), a3=?.
  The `jal` at 0x10107f28 calls kt_output_info [0x10046374] with a0=0x101b4ff8, a1=?, a2=?, a3=?.
  The `jal` at 0x10107f34 calls fcAdapPioRead32 [0x1013dd20] with a0=0x64, a1=?, a2=?, a3=?.
  The `jal` at 0x10107f70 calls kt_output_info [0x10046374] with a0=0x101b5030, a1=?, a2=0x40, a3=0x80, a6=0x2.
  The `jal` at 0x10107f8c calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10107fa8 calls kt_code_chip [0x1004797c] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10107fc0 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10107fec calls kt_output_info [0x10046374] with a0=0x101b5050, a1=?, a2=?, a3=?, a6=one of 0x0, 0x1, 0x2.
  The `jal` at 0x10108008 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10108024 calls kt_code_chip [0x1004797c] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x1010803c calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1010807c calls kt_output_info [0x10046374] with a0=0x101b5090, a1=?, a2=?, a3=?, a4=0x8, a6=one of 0x0, 0x1, 0x2.
  The `jal` at 0x1010809c calls kt_output_dbug [0x10046d74] with a0=0x4, a1=0x101b50c8, a2=?, a3=?.
  The `jal` at 0x101080b8 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x101080d0 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1010814c calls kt_output_info [0x10046374] with a0=0x101b5078, a1=?, a2=0x10, a3=?, a4=0x8, a5=0x8000, a6=one of 0x0, 0x1, 0x2.
  The `jal` at 0x10108168 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10108184 calls kt_code_chip [0x1004797c] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x1010819c calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x10107f40 targets 0x101081ac, is taken when (v0(=ret(fcAdapPioRead32)) & 0xc0) == 0, and falls through when (v0(=ret(fcAdapPioRead32)) & 0xc0) != 0.
  The `beq` branch at 0x10107f4c targets 0x101081b4, is taken when a1(?) == a2(=0x40), and falls through when a1(?) != a2(=0x40).
  The `beq` branch at 0x10107f58 targets 0x10107fd0, is taken when a1(?) == a3(=0x80), and falls through when a1(?) != a3(=0x80).
  The `beq` branch at 0x10107fc8 targets 0x101080dc and is always taken.
  The `beq` branch at 0x10107fd4 targets 0x101080f4, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x10108044 targets 0x101080dc and is always taken.
  The `beq` branch at 0x101080fc targets 0x101081bc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10108108 targets 0x101081c4, is taken when a1(?) == ra(=0x30), and falls through when a1(?) != ra(=0x30).
  The `beq` branch at 0x10108114 targets 0x101081cc, is taken when a1(?) == at(=0x20), and falls through when a1(?) != at(=0x20).
  The `beq` branch at 0x10108124 targets 0x101081d4, is taken when a1(?) == v0(=0x18), and falls through when a1(?) != v0(=0x18).
  The `beq` branch at 0x1010812c targets 0x101081dc, is taken when a1(?) == a2(=0x10), and falls through when a1(?) != a2(=0x10).
  The `beq` branch at 0x10108134 targets 0x1010804c, is taken when a1(?) == a4(=0x8), and falls through when a1(?) != a4(=0x8).
  The `beq` branch at 0x101081a4 targets 0x101080dc and is always taken.
  The `beq` branch at 0x101081ac targets 0x10107fd4 and is always taken.
  The `beq` branch at 0x101081b4 targets 0x10107fd4 and is always taken.
  The `beq` branch at 0x101081bc targets 0x10108050 and is always taken.
  The `beq` branch at 0x101081c4 targets 0x10108050 and is always taken.
  The `beq` branch at 0x101081cc targets 0x10108050 and is always taken.
  The `beq` branch at 0x101081d4 targets 0x1010804c and is always taken.
  The `beq` branch at 0x101081dc targets 0x10108050 and is always taken.
  The return at 0x101080ec has v0 = ret(kt_output_rslt).

- `TEST_encfb` in `usr/diags/IR/bin/irsaudit` at 0x101082fc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x101082fc-0x1010862c (816 bytes).
  It occupies 816 bytes.
  The `lw` at 0x1010831c loads 4 bytes from a0 (arg0 at entry) +0x16c.
  The `lw` at 0x1010835c loads 4 bytes from abs 0x102bd730.
  5 such `lw` accesses load 4 bytes from abs 0x102bcf88, including `lw` at 0x10108370, `lw` at 0x10108388, `lw` at 0x10108494.
  5 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x10108384, `lw` at 0x1010856c, `lw` at 0x101085ac.
  2 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x101083a8, `lw` at 0x101083f0.
  The `lw` at 0x101083d8 loads 4 bytes from abs 0x102bddf4.
  The `lw` at 0x10108408 loads 4 bytes from abs 0x102bd458.
  The `lw` at 0x10108450 loads 4 bytes from abs 0x102bd45c.
  The `lw` at 0x10108454 loads 4 bytes from abs 0x102be77c.
  The `lw` at 0x10108464 loads 4 bytes from sym(pipeFD) +0x0.
  The `lw` at 0x10108474 loads 4 bytes from abs 0x102bd7fc.
  The `lw` at 0x10108490 loads 4 bytes from abs 0x102bd7cc.
  The `lw` at 0x101084b4 loads 4 bytes from abs 0x102bd92c.
  The `lw` at 0x101084dc loads 4 bytes from abs 0x102bd49c.
  The `lw` at 0x10108500 loads 4 bytes from abs 0x102bcf8c.
  The `lw` at 0x1010850c loads 4 bytes from abs 0x102bcf90.
  The `jal` at 0x1010836c calls kt_output_info [0x10046374] with a0=0x101b5180, a1=[a0+364], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10108390 calls kt_output_rslt [0x10045978] with a0=0x2, a1=0x101b5198, a2=?, a3=?.
  The `jal` at 0x101083b8 calls kt_code_result [0x10048068] with a0=0x2, a1=?, a2=0x1, a3=?.
  The `jal` at 0x101083ec calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jalr` at 0x10108410 calls sginap with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x1010841c calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jalr` at 0x10108460 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=?.
  The `jal` at 0x10108478 calls reset_dacs [0x10061f50] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10108498 calls kt_data_file [0x1005a128] with a0=0x101b51f0, a1=?, a2=?, a3=?.
  The `jal` at 0x101084cc calls tst_multi_voc [0x100b6c58] with a0=0x8, a1=0x1, a2=0x1, a3=ret(kt_data_file), a4=0x1, a5=0x1, a6=0x0, a7=-0x1.
  The `jalr` at 0x101084e4 calls sleep with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10108518 calls (unnamed) [0x1010862c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10108524 calls (unnamed) [0x1010931c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1010855c calls kt_code_result [0x10048068] with a0=0x3, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10108574 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x101085b8 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b51b8, a2=?, a3=?.
  The `jal` at 0x101085d8 calls kt_code_result [0x10048068] with a0=0x3, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x101085f0 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1010861c calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b51d0, a2=?, a3=?.
  The `beq` branch at 0x1010833c targets 0x101083a0, is taken when s2(=[a0+364]) == at(=0x1), and falls through when s2(=[a0+364]) != at(=0x1).
  The `beq` branch at 0x10108348 targets 0x101083a0, is taken when s2(=[a0+364]) == a0(=0x2), and falls through when s2(=[a0+364]) != a0(=0x2).
  The `beq` branch at 0x10108350 targets 0x101083a0, is taken when s2(=[a0+364]) == v0(=0x4), and falls through when s2(=[a0+364]) != v0(=0x4).
  The `beq` branch at 0x10108398 targets 0x10108580 and is always taken.
  The `blez` branch at 0x101083a0 targets 0x101083d0, is taken when s2(=[a0+364]) <= 0 (signed), and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` branch at 0x101083c8 targets 0x101083b0, is taken when s0(?) < s2(=[a0+364]) (signed), and falls through when s0(?) >= s2(=[a0+364]) (signed).
  The `beq` branch at 0x101083f4 targets 0x10108444, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` branch at 0x10108424 targets 0x10108434, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` branch at 0x10108430 targets 0x1010840c, is taken when s0(?) < 0x5 (unsigned), and falls through when s0(?) >= 0x5 (unsigned).
  The `beq` branch at 0x10108438 targets 0x101085a0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bltz` branch at 0x10108468 targets 0x10108600, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `bne` branch at 0x10108538 targets 0x10108510, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `beq` branch at 0x10108540 targets 0x101085c8, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x101085c0 targets 0x10108580 and is always taken.
  The `beq` branch at 0x101085f8 targets 0x10108580 and is always taken.
  The `beq` branch at 0x10108624 targets 0x10108580 and is always taken.
  The return at 0x10108598 has v0 = ret(kt_output_rslt).

- `TEST_framebuf1` in `usr/diags/IR/bin/irsaudit` at 0x10109430 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10109430-0x101098b8 (1160 bytes).
  It occupies 1160 bytes.
  The `lw` at 0x10109440 loads 4 bytes from a0 (arg0 at entry) +0x16c.
  4 such `lw` accesses load 4 bytes from abs 0x102bd730, including `lw` at 0x10109484, `lw` at 0x10109654, `lw` at 0x1010967c.
  11 such `lw` accesses load 4 bytes from abs 0x102bcf98, including `lw` at 0x10109498, `lw` at 0x101094b0, `lw` at 0x1010965c.
  4 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x101094ac, `lw` at 0x101095d0, `lw` at 0x101096c0.
  The `lw` at 0x101094f4 loads 4 bytes from abs 0x102bd764.
  The `lw` at 0x10109524 loads 4 bytes from abs 0x102be1e0.
  2 such `lw` accesses load 4 bytes from sym(KONAINFO) +0x0, including `lw` at 0x10109528, `lw` at 0x10109888.
  2 such `lw` accesses load 4 bytes from [sym(KONAINFO)] +0x0, including `lw` at 0x1010952c, `lw` at 0x10109890.
  The `lw` at 0x10109550 loads 4 bytes from abs 0x102be20c.
  The `lw` at 0x10109554 loads 4 bytes from sym(SET_HUB_WAR) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x102be448, including `lw` at 0x1010955c, `lw` at 0x1010979c.
  2 such `sw` accesses store 4 bytes to sym(HUB_WAR) +0x0, including `sw` at 0x10109560, `sw` at 0x101097a4.
  The `lw` at 0x1010956c loads 4 bytes from abs 0x102bddf4.
  The `lw` at 0x10109590 loads 4 bytes from abs 0x102bd458.
  2 such `lw` accesses load 4 bytes from abs 0x102bd45c, including `lw` at 0x101095e8, `lw` at 0x1010977c.
  The `lw` at 0x101095f0 loads 4 bytes from abs 0x102bcf9c.
  2 such `lw` accesses load 4 bytes from abs 0x102be77c, including `lw` at 0x101095f4, `lw` at 0x10109780.
  The `sw` at 0x10109600 stores 4 bytes to abs 0x10344abc.
  2 such `lw` accesses load 4 bytes from sym(pipeFD) +0x0, including `lw` at 0x1010960c, `lw` at 0x10109790.
  The `lw` at 0x1010961c loads 4 bytes from abs 0x102be488.
  The `lw` at 0x10109620 loads 4 bytes from sym(Nocrc) +0x0.
  The `lw` at 0x10109634 loads 4 bytes from abs 0x102bcfa0.
  The `lw` at 0x101096f0 loads 4 bytes from abs 0x102bcfa4.
  The `lw` at 0x10109748 loads 4 bytes from abs 0x102bde1c.
  The `lw` at 0x101097e0 loads 4 bytes from abs 0x102bd584.
  2 such `lw` accesses load 4 bytes from abs 0x102bcfa8, including `lw` at 0x101097e4, `lw` at 0x10109850.
  The `lw` at 0x10109860 loads 4 bytes from abs 0x102bd744.
  The `sd` at 0x10109874 stores 8 bytes to abs 0x1020c890.
  The `sd` at 0x10109884 stores 8 bytes to abs 0x1020c898.
  The `jal` at 0x10109494 calls kt_output_info [0x10046374] with a0=0x101b52a0, a1=[a0+364], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101094b8 calls kt_output_rslt [0x10045978] with a0=0x2, a1=0x101b52b8, a2=?, a3=?.
  The `jal` at 0x10109504 calls kt_code_result [0x10048068] with a0=0x2, a1=?, a2=0x1, a3=?.
  The `jal` at 0x10109574 calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=0x102c4340, a2=?, a3=0x0.
  The `jalr` at 0x10109598 calls sginap with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x101095a4 calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jalr` at 0x10109608 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=?.
  The `jal` at 0x10109638 calls (unnamed) [0x101098b8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10109664 calls kt_output_info [0x10046374] with a0=0x101b5378, a1=?, a2=?, a3=?.
  The `jal` at 0x10109690 calls kt_output_info [0x10046374] with a0=0x101b52a0, a1=[a0+364], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101096a8 calls kt_output_info [0x10046374] with a0=0x101b52d8, a1=?, a2=?, a3=?.
  The `jal` at 0x101096cc calls kt_output_rslt [0x10045978] with a0=0x2, a1=0x101b52b8, a2=?, a3=?.
  The `jal` at 0x101096f4 calls (unnamed) [0x1010999c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10109710 calls kt_output_info [0x10046374] with a0=0x101b5390, a1=?, a2=?, a3=?.
  The `jal` at 0x10109738 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b53a8, a2=?, a3=?.
  The `jal` at 0x10109754 calls tbRegWrite [0x1013eb3c] with a0=0x140f, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10109764 calls tbRegWrite [0x1013eb3c] with a0=0x1410, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1010978c calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=?.
  The `jal` at 0x101097c4 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b5340, a2=?, a3=?.
  The `jal` at 0x101097ec calls run_crc_testlist [0x1001d0dc] with a0=0x1020c8a0, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10109804 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10109818 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1010982c calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10109880 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b5300, a2=?, a3=?.
  The `jal` at 0x101098a8 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b5358, a2=?, a3=?.
  The `beq` branch at 0x10109460 targets 0x101094e0, is taken when s2(=[a0+364]) == a1(=0x1), and falls through when s2(=[a0+364]) != a1(=0x1).
  The `beq` branch at 0x1010946c targets 0x10109678, is taken when s2(=[a0+364]) == v0(=0x2), and falls through when s2(=[a0+364]) != v0(=0x2).
  The `beq` branch at 0x10109478 targets 0x10109674, is taken when s2(=[a0+364]) == v1(=0x4), and falls through when s2(=[a0+364]) != v1(=0x4).
  The `blez` branch at 0x101094e0 targets 0x10109520, is taken when s2(=[a0+364]) <= 0 (signed), and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` branch at 0x10109514 targets 0x101094fc, is taken when s0(?) < s2(=[a0+364]) (signed), and falls through when s0(?) >= s2(=[a0+364]) (signed).
  The `beq` branch at 0x10109534 targets 0x1010983c, is taken when a0(=[[sym(KONAINFO)]]) == t9(=0x6), and falls through when a0(=[[sym(KONAINFO)]]) != t9(=0x6).
  The `beq` branch at 0x10109540 targets 0x10109564, is taken when a0(=[[sym(KONAINFO)]]) == 0, and falls through when a0(=[[sym(KONAINFO)]]) != 0.
  The `beq` branch at 0x10109558 targets 0x10109564, is taken when t8(=[sym(SET_HUB_WAR)]) == 0, and falls through when t8(=[sym(SET_HUB_WAR)]) != 0.
  The `beq` branch at 0x1010957c targets 0x101095cc, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` branch at 0x101095ac targets 0x101095bc, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` branch at 0x101095b8 targets 0x10109594, is taken when s0(?) < 0x5 (unsigned), and falls through when s0(?) >= 0x5 (unsigned).
  The `beq` branch at 0x101095c0 targets 0x101097a8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bltz` branch at 0x10109610 targets 0x10109894, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x10109624 targets 0x101097d4, is taken when t8(=[sym(Nocrc)]) == 0, and falls through when t8(=[sym(Nocrc)]) != 0.
  The `beq` branch at 0x10109640 targets 0x101096dc, is taken when v0(=ret(0x101098b8)) == 0, and falls through when v0(=ret(0x101098b8)) != 0.
  The `beq` branch at 0x1010966c targets 0x101096e8 and is always taken.
  The `beq` branch at 0x101096d4 targets 0x101094c4 and is always taken.
  The `beq` branch at 0x101096fc targets 0x1010971c, is taken when v0(=ret(0x1010999c)) == 0, and falls through when v0(=ret(0x1010999c)) != 0.
  The `beq` branch at 0x1010971c targets 0x10109814, is taken when s2(=one of 0x0, 0x1, 0x2) == 0, and falls through when s2(=one of 0x0, 0x1, 0x2) != 0.
  The `beq` branch at 0x101097a0 targets 0x101094c0 and is always taken.
  The `beq` branch at 0x101097cc targets 0x101095d8 and is always taken.
  The `bne` branch at 0x101097f4 targets 0x10109828, is taken when v0(=ret(run_crc_testlist)) != 0, and falls through when v0(=ret(run_crc_testlist)) == 0.
  The `beq` branch at 0x1010980c targets 0x10109744 and is always taken.
  The `beq` branch at 0x10109820 targets 0x10109744 and is always taken.
  The `beq` branch at 0x10109834 targets 0x10109744 and is always taken.
  The `beq` branch at 0x1010988c targets 0x10109538 and is always taken.
  The `beq` branch at 0x101098b0 targets 0x101094c4 and is always taken.
  The return at 0x101094d8 has v0 = one of ?, ret(kt_output_rslt).

- `TEST_fog` in `usr/diags/IR/bin/irsaudit` at 0x1010c09c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1010c09c-0x1010c44c (944 bytes).
  It occupies 944 bytes.
  The `lw` at 0x1010c0ac loads 4 bytes from a0 (arg0 at entry) +0x16c.
  The `lw` at 0x1010c0dc loads 4 bytes from abs 0x102bd730.
  8 such `lw` accesses load 4 bytes from abs 0x102bcfd8, including `lw` at 0x1010c0f4, `lw` at 0x1010c104, `lw` at 0x1010c124.
  4 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x1010c120, `lw` at 0x1010c33c, `lw` at 0x1010c38c.
  The `lw` at 0x1010c144 loads 4 bytes from abs 0x102be1e0.
  The `lw` at 0x1010c148 loads 4 bytes from sym(KONAINFO) +0x0.
  The `lw` at 0x1010c14c loads 4 bytes from [sym(KONAINFO)] +0x0.
  The `lw` at 0x1010c170 loads 4 bytes from abs 0x102bd764.
  The `lw` at 0x1010c1a0 loads 4 bytes from abs 0x102bddf4.
  The `lw` at 0x1010c1c0 loads 4 bytes from abs 0x102bd458.
  The `lw` at 0x1010c204 loads 4 bytes from abs 0x102bd45c.
  The `lw` at 0x1010c20c loads 4 bytes from abs 0x102be77c.
  2 such `lw` accesses load 4 bytes from sym(pipeFD) +0x0, including `lw` at 0x1010c220, `lw` at 0x1010c354.
  The `lw` at 0x1010c238 loads 4 bytes from abs 0x102bd7c4.
  The `lw` at 0x1010c25c loads 4 bytes from abs 0x102bd7fc.
  The `lw` at 0x1010c278 loads 4 bytes from abs 0x102bd7cc.
  The `lw` at 0x1010c298 loads 4 bytes from abs 0x102bd92c.
  The `lw` at 0x1010c2f8 loads 4 bytes from abs 0x102bd49c.
  The `lw` at 0x1010c30c loads 4 bytes from abs 0x102be488.
  The `lw` at 0x1010c310 loads 4 bytes from sym(Nocrc) +0x0.
  The `lw` at 0x1010c324 loads 4 bytes from abs 0x102bdc0c.
  The `lw` at 0x1010c3b4 loads 4 bytes from abs 0x102bd584.
  2 such `lw` accesses load 4 bytes from abs 0x102bcfdc, including `lw` at 0x1010c3b8, `lw` at 0x1010c40c.
  The `lw` at 0x1010c41c loads 4 bytes from abs 0x102bd744.
  The `sd` at 0x1010c434 stores 8 bytes to abs 0x1020c920.
  The `sd` at 0x1010c440 stores 8 bytes to abs 0x1020c928.
  The `jal` at 0x1010c0f0 calls kt_output_info [0x10046374] with a0=0x101b5930, a1=[a0+364], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1010c108 calls kt_output_info [0x10046374] with a0=0x101b5948, a1=?, a2=?, a3=?.
  The `jal` at 0x1010c12c calls kt_output_rslt [0x10045978] with a0=0x2, a1=0x101b5970, a2=?, a3=?.
  The `jal` at 0x1010c180 calls kt_code_result [0x10048068] with a0=0x2, a1=?, a2=0x1, a3=?.
  The `jal` at 0x1010c1a8 calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jalr` at 0x1010c1c8 calls sginap with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x1010c1d4 calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jalr` at 0x1010c21c calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=?.
  The `jal` at 0x1010c244 calls hash_value [0x10059f54] with a0=0x101b5a08, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1010c260 calls reset_dacs [0x10061f50] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1010c280 calls kt_data_file [0x1005a128] with a0=0x101b5a10, a1=?, a2=?, a3=?.
  The `jal` at 0x1010c2bc calls tst_multi_voc [0x100b6c58] with a0=0x8, a1=0x1, a2=0x1, a3=ret(kt_data_file), a4=0x1, a5=0x0, a6=0x0, a7=-0x1.
  The `jal` at 0x1010c2e8 calls tst_multi_voc [0x100b6c58] with a0=0x8, a1=0x1, a2=0x0, a3=?, a4=0x1, a5=0x1, a6=0x0, a7=-0x1.
  The `jalr` at 0x1010c2fc calls sleep with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1010c328 calls fog [0x1010c994] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1010c344 calls kt_output_rslt [0x10045978] with a0=?, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1010c358 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=?.
  The `jal` at 0x1010c398 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b59d0, a2=?, a3=?.
  The `jal` at 0x1010c3c0 calls run_crc_testlist [0x1001d0dc] with a0=0x1020c930, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1010c3ec calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b59e8, a2=?, a3=?.
  The `jal` at 0x1010c43c calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b5990, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1010c0cc targets 0x1010c13c, is taken when s2(=[a0+364]) == at(=0x1), and falls through when s2(=[a0+364]) != at(=0x1).
  The `beq` branch at 0x1010c134 targets 0x1010c364 and is always taken.
  The `beq` branch at 0x1010c154 targets 0x1010c3fc, is taken when ra(=[[sym(KONAINFO)]]) == at(=0x6), and falls through when ra(=[[sym(KONAINFO)]]) != at(=0x6).
  The `blez` branch at 0x1010c15c targets 0x1010c19c, is taken when s2(=[a0+364]) <= 0 (signed), and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` branch at 0x1010c190 targets 0x1010c178, is taken when s0(?) < s2(=[a0+364]) (signed), and falls through when s0(?) >= s2(=[a0+364]) (signed).
  The `beq` branch at 0x1010c1b0 targets 0x1010c1f8, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` branch at 0x1010c1dc targets 0x1010c1ec, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` branch at 0x1010c1e8 targets 0x1010c1c4, is taken when s0(?) < 0x5 (signed), and falls through when s0(?) >= 0x5 (signed).
  The `beq` branch at 0x1010c1f0 targets 0x1010c380, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bltz` branch at 0x1010c224 targets 0x1010c3d0, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x1010c24c targets 0x1010c308, is taken when v0(=ret(hash_value)) == 0, and falls through when v0(=ret(hash_value)) != 0.
  The `beq` branch at 0x1010c314 targets 0x1010c3a8, is taken when ra(=[sym(Nocrc)]) == 0, and falls through when ra(=[sym(Nocrc)]) != 0.
  The `beq` branch at 0x1010c3a0 targets 0x1010c364 and is always taken.
  The `beq` branch at 0x1010c3c8 targets 0x1010c334 and is always taken.
  The `beq` branch at 0x1010c3f4 targets 0x1010c364 and is always taken.
  The `beq` branch at 0x1010c444 targets 0x1010c15c and is always taken.
  The return at 0x1010c378 has v0 = one of ret(kt_output_rslt), ret(ioctl).

- `TEST_imp9mem` in `usr/diags/IR/bin/irsaudit` at 0x10111444 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10111444-0x10111808 (964 bytes).
  It occupies 964 bytes.
  The `lw` at 0x10111464 loads 4 bytes from abs 0x102be1e0.
  The `lw` at 0x10111468 loads 4 bytes from a0 (arg0 at entry) +0x16c.
  The `lw` at 0x1011146c loads 4 bytes from sym(KONAINFO) +0x0.
  The `lw` at 0x10111474 loads 4 bytes from [sym(KONAINFO)] +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x102bd730, including `lw` at 0x10111498, `lw` at 0x10111508, `lw` at 0x101117a8.
  7 such `lw` accesses load 4 bytes from abs 0x102bd054, including `lw` at 0x101114a8, `lw` at 0x101114c0, `lw` at 0x1011150c.
  7 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x101114bc, `lw` at 0x1011152c, `lw` at 0x101116e8.
  The `lw` at 0x1011155c loads 4 bytes from abs 0x102bd764.
  The `lw` at 0x1011158c loads 4 bytes from abs 0x102bddf4.
  The `lw` at 0x101115ac loads 4 bytes from abs 0x102bd458.
  The `lw` at 0x101115f0 loads 4 bytes from abs 0x102bd45c.
  The `lw` at 0x101115f8 loads 4 bytes from abs 0x102be77c.
  3 such `lw` accesses load 4 bytes from sym(pipeFD) +0x0, including `lw` at 0x1011160c, `lw` at 0x1011166c, `lw` at 0x10111700.
  The `lw` at 0x1011161c loads 4 bytes from abs 0x102bd3c8.
  The `lw` at 0x10111630 loads 4 bytes from abs 0x102bd378.
  The `lw` at 0x10111650 loads 4 bytes from abs 0x102bd4b8.
  The `lw` at 0x10111654 loads 4 bytes from abs 0x102bd058.
  The `sw` at 0x10111664 stores 4 bytes to abs 0x10345410.
  The `lw` at 0x10111674 loads 4 bytes from abs 0x102be6ac.
  4 such `lw` accesses load 4 bytes from abs 0x10345410, including `lw` at 0x10111678, `lw` at 0x1011171c, `lw` at 0x10111738.
  The `sw` at 0x1011167c stores 4 bytes to sym(map_diag) +0x0.
  The `sw` at 0x10111688 stores 4 bytes to sym(map_diag) +0x4.
  The `sw` at 0x10111690 stores 4 bytes to sym(map_diag) +0xc.
  The `sw` at 0x1011169c stores 4 bytes to sym(map_diag) +0x8.
  The `lw` at 0x101116ac loads 4 bytes from abs 0x102bd05c.
  The `lw` at 0x101116c0 loads 4 bytes from abs 0x102bd060.
  The `lw` at 0x10111714 loads 4 bytes from abs 0x102bd64c.
  2 such `lw` accesses load 4 bytes from abs 0x102bd420, including `lw` at 0x10111730, `lw` at 0x101117c0.
  The `jal` at 0x101114a4 calls kt_output_info [0x10046374] with a0=0x101b5ac0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101114c8 calls kt_output_rslt [0x10045978] with a0=0x2, a1=0x101b5ae8, a2=?, a3=?.
  The `jal` at 0x10111514 calls kt_output_info [0x10046374] with a0=0x101b5b08, a1=[a0+364], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10111538 calls kt_output_rslt [0x10045978] with a0=0x2, a1=0x101b5b40, a2=?, a3=?.
  The `jal` at 0x1011156c calls kt_code_result [0x10048068] with a0=0x2, a1=?, a2=0x1, a3=?.
  The `jal` at 0x10111594 calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jalr` at 0x101115b4 calls sginap with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x101115c0 calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jalr` at 0x10111608 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=?.
  The `jalr` at 0x10111620 calls getpagesize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10111638 calls memalign with a0=ret(getpagesize), a1=0x280, a2=?, a3=?.
  The `jalr` at 0x10111660 calls bzero with a0=ret(memalign), a1=0x280, a2=?, a3=?.
  The `jalr` at 0x10111698 calls ioctl with a0=[sym(pipeFD)], a1=0x2774, a2=sym(map_diag), a3=?.
  The `jal` at 0x101116b0 calls (unnamed) [0x10111808] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x101116c8 calls (unnamed) [0x101119e8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x101116f0 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10111704 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=?.
  The `jal` at 0x10111720 calls destroy_map_diag [0x10037218] with a0=0x0, a1=[0x10345410], a2=0x1, a3=?.
  The `jalr` at 0x10111734 calls free with a0=[0x10345410], a1=?, a2=?, a3=?.
  The `jal` at 0x1011175c calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b5b60, a2=?, a3=?.
  The `jal` at 0x10111788 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101b5b78, a2=?, a3=?.
  The `jal` at 0x101117b0 calls kt_output_info [0x10046374] with a0=0x101b5b98, a1=?, a2=?, a3=?.
  The `jalr` at 0x101117c4 calls free with a0=[0x10345410], a1=?, a2=?, a3=?.
  The `jal` at 0x101117dc calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x101117f8 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x10111488 targets 0x101114f0, is taken when at(=[[sym(KONAINFO)]]) == v0(=0x2), and falls through when at(=[[sym(KONAINFO)]]) != v0(=0x2).
  The `beq` branch at 0x101114f4 targets 0x10111548, is taken when s2(=[a0+364]) == ra(=0x1), and falls through when s2(=[a0+364]) != ra(=0x1).
  The `beq` branch at 0x10111540 targets 0x101114d4 and is always taken.
  The `blez` branch at 0x10111548 targets 0x10111588, is taken when s2(=[a0+364]) <= 0 (signed), and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` branch at 0x1011157c targets 0x10111564, is taken when s0(?) < s2(=[a0+364]) (signed), and falls through when s0(?) >= s2(=[a0+364]) (signed).
  The `beq` branch at 0x1011159c targets 0x101115e4, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` branch at 0x101115c8 targets 0x101115d8, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` branch at 0x101115d4 targets 0x101115b0, is taken when s0(?) < 0x5 (unsigned), and falls through when s0(?) >= 0x5 (unsigned).
  The `beq` branch at 0x101115dc targets 0x10111744, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bltz` branch at 0x10111610 targets 0x1011176c, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `bltz` branch at 0x101116a0 targets 0x10111798, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x101116d8 targets 0x101117ec, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x1011173c targets 0x101114d4 and is always taken.
  The `beq` branch at 0x10111764 targets 0x101114d4 and is always taken.
  The `beq` branch at 0x10111790 targets 0x101114d4 and is always taken.
  The `beq` branch at 0x101117e4 targets 0x101114d4 and is always taken.
  The `beq` branch at 0x10111800 targets 0x101116f8 and is always taken.
  The return at 0x101114e8 has v0 = one of ret(kt_output_rslt), ret(free).

- `TEST_gvo_lut` in `usr/diags/IR/bin/irsaudit` at 0x1011b408 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1011b408-0x1011b8b4 (1196 bytes).
  It occupies 1196 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x102be6c0, including `lw` at 0x1011b424, `lw` at 0x1011b470.
  2 such `lw` accesses load 4 bytes from sym(xilinx_loaded) +0x0, including `lw` at 0x1011b42c, `lw` at 0x1011b474.
  2 such `lw` accesses load 4 bytes from abs 0x102bd744, including `lw` at 0x1011b44c, `lw` at 0x1011b588.
  15 such `lw` accesses load 4 bytes from abs 0x102bd0c4, including `lw` at 0x1011b464, `lw` at 0x1011b510, `lw` at 0x1011b54c.
  The `lw` at 0x1011b488 loads 4 bytes from abs 0x102bdc58.
  2 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x1011b4b8, `lw` at 0x1011b590.
  2 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x1011b4d4, `lw` at 0x1011b5ac.
  4 such `lw` accesses load 4 bytes from abs 0x102bd730, including `lw` at 0x1011b50c, `lw` at 0x1011b708, `lw` at 0x1011b7fc.
  3 such `lw` accesses load 4 bytes from abs 0x102bdea0, including `lw` at 0x1011b528, `lw` at 0x1011b5e4, `lw` at 0x1011b6a0.
  The `lw` at 0x1011b570 loads 4 bytes from abs 0x102bdc5c.
  The `lw` at 0x1011b5cc loads 4 bytes from abs 0x102bdea8.
  The `lw` at 0x1011b6e8 loads 4 bytes from abs 0x102bdc9c.
  The `lw` at 0x1011b72c loads 4 bytes from abs 0x102bdc98.
  The `lw` at 0x1011b764 loads 4 bytes from abs 0x102bdc90.
  The `lw` at 0x1011b79c loads 4 bytes from abs 0x102bdc94.
  The `jal` at 0x1011b460 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b93b8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011b48c calls dgo_reset [0x101195bc] with a0=?, a1=?, a2=[sym(xilinx_loaded)], a3=?.
  The `jal` at 0x1011b4c4 calls kt_code_result [0x10048068] with a0=0x4, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x1011b4dc calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1011b514 calls kt_output_info [0x10046374] with a0=0x101b93e8, a1=?, a2=[sym(xilinx_loaded)], a3=?.
  The `jal` at 0x1011b534 calls vcWrite [0x1014071c] with a0=0xc006, a1=?, a2=?, a3=?.
  The `jal` at 0x1011b558 calls kt_output_dbug [0x10046d74] with a0=0x5, a1=0x101b95b8, a2=?, a3=0xc006.
  The `jal` at 0x1011b574 calls dgo_loadXilinx_reset [0x10119708] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011b59c calls kt_code_result [0x10048068] with a0=0x4, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x1011b5b4 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1011b5d4 calls vcRead [0x10140bac] with a0=0xc006, a1=?, a2=?, a3=?.
  The `jal` at 0x1011b5f4 calls vcWrite [0x1014071c] with a0=0xc006, a1=(ret(vcRead) | 0x180), a2=?, a3=?.
  The `jal` at 0x1011b618 calls kt_output_dbug [0x10046d74] with a0=0x5, a1=0x101b95b8, a2=?, a3=0xc006.
  The `jal` at 0x1011b63c calls vcRead [0x10140bac] with a0=0xc006, a1=?, a2=?, a3=?.
  The `jal` at 0x1011b664 calls kt_output_dbug [0x10046d74] with a0=0x7, a1=0x101b95d8, a2=ret(vcRead), a3=0xc006.
  The `jal` at 0x1011b68c calls vcRead [0x10140bac] with a0=0xc006, a1=?, a2=?, a3=?, a4=0x186a0.
  The `jal` at 0x1011b6b4 calls vcWrite [0x1014071c] with a0=0xc006, a1=?, a2=?, a3=?.
  The `jal` at 0x1011b6d8 calls kt_output_dbug [0x10046d74] with a0=0x5, a1=0x101b95b8, a2=?, a3=0xc006.
  The `jal` at 0x1011b6ec calls dgo_gamma_lut_dbus_test [0x1011dcc0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1011b71c calls kt_output_info [0x10046374] with a0=0x101b9628, a1=ret(dgo_gamma_lut_dbus_test), a2=?, a3=?.
  The `jal` at 0x1011b730 calls dgo_gamma_lut_abus_test [0x1011d5bc] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1011b754 calls kt_output_info [0x10046374] with a0=0x101b96a0, a1=ret(dgo_gamma_lut_abus_test), a2=?, a3=?.
  The `jal` at 0x1011b768 calls dgo_gamma_lut_cell_test [0x1011cd2c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1011b78c calls kt_output_info [0x10046374] with a0=0x101b9720, a1=ret(dgo_gamma_lut_cell_test), a2=?, a3=?.
  The `jal` at 0x1011b7a0 calls dgo_gamma_lut_funky_cell_test [0x1011d094] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1011b7c4 calls kt_output_info [0x10046374] with a0=0x101b9798, a1=ret(dgo_gamma_lut_funky_cell_test), a2=?, a3=?.
  The `jal` at 0x1011b80c calls kt_output_info [0x10046374] with a0=0x101b95f8, a1=?, a2=?, a3=?, a4=0x186a0.
  The `jal` at 0x1011b830 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b9668, a2=?, a3=?.
  The `jal` at 0x1011b85c calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b96e0, a2=?, a3=?.
  The `jal` at 0x1011b880 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b9760, a2=?, a3=?.
  The `jal` at 0x1011b8a4 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b97d8, a2=?, a3=?.
  The `beq` branch at 0x1011b43c targets 0x1011b568, is taken when at(=[sym(xilinx_loaded)]) == 0, and falls through when at(=[sym(xilinx_loaded)]) != 0.
  The `beq` branch at 0x1011b478 targets 0x1011b500, is taken when a2(=[sym(xilinx_loaded)]) == 0, and falls through when a2(=[sym(xilinx_loaded)]) != 0.
  The `beq` branch at 0x1011b494 targets 0x1011b5c4, is taken when v0(=ret(dgo_reset)) == 0, and falls through when v0(=ret(dgo_reset)) != 0.
  The `beq` branch at 0x1011b4a0 targets 0x1011b524, is taken when s2(=one of 0x0, 0x1) == 0, and falls through when s2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1011b4a8 targets 0x1011b58c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1011b560 targets 0x1011b4a8 and is always taken.
  The `beq` branch at 0x1011b584 targets 0x1011b468 and is always taken.
  The `beq` branch at 0x1011b5bc targets 0x1011b4e8 and is always taken.
  The `beq` branch at 0x1011b620 targets 0x1011b638 and is always taken.
  The `beq` branch at 0x1011b630 targets 0x1011b684, is taken when v0(?) >= a4(=0x186a0) (signed), and falls through when v0(?) < a4(=0x186a0) (signed).
  The `bne` branch at 0x1011b67c targets 0x1011b628, is taken when a2(?) != a3(?), and falls through when a2(?) == a3(?).
  The `beq` branch at 0x1011b684 targets 0x1011b7ec, is taken when v0(?) == a4(=0x186a0), and falls through when v0(?) != a4(=0x186a0).
  The `beq` branch at 0x1011b6f4 targets 0x1011b81c, is taken when v0(=ret(dgo_gamma_lut_dbus_test)) == 0, and falls through when v0(=ret(dgo_gamma_lut_dbus_test)) != 0.
  The `beq` branch at 0x1011b738 targets 0x1011b848, is taken when v0(=ret(dgo_gamma_lut_abus_test)) == 0, and falls through when v0(=ret(dgo_gamma_lut_abus_test)) != 0.
  The `beq` branch at 0x1011b770 targets 0x1011b86c, is taken when v0(=ret(dgo_gamma_lut_cell_test)) == 0, and falls through when v0(=ret(dgo_gamma_lut_cell_test)) != 0.
  The `beq` branch at 0x1011b7a8 targets 0x1011b890, is taken when v0(=ret(dgo_gamma_lut_funky_cell_test)) == 0, and falls through when v0(=ret(dgo_gamma_lut_funky_cell_test)) != 0.
  The `beq` branch at 0x1011b7e4 targets 0x1011b4a0 and is always taken.
  The `beq` branch at 0x1011b814 targets 0x1011b4a0 and is always taken.
  The `beq` branch at 0x1011b840 targets 0x1011b724 and is always taken.
  The `beq` branch at 0x1011b864 targets 0x1011b760 and is always taken.
  The `beq` branch at 0x1011b888 targets 0x1011b798 and is always taken.
  The `beq` branch at 0x1011b8ac targets 0x1011b7d0 and is always taken.
  The return at 0x1011b4f8 has v0 = ret(kt_output_rslt).

- `TEST_gvo_status` in `usr/diags/IR/bin/irsaudit` at 0x1011b8b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1011b8b4-0x1011ba00 (332 bytes).
  It occupies 332 bytes.
  The `lw` at 0x1011b8d8 loads 4 bytes from abs 0x102bd730.
  3 such `lw` accesses load 4 bytes from abs 0x102bd0c4, including `lw` at 0x1011b8e0, `lw` at 0x1011b920, `lw` at 0x1011b94c.
  The `lw` at 0x1011b8fc loads 4 bytes from abs 0x102bdc4c.
  The `lw` at 0x1011b934 loads 4 bytes from abs 0x102bdc54.
  The `lw` at 0x1011b960 loads 4 bytes from abs 0x102bdc60.
  2 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x1011b978, `lw` at 0x1011b9cc.
  2 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x1011b994, `lw` at 0x1011b9e8.
  The `jal` at 0x1011b8ec calls kt_output_info [0x10046374] with a0=0x101b9810, a1=0x1a8a8c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011b900 calls dgo_status [0x10118f6c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1011b924 calls kt_output_info [0x10046374] with a0=0x101b9820, a1=?, a2=?, a3=?.
  The `jal` at 0x1011b938 calls dgo_genlock [0x101193e4] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1011b950 calls kt_output_info [0x10046374] with a0=0x101b9830, a1=?, a2=?, a3=?.
  The `jal` at 0x1011b964 calls dgo_csc_status [0x10119824] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1011b984 calls kt_code_result [0x10048068] with a0=0x4, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x1011b99c calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1011b9d8 calls kt_code_result [0x10048068] with a0=0x4, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x1011b9f0 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x1011b908 targets 0x1011b9bc, is taken when v0(=ret(dgo_status)) == 0, and falls through when v0(=ret(dgo_status)) != 0.
  The `beq` branch at 0x1011b96c targets 0x1011b9c4, is taken when s1(=one of 0x0, 0x1) == 0, and falls through when s1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1011b9bc targets 0x1011b914 and is always taken.
  The `beq` branch at 0x1011b9f8 targets 0x1011b9a8 and is always taken.
  The return at 0x1011b9b4 has v0 = ret(kt_output_rslt).

- `TEST_gvo_genlock` in `usr/diags/IR/bin/irsaudit` at 0x1011bb5c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1011bb5c-0x1011bcb8 (348 bytes).
  It occupies 348 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x102be6c0, including `lw` at 0x1011bb78, `lw` at 0x1011bbb0.
  2 such `lw` accesses load 4 bytes from sym(xilinx_loaded) +0x0, including `lw` at 0x1011bb7c, `lw` at 0x1011bbb4.
  The `lw` at 0x1011bb90 loads 4 bytes from abs 0x102bd744.
  3 such `lw` accesses load 4 bytes from abs 0x102bd0c4, including `lw` at 0x1011bba4, `lw` at 0x1011bbd4, `lw` at 0x1011bc6c.
  2 such `lw` accesses load 4 bytes from abs 0x102bd730, including `lw` at 0x1011bbd0, `lw` at 0x1011bc68.
  The `lw` at 0x1011bbe8 loads 4 bytes from abs 0x102bdc88.
  2 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x1011bc04, `lw` at 0x1011bc84.
  2 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x1011bc20, `lw` at 0x1011bca0.
  The `lw` at 0x1011bc48 loads 4 bytes from abs 0x102bdc5c.
  The `jal` at 0x1011bba0 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b93b8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011bbd8 calls kt_output_info [0x10046374] with a0=0x101b9858, a1=?, a2=?, a3=?.
  The `jal` at 0x1011bbec calls dgo_genlock_test [0x1011ac80] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1011bc10 calls kt_code_result [0x10048068] with a0=0x4, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x1011bc28 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1011bc4c calls dgo_loadXilinx_reset [0x10119708] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011bc70 calls kt_output_info [0x10046374] with a0=0x101b93e8, a1=?, a2=?, a3=?.
  The `jal` at 0x1011bc90 calls kt_code_result [0x10048068] with a0=0x4, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x1011bca8 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x1011bb80 targets 0x1011bc40, is taken when at(=[sym(xilinx_loaded)]) == 0, and falls through when at(=[sym(xilinx_loaded)]) != 0.
  The `beq` branch at 0x1011bbb8 targets 0x1011bc5c, is taken when ra(=[sym(xilinx_loaded)]) == 0, and falls through when ra(=[sym(xilinx_loaded)]) != 0.
  The `beq` branch at 0x1011bbf4 targets 0x1011bc80, is taken when v0(=ret(dgo_genlock_test)) == 0, and falls through when v0(=ret(dgo_genlock_test)) != 0.
  The `beq` branch at 0x1011bc54 targets 0x1011bbac and is always taken.
  The `beq` branch at 0x1011bc78 targets 0x1011bc00 and is always taken.
  The `beq` branch at 0x1011bcb0 targets 0x1011bc34 and is always taken.
  The return at 0x1011bc38 has v0 = ret(kt_output_rslt).

- `TEST_gvo_lsb` in `usr/diags/IR/bin/irsaudit` at 0x1011bcb8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1011bcb8-0x1011be18 (352 bytes).
  It occupies 352 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x102be6c0, including `lw` at 0x1011bcd4, `lw` at 0x1011bd10.
  2 such `lw` accesses load 4 bytes from sym(xilinx_loaded) +0x0, including `lw` at 0x1011bcd8, `lw` at 0x1011bd14.
  The `lw` at 0x1011bcf0 loads 4 bytes from abs 0x102bd744.
  3 such `lw` accesses load 4 bytes from abs 0x102bd0c4, including `lw` at 0x1011bd04, `lw` at 0x1011bd30, `lw` at 0x1011bdcc.
  2 such `lw` accesses load 4 bytes from abs 0x102bd730, including `lw` at 0x1011bd2c, `lw` at 0x1011bdc8.
  The `lw` at 0x1011bd44 loads 4 bytes from abs 0x102bdc40.
  2 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x1011bd60, `lw` at 0x1011bde4.
  2 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x1011bd7c, `lw` at 0x1011be00.
  The `lw` at 0x1011bda4 loads 4 bytes from abs 0x102bdc5c.
  The `jal` at 0x1011bd00 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b93b8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011bd34 calls kt_output_info [0x10046374] with a0=0x101b9880, a1=?, a2=?, a3=?.
  The `jal` at 0x1011bd48 calls dgo_lsb_test [0x10117f04] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1011bd6c calls kt_code_result [0x10048068] with a0=0x4, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x1011bd84 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1011bda8 calls dgo_loadXilinx_reset [0x10119708] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011bdd0 calls kt_output_info [0x10046374] with a0=0x101b93e8, a1=?, a2=?, a3=?.
  The `jal` at 0x1011bdf0 calls kt_code_result [0x10048068] with a0=0x4, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x1011be08 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x1011bce0 targets 0x1011bd9c, is taken when at(=[sym(xilinx_loaded)]) == 0, and falls through when at(=[sym(xilinx_loaded)]) != 0.
  The `beq` branch at 0x1011bd18 targets 0x1011bdb8, is taken when ra(=[sym(xilinx_loaded)]) == 0, and falls through when ra(=[sym(xilinx_loaded)]) != 0.
  The `beq` branch at 0x1011bd50 targets 0x1011bde0, is taken when v0(=ret(dgo_lsb_test)) == 0, and falls through when v0(=ret(dgo_lsb_test)) != 0.
  The `beq` branch at 0x1011bdb0 targets 0x1011bd0c and is always taken.
  The `beq` branch at 0x1011bdd8 targets 0x1011bd5c and is always taken.
  The `beq` branch at 0x1011be10 targets 0x1011bd90 and is always taken.
  The return at 0x1011bd94 has v0 = ret(kt_output_rslt).

- `TEST_gvo_ll` in `usr/diags/IR/bin/irsaudit` at 0x1011be18 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1011be18-0x1011bf78 (352 bytes).
  It occupies 352 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x102be6c0, including `lw` at 0x1011be34, `lw` at 0x1011be70.
  2 such `lw` accesses load 4 bytes from sym(xilinx_loaded) +0x0, including `lw` at 0x1011be38, `lw` at 0x1011be74.
  The `lw` at 0x1011be50 loads 4 bytes from abs 0x102bd744.
  3 such `lw` accesses load 4 bytes from abs 0x102bd0c4, including `lw` at 0x1011be64, `lw` at 0x1011be90, `lw` at 0x1011bf2c.
  2 such `lw` accesses load 4 bytes from abs 0x102bd730, including `lw` at 0x1011be8c, `lw` at 0x1011bf28.
  The `lw` at 0x1011bea4 loads 4 bytes from abs 0x102bdcac.
  2 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x1011bec0, `lw` at 0x1011bf44.
  2 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x1011bedc, `lw` at 0x1011bf60.
  The `lw` at 0x1011bf04 loads 4 bytes from abs 0x102bdc5c.
  The `jal` at 0x1011be60 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b93b8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011be94 calls kt_output_info [0x10046374] with a0=0x101b9898, a1=?, a2=?, a3=?.
  The `jal` at 0x1011bea8 calls gvo_low_latency_test [0x101200b0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1011becc calls kt_code_result [0x10048068] with a0=0x4, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x1011bee4 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1011bf08 calls dgo_loadXilinx_reset [0x10119708] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011bf30 calls kt_output_info [0x10046374] with a0=0x101b93e8, a1=?, a2=?, a3=?.
  The `jal` at 0x1011bf50 calls kt_code_result [0x10048068] with a0=0x4, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x1011bf68 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x1011be40 targets 0x1011befc, is taken when at(=[sym(xilinx_loaded)]) == 0, and falls through when at(=[sym(xilinx_loaded)]) != 0.
  The `beq` branch at 0x1011be78 targets 0x1011bf18, is taken when ra(=[sym(xilinx_loaded)]) == 0, and falls through when ra(=[sym(xilinx_loaded)]) != 0.
  The `beq` branch at 0x1011beb0 targets 0x1011bf40, is taken when v0(=ret(gvo_low_latency_test)) == 0, and falls through when v0(=ret(gvo_low_latency_test)) != 0.
  The `beq` branch at 0x1011bf10 targets 0x1011be6c and is always taken.
  The `beq` branch at 0x1011bf38 targets 0x1011bebc and is always taken.
  The `beq` branch at 0x1011bf70 targets 0x1011bef0 and is always taken.
  The return at 0x1011bef4 has v0 = ret(kt_output_rslt).

- `TEST_gvo_fb_lite` in `usr/diags/IR/bin/irsaudit` at 0x1011bf78 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1011bf78-0x1011c140 (456 bytes).
  It occupies 456 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x102be6c0, including `lw` at 0x1011bf94, `lw` at 0x1011bfd8.
  2 such `lw` accesses load 4 bytes from sym(xilinx_loaded) +0x0, including `lw` at 0x1011bf98, `lw` at 0x1011bfdc.
  2 such `lw` accesses load 4 bytes from abs 0x102bd744, including `lw` at 0x1011bfb4, `lw` at 0x1011c0e8.
  5 such `lw` accesses load 4 bytes from abs 0x102bd0c4, including `lw` at 0x1011bfcc, `lw` at 0x1011bffc, `lw` at 0x1011c03c.
  3 such `lw` accesses load 4 bytes from abs 0x102bd730, including `lw` at 0x1011bff4, `lw` at 0x1011c038, `lw` at 0x1011c0c0.
  The `lw` at 0x1011c014 loads 4 bytes from abs 0x102bdc48.
  2 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x1011c058, `lw` at 0x1011c10c.
  2 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x1011c074, `lw` at 0x1011c128.
  The `lw` at 0x1011c0a0 loads 4 bytes from abs 0x102bdc5c.
  The `jal` at 0x1011bfc8 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b93b8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011c004 calls kt_output_info [0x10046374] with a0=0x101b98c0, a1=?, a2=?, a3=?.
  The `jal` at 0x1011c018 calls run_dgo_fb_lite_test [0x10118dcc] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1011c044 calls kt_output_info [0x10046374] with a0=0x101b98e0, a1=ret(run_dgo_fb_lite_test), a2=?, a3=?.
  The `jal` at 0x1011c064 calls kt_code_result [0x10048068] with a0=0x4, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x1011c07c calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1011c0a4 calls dgo_loadXilinx_reset [0x10119708] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011c0c8 calls kt_output_info [0x10046374] with a0=0x101b93e8, a1=?, a2=?, a3=?.
  The `jal` at 0x1011c0f4 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b9918, a2=?, a3=?.
  The `jal` at 0x1011c118 calls kt_code_result [0x10048068] with a0=0x4, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x1011c130 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x1011bfa4 targets 0x1011c098, is taken when at(=[sym(xilinx_loaded)]) == 0, and falls through when at(=[sym(xilinx_loaded)]) != 0.
  The `beq` branch at 0x1011bfe0 targets 0x1011c0b4, is taken when t8(=[sym(xilinx_loaded)]) == 0, and falls through when t8(=[sym(xilinx_loaded)]) != 0.
  The `beq` branch at 0x1011c020 targets 0x1011c0d8, is taken when v0(=ret(run_dgo_fb_lite_test)) == 0, and falls through when v0(=ret(run_dgo_fb_lite_test)) != 0.
  The `beq` branch at 0x1011c04c targets 0x1011c104, is taken when s0(=ret(run_dgo_fb_lite_test)) == 0, and falls through when s0(=ret(run_dgo_fb_lite_test)) != 0.
  The `beq` branch at 0x1011c0ac targets 0x1011bfd4 and is always taken.
  The `beq` branch at 0x1011c0d0 targets 0x1011c054 and is always taken.
  The `beq` branch at 0x1011c0fc targets 0x1011c04c and is always taken.
  The `beq` branch at 0x1011c138 targets 0x1011c088 and is always taken.
  The return at 0x1011c090 has v0 = ret(kt_output_rslt).

- `TEST_txlut` in `usr/diags/IR/bin/irsaudit` at 0x10127bd8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10127bd8-0x10128008 (1072 bytes).
  It occupies 1072 bytes.
  The `lw` at 0x10127c00 loads 4 bytes from a0 (arg0 at entry) +0x16c.
  2 such `lw` accesses load 4 bytes from abs 0x102be48c, including `lw` at 0x10127c0c, `lw` at 0x10127e8c.
  2 such `sw` accesses store 4 bytes to sym(KonatestTexRepeat) +0x0, including `sw` at 0x10127c1c, `sw` at 0x10127e9c.
  2 such `lw` accesses load 4 bytes from abs 0x102bd730, including `lw` at 0x10127c3c, `lw` at 0x10127dc0.
  9 such `lw` accesses load 4 bytes from abs 0x102bd1ac, including `lw` at 0x10127c50, `lw` at 0x10127c68, `lw` at 0x10127dc8.
  7 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x10127c64, `lw` at 0x10127e6c, `lw` at 0x10127eec.
  2 such `lw` accesses load 4 bytes from abs 0x102be1e0, including `lw` at 0x10127c88, `lw` at 0x10127cf8.
  2 such `lw` accesses load 4 bytes from sym(KONAINFO) +0x0, including `lw` at 0x10127c8c, `lw` at 0x10127cfc.
  2 such `lw` accesses load 4 bytes from [sym(KONAINFO)] +0x0, including `lw` at 0x10127c90, `lw` at 0x10127d00.
  The `lw` at 0x10127ca0 loads 4 bytes from abs 0x102be20c.
  The `lw` at 0x10127ca4 loads 4 bytes from sym(SET_HUB_WAR) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x102be448, including `lw` at 0x10127cb4, `lw` at 0x10127eb4.
  2 such `sw` accesses store 4 bytes to sym(HUB_WAR) +0x0, including `sw` at 0x10127cb8, `sw` at 0x10127eb8.
  The `lw` at 0x10127ccc loads 4 bytes from abs 0x102bd764.
  The `lw` at 0x10127d14 loads 4 bytes from abs 0x102bddf4.
  The `lw` at 0x10127d38 loads 4 bytes from abs 0x102bd458.
  The `lw` at 0x10127d78 loads 4 bytes from abs 0x102bd45c.
  2 such `lw` accesses load 4 bytes from abs 0x102be77c, including `lw` at 0x10127d80, `lw` at 0x10127e94.
  2 such `lw` accesses load 4 bytes from sym(pipeFD) +0x0, including `lw` at 0x10127d94, `lw` at 0x10127ea8.
  The `lw` at 0x10127da4 loads 4 bytes from abs 0x102be488.
  The `lw` at 0x10127da8 loads 4 bytes from sym(Nocrc) +0x0.
  The `lw` at 0x10127de0 loads 4 bytes from abs 0x102bd1b0.
  The `lw` at 0x10127e30 loads 4 bytes from abs 0x102bd1b4.
  The `lw` at 0x10127f14 loads 4 bytes from abs 0x102bd584.
  2 such `lw` accesses load 4 bytes from abs 0x102bd1b8, including `lw` at 0x10127f18, `lw` at 0x10127f9c.
  The `lw` at 0x10127fac loads 4 bytes from abs 0x102bd744.
  The `sd` at 0x10127fc4 stores 8 bytes to abs 0x1020f060.
  The `sd` at 0x10127fd0 stores 8 bytes to abs 0x1020f068.
  The `jal` at 0x10127c4c calls kt_output_info [0x10046374] with a0=0x101bdb78, a1=[a0+364], a2=0x19c768, a3=0x1, a4=0x2, a5=0x4.
  The `jal` at 0x10127c70 calls kt_output_rslt [0x10045978] with a0=0x2, a1=0x101bdb90, a2=?, a3=?.
  The `jal` at 0x10127cdc calls kt_code_result [0x10048068] with a0=0x2, a1=?, a2=0x1, a3=?.
  The `jal` at 0x10127d1c calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jalr` at 0x10127d40 calls sginap with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x10127d4c calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jalr` at 0x10127d90 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=?.
  The `jal` at 0x10127dd0 calls kt_output_info [0x10046374] with a0=0x101bdc28, a1=?, a2=?, a3=?.
  The `jal` at 0x10127de4 calls (unnamed) [0x10128008] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10127e04 calls kt_output_info [0x10046374] with a0=0x101bdc48, a1=?, a2=?, a3=?.
  The `jal` at 0x10127e20 calls kt_output_info [0x10046374] with a0=0x101bdc60, a1=?, a2=?, a3=?.
  The `jal` at 0x10127e34 calls (unnamed) [0x10128288] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10127e50 calls kt_output_info [0x10046374] with a0=0x101bdc78, a1=?, a2=?, a3=?.
  The `jal` at 0x10127e74 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10127ea4 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=?.
  The `jal` at 0x10127ef8 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101bdbf0, a2=?, a3=?.
  The `jal` at 0x10127f20 calls run_crc_testlist [0x1001d0dc] with a0=0x1020f070, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10127f40 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10127f5c calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10127f78 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10127fcc calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101bdbb0, a2=0x6, a3=?.
  The `jal` at 0x10127ff8 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101bdc08, a2=?, a3=?.
  The `beq` branch at 0x10127c18 targets 0x10127c80, is taken when s2(=[a0+364]) == a3(=0x1), and falls through when s2(=[a0+364]) != a3(=0x1).
  The `beq` branch at 0x10127c24 targets 0x10127c84, is taken when s2(=[a0+364]) == a4(=0x2), and falls through when s2(=[a0+364]) != a4(=0x2).
  The `beq` branch at 0x10127c30 targets 0x10127c80, is taken when s2(=[a0+364]) == a5(=0x4), and falls through when s2(=[a0+364]) != a5(=0x4).
  The `beq` branch at 0x10127c78 targets 0x10127ec0 and is always taken.
  The `beq` branch at 0x10127c94 targets 0x10127cbc, is taken when ra(=[[sym(KONAINFO)]]) == 0, and falls through when ra(=[[sym(KONAINFO)]]) != 0.
  The `beq` branch at 0x10127ca8 targets 0x10127cbc, is taken when a2(=[sym(SET_HUB_WAR)]) == 0, and falls through when a2(=[sym(SET_HUB_WAR)]) != 0.
  The `blez` branch at 0x10127cbc targets 0x10127d00, is taken when s2(=[a0+364]) <= 0 (signed), and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` branch at 0x10127cec targets 0x10127cd0, is taken when s0(?) < s2(=[a0+364]) (signed), and falls through when s0(?) >= s2(=[a0+364]) (signed).
  The `beq` branch at 0x10127d08 targets 0x10127f88, is taken when a1(=[[sym(KONAINFO)]]) == a2(=0x6), and falls through when a1(=[[sym(KONAINFO)]]) != a2(=0x6).
  The `beq` branch at 0x10127d24 targets 0x10127d70, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` branch at 0x10127d54 targets 0x10127d64, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` branch at 0x10127d60 targets 0x10127d3c, is taken when s0(?) < 0x5 (unsigned), and falls through when s0(?) >= 0x5 (unsigned).
  The `beq` branch at 0x10127d68 targets 0x10127edc, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bltz` branch at 0x10127d98 targets 0x10127fdc, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x10127dac targets 0x10127f08, is taken when t8(=[sym(Nocrc)]) == 0, and falls through when t8(=[sym(Nocrc)]) != 0.
  The `beq` branch at 0x10127dec targets 0x10127e10, is taken when v0(=ret(0x10128008)) == 0, and falls through when v0(=ret(0x10128008)) != 0.
  The `beq` branch at 0x10127e3c targets 0x10127e5c, is taken when v0(=ret(0x10128288)) == 0, and falls through when v0(=ret(0x10128288)) != 0.
  The `beq` branch at 0x10127e5c targets 0x10127f50, is taken when s1(=one of 0x0, 0x1, 0x2) == 0, and falls through when s1(=one of 0x0, 0x1, 0x2) != 0.
  The `beq` branch at 0x10127f00 targets 0x10127ec0 and is always taken.
  The `bne` branch at 0x10127f28 targets 0x10127f6c, is taken when v0(=ret(run_crc_testlist)) != 0, and falls through when v0(=ret(run_crc_testlist)) == 0.
  The `beq` branch at 0x10127f48 targets 0x10127e80 and is always taken.
  The `beq` branch at 0x10127f64 targets 0x10127e80 and is always taken.
  The `beq` branch at 0x10127f80 targets 0x10127e80 and is always taken.
  The `beq` branch at 0x10127fd4 targets 0x10127d10 and is always taken.
  The `beq` branch at 0x10128000 targets 0x10127ec0 and is always taken.
  The return at 0x10127ed4 has v0 = one of ret(kt_output_rslt), ret(ioctl).

- `GEDdecodeOneHotRegisterAddress` in `usr/diags/IR/bin/irsaudit` at 0x1013fa48 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1013fa48-0x1013fb84 (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0x1013fb28 loads 4 bytes from abs 0x102bd744.
  The `lw` at 0x1013fb3c loads 4 bytes from abs 0x102bd2fc.
  The `lw` at 0x1013fb48 loads 4 bytes from abs 0x102bd394.
  The `jal` at 0x1013fb38 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101c13d8, a2=?, a3=?.
  The `jalr` at 0x1013fb4c calls exit with a0=-0x1, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1013fa68 targets 0x1013faa8, is taken when a0 < 0x10 (signed), and falls through when a0 >= 0x10 (signed).
  The `bne` branch at 0x1013fa7c targets 0x1013fae8, is taken when a2(=a0) < 0x11 (signed), and falls through when a2(=a0) >= 0x11 (signed).
  The `bne` branch at 0x1013fa88 targets 0x1013fb54, is taken when a2(=a0) < 0x40 (signed), and falls through when a2(=a0) >= 0x40 (signed).
  The `bne` branch at 0x1013fa90 targets 0x1013fb7c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0x1013fa98 targets 0x1013fb20, is taken when a2(=a0) != a4(=0x80), and falls through when a2(=a0) == a4(=0x80).
  The `beq` branch at 0x1013faa0 targets 0x1013faf0 and is always taken.
  The `bne` branch at 0x1013fac4 targets 0x1013fafc, is taken when a0 < 0x4 (signed), and falls through when a0 >= 0x4 (signed).
  The `bne` branch at 0x1013fad0 targets 0x1013fb74, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0x1013fad8 targets 0x1013fb20, is taken when a2(=a0) != a5(=0x8), and falls through when a2(=a0) == a5(=0x8).
  The `beq` branch at 0x1013fae0 targets 0x1013faf0 and is always taken.
  The `bne` branch at 0x1013fafc targets 0x1013fb64, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x1013fb04 targets 0x1013fb24, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1013fb54 targets 0x1013fb24, is taken when a2(?) != a5(?), and falls through when a2(?) == a5(?).
  The `beq` branch at 0x1013fb5c targets 0x1013faf0 and is always taken.
  The `bne` branch at 0x1013fb64 targets 0x1013fb24, is taken when a2(=a0) != a7(=0x1), and falls through when a2(=a0) == a7(=0x1).
  The `beq` branch at 0x1013fb6c targets 0x1013faf0 and is always taken.
  The `beq` branch at 0x1013fb74 targets 0x1013faf0 and is always taken.
  The `beq` branch at 0x1013fb7c targets 0x1013faf0 and is always taken.
  The return at 0x1013faf4 has v0 = one of 0x3c, 0x38, 0x39, ?, 0x35, 0x37, 0x3b.
  The return at 0x1013fb18 has v0 = 0x36.

- `GEDencodeOneHotRegisterAddress` in `usr/diags/IR/bin/irsaudit` at 0x1013fb84 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1013fb84-0x1013fc60 (220 bytes).
  It occupies 220 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x102bd2fc, including `lw` at 0x1013fba4, `lw` at 0x1013fbfc.
  The `lw` at 0x1013fbc4 loads 4 bytes from table(0x101c1408) +0x0.
  The `lw` at 0x1013fbe0 loads 4 bytes from abs 0x102bd744.
  The `lw` at 0x1013fc04 loads 4 bytes from abs 0x102bd470.
  The `jal` at 0x1013fbe8 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101c1428, a2=a0 at entry (arg0), a3=a3 at entry (arg3), a5=0x101c13d8, a6=0x1847bc.
  The `jalr` at 0x1013fc10 calls __assert with a0=0x101c1468, a1=0x101c1470, a2=0x116, a3=?.
  The `beq` branch at 0x1013fbbc targets 0x1013fbd8, is taken when v1(=a0-53) >= 0x8 (unsigned), and falls through when v1(=a0-53) < 0x8 (unsigned).
  The `beq` branch at 0x1013fbd0 targets 0x1013fc1c and is always taken.
  The `beq` branch at 0x1013fc28 targets 0x1013fc1c and is always taken.
  The `beq` branch at 0x1013fc30 targets 0x1013fc1c and is always taken.
  The `beq` branch at 0x1013fc38 targets 0x1013fc1c and is always taken.
  The `beq` branch at 0x1013fc40 targets 0x1013fc1c and is always taken.
  The `beq` branch at 0x1013fc48 targets 0x1013fc1c and is always taken.
  The return at 0x1013fc20 has v0 = one of 0x10, 0x1, ret(__assert), 0x80, 0x40, 0x20, 0x8, 0x4.
  The return at 0x1013fc58 has v0 = 0x2.
  The indirect jump at 0x1013fbc8 uses the jump table at 0x101c1408 with targets 0x1013fbd0, 0x1013fc50, 0x1013fc48, 0x1013fc40, 0x1013fc1c, 0x1013fc38, 0x1013fc30, 0x1013fc28.

- `tbuWindow` in `usr/diags/IR/bin/irsaudit` at 0x10141248 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10141248-0x10141398 (336 bytes).
  It occupies 336 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x102bd310, including `lw` at 0x101412ac, `lw` at 0x10141370.
  The `ldc1` at 0x101412b0 loads 8 bytes from abs 0x101c1738.
  The `ldc1` at 0x101412c4 loads 8 bytes from abs 0x101c1780.
  The `swc1` at 0x101412f4 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `swc1` at 0x101412fc stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `swc1` at 0x10141300 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `swc1` at 0x10141308 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `swc1` at 0x1014130c stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `swc1` at 0x10141310 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `swc1` at 0x10141314 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `swc1` at 0x10141318 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `lwc1` at 0x1014131c loads 4 bytes from abs 0x101c1734.
  The `swc1` at 0x10141320 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `swc1` at 0x10141324 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `swc1` at 0x10141328 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `swc1` at 0x1014132c stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `swc1` at 0x10141330 stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `swc1` at 0x1014133c stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `swc1` at 0x10141340 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `swc1` at 0x10141350 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `lw` at 0x1014137c loads 4 bytes from abs 0x102bd3f8.
  The `lw` at 0x10141380 loads 4 bytes from abs 0x102bd414.
  The `jalr` at 0x10141388 calls fprintf with a0=sym(__iob)+32, a1=0x101c1748, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bc1t` branch at 0x10141270 targets 0x10141360, is taken when f6 == f4 (c.eq.d at 0x10141254), and falls through when not (f6 == f4 (c.eq.d at 0x10141254)).
  The `bc1t` branch at 0x10141288 targets 0x10141364, is taken when f8 == f4 (c.eq.d at 0x10141280), and falls through when not (f8 == f4 (c.eq.d at 0x10141280)).
  The `bc1t` branch at 0x101412a0 targets 0x10141360, is taken when f10 == f4 (c.eq.d at 0x10141298), and falls through when not (f10 == f4 (c.eq.d at 0x10141298)).
  The `beq` branch at 0x10141390 targets 0x10141354 and is always taken.
  The return at 0x1014134c has v0 = 0x101c16a8.
  The return at 0x10141358 has v0 = ret(fprintf).

- `__glXBindHWContextToWindow` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd810634 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd810634-0xd810920 (748 bytes).
  It occupies 748 bytes.
  The `lw` at 0xd810650 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd810668, `lw` at 0xd8106d8.
  51 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd810670, `lw` at 0xd810690, `lw` at 0xd8106d4.
  The `lw` at 0xd810674 loads 4 bytes from [0x1014] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0xd8106b8, `lw` at 0xd8107b0, `lw` at 0xd8108a4.
  The `sw` at 0xd8106dc stores 4 bytes to [0x1014] +0x0.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8106e8, `sb` at 0xd8107e0, `sb` at 0xd8108d0.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8107e8, `sw` at 0xd8107f4, `sw` at 0xd8107fc.
  The `jalr` at 0xd81065c calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd810698 calls Ioctl [0xd8113d4] with a0=?, a1=0x3ea, a2=sp-12, a3=?.
  The `jalr` at 0xd8106c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd841624, a2=?, a3=?.
  The `jalr` at 0xd810790 calls Ioctl [0xd8113d4] with a0=?, a1=0x3eb, a2=sp-24, a3=?.
  The `jalr` at 0xd8107b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd84163c, a2=?, a3=?.
  The `jalr` at 0xd810880 calls Ioctl [0xd8113d4] with a0=?, a1=0x400, a2=sp-44, a3=?.
  The `jalr` at 0xd8108ac calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd841654, a2=?, a3=?.
  The `beq` branch at 0xd810680 targets 0xd8106e4, is taken when t7(=[[0x1014]]) == a3(?), and falls through when t7(=[[0x1014]]) != a3(?).
  The `bgez` branch at 0xd8106a4 targets 0xd8106d4, is taken when v0(=ret(Ioctl)) >= 0 (signed), and falls through when v0(=ret(Ioctl)) < 0 (signed).
  The `beq` branch at 0xd8106cc targets 0xd8106e0 and is always taken.
  The `bne` branch at 0xd8106e4 targets 0xd81070c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bnel` branch at 0xd8106f4 targets 0xd810710, is taken when t1(?) != t2(?), and falls through when t1(?) == t2(?); its branch-likely delay slot `lw t5,220(v1)` at 0xd8106f8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810704 targets 0xd810914, is taken when t3(?) == t4(?), and falls through when t3(?) != t4(?); its branch-likely delay slot `lw ra,28(sp)` at 0xd810708 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810714 targets 0xd810734, is taken when t5(?) == t6(?), and falls through when t5(?) != t6(?); its branch-likely delay slot `lw t8,204(v1)` at 0xd810718 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd810728 targets 0xd810804, is taken when t9(?) != at(=0x3), and falls through when t9(?) == at(=0x3); its branch-likely delay slot `lw t4,204(v1)` at 0xd81072c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810740 targets 0xd810768, is taken when t0(?) >= 0x2 (signed), and falls through when t0(?) < 0x2 (signed); its branch-likely delay slot `lw t3,228(v1)` at 0xd810744 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810750 targets 0xd810768, is taken when t1(?) >= 0x3 (signed), and falls through when t1(?) < 0x3 (signed); its branch-likely delay slot `lw t3,228(v1)` at 0xd810754 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd81075c targets 0xd810770 and is always taken.
  The `bne` branch at 0xd8107a0 targets 0xd8107c8, is taken when v0(=ret(Ioctl)) != at(=-0x1), and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `beq` branch at 0xd8107c0 targets 0xd810910 and is always taken.
  The `beql` branch at 0xd8107d8 targets 0xd8107f0, is taken when t7(?) == t8(?), and falls through when t7(?) != t8(?); its branch-likely delay slot `lw t2,224(v1)` at 0xd8107dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8107f8 targets 0xd810910 and is always taken.
  The `bnel` branch at 0xd810810 targets 0xd810840, is taken when t5(?) != at(=0x1), and falls through when t5(?) == at(=0x1); its branch-likely delay slot `lw t8,228(v1)` at 0xd810814 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810820 targets 0xd810840, is taken when t6(?) >= 0x3 (signed), and falls through when t6(?) < 0x3 (signed); its branch-likely delay slot `lw t8,228(v1)` at 0xd810824 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd810834 targets 0xd810854 and is always taken.
  The `bne` branch at 0xd810890 targets 0xd8108bc, is taken when v0(=ret(Ioctl)) != at(=-0x1), and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `beq` branch at 0xd8108b4 targets 0xd810910 and is always taken.
  The `bnel` branch at 0xd8108cc targets 0xd8108ec, is taken when t7(?) != t8(?), and falls through when t7(?) == t8(?); its branch-likely delay slot `sb t3,244(v1)` at 0xd8108d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8108e0 targets 0xd810904, is taken when t0(?) == t2(?), and falls through when t0(?) != t2(?); its branch-likely delay slot `lw t9,224(v1)` at 0xd8108e4 runs only when taken and is annulled on fall-through.
  The return at 0xd810918 has v0 = ?.
  The instructions from 0xd810764 to 0xd810764 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd810800 to 0xd810800 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd81083c to 0xd81083c are not reached by any path from the entry, and their branches are not listed.

- `glXCreateWindow` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd837a78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd837a78-0xd837c10 (408 bytes).
  It occupies 408 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd837ac8, `lw` at 0xd837ad4, `lw` at 0xd837af0.
  The `lw` at 0xd837acc loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lw` at 0xd837ae0 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `lw` at 0xd837aec loads 4 bytes from ?.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd837af8, `lw` at 0xd837b10, `lw` at 0xd837b3c.
  The `lw` at 0xd837afc loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd837b14 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd837b44 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd837b50 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd837b54, `sb` at 0xd837b7c.
  The `lw` at 0xd837b58 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd837b6c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd837b70 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd837b78 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd837b80 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd837b84 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd837b88 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd837b8c stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd837b94 stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd837b9c loads 4 bytes from a0 (arg0 at entry) +0x2c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd837bb4, `sw` at 0xd837bb8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd837bc4, `lw` at 0xd837bdc.
  The `lw` at 0xd837bc8 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd837aa4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd837b04 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd837b30 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd837ba0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x1f, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xd837bd0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd837bec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd837ab4 targets 0xd837ac4, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd837abc targets 0xd837bfc and is always taken.
  The `beql` branch at 0xd837ac4 targets 0xd837af4, is taken when a3 == 0, and falls through when a3 != 0; its branch-likely delay slot `lw a1,1232(s0)` at 0xd837ac8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837ad0 targets 0xd837af4, is taken when v1(=[a3]) == 0, and falls through when v1(=[a3]) != 0; its branch-likely delay slot `lw a1,1232(s0)` at 0xd837ad4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd837ad8 targets 0xd837af0, is taken when v1(=[a3]) == 0, and falls through when v1(=[a3]) != 0.
  The `bnel` branch at 0xd837ae8 targets 0xd837ae4, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `lw t6,8(v0)` at 0xd837aec runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837af4 targets 0xd837b14, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s0)` at 0xd837af8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837b20 targets 0xd837b44, is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned); its branch-likely delay slot `lw a2,60(sp)` at 0xd837b24 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837bc0 targets 0xd837be0, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd837bc4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837be4 targets 0xd837bfc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,48(sp)` at 0xd837be8 runs only when taken and is annulled on fall-through.
  The return at 0xd837c08 has v0 = one of 0x0, ?.

- `glXDestroyWindow` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd837c10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd837c10-0xd837d28 (280 bytes).
  It occupies 280 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd837c48, `lw` at 0xd837cd8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd837c50, `lw` at 0xd837c68, `lw` at 0xd837c94.
  The `lw` at 0xd837c54 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd837c6c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd837c7c, `sw` at 0xd837c98.
  The `sh` at 0xd837ca4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd837ca8, `sb` at 0xd837ccc.
  The `lw` at 0xd837cac loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd837cbc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd837cc0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd837cc8 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd837cd4 stores 4 bytes to [a0+108] +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd837ce0, `lw` at 0xd837cf8.
  The `lw` at 0xd837ce4 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd837c34 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd837c5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd837c88 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd837cec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x20, a2=?, a3=?.
  The `jalr` at 0xd837d08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd837c40 targets 0xd837d14, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` branch at 0xd837c4c targets 0xd837c6c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd837c50 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837c78 targets 0xd837c9c, is taken when t6(=[a0+112]) >= t7(=[a0+108]+8) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd837c7c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837cdc targets 0xd837cfc, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd837ce0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837d00 targets 0xd837d18, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd837d04 runs only when taken and is annulled on fall-through.
  The return at 0xd837d20 has v0 = one of [a0+124], ?.

- `glXBindChannelToWindowSGIX` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd839e08 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd839e08-0xd839f4c (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0xd839e18 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd839e38 loads 4 bytes from [0x1014] +0x114.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xd839eec, `sb` at 0xd839f30.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd839ef8, `lw` at 0xd839efc, `lw` at 0xd839f08.
  The `jalr` at 0xd839e40 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd839e68 calls __glXInitChannelRectState [0xd839c70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd839ea0 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64.
  The `jalr` at 0xd839eb8 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd839f10 calls (unknown callee) with a0=?, a1=0x1, a2=?, a3=?.
  The `beq` branch at 0xd839e4c targets 0xd839f38, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd839e70 targets 0xd839f38, is taken when v0(=ret(__glXInitChannelRectState)) == 0, and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` branch at 0xd839ee8 targets 0xd839f20, is taken when (t5(?) & 0xff) == 0, and falls through when (t5(?) & 0xff) != 0.
  The `beql` branch at 0xd839f00 targets 0xd839f3c, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd839f04 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd839f28 targets 0xd839f38, is taken when t9(=a3) != 0, and falls through when t9(=a3) == 0; its branch-likely delay slot `sw t0,48(sp)` at 0xd839f2c runs only when taken and is annulled on fall-through.
  The return at 0xd839f44 has v0 = ?.

- `__glChangeWindowSize` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d1d7c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
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

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d1e94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9d1e94-0xd9d1ea0 (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xd9d1e94 stores 4 bytes to a0 (arg0 at entry) +0xe7c.
  The `sw` at 0xd9d1e9c stores 4 bytes to a0 (arg0 at entry) +0xe80.
  The return at 0xd9d1e98 has v0 = ?.

- `__glFindWindowSize` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d1ea0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
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
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd83b98c, `sw` at 0xd83b990.
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
  The return at 0xd83b9d0 has v0 = ?.
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
  The `bgezall` at 0xd83c594 calls (unnamed) [0xd83c38c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd83c5c0 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4.
  The `jalr` at 0xd83c5d4 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd83c61c calls (unknown callee) with a0=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+68], a1=0x1, a2=?, a3=?.
  The `beq` branch at 0xd83c578 targets 0xd83c638, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd83c59c targets 0xd83c65c, is taken when v0(=ret(0xd83c38c)) == 0, and falls through when v0(=ret(0xd83c38c)) != 0.
  The `beq` branch at 0xd83c600 targets 0xd83c67c, is taken when a0(=a3) == 0, and falls through when a0(=a3) != 0.
  The `beq` branch at 0xd83c614 targets 0xd83c674, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xd83c66c targets 0xd83c628 and is always taken.
  The `beq` branch at 0xd83c674 targets 0xd83c628 and is always taken.
  The `beq` branch at 0xd83c684 targets 0xd83c624 and is always taken.
  The return at 0xd83c630 has v0 = one of 0x0, 0x1.
  The return at 0xd83c654 has v0 = 0x0.

- `__glChangeWindowSize` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9cdb70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
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

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9cdc80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xd9cdc80-0xd9cdc8c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xd9cdc80 stores 4 bytes to a0 (arg0 at entry) +0xe80.
  The `sw` at 0xd9cdc88 stores 4 bytes to a0 (arg0 at entry) +0xe7c.
  The return at 0xd9cdc84 has v0 = ?.

- `__glFindWindowSize` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9cdc90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
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

- `__glXBindHWContextToWindow` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2643464 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2643464-0x264371c (696 bytes).
  It occupies 696 bytes.
  The `ld` at 0x2643490 loads 8 bytes from a0 (arg0 at entry) +0x98.
  2 such `ld` accesses load 8 bytes from abs 0x1028, including `ld` at 0x2643494, `ld` at 0x2643684.
  3 such `lw` accesses load 4 bytes from [a0+152]:8 +0x128, including `lw` at 0x2643498, `lw` at 0x2643688, `lw` at 0x2643698.
  The `lw` at 0x264349c loads 4 bytes from [0x1028]:8 +0x0.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x148, including `ld` at 0x26434a8, `ld` at 0x264358c, `ld` at 0x2643600.
  The `ld` at 0x26434ac loads 8 bytes from [a0+152]:8 +0x168.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x140, including `ld` at 0x26434b0, `ld` at 0x2643590, `ld` at 0x2643604.
  4 such `sb` accesses store 1 byte to [a0+152]:8 +0x170, including `sb` at 0x26434b8, `sb` at 0x2643574, `sb` at 0x26435f0.
  The `ld` at 0x26434bc loads 8 bytes from [a0+152]:8 +0x160.
  5 such `ld` accesses load 8 bytes from [a0+152]:8 +0x158, including `ld` at 0x26434d4, `ld` at 0x2643508, `ld` at 0x2643520.
  The `lw` at 0x26434d8 loads 4 bytes from [[a0+152]:8+344]:8 +0x40.
  2 such `lw` accesses load 4 bytes from [a0+152]:8 +0x1b0, including `lw` at 0x26434ec, `lw` at 0x2643638.
  2 such `lw` accesses load 4 bytes from [a0+152]:8 +0x1b4, including `lw` at 0x26434f0, `lw` at 0x264363c.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x150, including `ld` at 0x26434fc, `ld` at 0x2643514, `ld` at 0x2643554.
  2 such `ld` accesses load 8 bytes from [[a0+152]:8+336]:8 +0x30, including `ld` at 0x2643500, `ld` at 0x26435ac.
  The `ld` at 0x264350c loads 8 bytes from [[a0+152]:8+344]:8 +0x30.
  4 such `lw` accesses load 4 bytes from [[a0+152]:8+336]:8 +0x8, including `lw` at 0x2643518, `lw` at 0x2643558, `lw` at 0x26435b8.
  2 such `lw` accesses load 4 bytes from [[a0+152]:8+344]:8 +0x8, including `lw` at 0x2643524, `lw` at 0x2643568.
  3 such `lw` accesses load 4 bytes from [a0+152]:8 +0x40, including `lw` at 0x2643538, `lw` at 0x26435cc, `lw` at 0x2643670.
  2 such `sw` accesses store 4 bytes to [[a0+152]:8+336]:8 +0x8, including `sw` at 0x264357c, `sw` at 0x26435f8.
  The `sw` at 0x2643588 stores 4 bytes to [[a0+152]:8+344]:8 +0x8.
  2 such `sd` accesses store 8 bytes to [a0+152]:8 +0x160, including `sd` at 0x2643594, `sd` at 0x264360c.
  2 such `sd` accesses store 8 bytes to [a0+152]:8 +0x168, including `sd` at 0x2643598, `sd` at 0x2643610.
  The `sw` at 0x264368c stores 4 bytes to [0x1028]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x26436c4, `ld` at 0x26436e4, `ld` at 0x2643704.
  The `jalr` at 0x264348c calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2643534 calls (unnamed) [0x2642fec] with a0=[[a0+152]:8+64], a1=0x400, a2=sp-56, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296].
  The `bgezall` at 0x26435c8 calls (unnamed) [0x2642fec] with a0=[[a0+152]:8+64], a1=0x3eb, a2=sp-72, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296].
  The `bgezall` at 0x2643674 calls (unnamed) [0x2642fec] with a0=[[a0+152]:8+64], a1=0x3ea, a2=sp-80, a3=?, a4=[[a0+152]:8+296].
  The `jalr` at 0x26436cc calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2677478, a2=?, a3=?.
  The `jalr` at 0x26436ec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x26774b0, a2=0x1, a3=?.
  The `jalr` at 0x264370c calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2677490, a2=-0x1, a3=?.
  The `bne` branch at 0x26434a0 targets 0x2643660, is taken when v1(=[[0x1028]:8]) != a4(=[[a0+152]:8+296]), and falls through when v1(=[[0x1028]:8]) == a4(=[[a0+152]:8+296]).
  The `bne` branch at 0x26434b4 targets 0x26434c8, is taken when a0(=[[a0+152]:8+360]:8) != a3(=[[a0+152]:8+328]:8), and falls through when a0(=[[a0+152]:8+360]:8) == a3(=[[a0+152]:8+328]:8).
  The `beq` branch at 0x26434c0 targets 0x2643624, is taken when a1(=[[a0+152]:8+352]:8) == a2(=[[a0+152]:8+320]:8), and falls through when a1(=[[a0+152]:8+352]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` branch at 0x26434cc targets 0x2643634, is taken when a3(=[[a0+152]:8+328]:8) == a2(=[[a0+152]:8+320]:8), and falls through when a3(=[[a0+152]:8+328]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` branch at 0x26434e0 targets 0x2643634, is taken when ra(=[[[a0+152]:8+344]:8+64]) == at(=0x3), and falls through when ra(=[[[a0+152]:8+344]:8+64]) != at(=0x3).
  The `beq` branch at 0x26434f4 targets 0x26436a4, is taken when at(=[[a0+152]:8+432]) == a2(=0x1), and falls through when at(=[[a0+152]:8+432]) != a2(=0x1).
  The `beq` branch at 0x264354c targets 0x26436fc, is taken when v0(=ret(0x2642fec)) == a2(=-0x1), and falls through when v0(=ret(0x2642fec)) != a2(=-0x1).
  The `bne` branch at 0x2643560 targets 0x2643574, is taken when a3(=[[[a0+152]:8+336]:8+8]) != a4(?), and falls through when a3(=[[[a0+152]:8+336]:8+8]) == a4(?).
  The `beq` branch at 0x264356c targets 0x264358c, is taken when a5(=[[[a0+152]:8+344]:8+8]) == a6(?), and falls through when a5(=[[[a0+152]:8+344]:8+8]) != a6(?).
  The `beq` branch at 0x26435d4 targets 0x26436dc, is taken when v0(=ret(0x2642fec)) == at(=-0x1), and falls through when v0(=ret(0x2642fec)) != at(=-0x1).
  The `beq` branch at 0x26435e8 targets 0x2643600, is taken when v0(=[[[a0+152]:8+336]:8+8]) == v1(?), and falls through when v0(=[[[a0+152]:8+336]:8+8]) != v1(?).
  The `beq` branch at 0x2643644 targets 0x26435a8, is taken when a5(=[[a0+152]:8+432]) >= 0x2 (signed), and falls through when a5(=[[a0+152]:8+432]) < 0x2 (signed).
  The `beq` branch at 0x264364c targets 0x26435a8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x2643658 targets 0x26435b4 and is always taken.
  The `bltz` branch at 0x264367c targets 0x26436c0, is taken when v0(=ret(0x2642fec)) < 0 (signed), and falls through when v0(=ret(0x2642fec)) >= 0 (signed).
  The `beq` branch at 0x264369c targets 0x26434c8 and is always taken.
  The `beq` branch at 0x26436a4 targets 0x26434fc, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x26436b8 targets 0x2643514 and is always taken.
  The `beq` branch at 0x26436d4 targets 0x2643694 and is always taken.
  The `beq` branch at 0x26436f4 targets 0x2643624 and is always taken.
  The `beq` branch at 0x2643714 targets 0x2643624 and is always taken.
  The return at 0x26435a0 has v0 = ret(0x2642fec).
  The return at 0x2643618 has v0 = [[[a0+152]:8+336]:8+8].
  The return at 0x264362c has v0 = one of ret(__glXHWAttach), ret(?).
  The instructions from 0x2643620 to 0x2643620 are not reached by any path from the entry, and their branches are not listed.

- `glXCreateWindow` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2670560 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2670560-0x26706a8 (328 bytes).
  It occupies 328 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x26705a0, `ld` at 0x267063c.
  The `ld` at 0x26705ac loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x26705b8, `ld` at 0x26705f0, `ld` at 0x2670690.
  The `ld` at 0x26705bc loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x26705d8 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x26705e0 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x26705e8, `sb` at 0x2670608.
  The `ld` at 0x26705ec loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x26705f8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2670600 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sb` at 0x2670604 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x267060c loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0x2670610 stores 4 bytes to [a0+176]:8 +0x4.
  The `lw` at 0x2670614 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0x2670618 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x267061c stores 4 bytes to [a0+176]:8 +0x8.
  The `ld` at 0x2670620 loads 8 bytes from a0 (arg0 at entry) +0x48.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2670634, `sw` at 0x2670638.
  The `ld` at 0x2670648 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2670654 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x267058c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x26705b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2670628 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=[a1+72], a4=[a1+36], a5=[a0+176]:8, a6=0x1f.
  The `jalr` at 0x267064c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2670660 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2670684 calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8+24, a2=a2 at entry (arg2), a3=?, a5=[a0+176]:8.
  The `beq` branch at 0x2670598 targets 0x2670694, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x26705a4 targets 0x26705b8, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x26705c8 targets 0x2670680, is taken when a0(=[a0+184]:8) < a1(=[a0+176]:8+24) (unsigned), and falls through when a0(=[a0+184]:8) >= a1(=[a0+176]:8+24) (unsigned).
  The `beq` branch at 0x2670640 targets 0x2670654, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2670658 targets 0x267066c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x267068c targets 0x26705cc and is always taken.
  The return at 0x2670678 has v0 = ?.
  The return at 0x26706a0 has v0 = 0x0.

- `glXDestroyWindow` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x26706a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x26706a8-0x26707a4 (252 bytes).
  It occupies 252 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x26706e4, `ld` at 0x2670754.
  The `ld` at 0x26706f0 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x26706fc, `ld` at 0x2670734, `ld` at 0x26707a0.
  The `ld` at 0x2670700 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x267071c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2670724 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x267072c, `sb` at 0x267074c.
  The `ld` at 0x2670730 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x267073c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2670744 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2670748 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2670750 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x2670760 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x267076c loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x26706d0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x26706f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2670764 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=a1 at entry (arg1), a4=[a0+2408]:8, a6=[a0+152]:8+1, a7=[a0+176]:8+8.
  The `jalr` at 0x2670778 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2670794 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+8, a3=?.
  The `beq` branch at 0x26706dc targets 0x2670784, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x26706e8 targets 0x26706fc, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` branch at 0x267070c targets 0x2670794, is taken when a1(=[a0+184]:8) < a2(=[a0+176]:8+8) (unsigned), and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+8) (unsigned).
  The `beq` branch at 0x2670758 targets 0x267076c, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2670770 targets 0x2670784, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x267079c targets 0x2670714 and is always taken.
  The return at 0x267078c has v0 = one of ret(__glXSetupForCommand), ?, ret(?).

- `glXBindChannelToWindowSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x26711c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x26711c0-0x26712e4 (292 bytes).
  It occupies 292 bytes.
  The `ld` at 0x26711d8 loads 8 bytes from abs 0x1028.
  The `ld` at 0x26711f0 loads 8 bytes from [0x1028]:8 +0x118.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x2671284, `sb` at 0x26712e0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2671288, `ld` at 0x267128c.
  The `lw` at 0x26712a0 loads 4 bytes from ?.
  The `jalr` at 0x26711f4 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2671218 calls (unnamed) [0x2671024] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0x2671244 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4.
  The `jalr` at 0x2671254 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x267129c calls (unknown callee) with a0=?, a1=0x1, a2=?, a3=?, a7=(((a2 << 0x2) + a2) << 0x3).
  The `beq` branch at 0x26711fc targets 0x26712b8, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0x2671220 targets 0x26712cc, is taken when v0(=ret(0x2671024)) == 0, and falls through when v0(=ret(0x2671024)) != 0.
  The `beq` branch at 0x2671280 targets 0x26712dc, is taken when v1(=a3) == 0, and falls through when v1(=a3) != 0.
  The `beq` branch at 0x2671290 targets 0x26712d4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x26712cc targets 0x26712bc and is always taken.
  The `beq` branch at 0x26712d4 targets 0x26712c0 and is always taken.
  The `beq` branch at 0x26712dc targets 0x26712a4 and is always taken.
  The return at 0x26712b0 has v0 = 0x1.
  The return at 0x26712c4 has v0 = 0x0.

- `__glChangeWindowSize` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31840 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e31840-0x2e31960 (288 bytes).
  It occupies 288 bytes.
  The `sw` at 0x2e31848 stores 4 bytes to a0 (arg0 at entry) +0xfdc.
  The `sw` at 0x2e31854 stores 4 bytes to a0 (arg0 at entry) +0xfd8.
  The `ld` at 0x2e31860 loads 8 bytes from a0 (arg0 at entry) +0x9968.
  The `ld` at 0x2e31870 loads 8 bytes from [a0+39272]:8 +0x58.
  The `lbu` at 0x2e31894 loads 1 byte from a0 (arg0 at entry) +0xde6.
  The `ld` at 0x2e318a0 loads 8 bytes from a0 (arg0 at entry) +0x9970.
  The `ld` at 0x2e318a4 loads 8 bytes from [a0+39280]:8 +0x58.
  The `lbu` at 0x2e318b4 loads 1 byte from a0 (arg0 at entry) +0xde8.
  The `ld` at 0x2e318c0 loads 8 bytes from a0 (arg0 at entry) +0x9de0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xde9, including `lbu` at 0x2e318cc, `lbu` at 0x2e3195c.
  The `ld` at 0x2e318d8 loads 8 bytes from a0 (arg0 at entry) +0x9d50.
  The `lbu` at 0x2e318f0 loads 1 byte from a0 (arg0 at entry) +0xdea.
  The `ld` at 0x2e318fc loads 8 bytes from a0 (arg0 at entry) +0x9c78.
  The `ld` at 0x2e31914 loads 8 bytes from a0 (arg0 at entry) +0x4850.
  The `ld` at 0x2e31940 loads 8 bytes from a0 (arg0 at entry) +0x9e20.
  The `jalr` at 0x2e3188c calls (unknown callee) with a0=[a0+39272]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e318ac calls (unknown callee) with a0=[a0+39280]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x2e318e8 calls (unknown callee) with a0=a0+40184, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x2e3190c calls (unknown callee) with a0=a0+39968, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x2e31924 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2e31950 calls (unknown callee) with a0=a0+40392, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0x2e31898 targets 0x2e318b4, is taken when t8(=[a0+3558]:1) == 0, and falls through when t8(=[a0+3558]:1) != 0.
  The `beq` branch at 0x2e318b8 targets 0x2e318cc, is taken when t9(=[a0+3560]:1) == 0, and falls through when t9(=[a0+3560]:1) != 0.
  The `bne` branch at 0x2e318c4 targets 0x2e31940, is taken when ra(=[a0+40416]:8) != 0, and falls through when ra(=[a0+40416]:8) == 0.
  The `beq` branch at 0x2e318d0 targets 0x2e318f0, is taken when at(=[a0+3561]:1) == 0, and falls through when at(=[a0+3561]:1) != 0.
  The `beq` branch at 0x2e318f4 targets 0x2e31914, is taken when a1(=[a0+3562]:1) == 0, and falls through when a1(=[a0+3562]:1) != 0.
  The `beq` branch at 0x2e31958 targets 0x2e318d0 and is always taken.
  The return at 0x2e31938 has v0 = ret(?).

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31960 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e31960-0x2e3196c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0x2e31960 stores 4 bytes to a0 (arg0 at entry) +0xfe4.
  The `sw` at 0x2e31968 stores 4 bytes to a0 (arg0 at entry) +0xfe0.
  The return at 0x2e31964 has v0 = ?.

- `__glFindWindowSize` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31970 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e31970-0x2e31a44 (212 bytes).
  It occupies 212 bytes.
  The `ld` at 0x2e31984 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x2e319b0 loads 4 bytes from a0 (arg0 at entry) +0xfd8.
  The `lw` at 0x2e319b4 loads 4 bytes from a0 (arg0 at entry) +0xfdc.
  The `lbu` at 0x2e319d0 loads 1 byte from a0 (arg0 at entry) +0xf20.
  The `lw` at 0x2e319e8 loads 4 bytes from a0 (arg0 at entry) +0xfe0.
  The `lw` at 0x2e319f0 loads 4 bytes from a0 (arg0 at entry) +0xfe4.
  The `ld` at 0x2e31a24 loads 8 bytes from a0 (arg0 at entry) +0x90.
  The `jalr` at 0x2e319a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-48, a2=sp-44, a3=sp-40, a4=sp-36.
  The `bgezall` at 0x2e319c8 calls __glChangeWindowSize [0x2e31840] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e31a14 calls __glChangeReadWindowSize [0x2e31960] with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+4064], a4=[a0+4068].
  The `jalr` at 0x2e31a30 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-32, a2=sp-28, a3=?.
  The `bne` branch at 0x2e319b8 targets 0x2e319c4, is taken when v0(=[a0+4056]) != a1(?), and falls through when v0(=[a0+4056]) == a1(?).
  The `beq` branch at 0x2e319c0 targets 0x2e319d0, is taken when v1(=[a0+4060]) == a2(?), and falls through when v1(=[a0+4060]) != a2(?).
  The `beq` branch at 0x2e319d4 targets 0x2e31a24, is taken when a0(=[a0+3872]:1) == 0, and falls through when a0(=[a0+3872]:1) != 0.
  The `bne` branch at 0x2e319ec targets 0x2e31a10, is taken when a3(=[a0+4064]) != a1(?), and falls through when a3(=[a0+4064]) == a1(?).
  The `bne` branch at 0x2e319f4 targets 0x2e31a14, is taken when a4(=[a0+4068]) != a2(?), and falls through when a4(=[a0+4068]) == a2(?).
  The `beq` branch at 0x2e31a1c targets 0x2e31a00 and is always taken.
  The `beq` branch at 0x2e31a3c targets 0x2e319e8 and is always taken.
  The return at 0x2e31a08 has v0 = one of ?, ret(__glChangeReadWindowSize).

- `__glXBindHWContextToWindow` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd810634 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd810634-0xd810920 (748 bytes).
  It occupies 748 bytes.
  The `lw` at 0xd810650 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd810668, `lw` at 0xd8106d8.
  51 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd810670, `lw` at 0xd810690, `lw` at 0xd8106d4.
  The `lw` at 0xd810674 loads 4 bytes from [0x1014] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0xd8106b8, `lw` at 0xd8107b0, `lw` at 0xd8108a4.
  The `sw` at 0xd8106dc stores 4 bytes to [0x1014] +0x0.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8106e8, `sb` at 0xd8107e0, `sb` at 0xd8108d0.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8107e8, `sw` at 0xd8107f4, `sw` at 0xd8107fc.
  The `jalr` at 0xd81065c calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd810698 calls Ioctl [0xd8113d4] with a0=?, a1=0x3ea, a2=sp-12, a3=?.
  The `jalr` at 0xd8106c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd841624, a2=?, a3=?.
  The `jalr` at 0xd810790 calls Ioctl [0xd8113d4] with a0=?, a1=0x3eb, a2=sp-24, a3=?.
  The `jalr` at 0xd8107b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd84163c, a2=?, a3=?.
  The `jalr` at 0xd810880 calls Ioctl [0xd8113d4] with a0=?, a1=0x400, a2=sp-44, a3=?.
  The `jalr` at 0xd8108ac calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd841654, a2=?, a3=?.
  The `beq` branch at 0xd810680 targets 0xd8106e4, is taken when t7(=[[0x1014]]) == a3(?), and falls through when t7(=[[0x1014]]) != a3(?).
  The `bgez` branch at 0xd8106a4 targets 0xd8106d4, is taken when v0(=ret(Ioctl)) >= 0 (signed), and falls through when v0(=ret(Ioctl)) < 0 (signed).
  The `beq` branch at 0xd8106cc targets 0xd8106e0 and is always taken.
  The `bne` branch at 0xd8106e4 targets 0xd81070c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bnel` branch at 0xd8106f4 targets 0xd810710, is taken when t1(?) != t2(?), and falls through when t1(?) == t2(?); its branch-likely delay slot `lw t5,220(v1)` at 0xd8106f8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810704 targets 0xd810914, is taken when t3(?) == t4(?), and falls through when t3(?) != t4(?); its branch-likely delay slot `lw ra,28(sp)` at 0xd810708 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810714 targets 0xd810734, is taken when t5(?) == t6(?), and falls through when t5(?) != t6(?); its branch-likely delay slot `lw t8,204(v1)` at 0xd810718 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd810728 targets 0xd810804, is taken when t9(?) != at(=0x3), and falls through when t9(?) == at(=0x3); its branch-likely delay slot `lw t4,204(v1)` at 0xd81072c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810740 targets 0xd810768, is taken when t0(?) >= 0x2 (signed), and falls through when t0(?) < 0x2 (signed); its branch-likely delay slot `lw t3,228(v1)` at 0xd810744 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810750 targets 0xd810768, is taken when t1(?) >= 0x3 (signed), and falls through when t1(?) < 0x3 (signed); its branch-likely delay slot `lw t3,228(v1)` at 0xd810754 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd81075c targets 0xd810770 and is always taken.
  The `bne` branch at 0xd8107a0 targets 0xd8107c8, is taken when v0(=ret(Ioctl)) != at(=-0x1), and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `beq` branch at 0xd8107c0 targets 0xd810910 and is always taken.
  The `beql` branch at 0xd8107d8 targets 0xd8107f0, is taken when t7(?) == t8(?), and falls through when t7(?) != t8(?); its branch-likely delay slot `lw t2,224(v1)` at 0xd8107dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8107f8 targets 0xd810910 and is always taken.
  The `bnel` branch at 0xd810810 targets 0xd810840, is taken when t5(?) != at(=0x1), and falls through when t5(?) == at(=0x1); its branch-likely delay slot `lw t8,228(v1)` at 0xd810814 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810820 targets 0xd810840, is taken when t6(?) >= 0x3 (signed), and falls through when t6(?) < 0x3 (signed); its branch-likely delay slot `lw t8,228(v1)` at 0xd810824 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd810834 targets 0xd810854 and is always taken.
  The `bne` branch at 0xd810890 targets 0xd8108bc, is taken when v0(=ret(Ioctl)) != at(=-0x1), and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `beq` branch at 0xd8108b4 targets 0xd810910 and is always taken.
  The `bnel` branch at 0xd8108cc targets 0xd8108ec, is taken when t7(?) != t8(?), and falls through when t7(?) == t8(?); its branch-likely delay slot `sb t3,244(v1)` at 0xd8108d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8108e0 targets 0xd810904, is taken when t0(?) == t2(?), and falls through when t0(?) != t2(?); its branch-likely delay slot `lw t9,224(v1)` at 0xd8108e4 runs only when taken and is annulled on fall-through.
  The return at 0xd810918 has v0 = ?.
  The instructions from 0xd810764 to 0xd810764 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd810800 to 0xd810800 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd81083c to 0xd81083c are not reached by any path from the entry, and their branches are not listed.

- `glXCreateWindow` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd837a78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd837a78-0xd837c10 (408 bytes).
  It occupies 408 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd837ac8, `lw` at 0xd837ad4, `lw` at 0xd837af0.
  The `lw` at 0xd837acc loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lw` at 0xd837ae0 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `lw` at 0xd837aec loads 4 bytes from ?.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd837af8, `lw` at 0xd837b10, `lw` at 0xd837b3c.
  The `lw` at 0xd837afc loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd837b14 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd837b44 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd837b50 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd837b54, `sb` at 0xd837b7c.
  The `lw` at 0xd837b58 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd837b6c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd837b70 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd837b78 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd837b80 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd837b84 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd837b88 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd837b8c stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd837b94 stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd837b9c loads 4 bytes from a0 (arg0 at entry) +0x2c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd837bb4, `sw` at 0xd837bb8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd837bc4, `lw` at 0xd837bdc.
  The `lw` at 0xd837bc8 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd837aa4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd837b04 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd837b30 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd837ba0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x1f, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xd837bd0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd837bec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd837ab4 targets 0xd837ac4, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd837abc targets 0xd837bfc and is always taken.
  The `beql` branch at 0xd837ac4 targets 0xd837af4, is taken when a3 == 0, and falls through when a3 != 0; its branch-likely delay slot `lw a1,1232(s0)` at 0xd837ac8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837ad0 targets 0xd837af4, is taken when v1(=[a3]) == 0, and falls through when v1(=[a3]) != 0; its branch-likely delay slot `lw a1,1232(s0)` at 0xd837ad4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd837ad8 targets 0xd837af0, is taken when v1(=[a3]) == 0, and falls through when v1(=[a3]) != 0.
  The `bnel` branch at 0xd837ae8 targets 0xd837ae4, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `lw t6,8(v0)` at 0xd837aec runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837af4 targets 0xd837b14, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s0)` at 0xd837af8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837b20 targets 0xd837b44, is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned); its branch-likely delay slot `lw a2,60(sp)` at 0xd837b24 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837bc0 targets 0xd837be0, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd837bc4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837be4 targets 0xd837bfc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,48(sp)` at 0xd837be8 runs only when taken and is annulled on fall-through.
  The return at 0xd837c08 has v0 = one of 0x0, ?.

- `glXDestroyWindow` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd837c10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd837c10-0xd837d28 (280 bytes).
  It occupies 280 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd837c48, `lw` at 0xd837cd8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd837c50, `lw` at 0xd837c68, `lw` at 0xd837c94.
  The `lw` at 0xd837c54 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd837c6c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd837c7c, `sw` at 0xd837c98.
  The `sh` at 0xd837ca4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd837ca8, `sb` at 0xd837ccc.
  The `lw` at 0xd837cac loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd837cbc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd837cc0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd837cc8 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd837cd4 stores 4 bytes to [a0+108] +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd837ce0, `lw` at 0xd837cf8.
  The `lw` at 0xd837ce4 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd837c34 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd837c5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd837c88 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd837cec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x20, a2=?, a3=?.
  The `jalr` at 0xd837d08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd837c40 targets 0xd837d14, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` branch at 0xd837c4c targets 0xd837c6c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd837c50 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837c78 targets 0xd837c9c, is taken when t6(=[a0+112]) >= t7(=[a0+108]+8) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd837c7c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837cdc targets 0xd837cfc, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd837ce0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837d00 targets 0xd837d18, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd837d04 runs only when taken and is annulled on fall-through.
  The return at 0xd837d20 has v0 = one of [a0+124], ?.

- `glXBindChannelToWindowSGIX` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd839e08 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd839e08-0xd839f4c (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0xd839e18 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd839e38 loads 4 bytes from [0x1014] +0x114.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xd839eec, `sb` at 0xd839f30.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd839ef8, `lw` at 0xd839efc, `lw` at 0xd839f08.
  The `jalr` at 0xd839e40 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd839e68 calls __glXInitChannelRectState [0xd839c70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd839ea0 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64.
  The `jalr` at 0xd839eb8 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd839f10 calls (unknown callee) with a0=?, a1=0x1, a2=?, a3=?.
  The `beq` branch at 0xd839e4c targets 0xd839f38, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd839e70 targets 0xd839f38, is taken when v0(=ret(__glXInitChannelRectState)) == 0, and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` branch at 0xd839ee8 targets 0xd839f20, is taken when (t5(?) & 0xff) == 0, and falls through when (t5(?) & 0xff) != 0.
  The `beql` branch at 0xd839f00 targets 0xd839f3c, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd839f04 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd839f28 targets 0xd839f38, is taken when t9(=a3) != 0, and falls through when t9(=a3) == 0; its branch-likely delay slot `sw t0,48(sp)` at 0xd839f2c runs only when taken and is annulled on fall-through.
  The return at 0xd839f44 has v0 = ?.

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

- `__glXBindHWContextToWindow` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd80e93c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGL.so`.
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

- `glXCreateWindow` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd83b8b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGL.so`.
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
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd83b98c, `sw` at 0xd83b990.
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
  The return at 0xd83b9d0 has v0 = ?.
  The return at 0xd83b9f4 has v0 = 0x0.

- `glXDestroyWindow` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd83b9fc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGL.so`.
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

- `glXBindChannelToWindowSGIX` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd83c52c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGL.so`.
  Range: 0xd83c52c-0xd83c68c (352 bytes).
  It occupies 352 bytes.
  The `lw` at 0xd83c548 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83c568 loads 4 bytes from [0x1014] +0x114.
  The `sb` at 0xd83c604 stores 1 byte to (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x48.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd83c608, `lw` at 0xd83c60c.
  The `lw` at 0xd83c620 loads 4 bytes from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x44.
  The `sb` at 0xd83c688 stores 1 byte to (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x49.
  The `jalr` at 0xd83c570 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd83c594 calls (unnamed) [0xd83c38c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd83c5c0 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4.
  The `jalr` at 0xd83c5d4 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd83c61c calls (unknown callee) with a0=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+68], a1=0x1, a2=?, a3=?.
  The `beq` branch at 0xd83c578 targets 0xd83c638, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd83c59c targets 0xd83c65c, is taken when v0(=ret(0xd83c38c)) == 0, and falls through when v0(=ret(0xd83c38c)) != 0.
  The `beq` branch at 0xd83c600 targets 0xd83c67c, is taken when a0(=a3) == 0, and falls through when a0(=a3) != 0.
  The `beq` branch at 0xd83c614 targets 0xd83c674, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xd83c66c targets 0xd83c628 and is always taken.
  The `beq` branch at 0xd83c674 targets 0xd83c628 and is always taken.
  The `beq` branch at 0xd83c684 targets 0xd83c624 and is always taken.
  The return at 0xd83c630 has v0 = one of 0x0, 0x1.
  The return at 0xd83c654 has v0 = 0x0.

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

- `__glXBindHWContextToWindow` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2143464 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2143464-0x214371c (696 bytes).
  It occupies 696 bytes.
  The `ld` at 0x2143490 loads 8 bytes from a0 (arg0 at entry) +0x98.
  2 such `ld` accesses load 8 bytes from abs 0x1028, including `ld` at 0x2143494, `ld` at 0x2143684.
  3 such `lw` accesses load 4 bytes from [a0+152]:8 +0x128, including `lw` at 0x2143498, `lw` at 0x2143688, `lw` at 0x2143698.
  The `lw` at 0x214349c loads 4 bytes from [0x1028]:8 +0x0.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x148, including `ld` at 0x21434a8, `ld` at 0x214358c, `ld` at 0x2143600.
  The `ld` at 0x21434ac loads 8 bytes from [a0+152]:8 +0x168.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x140, including `ld` at 0x21434b0, `ld` at 0x2143590, `ld` at 0x2143604.
  4 such `sb` accesses store 1 byte to [a0+152]:8 +0x170, including `sb` at 0x21434b8, `sb` at 0x2143574, `sb` at 0x21435f0.
  The `ld` at 0x21434bc loads 8 bytes from [a0+152]:8 +0x160.
  5 such `ld` accesses load 8 bytes from [a0+152]:8 +0x158, including `ld` at 0x21434d4, `ld` at 0x2143508, `ld` at 0x2143520.
  The `lw` at 0x21434d8 loads 4 bytes from [[a0+152]:8+344]:8 +0x40.
  2 such `lw` accesses load 4 bytes from [a0+152]:8 +0x1b0, including `lw` at 0x21434ec, `lw` at 0x2143638.
  2 such `lw` accesses load 4 bytes from [a0+152]:8 +0x1b4, including `lw` at 0x21434f0, `lw` at 0x214363c.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x150, including `ld` at 0x21434fc, `ld` at 0x2143514, `ld` at 0x2143554.
  2 such `ld` accesses load 8 bytes from [[a0+152]:8+336]:8 +0x30, including `ld` at 0x2143500, `ld` at 0x21435ac.
  The `ld` at 0x214350c loads 8 bytes from [[a0+152]:8+344]:8 +0x30.
  4 such `lw` accesses load 4 bytes from [[a0+152]:8+336]:8 +0x8, including `lw` at 0x2143518, `lw` at 0x2143558, `lw` at 0x21435b8.
  2 such `lw` accesses load 4 bytes from [[a0+152]:8+344]:8 +0x8, including `lw` at 0x2143524, `lw` at 0x2143568.
  3 such `lw` accesses load 4 bytes from [a0+152]:8 +0x40, including `lw` at 0x2143538, `lw` at 0x21435cc, `lw` at 0x2143670.
  2 such `sw` accesses store 4 bytes to [[a0+152]:8+336]:8 +0x8, including `sw` at 0x214357c, `sw` at 0x21435f8.
  The `sw` at 0x2143588 stores 4 bytes to [[a0+152]:8+344]:8 +0x8.
  2 such `sd` accesses store 8 bytes to [a0+152]:8 +0x160, including `sd` at 0x2143594, `sd` at 0x214360c.
  2 such `sd` accesses store 8 bytes to [a0+152]:8 +0x168, including `sd` at 0x2143598, `sd` at 0x2143610.
  The `sw` at 0x214368c stores 4 bytes to [0x1028]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x21436c4, `ld` at 0x21436e4, `ld` at 0x2143704.
  The `jalr` at 0x214348c calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2143534 calls (unnamed) [0x2142fec] with a0=[[a0+152]:8+64], a1=0x400, a2=sp-56, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296].
  The `bgezall` at 0x21435c8 calls (unnamed) [0x2142fec] with a0=[[a0+152]:8+64], a1=0x3eb, a2=sp-72, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296].
  The `bgezall` at 0x2143674 calls (unnamed) [0x2142fec] with a0=[[a0+152]:8+64], a1=0x3ea, a2=sp-80, a3=?, a4=[[a0+152]:8+296].
  The `jalr` at 0x21436cc calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2177478, a2=?, a3=?.
  The `jalr` at 0x21436ec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x21774b0, a2=0x1, a3=?.
  The `jalr` at 0x214370c calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2177490, a2=-0x1, a3=?.
  The `bne` branch at 0x21434a0 targets 0x2143660, is taken when v1(=[[0x1028]:8]) != a4(=[[a0+152]:8+296]), and falls through when v1(=[[0x1028]:8]) == a4(=[[a0+152]:8+296]).
  The `bne` branch at 0x21434b4 targets 0x21434c8, is taken when a0(=[[a0+152]:8+360]:8) != a3(=[[a0+152]:8+328]:8), and falls through when a0(=[[a0+152]:8+360]:8) == a3(=[[a0+152]:8+328]:8).
  The `beq` branch at 0x21434c0 targets 0x2143624, is taken when a1(=[[a0+152]:8+352]:8) == a2(=[[a0+152]:8+320]:8), and falls through when a1(=[[a0+152]:8+352]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` branch at 0x21434cc targets 0x2143634, is taken when a3(=[[a0+152]:8+328]:8) == a2(=[[a0+152]:8+320]:8), and falls through when a3(=[[a0+152]:8+328]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` branch at 0x21434e0 targets 0x2143634, is taken when ra(=[[[a0+152]:8+344]:8+64]) == at(=0x3), and falls through when ra(=[[[a0+152]:8+344]:8+64]) != at(=0x3).
  The `beq` branch at 0x21434f4 targets 0x21436a4, is taken when at(=[[a0+152]:8+432]) == a2(=0x1), and falls through when at(=[[a0+152]:8+432]) != a2(=0x1).
  The `beq` branch at 0x214354c targets 0x21436fc, is taken when v0(=ret(0x2142fec)) == a2(=-0x1), and falls through when v0(=ret(0x2142fec)) != a2(=-0x1).
  The `bne` branch at 0x2143560 targets 0x2143574, is taken when a3(=[[[a0+152]:8+336]:8+8]) != a4(?), and falls through when a3(=[[[a0+152]:8+336]:8+8]) == a4(?).
  The `beq` branch at 0x214356c targets 0x214358c, is taken when a5(=[[[a0+152]:8+344]:8+8]) == a6(?), and falls through when a5(=[[[a0+152]:8+344]:8+8]) != a6(?).
  The `beq` branch at 0x21435d4 targets 0x21436dc, is taken when v0(=ret(0x2142fec)) == at(=-0x1), and falls through when v0(=ret(0x2142fec)) != at(=-0x1).
  The `beq` branch at 0x21435e8 targets 0x2143600, is taken when v0(=[[[a0+152]:8+336]:8+8]) == v1(?), and falls through when v0(=[[[a0+152]:8+336]:8+8]) != v1(?).
  The `beq` branch at 0x2143644 targets 0x21435a8, is taken when a5(=[[a0+152]:8+432]) >= 0x2 (signed), and falls through when a5(=[[a0+152]:8+432]) < 0x2 (signed).
  The `beq` branch at 0x214364c targets 0x21435a8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x2143658 targets 0x21435b4 and is always taken.
  The `bltz` branch at 0x214367c targets 0x21436c0, is taken when v0(=ret(0x2142fec)) < 0 (signed), and falls through when v0(=ret(0x2142fec)) >= 0 (signed).
  The `beq` branch at 0x214369c targets 0x21434c8 and is always taken.
  The `beq` branch at 0x21436a4 targets 0x21434fc, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x21436b8 targets 0x2143514 and is always taken.
  The `beq` branch at 0x21436d4 targets 0x2143694 and is always taken.
  The `beq` branch at 0x21436f4 targets 0x2143624 and is always taken.
  The `beq` branch at 0x2143714 targets 0x2143624 and is always taken.
  The return at 0x21435a0 has v0 = ret(0x2142fec).
  The return at 0x2143618 has v0 = [[[a0+152]:8+336]:8+8].
  The return at 0x214362c has v0 = one of ret(__glXHWAttach), ret(?).
  The instructions from 0x2143620 to 0x2143620 are not reached by any path from the entry, and their branches are not listed.

- `glXCreateWindow` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2170560 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2170560-0x21706a8 (328 bytes).
  It occupies 328 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x21705a0, `ld` at 0x217063c.
  The `ld` at 0x21705ac loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x21705b8, `ld` at 0x21705f0, `ld` at 0x2170690.
  The `ld` at 0x21705bc loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x21705d8 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x21705e0 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x21705e8, `sb` at 0x2170608.
  The `ld` at 0x21705ec loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x21705f8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2170600 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sb` at 0x2170604 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x217060c loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0x2170610 stores 4 bytes to [a0+176]:8 +0x4.
  The `lw` at 0x2170614 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0x2170618 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x217061c stores 4 bytes to [a0+176]:8 +0x8.
  The `ld` at 0x2170620 loads 8 bytes from a0 (arg0 at entry) +0x48.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2170634, `sw` at 0x2170638.
  The `ld` at 0x2170648 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2170654 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x217058c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21705b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2170628 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=[a1+72], a4=[a1+36], a5=[a0+176]:8, a6=0x1f.
  The `jalr` at 0x217064c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2170660 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2170684 calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8+24, a2=a2 at entry (arg2), a3=?, a5=[a0+176]:8.
  The `beq` branch at 0x2170598 targets 0x2170694, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x21705a4 targets 0x21705b8, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x21705c8 targets 0x2170680, is taken when a0(=[a0+184]:8) < a1(=[a0+176]:8+24) (unsigned), and falls through when a0(=[a0+184]:8) >= a1(=[a0+176]:8+24) (unsigned).
  The `beq` branch at 0x2170640 targets 0x2170654, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2170658 targets 0x217066c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x217068c targets 0x21705cc and is always taken.
  The return at 0x2170678 has v0 = ?.
  The return at 0x21706a0 has v0 = 0x0.

- `glXDestroyWindow` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x21706a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x21706a8-0x21707a4 (252 bytes).
  It occupies 252 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x21706e4, `ld` at 0x2170754.
  The `ld` at 0x21706f0 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x21706fc, `ld` at 0x2170734, `ld` at 0x21707a0.
  The `ld` at 0x2170700 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x217071c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2170724 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x217072c, `sb` at 0x217074c.
  The `ld` at 0x2170730 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x217073c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2170744 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2170748 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2170750 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x2170760 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x217076c loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x21706d0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21706f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2170764 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=a1 at entry (arg1), a4=[a0+2408]:8, a6=[a0+152]:8+1, a7=[a0+176]:8+8.
  The `jalr` at 0x2170778 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2170794 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+8, a3=?.
  The `beq` branch at 0x21706dc targets 0x2170784, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x21706e8 targets 0x21706fc, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` branch at 0x217070c targets 0x2170794, is taken when a1(=[a0+184]:8) < a2(=[a0+176]:8+8) (unsigned), and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+8) (unsigned).
  The `beq` branch at 0x2170758 targets 0x217076c, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2170770 targets 0x2170784, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x217079c targets 0x2170714 and is always taken.
  The return at 0x217078c has v0 = one of ret(__glXSetupForCommand), ?, ret(?).

- `glXBindChannelToWindowSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x21711c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x21711c0-0x21712e4 (292 bytes).
  It occupies 292 bytes.
  The `ld` at 0x21711d8 loads 8 bytes from abs 0x1028.
  The `ld` at 0x21711f0 loads 8 bytes from [0x1028]:8 +0x118.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x2171284, `sb` at 0x21712e0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2171288, `ld` at 0x217128c.
  The `lw` at 0x21712a0 loads 4 bytes from ?.
  The `jalr` at 0x21711f4 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2171218 calls (unnamed) [0x2171024] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0x2171244 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4.
  The `jalr` at 0x2171254 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x217129c calls (unknown callee) with a0=?, a1=0x1, a2=?, a3=?, a7=(((a2 << 0x2) + a2) << 0x3).
  The `beq` branch at 0x21711fc targets 0x21712b8, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0x2171220 targets 0x21712cc, is taken when v0(=ret(0x2171024)) == 0, and falls through when v0(=ret(0x2171024)) != 0.
  The `beq` branch at 0x2171280 targets 0x21712dc, is taken when v1(=a3) == 0, and falls through when v1(=a3) != 0.
  The `beq` branch at 0x2171290 targets 0x21712d4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x21712cc targets 0x21712bc and is always taken.
  The `beq` branch at 0x21712d4 targets 0x21712c0 and is always taken.
  The `beq` branch at 0x21712dc targets 0x21712a4 and is always taken.
  The return at 0x21712b0 has v0 = 0x1.
  The return at 0x21712c4 has v0 = 0x0.

- `__glChangeWindowSize` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2211840 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2211840-0x2211960 (288 bytes).
  It occupies 288 bytes.
  The `sw` at 0x2211848 stores 4 bytes to a0 (arg0 at entry) +0xfdc.
  The `sw` at 0x2211854 stores 4 bytes to a0 (arg0 at entry) +0xfd8.
  The `ld` at 0x2211860 loads 8 bytes from a0 (arg0 at entry) +0x9968.
  The `ld` at 0x2211870 loads 8 bytes from [a0+39272]:8 +0x58.
  The `lbu` at 0x2211894 loads 1 byte from a0 (arg0 at entry) +0xde6.
  The `ld` at 0x22118a0 loads 8 bytes from a0 (arg0 at entry) +0x9970.
  The `ld` at 0x22118a4 loads 8 bytes from [a0+39280]:8 +0x58.
  The `lbu` at 0x22118b4 loads 1 byte from a0 (arg0 at entry) +0xde8.
  The `ld` at 0x22118c0 loads 8 bytes from a0 (arg0 at entry) +0x9de0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xde9, including `lbu` at 0x22118cc, `lbu` at 0x221195c.
  The `ld` at 0x22118d8 loads 8 bytes from a0 (arg0 at entry) +0x9d50.
  The `lbu` at 0x22118f0 loads 1 byte from a0 (arg0 at entry) +0xdea.
  The `ld` at 0x22118fc loads 8 bytes from a0 (arg0 at entry) +0x9c78.
  The `ld` at 0x2211914 loads 8 bytes from a0 (arg0 at entry) +0x4850.
  The `ld` at 0x2211940 loads 8 bytes from a0 (arg0 at entry) +0x9e20.
  The `jalr` at 0x221188c calls (unknown callee) with a0=[a0+39272]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x22118ac calls (unknown callee) with a0=[a0+39280]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x22118e8 calls (unknown callee) with a0=a0+40184, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x221190c calls (unknown callee) with a0=a0+39968, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x2211924 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2211950 calls (unknown callee) with a0=a0+40392, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0x2211898 targets 0x22118b4, is taken when t8(=[a0+3558]:1) == 0, and falls through when t8(=[a0+3558]:1) != 0.
  The `beq` branch at 0x22118b8 targets 0x22118cc, is taken when t9(=[a0+3560]:1) == 0, and falls through when t9(=[a0+3560]:1) != 0.
  The `bne` branch at 0x22118c4 targets 0x2211940, is taken when ra(=[a0+40416]:8) != 0, and falls through when ra(=[a0+40416]:8) == 0.
  The `beq` branch at 0x22118d0 targets 0x22118f0, is taken when at(=[a0+3561]:1) == 0, and falls through when at(=[a0+3561]:1) != 0.
  The `beq` branch at 0x22118f4 targets 0x2211914, is taken when a1(=[a0+3562]:1) == 0, and falls through when a1(=[a0+3562]:1) != 0.
  The `beq` branch at 0x2211958 targets 0x22118d0 and is always taken.
  The return at 0x2211938 has v0 = ret(?).

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2211960 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2211960-0x221196c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0x2211960 stores 4 bytes to a0 (arg0 at entry) +0xfe4.
  The `sw` at 0x2211968 stores 4 bytes to a0 (arg0 at entry) +0xfe0.
  The return at 0x2211964 has v0 = ?.

- `__glFindWindowSize` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2211970 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2211970-0x2211a44 (212 bytes).
  It occupies 212 bytes.
  The `ld` at 0x2211984 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x22119b0 loads 4 bytes from a0 (arg0 at entry) +0xfd8.
  The `lw` at 0x22119b4 loads 4 bytes from a0 (arg0 at entry) +0xfdc.
  The `lbu` at 0x22119d0 loads 1 byte from a0 (arg0 at entry) +0xf20.
  The `lw` at 0x22119e8 loads 4 bytes from a0 (arg0 at entry) +0xfe0.
  The `lw` at 0x22119f0 loads 4 bytes from a0 (arg0 at entry) +0xfe4.
  The `ld` at 0x2211a24 loads 8 bytes from a0 (arg0 at entry) +0x90.
  The `jalr` at 0x22119a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-48, a2=sp-44, a3=sp-40, a4=sp-36.
  The `bgezall` at 0x22119c8 calls __glChangeWindowSize [0x2211840] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2211a14 calls __glChangeReadWindowSize [0x2211960] with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+4064], a4=[a0+4068].
  The `jalr` at 0x2211a30 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-32, a2=sp-28, a3=?.
  The `bne` branch at 0x22119b8 targets 0x22119c4, is taken when v0(=[a0+4056]) != a1(?), and falls through when v0(=[a0+4056]) == a1(?).
  The `beq` branch at 0x22119c0 targets 0x22119d0, is taken when v1(=[a0+4060]) == a2(?), and falls through when v1(=[a0+4060]) != a2(?).
  The `beq` branch at 0x22119d4 targets 0x2211a24, is taken when a0(=[a0+3872]:1) == 0, and falls through when a0(=[a0+3872]:1) != 0.
  The `bne` branch at 0x22119ec targets 0x2211a10, is taken when a3(=[a0+4064]) != a1(?), and falls through when a3(=[a0+4064]) == a1(?).
  The `bne` branch at 0x22119f4 targets 0x2211a14, is taken when a4(=[a0+4068]) != a2(?), and falls through when a4(=[a0+4068]) == a2(?).
  The `beq` branch at 0x2211a1c targets 0x2211a00 and is always taken.
  The `beq` branch at 0x2211a3c targets 0x22119e8 and is always taken.
  The return at 0x2211a08 has v0 = one of ?, ret(__glChangeReadWindowSize).

- `__ct__18ChannelWindowClassGPCcP3ArgUii` in `usr/gfx/ircombine` at 0x10020b00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10020b00-0x10020ce4 (484 bytes).
  It occupies 484 bytes.
  The `sw` at 0x10020b50 stores 4 bytes to a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x10020bb4, `lw` at 0x10020bc8.
  The `lw` at 0x10020bb8 loads 4 bytes from [a0+8] +0xe4.
  The `lw` at 0x10020bcc loads 4 bytes from [a0+8] +0xec.
  The `sw` at 0x10020c14 stores 4 bytes to a0 (arg0 at entry) +0x40.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x10020c1c, `lw` at 0x10020c64, `lw` at 0x10020ca4.
  The `jalr` at 0x10020b40 calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10020b5c calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10020b78 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultChannelWindowClassResources__18ChannelWindowClass), a3=?.
  The `jalr` at 0x10020b8c calls __nw__GUi with a0=0x150, a1=?, a2=?, a3=?.
  The `jalr` at 0x10020bd0 calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10020bec calls __ct__5Form1GPCcP10_WidgetReci [0x10032c10] with a0=?, a1=0x100aa400, a2=ret(?), a3=a4 at entry (arg4).
  The `jalr` at 0x10020c24 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10020c54 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x19f, a3=sym(XtStrings)+234, a4=0x242, a5=0x0.
  The `jalr` at 0x10020c6c calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0x10020c98 calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x0, a6=0x1, a7=0x1.
  The `jal` at 0x10020cb0 calls setParent__5Form1GP14VkSimpleWindow [0x10032ed0] with a0=[a0+64], a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x10020ba0 targets 0x10020c08, is taken when a0(=ret(__nw__GUi)) == 0, and falls through when a0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10020c00 targets 0x10020c0c and is always taken.
  The return at 0x10020cc8 has v0 = a0.
  The instructions from 0x10020cd0 to 0x10020ce0 are not reached by any path from the entry, and their branches are not listed.

- `__dt__18ChannelWindowClassGv` in `usr/gfx/ircombine` at 0x10020cf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10020cf0-0x10020dcc (220 bytes).
  It occupies 220 bytes.
  The `sw` at 0x10020d24 stores 4 bytes to a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x10020d2c, `lw` at 0x10020d3c, `lw` at 0x10020d4c.
  2 such `lw` accesses load 4 bytes from [a0+64] +0x8, including `lw` at 0x10020d40, `lw` at 0x10020d60.
  The `lw` at 0x10020d44 loads 4 bytes from [[a0+64]+8] +0xc.
  The `lw` at 0x10020d64 loads 4 bytes from [[a0+64]+8] +0x14.
  The `jalr` at 0x10020d68 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10020d7c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10020d9c calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10020d14 targets 0x10020da4, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10020d30 targets 0x10020d70, is taken when a1(=[a0+64]) == 0, and falls through when a1(=[a0+64]) != 0.
  The `beq` branch at 0x10020d8c targets 0x10020da4, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10020db0 has v0 = one of 0x90380, ret(__dt__14VkSimpleWindowGv), ret(__dl__GPv).
  The instructions from 0x10020db8 to 0x10020dc8 are not reached by any path from the entry, and their branches are not listed.

- `className__18ChannelWindowClassGv` in `usr/gfx/ircombine` at 0x10020dd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10020dd0-0x10020e10 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10020de8 loads 4 bytes from abs 0x100a90d4.
  The `beq` branch at 0x10020df4 targets 0x10020dfc and is always taken.
  The return at 0x10020e08 has v0 = 0x100940e0.

- `okToQuit__18ChannelWindowClassGv` in `usr/gfx/ircombine` at 0x10020e10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10020e10-0x10020e78 (104 bytes).
  It occupies 104 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x10020e30, `lw` at 0x10020e44.
  The `lw` at 0x10020e34 loads 4 bytes from [a0+8] +0x30.
  The `lw` at 0x10020e48 loads 4 bytes from [a0+8] +0x38.
  The `jalr` at 0x10020e4c calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10020e58 targets 0x10020e60 and is always taken.
  The return at 0x10020e70 has v0 = 0x0.

- `update__18ChannelWindowClassGv` in `usr/gfx/ircombine` at 0x10020e80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10020e80-0x10020ecc (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10020ea0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x10020ea8 calls update__5Form1Gv [0x10032f10] with a0=[a0+64], a1=0x901f0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10020eb0 targets 0x10020eb8 and is always taken.
  The return at 0x10020ec4 has v0 = ret(update__5Form1Gv).

- `update_fast__18ChannelWindowClassGv` in `usr/gfx/ircombine` at 0x10020ed0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10020ed0-0x10020f1c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10020ef0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x10020ef8 calls update_fast__5Form1Gv [0x100336a0] with a0=[a0+64], a1=0x901a0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10020f00 targets 0x10020f08 and is always taken.
  The return at 0x10020f14 has v0 = ret(update_fast__5Form1Gv).

- `__ct__14DVPWindowClassGPCcP3ArgUii` in `usr/gfx/ircombine` at 0x10020f40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10020f40-0x10021144 (516 bytes).
  It occupies 516 bytes.
  The `sw` at 0x10020f90 stores 4 bytes to a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x10020ff4, `lw` at 0x10021008.
  The `lw` at 0x10020ff8 loads 4 bytes from [a0+8] +0xe4.
  The `lw` at 0x1002100c loads 4 bytes from [a0+8] +0xec.
  The `sw` at 0x10021054 stores 4 bytes to a0 (arg0 at entry) +0x40.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1002105c, `lw` at 0x100210a4, `lw` at 0x100210b8.
  2 such `lw` accesses load 4 bytes from [a0+64] +0x8, including `lw` at 0x100210bc, `lw` at 0x100210dc.
  The `lw` at 0x100210c0 loads 4 bytes from [[a0+64]+8] +0x210.
  The `lw` at 0x100210e0 loads 4 bytes from [[a0+64]+8] +0x218.
  The `jalr` at 0x10020f80 calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10020f9c calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10020fb8 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultDVPWindowClassResources__14DVPWindowClass), a3=?.
  The `jalr` at 0x10020fcc calls __nw__GUi with a0=0x120, a1=?, a2=?, a3=?.
  The `jalr` at 0x10021010 calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1002102c calls __ct__7DvpFormGPCcP10_WidgetReci [0x10021570] with a0=?, a1=0x100aa408, a2=ret(?), a3=a4 at entry (arg4).
  The `jalr` at 0x10021064 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10021094 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x1f4, a3=sym(XtStrings)+234, a4=0x244, a5=0x0.
  The `jalr` at 0x100210ac calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0x100210e4 calls (unknown callee) with a0=([[[a0+64]+8]+528] + [a0+64]), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10021110 calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x1, a6=0x1, a7=0x1.
  The `beq` branch at 0x10020fe0 targets 0x10021048, is taken when a0(=ret(__nw__GUi)) == 0, and falls through when a0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10021040 targets 0x1002104c and is always taken.
  The return at 0x10021128 has v0 = a0.
  The instructions from 0x10021130 to 0x10021140 are not reached by any path from the entry, and their branches are not listed.

- `__dt__14DVPWindowClassGv` in `usr/gfx/ircombine` at 0x10021150 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10021150-0x1002122c (220 bytes).
  It occupies 220 bytes.
  The `sw` at 0x10021184 stores 4 bytes to a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1002118c, `lw` at 0x1002119c, `lw` at 0x100211ac.
  2 such `lw` accesses load 4 bytes from [a0+64] +0x8, including `lw` at 0x100211a0, `lw` at 0x100211c0.
  The `lw` at 0x100211a4 loads 4 bytes from [[a0+64]+8] +0xc.
  The `lw` at 0x100211c4 loads 4 bytes from [[a0+64]+8] +0x14.
  The `jalr` at 0x100211c8 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100211dc calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100211fc calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10021174 targets 0x10021204, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10021190 targets 0x100211d0, is taken when a1(=[a0+64]) == 0, and falls through when a1(=[a0+64]) != 0.
  The `beq` branch at 0x100211ec targets 0x10021204, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10021210 has v0 = one of 0x8ff20, ret(__dt__14VkSimpleWindowGv), ret(__dl__GPv).
  The instructions from 0x10021218 to 0x10021228 are not reached by any path from the entry, and their branches are not listed.

- `className__14DVPWindowClassGv` in `usr/gfx/ircombine` at 0x10021230 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10021230-0x10021270 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10021248 loads 4 bytes from abs 0x100a90d4.
  The `beq` branch at 0x10021254 targets 0x1002125c and is always taken.
  The return at 0x10021268 has v0 = 0x10094110.

- `okToQuit__14DVPWindowClassGv` in `usr/gfx/ircombine` at 0x10021270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10021270-0x100212d8 (104 bytes).
  It occupies 104 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x10021290, `lw` at 0x100212a4.
  The `lw` at 0x10021294 loads 4 bytes from [a0+8] +0x30.
  The `lw` at 0x100212a8 loads 4 bytes from [a0+8] +0x38.
  The `jalr` at 0x100212ac calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x100212b8 targets 0x100212c0 and is always taken.
  The return at 0x100212d0 has v0 = 0x0.

- `update__14DVPWindowClassGv` in `usr/gfx/ircombine` at 0x100212e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100212e0-0x1002132c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10021300 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x10021308 calls update__7DvpFormGv [0x100217b0] with a0=[a0+64], a1=0x8fd90, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10021310 targets 0x10021318 and is always taken.
  The return at 0x10021324 has v0 = ret(update__7DvpFormGv).

- `update_fast__14DVPWindowClassGv` in `usr/gfx/ircombine` at 0x10021330 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10021330-0x1002137c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10021350 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x10021358 calls update_fast__7DvpFormGv [0x10021d70] with a0=[a0+64], a1=0x8fd40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10021360 targets 0x10021368 and is always taken.
  The return at 0x10021374 has v0 = ret(update_fast__7DvpFormGv).

- `setParent__7DvpFormGP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x10021770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10021770-0x100217a4 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0x10021788 stores 4 bytes to a0 (arg0 at entry) +0x114.
  The `beq` branch at 0x1002178c targets 0x10021794 and is always taken.
  The return at 0x1002179c has v0 = a0.

- `setParent__11EncoderFormGP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x10028db0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028db0-0x10028de4 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0x10028dc8 stores 4 bytes to a0 (arg0 at entry) +0x1cc.
  The `beq` branch at 0x10028dcc targets 0x10028dd4 and is always taken.
  The return at 0x10028ddc has v0 = a0.

- `__ct__18EncoderWindowClassGPCcP3ArgUi` in `usr/gfx/ircombine` at 0x100327e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100327e0-0x100329c0 (480 bytes).
  It occupies 480 bytes.
  The `sw` at 0x1003282c stores 4 bytes to a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x10032890, `lw` at 0x100328a4.
  The `lw` at 0x10032894 loads 4 bytes from [a0+8] +0xe4.
  The `lw` at 0x100328a8 loads 4 bytes from [a0+8] +0xec.
  The `sw` at 0x100328f0 stores 4 bytes to a0 (arg0 at entry) +0x40.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x100328f8, `lw` at 0x10032940, `lw` at 0x10032980.
  The `jalr` at 0x1003281c calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10032838 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10032854 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultEncoderWindowClassResources__18EncoderWindowClass), a3=?.
  The `jalr` at 0x10032868 calls __nw__GUi with a0=0x1d4, a1=?, a2=?, a3=?.
  The `jalr` at 0x100328ac calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x100328c8 calls __ct__11EncoderFormGPCcP10_WidgetRec [0x10028b00] with a0=?, a1=0x10096058, a2=ret(?), a3=?.
  The `jalr` at 0x10032900 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10032930 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x1f4, a3=sym(XtStrings)+234, a4=0x258, a5=0x0.
  The `jalr` at 0x10032948 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0x10032974 calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x0, a6=0x1, a7=0x1.
  The `jal` at 0x1003298c calls setParent__11EncoderFormGP14VkSimpleWindow [0x10028db0] with a0=[a0+64], a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x1003287c targets 0x100328e4, is taken when a0(=ret(__nw__GUi)) == 0, and falls through when a0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100328dc targets 0x100328e8 and is always taken.
  The return at 0x100329a4 has v0 = a0.
  The instructions from 0x100329ac to 0x100329bc are not reached by any path from the entry, and their branches are not listed.

- `__dt__18EncoderWindowClassGv` in `usr/gfx/ircombine` at 0x100329c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100329c0-0x10032a9c (220 bytes).
  It occupies 220 bytes.
  The `sw` at 0x100329f4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x100329fc, `lw` at 0x10032a0c, `lw` at 0x10032a1c.
  2 such `lw` accesses load 4 bytes from [a0+64] +0x8, including `lw` at 0x10032a10, `lw` at 0x10032a30.
  The `lw` at 0x10032a14 loads 4 bytes from [[a0+64]+8] +0xc.
  The `lw` at 0x10032a34 loads 4 bytes from [[a0+64]+8] +0x14.
  The `jalr` at 0x10032a38 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10032a4c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10032a6c calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100329e4 targets 0x10032a74, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10032a00 targets 0x10032a40, is taken when a1(=[a0+64]) == 0, and falls through when a1(=[a0+64]) != 0.
  The `beq` branch at 0x10032a5c targets 0x10032a74, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10032a80 has v0 = one of 0x7e6b0, ret(__dt__14VkSimpleWindowGv), ret(__dl__GPv).
  The instructions from 0x10032a88 to 0x10032a98 are not reached by any path from the entry, and their branches are not listed.

- `className__18EncoderWindowClassGv` in `usr/gfx/ircombine` at 0x10032aa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032aa0-0x10032ae0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10032ab8 loads 4 bytes from abs 0x100a90d4.
  The `beq` branch at 0x10032ac4 targets 0x10032acc and is always taken.
  The return at 0x10032ad8 has v0 = 0x10096068.

- `okToQuit__18EncoderWindowClassGv` in `usr/gfx/ircombine` at 0x10032ae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032ae0-0x10032b48 (104 bytes).
  It occupies 104 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x10032b00, `lw` at 0x10032b14.
  The `lw` at 0x10032b04 loads 4 bytes from [a0+8] +0x30.
  The `lw` at 0x10032b18 loads 4 bytes from [a0+8] +0x38.
  The `jalr` at 0x10032b1c calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10032b28 targets 0x10032b30 and is always taken.
  The return at 0x10032b40 has v0 = 0x0.

- `update__18EncoderWindowClassGv` in `usr/gfx/ircombine` at 0x10032b50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032b50-0x10032b9c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10032b70 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x10032b78 calls update__11EncoderFormGv [0x10028df0] with a0=[a0+64], a1=0x7e520, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10032b80 targets 0x10032b88 and is always taken.
  The return at 0x10032b94 has v0 = ret(update__11EncoderFormGv).

- `update_fast__18EncoderWindowClassGv` in `usr/gfx/ircombine` at 0x10032ba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032ba0-0x10032bec (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10032bc0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x10032bc8 calls update_fast__11EncoderFormGv [0x100296f0] with a0=[a0+64], a1=0x7e4d0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10032bd0 targets 0x10032bd8 and is always taken.
  The return at 0x10032be4 has v0 = ret(update_fast__11EncoderFormGv).

- `setParent__5Form1GP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x10032ed0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032ed0-0x10032f04 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0x10032ee8 stores 4 bytes to a0 (arg0 at entry) +0x144.
  The `beq` branch at 0x10032eec targets 0x10032ef4 and is always taken.
  The return at 0x10032efc has v0 = a0.

- `setParent__5Form2GP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x1003c490 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1003c490-0x1003c4c4 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0x1003c4a8 stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `beq` branch at 0x1003c4ac targets 0x1003c4b4 and is always taken.
  The return at 0x1003c4bc has v0 = a0.

- `setParent__5FrameGP8VkWindow` in `usr/gfx/ircombine` at 0x10041a70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10041a70-0x10041aa4 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0x10041a88 stores 4 bytes to a0 (arg0 at entry) +0xdc.
  The `beq` branch at 0x10041a8c targets 0x10041a94 and is always taken.
  The return at 0x10041a9c has v0 = a0.

- `grabWindow__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10041fe0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10041fe0-0x10042308 (808 bytes).
  It occupies 808 bytes.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x108, including `lw` at 0x10042008, `lw` at 0x1004221c, `lw` at 0x10042248.
  2 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x10042028, `lw` at 0x10042054.
  The `lw` at 0x1004202c loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108.
  The `lw` at 0x10042058 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10042234, `sw` at 0x10042260, `sw` at 0x1004228c.
  The `jalr` at 0x1004201c calls getTheErrorDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004205c calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x100978b8, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10042074 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10042088 calls XtDisplay with a0=ret(baseWidget__11VkComponentCGv), a1=?, a2=?, a3=?.
  The `jal` at 0x100420a0 calls select_window__5FrameGP9_XDisplay [0x10048030] with a0=a0 at entry (arg0), a1=ret(XtDisplay), a2=?, a3=?.
  The `jalr` at 0x100420dc calls XGetGeometry with a0=?, a1=ret(select_window__5FrameGP9_XDisplay), a2=sp-200, a3=sp-196, a4=sp-196, a5=sp-192, a6=sp-192, a7=sp-192.
  The `jalr` at 0x1004210c calls XmuClientWindow with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004214c calls XQueryTree with a0=?, a1=?, a2=sp-184, a3=sp-180, a4=sp-176, a5=sp-172.
  The `jalr` at 0x100421cc calls XFree with a0=?, a1=ret(XQueryTree), a2=?, a3=?.
  The `jalr` at 0x100421f0 calls XGetWindowAttributes with a0=?, a1=?, a2=sp-160, a3=?.
  The `jalr` at 0x10042204 calls XSync with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x100422d4 calls clamp_channel__5FrameGiN21 [0x10044e90] with a0=a0 at entry (arg0), a1=[a0+264], a2=0x1, a3=0x3, a5=[a0+264], a6=0xab0, a7=[a0+264].
  The `jal` at 0x100422e4 calls update__5FrameGv [0x10043c50] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x10042010 targets 0x1004206c, is taken when at(=[a0+264]) != v0(=-0x1), and falls through when at(=[a0+264]) == v0(=-0x1).
  The `beq` branch at 0x10042064 targets 0x100422f4 and is always taken.
  The `beq` branch at 0x100420e8 targets 0x1004211c, is taken when v0(=ret(XGetGeometry)) == 0, and falls through when v0(=ret(XGetGeometry)) != 0.
  The `beq` branch at 0x100420f8 targets 0x1004211c, is taken when t1(?) == t2(?), and falls through when t1(?) != t2(?).
  The `beq` branch at 0x10042128 targets 0x100421e0 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x10042164 targets 0x10042184, is taken when t9(?) == ra(?), and falls through when t9(?) != ra(?).
  The `beq` branch at 0x10042170 targets 0x10042184, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x1004217c targets 0x10042194, is taken when v0(=ret(XQueryTree)) != 0, and falls through when v0(=ret(XQueryTree)) == 0.
  The `beq` branch at 0x1004218c targets 0x10042198 and is always taken.
  The `bne` branch at 0x1004219c targets 0x100421e0, is taken when a0(=one of 0x0, 0x1) != 0, and falls through when a0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x100421b0 targets 0x100421d4, is taken when a1(=ret(XQueryTree)) == 0, and falls through when a1(=ret(XQueryTree)) != 0.
  The `beq` branch at 0x100421bc targets 0x100421d4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x100421d8 targets 0x10042130 and is always taken.
  The `beq` branch at 0x100422ec targets 0x100422f4 and is always taken.
  The return at 0x10042300 has v0 = one of ret(?), ret(update__5FrameGv).

- `grabWindowCallback__5FrameSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100497c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100497c0-0x10049838 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100497f0, `lw` at 0x1004980c.
  The `lw` at 0x100497f4 loads 4 bytes from [a1+8] +0x144.
  The `lw` at 0x10049810 loads 4 bytes from [a1+8] +0x14c.
  The `jalr` at 0x10049814 calls (unknown callee) with a0=([[a1+8]+324] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x678b0.
  The `beq` branch at 0x1004981c targets 0x10049824 and is always taken.
  The return at 0x10049830 has v0 = ret(?).

- `__ct__14GVOWindowClassGPCcP3ArgUi` in `usr/gfx/ircombine` at 0x1004b990 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004b990-0x1004bbb0 (544 bytes).
  It occupies 544 bytes.
  The `sw` at 0x1004b9dc stores 4 bytes to a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1004ba40, `lw` at 0x1004ba54.
  The `lw` at 0x1004ba44 loads 4 bytes from [a0+8] +0xe4.
  The `lw` at 0x1004ba58 loads 4 bytes from [a0+8] +0xec.
  The `sw` at 0x1004ba9c stores 4 bytes to a0 (arg0 at entry) +0x40.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1004baa4, `lw` at 0x1004bb10, `lw` at 0x1004bb24.
  The `lw` at 0x1004bae8 loads 4 bytes from a0 (arg0 at entry) +0x10.
  2 such `lw` accesses load 4 bytes from [a0+64] +0x8, including `lw` at 0x1004bb28, `lw` at 0x1004bb48.
  The `lw` at 0x1004bb2c loads 4 bytes from [[a0+64]+8] +0x270.
  The `lw` at 0x1004bb4c loads 4 bytes from [[a0+64]+8] +0x278.
  The `jalr` at 0x1004b9cc calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004b9e8 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1004ba04 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultGVOWindowClassResources__14GVOWindowClass), a3=?.
  The `jalr` at 0x1004ba18 calls __nw__GUi with a0=0x158, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004ba5c calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1004ba74 calls __ct__7GvoFormGPCcP10_WidgetRec [0x1004c370] with a0=?, a1=0x100aa728, a2=ret(?), a3=?.
  The `jalr` at 0x1004baac calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1004badc calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x1f4, a3=sym(XtStrings)+234, a4=0x258, a5=0x0.
  The `jalr` at 0x1004bb00 calls XtVaSetValues with a0=[a0+16], a1=sym(XtShellStrings)+280, a2=0x0, a3=0x0.
  The `jalr` at 0x1004bb18 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0x1004bb50 calls (unknown callee) with a0=([[[a0+64]+8]+624] + [a0+64]), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1004bb7c calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x0, a6=0x1, a7=0x1.
  The `beq` branch at 0x1004ba2c targets 0x1004ba90, is taken when a0(=ret(__nw__GUi)) == 0, and falls through when a0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1004ba88 targets 0x1004ba94 and is always taken.
  The return at 0x1004bb94 has v0 = a0.
  The instructions from 0x1004bb9c to 0x1004bbac are not reached by any path from the entry, and their branches are not listed.

- `__dt__14GVOWindowClassGv` in `usr/gfx/ircombine` at 0x1004bbb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004bbb0-0x1004bc8c (220 bytes).
  It occupies 220 bytes.
  The `sw` at 0x1004bbe4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1004bbec, `lw` at 0x1004bbfc, `lw` at 0x1004bc0c.
  2 such `lw` accesses load 4 bytes from [a0+64] +0x8, including `lw` at 0x1004bc00, `lw` at 0x1004bc20.
  The `lw` at 0x1004bc04 loads 4 bytes from [[a0+64]+8] +0xc.
  The `lw` at 0x1004bc24 loads 4 bytes from [[a0+64]+8] +0x14.
  The `jalr` at 0x1004bc28 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004bc3c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1004bc5c calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004bbd4 targets 0x1004bc64, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1004bbf0 targets 0x1004bc30, is taken when a1(=[a0+64]) == 0, and falls through when a1(=[a0+64]) != 0.
  The `beq` branch at 0x1004bc4c targets 0x1004bc64, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1004bc70 has v0 = one of 0x654c0, ret(__dt__14VkSimpleWindowGv), ret(__dl__GPv).
  The instructions from 0x1004bc78 to 0x1004bc88 are not reached by any path from the entry, and their branches are not listed.

- `className__14GVOWindowClassGv` in `usr/gfx/ircombine` at 0x1004bc90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004bc90-0x1004bcd0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1004bca8 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x1004bcb4 targets 0x1004bcbc and is always taken.
  The return at 0x1004bcc8 has v0 = 0x10098300.

- `okToQuit__14GVOWindowClassGv` in `usr/gfx/ircombine` at 0x1004bcd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004bcd0-0x1004bd38 (104 bytes).
  It occupies 104 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1004bcf0, `lw` at 0x1004bd04.
  The `lw` at 0x1004bcf4 loads 4 bytes from [a0+8] +0x30.
  The `lw` at 0x1004bd08 loads 4 bytes from [a0+8] +0x38.
  The `jalr` at 0x1004bd0c calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1004bd18 targets 0x1004bd20 and is always taken.
  The return at 0x1004bd30 has v0 = 0x0.

- `update__14GVOWindowClassGv` in `usr/gfx/ircombine` at 0x1004bd40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004bd40-0x1004bd8c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x1004bd60 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x1004bd68 calls update__7GvoFormGv [0x1004c590] with a0=[a0+64], a1=0x65330, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1004bd70 targets 0x1004bd78 and is always taken.
  The return at 0x1004bd84 has v0 = ret(update__7GvoFormGv).

- `update_fast__14GVOWindowClassGv` in `usr/gfx/ircombine` at 0x1004bd90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004bd90-0x1004bddc (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x1004bdb0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x1004bdb8 calls update_fast__7GvoFormGv [0x1004ce50] with a0=[a0+64], a1=0x652e0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1004bdc0 targets 0x1004bdc8 and is always taken.
  The return at 0x1004bdd4 has v0 = ret(update_fast__7GvoFormGv).

- `__ct__18GlobalsWindowClassGPCcP3ArgUi` in `usr/gfx/ircombine` at 0x1004be00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004be00-0x1004bff0 (496 bytes).
  It occupies 496 bytes.
  The `sw` at 0x1004be4c stores 4 bytes to a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1004beb0, `lw` at 0x1004bec4.
  The `lw` at 0x1004beb4 loads 4 bytes from [a0+8] +0xe4.
  The `lw` at 0x1004bec8 loads 4 bytes from [a0+8] +0xec.
  The `sw` at 0x1004bf0c stores 4 bytes to a0 (arg0 at entry) +0x40.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1004bf14, `lw` at 0x1004bf5c, `lw` at 0x1004bf70.
  The `jalr` at 0x1004be3c calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004be58 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1004be74 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultGlobalsWindowClassResources__18GlobalsWindowClass), a3=?.
  The `jalr` at 0x1004be88 calls __nw__GUi with a0=0xb0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004becc calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1004bee4 calls __ct__5Form2GPCcP10_WidgetRec [0x1003c1f0] with a0=?, a1=0x100aa730, a2=ret(?), a3=?.
  The `jalr` at 0x1004bf1c calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1004bf4c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x1f7, a3=sym(XtStrings)+234, a4=0x149, a5=0x0.
  The `jalr` at 0x1004bf64 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=?, a3=?.
  The `jal` at 0x1004bf78 calls update__5Form2Gv [0x1003c4d0] with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jalr` at 0x1004bfa4 calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x1, a6=0x1, a7=0x1.
  The `jal` at 0x1004bfbc calls setParent__5Form2GP14VkSimpleWindow [0x1003c490] with a0=[a0+64], a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x1004be9c targets 0x1004bf00, is taken when a0(=ret(__nw__GUi)) == 0, and falls through when a0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1004bef8 targets 0x1004bf04 and is always taken.
  The return at 0x1004bfd4 has v0 = a0.
  The instructions from 0x1004bfdc to 0x1004bfec are not reached by any path from the entry, and their branches are not listed.

- `__dt__18GlobalsWindowClassGv` in `usr/gfx/ircombine` at 0x1004bff0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004bff0-0x1004c0cc (220 bytes).
  It occupies 220 bytes.
  The `sw` at 0x1004c024 stores 4 bytes to a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1004c02c, `lw` at 0x1004c03c, `lw` at 0x1004c04c.
  2 such `lw` accesses load 4 bytes from [a0+64] +0x8, including `lw` at 0x1004c040, `lw` at 0x1004c060.
  The `lw` at 0x1004c044 loads 4 bytes from [[a0+64]+8] +0xc.
  The `lw` at 0x1004c064 loads 4 bytes from [[a0+64]+8] +0x14.
  The `jalr` at 0x1004c068 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004c07c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1004c09c calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004c014 targets 0x1004c0a4, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1004c030 targets 0x1004c070, is taken when a1(=[a0+64]) == 0, and falls through when a1(=[a0+64]) != 0.
  The `beq` branch at 0x1004c08c targets 0x1004c0a4, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1004c0b0 has v0 = one of 0x65080, ret(__dt__14VkSimpleWindowGv), ret(__dl__GPv).
  The instructions from 0x1004c0b8 to 0x1004c0c8 are not reached by any path from the entry, and their branches are not listed.

- `className__18GlobalsWindowClassGv` in `usr/gfx/ircombine` at 0x1004c0d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004c0d0-0x1004c110 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1004c0e8 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x1004c0f4 targets 0x1004c0fc and is always taken.
  The return at 0x1004c108 has v0 = 0x10098310.

- `okToQuit__18GlobalsWindowClassGv` in `usr/gfx/ircombine` at 0x1004c110 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004c110-0x1004c178 (104 bytes).
  It occupies 104 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1004c130, `lw` at 0x1004c144.
  The `lw` at 0x1004c134 loads 4 bytes from [a0+8] +0x30.
  The `lw` at 0x1004c148 loads 4 bytes from [a0+8] +0x38.
  The `jalr` at 0x1004c14c calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1004c158 targets 0x1004c160 and is always taken.
  The return at 0x1004c170 has v0 = 0x0.

- `update__18GlobalsWindowClassGv` in `usr/gfx/ircombine` at 0x1004c180 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004c180-0x1004c1cc (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x1004c1a0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x1004c1a8 calls update__5Form2Gv [0x1003c4d0] with a0=[a0+64], a1=0x64ef0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1004c1b0 targets 0x1004c1b8 and is always taken.
  The return at 0x1004c1c4 has v0 = ret(update__5Form2Gv).

- `clampManagedArea__18GlobalsWindowClassGv` in `usr/gfx/ircombine` at 0x1004c1d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004c1d0-0x1004c21c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x1004c1f0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x1004c1f8 calls clampManagedArea__5Form2Gv [0x1003cc40] with a0=[a0+64], a1=0x64ea0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1004c200 targets 0x1004c208 and is always taken.
  The return at 0x1004c214 has v0 = ret(clampManagedArea__5Form2Gv).

- `setParent__7GvoFormGP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x1004c550 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004c550-0x1004c584 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0x1004c568 stores 4 bytes to a0 (arg0 at entry) +0x150.
  The `beq` branch at 0x1004c56c targets 0x1004c574 and is always taken.
  The return at 0x1004c57c has v0 = a0.

- `setParent__12HardwareFormGP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x10055d40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055d40-0x10055d74 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0x10055d58 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `beq` branch at 0x10055d5c targets 0x10055d64 and is always taken.
  The return at 0x10055d6c has v0 = a0.

- `__ct__19HardwareWindowClassGPCcP3ArgUi` in `usr/gfx/ircombine` at 0x10058290 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10058290-0x10058494 (516 bytes).
  It occupies 516 bytes.
  The `sw` at 0x100582dc stores 4 bytes to a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x10058340, `lw` at 0x10058354.
  The `lw` at 0x10058344 loads 4 bytes from [a0+8] +0xe4.
  The `lw` at 0x10058358 loads 4 bytes from [a0+8] +0xec.
  The `sw` at 0x100583a0 stores 4 bytes to a0 (arg0 at entry) +0x40.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x100583a8, `lw` at 0x10058414, `lw` at 0x10058454.
  The `lw` at 0x100583ec loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `jalr` at 0x100582cc calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100582e8 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10058304 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultHardwareWindowClassResources__19HardwareWindowClass), a3=?.
  The `jalr` at 0x10058318 calls __nw__GUi with a0=0x7c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005835c calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10058378 calls __ct__12HardwareFormGPCcP10_WidgetRec [0x10055b70] with a0=?, a1=0x10099988, a2=ret(?), a3=?.
  The `jalr` at 0x100583b0 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x100583e0 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x1c6, a3=sym(XtStrings)+234, a4=0xe3, a5=0x0.
  The `jalr` at 0x10058404 calls XtVaSetValues with a0=[a0+16], a1=sym(XtShellStrings)+280, a2=0x0, a3=0x0.
  The `jalr` at 0x1005841c calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0x10058448 calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x0, a6=0x1, a7=0x1.
  The `jal` at 0x10058460 calls setParent__12HardwareFormGP14VkSimpleWindow [0x10055d40] with a0=[a0+64], a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x1005832c targets 0x10058394, is taken when a0(=ret(__nw__GUi)) == 0, and falls through when a0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1005838c targets 0x10058398 and is always taken.
  The return at 0x10058478 has v0 = a0.
  The instructions from 0x10058480 to 0x10058490 are not reached by any path from the entry, and their branches are not listed.

- `__dt__19HardwareWindowClassGv` in `usr/gfx/ircombine` at 0x100584a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100584a0-0x1005857c (220 bytes).
  It occupies 220 bytes.
  The `sw` at 0x100584d4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x100584dc, `lw` at 0x100584ec, `lw` at 0x100584fc.
  2 such `lw` accesses load 4 bytes from [a0+64] +0x8, including `lw` at 0x100584f0, `lw` at 0x10058510.
  The `lw` at 0x100584f4 loads 4 bytes from [[a0+64]+8] +0xc.
  The `lw` at 0x10058514 loads 4 bytes from [[a0+64]+8] +0x14.
  The `jalr` at 0x10058518 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1005852c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1005854c calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100584c4 targets 0x10058554, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x100584e0 targets 0x10058520, is taken when a1(=[a0+64]) == 0, and falls through when a1(=[a0+64]) != 0.
  The `beq` branch at 0x1005853c targets 0x10058554, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10058560 has v0 = one of 0x58bd0, ret(__dt__14VkSimpleWindowGv), ret(__dl__GPv).
  The instructions from 0x10058568 to 0x10058578 are not reached by any path from the entry, and their branches are not listed.

- `className__19HardwareWindowClassGv` in `usr/gfx/ircombine` at 0x10058580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10058580-0x100585c0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10058598 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x100585a4 targets 0x100585ac and is always taken.
  The return at 0x100585b8 has v0 = 0x10099998.

- `okToQuit__19HardwareWindowClassGv` in `usr/gfx/ircombine` at 0x100585c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100585c0-0x10058628 (104 bytes).
  It occupies 104 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x100585e0, `lw` at 0x100585f4.
  The `lw` at 0x100585e4 loads 4 bytes from [a0+8] +0x30.
  The `lw` at 0x100585f8 loads 4 bytes from [a0+8] +0x38.
  The `jalr` at 0x100585fc calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10058608 targets 0x10058610 and is always taken.
  The return at 0x10058620 has v0 = 0x0.

- `setTarget__19HardwareWindowClassGP11konTarget_t` in `usr/gfx/ircombine` at 0x10058630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10058630-0x10058684 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x10058654 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x10058660 calls setTarget__12HardwareFormGP11konTarget_t [0x10055d80] with a0=[a0+64], a1=a1 at entry (arg1), a2=0x58a40, a3=a3 at entry (arg3).
  The `beq` branch at 0x10058668 targets 0x10058670 and is always taken.
  The return at 0x1005867c has v0 = ret(setTarget__12HardwareFormGP11konTarget_t).

- `__ct__26HdgvoAttributesWindowClassGPCcP3ArgUi` in `usr/gfx/ircombine` at 0x100586b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100586b0-0x100588b0 (512 bytes).
  It occupies 512 bytes.
  The `sw` at 0x100586fc stores 4 bytes to a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x10058760, `lw` at 0x10058774.
  The `lw` at 0x10058764 loads 4 bytes from [a0+8] +0xe4.
  The `lw` at 0x10058778 loads 4 bytes from [a0+8] +0xec.
  The `sw` at 0x100587c0 stores 4 bytes to a0 (arg0 at entry) +0x40.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x100587c8, `lw` at 0x10058810, `lw` at 0x10058824.
  2 such `lw` accesses load 4 bytes from [a0+64] +0x8, including `lw` at 0x10058828, `lw` at 0x10058848.
  The `lw` at 0x1005882c loads 4 bytes from [[a0+64]+8] +0x2dc.
  The `lw` at 0x1005884c loads 4 bytes from [[a0+64]+8] +0x2e4.
  The `jalr` at 0x100586ec calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10058708 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10058724 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultHdgvoAttributesWindowClassResources__26HdgvoAttributesWindowClass), a3=?.
  The `jalr` at 0x10058738 calls __nw__GUi with a0=0x168, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005877c calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10058798 calls __ct__9HdgvoFormGPCcP10_WidgetRec [0x10058c30] with a0=?, a1=0x100999d0, a2=ret(?), a3=?.
  The `jalr` at 0x100587d0 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10058800 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x20d, a3=sym(XtStrings)+234, a4=0x243, a5=0x0.
  The `jalr` at 0x10058818 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0x10058850 calls (unknown callee) with a0=([[[a0+64]+8]+732] + [a0+64]), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1005887c calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x0, a6=0x1, a7=0x1.
  The `beq` branch at 0x1005874c targets 0x100587b4, is taken when a0(=ret(__nw__GUi)) == 0, and falls through when a0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100587ac targets 0x100587b8 and is always taken.
  The return at 0x10058894 has v0 = a0.
  The instructions from 0x1005889c to 0x100588ac are not reached by any path from the entry, and their branches are not listed.

- `__dt__26HdgvoAttributesWindowClassGv` in `usr/gfx/ircombine` at 0x100588b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100588b0-0x1005898c (220 bytes).
  It occupies 220 bytes.
  The `sw` at 0x100588e4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x100588ec, `lw` at 0x100588fc, `lw` at 0x1005890c.
  2 such `lw` accesses load 4 bytes from [a0+64] +0x8, including `lw` at 0x10058900, `lw` at 0x10058920.
  The `lw` at 0x10058904 loads 4 bytes from [[a0+64]+8] +0xc.
  The `lw` at 0x10058924 loads 4 bytes from [[a0+64]+8] +0x14.
  The `jalr` at 0x10058928 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1005893c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1005895c calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100588d4 targets 0x10058964, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x100588f0 targets 0x10058930, is taken when a1(=[a0+64]) == 0, and falls through when a1(=[a0+64]) != 0.
  The `beq` branch at 0x1005894c targets 0x10058964, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10058970 has v0 = one of 0x587c0, ret(__dt__14VkSimpleWindowGv), ret(__dl__GPv).
  The instructions from 0x10058978 to 0x10058988 are not reached by any path from the entry, and their branches are not listed.

- `className__26HdgvoAttributesWindowClassGv` in `usr/gfx/ircombine` at 0x10058990 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10058990-0x100589d0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x100589a8 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x100589b4 targets 0x100589bc and is always taken.
  The return at 0x100589c8 has v0 = 0x100999e0.

- `okToQuit__26HdgvoAttributesWindowClassGv` in `usr/gfx/ircombine` at 0x100589d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100589d0-0x10058a38 (104 bytes).
  It occupies 104 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x100589f0, `lw` at 0x10058a04.
  The `lw` at 0x100589f4 loads 4 bytes from [a0+8] +0x30.
  The `lw` at 0x10058a08 loads 4 bytes from [a0+8] +0x38.
  The `jalr` at 0x10058a0c calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10058a18 targets 0x10058a20 and is always taken.
  The return at 0x10058a30 has v0 = 0x0.

- `update__26HdgvoAttributesWindowClassGv` in `usr/gfx/ircombine` at 0x10058a40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10058a40-0x10058a8c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10058a60 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x10058a68 calls update__9HdgvoFormGv [0x10058e50] with a0=[a0+64], a1=0x58630, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10058a70 targets 0x10058a78 and is always taken.
  The return at 0x10058a84 has v0 = ret(update__9HdgvoFormGv).

- `update_fast__26HdgvoAttributesWindowClassGv` in `usr/gfx/ircombine` at 0x10058a90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10058a90-0x10058adc (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10058ab0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x10058ab8 calls update_fast__9HdgvoFormGv [0x10059760] with a0=[a0+64], a1=0x585e0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10058ac0 targets 0x10058ac8 and is always taken.
  The return at 0x10058ad4 has v0 = ret(update_fast__9HdgvoFormGv).

- `setParent__9HdgvoFormGP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x10058e10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10058e10-0x10058e44 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0x10058e28 stores 4 bytes to a0 (arg0 at entry) +0x160.
  The `beq` branch at 0x10058e2c targets 0x10058e34 and is always taken.
  The return at 0x10058e3c has v0 = a0.

- `setParent__15HdgvoFormatFormGP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x10061f00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10061f00-0x10061f34 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0x10061f18 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `beq` branch at 0x10061f1c targets 0x10061f24 and is always taken.
  The return at 0x10061f2c has v0 = a0.

- `__ct__28HdgvoFormatSelectWindowClassGPCcP3ArgUi` in `usr/gfx/ircombine` at 0x10062dc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10062dc0-0x10062fc0 (512 bytes).
  It occupies 512 bytes.
  The `sw` at 0x10062e0c stores 4 bytes to a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x10062e70, `lw` at 0x10062e84.
  The `lw` at 0x10062e74 loads 4 bytes from [a0+8] +0xe4.
  The `lw` at 0x10062e88 loads 4 bytes from [a0+8] +0xec.
  The `sw` at 0x10062ed0 stores 4 bytes to a0 (arg0 at entry) +0x40.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x10062ed8, `lw` at 0x10062f20, `lw` at 0x10062f34.
  2 such `lw` accesses load 4 bytes from [a0+64] +0x8, including `lw` at 0x10062f38, `lw` at 0x10062f58.
  The `lw` at 0x10062f3c loads 4 bytes from [[a0+64]+8] +0xcc.
  The `lw` at 0x10062f5c loads 4 bytes from [[a0+64]+8] +0xd4.
  The `jalr` at 0x10062dfc calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10062e18 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10062e34 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultHdgvoFormatSelectWindowClassResources__28HdgvoFormatSelectWindowClass), a3=?.
  The `jalr` at 0x10062e48 calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jalr` at 0x10062e8c calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10062ea8 calls __ct__15HdgvoFormatFormGPCcP10_WidgetRec [0x10061d30] with a0=?, a1=0x1009b1c0, a2=ret(?), a3=?.
  The `jalr` at 0x10062ee0 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10062f10 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x195, a3=sym(XtStrings)+234, a4=0xab, a5=0x0.
  The `jalr` at 0x10062f28 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0x10062f60 calls (unknown callee) with a0=([[[a0+64]+8]+204] + [a0+64]), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10062f8c calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x0, a6=0x1, a7=0x1.
  The `beq` branch at 0x10062e5c targets 0x10062ec4, is taken when a0(=ret(__nw__GUi)) == 0, and falls through when a0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10062ebc targets 0x10062ec8 and is always taken.
  The return at 0x10062fa4 has v0 = a0.
  The instructions from 0x10062fac to 0x10062fbc are not reached by any path from the entry, and their branches are not listed.

- `__dt__28HdgvoFormatSelectWindowClassGv` in `usr/gfx/ircombine` at 0x10062fc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10062fc0-0x1006309c (220 bytes).
  It occupies 220 bytes.
  The `sw` at 0x10062ff4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x10062ffc, `lw` at 0x1006300c, `lw` at 0x1006301c.
  2 such `lw` accesses load 4 bytes from [a0+64] +0x8, including `lw` at 0x10063010, `lw` at 0x10063030.
  The `lw` at 0x10063014 loads 4 bytes from [[a0+64]+8] +0xc.
  The `lw` at 0x10063034 loads 4 bytes from [[a0+64]+8] +0x14.
  The `jalr` at 0x10063038 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1006304c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1006306c calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10062fe4 targets 0x10063074, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10063000 targets 0x10063040, is taken when a1(=[a0+64]) == 0, and falls through when a1(=[a0+64]) != 0.
  The `beq` branch at 0x1006305c targets 0x10063074, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10063080 has v0 = one of 0x4e0b0, ret(__dt__14VkSimpleWindowGv), ret(__dl__GPv).
  The instructions from 0x10063088 to 0x10063098 are not reached by any path from the entry, and their branches are not listed.

- `className__28HdgvoFormatSelectWindowClassGv` in `usr/gfx/ircombine` at 0x100630a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100630a0-0x100630e0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x100630b8 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x100630c4 targets 0x100630cc and is always taken.
  The return at 0x100630d8 has v0 = 0x1009b1d0.

- `okToQuit__28HdgvoFormatSelectWindowClassGv` in `usr/gfx/ircombine` at 0x100630e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100630e0-0x10063158 (120 bytes).
  It occupies 120 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x10063100, `lw` at 0x10063110, `lw` at 0x1006311c.
  2 such `lw` accesses load 4 bytes from [a0+64] +0x8, including `lw` at 0x10063104, `lw` at 0x10063120.
  The `lw` at 0x10063108 loads 4 bytes from [[a0+64]+8] +0x48.
  The `lw` at 0x10063124 loads 4 bytes from [[a0+64]+8] +0x50.
  The `jalr` at 0x10063128 calls (unknown callee) with a0=([[[a0+64]+8]+72] + [a0+64]), a1=[a0+64], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10063138 targets 0x10063140 and is always taken.
  The return at 0x10063150 has v0 = ret(?).

- `setParent__10SiriusFormGP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x10063420 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10063420-0x10063454 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0x10063438 stores 4 bytes to a0 (arg0 at entry) +0x154.
  The `beq` branch at 0x1006343c targets 0x10063444 and is always taken.
  The return at 0x1006344c has v0 = a0.

- `__ct__17SiriusWindowClassGPCcP3ArgUi` in `usr/gfx/ircombine` at 0x1006cd40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006cd40-0x1006cf20 (480 bytes).
  It occupies 480 bytes.
  The `sw` at 0x1006cd8c stores 4 bytes to a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1006cdf0, `lw` at 0x1006ce04.
  The `lw` at 0x1006cdf4 loads 4 bytes from [a0+8] +0xe4.
  The `lw` at 0x1006ce08 loads 4 bytes from [a0+8] +0xec.
  The `sw` at 0x1006ce50 stores 4 bytes to a0 (arg0 at entry) +0x40.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1006ce58, `lw` at 0x1006cea0, `lw` at 0x1006cee0.
  The `jalr` at 0x1006cd7c calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1006cd98 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1006cdb4 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultSiriusWindowClassResources__17SiriusWindowClass), a3=?.
  The `jalr` at 0x1006cdc8 calls __nw__GUi with a0=0x15c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006ce0c calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1006ce28 calls __ct__10SiriusFormGPCcP10_WidgetRec [0x10063180] with a0=?, a1=0x1009c328, a2=ret(?), a3=?.
  The `jalr` at 0x1006ce60 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1006ce90 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x1f4, a3=sym(XtStrings)+234, a4=0x258, a5=0x0.
  The `jalr` at 0x1006cea8 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0x1006ced4 calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x0, a6=0x1, a7=0x1.
  The `jal` at 0x1006ceec calls setParent__10SiriusFormGP14VkSimpleWindow [0x10063420] with a0=[a0+64], a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x1006cddc targets 0x1006ce44, is taken when a0(=ret(__nw__GUi)) == 0, and falls through when a0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1006ce3c targets 0x1006ce48 and is always taken.
  The return at 0x1006cf04 has v0 = a0.
  The instructions from 0x1006cf0c to 0x1006cf1c are not reached by any path from the entry, and their branches are not listed.

- `__dt__17SiriusWindowClassGv` in `usr/gfx/ircombine` at 0x1006cf20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006cf20-0x1006cffc (220 bytes).
  It occupies 220 bytes.
  The `sw` at 0x1006cf54 stores 4 bytes to a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1006cf5c, `lw` at 0x1006cf6c, `lw` at 0x1006cf7c.
  2 such `lw` accesses load 4 bytes from [a0+64] +0x8, including `lw` at 0x1006cf70, `lw` at 0x1006cf90.
  The `lw` at 0x1006cf74 loads 4 bytes from [[a0+64]+8] +0xc.
  The `lw` at 0x1006cf94 loads 4 bytes from [[a0+64]+8] +0x14.
  The `jalr` at 0x1006cf98 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1006cfac calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1006cfcc calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1006cf44 targets 0x1006cfd4, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1006cf60 targets 0x1006cfa0, is taken when a1(=[a0+64]) == 0, and falls through when a1(=[a0+64]) != 0.
  The `beq` branch at 0x1006cfbc targets 0x1006cfd4, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1006cfe0 has v0 = one of 0x44150, ret(__dt__14VkSimpleWindowGv), ret(__dl__GPv).
  The instructions from 0x1006cfe8 to 0x1006cff8 are not reached by any path from the entry, and their branches are not listed.

- `className__17SiriusWindowClassGv` in `usr/gfx/ircombine` at 0x1006d000 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006d000-0x1006d040 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1006d018 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x1006d024 targets 0x1006d02c and is always taken.
  The return at 0x1006d038 has v0 = 0x1009c338.

- `okToQuit__17SiriusWindowClassGv` in `usr/gfx/ircombine` at 0x1006d040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006d040-0x1006d0a8 (104 bytes).
  It occupies 104 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1006d060, `lw` at 0x1006d074.
  The `lw` at 0x1006d064 loads 4 bytes from [a0+8] +0x30.
  The `lw` at 0x1006d078 loads 4 bytes from [a0+8] +0x38.
  The `jalr` at 0x1006d07c calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1006d088 targets 0x1006d090 and is always taken.
  The return at 0x1006d0a0 has v0 = 0x0.

- `update__17SiriusWindowClassGv` in `usr/gfx/ircombine` at 0x1006d0b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006d0b0-0x1006d0fc (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x1006d0d0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x1006d0d8 calls update__10SiriusFormGv [0x10063460] with a0=[a0+64], a1=0x43fc0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1006d0e0 targets 0x1006d0e8 and is always taken.
  The return at 0x1006d0f4 has v0 = ret(update__10SiriusFormGv).

- `update_fast__17SiriusWindowClassGv` in `usr/gfx/ircombine` at 0x1006d100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006d100-0x1006d14c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x1006d120 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x1006d128 calls update_fast__10SiriusFormGv [0x10063e20] with a0=[a0+64], a1=0x43f70, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1006d130 targets 0x1006d138 and is always taken.
  The return at 0x1006d144 has v0 = ret(update_fast__10SiriusFormGv).

- `prepost__22SmallFormatFileBrowserGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow` in `usr/gfx/ircombine` at 0x1006df00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006df00-0x1006e04c (332 bytes).
  It occupies 332 bytes.
  The `lw` at 0x1006df78 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lw` at 0x1006dfa4 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x1006dfd0 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x1006dffc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0x1006df5c calls prepost__15VkDialogManagerGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1006df80 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+128], a1=0x100aa860, a2=?, a3=?.
  The `jal` at 0x1006df98 calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1006dfac calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+116], a1=?, a2=?, a3=?.
  The `jal` at 0x1006dfc4 calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1006dfd8 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+120], a1=?, a2=?, a3=?.
  The `jal` at 0x1006dff0 calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1006e004 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+124], a1=?, a2=?, a3=?.
  The `jal` at 0x1006e01c calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1006e02c targets 0x1006e034 and is always taken.
  The return at 0x1006e044 has v0 = ?.

- `__ct__18VkwindowMainWindowGPCcP3ArgUi` in `usr/gfx/ircombine` at 0x1006e600 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006e600-0x1006ed70 (1904 bytes).
  It occupies 1904 bytes.
  The `sw` at 0x1006e64c stores 4 bytes to a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1006e6b0, `lw` at 0x1006e6c4, `lw` at 0x1006ed08.
  The `lw` at 0x1006e6b4 loads 4 bytes from [a0+8] +0xe4.
  The `lw` at 0x1006e6c8 loads 4 bytes from [a0+8] +0xec.
  The `sw` at 0x1006e70c stores 4 bytes to a0 (arg0 at entry) +0x48.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006e714, `lw` at 0x1006e75c, `lw` at 0x1006ec3c.
  The `sw` at 0x1006e78c stores 4 bytes to a0 (arg0 at entry) +0x4c.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0x1006e794, `lw` at 0x1006e7c8, `lw` at 0x1006e7fc.
  The `sw` at 0x1006e7c0 stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x1006e7f4 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x1006e828 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x1006e85c stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x1006e890 stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `sw` at 0x1006e8b4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x1006e8e8 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x1006e91c stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sw` at 0x1006e940 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0x1006e95c, `lw` at 0x1006e974, `lw` at 0x1006e9a8.
  The `sw` at 0x1006e9a0 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x1006e9d4 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x1006ea08 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x1006ea2c stores 4 bytes to a0 (arg0 at entry) +0x80.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80, including `lw` at 0x1006ea34, `lw` at 0x1006ea68, `lw` at 0x1006ea9c.
  The `sw` at 0x1006ea60 stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0x1006ea94 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x1006eac8 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sw` at 0x1006eafc stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `sw` at 0x1006eb30 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `sw` at 0x1006eb54 stores 4 bytes to a0 (arg0 at entry) +0x98.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x98, including `lw` at 0x1006eb5c, `lw` at 0x1006ebac, `lw` at 0x1006ebe4.
  The `sw` at 0x1006eb8c stores 4 bytes to a0 (arg0 at entry) +0x9c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lw` at 0x1006eb94, `lw` at 0x1006ecc4, `lw` at 0x1006ecd8.
  The `sw` at 0x1006ebdc stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `sw` at 0x1006ec00 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `sw` at 0x1006ec34 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006ec40, `lw` at 0x1006ec60.
  The `lw` at 0x1006ec44 loads 4 bytes from [[a0+72]+8] +0xf0.
  The `lw` at 0x1006ec64 loads 4 bytes from [[a0+72]+8] +0xf8.
  The `lw` at 0x1006ec8c loads 4 bytes from [a0+72] +0x98.
  The `lw` at 0x1006eca8 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x1006ecf0 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `lw` at 0x1006ed0c loads 4 bytes from [a0+8] +0x168.
  The `lw` at 0x1006ed20 loads 4 bytes from [a0+8] +0x170.
  The `jalr` at 0x1006e63c calls __ct__8VkWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1006e658 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1006e674 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultVkwindowMainWindowResources__18VkwindowMainWindow), a3=?.
  The `jalr` at 0x1006e688 calls __nw__GUi with a0=0xaeac, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006e6cc calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1006e6e4 calls __ct__5FrameGPCcP10_WidgetRec [0x10041140] with a0=?, a1=0x100aa890, a2=ret(?), a3=?.
  The `jalr` at 0x1006e71c calls baseWidget__11VkComponentCGv with a0=[a0+72], a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1006e74c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x357, a3=sym(XtStrings)+234, a4=0x2e5, a5=0x0.
  The `jalr` at 0x1006e764 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+72], a2=?, a3=?.
  The `jalr` at 0x1006e77c calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x1009c488, a2=?, a3=?.
  The `jalr` at 0x1006e7b0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+76], a1=0x1009c498, a2=sym(newFileCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e7e4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+76], a1=0x1009c4a8, a2=sym(openFileCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e818 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+76], a1=0x1009c4b8, a2=sym(saveCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e84c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+76], a1=0x1009c4c8, a2=sym(saveasCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e880 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+76], a1=0x1009c4d8, a2=sym(saveToHardwareCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e8a4 calls addSeparator__6VkMenuGi with a0=[a0+76], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x1006e8d8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+76], a1=0x1009c4f0, a2=sym(closeCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e90c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+76], a1=0x1009c500, a2=sym(quitCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e930 calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x1009c510, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1006e948 calls getTheUndoManager__Gv with a0=?, a1=?, a2=?, a3=a0 at entry (arg0).
  The `jalr` at 0x1006e968 calls add__6VkMenuGP10VkMenuItemi with a0=[a0+108], a1=ret(getTheUndoManager__Gv), a2=-0x1, a3=?.
  The `jalr` at 0x1006e990 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+108], a1=0x1009c520, a2=sym(cutCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e9c4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+108], a1=0x1009c530, a2=sym(copyCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e9f8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+108], a1=0x1009c540, a2=sym(pasteCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006ea1c calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x1009c550, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1006ea50 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+128], a1=0x1009c560, a2=sym(newChannelCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006ea84 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+128], a1=0x1009c578, a2=sym(deleteChannelCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006eab8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+128], a1=0x1009c590, a2=sym(editChannelCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006eaec calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+128], a1=0x1009c5a8, a2=sym(snapChannelCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006eb20 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+128], a1=0x1009c5c0, a2=sym(grabWindowCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006eb44 calls addRadioMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x1009c5d8, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1006eb7c calls addToggle__6VkMenuGPCcPGP10_WidgetRecPvT2_vPviT4 with a0=[a0+152], a1=0x1009c5e8, a2=sym(currentHardwareCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1, a5=-0x1.
  The `jalr` at 0x1006eba0 calls setVisualState__12VkMenuToggleGc with a0=[a0+156], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1006ebcc calls addToggle__6VkMenuGPCcPGP10_WidgetRecPvT2_vPviT4 with a0=[a0+152], a1=0x1009c600, a2=sym(userHardwareCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1, a5=-0x1.
  The `jalr` at 0x1006ebf0 calls addSeparator__6VkMenuGi with a0=[a0+152], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x1006ec24 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+152], a1=0x1009c618, a2=sym(editHardwareCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006ec68 calls (unknown callee) with a0=([[[a0+72]+8]+240] + [a0+72]), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1006ec7c calls cleanup__5FrameGv [0x100439c0] with a0=[a0+72], a1=?, a2=?, a3=?.
  The `jalr` at 0x1006ecb0 calls deactivate__10VkMenuItemGv with a0=[a0+168], a1=[[a0+72]+152], a2=[a0+72]+156, a3=?.
  The `jalr` at 0x1006eccc calls deactivate__10VkMenuItemGv with a0=[a0+156], a1=[[a0+72]+152], a2=[a0+72]+156, a3=?.
  The `jalr` at 0x1006ece4 calls setVisualState__12VkMenuToggleGc with a0=[a0+156], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1006ecfc calls setVisualState__12VkMenuToggleGc with a0=[a0+160], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1006ed24 calls (unknown callee) with a0=([[a0+8]+360] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1006ed3c calls showHelpPane__9VkMenuBarGc with a0=ret(?), a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x1006e69c targets 0x1006e700, is taken when a0(=ret(__nw__GUi)) == 0, and falls through when a0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1006e6f8 targets 0x1006e704 and is always taken.
  The `bne` branch at 0x1006ec9c targets 0x1006ecc0, is taken when a1(=[[a0+72]+152]) != a2(=[a0+72]+156), and falls through when a1(=[[a0+72]+152]) == a2(=[a0+72]+156).
  The `beq` branch at 0x1006ecb8 targets 0x1006ed04 and is always taken.
  The return at 0x1006ed54 has v0 = a0.
  The instructions from 0x1006ed5c to 0x1006ed6c are not reached by any path from the entry, and their branches are not listed.

- `__dt__18VkwindowMainWindowGv` in `usr/gfx/ircombine` at 0x1006ed70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006ed70-0x1006ee4c (220 bytes).
  It occupies 220 bytes.
  The `sw` at 0x1006eda4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006edac, `lw` at 0x1006edbc, `lw` at 0x1006edcc.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006edc0, `lw` at 0x1006ede0.
  The `lw` at 0x1006edc4 loads 4 bytes from [[a0+72]+8] +0xc.
  The `lw` at 0x1006ede4 loads 4 bytes from [[a0+72]+8] +0x14.
  The `jalr` at 0x1006ede8 calls (unknown callee) with a0=([[[a0+72]+8]+12] + [a0+72]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1006edfc calls __dt__8VkWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1006ee1c calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1006ed94 targets 0x1006ee24, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1006edb0 targets 0x1006edf0, is taken when a1(=[a0+72]) == 0, and falls through when a1(=[a0+72]) != 0.
  The `beq` branch at 0x1006ee0c targets 0x1006ee24, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1006ee30 has v0 = one of 0x42300, ret(__dt__8VkWindowGv), ret(__dl__GPv).
  The instructions from 0x1006ee38 to 0x1006ee48 are not reached by any path from the entry, and their branches are not listed.

- `className__18VkwindowMainWindowGv` in `usr/gfx/ircombine` at 0x1006ee50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006ee50-0x1006ee90 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1006ee68 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x1006ee74 targets 0x1006ee7c and is always taken.
  The return at 0x1006ee88 has v0 = 0x1009c630.

- `okToQuit__18VkwindowMainWindowGv` in `usr/gfx/ircombine` at 0x1006ee90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006ee90-0x1006ef08 (120 bytes).
  It occupies 120 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006eeb0, `lw` at 0x1006eec0, `lw` at 0x1006eecc.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006eeb4, `lw` at 0x1006eed0.
  The `lw` at 0x1006eeb8 loads 4 bytes from [[a0+72]+8] +0x48.
  The `lw` at 0x1006eed4 loads 4 bytes from [[a0+72]+8] +0x50.
  The `jalr` at 0x1006eed8 calls (unknown callee) with a0=([[[a0+72]+8]+72] + [a0+72]), a1=[a0+72], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1006eee8 targets 0x1006eef0 and is always taken.
  The return at 0x1006ef00 has v0 = ret(?).

- `update__18VkwindowMainWindowGv` in `usr/gfx/ircombine` at 0x1006ef10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006ef10-0x1006ef5c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x1006ef30 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `jal` at 0x1006ef38 calls update__5FrameGv [0x10043c50] with a0=[a0+72], a1=0x42160, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1006ef40 targets 0x1006ef48 and is always taken.
  The return at 0x1006ef54 has v0 = ret(update__5FrameGv).

- `setSensitive__18VkwindowMainWindowGv` in `usr/gfx/ircombine` at 0x1006ef60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006ef60-0x1006efac (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x1006ef80 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `jal` at 0x1006ef88 calls setSensitive__5FrameGv [0x100446d0] with a0=[a0+72], a1=0x42110, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1006ef90 targets 0x1006ef98 and is always taken.
  The return at 0x1006efa4 has v0 = ret(setSensitive__5FrameGv).

- `clamp__18VkwindowMainWindowGiN21` in `usr/gfx/ircombine` at 0x1006efb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006efb0-0x1006f014 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1006efdc loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `jal` at 0x1006eff0 calls clamp_channel__5FrameGiN21 [0x10044e90] with a0=[a0+72], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x420c0.
  The `beq` branch at 0x1006eff8 targets 0x1006f000 and is always taken.
  The return at 0x1006f00c has v0 = ret(clamp_channel__5FrameGiN21).

- `openFile__18VkwindowMainWindowGPCc` in `usr/gfx/ircombine` at 0x1006f020 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f020-0x1006f094 (116 bytes).
  It occupies 116 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006f044, `lw` at 0x1006f054, `lw` at 0x1006f064.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006f048, `lw` at 0x1006f068.
  The `lw` at 0x1006f04c loads 4 bytes from [[a0+72]+8] +0x168.
  The `lw` at 0x1006f06c loads 4 bytes from [[a0+72]+8] +0x170.
  The `jalr` at 0x1006f070 calls (unknown callee) with a0=([[[a0+72]+8]+360] + [a0+72]), a1=a1 at entry (arg1), a2=0x42050, a3=a3 at entry (arg3).
  The `beq` branch at 0x1006f078 targets 0x1006f080 and is always taken.
  The return at 0x1006f08c has v0 = ret(?).

- `loadFormat__18VkwindowMainWindowGiPCc` in `usr/gfx/ircombine` at 0x1006f0a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f0a0-0x1006f0fc (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x1006f0c8 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `jal` at 0x1006f0d8 calls loadFormat__5FrameGiPCc [0x10045b50] with a0=[a0+72], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41fd0.
  The `beq` branch at 0x1006f0e0 targets 0x1006f0e8 and is always taken.
  The return at 0x1006f0f4 has v0 = ret(loadFormat__5FrameGiPCc).

- `getTarget__18VkwindowMainWindowGv` in `usr/gfx/ircombine` at 0x1006f100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f100-0x1006f138 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0x1006f110 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1006f114 loads 4 bytes from [a0+72] +0x98.
  The `beq` branch at 0x1006f11c targets 0x1006f124 and is always taken.
  The return at 0x1006f130 has v0 = [[a0+72]+152].

- `close__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f140 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f140-0x1006f1e8 (168 bytes).
  It occupies 168 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1006f168, `lw` at 0x1006f17c, `lw` at 0x1006f1a4.
  The `lw` at 0x1006f16c loads 4 bytes from [a0+8] +0x48.
  The `lw` at 0x1006f180 loads 4 bytes from [a0+8] +0x50.
  The `lw` at 0x1006f1a8 loads 4 bytes from [a0+8] +0xc.
  The `lw` at 0x1006f1c0 loads 4 bytes from [a0+8] +0x14.
  The `jalr` at 0x1006f184 calls (unknown callee) with a0=([[a0+8]+72] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x41f30.
  The `jalr` at 0x1006f1c4 calls (unknown callee) with a0=([[a0+8]+12] + a0), a1=0x3, a2=?, a3=?, a4=a0 at entry (arg0).
  The `beq` branch at 0x1006f18c targets 0x1006f1cc, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1006f198 targets 0x1006f1cc, is taken when a4(=a0) == 0, and falls through when a4(=a0) != 0.
  The `beq` branch at 0x1006f1cc targets 0x1006f1d4 and is always taken.
  The return at 0x1006f1e0 has v0 = ret(?).

- `copy__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f1f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f1f0-0x1006f264 (116 bytes).
  It occupies 116 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006f218, `lw` at 0x1006f228, `lw` at 0x1006f234.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006f21c, `lw` at 0x1006f238.
  The `lw` at 0x1006f220 loads 4 bytes from [[a0+72]+8] +0xfc.
  The `lw` at 0x1006f23c loads 4 bytes from [[a0+72]+8] +0x104.
  The `jalr` at 0x1006f240 calls (unknown callee) with a0=([[[a0+72]+8]+252] + [a0+72]), a1=[a0+72], a2=a2 at entry (arg2), a3=0x41e80.
  The `beq` branch at 0x1006f248 targets 0x1006f250 and is always taken.
  The return at 0x1006f25c has v0 = ret(?).

- `currentHardware__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f270-0x1006f2ec (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006f298, `lw` at 0x1006f2a8, `lw` at 0x1006f2bc.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006f29c, `lw` at 0x1006f2c0.
  The `lw` at 0x1006f2a0 loads 4 bytes from [[a0+72]+8] +0x108.
  The `lw` at 0x1006f2c4 loads 4 bytes from [[a0+72]+8] +0x110.
  The `jalr` at 0x1006f2c8 calls (unknown callee) with a0=([[[a0+72]+8]+264] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41e00.
  The `beq` branch at 0x1006f2d0 targets 0x1006f2d8 and is always taken.
  The return at 0x1006f2e4 has v0 = ret(?).

- `cut__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f2f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f2f0-0x1006f364 (116 bytes).
  It occupies 116 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006f318, `lw` at 0x1006f328, `lw` at 0x1006f334.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006f31c, `lw` at 0x1006f338.
  The `lw` at 0x1006f320 loads 4 bytes from [[a0+72]+8] +0x114.
  The `lw` at 0x1006f33c loads 4 bytes from [[a0+72]+8] +0x11c.
  The `jalr` at 0x1006f340 calls (unknown callee) with a0=([[[a0+72]+8]+276] + [a0+72]), a1=[a0+72], a2=a2 at entry (arg2), a3=0x41d80.
  The `beq` branch at 0x1006f348 targets 0x1006f350 and is always taken.
  The return at 0x1006f35c has v0 = ret(?).

- `deleteChannel__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f370 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f370-0x1006f3ec (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006f398, `lw` at 0x1006f3a8, `lw` at 0x1006f3bc.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006f39c, `lw` at 0x1006f3c0.
  The `lw` at 0x1006f3a0 loads 4 bytes from [[a0+72]+8] +0x120.
  The `lw` at 0x1006f3c4 loads 4 bytes from [[a0+72]+8] +0x128.
  The `jalr` at 0x1006f3c8 calls (unknown callee) with a0=([[[a0+72]+8]+288] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41d00.
  The `beq` branch at 0x1006f3d0 targets 0x1006f3d8 and is always taken.
  The return at 0x1006f3e4 has v0 = ret(?).

- `editChannel__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f3f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f3f0-0x1006f46c (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006f418, `lw` at 0x1006f428, `lw` at 0x1006f43c.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006f41c, `lw` at 0x1006f440.
  The `lw` at 0x1006f420 loads 4 bytes from [[a0+72]+8] +0x12c.
  The `lw` at 0x1006f444 loads 4 bytes from [[a0+72]+8] +0x134.
  The `jalr` at 0x1006f448 calls (unknown callee) with a0=([[[a0+72]+8]+300] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41c80.
  The `beq` branch at 0x1006f450 targets 0x1006f458 and is always taken.
  The return at 0x1006f464 has v0 = ret(?).

- `editHardware__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f470 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f470-0x1006f4ec (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006f498, `lw` at 0x1006f4a8, `lw` at 0x1006f4bc.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006f49c, `lw` at 0x1006f4c0.
  The `lw` at 0x1006f4a0 loads 4 bytes from [[a0+72]+8] +0x138.
  The `lw` at 0x1006f4c4 loads 4 bytes from [[a0+72]+8] +0x140.
  The `jalr` at 0x1006f4c8 calls (unknown callee) with a0=([[[a0+72]+8]+312] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41c00.
  The `beq` branch at 0x1006f4d0 targets 0x1006f4d8 and is always taken.
  The return at 0x1006f4e4 has v0 = ret(?).

- `grabWindow__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f4f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f4f0-0x1006f56c (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006f518, `lw` at 0x1006f528, `lw` at 0x1006f53c.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006f51c, `lw` at 0x1006f540.
  The `lw` at 0x1006f520 loads 4 bytes from [[a0+72]+8] +0x144.
  The `lw` at 0x1006f544 loads 4 bytes from [[a0+72]+8] +0x14c.
  The `jalr` at 0x1006f548 calls (unknown callee) with a0=([[[a0+72]+8]+324] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41b80.
  The `beq` branch at 0x1006f550 targets 0x1006f558 and is always taken.
  The return at 0x1006f564 has v0 = ret(?).

- `newChannel__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f570-0x1006f5ec (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006f598, `lw` at 0x1006f5a8, `lw` at 0x1006f5bc.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006f59c, `lw` at 0x1006f5c0.
  The `lw` at 0x1006f5a0 loads 4 bytes from [[a0+72]+8] +0x150.
  The `lw` at 0x1006f5c4 loads 4 bytes from [[a0+72]+8] +0x158.
  The `jalr` at 0x1006f5c8 calls (unknown callee) with a0=([[[a0+72]+8]+336] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41b00.
  The `beq` branch at 0x1006f5d0 targets 0x1006f5d8 and is always taken.
  The return at 0x1006f5e4 has v0 = ret(?).

- `newFile__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f5f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f5f0-0x1006f664 (116 bytes).
  It occupies 116 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006f618, `lw` at 0x1006f628, `lw` at 0x1006f634.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006f61c, `lw` at 0x1006f638.
  The `lw` at 0x1006f620 loads 4 bytes from [[a0+72]+8] +0x15c.
  The `lw` at 0x1006f63c loads 4 bytes from [[a0+72]+8] +0x164.
  The `jalr` at 0x1006f640 calls (unknown callee) with a0=([[[a0+72]+8]+348] + [a0+72]), a1=[a0+72], a2=a2 at entry (arg2), a3=0x41a80.
  The `beq` branch at 0x1006f648 targets 0x1006f650 and is always taken.
  The return at 0x1006f65c has v0 = ret(?).

- `openFile__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f670 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f670-0x1006f8cc (604 bytes).
  It occupies 604 bytes.
  2 such `lw` accesses load 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8, including `lw` at 0x1006f804, `lw` at 0x1006f830.
  The `lw` at 0x1006f808 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  The `lw` at 0x1006f834 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006f880, `lw` at 0x1006f890, `lw` at 0x1006f89c.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006f884, `lw` at 0x1006f8a0.
  The `lw` at 0x1006f888 loads 4 bytes from [[a0+72]+8] +0x168.
  The `lw` at 0x1006f8a4 loads 4 bytes from [[a0+72]+8] +0x170.
  The `jalr` at 0x1006f6a0 calls getenv with a0=0x1009c648, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41a00.
  The `jalr` at 0x1006f6e8 calls sprintf with a0=sp-1112, a1=0x1009c658, a2=?, a3=?, a4=ret(getenv).
  The `jalr` at 0x1006f6f4 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006f710 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x1009c678, a2=?, a3=?.
  The `jalr` at 0x1006f71c calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006f734 calls setDirectory__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=sp-1112, a2=?, a3=?.
  The `jalr` at 0x1006f740 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006f758 calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x100aa8a0, a2=?, a3=?.
  The `jalr` at 0x1006f764 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006f778 calls baseWidget__11VkComponentCGv with a0=ret(getTheFileSelectionDialog__Gv), a1=?, a2=?, a3=?.
  The `jalr` at 0x1006f790 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006f7a4 calls baseWidget__11VkComponentCGv with a0=ret(getTheFileSelectionDialog__Gv), a1=?, a2=?, a3=?.
  The `jalr` at 0x1006f7bc calls XmFileSelectionBoxGetChild with a0=ret(baseWidget__11VkComponentCGv), a1=0x8, a2=?, a3=?.
  The `jalr` at 0x1006f7ec calls XtVaSetValues with a0=ret(XmFileSelectionBoxGetChild), a1=sym(_XmStrings)+9512, a2=0x0, a3=sym(_XmStrings)+9494, a4=0x0, a5=0x0.
  The `jalr` at 0x1006f7f8 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006f838 calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x1009c690, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1006f854 calls getTheFileSelectionDialog__Gv with a0=?, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1006f86c calls (unnamed) [0x100706c0] with a0=ret(getTheFileSelectionDialog__Gv), a1=?, a2=?, a3=?.
  The `jalr` at 0x1006f8a8 calls (unknown callee) with a0=([[[a0+72]+8]+360] + [a0+72]), a1=ret(0x100706c0), a2=[a0+72], a3=?.
  The `beq` branch at 0x1006f6b4 targets 0x1006f6cc, is taken when a4(=ret(getenv)) == 0, and falls through when a4(=ret(getenv)) != 0.
  The `beq` branch at 0x1006f6c4 targets 0x1006f6d4 and is always taken.
  The `beq` branch at 0x1006f784 targets 0x1006f7f4, is taken when v0(=ret(baseWidget__11VkComponentCGv)) == 0, and falls through when v0(=ret(baseWidget__11VkComponentCGv)) != 0.
  The `bne` branch at 0x1006f848 targets 0x1006f8b0, is taken when v0(=ret(?)) != a1(=0x1), and falls through when v0(=ret(?)) == a1(=0x1).
  The `beq` branch at 0x1006f8b0 targets 0x1006f8b8 and is always taken.
  The return at 0x1006f8c4 has v0 = ret(?).

- `paste__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f8d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f8d0-0x1006f944 (116 bytes).
  It occupies 116 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006f8f8, `lw` at 0x1006f908, `lw` at 0x1006f914.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006f8fc, `lw` at 0x1006f918.
  The `lw` at 0x1006f900 loads 4 bytes from [[a0+72]+8] +0x174.
  The `lw` at 0x1006f91c loads 4 bytes from [[a0+72]+8] +0x17c.
  The `jalr` at 0x1006f920 calls (unknown callee) with a0=([[[a0+72]+8]+372] + [a0+72]), a1=[a0+72], a2=a2 at entry (arg2), a3=0x417a0.
  The `beq` branch at 0x1006f928 targets 0x1006f930 and is always taken.
  The return at 0x1006f93c has v0 = ret(?).

- `quit__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f950 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f950-0x1006f9c4 (116 bytes).
  It occupies 116 bytes.
  3 such `lw` accesses load 4 bytes from sym(theApplication) +0x0, including `lw` at 0x1006f978, `lw` at 0x1006f988, `lw` at 0x1006f994.
  2 such `lw` accesses load 4 bytes from [sym(theApplication)] +0x8, including `lw` at 0x1006f97c, `lw` at 0x1006f998.
  The `lw` at 0x1006f980 loads 4 bytes from [[sym(theApplication)]+8] +0xc0.
  The `lw` at 0x1006f99c loads 4 bytes from [[sym(theApplication)]+8] +0xc8.
  The `jalr` at 0x1006f9a0 calls (unknown callee) with a0=([[[sym(theApplication)]+8]+192] + [sym(theApplication)]), a1=[sym(theApplication)], a2=a2 at entry (arg2), a3=0x41720.
  The `beq` branch at 0x1006f9a8 targets 0x1006f9b0 and is always taken.
  The return at 0x1006f9bc has v0 = ret(?).

- `save__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f9d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006f9d0-0x1006fa44 (116 bytes).
  It occupies 116 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006f9f8, `lw` at 0x1006fa08, `lw` at 0x1006fa14.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006f9fc, `lw` at 0x1006fa18.
  The `lw` at 0x1006fa00 loads 4 bytes from [[a0+72]+8] +0x180.
  The `lw` at 0x1006fa1c loads 4 bytes from [[a0+72]+8] +0x188.
  The `jalr` at 0x1006fa20 calls (unknown callee) with a0=([[[a0+72]+8]+384] + [a0+72]), a1=[a0+72], a2=a2 at entry (arg2), a3=0x416a0.
  The `beq` branch at 0x1006fa28 targets 0x1006fa30 and is always taken.
  The return at 0x1006fa3c has v0 = ret(?).

- `saveToHardware__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006fa50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006fa50-0x1006facc (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006fa78, `lw` at 0x1006fa88, `lw` at 0x1006fa9c.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006fa7c, `lw` at 0x1006faa0.
  The `lw` at 0x1006fa80 loads 4 bytes from [[a0+72]+8] +0x18c.
  The `lw` at 0x1006faa4 loads 4 bytes from [[a0+72]+8] +0x194.
  The `jalr` at 0x1006faa8 calls (unknown callee) with a0=([[[a0+72]+8]+396] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41620.
  The `beq` branch at 0x1006fab0 targets 0x1006fab8 and is always taken.
  The return at 0x1006fac4 has v0 = ret(?).

- `saveas__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006fad0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006fad0-0x1006fc98 (456 bytes).
  It occupies 456 bytes.
  2 such `lw` accesses load 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8, including `lw` at 0x1006fbd0, `lw` at 0x1006fbfc.
  The `lw` at 0x1006fbd4 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  The `lw` at 0x1006fc00 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006fc4c, `lw` at 0x1006fc5c, `lw` at 0x1006fc68.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006fc50, `lw` at 0x1006fc6c.
  The `lw` at 0x1006fc54 loads 4 bytes from [[a0+72]+8] +0x198.
  The `lw` at 0x1006fc70 loads 4 bytes from [[a0+72]+8] +0x1a0.
  The `jalr` at 0x1006fb00 calls getenv with a0=0x1009c648, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x415a0.
  The `jalr` at 0x1006fb48 calls sprintf with a0=sp-1096, a1=0x1009c658, a2=?, a3=?, a4=ret(getenv).
  The `jalr` at 0x1006fb54 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006fb70 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x1009c6a8, a2=?, a3=?.
  The `jalr` at 0x1006fb7c calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006fb94 calls setDirectory__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=sp-1096, a2=?, a3=?.
  The `jalr` at 0x1006fba0 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006fbb8 calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x100aa8a0, a2=?, a3=?.
  The `jalr` at 0x1006fbc4 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006fc04 calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x1009c6c0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1006fc20 calls getTheFileSelectionDialog__Gv with a0=?, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1006fc38 calls (unnamed) [0x100706c0] with a0=ret(getTheFileSelectionDialog__Gv), a1=?, a2=?, a3=?.
  The `jalr` at 0x1006fc74 calls (unknown callee) with a0=([[[a0+72]+8]+408] + [a0+72]), a1=ret(0x100706c0), a2=[a0+72], a3=?.
  The `beq` branch at 0x1006fb14 targets 0x1006fb2c, is taken when a4(=ret(getenv)) == 0, and falls through when a4(=ret(getenv)) != 0.
  The `beq` branch at 0x1006fb24 targets 0x1006fb34 and is always taken.
  The `bne` branch at 0x1006fc14 targets 0x1006fc7c, is taken when v0(=ret(?)) != a1(=0x1), and falls through when v0(=ret(?)) == a1(=0x1).
  The `beq` branch at 0x1006fc7c targets 0x1006fc84 and is always taken.
  The return at 0x1006fc90 has v0 = ret(?).

- `snapChannel__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006fca0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006fca0-0x1006fd1c (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006fcc8, `lw` at 0x1006fcd8, `lw` at 0x1006fcec.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006fccc, `lw` at 0x1006fcf0.
  The `lw` at 0x1006fcd0 loads 4 bytes from [[a0+72]+8] +0x1a4.
  The `lw` at 0x1006fcf4 loads 4 bytes from [[a0+72]+8] +0x1ac.
  The `jalr` at 0x1006fcf8 calls (unknown callee) with a0=([[[a0+72]+8]+420] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x413d0.
  The `beq` branch at 0x1006fd00 targets 0x1006fd08 and is always taken.
  The return at 0x1006fd14 has v0 = ret(?).

- `userHardware__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006fd20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006fd20-0x1006fd9c (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1006fd48, `lw` at 0x1006fd58, `lw` at 0x1006fd6c.
  2 such `lw` accesses load 4 bytes from [a0+72] +0x8, including `lw` at 0x1006fd4c, `lw` at 0x1006fd70.
  The `lw` at 0x1006fd50 loads 4 bytes from [[a0+72]+8] +0x1b0.
  The `lw` at 0x1006fd74 loads 4 bytes from [[a0+72]+8] +0x1b8.
  The `jalr` at 0x1006fd78 calls (unknown callee) with a0=([[[a0+72]+8]+432] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41350.
  The `beq` branch at 0x1006fd80 targets 0x1006fd88 and is always taken.
  The return at 0x1006fd94 has v0 = ret(?).

- `closeCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1006fda0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006fda0-0x1006fe18 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1006fdd0, `lw` at 0x1006fdec.
  The `lw` at 0x1006fdd4 loads 4 bytes from [a1+8] +0x174.
  The `lw` at 0x1006fdf0 loads 4 bytes from [a1+8] +0x17c.
  The `jalr` at 0x1006fdf4 calls (unknown callee) with a0=([[a1+8]+372] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x412d0.
  The `beq` branch at 0x1006fdfc targets 0x1006fe04 and is always taken.
  The return at 0x1006fe10 has v0 = ret(?).

- `copyCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1006fe20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006fe20-0x1006fe98 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1006fe50, `lw` at 0x1006fe6c.
  The `lw` at 0x1006fe54 loads 4 bytes from [a1+8] +0x180.
  The `lw` at 0x1006fe70 loads 4 bytes from [a1+8] +0x188.
  The `jalr` at 0x1006fe74 calls (unknown callee) with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x41250.
  The `beq` branch at 0x1006fe7c targets 0x1006fe84 and is always taken.
  The return at 0x1006fe90 has v0 = ret(?).

- `currentHardwareCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1006fea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006fea0-0x1006ff2c (140 bytes).
  It occupies 140 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1006fed0, `lw` at 0x1006feec.
  The `lw` at 0x1006fed4 loads 4 bytes from [a1+8] +0x18c.
  The `lw` at 0x1006fef0 loads 4 bytes from [a1+8] +0x194.
  The `lw` at 0x1006ff00 loads 4 bytes from a1 (arg1 at entry) +0xa8.
  The `jalr` at 0x1006fef4 calls (unknown callee) with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x411d0.
  The `jalr` at 0x1006ff08 calls deactivate__10VkMenuItemGv with a0=[a1+168], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1006ff10 targets 0x1006ff18 and is always taken.
  The return at 0x1006ff24 has v0 = ret(deactivate__10VkMenuItemGv).

- `cutCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1006ff30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006ff30-0x1006ffa8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1006ff60, `lw` at 0x1006ff7c.
  The `lw` at 0x1006ff64 loads 4 bytes from [a1+8] +0x198.
  The `lw` at 0x1006ff80 loads 4 bytes from [a1+8] +0x1a0.
  The `jalr` at 0x1006ff84 calls (unknown callee) with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x41140.
  The `beq` branch at 0x1006ff8c targets 0x1006ff94 and is always taken.
  The return at 0x1006ffa0 has v0 = ret(?).

- `deleteChannelCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1006ffb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1006ffb0-0x10070028 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1006ffe0, `lw` at 0x1006fffc.
  The `lw` at 0x1006ffe4 loads 4 bytes from [a1+8] +0x1a4.
  The `lw` at 0x10070000 loads 4 bytes from [a1+8] +0x1ac.
  The `jalr` at 0x10070004 calls (unknown callee) with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x410c0.
  The `beq` branch at 0x1007000c targets 0x10070014 and is always taken.
  The return at 0x10070020 has v0 = ret(?).

- `editChannelCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10070030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10070030-0x100700a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10070060, `lw` at 0x1007007c.
  The `lw` at 0x10070064 loads 4 bytes from [a1+8] +0x1b0.
  The `lw` at 0x10070080 loads 4 bytes from [a1+8] +0x1b8.
  The `jalr` at 0x10070084 calls (unknown callee) with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x41040.
  The `beq` branch at 0x1007008c targets 0x10070094 and is always taken.
  The return at 0x100700a0 has v0 = ret(?).

- `editHardwareCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100700b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100700b0-0x10070128 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100700e0, `lw` at 0x100700fc.
  The `lw` at 0x100700e4 loads 4 bytes from [a1+8] +0x1bc.
  The `lw` at 0x10070100 loads 4 bytes from [a1+8] +0x1c4.
  The `jalr` at 0x10070104 calls (unknown callee) with a0=([[a1+8]+444] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40fc0.
  The `beq` branch at 0x1007010c targets 0x10070114 and is always taken.
  The return at 0x10070120 has v0 = ret(?).

- `grabWindowCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10070130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10070130-0x100701a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10070160, `lw` at 0x1007017c.
  The `lw` at 0x10070164 loads 4 bytes from [a1+8] +0x1c8.
  The `lw` at 0x10070180 loads 4 bytes from [a1+8] +0x1d0.
  The `jalr` at 0x10070184 calls (unknown callee) with a0=([[a1+8]+456] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40f40.
  The `beq` branch at 0x1007018c targets 0x10070194 and is always taken.
  The return at 0x100701a0 has v0 = ret(?).

- `newChannelCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100701b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100701b0-0x10070228 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100701e0, `lw` at 0x100701fc.
  The `lw` at 0x100701e4 loads 4 bytes from [a1+8] +0x1d4.
  The `lw` at 0x10070200 loads 4 bytes from [a1+8] +0x1dc.
  The `jalr` at 0x10070204 calls (unknown callee) with a0=([[a1+8]+468] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40ec0.
  The `beq` branch at 0x1007020c targets 0x10070214 and is always taken.
  The return at 0x10070220 has v0 = ret(?).

- `newFileCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10070230 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10070230-0x100702a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10070260, `lw` at 0x1007027c.
  The `lw` at 0x10070264 loads 4 bytes from [a1+8] +0x1e0.
  The `lw` at 0x10070280 loads 4 bytes from [a1+8] +0x1e8.
  The `jalr` at 0x10070284 calls (unknown callee) with a0=([[a1+8]+480] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40e40.
  The `beq` branch at 0x1007028c targets 0x10070294 and is always taken.
  The return at 0x100702a0 has v0 = ret(?).

- `openFileCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100702b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100702b0-0x10070328 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100702e0, `lw` at 0x100702fc.
  The `lw` at 0x100702e4 loads 4 bytes from [a1+8] +0x1ec.
  The `lw` at 0x10070300 loads 4 bytes from [a1+8] +0x1f4.
  The `jalr` at 0x10070304 calls (unknown callee) with a0=([[a1+8]+492] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40dc0.
  The `beq` branch at 0x1007030c targets 0x10070314 and is always taken.
  The return at 0x10070320 has v0 = ret(?).

- `pasteCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10070330 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10070330-0x100703a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10070360, `lw` at 0x1007037c.
  The `lw` at 0x10070364 loads 4 bytes from [a1+8] +0x1f8.
  The `lw` at 0x10070380 loads 4 bytes from [a1+8] +0x200.
  The `jalr` at 0x10070384 calls (unknown callee) with a0=([[a1+8]+504] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40d40.
  The `beq` branch at 0x1007038c targets 0x10070394 and is always taken.
  The return at 0x100703a0 has v0 = ret(?).

- `quitCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100703b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100703b0-0x10070428 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100703e0, `lw` at 0x100703fc.
  The `lw` at 0x100703e4 loads 4 bytes from [a1+8] +0x204.
  The `lw` at 0x10070400 loads 4 bytes from [a1+8] +0x20c.
  The `jalr` at 0x10070404 calls (unknown callee) with a0=([[a1+8]+516] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40cc0.
  The `beq` branch at 0x1007040c targets 0x10070414 and is always taken.
  The return at 0x10070420 has v0 = ret(?).

- `saveCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10070430 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10070430-0x100704a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10070460, `lw` at 0x1007047c.
  The `lw` at 0x10070464 loads 4 bytes from [a1+8] +0x210.
  The `lw` at 0x10070480 loads 4 bytes from [a1+8] +0x218.
  The `jalr` at 0x10070484 calls (unknown callee) with a0=([[a1+8]+528] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40c40.
  The `beq` branch at 0x1007048c targets 0x10070494 and is always taken.
  The return at 0x100704a0 has v0 = ret(?).

- `saveToHardwareCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100704b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100704b0-0x10070528 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100704e0, `lw` at 0x100704fc.
  The `lw` at 0x100704e4 loads 4 bytes from [a1+8] +0x21c.
  The `lw` at 0x10070500 loads 4 bytes from [a1+8] +0x224.
  The `jalr` at 0x10070504 calls (unknown callee) with a0=([[a1+8]+540] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40bc0.
  The `beq` branch at 0x1007050c targets 0x10070514 and is always taken.
  The return at 0x10070520 has v0 = ret(?).

- `saveasCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10070530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10070530-0x100705a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10070560, `lw` at 0x1007057c.
  The `lw` at 0x10070564 loads 4 bytes from [a1+8] +0x228.
  The `lw` at 0x10070580 loads 4 bytes from [a1+8] +0x230.
  The `jalr` at 0x10070584 calls (unknown callee) with a0=([[a1+8]+552] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40b40.
  The `beq` branch at 0x1007058c targets 0x10070594 and is always taken.
  The return at 0x100705a0 has v0 = ret(?).

- `snapChannelCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100705b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100705b0-0x10070628 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100705e0, `lw` at 0x100705fc.
  The `lw` at 0x100705e4 loads 4 bytes from [a1+8] +0x234.
  The `lw` at 0x10070600 loads 4 bytes from [a1+8] +0x23c.
  The `jalr` at 0x10070604 calls (unknown callee) with a0=([[a1+8]+564] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40ac0.
  The `beq` branch at 0x1007060c targets 0x10070614 and is always taken.
  The return at 0x10070620 has v0 = ret(?).

- `userHardwareCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10070630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10070630-0x100706bc (140 bytes).
  It occupies 140 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10070660, `lw` at 0x1007067c.
  The `lw` at 0x10070664 loads 4 bytes from [a1+8] +0x240.
  The `lw` at 0x10070680 loads 4 bytes from [a1+8] +0x248.
  The `lw` at 0x10070690 loads 4 bytes from a1 (arg1 at entry) +0xa8.
  The `jalr` at 0x10070684 calls (unknown callee) with a0=([[a1+8]+576] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40a40.
  The `jalr` at 0x10070698 calls activate__10VkMenuItemGv with a0=[a1+168], a1=?, a2=?, a3=?.
  The `beq` branch at 0x100706a0 targets 0x100706a8 and is always taken.
  The return at 0x100706b4 has v0 = ret(activate__10VkMenuItemGv).

- `__ct__20GammaAssignmentClassGPCc` in `usr/bin/X11/xsetmon` at 0x10030bd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030bd0-0x10030c18 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10030c08 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10030bf0 calls __ct__22GammaAssignmentClassUIGPCc [0x10024680] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10030c10 has v0 = a0.

- `saveData__10GammaClassGP8__file_s` in `usr/bin/X11/xsetmon` at 0x10030c20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030c20-0x10030d94 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0x10030c48 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10030c60 loads 4 bytes from [sym(xsetmonApp)] +0x98.
  The `lw` at 0x10030c90 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10030c94 loads 4 bytes from [a0+48] +0x3c.
  The `lw` at 0x10030cac loads 4 bytes from ?.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x10030ce8, `lw` at 0x10030d60.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0x10030d08, `lw` at 0x10030d28, `lw` at 0x10030d48.
  The `lw` at 0x10030d14 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x10030d34 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x10030d54 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `jalr` at 0x10030c68 calls fwrite with a0=sp-64, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10030cb4 calls fwrite with a0=sp-60, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10030ce0 calls fwrite with a0=a0+104, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jal` at 0x10030d18 calls saveData__19GammaMapEditorClassGP18GammaMapDescriptorilP8__file_s [0x1002cc90] with a0=[a0+36], a1=?, a2=0x1, a3=0x1, a4=a1 at entry (arg1).
  The `jal` at 0x10030d38 calls saveData__19GammaMapEditorClassGP18GammaMapDescriptorilP8__file_s [0x1002cc90] with a0=[a0+40], a1=?, a2=0x2, a3=0x2, a4=a1 at entry (arg1).
  The `jal` at 0x10030d58 calls saveData__19GammaMapEditorClassGP18GammaMapDescriptorilP8__file_s [0x1002cc90] with a0=[a0+44], a1=?, a2=0x3, a3=0x4, a4=a1 at entry (arg1).
  The `blez` branch at 0x10030c7c targets 0x10030cd0, is taken when v1(?) <= 0 (signed), and falls through when v1(?) > 0 (signed).
  The `bne` branch at 0x10030cc8 targets 0x10030c90, is taken when s3(?) < a5(?) (signed), and falls through when s3(?) >= a5(?) (signed).
  The `blez` branch at 0x10030cf0 targets 0x10030d74, is taken when a6(=[a0+104]) <= 0 (signed), and falls through when a6(=[a0+104]) > 0 (signed).
  The `bne` branch at 0x10030d6c targets 0x10030d00, is taken when s3(?) < a2(=[a0+104]) (signed), and falls through when s3(?) >= a2(=[a0+104]) (signed).
  The return at 0x10030d8c has v0 = one of ret(fwrite), ret(saveData__19GammaMapEditorClassGP18GammaMapDescriptorilP8__file_s).

- `__dt__21MasterTabbedDeckClassGv` in `usr/bin/X11/xsetmon` at 0x10030da0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030da0-0x10030e0c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10030dd0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10030dd8 calls __dt__12MyTabbedDeckGv [0x1002abb0] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030df4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10030dc0 targets 0x10030dfc, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10030de8 targets 0x10030e00, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10030e04 has v0 = one of ret(__dt__12MyTabbedDeckGv), ?.

- `vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC` in `usr/bin/X11/xsetmon` at 0x10030f10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030f10-0x10030f90 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x10030f10 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x10030f38 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10030f40 loads 4 bytes from [sym(xsetmonApp)] +0x6c.
  The `lh` at 0x10030f50 loads 2 bytes from a1 (arg1 at entry) +0x2.
  The `lh` at 0x10030f60 loads 2 bytes from a1 (arg1 at entry) +0x0.
  The `jalr` at 0x10030f48 calls XtWindow with a0=[a0+36], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10030f74 calls XFillRectangle with a0=?, a1=ret(XtWindow), a2=a2 at entry (arg2), a3=[a1]:2-2, a4=[a1+2]:2-2, a5=0x5, a6=0x5.
  The return at 0x10030f88 has v0 = ret(XFillRectangle).

- `__ct__21SetmonMasterFormClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10030fd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030fd0-0x1003114c (380 bytes).
  It occupies 380 bytes.
  The `sw` at 0x10031004 stores 4 bytes to a0 (arg0 at entry) +0x8.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x10031010, `lw` at 0x10031020, `lw` at 0x10031030.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x10031048, `lw` at 0x10031064, `lw` at 0x10031080.
  The `lw` at 0x1003104c loads 4 bytes from [a0+32] +0x9c.
  The `lw` at 0x10031068 loads 4 bytes from [a0+32] +0xa0.
  The `lw` at 0x10031084 loads 4 bytes from [a0+32] +0xa4.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x100310a4, `lw` at 0x100310c4.
  The `lbu` at 0x100310a8 loads 1 byte from [sym(xsetmonApp)] +0xc9.
  The `lbu` at 0x100310c8 loads 1 byte from [sym(xsetmonApp)] +0xc8.
  The `lw` at 0x100310d8 loads 4 bytes from [a0+40] +0x8.
  The `lw` at 0x100310dc loads 4 bytes from [[a0+40]+8] +0xa4.
  The `lw` at 0x100310e0 loads 4 bytes from [[a0+40]+8] +0x9c.
  The `lw` at 0x100310fc loads 4 bytes from [a0+32] +0xb0.
  The `lw` at 0x10031100 loads 4 bytes from [a0+32] +0xc4.
  The `lw` at 0x10031104 loads 4 bytes from [a0+32] +0xb8.
  The `lw` at 0x10031108 loads 4 bytes from [a0+32] +0xcc.
  The `lw` at 0x10031128 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `jal` at 0x10030ff0 calls __ct__23SetmonMasterFormClassUIGPCcP10_WidgetRec [0x1003f100] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003100c calls ClearFormat__19StatisticsFormClassGv [0x10041c30] with a0=[a0+40], a1=sym(__vtbl__21SetmonMasterFormClass), a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x1003101c calls ClearfbConfig__19StatisticsFormClassGv [0x10028d60] with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jal` at 0x1003102c calls ClearfbDepth__19StatisticsFormClassGv [0x1002e960] with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jal` at 0x1003103c calls ClearaccumBufType__19StatisticsFormClassGv [0x1003d800] with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jal` at 0x10031058 calls DisplayFormat__21SetmonMasterFormClassGPC21XSGIvcVideoFormatInfo [0x1003d7c0] with a0=a0 at entry (arg0), a1=[[a0+32]+156], a2=?, a3=?.
  The `jal` at 0x10031074 calls DisplayCombination__21SetmonMasterFormClassGPCc [0x10024aa0] with a0=a0 at entry (arg0), a1=[[a0+32]+160], a2=?, a3=?.
  The `jal` at 0x10031094 calls DisplayfbConfig__21SetmonMasterFormClassGPCc [0x10024a60] with a0=a0 at entry (arg0), a1=[[a0+32]+164], a2=?, a3=?.
  The `jal` at 0x100310b4 calls updateMemoUsageOdsy__19StatisticsFormClassGv [0x1002bd50] with a0=[a0+40], a1=[[sym(xsetmonApp)]+201]:1, a2=?, a3=?.
  The `jalr` at 0x100310ec calls (unknown callee) with a0=([[[a0+40]+8]+156] + [a0+40]), a1=0x0, a2=0x0, a3=[a0+40].
  The `jalr` at 0x10031124 calls XtUnmanageChild with a0=[a0+48], a1=(([[a0+32]+176] + [[a0+32]+196]) + ([[a0+32]+184] + [[a0+32]+204])), a2=([[a0+32]+184] + [[a0+32]+204]), a3=[[a0+32]+204], a4=[[a0+32]+196].
  The `beq` branch at 0x10031050 targets 0x10031068, is taken when a1(=[[a0+32]+156]) == 0, and falls through when a1(=[[a0+32]+156]) != 0.
  The `beq` branch at 0x1003106c targets 0x10031084, is taken when a1(=[[a0+32]+160]) == 0, and falls through when a1(=[[a0+32]+160]) != 0.
  The `beq` branch at 0x10031088 targets 0x100310a4, is taken when a1(=[[a0+32]+164]) == 0, and falls through when a1(=[[a0+32]+164]) != 0.
  The `beq` branch at 0x100310ac targets 0x100310c8, is taken when a1(=[[sym(xsetmonApp)]+201]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+201]:1) != 0.
  The `beq` branch at 0x100310cc targets 0x100310f8, is taken when a1(=[[sym(xsetmonApp)]+200]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+200]:1) != 0.
  The `beq` branch at 0x10031118 targets 0x10031140, is taken when a1(=(([[a0+32]+176] + [[a0+32]+196]) + ([[a0+32]+184] + [[a0+32]+204]))) == 0, and falls through when a1(=(([[a0+32]+176] + [[a0+32]+196]) + ([[a0+32]+184] + [[a0+32]+204]))) != 0.
  The return at 0x10031138 has v0 = a0.
  The return at 0x10031144 has v0 = a0.

- `postInfoMessage__22ScrollingErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10031150 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10031150-0x100311b0 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0x10031174 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10031188 calls appendText__22ScrollingErrorMessagerGPc [0x10027c70] with a0=a0 at entry (arg0), a1=ret(str__9strstreamGv), a2=?, a3=?.
  The `jalr` at 0x10031198 calls __dl__GPv with a0=?, a1=?, a2=?, a3=?.
  The return at 0x100311a8 has v0 = ret(__dl__GPv).

- `__dt__12GammaClassUIGv` in `usr/bin/X11/xsetmon` at 0x100311b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100311b0-0x10031334 (388 bytes).
  It occupies 388 bytes.
  The `sw` at 0x100311d8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x100311e0 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x100311ec loads 4 bytes from [a0+32] +0x8.
  The `lw` at 0x100311f0 loads 4 bytes from [[a0+32]+8] +0x14.
  The `lw` at 0x100311f4 loads 4 bytes from [[a0+32]+8] +0xc.
  The `lw` at 0x10031208 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10031214 loads 4 bytes from [a0+48] +0x8.
  The `lw` at 0x10031218 loads 4 bytes from [[a0+48]+8] +0x14.
  The `lw` at 0x1003121c loads 4 bytes from [[a0+48]+8] +0xc.
  The `lw` at 0x10031230 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x1003123c loads 4 bytes from [a0+36] +0x8.
  The `lw` at 0x10031240 loads 4 bytes from [[a0+36]+8] +0x14.
  The `lw` at 0x10031244 loads 4 bytes from [[a0+36]+8] +0xc.
  The `lw` at 0x10031258 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x10031264 loads 4 bytes from [a0+40] +0x8.
  The `lw` at 0x10031268 loads 4 bytes from [[a0+40]+8] +0x14.
  The `lw` at 0x1003126c loads 4 bytes from [[a0+40]+8] +0xc.
  The `lw` at 0x10031280 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x1003128c loads 4 bytes from [a0+44] +0x8.
  The `lw` at 0x10031290 loads 4 bytes from [[a0+44]+8] +0x14.
  The `lw` at 0x10031294 loads 4 bytes from [[a0+44]+8] +0xc.
  The `lw` at 0x100312a8 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x100312b4 loads 4 bytes from [a0+100] +0x8.
  The `lw` at 0x100312b8 loads 4 bytes from [[a0+100]+8] +0x14.
  The `lw` at 0x100312bc loads 4 bytes from [[a0+100]+8] +0xc.
  The `lw` at 0x100312d0 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `jalr` at 0x100311fc calls (unknown callee) with a0=([[[a0+32]+8]+12] + [a0+32]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+32].
  The `jalr` at 0x10031224 calls (unknown callee) with a0=([[[a0+48]+8]+12] + [a0+48]), a1=0x3, a2=?, a3=[a0+48].
  The `jalr` at 0x1003124c calls (unknown callee) with a0=([[[a0+36]+8]+12] + [a0+36]), a1=0x3, a2=?, a3=[a0+36].
  The `jalr` at 0x10031274 calls (unknown callee) with a0=([[[a0+40]+8]+12] + [a0+40]), a1=0x3, a2=?, a3=[a0+40].
  The `jalr` at 0x1003129c calls (unknown callee) with a0=([[[a0+44]+8]+12] + [a0+44]), a1=0x3, a2=?, a3=[a0+44].
  The `jalr` at 0x100312c4 calls (unknown callee) with a0=([[[a0+100]+8]+12] + [a0+100]), a1=0x3, a2=?, a3=[a0+100].
  The `jalr` at 0x100312f4 calls __vec_delete2 with a0=[a0+108], a1=-0x1, a2=0x18, a3=0x0, a4=0x1, a5=0x0, a7=[a0+108].
  The `jalr` at 0x10031304 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1003131c calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100311c8 targets 0x10031324, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100311e4 targets 0x10031208, is taken when a3(=[a0+32]) == 0, and falls through when a3(=[a0+32]) != 0.
  The `beq` branch at 0x1003120c targets 0x10031230, is taken when a3(=[a0+48]) == 0, and falls through when a3(=[a0+48]) != 0.
  The `beq` branch at 0x10031234 targets 0x10031258, is taken when a3(=[a0+36]) == 0, and falls through when a3(=[a0+36]) != 0.
  The `beq` branch at 0x1003125c targets 0x10031280, is taken when a3(=[a0+40]) == 0, and falls through when a3(=[a0+40]) != 0.
  The `beq` branch at 0x10031284 targets 0x100312a8, is taken when a3(=[a0+44]) == 0, and falls through when a3(=[a0+44]) != 0.
  The `beq` branch at 0x100312ac targets 0x100312d0, is taken when a3(=[a0+100]) == 0, and falls through when a3(=[a0+100]) != 0.
  The `beq` branch at 0x100312d4 targets 0x10031304, is taken when a7(=[a0+108]) == 0, and falls through when a7(=[a0+108]) != 0.
  The `beq` branch at 0x10031314 targets 0x10031324, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1003132c has v0 = one of ?, ret(__dt__11VkComponentGv), ret(__dl__GPv).

- `doOptionNotBlankedCallback__18ChannelFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10031340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10031340-0x10031384 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10031344 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031350 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x1003135c loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x1003136c calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x275bc.
  The return at 0x1003137c has v0 = ret(?).

- `__dt__13GammaEditUndoGv` in `usr/bin/X11/xsetmon` at 0x10031390 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10031390-0x100313f0 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x100313c0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `jalr` at 0x100313bc calls __dla__GPv with a0=[a0+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100313d8 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100313ac targets 0x100313e0, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100313cc targets 0x100313e4, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x100313e8 has v0 = one of ret(__dla__GPv), ?.

- `changeTargetDisplay__21MasterTabbedDeckClassGPc` in `usr/bin/X11/xsetmon` at 0x10031540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10031540-0x10031a90 (1360 bytes).
  It occupies 1360 bytes.
  The `lbu` at 0x1003156c loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lw` at 0x100315c8 loads 4 bytes from ret(XOpenDisplay) +0x84.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x100315e8, `lw` at 0x1003163c, `lw` at 0x10031820.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x10031600, `lw` at 0x10031660, `lw` at 0x10031838.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x10031618, `lw` at 0x10031684, `lw` at 0x10031850.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x10031630, `lw` at 0x100316a8, `lw` at 0x100317bc.
  The `lw` at 0x10031648 loads 4 bytes from [a0+44] +0x8.
  The `lw` at 0x1003164c loads 4 bytes from [[a0+44]+8] +0x14.
  The `lw` at 0x10031650 loads 4 bytes from [[a0+44]+8] +0xc.
  The `lw` at 0x1003166c loads 4 bytes from [a0+48] +0x8.
  The `lw` at 0x10031670 loads 4 bytes from [[a0+48]+8] +0x14.
  The `lw` at 0x10031674 loads 4 bytes from [[a0+48]+8] +0xc.
  The `lw` at 0x10031690 loads 4 bytes from [a0+52] +0x8.
  The `lw` at 0x10031694 loads 4 bytes from [[a0+52]+8] +0x14.
  The `lw` at 0x10031698 loads 4 bytes from [[a0+52]+8] +0xc.
  3 such `lw` accesses load 4 bytes from [a0+56] +0x8, including `lw` at 0x100316b4, `lw` at 0x100317c0, `lw` at 0x100317e4.
  The `lw` at 0x100316b8 loads 4 bytes from [[a0+56]+8] +0x14.
  The `lw` at 0x100316bc loads 4 bytes from [[a0+56]+8] +0xc.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x100316dc, `lw` at 0x100316e8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2c, including `sw` at 0x10031708, `sw` at 0x100318c4.
  9 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1003170c, `lw` at 0x10031710, `lw` at 0x10031714.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x1003173c, `sw` at 0x10031900.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x34, including `sw` at 0x10031770, `sw` at 0x1003193c.
  The `sb` at 0x1003178c stores 1 byte to a0 (arg0 at entry) +0x40.
  The `sw` at 0x100317b8 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `lw` at 0x100317c4 loads 4 bytes from [[a0+56]+8] +0x2c.
  The `lw` at 0x100317c8 loads 4 bytes from [[a0+56]+8] +0x24.
  The `lbu` at 0x100317d4 loads 1 byte from a0 (arg0 at entry) +0x40.
  The `lw` at 0x100317e8 loads 4 bytes from [[a0+56]+8] +0x38.
  The `lw` at 0x100317ec loads 4 bytes from [[a0+56]+8] +0x30.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x1003189c, `lw` at 0x100318d8, `lw` at 0x10031914.
  2 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x100319c8, `lw` at 0x10031a48.
  2 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110, including `lw` at 0x100319d8, `lw` at 0x10031a58.
  2 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108, including `lw` at 0x100319e4, `lw` at 0x10031a64.
  The `jalr` at 0x10031580 calls putenv with a0=0x10045ee8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10031590 calls XOpenDisplay with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100315ac calls XSGIvcQueryVersion with a0=ret(XOpenDisplay), a1=sp-1120, a2=sp-1116, a3=?.
  The `jalr` at 0x100315c4 calls XSGIvcQueryScreenGammaMaps with a0=ret(XOpenDisplay), a1=[ret(XOpenDisplay)+132], a2=sp-1112, a3=?.
  The `jal` at 0x100315ec calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc [0x10025b40] with a0=a0 at entry (arg0), a1=[a0+44], a2=0x10045db8, a3=?.
  The `jal` at 0x10031604 calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc [0x10025b40] with a0=a0 at entry (arg0), a1=[a0+48], a2=0x10045dd0, a3=?.
  The `jal` at 0x1003161c calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc [0x10025b40] with a0=a0 at entry (arg0), a1=[a0+52], a2=0x10045de8, a3=?.
  The `jal` at 0x10031634 calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc [0x10025b40] with a0=a0 at entry (arg0), a1=[a0+56], a2=0x10045e00, a3=?.
  The `jalr` at 0x10031658 calls (unknown callee) with a0=([[[a0+44]+8]+12] + [a0+44]), a1=0x3, a2=?, a3=?.
  The `jalr` at 0x1003167c calls (unknown callee) with a0=([[[a0+48]+8]+12] + [a0+48]), a1=0x3, a2=?, a3=?.
  The `jalr` at 0x100316a0 calls (unknown callee) with a0=([[[a0+52]+8]+12] + [a0+52]), a1=0x3, a2=?, a3=?.
  The `jalr` at 0x100316c4 calls (unknown callee) with a0=([[[a0+56]+8]+12] + [a0+56]), a1=0x3, a2=?, a3=?.
  The `jal` at 0x100316d8 calls getDpyInfo__7xsetmonGPc [0x10034110] with a0=[sym(xsetmonApp)], a1=?, a2=?, a3=?.
  The `jal` at 0x100316e4 calls setTitle__7xsetmonGv [0x10038c60] with a0=[sym(xsetmonApp)], a1=?, a2=?, a3=?.
  The `jalr` at 0x100316f4 calls __nw__GUi with a0=0x40, a1=?, a2=?, a3=?.
  The `jalr` at 0x10031718 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10031728 calls __nw__GUi with a0=0x7c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003174c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003175c calls __nw__GUi with a0=0x108, a1=?, a2=?, a3=?.
  The `jalr` at 0x10031780 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10031794 calls __nw__GUi with a0=0x78, a1=?, a2=?, a3=?.
  The `jal` at 0x100317b4 calls setTabbedDeckParent__10GammaClassGP21MasterTabbedDeckClass [0x10042a30] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x100317cc calls (unknown callee) with a0=([[[a0+56]+8]+36] + [a0+56]), a1=[a0+56], a2=?, a3=?.
  The `jalr` at 0x100317f0 calls (unknown callee) with a0=([[[a0+56]+8]+48] + [a0+56]), a1=[a0+56], a2=?, a3=?.
  The `jal` at 0x10031808 calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc [0x10025b40] with a0=a0 at entry (arg0), a1=[a0+56], a2=0x10045e00, a3=?.
  The `jal` at 0x10031824 calls registerChild__12MyTabbedDeckGP11VkComponentPCc [0x10041ed0] with a0=a0 at entry (arg0), a1=[a0+44], a2=0x10045db8, a3=?.
  The `jal` at 0x1003183c calls registerChild__12MyTabbedDeckGP11VkComponentPCc [0x10041ed0] with a0=a0 at entry (arg0), a1=[a0+48], a2=0x10045dd0, a3=?.
  The `jal` at 0x10031854 calls registerChild__12MyTabbedDeckGP11VkComponentPCc [0x10041ed0] with a0=a0 at entry (arg0), a1=[a0+52], a2=0x10045de8, a3=?.
  The `jal` at 0x1003186c calls registerChild__12MyTabbedDeckGP11VkComponentPCc [0x10041ed0] with a0=a0 at entry (arg0), a1=[a0+56], a2=0x10045e00, a3=?.
  The `jalr` at 0x10031898 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=0x1.
  The `jal` at 0x100318b0 calls __ct__21SetmonMasterFormClassGPCcP10_WidgetRec [0x10030fd0] with a0=?, a1=0x10045db8, a2=ret(baseWidget__11VkComponentCGv), a3=?.
  The `jalr` at 0x100318d4 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=0x1, a3=?.
  The `jal` at 0x100318ec calls __ct__19ServerInfoFormClassGPCcP10_WidgetRec [0x10042400] with a0=?, a1=0x10045dd0, a2=ret(baseWidget__11VkComponentCGv), a3=?.
  The `jalr` at 0x10031910 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=0x1, a3=?.
  The `jal` at 0x10031928 calls __ct__16ChannelFormClassGPCcP10_WidgetRec [0x10037ad0] with a0=?, a1=0x10045de8, a2=ret(baseWidget__11VkComponentCGv), a3=?.
  The `jalr` at 0x1003194c calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=0x1, a3=?.
  The `jal` at 0x10031964 calls __ct__10GammaClassGPCcP10_WidgetRec [0x10037630] with a0=?, a1=0x10045e00, a2=ret(baseWidget__11VkComponentCGv), a3=?.
  The `jalr` at 0x10031980 calls getenv with a0=0x10051708, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100319a0 calls VkGetResource__GPCcT1 with a0=0x10045f00, a1=0x10045f00, a2=?, a3=?.
  The `jalr` at 0x100319b4 calls sprintf with a0=sp-1104, a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x100319c0 calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100319f0 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-1104, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10031a20 calls VkGetResource__GPCcT1 with a0=0x10045f20, a1=0x10045f20, a2=?, a3=?.
  The `jalr` at 0x10031a34 calls sprintf with a0=sp-1104, a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x10031a40 calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10031a70 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-1104, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x10031564 targets 0x1003197c, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x10031570 targets 0x10031980, is taken when v0(=[a1]:1) == 0, and falls through when v0(=[a1]:1) != 0.
  The `beq` branch at 0x10031598 targets 0x10031a10, is taken when v0(=ret(XOpenDisplay)) == 0, and falls through when v0(=ret(XOpenDisplay)) != 0.
  The `beq` branch at 0x100315d0 targets 0x10031994, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x100315d8 targets 0x10031990, is taken when v0(=ret(XSGIvcQueryScreenGammaMaps)) == 0, and falls through when v0(=ret(XSGIvcQueryScreenGammaMaps)) != 0.
  The `beq` branch at 0x10031640 targets 0x10031660, is taken when v0(=[a0+44]) == 0, and falls through when v0(=[a0+44]) != 0.
  The `beq` branch at 0x10031664 targets 0x10031684, is taken when v0(=[a0+48]) == 0, and falls through when v0(=[a0+48]) != 0.
  The `beq` branch at 0x10031688 targets 0x100316a8, is taken when v0(=[a0+52]) == 0, and falls through when v0(=[a0+52]) != 0.
  The `beq` branch at 0x100316ac targets 0x100316d0, is taken when v0(=[a0+56]) == 0, and falls through when v0(=[a0+56]) != 0.
  The `bne` branch at 0x100316fc targets 0x1003188c, is taken when v0(=ret(__nw__GUi)) != 0, and falls through when v0(=ret(__nw__GUi)) == 0.
  The `bne` branch at 0x10031730 targets 0x100318c8, is taken when v0(=ret(__nw__GUi)) != 0, and falls through when v0(=ret(__nw__GUi)) == 0.
  The `bne` branch at 0x10031764 targets 0x10031904, is taken when v0(=ret(__nw__GUi)) != 0, and falls through when v0(=ret(__nw__GUi)) == 0.
  The `bne` branch at 0x1003179c targets 0x10031940, is taken when v0(=ret(__nw__GUi)) != 0, and falls through when v0(=ret(__nw__GUi)) == 0.
  The `beq` branch at 0x100317d8 targets 0x10031814, is taken when a1(=[a0+64]:1) == 0, and falls through when a1(=[a0+64]:1) != 0.
  The `beq` branch at 0x100318c0 targets 0x1003170c and is always taken.
  The `beq` branch at 0x100318fc targets 0x10031740 and is always taken.
  The `beq` branch at 0x10031938 targets 0x10031774 and is always taken.
  The `beq` branch at 0x10031974 targets 0x100317ac and is always taken.
  The `beq` branch at 0x10031988 targets 0x10031578 and is always taken.
  The return at 0x10031884 has v0 = ret(registerChild__12MyTabbedDeckGP11VkComponentPCc).
  The return at 0x10031a08 has v0 = ret(?).
  The return at 0x10031a88 has v0 = ret(?).

- `__ct__30CombinationContentsListClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x10031a90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10031a90-0x10031ad8 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10031ac8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10031ab0 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10031ad0 has v0 = a0.

- `doOptionMap__10GammaClassGP18GammaMapDescriptor` in `usr/bin/X11/xsetmon` at 0x10031ea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10031ea0-0x100320d4 (564 bytes).
  It occupies 564 bytes.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x10031ea0, `lw` at 0x10031f30, `lw` at 0x10031f8c.
  3 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10031ec8, `lw` at 0x10031f2c, `lw` at 0x10031f88.
  3 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x13c, including `lw` at 0x10031ee0, `lw` at 0x10031f3c, `lw` at 0x10031f98.
  3 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10031eec, `lw` at 0x10031f48, `lw` at 0x10031fa4.
  The `lw` at 0x10031f14 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x10031f70 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x10031fc8 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x10031fe0 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x10031ff0 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x10031ffc loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x1003200c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032018 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0x1003201c loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0x10032050 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x10032054 loads 4 bytes from [a0+32] +0x8.
  The `lw` at 0x10032058 loads 4 bytes from [[a0+32]+8] +0x38.
  The `lw` at 0x1003205c loads 4 bytes from [[a0+32]+8] +0x30.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x100320a4, `lw` at 0x100320b4, `lw` at 0x100320c8.
  The `jalr` at 0x10031ee8 calls XSGIvcQueryGammaColors with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[a1], a3=0x1, a4=sp-48, a5=sp-44.
  The `jal` at 0x10031f10 calls loadEditor__19GammaMapEditorClassGPUsiP18GammaMapDescriptorT2l [0x10032d60] with a0=[a0+36], a1=?, a2=?, a3=a1 at entry (arg1), a4=0x1, a5=0x1.
  The `jalr` at 0x10031f1c calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10031f44 calls XSGIvcQueryGammaColors with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[a1], a3=0x2, a4=sp-48, a5=sp-44.
  The `jal` at 0x10031f6c calls loadEditor__19GammaMapEditorClassGPUsiP18GammaMapDescriptorT2l [0x10032d60] with a0=[a0+40], a1=?, a2=?, a3=a1 at entry (arg1), a4=0x2, a5=0x2.
  The `jalr` at 0x10031f78 calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10031fa0 calls XSGIvcQueryGammaColors with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[a1], a3=0x3, a4=sp-48, a5=sp-44.
  The `jal` at 0x10031fc4 calls loadEditor__19GammaMapEditorClassGPUsiP18GammaMapDescriptorT2l [0x10032d60] with a0=[a0+44], a1=?, a2=?, a3=a1 at entry (arg1), a4=0x3, a5=0x4.
  The `jalr` at 0x10031fd0 calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10031fdc calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+84], a1=?, a2=?, a3=?.
  The `jal` at 0x10031fec calls __as__9EZWrapperGi [0x1001fb40] with a0=ret(EZ__GP10_WidgetRec), a1=[a1+4], a2=?, a3=?.
  The `jal` at 0x10031ff8 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+80], a1=?, a2=?, a3=?.
  The `jal` at 0x10032008 calls __as__9EZWrapperGi [0x1001fb40] with a0=ret(EZ__GP10_WidgetRec), a1=[a1+8], a2=?, a3=?.
  The `jal` at 0x10032014 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+76], a1=?, a2=?, a3=?.
  The `jalr` at 0x10032038 calls VkGetResource__GPCcT1 with a0=0x10045410, a1=0x10045410, a2=?, a3=?.
  The `jal` at 0x10032048 calls __as__9EZWrapperGPCc [0x100201d0] with a0=?, a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x10032060 calls (unknown callee) with a0=([[[a0+32]+8]+48] + [a0+32]), a1=[a0+32], a2=?, a3=?.
  The `jalr` at 0x1003208c calls VkGetResource__GPCcT1 with a0=0x10045420, a1=0x10045420, a2=?, a3=?.
  The `jal` at 0x100320a0 calls hideGamma__21MasterTabbedDeckClassGv [0x100252a0] with a0=[a0+116], a1=?, a2=?, a3=?.
  The `jal` at 0x100320b0 calls hideGamma__21MasterTabbedDeckClassGv [0x100252a0] with a0=[a0+116], a1=?, a2=?, a3=?.
  The `jal` at 0x100320c4 calls hideGamma__21MasterTabbedDeckClassGv [0x100252a0] with a0=[a0+116], a1=?, a2=?, a3=?.
  The `beq` branch at 0x10031ef0 targets 0x100320a0, is taken when v0(=ret(XSGIvcQueryGammaColors)) == 0, and falls through when v0(=ret(XSGIvcQueryGammaColors)) != 0.
  The `beq` branch at 0x10031f4c targets 0x100320b0, is taken when v0(=ret(XSGIvcQueryGammaColors)) == 0, and falls through when v0(=ret(XSGIvcQueryGammaColors)) != 0.
  The `beq` branch at 0x10031fa8 targets 0x100320c0, is taken when v0(=ret(XSGIvcQueryGammaColors)) == 0, and falls through when v0(=ret(XSGIvcQueryGammaColors)) != 0.
  The `beq` branch at 0x10032020 targets 0x10032080, is taken when a1(=[a1+12]) == 0, and falls through when a1(=[a1+12]) != 0.
  The `beq` branch at 0x10032098 targets 0x10032044 and is always taken.
  The `beq` branch at 0x100320a8 targets 0x1003206c and is always taken.
  The `beq` branch at 0x100320b8 targets 0x1003206c and is always taken.
  The `beq` branch at 0x100320cc targets 0x1003206c and is always taken.
  The return at 0x10032078 has v0 = one of ret(?), ret(hideGamma__21MasterTabbedDeckClassGv).

- `__dt__23AboutXsetmonFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x100320e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100320e0-0x1003214c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10032110 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10032118 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10032134 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10032100 targets 0x1003213c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10032128 targets 0x10032140, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10032144 has v0 = one of ret(__dt__11VkComponentGv), ?.

- `create__23SetmonMasterFormClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10032150 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032150-0x100327d4 (1668 bytes).
  It occupies 1668 bytes.
  The `lw` at 0x10032198 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from sym(xmFormWidgetClass) +0x0, including `lw` at 0x100321a4, `lw` at 0x100322cc.
  The `sw` at 0x100321b0 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x100321bc stores 4 bytes to a0 (arg0 at entry) +0x38.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x100321c4, `lw` at 0x100323c8, `lw` at 0x1003242c.
  2 such `lw` accesses load 4 bytes from sym(xmFrameWidgetClass) +0x0, including `lw` at 0x100321c8, `lw` at 0x1003246c.
  The `sw` at 0x100322ac stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x100322ec stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `lw` at 0x100322f0 loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  The `sw` at 0x1003239c stores 4 bytes to a0 (arg0 at entry) +0x34.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x20, including `sw` at 0x100323e0, `sw` at 0x100323e8.
  9 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100323ec, `lw` at 0x100323f0, `lw` at 0x100323f4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x24, including `sw` at 0x10032444, `sw` at 0x1003244c.
  The `sw` at 0x10032524 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x10032550, `lw` at 0x10032694, `lw` at 0x100327c8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x28, including `sw` at 0x10032568, `sw` at 0x10032570.
  The `lw` at 0x10032590 loads 4 bytes from a0 (arg0 at entry) +0x28.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x100325b4, `lw` at 0x10032670, `lw` at 0x10032784.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x10032660, `lw` at 0x10032764.
  The `lw` at 0x10032740 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10032744 loads 4 bytes from [sym(xsetmonApp)] +0x9c.
  The `lw` at 0x10032768 loads 4 bytes from [a0+36] +0x8.
  The `lw` at 0x1003276c loads 4 bytes from [[a0+36]+8] +0x38.
  The `lw` at 0x10032770 loads 4 bytes from [[a0+36]+8] +0x30.
  The `jalr` at 0x1003217c calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultSetmonMasterFormClassUIResources__23SetmonMasterFormClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x100321a0 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x100321b8 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100322a4 calls XtVaCreateManagedWidget with a0=0x10046770, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x100322e0 calls XtVaCreateManagedWidget with a0=0x10051790, a1=[sym(xmFormWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xd1, a4=0x1, a5=-0x17, a6=0x2a2, a7=-0x16.
  The `jalr` at 0x10032390 calls XtVaCreateManagedWidget with a0=0x10051798, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x100323a4 calls __nw__GUi with a0=0xf8, a1=?, a2=?, a3=?.
  The `jal` at 0x100323cc calls __ct__27FormatCombinationListsClassGPCcP10_WidgetRec [0x10026d00] with a0=ret(__nw__GUi), a1=0x10046788, a2=[a0+16], a3=?.
  The `jalr` at 0x100323f8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10032408 calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x10032430 calls __ct__28CombinationContentsListClassGPCcP10_WidgetRec [0x10042360] with a0=ret(__nw__GUi), a1=0x100467a8, a2=[a0+16], a3=?.
  The `jalr` at 0x1003245c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10032518 calls XtVaCreateManagedWidget with a0=0x100467c8, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003252c calls __nw__GUi with a0=0x164, a1=?, a2=?, a3=?.
  The `jal` at 0x10032554 calls __ct__19StatisticsFormClassGPCcP10_WidgetRec [0x100422c0] with a0=ret(__nw__GUi), a1=0x100467d8, a2=[a0+60], a3=?.
  The `jalr` at 0x10032580 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003258c calls baseWidget__11VkComponentCGv with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jalr` at 0x100325a4 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x16, a2=0x255, a3=0x0.
  The `jalr` at 0x100325b0 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jalr` at 0x10032650 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x1, a3=-0x66, a4=0x1, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x1003265c calls baseWidget__11VkComponentCGv with a0=[a0+36], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003266c calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jalr` at 0x10032734 calls XtVaSetValues with a0=?, a1=-0x42, a2=0x1, a3=-0x66, a4=0x1, a5=-0x46, a6=0x3, a7=-0xa5.
  The `jalr` at 0x10032774 calls (unknown callee) with a0=([[[a0+36]+8]+48] + [a0+36]), a1=[a0+36], a2=?, a3=?.
  The `jalr` at 0x10032780 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jalr` at 0x10032798 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x2e1, a2=0x32, a3=0x0.
  The `jalr` at 0x100327a4 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jalr` at 0x100327c4 calls XtVaSetValues with a0=[a0+60], a1=-0x46, a2=0x3, a3=-0xa5, a4=ret(baseWidget__11VkComponentCGv), a5=0x0.
  The `beq` branch at 0x100323b0 targets 0x100323e4, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100323dc targets 0x100323ec and is always taken.
  The `beq` branch at 0x10032414 targets 0x10032448, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10032440 targets 0x10032450 and is always taken.
  The `beq` branch at 0x10032538 targets 0x1003256c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10032564 targets 0x10032574 and is always taken.
  The `beq` branch at 0x1003274c targets 0x10032764, is taken when (ra(=[[sym(xsetmonApp)]+156]) & 0x2) == 0, and falls through when (ra(=[[sym(xsetmonApp)]+156]) & 0x2) != 0.
  The `beq` branch at 0x100327cc targets 0x10032754 and is always taken.
  The return at 0x1003275c has v0 = ret(XtVaSetValues).

- `doFinishRegionDrag__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x100327e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100327e0-0x10032934 (340 bytes).
  It occupies 340 bytes.
  The `sw` at 0x100327e0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0x100327e8 loads 4 bytes from a0 (arg0 at entry) +0x68.
  4 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10032810, `lw` at 0x10032848, `lw` at 0x10032864.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x8, including `lw` at 0x10032814, `lw` at 0x100328fc.
  The `lw` at 0x10032818 loads 4 bytes from [[sym(xsetmonApp)]+8] +0x128.
  The `lw` at 0x1003281c loads 4 bytes from [[sym(xsetmonApp)]+8] +0x120.
  The `lw` at 0x10032830 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x10032834 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x10032838 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x1003283c loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x1003284c loads 4 bytes from [a0+88] +0x0.
  The `lw` at 0x10032850 loads 4 bytes from [sym(xsetmonApp)] +0x13c.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10032858, `lw` at 0x10032870.
  The `lw` at 0x10032900 loads 4 bytes from [[sym(xsetmonApp)]+8] +0x140.
  The `lw` at 0x10032904 loads 4 bytes from [[sym(xsetmonApp)]+8] +0x138.
  The `jalr` at 0x10032828 calls (unknown callee) with a0=([[[sym(xsetmonApp)]+8]+288] + [sym(xsetmonApp)]), a1=0x0, a2=0x0, a3=[sym(xsetmonApp)].
  The `jalr` at 0x10032854 calls XSGIvcStoreGammaColors16 with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[[a0+88]], a3=[a0+84], a4=[a0+96], a5=[a0+80].
  The `jalr` at 0x1003286c calls XSync with a0=[[sym(xsetmonApp)]+312], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1003287c calls __nw__GUi with a0=0x14, a1=?, a2=?, a3=?.
  The `jal` at 0x1003289c calls __ct__13GammaEditUndoGP19GammaMapEditorClass [0x1002e2e0] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x100328bc calls getTheUndoManager__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100328d4 calls VkGetResource__GPCcT1 with a0=0x100459a0, a1=0x100459a0, a2=?, a3=?.
  The `jalr` at 0x100328ec calls add__17VkMenuUndoManagerGPCcPGP10_WidgetRecPvT2_vPv with a0=?, a1=ret(VkGetResource__GPCcT1), a2=sym(vPerformUndo__13GammaEditUndoSGPvT1), a3=?.
  The `jalr` at 0x10032908 calls (unknown callee) with a0=([[[sym(xsetmonApp)]+8]+312] + [sym(xsetmonApp)]), a1=[sym(xsetmonApp)], a2=?, a3=?.
  The `jal` at 0x10032918 calls redraw__19GammaMapEditorClassCGi [0x1002ad90] with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `beq` branch at 0x10032804 targets 0x10032910, is taken when at(=[a0+104]) == 0, and falls through when at(=[a0+104]) != 0.
  The `beq` branch at 0x10032888 targets 0x100328b4, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100328ac targets 0x100328b8 and is always taken.
  The return at 0x1003292c has v0 = ret(redraw__19GammaMapEditorClassCGi).

- `saveSettingsFile__21MasterTabbedDeckClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10032940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032940-0x1003297c (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0x10032964 calls VkUnimplemented__GP10_WidgetRecPCc [0x10042a40] with a0=0x0, a1=0x10045e78, a2=0x25fbc, a3=a3 at entry (arg3).
  The return at 0x10032974 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `DisplayaccumBufType__21SetmonMasterFormClassGi` in `usr/bin/X11/xsetmon` at 0x10032980 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032980-0x100329b4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x100329a0 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x1003299c calls DisplayaccumBufType__19StatisticsFormClassGi [0x100234f0] with a0=[a0+40], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100329ac has v0 = ret(DisplayaccumBufType__19StatisticsFormClassGi).

- `RegisterGainControlClassInterface__16GainControlClassSGv` in `usr/bin/X11/xsetmon` at 0x100329c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100329c0-0x100329d8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x100329cc loads 4 bytes from abs 0x10050950.
  The return at 0x100329d0 has v0 = 0x1004d390.

- `tInverse__7MMatrixCGRi` in `usr/bin/X11/xsetmon` at 0x100329e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100329e0-0x10032b6c (396 bytes).
  It occupies 396 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x100329e8, `lw` at 0x10032a38, `lw` at 0x10032a5c.
  4 such `lw` accesses load 4 bytes from [a0] +0x0, including `lw` at 0x100329f0, `lw` at 0x10032a40, `lw` at 0x10032a60.
  2 such `lw` accesses load 4 bytes from [a0] +0x4, including `lw` at 0x100329f8, `lw` at 0x10032a80.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x10032a44, `lw` at 0x10032abc, `lw` at 0x10032ae4.
  The `lw` at 0x10032a50 loads 4 bytes from [a1] +0xc.
  The `sw` at 0x10032a98 stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from [a1] +0x4, including `lw` at 0x10032acc, `lw` at 0x10032af4.
  2 such `lw` accesses load 4 bytes from [a1] +0x0, including `lw` at 0x10032ad8, `lw` at 0x10032b00.
  The `sw` at 0x10032b08 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lw` at 0x10032b10 loads 4 bytes from ret(0x100305a0) +0x4.
  The `jal` at 0x10032a2c calls __ct__7MMatrixGRC7MMatrix [0x10026f50] with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10032a54 calls __nwa__GUi with a0=([[a0]] << 0x2)+4, a1=?, a2=?, a3=?.
  The `jal` at 0x10032ad4 calls (unnamed) [0x100305a0] with a0=0x1, a1=[[a1]], a2=0x1, a3=[[a1]+4], a5=[a0].
  The `jal` at 0x10032afc calls (unnamed) [0x100226c0] with a0=ret(__nwa__GUi), a1=[[a1]], a2=ret(0x100305a0), a3=[[a1]+4].
  The `jalr` at 0x10032b0c calls free with a0=[ret(0x100305a0)+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x10032b1c calls free with a0=ret(0x100305a0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10032b2c calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x10032b5c calls __assert with a0=0x100494e8, a1=0x100494a0, a2=0x104, a3=a3 at entry (arg3).
  The `bne` branch at 0x10032a18 targets 0x10032b48, is taken when at(=[[a0]]) != v1(=[[a0]+4]), and falls through when at(=[[a0]]) == v1(=[[a0]+4]).
  The `blez` branch at 0x10032a6c targets 0x10032ab4, is taken when a1(=[[a0]]) <= 0 (signed), and falls through when a1(=[[a0]]) > 0 (signed).
  The `bne` branch at 0x10032aac targets 0x10032a80, is taken when a7(?) < a2(=[[a0]]) (signed), and falls through when a7(?) >= a2(=[[a0]]) (signed).
  The `beq` branch at 0x10032b64 targets 0x10032a20 and is always taken.
  The return at 0x10032b40 has v0 = ret(__dla__GPv).

- `vPerformUndo__13GammaEditUndoSGPvT1` in `usr/bin/X11/xsetmon` at 0x10032b70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032b70-0x10032bf4 (132 bytes).
  It occupies 132 bytes.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x10032b88, `lw` at 0x10032ba8, `lw` at 0x10032bac.
  The `lw` at 0x10032ba0 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x10032bb0 loads 4 bytes from [a1] +0xc0.
  The `jal` at 0x10032b94 calls vClearScreen__19GammaMapEditorClassCGv [0x1002de60] with a0=[a1], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10032ba4 calls vLoadDrawTable__19GammaMapEditorClassGPUs [0x10028ff0] with a0=[a1], a1=[a1+4], a2=?, a3=?.
  The `jal` at 0x10032bd4 calls vDetermineSplinePoints__19GammaMapEditorClassGv [0x10024880] with a0=[a1], a1=?, a2=?, a3=?.
  The `jal` at 0x10032be4 calls redraw__19GammaMapEditorClassCGi [0x1002ad90] with a0=[a1], a1=0x1, a2=?, a3=?.
  The `beq` branch at 0x10032bb8 targets 0x10032bd0, is taken when v0(=[[a1]+192]) == v1(=0x1), and falls through when v0(=[[a1]+192]) != v1(=0x1).
  The `beq` branch at 0x10032bec targets 0x10032bc0 and is always taken.
  The return at 0x10032bc8 has v0 = one of [[a1]+192], ret(redraw__19GammaMapEditorClassCGi).

- `doDragScalar__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10032c00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032c00-0x10032c08 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10032c00 has v0 = ?.

- `doSetVerticalPhaseCallback__18ChannelFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10032c10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032c10-0x10032c54 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10032c14 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032c20 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x10032c2c loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x10032c3c calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x25cec.
  The return at 0x10032c4c has v0 = ret(?).

- `doSetVerticalPhase__16ChannelFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10032c60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032c60-0x10032cc0 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x10032c64 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10032c7c loads 4 bytes from a0 (arg0 at entry) +0xd8.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10032c80, `lw` at 0x10032ca4.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10032c88, `lw` at 0x10032cac.
  The `lw` at 0x10032c90 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `jalr` at 0x10032c94 calls XSGIvcSetOutputPhaseV with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+216], a3=[a2+8].
  The `jalr` at 0x10032ca8 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The return at 0x10032cb8 has v0 = ret(XFlush).

- `fbDepthSelectedCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10032cc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032cc0-0x10032d04 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10032cc4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032cd0 loads 4 bytes from [a1+8] +0xfc.
  The `lw` at 0x10032cdc loads 4 bytes from [a1+8] +0x104.
  The `jalr` at 0x10032cec calls (unknown callee) with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x25c3c.
  The return at 0x10032cfc has v0 = ret(?).

- `quit__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10032d10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032d10-0x10032d54 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10032d28 loads 4 bytes from sym(theApplication) +0x0.
  The `lw` at 0x10032d2c loads 4 bytes from [sym(theApplication)] +0x8.
  The `lw` at 0x10032d30 loads 4 bytes from [[sym(theApplication)]+8] +0xc8.
  The `lw` at 0x10032d34 loads 4 bytes from [[sym(theApplication)]+8] +0xc0.
  The `jalr` at 0x10032d3c calls (unknown callee) with a0=([[[sym(theApplication)]+8]+192] + [sym(theApplication)]), a1=[sym(theApplication)], a2=0x25bec, a3=a3 at entry (arg3).
  The return at 0x10032d4c has v0 = ret(?).

- `__ct__12MyTabbedDeckGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10032e20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032e20-0x100330c0 (672 bytes).
  It occupies 672 bytes.
  The `sw` at 0x10032e5c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x10032e74 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x10032e80 stores 4 bytes to a0 (arg0 at entry) +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x10032ec0, `lw` at 0x10032f34.
  The `sw` at 0x10032edc stores 4 bytes to a0 (arg0 at entry) +0x20.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x10032ee4, `lw` at 0x10032fac.
  The `lw` at 0x10032ee8 loads 4 bytes from [a0+32] +0x8.
  The `lw` at 0x10032eec loads 4 bytes from [[a0+32]+8] +0x2c.
  The `lw` at 0x10032ef0 loads 4 bytes from [[a0+32]+8] +0x24.
  The `sw` at 0x10032f50 stores 4 bytes to a0 (arg0 at entry) +0x24.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x10032f58, `lw` at 0x10032f84, `lw` at 0x10032fc0.
  The `lw` at 0x10032f5c loads 4 bytes from [a0+36] +0x8.
  The `lw` at 0x10032f60 loads 4 bytes from [[a0+36]+8] +0x2c.
  The `lw` at 0x10032f64 loads 4 bytes from [[a0+36]+8] +0x24.
  The `lw` at 0x10032f78 loads 4 bytes from sym(tabSelectCallback__10VkTabPanel) +0x0.
  The `lw` at 0x10032f8c loads 4 bytes from abs 0x1004f3f0.
  The `ld` at 0x10032f94 loads 8 bytes from abs 0x1004f3e8.
  The `jalr` at 0x10032e48 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10032e70 calls XmCreateForm with a0=a2 at entry (arg2), a1=[a0+12], a2=0x0, a3=0x0.
  The `jalr` at 0x10032e84 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=a0 at entry (arg0).
  The `jalr` at 0x10032e94 calls __nw__GUi with a0=0x30, a1=?, a2=?, a3=?.
  The `jalr` at 0x10032ebc calls __ct__6VkDeckGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=0x100519b8, a2=[a0+16], a3=?, a5=0x1.
  The `jalr` at 0x10032ef4 calls (unknown callee) with a0=([[[a0+32]+8]+36] + [a0+32]), a1=[a0+32], a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10032f04 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x10032f30 calls __ct__10VkTabPanelGPCcP10_WidgetRecci with a0=ret(__nw__GUi), a1=0x100519c0, a2=[a0+16], a3=0x1, a4=0x0.
  The `jalr` at 0x10032f68 calls (unknown callee) with a0=([[[a0+36]+8]+36] + [a0+36]), a1=[a0+36], a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10032f98 calls addCallback__16VkCallbackObjectGPCcP16VkCallbackObjectM16VkCallbackObjectGP16VkCallbackObjectPvT2_vPv with a0=[a0+36], a1=[sym(tabSelectCallback__10VkTabPanel)], a2=a0 at entry (arg0), a3=[0x1004f3e8]:8, a4=([0x1004f3f0] << 0x20), a5=0x0.
  The `jalr` at 0x10032fa8 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jalr` at 0x10032fbc calls baseWidget__11VkComponentCGv with a0=[a0+36], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003302c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x1, a3=-0x46, a4=0x1, a5=-0x67, a6=0x1, a7=-0x66.
  The `jalr` at 0x10033040 calls baseWidget__11VkComponentCGv with a0=[a0+36], a1=?, a2=?, a3=?.
  The `jalr` at 0x100330a4 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x0, a3=-0x46, a4=0x1, a5=-0x67, a6=0x1, a7=-0x66.
  The `beq` branch at 0x10032ea0 targets 0x10032ed4, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10032ecc targets 0x10032edc and is always taken.
  The `beq` branch at 0x10032f10 targets 0x10032f48, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10032f40 targets 0x10032f50 and is always taken.
  The return at 0x100330b8 has v0 = a0.

- `nameSelected__28CombinationContentsListClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x100330c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100330c0-0x10033168 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x100330c8 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x100330cc loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x100330f4 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lw` at 0x10033100 loads 4 bytes from ?.
  The `lw` at 0x1003311c loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10033120 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x1003312c loads 4 bytes from [sym(xsetmonApp)] +0x130.
  The `lw` at 0x1003313c loads 4 bytes from [[sym(xsetmonApp)]+304] +0x44.
  The `lw` at 0x1003314c loads 4 bytes from [[[sym(xsetmonApp)]+304]+68] +0x2c.
  The `jal` at 0x10033148 calls DisplayFormat__21SetmonMasterFormClassGPC21XSGIvcVideoFormatInfo [0x1003d7c0] with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=?, a2=?, a3=?, a7=a0 at entry (arg0).
  The `blez` branch at 0x100330e8 targets 0x10033160, is taken when t0(=[a0+56]) <= 0 (signed), and falls through when t0(=[a0+56]) > 0 (signed).
  The `beq` branch at 0x10033108 targets 0x10033118, is taken when t0(?) == a5(=[a2+16]-1), and falls through when t0(?) != a5(=[a2+16]-1).
  The `bne` branch at 0x10033110 targets 0x10033100, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x10033160 targets 0x1003311c and is always taken.
  The return at 0x10033158 has v0 = ret(DisplayFormat__21SetmonMasterFormClassGPC21XSGIvcVideoFormatInfo).

- `populateAssignmentWindow__22GammaAssignmentClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10033170 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033170-0x10033820 (1712 bytes).
  It occupies 1712 bytes.
  10 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10033194, `lw` at 0x100331f0, `lw` at 0x1003320c.
  3 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x13c, including `lw` at 0x100331a0, `lw` at 0x100332f4, `lw` at 0x100333d8.
  3 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x100331ac, `lw` at 0x10033300, `lw` at 0x100333e4.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x100331d4, `lw` at 0x10033284, `lw` at 0x10033294.
  The `lw` at 0x100331e4 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  4 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x98, including `lw` at 0x100331f4, `lw` at 0x10033210, `lw` at 0x10033228.
  The `sw` at 0x10033208 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x10033220 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10033258, `sw` at 0x10033290, `sw` at 0x100332ac.
  20 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100332a4, `lw` at 0x100332c8, `lw` at 0x1003330c.
  The `sw` at 0x10033378 stores 4 bytes to ret(__nw__GUi) +0x8.
  The `sw` at 0x10033384 stores 4 bytes to ret(__nw__GUi) +0x4.
  The `sw` at 0x10033390 stores 4 bytes to ret(__nw__GUi) +0x0.
  The `lbu` at 0x10033424 loads 1 byte from [sym(xsetmonApp)] +0x94.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x134, including `lw` at 0x1003357c, `lw` at 0x100335a0.
  The `lw` at 0x100335a4 loads 4 bytes from [[sym(xsetmonApp)]+308] +0x4.
  The `lw` at 0x100335a8 loads 4 bytes from [[[sym(xsetmonApp)]+308]+4] +0x20.
  The `lw` at 0x100335ac loads 4 bytes from [[[sym(xsetmonApp)]+308]+4] +0x18.
  The `lw` at 0x10033628 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0x1003363c loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `jalr` at 0x100331a8 calls XSGIvcQueryScreenGammaMaps with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=a0+64, a3=a3 at entry (arg3).
  The `jalr` at 0x100331e0 calls XtUnmanageChild with a0=[a0+44], a1=?, a2=?, a3=?.
  The `jalr` at 0x100331f8 calls __nwa__GUi with a0=([[sym(xsetmonApp)]+152] << 0x3), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033214 calls __nwa__GUi with a0=([[sym(xsetmonApp)]+152] << 0x2), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033254 calls baseWidget__10VkMenuItemCGv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003326c calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x7, a2=ret(XmStringCreateSimple), a3=0x0.
  The `jalr` at 0x10033278 calls XmStringFree with a0=ret(XmStringCreateSimple), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033288 calls __nwa__GUi with a0=([a0+64] << 0x2), a1=?, a2=?, a3=?.
  The `jalr` at 0x100332fc calls XSGIvcQueryChannelInfo with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=?, a3=sp-128.
  The `jalr` at 0x10033330 calls __nw__GUi with a0=0xc, a1=?, a2=?, a3=?.
  The `jalr` at 0x10033348 calls sprintf with a0=sp-344, a1=[0x10051b80], a2=?, a3=?.
  The `jalr` at 0x1003335c calls VkGetResource__GPCcT1 with a0=0x10045148, a1=0x10045148, a2=?, a3=?.
  The `jalr` at 0x10033370 calls sprintf with a0=sp-240, a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x10033398 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=?, a1=sp-240, a2=sym(assignChannelMapCallback__22GammaAssignmentClassUISGP10_WidgetRecPvT2), a3=ret(__nw__GUi), a4=-0x1.
  The `jalr` at 0x100333e0 calls XSGIvcQueryChannelGammaMap with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=?, a3=sp-124.
  The `jalr` at 0x10033438 calls __ct__9strstreamGv with a0=sp-496, a1=0x0, a2=?, a3=[[sym(xsetmonApp)]+148]:1.
  The `jalr` at 0x1003344c calls __ls__7ostreamGPCc with a0=sp-416, a1=0x10045188, a2=?, a3=?.
  The `jalr` at 0x1003345c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033470 calls __ls__7ostreamGPCc with a0=sp-416, a1=0x10045198, a2=?, a3=?.
  The `jalr` at 0x10033480 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033494 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x100451c8, a2=?, a3=?.
  The `jalr` at 0x100334a4 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100334b0 calls endl__GR7ostream with a0=ret(__ls__7ostreamGi), a1=?, a2=?, a3=?.
  The `jalr` at 0x100334c4 calls __ls__7ostreamGPCc with a0=sp-416, a1=0x100451e0, a2=?, a3=?.
  The `jalr` at 0x100334d8 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100334ec calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10045208, a2=?, a3=?.
  The `jalr` at 0x100334f8 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033538 calls __ls__7ostreamGPCc with a0=sp-416, a1=0x10045220, a2=?, a3=?.
  The `jalr` at 0x10033548 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033554 calls endl__GR7ostream with a0=ret(__ls__7ostreamGi), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033598 calls __assert with a0=0x10045230, a1=0x10045250, a2=0x90, a3=?.
  The `jalr` at 0x100335b4 calls (unknown callee) with a0=([[[[sym(xsetmonApp)]+308]+4]+24] + [[sym(xsetmonApp)]+308]), a1=sp-496, a2=[[sym(xsetmonApp)]+308], a3=?.
  The `jalr` at 0x100335c4 calls __dt__9strstreamGv with a0=sp-496, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x100335d0 calls baseWidget__10VkMenuItemCGv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100335e0 calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100335ec calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003364c calls sprintf with a0=sp-344, a1=[0x10051b84], a2=?, a3=?.
  The `jalr` at 0x10033660 calls VkGetResource__GPCcT1 with a0=0x10045108, a1=0x10045108, a2=?, a3=?.
  The `jalr` at 0x10033674 calls sprintf with a0=sp-240, a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x10033680 calls XmStringCreateSimple with a0=sp-240, a1=?, a2=?, a3=?.
  The `jalr` at 0x10033694 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x100336c4 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=a1 at entry (arg1), a2=sp-344, a3=0x0, a4=0x0.
  The `jalr` at 0x100336dc calls set__12VkOptionMenuGP10VkMenuItem with a0=?, a1=?, a2=?, a3=sym(xsetmonApp).
  The `jalr` at 0x1003370c calls baseWidget__10VkMenuItemCGv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003371c calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1003376c calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10045118, a2=?, a3=?.
  The `jalr` at 0x1003377c calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003378c calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051658, a2=?, a3=?.
  The `jalr` at 0x10033798 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100337a4 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100337b4 calls (unknown callee) with a0=sym(cerr), a1=0x10045158, a2=?, a3=?.
  The `jalr` at 0x100337c4 calls __ls__7ostreamGi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100337d4 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051658, a2=?, a3=?.
  The `jalr` at 0x100337e0 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100337ec calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10033800 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x100450e0, a2=?, a3=?.
  The `jalr` at 0x1003380c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033818 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100331cc targets 0x100337f4, is taken when v0(=ret(XSGIvcQueryScreenGammaMaps)) == 0, and falls through when v0(=ret(XSGIvcQueryScreenGammaMaps)) != 0.
  The `beq` branch at 0x100331d8 targets 0x1003372c, is taken when v1(=[a0+64]) == 0, and falls through when v1(=[a0+64]) != 0.
  The `blez` branch at 0x1003322c targets 0x1003372c, is taken when a1(=[[sym(xsetmonApp)]+152]) <= 0 (signed), and falls through when a1(=[[sym(xsetmonApp)]+152]) > 0 (signed).
  The `beq` branch at 0x10033244 targets 0x10033624 and is always taken.
  The `blez` branch at 0x1003329c targets 0x100332e8, is taken when a1(=[a0+64]) <= 0 (signed), and falls through when a1(=[a0+64]) > 0 (signed).
  The `beq` branch at 0x100332c0 targets 0x100332e8, is taken when v0(?) >= a2(=[a0+64]) (signed), and falls through when v0(?) < a2(=[a0+64]) (signed).
  The `bne` branch at 0x100332e0 targets 0x100332a4, is taken when v0(?) < a5(=[a0+64]) (signed), and falls through when v0(?) >= a5(=[a0+64]) (signed).
  The `beq` branch at 0x10033304 targets 0x10033760, is taken when v0(=ret(XSGIvcQueryChannelInfo)) == 0, and falls through when v0(=ret(XSGIvcQueryChannelInfo)) != 0.
  The `blez` branch at 0x10033310 targets 0x100333d0, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `bne` branch at 0x100333c0 targets 0x10033320, is taken when s4(?) < a1(?) (signed), and falls through when s4(?) >= a1(?) (signed).
  The `beq` branch at 0x100333e8 targets 0x100337ac, is taken when v0(=ret(XSGIvcQueryChannelGammaMap)) == 0, and falls through when v0(=ret(XSGIvcQueryChannelGammaMap)) != 0.
  The `beq` branch at 0x100333fc targets 0x10033420, is taken when v0(?) >= a1(=[a0+64]) (signed), and falls through when v0(?) < a1(=[a0+64]) (signed).
  The `bne` branch at 0x10033414 targets 0x100336dc, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x10033428 targets 0x100335d0, is taken when a3(=[[sym(xsetmonApp)]+148]:1) == 0, and falls through when a3(=[[sym(xsetmonApp)]+148]:1) != 0.
  The `blez` branch at 0x1003350c targets 0x10033574, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0x1003356c targets 0x10033520, is taken when s2(?) < t8(?) (signed), and falls through when s2(?) >= t8(?) (signed).
  The `bne` branch at 0x10033580 targets 0x100335a0, is taken when t9(=[[sym(xsetmonApp)]+308]) != 0, and falls through when t9(=[[sym(xsetmonApp)]+308]) == 0.
  The `beq` branch at 0x1003361c targets 0x1003372c, is taken when s6(?) >= a1(=[[sym(xsetmonApp)]+152]) (signed), and falls through when s6(?) < a1(=[[sym(xsetmonApp)]+152]) (signed).
  The `beq` branch at 0x100336a0 targets 0x1003324c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100336d4 targets 0x10033250 and is always taken.
  The `beq` branch at 0x100336f0 targets 0x100335ec, is taken when a2(?) >= 0x2 (signed), and falls through when a2(?) < 0x2 (signed).
  The `beq` branch at 0x10033724 targets 0x100335ec and is always taken.
  The return at 0x10033758 has v0 = one of ret(XSGIvcQueryScreenGammaMaps), ret(__nwa__GUi), ?.

- `fSplineCalc__19GammaMapEditorClassCGiT1PfN23T1` in `usr/bin/X11/xsetmon` at 0x10033820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033820-0x100339dc (444 bytes).
  It occupies 444 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x10033878, `lwc1` at 0x100338a4, `lwc1` at 0x100338a8.
  The `jalr` at 0x10033994 calls __assert with a0=0x10045ad8, a1=0x10045ac0, a2=0x224, a3=a3 at entry (arg3).
  The `bne` branch at 0x10033844 targets 0x1003395c, is taken when a7(?) < 0x2 (signed), and falls through when a7(?) >= 0x2 (signed).
  The `beq` branch at 0x10033850 targets 0x100339c4 and is always taken.
  The `bne` branch at 0x10033870 targets 0x10033894, is taken when v0(?) < 0x2 (signed), and falls through when v0(?) >= 0x2 (signed).
  The `bc1t` branch at 0x10033884 targets 0x10033858, is taken when f20 < f21 (c.lt.s at 0x1003387c), and falls through when not (f20 < f21 (c.lt.s at 0x1003387c)).
  The `beq` branch at 0x1003388c targets 0x1003385c and is always taken.
  The `bc1t` branch at 0x100338c0 targets 0x1003396c, is taken when f23 == f25 (c.eq.d at 0x100338b8), and falls through when not (f23 == f25 (c.eq.d at 0x100338b8)).
  The `beq` branch at 0x10033964 targets 0x10033894 and is always taken.
  The `beq` branch at 0x100339bc targets 0x100338c8 and is always taken.
  The `beq` branch at 0x100339d4 targets 0x1003387c and is always taken.
  The return at 0x10033954 has v0 = one of ?, ret(__assert).

- `doButtonSetCallback__18ChannelFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10033a50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033a50-0x10033a94 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10033a54 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10033a60 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x10033a6c loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x10033a7c calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24eac.
  The return at 0x10033a8c has v0 = ret(?).

- `DeleteCombination__21SetmonMasterFormClassGv` in `usr/bin/X11/xsetmon` at 0x10033aa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033aa0-0x10033ad4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10033ac0 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `jal` at 0x10033abc calls DeleteCombination__28CombinationContentsListClassGv [0x10038440] with a0=[a0+36], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10033acc has v0 = ret(DeleteCombination__28CombinationContentsListClassGv).

- `doArmRegionDrag__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10033ae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033ae0-0x10033c68 (392 bytes).
  It occupies 392 bytes.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x70, including `sw` at 0x10033ae0, `sw` at 0x10033b44.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0x10033ae4, `sw` at 0x10033bd8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x10033af4, `lw` at 0x10033b34.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x10033b20, `lw` at 0x10033b48.
  The `lw` at 0x10033b30 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0x10033b50 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x10033b5c, `lwc1` at 0x10033b60.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x20, including `lw` at 0x10033b88, `lw` at 0x10033bdc.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x24, including `lw` at 0x10033bb0, `lw` at 0x10033bec.
  The `lw` at 0x10033bc8 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x10033bcc loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `sw` at 0x10033bd0 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sh` at 0x10033be0 stores 2 bytes to a0 (arg0 at entry) +0x74.
  The `sh` at 0x10033be4 stores 2 bytes to a0 (arg0 at entry) +0x78.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x10033be8, `lw` at 0x10033c08, `lw` at 0x10033c24.
  The `sh` at 0x10033bf0 stores 2 bytes to a0 (arg0 at entry) +0x76.
  The `sh` at 0x10033bfc stores 2 bytes to a0 (arg0 at entry) +0x7a.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x10033c00, `lhu` at 0x10033c1c.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x10033c04, `sh` at 0x10033c20.
  The `lw` at 0x10033c44 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `jal` at 0x10033b7c calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020] with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-48.
  The `jal` at 0x10033c48 calls vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC [0x10030f10] with a0=a0 at entry (arg0), a1=sp-48, a2=[a0+76], a3=?.
  The `blez` branch at 0x10033b14 targets 0x10033c50, is taken when at(=[a0+172]) <= 0 (signed), and falls through when at(=[a0+172]) > 0 (signed).
  The `beq` branch at 0x10033b1c targets 0x10033b4c and is always taken.
  The `beq` branch at 0x10033b40 targets 0x10033c50, is taken when a5(=[a0+112]+1) >= v1(=[a0+172]) (signed), and falls through when a5(=[a0+112]+1) < v1(=[a0+172]) (signed).
  The `bne` branch at 0x10033b9c targets 0x10033b30, is taken when a3(=[a2+32]) < t1(?) (signed), and falls through when a3(=[a2+32]) >= t1(?) (signed).
  The `bne` branch at 0x10033ba8 targets 0x10033b30, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x10033bb8 targets 0x10033b30, is taken when a0(=[a2+36]) < t3(?) (signed), and falls through when a0(=[a2+36]) >= t3(?) (signed).
  The `bne` branch at 0x10033bc0 targets 0x10033b30, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `blez` branch at 0x10033bf8 targets 0x10033c3c, is taken when ra(=[a0+84]) <= 0 (signed), and falls through when ra(=[a0+84]) > 0 (signed).
  The `beq` branch at 0x10033c14 targets 0x10033c3c, is taken when a2(?) >= v1(=[a0+84]) (signed), and falls through when a2(?) < v1(=[a0+84]) (signed).
  The `bne` branch at 0x10033c34 targets 0x10033c00, is taken when a2(?) < a4(=[a0+84]) (signed), and falls through when a2(?) >= a4(=[a0+84]) (signed).
  The return at 0x10033c60 has v0 = one of 0x24e1c, ret(vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint), ret(vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC).
  The instructions from 0x10033b24 to 0x10033b2c are not reached by any path from the entry, and their branches are not listed.

- `className__23SetmonMasterFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x10033c70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033c70-0x10033c88 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10033c7c loads 4 bytes from abs 0x1005091c.
  The return at 0x10033c80 has v0 = 0x100467f0.

- `OneTimeInitialization__19ServerInfoFormClassGv` in `usr/bin/X11/xsetmon` at 0x10033c90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033c90-0x10033e50 (448 bytes).
  It occupies 448 bytes.
  8 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10033cb4, `lw` at 0x10033cd0, `lw` at 0x10033cf0.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10033cbc, `lw` at 0x10033dac.
  The `lw` at 0x10033ccc loads 4 bytes from [[sym(xsetmonApp)]+312] +0x80.
  The `sw` at 0x10033cdc stores 4 bytes to [sym(xsetmonApp)] +0x11c.
  The `lw` at 0x10033ce8 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x10033cfc loads 4 bytes from [sym(xsetmonApp)] +0x98.
  The `lw` at 0x10033d08 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10033d28 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x10033d44 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x10033d58 loads 4 bytes from [sym(xsetmonApp)] +0x90.
  The `lw` at 0x10033d64 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0x10033d78 loads 4 bytes from [sym(xsetmonApp)] +0x8c.
  The `lw` at 0x10033d80 loads 4 bytes from [sym(xsetmonApp)] +0xa0.
  The `lw` at 0x10033d90 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x10033dc0 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x10033dd0 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0x10033de0 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x10033e44 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `jalr` at 0x10033cc8 calls XDisplayName with a0=[[[sym(xsetmonApp)]+312]+128], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10033ce4 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jal` at 0x10033cf8 calls __as__9EZWrapperGi [0x1001fb40] with a0=ret(EZ__GP10_WidgetRec), a1=[[sym(xsetmonApp)]+152], a2=?, a3=?.
  The `jal` at 0x10033d04 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+72], a1=?, a2=?, a3=?.
  The `jal` at 0x10033d18 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[sym(xsetmonApp)]+164, a2=?, a3=?.
  The `jal` at 0x10033d24 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+88], a1=?, a2=?, a3=?.
  The `jal` at 0x10033d34 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(XDisplayName), a2=?, a3=?.
  The `jal` at 0x10033d40 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+80], a1=?, a2=?, a3=?.
  The `jal` at 0x10033d54 calls __as__9EZWrapperGi [0x1001fb40] with a0=ret(EZ__GP10_WidgetRec), a1=[[sym(xsetmonApp)]+144], a2=?, a3=?.
  The `jal` at 0x10033d60 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+76], a1=?, a2=?, a3=?.
  The `jal` at 0x10033d74 calls __as__9EZWrapperGi [0x1001fb40] with a0=ret(EZ__GP10_WidgetRec), a1=[[sym(xsetmonApp)]+140], a2=?, a3=?.
  The `jal` at 0x10033d8c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+68], a1=?, a2=[[sym(xsetmonApp)]+160], a3=?.
  The `jal` at 0x10033d9c calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=0x10051710, a2=?, a3=?.
  The `jalr` at 0x10033dbc calls XSGIvcQueryScreenInputSyncSource with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[sym(xsetmonApp)]+280, a3=[sym(xsetmonApp)]+284, a4=a0+120.
  The `jal` at 0x10033dcc calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+92], a1=?, a2=?, a3=?.
  The `jal` at 0x10033ddc calls __as__9EZWrapperGi [0x1001fb40] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+120], a2=?, a3=?.
  The `jal` at 0x10033de8 calls setSyncOptionMenus__19ServerInfoFormClassGv [0x10038a90] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033e18 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10045f50, a2=?, a3=?.
  The `jalr` at 0x10033e24 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033e30 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10033e40 calls XtSetSensitive with a0=[a0+36], a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x10033d84 targets 0x10033e38, is taken when a2(=[[sym(xsetmonApp)]+160]) == 0, and falls through when a2(=[[sym(xsetmonApp)]+160]) != 0.
  The `beq` branch at 0x10033dc4 targets 0x10033e0c, is taken when v0(=ret(XSGIvcQueryScreenInputSyncSource)) == 0, and falls through when v0(=ret(XSGIvcQueryScreenInputSyncSource)) != 0.
  The `beq` branch at 0x10033e48 targets 0x10033df4 and is always taken.
  The return at 0x10033e04 has v0 = one of ret(setSyncOptionMenus__19ServerInfoFormClassGv), ret(XtSetSensitive).

- `className__29FormatCombinationListsClassUIGv` in `usr/bin/X11/xsetmon` at 0x10033e50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033e50-0x10033e68 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10033e5c loads 4 bytes from abs 0x1005091c.
  The return at 0x10033e60 has v0 = 0x10044d18.

- `__dt__21StatisticsFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x10033e70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033e70-0x10033edc (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10033ea0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10033ea8 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10033ec4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10033e90 targets 0x10033ecc, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10033eb8 targets 0x10033ed0, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10033ed4 has v0 = one of ret(__dt__11VkComponentGv), ?.

- `cancel__21AboutXsetmonFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10033ee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033ee0-0x10033ee8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10033ee0 has v0 = ?.

- `__dt__12StereoDialogGv` in `usr/bin/X11/xsetmon` at 0x10033ef0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033ef0-0x10033f5c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10033f20 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10033f28 calls __dt__15VkGenericDialogGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10033f44 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10033f10 targets 0x10033f4c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10033f38 targets 0x10033f50, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10033f54 has v0 = one of ret(__dt__15VkGenericDialogGv), ?.

- `postHaltMessage__17TextErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10033f60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033f60-0x10033fc0 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0x10033f84 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10033f98 calls appendText__17TextErrorMessagerGPc [0x1002cbb0] with a0=a0 at entry (arg0), a1=ret(str__9strstreamGv), a2=?, a3=?.
  The `jalr` at 0x10033fa8 calls __dl__GPv with a0=?, a1=?, a2=?, a3=?.
  The return at 0x10033fb8 has v0 = ret(__dl__GPv).

- `__as__7MMatrixGRC7MMatrix` in `usr/bin/X11/xsetmon` at 0x10033fc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033fc0-0x10034034 (116 bytes).
  It occupies 116 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10033ff4, `lw` at 0x10034000.
  The `lw` at 0x10033ff8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x10034004 loads 4 bytes from [a1] +0xc.
  The `lw` at 0x10034008 loads 4 bytes from [a0] +0x8.
  The `lw` at 0x1003400c loads 4 bytes from [a0] +0xc.
  The `jal` at 0x10033ff0 calls __dt__9MMdtArrayGv [0x100340b0] with a0=[a0], a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10034010 calls memcpy with a0=[[a0]+12], a1=[[a1]+12], a2=([[a0]+8] << 0x2), a3=?.
  The return at 0x1003402c has v0 = a0.

- `sFindDistanceIndex__19GammaMapEditorClassGfsT2` in `usr/bin/X11/xsetmon` at 0x10034040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10034040-0x100340a4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x10034074 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `bltz` branch at 0x1003406c targets 0x1003409c, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bne` branch at 0x1003407c targets 0x10034094, is taken when v0(?) < a3(=[a0+84]) (signed), and falls through when v0(?) >= a3(=[a0+84]) (signed).
  The return at 0x1003408c has v0 = ?.
  The return at 0x10034094 has v0 = ?.
  The return at 0x1003409c has v0 = 0x0.

- `__dt__9MMdtArrayGv` in `usr/bin/X11/xsetmon` at 0x100340b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100340b0-0x10034110 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x100340e0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `jalr` at 0x100340dc calls __dla__GPv with a0=[a0+12], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100340f8 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100340cc targets 0x10034100, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100340ec targets 0x10034104, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10034108 has v0 = one of ret(__dla__GPv), ?.

- `getDpyInfo__7xsetmonGPc` in `usr/bin/X11/xsetmon` at 0x10034110 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10034110-0x1003456c (1116 bytes).
  It occupies 1116 bytes.
  The `lbu` at 0x10034134 loads 1 byte from a1 (arg1 at entry) +0x0.
  The `sw` at 0x10034154 stores 4 bytes to a0 (arg0 at entry) +0x80.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80, including `lw` at 0x10034168, `lw` at 0x1003419c, `lw` at 0x1003423c.
  The `sw` at 0x10034170 stores 4 bytes to a0 (arg0 at entry) +0x138.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x84, including `lbu` at 0x10034174, `lbu` at 0x10034214, `lbu` at 0x100342d8.
  3 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x100341b4, `lw` at 0x10034254, `lw` at 0x100342ec.
  3 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110, including `lw` at 0x100341c4, `lw` at 0x10034264, `lw` at 0x10034300.
  3 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108, including `lw` at 0x100341d0, `lw` at 0x10034270, `lw` at 0x1003430c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x138, including `lw` at 0x100342b0, `lw` at 0x10034390, `lw` at 0x1003440c.
  4 such `lw` accesses load 4 bytes from [a0+312] +0x84, including `lw` at 0x100342b8, `lw` at 0x100342cc, `lw` at 0x1003439c.
  The `sw` at 0x100342c0 stores 4 bytes to a0 (arg0 at entry) +0x13c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x100343a0, `lw` at 0x100343d8.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0xc8, including `sb` at 0x100343c0, `sb` at 0x100344c0.
  The `sb` at 0x100343e8 stores 1 byte to a0 (arg0 at entry) +0xcd.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0xc9, including `sb` at 0x100343f8, `sb` at 0x10034568.
  The `sb` at 0x10034418 stores 1 byte to a0 (arg0 at entry) +0xcb.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x90, including `lw` at 0x10034430, `lw` at 0x10034494.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0xca, including `sb` at 0x10034490, `sb` at 0x10034560.
  The `jalr` at 0x10034144 calls strdup with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10034158 calls putenv with a0=0x10043cd8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10034164 calls XOpenDisplay with a0=[a0+128], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003418c calls VkGetResource__GPCcT1 with a0=0x10043da8, a1=0x10043da8, a2=?, a3=?.
  The `jalr` at 0x100341a0 calls sprintf with a0=sp-1104, a1=ret(VkGetResource__GPCcT1), a2=[a0+128], a3=?.
  The `jalr` at 0x100341ac calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100341dc calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-1104, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10034204 calls XSGIvcQueryVersion with a0=ret(XOpenDisplay), a1=a0+140, a2=a0+144, a3=?.
  The `jalr` at 0x1003422c calls VkGetResource__GPCcT1 with a0=0x10043cf0, a1=0x10043cf0, a2=?, a3=?.
  The `jalr` at 0x10034240 calls sprintf with a0=sp-1104, a1=ret(VkGetResource__GPCcT1), a2=[a0+128], a3=?.
  The `jalr` at 0x1003424c calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003427c calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-1104, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x100342a0 calls getenv with a0=0x10051400, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100342c8 calls XSGIvcQueryVideoScreenInfo with a0=[a0+312], a1=[[a0+312]+132], a2=a0+152, a3=[[a0+312]+132].
  The `jalr` at 0x100342e4 calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?, a4=[a0+132]:1.
  The `jalr` at 0x10034318 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x10043cf0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10034340 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10043dc0, a2=?, a3=?.
  The `jalr` at 0x10034350 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=[a0+128], a2=?, a3=?.
  The `jalr` at 0x10034364 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=0x10043de0, a2=?, a3=?.
  The `jalr` at 0x10034370 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10034398 calls XSGIvcQueryScreenGammaMaps with a0=[a0+312], a1=[[a0+312]+132], a2=a0+276, a3=?.
  The `jalr` at 0x100343d0 calls strncmp with a0=?, a1=0x1005140c, a2=0x3, a3=?.
  The `jalr` at 0x10034408 calls XSGIStereoQueryExtension with a0=[a0+312], a1=sp-48, a2=sp-44, a3=?.
  The `jalr` at 0x10034444 calls strncmp with a0=?, a1=0x10051410, a2=0x7, a3=?.
  The `jalr` at 0x10034468 calls XSGIvcQueryPlatformParameter with a0=[a0+312], a1=[[a0+312]+132], a2=0x0, a3=0x0, a4=sp-80, a5=0x20.
  The `jalr` at 0x100344ac calls strncmp with a0=a0+164, a1=0x10051408, a2=0x3, a3=?.
  The `jalr` at 0x100344cc calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10043d10, a2=?, a3=?.
  The `jalr` at 0x100344dc calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=[a0+128], a2=?, a3=?.
  The `jalr` at 0x100344f0 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=0x10043d28, a2=?, a3=?.
  The `jalr` at 0x10034504 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=0x10043d48, a2=?, a3=?.
  The `jalr` at 0x10034510 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10034540 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10043d80, a2=?, a3=?, a4=[a0+132]:1.
  The `jalr` at 0x1003454c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1003412c targets 0x1003429c, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x10034138 targets 0x100342a0, is taken when v0(=[a1]:1) == 0, and falls through when v0(=[a1]:1) != 0.
  The `bne` branch at 0x1003416c targets 0x100341f8, is taken when v0(=ret(XOpenDisplay)) != 0, and falls through when v0(=ret(XOpenDisplay)) == 0.
  The `beq` branch at 0x10034178 targets 0x10034338, is taken when a1(=[a0+132]:1) == 0, and falls through when a1(=[a0+132]:1) != 0.
  The `bne` branch at 0x1003420c targets 0x100342b0, is taken when v0(=ret(XSGIvcQueryVersion)) != 0, and falls through when v0(=ret(XSGIvcQueryVersion)) == 0.
  The `beq` branch at 0x10034218 targets 0x100344c4, is taken when a1(=[a0+132]:1) == 0, and falls through when a1(=[a0+132]:1) != 0.
  The `beq` branch at 0x100342a8 targets 0x10034140 and is always taken.
  The `bne` branch at 0x100342d0 targets 0x10034390, is taken when v0(=ret(XSGIvcQueryVideoScreenInfo)) != 0, and falls through when v0(=ret(XSGIvcQueryVideoScreenInfo)) == 0.
  The `beq` branch at 0x100342dc targets 0x10034530, is taken when a4(=[a0+132]:1) == 0, and falls through when a4(=[a0+132]:1) != 0.
  The `beq` branch at 0x100343a8 targets 0x100344a0, is taken when a1(=[a0+140]) >= 0x2 (signed), and falls through when a1(=[a0+140]) < 0x2 (signed).
  The `beq` branch at 0x100343b4 targets 0x10034494, is taken when a1(=[a0+140]) == a3(=0x1), and falls through when a1(=[a0+140]) != a3(=0x1).
  The `beq` branch at 0x100343e4 targets 0x10034438, is taken when a1(=[a0+140]) >= 0x2 (signed), and falls through when a1(=[a0+140]) < 0x2 (signed).
  The `beq` branch at 0x100343f0 targets 0x10034430, is taken when a1(=[a0+140]) == a7(=0x1), and falls through when a1(=[a0+140]) != a7(=0x1).
  The `blez` branch at 0x10034434 targets 0x100343f8, is taken when t1(=[a0+144]) <= 0 (signed), and falls through when t1(=[a0+144]) > 0 (signed).
  The `bne` branch at 0x1003444c targets 0x100343f8, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `bc1f` branch at 0x10034484 targets 0x10034560, is taken when not (f0 < f1(=0x4060000000000000) (c.lt.d at 0x1003447c)), and falls through when f0 < f1(=0x4060000000000000) (c.lt.d at 0x1003447c).
  The `beq` branch at 0x1003448c targets 0x10034564 and is always taken.
  The `blez` branch at 0x10034498 targets 0x100343b8, is taken when t2(=[a0+144]) <= 0 (signed), and falls through when t2(=[a0+144]) > 0 (signed).
  The `bne` branch at 0x100344b4 targets 0x100343c0, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x100344bc targets 0x100343c4 and is always taken.
  The `beq` branch at 0x10034558 targets 0x100341ec and is always taken.
  The `beq` branch at 0x10034564 targets 0x100343fc and is always taken.
  The return at 0x100341f0 has v0 = 0x0.
  The return at 0x10034294 has v0 = 0x0.
  The return at 0x10034330 has v0 = 0x0.
  The return at 0x10034388 has v0 = 0x0.
  The return at 0x10034428 has v0 = 0x1.
  The return at 0x10034528 has v0 = 0x0.

- `__dt__21GammaMapEditorClassUIGv` in `usr/bin/X11/xsetmon` at 0x10034570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10034570-0x100345dc (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x100345a0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x100345a8 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x100345c4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10034590 targets 0x100345cc, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100345b8 targets 0x100345d0, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x100345d4 has v0 = one of ret(__dt__11VkComponentGv), ?.

- `vFindRegionAffected__19GammaMapEditorClassGP6XPointT1f` in `usr/bin/X11/xsetmon` at 0x100345e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100345e0-0x10034750 (368 bytes).
  It occupies 368 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x10034604, `lw` at 0x100346bc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lw` at 0x10034640, `lw` at 0x10034698.
  The `lh` at 0x10034644 loads 2 bytes from a1 (arg1 at entry) +0x2.
  The `lh` at 0x1003464c loads 2 bytes from a1 (arg1 at entry) +0x0.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x10034658, `lh` at 0x10034660, `lh` at 0x100346a0.
  The `sh` at 0x100346a4 stores 2 bytes to a2 (arg2 at entry) +0x0.
  The `sh` at 0x100346b4 stores 2 bytes to a2 (arg2 at entry) +0x2.
  The `sh` at 0x1003471c stores 2 bytes to a0 (arg0 at entry) +0x7c.
  The `sh` at 0x10034724 stores 2 bytes to a0 (arg0 at entry) +0x80.
  The `sh` at 0x1003472c stores 2 bytes to a0 (arg0 at entry) +0x7e.
  The `jal` at 0x10034680 calls fDistanceFunction__19GammaMapEditorClassGfN31 [0x10043150] with a0=a0 at entry (arg0), a1=[a1]:2, a2=[a1+2]:2, a3=?.
  The `jal` at 0x100346f4 calls sFindDistanceIndex__19GammaMapEditorClassGfsT2 [0x10034040] with a0=a0 at entry (arg0), a1=?, a2=?, a3=-0x1.
  The `jal` at 0x10034718 calls sFindDistanceIndex__19GammaMapEditorClassGfsT2 [0x10034040] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `blez` branch at 0x10034628 targets 0x10034740, is taken when at(=[a0+84]) <= 0 (signed), and falls through when at(=[a0+84]) > 0 (signed).
  The `bc1f` branch at 0x10034690 targets 0x100346b8, is taken when not (f0(=ret(fDistanceFunction__19GammaMapEditorClassGfN31)) < f20 (c.lt.s at 0x10034688)), and falls through when f0(=ret(fDistanceFunction__19GammaMapEditorClassGfN31)) < f20 (c.lt.s at 0x10034688).
  The `bne` branch at 0x100346cc targets 0x10034640, is taken when s0(?) < a1(=[a0+84]) (signed), and falls through when s0(?) >= a1(=[a0+84]) (signed).
  The `beq` branch at 0x10034748 targets 0x100346d4 and is always taken.
  The return at 0x10034738 has v0 = ret(sFindDistanceIndex__19GammaMapEditorClassGfsT2).

- `vDrawSpline__19GammaMapEditorClassCGv` in `usr/bin/X11/xsetmon` at 0x10034750 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10034750-0x10034978 (552 bytes).
  It occupies 552 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x10034764, `lw` at 0x100348c0, `lw` at 0x1003491c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x10034788, `lw` at 0x10034874, `lw` at 0x10034974.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x1003478c, `lw` at 0x10034878, `lw` at 0x100348d0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0, including `lw` at 0x10034794, `lw` at 0x10034880, `lw` at 0x100348d4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xbc, including `lw` at 0x1003479c, `lw` at 0x10034888.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb8, including `lw` at 0x100347a8, `lw` at 0x10034894.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x100347c8, `lw` at 0x1003485c.
  The `lw` at 0x10034824 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10034828 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x10034830 loads 4 bytes from [sym(xsetmonApp)] +0x6c.
  2 such `lh` accesses load 2 bytes from (sp + one of -0x5e, -0x5a) +0x0, including `lh` at 0x10034834, `lh` at 0x10034840.
  2 such `lh` accesses load 2 bytes from (sp + one of -0x60, -0x5c) +0x0, including `lh` at 0x10034838, `lh` at 0x1003484c.
  The `lw` at 0x10034858 loads 4 bytes from a0 (arg0 at entry) +0x44.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x100348e0, `lwc1` at 0x100348e4.
  The `lw` at 0x10034910 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `jal` at 0x100347a4 calls fSplineCalc__19GammaMapEditorClassCGiT1PfN23T1 [0x10033820] with a0=a0 at entry (arg0), a1=[a0+184], a2=[a0+188], a3=[a0+176], a4=[a0+180], a5=[a0+168], a6=0x0.
  The `jal` at 0x100347c0 calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=sp-96.
  The `jal` at 0x10034818 calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020] with a0=a0 at entry (arg0), a1=?, a2=?, a3=(sp + one of -0x60, -0x5c).
  The `jalr` at 0x1003482c calls XtWindow with a0=[a0+36], a1=?, a2=?, a3=?.
  The `jalr` at 0x10034854 calls XDrawLine with a0=[[sym(xsetmonApp)]+108], a1=ret(XtWindow), a2=[a0+68], a3=?.
  The `jal` at 0x10034890 calls fSplineCalc__19GammaMapEditorClassCGiT1PfN23T1 [0x10033820] with a0=a0 at entry (arg0), a1=[a0+184], a2=[a0+188], a3=[a0+176], a4=[a0+180], a5=[a0+168].
  The `jal` at 0x10034900 calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020] with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-88.
  The `jal` at 0x10034914 calls vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC [0x10030f10] with a0=a0 at entry (arg0), a1=sp-88, a2=[a0+72], a3=?.
  The `jalr` at 0x10034968 calls __assert with a0=0x10045aa8, a1=0x10045ac0, a2=0x256, a3=a3 at entry (arg3).
  The `beq` branch at 0x10034780 targets 0x10034954, is taken when at(=[a0+172]) == 0, and falls through when at(=[a0+172]) != 0.
  The `blez` branch at 0x100347d0 targets 0x100348c0, is taken when v1(=[a0+84]) <= 0 (signed), and falls through when v1(=[a0+84]) > 0 (signed).
  The `beq` branch at 0x100347ec targets 0x10034874 and is always taken.
  The `beq` branch at 0x10034800 targets 0x10034810, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1003486c targets 0x100348b4, is taken when s2(?) >= t8(=[a0+84]) (signed), and falls through when s2(?) < t8(=[a0+84]) (signed).
  The `bgez` branch at 0x100348a4 targets 0x10034800, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `beq` branch at 0x100348ac targets 0x1003480c and is always taken.
  The `blez` branch at 0x100348c8 targets 0x10034930, is taken when t9(=[a0+172]) <= 0 (signed), and falls through when t9(=[a0+172]) > 0 (signed).
  The `bne` branch at 0x10034928 targets 0x100348d0, is taken when s2(?) < v0(=[a0+172]) (signed), and falls through when s2(?) >= v0(=[a0+172]) (signed).
  The `beq` branch at 0x10034970 targets 0x1003478c and is always taken.
  The return at 0x1003494c has v0 = ?.
  The instructions from 0x100347f4 to 0x100347fc are not reached by any path from the entry, and their branches are not listed.

- `accumBufTypeSelectedCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10034980 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10034980-0x100349c4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10034984 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10034990 loads 4 bytes from [a1+8] +0x108.
  The `lw` at 0x1003499c loads 4 bytes from [a1+8] +0x110.
  The `jalr` at 0x100349ac calls (unknown callee) with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23f7c.
  The return at 0x100349bc has v0 = ret(?).

- `setOpMenuIndex__12GammaClassUIGi` in `usr/bin/X11/xsetmon` at 0x100349d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100349d0-0x10034a04 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x100349f0 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `jalr` at 0x100349ec calls set__12VkOptionMenuGi with a0=[a0+100], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100349fc has v0 = ret(set__12VkOptionMenuGi).

- `fbConfigSelected__27FormatCombinationListsClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10034a10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10034a10-0x10034a70 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x10034a24 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lw` at 0x10034a3c loads 4 bytes from table(0x1004cf5c) +0x0.
  The `sw` at 0x10034a40 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `lw` at 0x10034a44 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10034a48 loads 4 bytes from [sym(xsetmonApp)] +0x130.
  The `lw` at 0x10034a50 loads 4 bytes from [[sym(xsetmonApp)]+304] +0x44.
  The `lw` at 0x10034a5c loads 4 bytes from [[[sym(xsetmonApp)]+304]+68] +0x2c.
  The `jal` at 0x10034a58 calls DisplayfbConfig__21SetmonMasterFormClassGPCc [0x10024a60] with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=entry(0x1004cf5c), a2=sym(xsetmonApp), a3=([a2+16] << 0x2).
  The return at 0x10034a68 has v0 = ret(DisplayfbConfig__21SetmonMasterFormClassGPCc).

- `className__19GammaMapEditorClassGv` in `usr/bin/X11/xsetmon` at 0x10034a70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10034a70-0x10034a88 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10034a7c loads 4 bytes from abs 0x1005091c.
  The return at 0x10034a80 has v0 = 0x10045968.

- `create__18ChannelFormClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10034b70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10034b70-0x10036f34 (9156 bytes).
  It occupies 9156 bytes.
  The `lw` at 0x10034bbc loads 4 bytes from a0 (arg0 at entry) +0xc.
  5 such `lw` accesses load 4 bytes from sym(xmFormWidgetClass) +0x0, including `lw` at 0x10034bc8, `lw` at 0x10034be4, `lw` at 0x10034dc4.
  The `sw` at 0x10034bd0 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x10034bdc stores 4 bytes to a0 (arg0 at entry) +0x4c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x10034be0, `lw` at 0x10036e08.
  The `sw` at 0x10034ca0 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  3 such `lw` accesses load 4 bytes from sym(xmFrameWidgetClass) +0x0, including `lw` at 0x10034ca4, `lw` at 0x10034e00, `lw` at 0x100357ac.
  The `sw` at 0x10034d84 stores 4 bytes to a0 (arg0 at entry) +0x50.
  12 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x10034da4, `lw` at 0x1003523c, `lw` at 0x10035328.
  The `sw` at 0x10034dc0 stores 4 bytes to a0 (arg0 at entry) +0x78.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x10034dd4, `lw` at 0x1003686c.
  The `sw` at 0x10034dfc stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x10034ec4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x10034f04 stores 4 bytes to a0 (arg0 at entry) +0x54.
  4 such `lw` accesses load 4 bytes from sym(xmTextFieldWidgetClass) +0x0, including `lw` at 0x10034f08, `lw` at 0x10034fe0, `lw` at 0x100350a8.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x10034fd8, `lw` at 0x100350a0, `lw` at 0x10035170.
  The `sw` at 0x10034fdc stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `sw` at 0x100350a4 stores 4 bytes to a0 (arg0 at entry) +0xb8.
  The `sw` at 0x10035174 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x10035238 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `sw` at 0x10035324 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x10035410 stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0x100354ec stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x100355bc stores 4 bytes to a0 (arg0 at entry) +0x7c.
  2 such `lw` accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0, including `lw` at 0x100355c0, `lw` at 0x100356a4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x58, including `lw` at 0x100355c4, `lw` at 0x100356a8.
  The `sw` at 0x100356a0 stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `sw` at 0x10035760 stores 4 bytes to a0 (arg0 at entry) +0x44.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1003576c, `lw` at 0x1003577c.
  The `lw` at 0x10035778 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x1003579c loads 4 bytes from a0 (arg0 at entry) +0x48.
  17 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c, including `lw` at 0x100357a8, `lw` at 0x10035e38, `lw` at 0x10035f78.
  The `sw` at 0x10035874 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sw` at 0x100358a8 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `lw` at 0x100358b0 loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `sw` at 0x100358e8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0x10035914, `lw` at 0x10035954, `lw` at 0x10035b14.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x20, including `sw` at 0x1003592c, `sw` at 0x10035934.
  27 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10035938, `lw` at 0x1003593c, `lw` at 0x10035940.
  The `lw` at 0x10035950 loads 4 bytes from sym(xmScrolledWindowWidgetClass) +0x0.
  The `sw` at 0x10035a40 stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `lw` at 0x10035a64 loads 4 bytes from sym(xmRowColumnWidgetClass) +0x0.
  The `sw` at 0x10035a84 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `lw` at 0x10035ab0 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x24, including `sw` at 0x10035ac8, `sw` at 0x10035ad0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x28, including `sw` at 0x10035b2c, `sw` at 0x10035b34.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2c, including `sw` at 0x10035b90, `sw` at 0x10035b98.
  The `lw` at 0x10035bb8 loads 4 bytes from a0 (arg0 at entry) +0x20.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x10035bcc, `lw` at 0x10035ca0, `lw` at 0x10035d78.
  The `lw` at 0x10035c8c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x10035d64 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  3 such `lw` accesses load 4 bytes from sym(xmScaleWidgetClass) +0x0, including `lw` at 0x10035e3c, `lw` at 0x10035f7c, `lw` at 0x100360b0.
  The `sw` at 0x10035f54 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `lw` at 0x10035f74 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `sw` at 0x10036088 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `lw` at 0x100360a8 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `sw` at 0x100361a8 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `lw` at 0x100361c8 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x10036210, `sw` at 0x10036218.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x34, including `sw` at 0x10036274, `sw` at 0x1003627c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x38, including `sw` at 0x100362d8, `sw` at 0x100362e0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x3c, including `sw` at 0x1003633c, `sw` at 0x10036344.
  The `sw` at 0x100363c8 stores 4 bytes to a0 (arg0 at entry) +0xc0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc0, including `lw` at 0x100363e8, `lw` at 0x10036bec.
  The `sw` at 0x100363ec stores 4 bytes to a0 (arg0 at entry) +0xc8.
  The `sw` at 0x100363f8 stores 4 bytes to a0 (arg0 at entry) +0xcc.
  The `sw` at 0x100364a4 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `sw` at 0x10036554 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x10036600 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `sw` at 0x100366b0 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x1003675c stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `sw` at 0x10036804 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x90, including `lw` at 0x10036860, `lw` at 0x10036c94.
  The `sw` at 0x10036870 stores 4 bytes to a0 (arg0 at entry) +0xc4.
  The `lw` at 0x10036884 loads 4 bytes from a0 (arg0 at entry) +0x34.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x10036894, `lw` at 0x1003696c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x1003697c, `lw` at 0x10036a54.
  The `lw` at 0x10036b20 loads 4 bytes from a0 (arg0 at entry) +0x30.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0x10036c88, `lw` at 0x10036d38.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0x10036ca8, `lw` at 0x10036cd4.
  The `lw` at 0x10036cb4 loads 4 bytes from a0 (arg0 at entry) +0x94.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x98, including `lw` at 0x10036cc8, `lw` at 0x10036cf4.
  The `lw` at 0x10036ce8 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc4, including `lw` at 0x10036d08, `lw` at 0x10036d18, `lw` at 0x10036d48.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x40, including `sw` at 0x10036e20, `sw` at 0x10036e28.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x10036e50, `lw` at 0x10036e74.
  The `jalr` at 0x10034ba0 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultChannelFormClassUIResources__18ChannelFormClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x10034bc4 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x10034bd8 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10034c94 calls XtVaCreateManagedWidget with a0=0x100440c8, a1=[sym(xmFormWidgetClass)], a2=[a0+16], a3=-0xd1, a4=0x1, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x10034d7c calls XtVaCreateManagedWidget with a0=0x100440e0, a1=[sym(xmFrameWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xa7, a4=0x5, a5=-0x42, a6=0x4, a7=-0x66.
  The `jalr` at 0x10034db8 calls XtVaCreateManagedWidget with a0=0x100514d8, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x337, a6=0x2, a7=-0x16.
  The `jalr` at 0x10034df0 calls XtVaCreateManagedWidget with a0=0x100514e0, a1=[sym(xmFormWidgetClass)], a2=[a0+80], a3=-0xd1, a4=0x1, a5=-0x17, a6=0x8364, a7=-0x16.
  The `jalr` at 0x10034ebc calls XtVaCreateManagedWidget with a0=0x100514e8, a1=[sym(xmFrameWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xa7, a4=0x5, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x10034ef8 calls XtVaCreateManagedWidget with a0=0x100514f0, a1=[sym(xmFormWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xd1, a4=0x1, a5=-0x17, a6=0x8304, a7=-0x16.
  The `jalr` at 0x10034fd0 calls XtVaCreateManagedWidget with a0=0x100440f8, a1=[sym(xmTextFieldWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x42, a4=0x5, a5=-0x66, a6=0x1, a7=-0x46.
  The `jalr` at 0x10035098 calls XtVaCreateManagedWidget with a0=0x10044110, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+84], a3=-0x42, a4=0x1, a5=-0x66, a6=0x5, a7=-0x46.
  The `jalr` at 0x10035168 calls XtVaCreateManagedWidget with a0=0x10044128, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+84], a3=-0x42, a4=0x5, a5=-0x66, a6=0x1, a7=-0x46.
  The `jalr` at 0x1003522c calls XtVaCreateManagedWidget with a0=0x10044140, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+84], a3=-0x42, a4=0x1, a5=-0x66, a6=0x5, a7=-0x46.
  The `jalr` at 0x10035318 calls XtVaCreateManagedWidget with a0=0x100514f8, a1=[sym(xmLabelWidgetClass)], a2=[a0+84], a3=-0x3, a4=0x2, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x10035404 calls XtVaCreateManagedWidget with a0=0x10051500, a1=[sym(xmLabelWidgetClass)], a2=[a0+84], a3=-0x3, a4=0x2, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x100354e0 calls XtVaCreateManagedWidget with a0=0x10051508, a1=[sym(xmLabelWidgetClass)], a2=[a0+84], a3=-0x3, a4=0x2, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x100355b0 calls XtVaCreateManagedWidget with a0=0x10051510, a1=[sym(xmLabelWidgetClass)], a2=[a0+84], a3=-0x3, a4=0x2, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x10035680 calls XtVaCreateManagedWidget with a0=0x10044158, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+88], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1003569c calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x25, a2=sym(doButtonSetCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10035740 calls XtVaCreateManagedWidget with a0=0x10044168, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+88], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003575c calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x25, a2=sym(doButtonQueryBestCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10035774 calls XtVaSetValues with a0=[a0+100], a1=-0xa5, a2=[a0+68], a3=0x0.
  The `jalr` at 0x100357a0 calls XtVaSetValues with a0=[a0+72], a1=-0x76, a2=[a0+68], a3=-0xa5, a4=[a0+68], a5=-0x116, a6=[a0+68], a7=0x0.
  The `jalr` at 0x10035868 calls XtVaCreateManagedWidget with a0=0x10044178, a1=[sym(xmFrameWidgetClass)], a2=[a0+92], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x100358a0 calls XtVaCreateManagedWidget with a0=0x10051518, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x337, a6=0x2, a7=-0x16.
  The `jalr` at 0x100358dc calls XtVaCreateManagedWidget with a0=0x10044190, a1=[sym(xmFormWidgetClass)], a2=[a0+104], a3=-0xd1, a4=0x1, a5=-0x17, a6=0x847f, a7=-0x16.
  The `jalr` at 0x100358f0 calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x10035918 calls __ct__17SyncSelectorFrameGPCcP10_WidgetRec [0x100379d0] with a0=ret(__nw__GUi), a1=0x100441a8, a2=[a0+96], a3=?.
  The `jalr` at 0x10035944 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10035a38 calls XtVaCreateManagedWidget with a0=0x100441b8, a1=[sym(xmScrolledWindowWidgetClass)], a2=[a0+96], a3=-0x5a, a4=0x0, a5=-0x5b, a6=0x1, a7=-0x42.
  The `jalr` at 0x10035a78 calls XtVaCreateManagedWidget with a0=0x100441d0, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xc1, a6=0x1, a7=-0x16.
  The `jalr` at 0x10035a8c calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x10035ab4 calls __ct__17SyncSelectorFrameGPCcP10_WidgetRec [0x100379d0] with a0=ret(__nw__GUi), a1=0x100441e8, a2=[a0+156], a3=?.
  The `jalr` at 0x10035ae0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10035af0 calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x10035b18 calls __ct__17SyncSelectorFrameGPCcP10_WidgetRec [0x100379d0] with a0=ret(__nw__GUi), a1=0x10044200, a2=[a0+96], a3=?.
  The `jalr` at 0x10035b44 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10035b54 calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x10035b7c calls __ct__17SyncSelectorFrameGPCcP10_WidgetRec [0x100379d0] with a0=ret(__nw__GUi), a1=0x10044218, a2=[a0+96], a3=?.
  The `jalr` at 0x10035ba8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10035bb4 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jalr` at 0x10035c7c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x5, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x10035c88 calls baseWidget__11VkComponentCGv with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jalr` at 0x10035d54 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x5, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x10035d60 calls baseWidget__11VkComponentCGv with a0=[a0+44], a1=?, a2=?, a3=?.
  The `jalr` at 0x10035e2c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x5, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x10035f38 calls XtVaCreateManagedWidget with a0=0x10044230, a1=[sym(xmScaleWidgetClass)], a2=[a0+92], a3=-0xb, a4=0x2, a5=-0x3a0, a6=0x1, a7=-0x39a.
  The `jalr` at 0x10035f58 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x40, a2=sym(doSetSCHPhaseCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10035f70 calls XtAddCallback with a0=[a0+164], a1=-0x4d, a2=sym(doSetSCHPhaseCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003606c calls XtVaCreateManagedWidget with a0=0x10044240, a1=[sym(xmScaleWidgetClass)], a2=[a0+92], a3=-0xb, a4=0x2, a5=-0x3a0, a6=0x1, a7=-0x39a.
  The `jalr` at 0x1003608c calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x40, a2=sym(doHorizontalPhaseCallbackCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100360a4 calls XtAddCallback with a0=[a0+160], a1=-0x4d, a2=sym(doHorizontalPhaseCallbackCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003618c calls XtVaCreateManagedWidget with a0=0x10044258, a1=[sym(xmScaleWidgetClass)], a2=[a0+92], a3=-0xb, a4=0x2, a5=-0x3a0, a6=0x1, a7=-0x42.
  The `jalr` at 0x100361ac calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x40, a2=sym(doSetVerticalPhaseCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100361c4 calls XtAddCallback with a0=[a0+168], a1=-0x4d, a2=sym(doSetVerticalPhaseCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100361d4 calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x100361fc calls __ct__16GainControlClassGPCcP10_WidgetRec [0x1003ed80] with a0=ret(__nw__GUi), a1=0x10044270, a2=[a0+92], a3=?.
  The `jalr` at 0x10036228 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10036238 calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x10036260 calls __ct__16GainControlClassGPCcP10_WidgetRec [0x1003ed80] with a0=ret(__nw__GUi), a1=0x10044280, a2=[a0+92], a3=?.
  The `jalr` at 0x1003628c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003629c calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x100362c4 calls __ct__16GainControlClassGPCcP10_WidgetRec [0x1003ed80] with a0=ret(__nw__GUi), a1=0x10044290, a2=[a0+92], a3=?.
  The `jalr` at 0x100362f0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10036300 calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x10036328 calls __ct__16GainControlClassGPCcP10_WidgetRec [0x1003ed80] with a0=ret(__nw__GUi), a1=0x100442a8, a2=[a0+92], a3=?.
  The `jalr` at 0x10036354 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10036364 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x10036394 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+92], a2=0x100442b8, a3=0x0, a4=0x0.
  The `jalr` at 0x100363cc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=?, a1=0x100442d0, a2=sym(doOptionBlankedCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100363f0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+192], a1=0x100442e0, a2=sym(doOptionNotBlankedCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003649c calls XtVaCreateManagedWidget with a0=0x100442f8, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x4, a7=-0x66.
  The `jalr` at 0x1003654c calls XtVaCreateManagedWidget with a0=0x10051520, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x100365f8 calls XtVaCreateManagedWidget with a0=0x10044308, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x4, a7=-0x66.
  The `jalr` at 0x100366a8 calls XtVaCreateManagedWidget with a0=0x10051528, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x10036754 calls XtVaCreateManagedWidget with a0=0x10044318, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x4, a7=-0x66.
  The `jalr` at 0x100367f8 calls XtVaCreateManagedWidget with a0=0x10051530, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x1003680c calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003683c calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+92], a2=0x10044330, a3=0x0, a4=0x0.
  The `jalr` at 0x10036874 calls XtVaSetValues with a0=[a0+80], a1=-0x76, a2=[a0+144], a3=-0xa5, a4=[a0+144], a5=0x0.
  The `jalr` at 0x10036880 calls baseWidget__11VkComponentCGv with a0=[a0+52], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036890 calls baseWidget__11VkComponentCGv with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003695c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x4, a3=-0x66, a4=0x5, a5=-0x46, a6=0x5, a7=-0x67.
  The `jalr` at 0x10036968 calls baseWidget__11VkComponentCGv with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036978 calls baseWidget__11VkComponentCGv with a0=[a0+60], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036a44 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x4, a3=-0x66, a4=0x5, a5=-0x46, a6=0x5, a7=-0x67.
  The `jalr` at 0x10036a50 calls baseWidget__11VkComponentCGv with a0=[a0+60], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036b10 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x5, a5=-0x46, a6=0x5, a7=-0x67.
  The `jalr` at 0x10036b1c calls baseWidget__11VkComponentCGv with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036bdc calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x5, a5=-0x46, a6=0x5, a7=-0x67.
  The `jalr` at 0x10036be8 calls baseWidget__10VkMenuItemCGv with a0=[a0+192], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036c78 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x0, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x10036c98 calls XtVaSetValues with a0=[a0+144], a1=-0x76, a2=[a0+108], a3=-0xa5, a4=[a0+108], a5=0x0.
  The `jalr` at 0x10036cb8 calls XtVaSetValues with a0=[a0+148], a1=-0x76, a2=[a0+112], a3=-0xa5, a4=[a0+112], a5=0x0.
  The `jalr` at 0x10036cd8 calls XtVaSetValues with a0=[a0+112], a1=-0x76, a2=[a0+152], a3=-0xa5, a4=[a0+152], a5=0x0.
  The `jalr` at 0x10036cf8 calls XtVaSetValues with a0=[a0+152], a1=-0x76, a2=[a0+140], a3=-0xa5, a4=[a0+140], a5=0x0.
  The `jalr` at 0x10036d04 calls baseWidget__10VkMenuItemCGv with a0=[a0+196], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036d14 calls baseWidget__10VkMenuItemCGv with a0=[a0+196], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036d34 calls XtVaSetValues with a0=[a0+108], a1=-0x76, a2=ret(baseWidget__10VkMenuItemCGv), a3=-0xa5, a4=ret(baseWidget__10VkMenuItemCGv), a5=0x0.
  The `jalr` at 0x10036d44 calls baseWidget__10VkMenuItemCGv with a0=[a0+196], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036dd4 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x0, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x10036de4 calls __nw__GUi with a0=0x164, a1=?, a2=?, a3=?.
  The `jal` at 0x10036e0c calls __ct__19StatisticsFormClassGPCcP10_WidgetRec [0x100422c0] with a0=ret(__nw__GUi), a1=0x10044350, a2=[a0+16], a3=?.
  The `jalr` at 0x10036e40 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10036e4c calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036e64 calls XtVaSetValues with a0=[a0+92], a1=-0x116, a2=ret(baseWidget__11VkComponentCGv), a3=0x0.
  The `jalr` at 0x10036e70 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036f0c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x1, a3=-0x66, a4=0x1, a5=-0x46, a6=0x0, a7=-0x67.
  The `jal` at 0x10036f18 calls createChannelChanger__18ChannelFormClassUIGv [0x100290e0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100358f8 targets 0x10035930, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10035928 targets 0x10035938 and is always taken.
  The `beq` branch at 0x10035a98 targets 0x10035acc, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10035ac4 targets 0x10035ad4 and is always taken.
  The `beq` branch at 0x10035afc targets 0x10035b30, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10035b28 targets 0x10035b38 and is always taken.
  The `beq` branch at 0x10035b5c targets 0x10035b94, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10035b8c targets 0x10035b9c and is always taken.
  The `beq` branch at 0x100361dc targets 0x10036214, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003620c targets 0x1003621c and is always taken.
  The `beq` branch at 0x10036240 targets 0x10036278, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10036270 targets 0x10036280 and is always taken.
  The `beq` branch at 0x100362a4 targets 0x100362dc, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100362d4 targets 0x100362e4 and is always taken.
  The `beq` branch at 0x10036308 targets 0x10036340, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10036338 targets 0x10036348 and is always taken.
  The `beq` branch at 0x1003636c targets 0x100363ac, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100363a4 targets 0x100363b4 and is always taken.
  The `beq` branch at 0x10036814 targets 0x10036854, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003684c targets 0x1003685c and is always taken.
  The `beq` branch at 0x10036dec targets 0x10036e24, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10036e1c targets 0x10036e2c and is always taken.
  The return at 0x10036f2c has v0 = ret(createChannelChanger__18ChannelFormClassUIGv).

- `postInfoMessage__13ErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10037180 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037180-0x10037204 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x100371b4 loads 4 bytes from ret(getTheInfoDialog__Gv) +0x8.
  The `lw` at 0x100371c4 loads 4 bytes from [ret(getTheInfoDialog__Gv)+8] +0x110.
  The `lw` at 0x100371d0 loads 4 bytes from [ret(getTheInfoDialog__Gv)+8] +0x108.
  The `jalr` at 0x100371a0 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100371ac calls getTheInfoDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100371dc calls (unknown callee) with a0=([[ret(getTheInfoDialog__Gv)+8]+264] + ret(getTheInfoDialog__Gv)), a1=ret(str__9strstreamGv), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x100371e8 calls __dl__GPv with a0=ret(str__9strstreamGv), a1=?, a2=?, a3=?.
  The return at 0x100371fc has v0 = ret(__dl__GPv).

- `afterRealizeHook__21ServerInfoFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x10037220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037220-0x100372c8 (168 bytes).
  It occupies 168 bytes.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1003723c, `lw` at 0x10037280.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10037244, `lw` at 0x10037288.
  2 such `lw` accesses load 4 bytes from [[sym(xsetmonApp)]+312] +0x84, including `lw` at 0x10037254, `lw` at 0x10037294.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x10037278, `lw` at 0x100372b0.
  The `jalr` at 0x10037258 calls XSGIvcSelectInput with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x4, a3=a3 at entry (arg3).
  The `jalr` at 0x10037274 calls XtAddEventHandler with a0=[a0+16], a1=0x4, a2=0x0, a3=sym(doLockStatusChangedHandler__21ServerInfoFormClassUISGP10_WidgetRecPvP7_XEventPc), a4=a0 at entry (arg0).
  The `jalr` at 0x10037290 calls XSGIvcSelectInput with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x2, a3=?.
  The `jalr` at 0x100372ac calls XtAddEventHandler with a0=[a0+16], a1=0x2, a2=0x0, a3=sym(doInputSyncSourceNotifyHandler__21ServerInfoFormClassUISGP10_WidgetRecPvP7_XEventPc), a4=a0 at entry (arg0).
  The return at 0x100372c0 has v0 = ret(XtAddEventHandler).

- `__dt__29FormatCombinationListsClassUIGv` in `usr/bin/X11/xsetmon` at 0x100372d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100372d0-0x1003733c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10037300 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10037308 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10037324 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100372f0 targets 0x1003732c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10037318 targets 0x10037330, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10037334 has v0 = one of ret(__dt__11VkComponentGv), ?.

- `configureGain__16GainControlClassGiT1` in `usr/bin/X11/xsetmon` at 0x10037340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037340-0x10037420 (224 bytes).
  It occupies 224 bytes.
  The `sw` at 0x1003734c stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `sw` at 0x10037360 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `lw` at 0x10037364 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10037374 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x10037384 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x100373bc loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x100373f4 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `jalr` at 0x10037388 calls XSGIvcQueryOutputGain with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=sp-32.
  The `jalr` at 0x100373b8 calls XtVaSetValues with a0=[a0+36], a1=-0x8, a2=?, a3=0x0.
  The `jalr` at 0x100373e0 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10044f20, a2=?, a3=?.
  The `jalr` at 0x100373f0 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=[a0+52], a2=?, a3=?.
  The `jalr` at 0x10037400 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051600, a2=?, a3=?.
  The `jalr` at 0x1003740c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10037418 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10037390 targets 0x100373d4, is taken when v0(=ret(XSGIvcQueryOutputGain)) == 0, and falls through when v0(=ret(XSGIvcQueryOutputGain)) != 0.
  The return at 0x100373cc has v0 = ret(XtVaSetValues).

- `prepost__16AboutDialogClassGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow` in `usr/bin/X11/xsetmon` at 0x10037420 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037420-0x10037454 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0x1003743c calls prepost__15VkDialogManagerGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003744c has v0 = ret(prepost__15VkDialogManagerGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow).

- `SG2applyChanges__21StatisticsFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10037460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037460-0x10037574 (276 bytes).
  It occupies 276 bytes.
  3 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10037490, `lw` at 0x100374d8, `lw` at 0x10037500.
  The `lw` at 0x100374a0 loads 4 bytes from a1 (arg1 at entry) +0x14c.
  The `lw` at 0x100374bc loads 4 bytes from a1 (arg1 at entry) +0x15c.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x100374e4, `lw` at 0x10037508.
  The `lw` at 0x100374f8 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x10037530 loads 4 bytes from ret(getTheWarningDialog__Gv) +0x8.
  The `lw` at 0x10037540 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x110.
  The `lw` at 0x1003754c loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x108.
  The `jal` at 0x1003748c calls checkPriv__7xsetmonGv [0x10041490] with a0=[sym(xsetmonApp)], a1=a1 at entry (arg1), a2=0x2149c, a3=a3 at entry (arg3).
  The `jalr` at 0x1003749c calls XmToggleButtonGetState with a0=[a1+332], a1=?, a2=?, a3=?.
  The `jalr` at 0x100374b8 calls XmToggleButtonGetState with a0=[a1+348], a1=?, a2=?, a3=?.
  The `jalr` at 0x100374f4 calls XSGIvcSetPlatformParameter with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=0x0, a4=sp-32, a5=0x4.
  The `jalr` at 0x10037504 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The `jalr` at 0x10037510 calls getTheWarningDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10037528 calls VkGetResource__GPCcT1 with a0=0x10046eb8, a1=0x10046eb8, a2=?, a3=?.
  The `jalr` at 0x10037558 calls (unknown callee) with a0=([[ret(getTheWarningDialog__Gv)+8]+264] + ret(getTheWarningDialog__Gv)), a1=ret(VkGetResource__GPCcT1), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x10037494 targets 0x10037560, is taken when v0(=ret(checkPriv__7xsetmonGv)) == 0, and falls through when v0(=ret(checkPriv__7xsetmonGv)) != 0.
  The `beq` branch at 0x100374a4 targets 0x100374b4, is taken when v0(=ret(XmToggleButtonGetState)) == 0, and falls through when v0(=ret(XmToggleButtonGetState)) != 0.
  The `beq` branch at 0x100374c0 targets 0x100374d8, is taken when v0(=ret(XmToggleButtonGetState)) == 0, and falls through when v0(=ret(XmToggleButtonGetState)) != 0.
  The return at 0x1003756c has v0 = one of ret(checkPriv__7xsetmonGv), ret(?).

- `doHorizontalPhaseCallback__18ChannelFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10037580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037580-0x10037588 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10037580 has v0 = ?.

- `doLockStatusChangedHandler__21ServerInfoFormClassUISGP10_WidgetRecPvP7_XEventPc` in `usr/bin/X11/xsetmon` at 0x100375e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100375e0-0x10037624 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x100375e4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100375f0 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x100375fc loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x1003760c calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2131c.
  The return at 0x1003761c has v0 = ret(?).

- `__ct__10GammaClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10037630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037630-0x10037678 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10037668 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10037650 calls __ct__12GammaClassUIGPCcP10_WidgetRec [0x100274b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10037670 has v0 = a0.

- `multRight__7MMatrixGRC7MMatrix` in `usr/bin/X11/xsetmon` at 0x10037680 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037680-0x10037908 (648 bytes).
  It occupies 648 bytes.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x1003770c, `lw` at 0x10037744, `lw` at 0x10037848.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10037710, `lw` at 0x1003774c, `lw` at 0x1003778c.
  The `lw` at 0x10037714 loads 4 bytes from [a1] +0x0.
  3 such `lw` accesses load 4 bytes from [a0] +0x4, including `lw` at 0x10037718, `lw` at 0x100377d8, `lw` at 0x10037834.
  3 such `lw` accesses load 4 bytes from [a1] +0x4, including `lw` at 0x10037750, `lw` at 0x1003784c, `lw` at 0x10037888.
  3 such `lw` accesses load 4 bytes from [a0] +0x0, including `lw` at 0x1003775c, `lw` at 0x10037794, `lw` at 0x10037860.
  The `lw` at 0x100377a4 loads 4 bytes from ?.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x100377d0, `swc1` at 0x1003782c.
  2 such `lwc1` accesses load 4 bytes from ret(0x1002d620) +0x0, including `lwc1` at 0x10037818, `lwc1` at 0x1003781c.
  The `lwc1` at 0x10037820 loads 4 bytes from ?.
  The `sw` at 0x100378d8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x100376ac calls bIsIdentity__7MMatrixCGv [0x1002ac70] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100376d8 calls bIsIdentity__7MMatrixCGv [0x1002ac70] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100376ec calls __as__7MMatrixGRC7MMatrix [0x10033fc0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1003772c calls __nw__GUi with a0=0x10, a1=?, a2=?, a3=?.
  The `jal` at 0x10037758 calls __ct__9MMdtArrayGiT1 [0x1002d5c0] with a0=ret(__nw__GUi), a1=[[a0]], a2=[[a1]+4], a3=?.
  The `jal` at 0x100377f8 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10037810 calls (unnamed) [0x1002d620] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1003787c calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=?.
  The `jal` at 0x100378a0 calls __dt__9MMdtArrayGv [0x100340b0] with a0=[a0], a1=0x3, a2=?, a3=?.
  The `jalr` at 0x100378f8 calls __assert with a0=0x10049508, a1=0x100494a0, a2=0x7f, a3=?.
  The `beq` branch at 0x100376b4 targets 0x100376d8, is taken when v0(=ret(bIsIdentity__7MMatrixCGv)) == 0, and falls through when v0(=ret(bIsIdentity__7MMatrixCGv)) != 0.
  The `beq` branch at 0x100376e0 targets 0x1003770c, is taken when v0(=ret(bIsIdentity__7MMatrixCGv)) == 0, and falls through when v0(=ret(bIsIdentity__7MMatrixCGv)) != 0.
  The `bne` branch at 0x1003771c targets 0x100378e8, is taken when v0(=[[a1]]) != v1(=[[a0]+4]), and falls through when v0(=[[a1]]) == v1(=[[a0]+4]).
  The `beq` branch at 0x10037734 targets 0x10037774, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003776c targets 0x1003777c and is always taken.
  The `blez` branch at 0x100377a0 targets 0x1003789c, is taken when a4(=[[a0]]) <= 0 (signed), and falls through when a4(=[[a0]]) > 0 (signed).
  The `beq` branch at 0x100377c0 targets 0x10037870 and is always taken.
  The `blez` branch at 0x100377dc targets 0x10037848, is taken when t8(=[[a0]+4]) <= 0 (signed), and falls through when t8(=[[a0]+4]) > 0 (signed).
  The `bne` branch at 0x10037840 targets 0x100377f0, is taken when s0(?) < t9(=[[a0]+4]) (signed), and falls through when s0(?) >= t9(=[[a0]+4]) (signed).
  The `bne` branch at 0x10037858 targets 0x100377d0, is taken when s5(?) < ra(=[[a1]+4]) (signed), and falls through when s5(?) >= ra(=[[a1]+4]) (signed).
  The `beq` branch at 0x1003786c targets 0x1003789c, is taken when s7(?) >= at(=[[a0]]) (signed), and falls through when s7(?) < at(=[[a0]]) (signed).
  The `bgtz` branch at 0x1003788c targets 0x100377d0, is taken when v0(=[[a1]+4]) > 0 (signed), and falls through when v0(=[[a1]+4]) <= 0 (signed).
  The `beq` branch at 0x10037894 targets 0x10037860 and is always taken.
  The `beq` branch at 0x10037900 targets 0x10037728 and is always taken.
  The return at 0x100376d0 has v0 = a0.
  The return at 0x10037704 has v0 = ret(__as__7MMatrixGRC7MMatrix).
  The return at 0x100378e0 has v0 = a0.
  The instructions from 0x100377c8 to 0x100377cc are not reached by any path from the entry, and their branches are not listed.

- `__dt__21ServerInfoFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x10037910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037910-0x100379c4 (180 bytes).
  It occupies 180 bytes.
  The `sw` at 0x10037938 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x10037940 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x1003794c loads 4 bytes from [a0+96] +0x8.
  The `lw` at 0x10037950 loads 4 bytes from [[a0+96]+8] +0x14.
  The `lw` at 0x10037954 loads 4 bytes from [[a0+96]+8] +0xc.
  The `lw` at 0x10037968 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x10037974 loads 4 bytes from [a0+100] +0x8.
  The `lw` at 0x10037978 loads 4 bytes from [[a0+100]+8] +0x14.
  The `lw` at 0x1003797c loads 4 bytes from [[a0+100]+8] +0xc.
  The `jalr` at 0x1003795c calls (unknown callee) with a0=([[[a0+96]+8]+12] + [a0+96]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+96].
  The `jalr` at 0x10037984 calls (unknown callee) with a0=([[[a0+100]+8]+12] + [a0+100]), a1=0x3, a2=?, a3=[a0+100].
  The `jalr` at 0x10037994 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100379ac calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10037928 targets 0x100379b4, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10037944 targets 0x10037968, is taken when a3(=[a0+96]) == 0, and falls through when a3(=[a0+96]) != 0.
  The `beq` branch at 0x1003796c targets 0x10037994, is taken when a3(=[a0+100]) == 0, and falls through when a3(=[a0+100]) != 0.
  The `beq` branch at 0x100379a4 targets 0x100379b4, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x100379bc has v0 = one of ?, ret(__dt__11VkComponentGv), ret(__dl__GPv).

- `doToggleExternalLockCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10037a20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037a20-0x10037a64 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10037a24 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10037a30 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x10037a3c loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x10037a4c calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20edc.
  The return at 0x10037a5c has v0 = ret(?).

- `doSetSCHPhase__16ChannelFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10037a70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037a70-0x10037ad0 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x10037a74 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10037a8c loads 4 bytes from a0 (arg0 at entry) +0xd8.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10037a90, `lw` at 0x10037ab4.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10037a98, `lw` at 0x10037abc.
  The `lw` at 0x10037aa0 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `jalr` at 0x10037aa4 calls XSGIvcSetOutputPhaseSCH with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+216], a3=[a2+8].
  The `jalr` at 0x10037ab8 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The return at 0x10037ac8 has v0 = ret(XFlush).

- `__ct__16ChannelFormClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10037ad0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037ad0-0x10037b38 (104 bytes).
  It occupies 104 bytes.
  The `sw` at 0x10037b00 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10037b0c stores 4 bytes to a0 (arg0 at entry) +0x100.
  The `sw` at 0x10037b14 stores 4 bytes to a0 (arg0 at entry) +0x104.
  The `jal` at 0x10037af0 calls __ct__18ChannelFormClassUIGPCcP10_WidgetRec [0x1002cec0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10037b1c calls populateFormWithChannel__16ChannelFormClassGi [0x1002d050] with a0=a0 at entry (arg0), a1=0x0, a2=a0 at entry (arg0), a3=?.
  The return at 0x10037b30 has v0 = a0.

- `vSplineFit__19GammaMapEditorClassCGiT1PCfT3Pf` in `usr/bin/X11/xsetmon` at 0x10037b40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037b40-0x10037d70 (560 bytes).
  It occupies 560 bytes.
  2 such `swc1` accesses store 4 bytes to ret(__nwa__GUi) +0x0, including `swc1` at 0x10037bb8, `swc1` at 0x10037bc4.
  18 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x10037bf0, `lwc1` at 0x10037bf4, `lwc1` at 0x10037bf8.
  7 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x10037c30, `swc1` at 0x10037c68, `swc1` at 0x10037cb4.
  The `jalr` at 0x10037b88 calls __nwa__GUi with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10037b98 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10037d48 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?, a7=ret(__nwa__GUi)-4.
  The `jalr` at 0x10037d54 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `blez` branch at 0x10037bc0 targets 0x10037cb8, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `bne` branch at 0x10037cb0 targets 0x10037bf0, is taken when t0(?) != t2(?), and falls through when t0(?) == t2(?).
  The `bltz` branch at 0x10037d08 targets 0x10037d3c, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `bne` branch at 0x10037d34 targets 0x10037d10, is taken when a6(?) != a7(=ret(__nwa__GUi)-4), and falls through when a6(?) == a7(=ret(__nwa__GUi)-4).
  The return at 0x10037d68 has v0 = ret(__dla__GPv).

- `doLockStatusChanged__21ServerInfoFormClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10037d70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037d70-0x10037d78 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10037d70 has v0 = ?.

- `doOptionVideoVoltage__21ServerInfoFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10037d80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037d80-0x10037d88 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10037d80 has v0 = ?.

- `topWidget__12MyTabbedDeckGv` in `usr/bin/X11/xsetmon` at 0x10037d90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037d90-0x10037d98 (8 bytes).
  It occupies 8 bytes.
  The `lw` at 0x10037d94 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The return at 0x10037d90 has v0 = [a0+40].

- `RegisterSetmonMasterFormClassInterface__21SetmonMasterFormClassSGv` in `usr/bin/X11/xsetmon` at 0x10037da0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037da0-0x10037db8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10037dac loads 4 bytes from abs 0x10050950.
  The return at 0x10037db0 has v0 = 0x1004e4e8.

- `fbConfigSelected__29FormatCombinationListsClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10037dc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037dc0-0x10037dc8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10037dc0 has v0 = ?.

- `fbDepthSelected__29FormatCombinationListsClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10037dd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037dd0-0x10037dd8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10037dd0 has v0 = ?.

- `afterRealizeHook__7xsetmonGv` in `usr/bin/X11/xsetmon` at 0x10037e30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037e30-0x10037f1c (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0x10037e48 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lbu` at 0x10037e4c loads 1 byte from [sym(xsetmonApp)] +0x94.
  The `sw` at 0x10037eb8 stores 4 bytes to a0 (arg0 at entry) +0x134.
  The `lw` at 0x10037edc loads 4 bytes from a0 (arg0 at entry) +0x134.
  The `lw` at 0x10037ee0 loads 4 bytes from [a0+308] +0x4.
  The `lw` at 0x10037ee4 loads 4 bytes from [[a0+308]+4] +0x44.
  The `lw` at 0x10037ee8 loads 4 bytes from [[a0+308]+4] +0x3c.
  The `jalr` at 0x10037e68 calls __nw__GUi with a0=0x10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10037e8c calls __ct__22ScrollingErrorMessagerGPCc [0x1002bcf0] with a0=ret(__nw__GUi), a1=0x10043c18, a2=?, a3=?.
  The `jalr` at 0x10037eb4 calls __ct__9strstreamGv with a0=sp-184, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10037ec8 calls __ls__7ostreamGPCc with a0=sp-104, a1=0x10043c30, a2=?, a3=?.
  The `jalr` at 0x10037ed4 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10037ef0 calls (unknown callee) with a0=([[[a0+308]+4]+60] + [a0+308]), a1=sp-184, a2=[a0+308], a3=?.
  The `jalr` at 0x10037f00 calls __dt__9strstreamGv with a0=sp-184, a1=0x2, a2=?, a3=?.
  The `beq` branch at 0x10037e58 targets 0x10037f08, is taken when at(=[[sym(xsetmonApp)]+148]:1) == 0, and falls through when at(=[[sym(xsetmonApp)]+148]:1) != 0.
  The `beq` branch at 0x10037e74 targets 0x10037ea4, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10037e9c targets 0x10037eac and is always taken.
  The return at 0x10037f14 has v0 = one of 0x20acc, ret(__dt__9strstreamGv).

- `RegisterGammaClassInterface__10GammaClassSGv` in `usr/bin/X11/xsetmon` at 0x10037f20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037f20-0x10037f38 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10037f2c loads 4 bytes from abs 0x10050950.
  The return at 0x10037f30 has v0 = 0x1004d950.

- `vListaccumBufTypes__27FormatCombinationListsClassGv` in `usr/bin/X11/xsetmon` at 0x10037f50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037f50-0x10038124 (468 bytes).
  It occupies 468 bytes.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xe8, including `sw` at 0x10037f84, `sw` at 0x10038074.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10037f88, `lw` at 0x1003805c.
  The `lw` at 0x10037f94 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x10037fac loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x10037fe0 loads 4 bytes from abs 0x10051af8.
  2 such `lw` accesses load 4 bytes from abs 0x10051afc, including `lw` at 0x10038010, `lw` at 0x10038030.
  The `lw` at 0x10038060 loads 4 bytes from [sym(xsetmonApp)] +0xf8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0x10038064, `lw` at 0x1003809c, `lw` at 0x100380d0.
  The `lw` at 0x10038084 loads 4 bytes from table(0x10051af4) +0x0.
  The `sw` at 0x10038090 stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `lw` at 0x100380e0 loads 4 bytes from a0 (arg0 at entry) +0xe8.
  The `jalr` at 0x10037f74 calls __ct__10VkNameListGv with a0=sp-64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10037fa8 calls XSGIvcQueryPlatformParameter with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=0x1, a4=[sym(xsetmonApp)]+244, a5=0x20.
  The `jalr` at 0x10037fb8 calls strlen with a0=[0x10051af8], a1=?, a2=?, a3=?.
  The `jalr` at 0x10037fc8 calls __nwa__GUi with a0=ret(strlen)+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x10037fe4 calls sprintf with a0=ret(__nwa__GUi), a1=0x10044ac0, a2=[0x10051af8], a3=?.
  The `jalr` at 0x10037ff4 calls add__10VkNameListGPc with a0=sp-64, a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x10038000 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003800c calls strlen with a0=[0x10051afc], a1=?, a2=?, a3=?.
  The `jalr` at 0x10038018 calls __nwa__GUi with a0=ret(strlen)+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x10038034 calls sprintf with a0=ret(__nwa__GUi), a1=0x10044ac0, a2=[0x10051afc], a3=?.
  The `jalr` at 0x10038044 calls add__10VkNameListGPc with a0=sp-64, a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x10038050 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003808c calls XtVaGetValues with a0=[a0+76], a1=-0x84, a2=sp-48, a3=0x0, a4=entry(0x10051af4), a5=[[sym(xsetmonApp)]+248]+1.
  The `jalr` at 0x10038098 calls XmListDeleteAllItems with a0=[a0+76], a1=?, a2=?, a3=?.
  The `jalr` at 0x100380a4 calls freeXmStringTable__10VkNameListSGPPUc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100380b0 calls getXmStringTable__10VkNameListCGv with a0=sp-64, a1=?, a2=?, a3=?.
  The `jalr` at 0x100380cc calls XmListAddItems with a0=[a0+76], a1=ret(getXmStringTable__10VkNameListCGv), a2=?, a3=0x1.
  The `jalr` at 0x100380d8 calls freeXmStringTable__10VkNameListSGPPUc with a0=ret(getXmStringTable__10VkNameListCGv), a1=?, a2=?, a3=?.
  The `jalr` at 0x100380f0 calls XmListSelectPos with a0=[a0+76], a1=[a0+232], a2=0x0, a3=?.
  The `jalr` at 0x1003810c calls __dt__10VkNameListGv with a0=sp-64, a1=0x2, a2=?, a3=?.
  The `blez` branch at 0x100380e4 targets 0x100380f8, is taken when a1(=[a0+232]) <= 0 (signed), and falls through when a1(=[a0+232]) > 0 (signed).
  The return at 0x1003811c has v0 = ret(__dt__10VkNameListGv).
