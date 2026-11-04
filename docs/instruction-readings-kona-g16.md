# Instruction readings from hostfacts

These entries record selected memory accesses, calls, branches and returns from each cited routine body. Every instruction claim names its address in the exact binary build. They describe software behavior, not hardware measurements.

Skipped routines: 2,246 symbols in the selected binaries were left out, 1,654 because an earlier readings document already covers them and 592 because the symbol has no bounded routine address or size.

- `TEST_perf` in `usr/diags/IR/bin/irsaudit` at 0x100ffb2c (n32).
  It occupies 1052 bytes.
  The `lw` at 0x100ffb50 loads 4 bytes from a0 (arg0 at entry) +0x16c via base a0 (a0).
  The 2 such `lw` accesses load 4 bytes from abs 0x102be48c via base a1 (0x102c4340), including `lw` at 0x100ffb5c, `lw` at 0x100ffe70.
  The `sw` at 0x100ffb6c stores 4 bytes to sym(KonatestTexRepeat) +0x0 via base a1 (sym(KonatestTexRepeat)) with value 0x1.
  The `lw` at 0x100ffb8c loads 4 bytes from abs 0x102bd730 via base t9 (0x102c4340).
  The 4 such `lw` accesses load 4 bytes from abs 0x102bcee8 via base a0 (0x102c4340), including `lw` at 0x100ffba0, `lw` at 0x100ffd1c, `lw` at 0x100ffde8.
  The 5 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x100ffbb4, `lw` at 0x100ffe50, `lw` at 0x100ffee0.
  The 3 such `lw` accesses load 4 bytes from abs 0x102bcee8 via base a1 (0x102c4340), including `lw` at 0x100ffbb8, `lw` at 0x100ffee4, `lw` at 0x100fff14.
  The `lw` at 0x100ffbd8 loads 4 bytes from abs 0x102be1e0 via base ra (0x102c4340).
  The `lw` at 0x100ffbdc loads 4 bytes from sym(KONAINFO) +0x0 via base ra (sym(KONAINFO)).
  The `lw` at 0x100ffbe0 loads 4 bytes from [sym(KONAINFO)] +0x0 via base ra ([sym(KONAINFO)]).
  The `lw` at 0x100ffbf4 loads 4 bytes from abs 0x102be20c via base at (0x102c4340).
  The `lw` at 0x100ffbf8 loads 4 bytes from sym(SET_HUB_WAR) +0x0 via base at (sym(SET_HUB_WAR)).
  The `lw` at 0x100ffc08 loads 4 bytes from abs 0x102be448 via base v1 (0x102c4340).
  The `sw` at 0x100ffc0c stores 4 bytes to sym(HUB_WAR) +0x0 via base v1 (sym(HUB_WAR)) with value 0x1.
  The `lw` at 0x100ffc18 loads 4 bytes from abs 0x102be498 via base a0 (0x102c4340).
  The `sw` at 0x100ffc24 stores 4 bytes to sym(el_perf_flago) +0x0 via base a0 (sym(el_perf_flago)) with value 0x1.
  The `lw` at 0x100ffc34 loads 4 bytes from abs 0x102bd764 via base s1 (0x102c4340).
  The `lw` at 0x100ffc64 loads 4 bytes from abs 0x102bddf4 via base s1 (0x102c4340).
  The `lw` at 0x100ffc88 loads 4 bytes from abs 0x102bd458 via base s2 (0x102c4340).
  The `lw` at 0x100ffccc loads 4 bytes from abs 0x102bd45c via base s2 (0x102c4340).
  The `lw` at 0x100ffcd4 loads 4 bytes from abs 0x102be77c via base s0 (0x102c4340).
  The `lw` at 0x100ffcec loads 4 bytes from sym(pipeFD) +0x0 via base s0 (sym(pipeFD)).
  The `lw` at 0x100ffcfc loads 4 bytes from abs 0x102bd7fc via base t9 (0x102c4340).
  The `lw` at 0x100ffd18 loads 4 bytes from abs 0x102bd7cc via base t9 (0x102c4340).
  The `lw` at 0x100ffd3c loads 4 bytes from abs 0x102bd92c via base s0 (0x102c4340).
  The `lw` at 0x100ffd98 loads 4 bytes from abs 0x102bd49c via base t9 (0x102c4340).
  The `lw` at 0x100ffdac loads 4 bytes from abs 0x102bceec via base t9 (0x102c4340).
  The `lw` at 0x100ffdc0 loads 4 bytes from abs 0x102bcef0 via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd730 via base s2 (0x102c4340), including `lw` at 0x100ffde0, `lw` at 0x100ffe08.
  The `lw` at 0x100ffe14 loads 4 bytes from abs 0x102bcef4 via base t9 (0x102c4340).
  The `lw` at 0x100ffe7c loads 4 bytes from abs 0x102bd45c via base t9 (0x102c4340).
  The `lw` at 0x100ffe80 loads 4 bytes from abs 0x102be77c via base a0 (0x102c4340).
  The `sw` at 0x100ffe88 stores 4 bytes to sym(KonatestTexRepeat) +0x0 via base a1 (sym(KonatestTexRepeat)) with value 0x0.
  The `lw` at 0x100ffe94 loads 4 bytes from sym(pipeFD) +0x0 via base a0 (sym(pipeFD)).
  The `lw` at 0x100ffea8 loads 4 bytes from abs 0x102be498 via base a3 (0x102c4340).
  The `lw` at 0x100ffeac loads 4 bytes from abs 0x102be448 via base a2 (0x102c4340).
  The `sw` at 0x100ffeb0 stores 4 bytes to sym(el_perf_flago) +0x0 via base a3 (sym(el_perf_flago)) with value 0x0.
  The `sw` at 0x100ffeb4 stores 4 bytes to sym(HUB_WAR) +0x0 via base a2 (sym(HUB_WAR)) with value 0x0.
  The `jal` at 0x100ffb9c calls kt_output_info with a0=0x101b3410, a1=[a0+364], a2=0x1c4814, a3=0x2, a4=0x4.
  The `jal` at 0x100ffbc0 calls kt_output_rslt with a0=0x2, a1=0x101b3428, a2=(unknown), a3=(unknown).
  The `jal` at 0x100ffc44 calls kt_code_result with a0=0x2, a1=(unknown), a2=0x1, a3=(unknown).
  The `jal` at 0x100ffc6c calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100ffc90 calls sginap with a0=0x5, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100ffc9c calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100ffce8 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=(unknown).
  The `jal` at 0x100ffd00 calls reset_dacs with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100ffd20 calls kt_data_file with a0=0x101b3480, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100ffd5c calls tst_multi_voc with a0=0x8, a1=0x1, a2=0x1, a3=ret(kt_data_file), a4=0x1, a5=0x0, a6=0x0, a7=-0x1.
  The `jal` at 0x100ffd88 calls tst_multi_voc with a0=0x8, a1=0x1, a2=0x0, a3=ret(kt_data_file), a4=0x1, a5=0x1, a6=0x0, a7=-0x1.
  The `jalr` at 0x100ffd9c calls sleep with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100ffdb0 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100ffdc4 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100ffdf0 calls kt_output_info with a0=0x101b3498, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100ffe18 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100ffe34 calls kt_output_info with a0=0x101b34b8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100ffe58 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100ffe90 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=(unknown).
  The `jal` at 0x100ffef0 calls kt_output_rslt with a0=0x0, a1=0x101b3448, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fff1c calls kt_output_rslt with a0=0x0, a1=0x101b3460, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fff38 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x100ffb68 goes to 0x100ffbd0 when s2(=[a0+364]) == v0(=0x1) and falls through when s2(=[a0+364]) != v0(=0x1).
  The `beq` at 0x100ffb74 goes to 0x100ffbd4 when s2(=[a0+364]) == a3(=0x2) and falls through when s2(=[a0+364]) != a3(=0x2).
  The `beq` at 0x100ffb80 goes to 0x100ffbd0 when s2(=[a0+364]) == a4(=0x4) and falls through when s2(=[a0+364]) != a4(=0x4).
  The `beq` at 0x100ffbe4 goes to 0x100ffc14 when ra(=[[sym(KONAINFO)]]) == 0 and falls through when ra(=[[sym(KONAINFO)]]) != 0.
  The `beq` at 0x100ffbfc goes to 0x100ffc10 when at(=[sym(SET_HUB_WAR)]) == 0 and falls through when at(=[sym(SET_HUB_WAR)]) != 0.
  The `blez` at 0x100ffc20 goes to 0x100ffc5c when s2(=[a0+364]) <= 0 (signed) and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` at 0x100ffc54 goes to 0x100ffc3c when s0(unknown) < s2(=[a0+364]) (signed) and falls through when s0(unknown) >= s2(=[a0+364]) (signed).
  The `beq` at 0x100ffc74 goes to 0x100ffcc4 when v0(=ret(fcPioRead32)) == 0 and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` at 0x100ffca4 goes to 0x100ffcb4 when v0(=ret(fcPioRead32)) == 0 -> outside and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` at 0x100ffcb0 goes to 0x100ffc8c when s0(unknown) < 0x5 (unsigned) and falls through when s0(unknown) >= 0x5 (unsigned).
  The `beq` at 0x100ffcb8 goes to 0x100ffed4 when t9(unknown) == 0 and falls through when t9(unknown) != 0.
  The `bltz` at 0x100ffcf0 goes to 0x100fff00 when v0(=ret(ioctl)) < 0 (signed) and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` at 0x100ffdcc goes to 0x100ffe00 when v0(=ret(0x100fff48)) == 0 and falls through when v0(=ret(0x100fff48)) != 0.
  The `beq` at 0x100ffe20 goes to 0x100ffe40 when v0(=ret(0x1010000c)) == 0 and falls through when v0(=ret(0x1010000c)) != 0.
  The `beq` at 0x100ffe40 goes to 0x100fff2c when s0(=one of 0x0, 0x1, 0x2) == 0 and falls through when s0(=one of 0x0, 0x1, 0x2) != 0.
  The return at 0x100ffecc has v0 = unknown.

- `TEST_aaspoke` in `usr/diags/IR/bin/irsaudit` at 0x101022b8 (n32).
  It occupies 1172 bytes.
  The `lw` at 0x101022d0 loads 4 bytes from a0 (arg0 at entry) +0x16c via base a0 (a0).
  The 4 such `lw` accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x10102310, `lw` at 0x1010261c, `lw` at 0x10102660.
  The 4 such `lw` accesses load 4 bytes from abs 0x102bcf08 via base a0 (0x102c4340), including `lw` at 0x10102324, `lw` at 0x10102620, `lw` at 0x10102664.
  The 10 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x10102338, `lw` at 0x1010243c, `lw` at 0x10102530.
  The 5 such `lw` accesses load 4 bytes from abs 0x102bcf08 via base a1 (0x102c4340), including `lw` at 0x1010233c, `lw` at 0x10102440, `lw` at 0x10102494.
  The `lw` at 0x1010235c loads 4 bytes from abs 0x102be1e0 via base v0 (0x102c4340).
  The `lw` at 0x10102360 loads 4 bytes from sym(KONAINFO) +0x0 via base v0 (sym(KONAINFO)).
  The `lw` at 0x10102364 loads 4 bytes from [sym(KONAINFO)] +0x0 via base v0 ([sym(KONAINFO)]).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74 via base s4 (a0), including `lw` at 0x10102378, `lw` at 0x101026dc.
  The `lw` at 0x1010238c loads 4 bytes from abs 0x102bcf0c via base s3 (0x102c4340).
  The `lw` at 0x101023a4 loads 4 bytes from abs 0x102bd764 via base s1 (0x102c4340).
  The `lw` at 0x101023d4 loads 4 bytes from abs 0x102bddf4 via base s1 (0x102c4340).
  The `lw` at 0x101023f8 loads 4 bytes from abs 0x102bd458 via base s2 (0x102c4340).
  The `lw` at 0x10102460 loads 4 bytes from abs 0x102bd7cc via base t9 (0x102c4340).
  The `lw` at 0x10102468 loads 4 bytes from abs 0x1020c7e0 via base s3 (0x1020c7a8).
  The `lw` at 0x10102474 loads 4 bytes from abs 0x102bcf10 via base s0 (0x102c4340).
  The `sw` at 0x1010247c stores 4 bytes to abs 0x10344a98 via base s0 (0x10344a78) with value ret(kt_data_file).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd744 via base t9 (0x102c4340), including `lw` at 0x10102490, `lw` at 0x101026b0.
  The `lw` at 0x101024b0 loads 4 bytes from abs 0x102bcf14 via base t9 (0x102c4340).
  The `lw` at 0x101024b8 loads 4 bytes from abs 0x10344a98 via base s0 (0x10344a78).
  The `lw` at 0x101024d0 loads 4 bytes from abs 0x102bd45c via base s1 (0x102c4340).
  The `lw` at 0x101024d8 loads 4 bytes from abs 0x102be77c via base s0 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from sym(pipeFD) +0x0 via base s0 (sym(pipeFD)), including `lw` at 0x101024ec, `lw` at 0x10102548.
  The `lw` at 0x101024fc loads 4 bytes from abs 0x102be488 via base t8 (0x102c4340).
  The `lw` at 0x10102500 loads 4 bytes from sym(Nocrc) +0x0 via base t8 (sym(Nocrc)).
  The `lw` at 0x10102514 loads 4 bytes from abs 0x102bdbf8 via base t9 (0x102c4340).
  The `ld` at 0x10102580 loads 8 bytes from abs 0x1020c7a8 via base s3 (0x1020c7a8).
  The `sd` at 0x10102594 stores 8 bytes to abs 0x1020c7a8 via base s3 (0x1020c7a8).
  The `lw` at 0x1010259c loads 4 bytes from abs 0x102bd584 via base t9 (0x102c4340).
  The `lw` at 0x101026a0 loads 4 bytes from abs 0x102bcf0c via base at (0x102c4340).
  The `sd` at 0x101026c8 stores 8 bytes to abs 0x1020c7b0 via base at (0x1020c7a8) with value 0x7ffffffffff.
  The `sd` at 0x101026cc stores 8 bytes to abs 0x1020c7a8 via base at (0x1020c7a8) with value 0xfffff7ffffffffff.
  The `jal` at 0x10102320 calls kt_output_info with a0=0x101b3758, a1=[a0+364], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10102344 calls kt_output_rslt with a0=0x2, a1=0x101b3770, a2=(unknown), a3=(unknown).
  The `jal` at 0x101023b4 calls kt_code_result with a0=0x2, a1=(unknown), a2=0x1, a3=(unknown).
  The `jal` at 0x101023dc calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10102400 calls sginap with a0=0x5, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010240c calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10102448 calls kt_output_rslt with a0=0x0, a1=0x101b37f0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10102464 calls kt_data_file with a0=[0x1020c7e0], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101024a0 calls kt_output_dbug with a0=0x6, a1=0x101b3820, a2=ret(kt_data_file), a3=(unknown).
  The `jal` at 0x101024b4 calls (unknown callee) with a0=[0x10344a98], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x101024e8 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=(unknown).
  The `jal` at 0x10102518 calls aaspoke with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10102538 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1010254c calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=(unknown).
  The `jal` at 0x101025a4 calls run_crc_testlist with a0=0x1020c7b8, a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x101025c4 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x101025e0 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x101025fc calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10102628 calls kt_output_info with a0=0x101b3808, a1=ret(kt_data_file), a2=(unknown), a3=(unknown).
  The `jal` at 0x10102640 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10102668 calls kt_output_info with a0=0x101b3838, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10102680 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x101026d0 calls kt_output_dbug with a0=0x1, a1=0x101b37b0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101026f8 calls kt_output_info with a0=0x101b3790, a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10102710 calls kt_output_rslt with a0=0x2, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010273c calls kt_output_rslt with a0=0x0, a1=0x101b3858, a2=(unknown), a3=(unknown).
  The `beq` at 0x101022f0 goes to 0x10102354 when s2(=[a0+364]) == at(=0x1) and falls through when s2(=[a0+364]) != at(=0x1).
  The `beq` at 0x101022f8 goes to 0x10102358 when s2(=[a0+364]) == a1(=0x2) and falls through when s2(=[a0+364]) != a1(=0x2).
  The `beq` at 0x10102304 goes to 0x10102354 when s2(=[a0+364]) == v1(=0x4) and falls through when s2(=[a0+364]) != v1(=0x4).
  The `beq` at 0x10102368 goes to 0x101026e0 when v0(=[[sym(KONAINFO)]]) == a1(=0x2) and falls through when v0(=[[sym(KONAINFO)]]) != a1(=0x2).
  The `beq` at 0x10102370 goes to 0x10102690 when v0(=[[sym(KONAINFO)]]) == v1(=0x6) and falls through when v0(=[[sym(KONAINFO)]]) != v1(=0x6).
  The `beq` at 0x10102388 goes to 0x10102578 when t8(=[a0+116]) == t9(=0x8) and falls through when t8(=[a0+116]) != t9(=0x8).
  The `blez` at 0x10102390 goes to 0x101023d0 when s2(=[a0+364]) <= 0 (signed) and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` at 0x101023c4 goes to 0x101023ac when s0(unknown) < s2(=[a0+364]) (signed) and falls through when s0(unknown) >= s2(=[a0+364]) (signed).
  The `beq` at 0x101023e4 goes to 0x1010245c when v0(=ret(fcPioRead32)) == 0 and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` at 0x10102414 goes to 0x10102424 when v0(=ret(fcPioRead32)) == 0 -> outside and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` at 0x10102420 goes to 0x101023fc when s0(unknown) < 0x5 (unsigned) and falls through when s0(unknown) >= 0x5 (unsigned).
  The `bne` at 0x10102428 goes to 0x10102458 when t9(unknown) != 0 and falls through when t9(unknown) == 0.
  The `beq` at 0x10102478 goes to 0x1010260c when v0(=ret(kt_data_file)) == 0 and falls through when v0(=ret(kt_data_file)) != 0.
  The `beq` at 0x101024c0 goes to 0x10102650 when v0(=ret(0x101032d8)) == ra(=-0x1) and falls through when v0(=ret(0x101032d8)) != ra(=-0x1).
  The `bltz` at 0x101024f0 goes to 0x10102720 when v0(=ret(ioctl)) < 0 (signed) and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` at 0x10102504 goes to 0x10102598 when t8(=[sym(Nocrc)]) == 0 and falls through when t8(=[sym(Nocrc)]) != 0.
  The `beq` at 0x10102520 goes to 0x101025d4 when v0(=ret(aaspoke)) == 0 and falls through when v0(=ret(aaspoke)) != 0.
  The `bne` at 0x101025ac goes to 0x101025f0 when v0(=ret(run_crc_testlist)) != 0 and falls through when v0(=ret(run_crc_testlist)) == 0.
  The return at 0x10102570 has v0 = unknown.

- `TEST_checktex` in `usr/diags/IR/bin/irsaudit` at 0x10103594 (n32).
  It occupies 636 bytes.
  The `lw` at 0x101035bc loads 4 bytes from a0 (arg0 at entry) +0x16c via base a0 (a0).
  The `lw` at 0x101035cc loads 4 bytes from abs 0x102be48c via base a6 (0x102c4340).
  The `sw` at 0x101035e4 stores 4 bytes to sym(KonatestTexRepeat) +0x0 via base a6 (sym(KonatestTexRepeat)) with value 0x1.
  The `lw` at 0x101035fc loads 4 bytes from abs 0x102bd730 via base t9 (0x102c4340).
  The `lw` at 0x10103610 loads 4 bytes from abs 0x102bcf18 via base a0 (0x102c4340).
  The 5 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x10103624, `lw` at 0x10103738, `lw` at 0x101037a8.
  The 3 such `lw` accesses load 4 bytes from abs 0x102bcf18 via base a1 (0x102c4340), including `lw` at 0x10103628, `lw` at 0x101037ac, `lw` at 0x101037dc.
  The `lw` at 0x10103648 loads 4 bytes from abs 0x102bd764 via base a4 (0x102c4340).
  The `lw` at 0x10103678 loads 4 bytes from abs 0x102bddf4 via base s2 (0x102c4340).
  The `lw` at 0x10103690 loads 4 bytes from abs 0x102bd764 via base s1 (0x102c4340).
  The `lw` at 0x101036a8 loads 4 bytes from abs 0x102bd458 via base s3 (0x102c4340).
  The `lw` at 0x101036ec loads 4 bytes from abs 0x102bd45c via base s2 (0x102c4340).
  The `lw` at 0x101036f4 loads 4 bytes from abs 0x102be77c via base s0 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from sym(pipeFD) +0x0 via base s0 (sym(pipeFD)), including `lw` at 0x1010370c, `lw` at 0x10103770.
  The `lw` at 0x1010371c loads 4 bytes from abs 0x102bdbfc via base t9 (0x102c4340).
  The `lw` at 0x10103768 loads 4 bytes from abs 0x102be48c via base ra (0x102c4340).
  The `sw` at 0x10103774 stores 4 bytes to sym(KonatestTexRepeat) +0x0 via base ra (sym(KonatestTexRepeat)) with value 0x0.
  The `jal` at 0x1010360c calls kt_output_info with a0=0x101b3b40, a1=[a0+364], a2=a2 at entry (arg2), a3=0x4, a4=0x102c4340, a5=0x0, a6=sym(KonatestTexRepeat), a7=0x1c0dac.
  The `jal` at 0x10103630 calls kt_output_rslt with a0=0x2, a1=0x101b3b58, a2=(unknown), a3=(unknown).
  The `jal` at 0x10103658 calls kt_code_result with a0=0x2, a1=(unknown), a2=0x1, a3=(unknown).
  The `jal` at 0x1010368c calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x101036b0 calls sginap with a0=0x5, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101036bc calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10103708 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=(unknown).
  The `jal` at 0x10103720 calls TestTex with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10103740 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10103754 calls kt_code_result with a0=0x2, a1=0x0, a2=0x4, a3=(unknown).
  The `jalr` at 0x10103778 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=(unknown).
  The `jal` at 0x101037b8 calls kt_output_rslt with a0=0x0, a1=0x101b3b78, a2=(unknown), a3=(unknown).
  The `jal` at 0x101037e4 calls kt_output_rslt with a0=0x0, a1=0x101b3b90, a2=(unknown), a3=(unknown).
  The `jal` at 0x10103800 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x101035e0 goes to 0x10103640 when s2(=[a0+364]) == at(=0x1) and falls through when s2(=[a0+364]) != at(=0x1).
  The `beq` at 0x101035e8 goes to 0x10103640 when s2(=[a0+364]) == a1(=0x2) and falls through when s2(=[a0+364]) != a1(=0x2).
  The `beq` at 0x101035f0 goes to 0x10103640 when s2(=[a0+364]) == a3(=0x4) and falls through when s2(=[a0+364]) != a3(=0x4).
  The `blez` at 0x10103640 goes to 0x10103670 when s2(=[a0+364]) <= 0 (signed) and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` at 0x10103668 goes to 0x10103650 when s0(unknown) < s2(=[a0+364]) (signed) and falls through when s0(unknown) >= s2(=[a0+364]) (signed).
  The `beq` at 0x10103698 goes to 0x101036e0 when v0(=ret(fcPioRead32)) == 0 and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` at 0x101036c4 goes to 0x101036d4 when v0(=ret(fcPioRead32)) == 0 -> outside and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` at 0x101036d0 goes to 0x101036ac when s0(unknown) < 0x5 (unsigned) and falls through when s0(unknown) >= 0x5 (unsigned).
  The `beq` at 0x101036d8 goes to 0x1010379c when t9(unknown) == 0 and falls through when t9(unknown) != 0.
  The `bltz` at 0x10103710 goes to 0x101037c8 when v0(=ret(ioctl)) < 0 (signed) and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` at 0x10103728 goes to 0x101037f4 when v0(=ret(TestTex)) == 0 and falls through when v0(=ret(TestTex)) != 0.
  The return at 0x10103794 has v0 = unknown.

- `TEST_callig` in `usr/diags/IR/bin/irsaudit` at 0x10104794 (n32).
  It occupies 884 bytes.
  The `lw` at 0x101047b0 loads 4 bytes from abs 0x102be1e0 via base a1 (0x102c4340).
  The `lw` at 0x101047b8 loads 4 bytes from sym(KONAINFO) +0x0 via base a1 (sym(KONAINFO)).
  The `lw` at 0x101047bc loads 4 bytes from a0 (arg0 at entry) +0x16c via base a0 (a0).
  The `lw` at 0x101047c0 loads 4 bytes from [sym(KONAINFO)] +0x0 via base a1 ([sym(KONAINFO)]).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x10104808, `lw` at 0x10104aa8.
  The 2 such `lw` accesses load 4 bytes from abs 0x102bcf34 via base a0 (0x102c4340), including `lw` at 0x1010480c, `lw` at 0x10104ab8.
  The 8 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x1010482c, `lw` at 0x10104964, `lw` at 0x101049b0.
  The 4 such `lw` accesses load 4 bytes from abs 0x102bcf34 via base a1 (0x102c4340), including `lw` at 0x10104830, `lw` at 0x101049b4, `lw` at 0x10104a7c.
  The `lw` at 0x10104868 loads 4 bytes from abs 0x102bd764 via base s1 (0x102c4340).
  The `lw` at 0x10104898 loads 4 bytes from abs 0x102bddf4 via base s1 (0x102c4340).
  The `lw` at 0x101048bc loads 4 bytes from abs 0x102bd458 via base s2 (0x102c4340).
  The `lw` at 0x10104900 loads 4 bytes from abs 0x102bd45c via base s2 (0x102c4340).
  The `lw` at 0x10104908 loads 4 bytes from abs 0x102be77c via base s0 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from sym(pipeFD) +0x0 via base s0 (sym(pipeFD)), including `lw` at 0x10104920, `lw` at 0x1010497c.
  The `lw` at 0x10104930 loads 4 bytes from abs 0x102be488 via base t8 (0x102c4340).
  The `lw` at 0x10104934 loads 4 bytes from sym(Nocrc) +0x0 via base t8 (sym(Nocrc)).
  The `lw` at 0x10104948 loads 4 bytes from abs 0x102bdc00 via base t9 (0x102c4340).
  The `lw` at 0x101049dc loads 4 bytes from abs 0x102bd584 via base t9 (0x102c4340).
  The `lw` at 0x101049e0 loads 4 bytes from abs 0x102bcf38 via base a0 (0x102c4340).
  The `lw` at 0x10104a60 loads 4 bytes from abs 0x102bcf38 via base v0 (0x102c4340).
  The `lw` at 0x10104a70 loads 4 bytes from abs 0x102bd744 via base t9 (0x102c4340).
  The `sd` at 0x10104a88 stores 8 bytes to abs 0x1020c800 via base v0 (0x1020c800) with value 0xfffff7ffffffffff.
  The `sd` at 0x10104a94 stores 8 bytes to abs 0x1020c808 via base v0 (0x1020c800) with value 0x7ffffffffff.
  The `jal` at 0x10104814 calls kt_output_info with a0=0x101b3d80, a1=[a0+364], a2=0x1bfbac, a3=0x2, a4=0x1, a5=0x4.
  The `jal` at 0x10104838 calls kt_output_rslt with a0=0x2, a1=0x101b3d98, a2=(unknown), a3=(unknown).
  The `jal` at 0x10104878 calls kt_code_result with a0=0x2, a1=(unknown), a2=0x1, a3=(unknown).
  The `jal` at 0x101048a0 calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x101048c4 calls sginap with a0=0x5, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101048d0 calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1010491c calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=(unknown).
  The `jal` at 0x1010494c calls test_callig with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010496c calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10104980 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=(unknown).
  The `jal` at 0x101049c0 calls kt_output_rslt with a0=0x0, a1=0x101b3df8, a2=(unknown), a3=(unknown).
  The `jal` at 0x101049e8 calls run_crc_testlist with a0=0x1020c810, a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x10104a08 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10104a24 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10104a40 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10104a90 calls kt_output_dbug with a0=0x1, a1=0x101b3db8, a2=0x1bfbac, a3=0x2, a4=0x1.
  The `jal` at 0x10104ab4 calls kt_output_info with a0=0x101b3d50, a1=[[sym(KONAINFO)]], a2=0x1bfbac, a3=0x2.
  The `jal` at 0x10104acc calls kt_output_rslt with a0=0x2, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10104af8 calls kt_output_rslt with a0=0x0, a1=0x101b3e10, a2=(unknown), a3=(unknown).
  The `beq` at 0x101047d4 goes to 0x10104aa0 when a1(=[[sym(KONAINFO)]]) == a3(=0x2) and falls through when a1(=[[sym(KONAINFO)]]) != a3(=0x2).
  The `beq` at 0x101047e0 goes to 0x1010484c when s2(=[a0+364]) == a4(=0x1) and falls through when s2(=[a0+364]) != a4(=0x1).
  The `beq` at 0x101047e8 goes to 0x1010484c when s2(=[a0+364]) == a3(=0x2) and falls through when s2(=[a0+364]) != a3(=0x2).
  The `beq` at 0x101047f4 goes to 0x10104848 when s2(=[a0+364]) == a5(=0x4) and falls through when s2(=[a0+364]) != a5(=0x4).
  The `beq` at 0x1010484c goes to 0x10104a50 when a1(=[[sym(KONAINFO)]]) == ra(=0x6) and falls through when a1(=[[sym(KONAINFO)]]) != ra(=0x6).
  The `blez` at 0x10104854 goes to 0x10104890 when s2(=[a0+364]) <= 0 (signed) and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` at 0x10104888 goes to 0x10104870 when s0(unknown) < s2(=[a0+364]) (signed) and falls through when s0(unknown) >= s2(=[a0+364]) (signed).
  The `beq` at 0x101048a8 goes to 0x101048f8 when v0(=ret(fcPioRead32)) == 0 and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` at 0x101048d8 goes to 0x101048e8 when v0(=ret(fcPioRead32)) == 0 -> outside and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` at 0x101048e4 goes to 0x101048c0 when s0(unknown) < 0x5 (unsigned) and falls through when s0(unknown) >= 0x5 (unsigned).
  The `beq` at 0x101048ec goes to 0x101049a4 when t9(unknown) == 0 and falls through when t9(unknown) != 0.
  The `bltz` at 0x10104924 goes to 0x10104adc when v0(=ret(ioctl)) < 0 (signed) and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` at 0x10104938 goes to 0x101049d0 when t8(=[sym(Nocrc)]) == 0 and falls through when t8(=[sym(Nocrc)]) != 0.
  The `beq` at 0x10104954 goes to 0x10104a18 when v0(=ret(test_callig)) == 0 and falls through when v0(=ret(test_callig)) != 0.
  The `bne` at 0x101049f0 goes to 0x10104a34 when v0(=ret(run_crc_testlist)) != 0 and falls through when v0(=ret(run_crc_testlist)) == 0.
  The return at 0x1010499c has v0 = unknown.

- `TEST_xgregs` in `usr/diags/IR/bin/irsaudit` at 0x10105864 (n32).
  It occupies 204 bytes.
  The `lw` at 0x10105884 loads 4 bytes from abs 0x102bcf50 via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd764 via base t9 (0x102c4340), including `lw` at 0x101058a0, `lw` at 0x101058fc.
  The `lw` at 0x101058bc loads 4 bytes from abs 0x102bd760 via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x101058d8, `lw` at 0x10105918.
  The `jal` at 0x10105888 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101058ac calls kt_code_result with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x101058c8 calls kt_code_chip with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x101058e0 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10105908 calls kt_code_result with a0=0x1, a1=0x0, a2=0x1, a3=(unknown).
  The `jal` at 0x10105920 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x10105890 goes to 0x101058f8 when v0(=ret(0x10105930)) == 0 and falls through when v0(=ret(0x10105930)) != 0.
  The return at 0x101058f0 has v0 = ret(kt_output_rslt).

- `TEST_xgram` in `usr/diags/IR/bin/irsaudit` at 0x10105cc0 (n32).
  It occupies 1064 bytes.
  The `lw` at 0x10105ce0 loads 4 bytes from abs 0x102bddec via base s1 (0x102c4340).
  The 4 such `lw` accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x10105d1c, `lw` at 0x10105da4, `lw` at 0x10105e1c.
  The 4 such `lw` accesses load 4 bytes from abs 0x102bcf5c via base a0 (0x102c4340), including `lw` at 0x10105d2c, `lw` at 0x10105da8, `lw` at 0x10105e20.
  The 5 such `lw` accesses load 4 bytes from abs 0x102bd764 via base t9 (0x102c4340), including `lw` at 0x10105d38, `lw` at 0x10105dbc, `lw` at 0x10105f6c.
  The 4 such `lw` accesses load 4 bytes from abs 0x102bd760 via base t9 (0x102c4340), including `lw` at 0x10105d54, `lw` at 0x10105dd8, `lw` at 0x10105f88.
  The 5 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x10105d70, `lw` at 0x10105df4, `lw` at 0x10105fa4.
  The `lw` at 0x10105e54 loads 4 bytes from abs 0x102bd744 via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bcf5c via base a1 (0x102c4340), including `lw` at 0x10105e60, `lw` at 0x10105f20.
  The `lw` at 0x10105e84 loads 4 bytes from abs 0x102bdde4 via base s2 (0x102c4340).
  The `lw` at 0x10105ea0 loads 4 bytes from abs 0x102bcf60 via base t9 (0x102c4340).
  The `lw` at 0x10105eb4 loads 4 bytes from abs 0x102bcf64 via base t9 (0x102c4340).
  The `lw` at 0x10105ec8 loads 4 bytes from abs 0x102bcf68 via base t9 (0x102c4340).
  The `lw` at 0x10105f00 loads 4 bytes from abs 0x102bd744 via base s0 (0x102c4340).
  The `jal` at 0x10105cec calls fcAdapPioRead32 with a0=0x64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10105d28 calls kt_output_info with a0=0x101b4130, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10105d44 calls kt_code_result with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x10105d60 calls kt_code_chip with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x10105d78 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10105dac calls kt_output_info with a0=0x101b4150, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10105dc8 calls kt_code_result with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x10105de4 calls kt_code_chip with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x10105dfc calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10105e28 calls kt_output_info with a0=0x101b4190, a1=(unknown), a2=0x8, a3=(unknown).
  The `jal` at 0x10105e34 calls fcAdapPioRead32 with a0=0x24, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10105e74 calls kt_output_dbug with a0=0x5, a1=0x101b41b8, a2=(unknown), a3=0xfffffffffffdffff.
  The `jal` at 0x10105e90 calls fcAdapPioWrite32 with a0=0x24, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10105ea4 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10105eb8 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10105ed0 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10105ee4 calls fcAdapPioWrite32 with a0=0x6c, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10105efc calls fcAdapPioRead32 with a0=0x24, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10105f30 calls kt_output_dbug with a0=0x5, a1=0x101b41f0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10105f48 calls fcAdapPioWrite32 with a0=0x24, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10105f78 calls kt_code_result with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x10105f94 calls kt_code_chip with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x10105fac calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10106020 calls kt_output_info with a0=0x101b4178, a1=0x10, a2=0x8, a3=(unknown).
  The `jal` at 0x1010603c calls kt_code_result with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x10106058 calls kt_code_chip with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x10106070 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010609c calls kt_code_result with a0=0x1, a1=0x0, a2=0x1, a3=(unknown).
  The `jal` at 0x101060b4 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x10105cf8 goes to 0x10105d88 when (v0(=ret(fcAdapPioRead32)) & 0xc0) == 0 and falls through when (v0(=ret(fcAdapPioRead32)) & 0xc0) != 0.
  The `beq` at 0x10105d04 goes to 0x10105d8c when a0(unknown) == t9(=0x40) and falls through when a0(unknown) != t9(=0x40).
  The `beq` at 0x10105d10 goes to 0x10105d88 when a0(unknown) == ra(=0x80) and falls through when a0(unknown) != ra(=0x80).
  The `beq` at 0x10105d8c goes to 0x10105fcc when ra(unknown) == 0 and falls through when ra(unknown) != 0.
  The `beq` at 0x10105f5c goes to 0x10106088 when a2(unknown) == 0 and falls through when a2(unknown) != 0.
  The `beq` at 0x10105fd0 goes to 0x10106080 when a0(unknown) == 0 and falls through when a0(unknown) != 0.
  The `beq` at 0x10105fdc goes to 0x101060c4 when a0(unknown) == ra(=0x30) and falls through when a0(unknown) != ra(=0x30).
  The `beq` at 0x10105fe8 goes to 0x101060cc when a0(unknown) == at(=0x20) and falls through when a0(unknown) != at(=0x20).
  The `beq` at 0x10105ff4 goes to 0x101060d4 when a0(unknown) == v0(=0x18) and falls through when a0(unknown) != v0(=0x18).
  The `beq` at 0x10105ffc goes to 0x101060dc when a0(unknown) == a1(=0x10) and falls through when a0(unknown) != a1(=0x10).
  The `beq` at 0x10106004 goes to 0x10105e0c when a0(unknown) == a2(=0x8) and falls through when a0(unknown) != a2(=0x8).
  The return at 0x10105fc4 has v0 = ret(kt_output_rslt).

- `TEST_xgerr` in `usr/diags/IR/bin/irsaudit` at 0x1010697c (n32).
  It occupies 268 bytes.
  The `lw` at 0x1010699c loads 4 bytes from abs 0x102bcf6c via base s0 (0x102c4340).
  The `lw` at 0x101069cc loads 4 bytes from abs 0x102bcf70 via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd764 via base t9 (0x102c4340), including `lw` at 0x101069f0, `lw` at 0x10106a54.
  The `lw` at 0x10106a0c loads 4 bytes from abs 0x102bd760 via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x10106a28, `lw` at 0x10106a70.
  The `jal` at 0x101069ac calls (unknown callee) with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101069bc calls (unknown callee) with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101069d0 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101069fc calls kt_code_result with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x10106a18 calls kt_code_chip with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x10106a30 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10106a60 calls kt_code_result with a0=0x1, a1=0x0, a2=0x1, a3=(unknown).
  The `jal` at 0x10106a78 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x101069e0 goes to 0x10106a50 when ra(=(ret(0x10106f6c) + (ret(0x10106a88) + ret(0x10106a88)))) == 0 and falls through when ra(=(ret(0x10106f6c) + (ret(0x10106a88) + ret(0x10106a88)))) != 0.
  The return at 0x10106a48 has v0 = ret(kt_output_rslt).

- `TEST_xgcred` in `usr/diags/IR/bin/irsaudit` at 0x10107384 (n32).
  It occupies 204 bytes.
  The `lw` at 0x101073a4 loads 4 bytes from abs 0x102bcf78 via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd764 via base t9 (0x102c4340), including `lw` at 0x101073c0, `lw` at 0x1010741c.
  The `lw` at 0x101073dc loads 4 bytes from abs 0x102bd760 via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x101073f8, `lw` at 0x10107438.
  The `jal` at 0x101073a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101073cc calls kt_code_result with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x101073e8 calls kt_code_chip with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x10107400 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10107428 calls kt_code_result with a0=0x1, a1=0x0, a2=0x1, a3=(unknown).
  The `jal` at 0x10107440 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x101073b0 goes to 0x10107418 when v0(=ret(0x10107450)) == 0 and falls through when v0(=ret(0x10107450)) != 0.
  The return at 0x10107410 has v0 = ret(kt_output_rslt).

- `TEST_xgid` in `usr/diags/IR/bin/irsaudit` at 0x10107e70 (n32).
  It occupies 884 bytes.
  The `lw` at 0x10107ea0 loads 4 bytes from abs 0x102bddec via base s1 (0x102c4340).
  The `lw` at 0x10107ea4 loads 4 bytes from abs 0x102bcf80 via base at (0x102c4340).
  The `lw` at 0x10107ed8 loads 4 bytes from abs 0x102bd744 via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bcf80 via base a1 (0x102c4340), including `lw` at 0x10107ee0, `lw` at 0x10108090.
  The `lw` at 0x10107f08 loads 4 bytes from abs 0x102bd730 via base s0 (0x102c4340).
  The 5 such `lw` accesses load 4 bytes from abs 0x102bcf80 via base a0 (0x102c4340), including `lw` at 0x10107f18, `lw` at 0x10107f6c, `lw` at 0x10107fe8.
  The 4 such `lw` accesses load 4 bytes from abs 0x102bd764 via base t9 (0x102c4340), including `lw` at 0x10107f80, `lw` at 0x10107ffc, `lw` at 0x101080ac.
  The 3 such `lw` accesses load 4 bytes from abs 0x102bd760 via base t9 (0x102c4340), including `lw` at 0x10107f9c, `lw` at 0x10108018, `lw` at 0x10108178.
  The 4 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x10107fb8, `lw` at 0x10108034, `lw` at 0x101080c8.
  The `lw` at 0x10108074 loads 4 bytes from abs 0x102bd744 via base s1 (0x102c4340).
  The `lw` at 0x10108078 loads 4 bytes from unknown (base unknown) via base a2 (unknown).
  The `jal` at 0x10107ec0 calls fcAdapPioRead32 with a0=0x4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10107ef0 calls kt_output_dbug with a0=0x2, a1=0x101b4fe8, a2=ret(fcAdapPioRead32), a3=(unknown).
  The `jal` at 0x10107f28 calls kt_output_info with a0=0x101b4ff8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10107f34 calls fcAdapPioRead32 with a0=0x64, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10107f70 calls kt_output_info with a0=0x101b5030, a1=(unknown), a2=0x40, a3=0x80, a6=0x2.
  The `jal` at 0x10107f8c calls kt_code_result with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x10107fa8 calls kt_code_chip with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x10107fc0 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10107fec calls kt_output_info with a0=0x101b5050, a1=(unknown), a2=(unknown), a3=(unknown), a6=one of 0x0, 0x1, 0x2.
  The `jal` at 0x10108008 calls kt_code_result with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x10108024 calls kt_code_chip with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x1010803c calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010807c calls kt_output_info with a0=0x101b5090, a1=(unknown), a2=(unknown), a3=(unknown), a4=0x8, a6=one of 0x0, 0x1, 0x2.
  The `jal` at 0x1010809c calls kt_output_dbug with a0=0x4, a1=0x101b50c8, a2=(unknown), a3=(unknown).
  The `jal` at 0x101080b8 calls kt_code_result with a0=0x1, a1=0x0, a2=0x1, a3=(unknown).
  The `jal` at 0x101080d0 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010814c calls kt_output_info with a0=0x101b5078, a1=(unknown), a2=0x10, a3=(unknown), a4=0x8, a5=0x8000, a6=one of 0x0, 0x1, 0x2.
  The `jal` at 0x10108168 calls kt_code_result with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x10108184 calls kt_code_chip with a0=0x1, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x1010819c calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x10107f40 goes to 0x101081ac when (v0(=ret(fcAdapPioRead32)) & 0xc0) == 0 and falls through when (v0(=ret(fcAdapPioRead32)) & 0xc0) != 0.
  The `beq` at 0x10107f4c goes to 0x101081b4 when a1(unknown) == a2(=0x40) and falls through when a1(unknown) != a2(=0x40).
  The `beq` at 0x10107f58 goes to 0x10107fd0 when a1(unknown) == a3(=0x80) and falls through when a1(unknown) != a3(=0x80).
  The `beq` at 0x10107fd4 goes to 0x101080f4 when ra(unknown) == 0 and falls through when ra(unknown) != 0.
  The `beq` at 0x101080fc goes to 0x101081bc when a1(unknown) == 0 and falls through when a1(unknown) != 0.
  The `beq` at 0x10108108 goes to 0x101081c4 when a1(unknown) == ra(=0x30) and falls through when a1(unknown) != ra(=0x30).
  The `beq` at 0x10108114 goes to 0x101081cc when a1(unknown) == at(=0x20) and falls through when a1(unknown) != at(=0x20).
  The `beq` at 0x10108124 goes to 0x101081d4 when a1(unknown) == v0(=0x18) and falls through when a1(unknown) != v0(=0x18).
  The `beq` at 0x1010812c goes to 0x101081dc when a1(unknown) == a2(=0x10) and falls through when a1(unknown) != a2(=0x10).
  The `beq` at 0x10108134 goes to 0x1010804c when a1(unknown) == a4(=0x8) and falls through when a1(unknown) != a4(=0x8).
  The return at 0x101080ec has v0 = ret(kt_output_rslt).

- `TEST_encfb` in `usr/diags/IR/bin/irsaudit` at 0x101082fc (n32).
  It occupies 816 bytes.
  The `lw` at 0x1010831c loads 4 bytes from a0 (arg0 at entry) +0x16c via base a0 (a0).
  The `lw` at 0x1010835c loads 4 bytes from abs 0x102bd730 via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bcf88 via base a0 (0x102c4340), including `lw` at 0x10108370, `lw` at 0x10108494.
  The 5 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x10108384, `lw` at 0x1010856c, `lw` at 0x101085ac.
  The 3 such `lw` accesses load 4 bytes from abs 0x102bcf88 via base a1 (0x102c4340), including `lw` at 0x10108388, `lw` at 0x101085b0, `lw` at 0x10108614.
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd764 via base s1 (0x102c4340), including `lw` at 0x101083a8, `lw` at 0x101083f0.
  The `lw` at 0x101083d8 loads 4 bytes from abs 0x102bddf4 via base s2 (0x102c4340).
  The `lw` at 0x10108408 loads 4 bytes from abs 0x102bd458 via base s3 (0x102c4340).
  The `lw` at 0x10108450 loads 4 bytes from abs 0x102bd45c via base t9 (0x102c4340).
  The `lw` at 0x10108454 loads 4 bytes from abs 0x102be77c via base a0 (0x102c4340).
  The `lw` at 0x10108464 loads 4 bytes from sym(pipeFD) +0x0 via base a0 (sym(pipeFD)).
  The `lw` at 0x10108474 loads 4 bytes from abs 0x102bd7fc via base t9 (0x102c4340).
  The `lw` at 0x10108490 loads 4 bytes from abs 0x102bd7cc via base t9 (0x102c4340).
  The `lw` at 0x101084b4 loads 4 bytes from abs 0x102bd92c via base t9 (0x102c4340).
  The `lw` at 0x101084dc loads 4 bytes from abs 0x102bd49c via base t9 (0x102c4340).
  The `lw` at 0x10108500 loads 4 bytes from abs 0x102bcf8c via base s4 (0x102c4340).
  The `lw` at 0x1010850c loads 4 bytes from abs 0x102bcf90 via base s3 (0x102c4340).
  The `jal` at 0x1010836c calls kt_output_info with a0=0x101b5180, a1=[a0+364], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10108390 calls kt_output_rslt with a0=0x2, a1=0x101b5198, a2=(unknown), a3=(unknown).
  The `jal` at 0x101083b8 calls kt_code_result with a0=0x2, a1=(unknown), a2=0x1, a3=(unknown).
  The `jal` at 0x101083ec calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10108410 calls sginap with a0=0x5, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010841c calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10108460 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=(unknown).
  The `jal` at 0x10108478 calls reset_dacs with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10108498 calls kt_data_file with a0=0x101b51f0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101084cc calls tst_multi_voc with a0=0x8, a1=0x1, a2=0x1, a3=ret(kt_data_file), a4=0x1, a5=0x1, a6=0x0, a7=-0x1.
  The `jalr` at 0x101084e4 calls sleep with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10108518 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10108524 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010855c calls kt_code_result with a0=0x3, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x10108574 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x101085b8 calls kt_output_rslt with a0=0x0, a1=0x101b51b8, a2=(unknown), a3=(unknown).
  The `jal` at 0x101085d8 calls kt_code_result with a0=0x3, a1=0x0, a2=0x1, a3=(unknown).
  The `jal` at 0x101085f0 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010861c calls kt_output_rslt with a0=0x0, a1=0x101b51d0, a2=(unknown), a3=(unknown).
  The `beq` at 0x1010833c goes to 0x101083a0 when s2(=[a0+364]) == at(=0x1) and falls through when s2(=[a0+364]) != at(=0x1).
  The `beq` at 0x10108348 goes to 0x101083a0 when s2(=[a0+364]) == a0(=0x2) and falls through when s2(=[a0+364]) != a0(=0x2).
  The `beq` at 0x10108350 goes to 0x101083a0 when s2(=[a0+364]) == v0(=0x4) and falls through when s2(=[a0+364]) != v0(=0x4).
  The `blez` at 0x101083a0 goes to 0x101083d0 when s2(=[a0+364]) <= 0 (signed) and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` at 0x101083c8 goes to 0x101083b0 when s0(unknown) < s2(=[a0+364]) (signed) and falls through when s0(unknown) >= s2(=[a0+364]) (signed).
  The `beq` at 0x101083f4 goes to 0x10108444 when v0(=ret(fcPioRead32)) == 0 and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` at 0x10108424 goes to 0x10108434 when v0(=ret(fcPioRead32)) == 0 -> outside and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` at 0x10108430 goes to 0x1010840c when s0(unknown) < 0x5 (unsigned) and falls through when s0(unknown) >= 0x5 (unsigned).
  The `beq` at 0x10108438 goes to 0x101085a0 when t9(unknown) == 0 and falls through when t9(unknown) != 0.
  The `bltz` at 0x10108468 goes to 0x10108600 when v0(=ret(ioctl)) < 0 (signed) and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `bne` at 0x10108538 goes to 0x10108510 when s0(unknown) < 0x4 (signed) and falls through when s0(unknown) >= 0x4 (signed).
  The `beq` at 0x10108540 goes to 0x101085c8 when s2(unknown) == 0 and falls through when s2(unknown) != 0.
  The return at 0x10108598 has v0 = ret(kt_output_rslt).

- `TEST_framebuf1` in `usr/diags/IR/bin/irsaudit` at 0x10109430 (n32).
  It occupies 1160 bytes.
  The `lw` at 0x10109440 loads 4 bytes from a0 (arg0 at entry) +0x16c via base a0 (a0).
  The `lw` at 0x10109484 loads 4 bytes from abs 0x102bd730 via base t9 (0x102c4340).
  The 5 such `lw` accesses load 4 bytes from abs 0x102bcf98 via base a0 (0x102c4340), including `lw` at 0x10109498, `lw` at 0x1010965c, `lw` at 0x10109694.
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x101094ac, `lw` at 0x101096c0.
  The 6 such `lw` accesses load 4 bytes from abs 0x102bcf98 via base a1 (0x102c4340), including `lw` at 0x101094b0, `lw` at 0x101096c4, `lw` at 0x10109730.
  The `lw` at 0x101094f4 loads 4 bytes from abs 0x102bd764 via base s1 (0x102c4340).
  The `lw` at 0x10109524 loads 4 bytes from abs 0x102be1e0 via base s0 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from sym(KONAINFO) +0x0 via base s0 (sym(KONAINFO)), including `lw` at 0x10109528, `lw` at 0x10109888.
  The 2 such `lw` accesses load 4 bytes from [sym(KONAINFO)] +0x0 via base a0 ([sym(KONAINFO)]), including `lw` at 0x1010952c, `lw` at 0x10109890.
  The `lw` at 0x10109550 loads 4 bytes from abs 0x102be20c via base t8 (0x102c4340).
  The `lw` at 0x10109554 loads 4 bytes from sym(SET_HUB_WAR) +0x0 via base t8 (sym(SET_HUB_WAR)).
  The 2 such `lw` accesses load 4 bytes from abs 0x102be448 via base a1 (0x102c4340), including `lw` at 0x1010955c, `lw` at 0x1010979c.
  The `sw` at 0x10109560 stores 4 bytes to sym(HUB_WAR) +0x0 via base ra (sym(HUB_WAR)) with value 0x1.
  The `lw` at 0x1010956c loads 4 bytes from abs 0x102bddf4 via base s1 (0x102c4340).
  The `lw` at 0x10109590 loads 4 bytes from abs 0x102bd458 via base s2 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd728 via base s0 (0x102c4340), including `lw` at 0x101095d0, `lw` at 0x101097b0.
  The `lw` at 0x101095e8 loads 4 bytes from abs 0x102bd45c via base s2 (0x102c4340).
  The `lw` at 0x101095f0 loads 4 bytes from abs 0x102bcf9c via base t8 (0x102c4340).
  The `lw` at 0x101095f4 loads 4 bytes from abs 0x102be77c via base s1 (0x102c4340).
  The `sw` at 0x10109600 stores 4 bytes to abs 0x10344abc via base t8 (0x10344abc) with value 0x0.
  The `lw` at 0x1010960c loads 4 bytes from sym(pipeFD) +0x0 via base s1 (sym(pipeFD)).
  The `lw` at 0x1010961c loads 4 bytes from abs 0x102be488 via base t8 (0x102c4340).
  The `lw` at 0x10109620 loads 4 bytes from sym(Nocrc) +0x0 via base t8 (sym(Nocrc)).
  The `lw` at 0x10109634 loads 4 bytes from abs 0x102bcfa0 via base t9 (0x102c4340).
  The 3 such `lw` accesses load 4 bytes from abs 0x102bd730 via base s1 (0x102c4340), including `lw` at 0x10109654, `lw` at 0x1010967c, `lw` at 0x101096e4.
  The `lw` at 0x101096f0 loads 4 bytes from abs 0x102bcfa4 via base t9 (0x102c4340).
  The `lw` at 0x10109748 loads 4 bytes from abs 0x102bde1c via base s0 (0x102c4340).
  The `lw` at 0x1010977c loads 4 bytes from abs 0x102bd45c via base t9 (0x102c4340).
  The `lw` at 0x10109780 loads 4 bytes from abs 0x102be77c via base a0 (0x102c4340).
  The `lw` at 0x10109790 loads 4 bytes from sym(pipeFD) +0x0 via base a0 (sym(pipeFD)).
  The `sw` at 0x101097a4 stores 4 bytes to sym(HUB_WAR) +0x0 via base a1 (sym(HUB_WAR)) with value 0x0.
  The `lw` at 0x101097e0 loads 4 bytes from abs 0x102bd584 via base t9 (0x102c4340).
  The `lw` at 0x101097e4 loads 4 bytes from abs 0x102bcfa8 via base a0 (0x102c4340).
  The `lw` at 0x10109850 loads 4 bytes from abs 0x102bcfa8 via base v0 (0x102c4340).
  The `lw` at 0x10109860 loads 4 bytes from abs 0x102bd744 via base t9 (0x102c4340).
  The `sd` at 0x10109874 stores 8 bytes to abs 0x1020c890 via base v0 (0x1020c890) with value 0xfffff7ffffffffff.
  The `sd` at 0x10109884 stores 8 bytes to abs 0x1020c898 via base v0 (0x1020c890) with value 0x7ffffffffff.
  The `jal` at 0x10109494 calls kt_output_info with a0=0x101b52a0, a1=[a0+364], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101094b8 calls kt_output_rslt with a0=0x2, a1=0x101b52b8, a2=(unknown), a3=(unknown).
  The `jal` at 0x10109504 calls kt_code_result with a0=0x2, a1=(unknown), a2=0x1, a3=(unknown).
  The `jal` at 0x10109574 calls fcPioRead32 with a0=0x208, a1=0x102c4340, a2=(unknown), a3=0x0.
  The `jalr` at 0x10109598 calls sginap with a0=0x5, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101095a4 calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10109608 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=(unknown).
  The `jal` at 0x10109638 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10109664 calls kt_output_info with a0=0x101b5378, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10109690 calls kt_output_info with a0=0x101b52a0, a1=[a0+364], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101096a8 calls kt_output_info with a0=0x101b52d8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101096cc calls kt_output_rslt with a0=0x2, a1=0x101b52b8, a2=(unknown), a3=(unknown).
  The `jal` at 0x101096f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10109710 calls kt_output_info with a0=0x101b5390, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10109738 calls kt_output_rslt with a0=0x0, a1=0x101b53a8, a2=(unknown), a3=(unknown).
  The `jal` at 0x10109754 calls tbRegWrite with a0=0x140f, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10109764 calls tbRegWrite with a0=0x1410, a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1010978c calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=(unknown).
  The `jal` at 0x101097c4 calls kt_output_rslt with a0=0x0, a1=0x101b5340, a2=(unknown), a3=(unknown).
  The `jal` at 0x101097ec calls run_crc_testlist with a0=0x1020c8a0, a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x10109804 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10109818 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010982c calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10109880 calls kt_output_dbug with a0=0x1, a1=0x101b5300, a2=(unknown), a3=(unknown).
  The `jal` at 0x101098a8 calls kt_output_rslt with a0=0x0, a1=0x101b5358, a2=(unknown), a3=(unknown).
  The `beq` at 0x10109460 goes to 0x101094e0 when s2(=[a0+364]) == a1(=0x1) and falls through when s2(=[a0+364]) != a1(=0x1).
  The `beq` at 0x1010946c goes to 0x10109678 when s2(=[a0+364]) == v0(=0x2) and falls through when s2(=[a0+364]) != v0(=0x2).
  The `beq` at 0x10109478 goes to 0x10109674 when s2(=[a0+364]) == v1(=0x4) and falls through when s2(=[a0+364]) != v1(=0x4).
  The `blez` at 0x101094e0 goes to 0x10109520 when s2(=[a0+364]) <= 0 (signed) and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` at 0x10109514 goes to 0x101094fc when s0(unknown) < s2(=[a0+364]) (signed) and falls through when s0(unknown) >= s2(=[a0+364]) (signed).
  The `beq` at 0x10109534 goes to 0x1010983c when a0(=[[sym(KONAINFO)]]) == t9(=0x6) and falls through when a0(=[[sym(KONAINFO)]]) != t9(=0x6).
  The `beq` at 0x10109540 goes to 0x10109564 when a0(=[[sym(KONAINFO)]]) == 0 and falls through when a0(=[[sym(KONAINFO)]]) != 0.
  The `beq` at 0x10109558 goes to 0x10109564 when t8(=[sym(SET_HUB_WAR)]) == 0 and falls through when t8(=[sym(SET_HUB_WAR)]) != 0.
  The `beq` at 0x1010957c goes to 0x101095cc when v0(=ret(fcPioRead32)) == 0 and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` at 0x101095ac goes to 0x101095bc when v0(=ret(fcPioRead32)) == 0 -> outside and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` at 0x101095b8 goes to 0x10109594 when s0(unknown) < 0x5 (unsigned) and falls through when s0(unknown) >= 0x5 (unsigned).
  The `beq` at 0x101095c0 goes to 0x101097a8 when t9(unknown) == 0 and falls through when t9(unknown) != 0.
  The `bltz` at 0x10109610 goes to 0x10109894 when v0(=ret(ioctl)) < 0 (signed) and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` at 0x10109624 goes to 0x101097d4 when t8(=[sym(Nocrc)]) == 0 and falls through when t8(=[sym(Nocrc)]) != 0.
  The `beq` at 0x10109640 goes to 0x101096dc when v0(=ret(0x101098b8)) == 0 and falls through when v0(=ret(0x101098b8)) != 0.
  The `beq` at 0x101096fc goes to 0x1010971c when v0(=ret(0x1010999c)) == 0 and falls through when v0(=ret(0x1010999c)) != 0.
  The `beq` at 0x1010971c goes to 0x10109814 when s2(=one of 0x0, 0x1, 0x2) == 0 and falls through when s2(=one of 0x0, 0x1, 0x2) != 0.
  The `bne` at 0x101097f4 goes to 0x10109828 when v0(=ret(run_crc_testlist)) != 0 and falls through when v0(=ret(run_crc_testlist)) == 0.
  The return at 0x101094d8 has v0 = unknown.

- `TEST_fog` in `usr/diags/IR/bin/irsaudit` at 0x1010c09c (n32).
  It occupies 944 bytes.
  The `lw` at 0x1010c0ac loads 4 bytes from a0 (arg0 at entry) +0x16c via base a0 (a0).
  The `lw` at 0x1010c0dc loads 4 bytes from abs 0x102bd730 via base s0 (0x102c4340).
  The 4 such `lw` accesses load 4 bytes from abs 0x102bcfd8 via base a0 (0x102c4340), including `lw` at 0x1010c0f4, `lw` at 0x1010c104, `lw` at 0x1010c23c.
  The 4 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x1010c120, `lw` at 0x1010c33c, `lw` at 0x1010c38c.
  The 4 such `lw` accesses load 4 bytes from abs 0x102bcfd8 via base a1 (0x102c4340), including `lw` at 0x1010c124, `lw` at 0x1010c390, `lw` at 0x1010c3e4.
  The `lw` at 0x1010c144 loads 4 bytes from abs 0x102be1e0 via base ra (0x102c4340).
  The `lw` at 0x1010c148 loads 4 bytes from sym(KONAINFO) +0x0 via base ra (sym(KONAINFO)).
  The `lw` at 0x1010c14c loads 4 bytes from [sym(KONAINFO)] +0x0 via base ra ([sym(KONAINFO)]).
  The `lw` at 0x1010c170 loads 4 bytes from abs 0x102bd764 via base s1 (0x102c4340).
  The `lw` at 0x1010c1a0 loads 4 bytes from abs 0x102bddf4 via base s1 (0x102c4340).
  The `lw` at 0x1010c1c0 loads 4 bytes from abs 0x102bd458 via base s2 (0x102c4340).
  The `lw` at 0x1010c204 loads 4 bytes from abs 0x102bd45c via base s1 (0x102c4340).
  The `lw` at 0x1010c20c loads 4 bytes from abs 0x102be77c via base s0 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from sym(pipeFD) +0x0 via base s0 (sym(pipeFD)), including `lw` at 0x1010c220, `lw` at 0x1010c354.
  The `lw` at 0x1010c238 loads 4 bytes from abs 0x102bd7c4 via base t9 (0x102c4340).
  The `lw` at 0x1010c25c loads 4 bytes from abs 0x102bd7fc via base t9 (0x102c4340).
  The `lw` at 0x1010c278 loads 4 bytes from abs 0x102bd7cc via base t9 (0x102c4340).
  The `lw` at 0x1010c298 loads 4 bytes from abs 0x102bd92c via base s2 (0x102c4340).
  The `lw` at 0x1010c2f8 loads 4 bytes from abs 0x102bd49c via base t9 (0x102c4340).
  The `lw` at 0x1010c30c loads 4 bytes from abs 0x102be488 via base ra (0x102c4340).
  The `lw` at 0x1010c310 loads 4 bytes from sym(Nocrc) +0x0 via base ra (sym(Nocrc)).
  The `lw` at 0x1010c324 loads 4 bytes from abs 0x102bdc0c via base t9 (0x102c4340).
  The `lw` at 0x1010c3b4 loads 4 bytes from abs 0x102bd584 via base t9 (0x102c4340).
  The `lw` at 0x1010c3b8 loads 4 bytes from abs 0x102bcfdc via base a0 (0x102c4340).
  The `lw` at 0x1010c40c loads 4 bytes from abs 0x102bcfdc via base v0 (0x102c4340).
  The `lw` at 0x1010c41c loads 4 bytes from abs 0x102bd744 via base t9 (0x102c4340).
  The `sd` at 0x1010c434 stores 8 bytes to abs 0x1020c920 via base v0 (0x1020c920) with value 0xfffff7ffffffffff.
  The `sd` at 0x1010c440 stores 8 bytes to abs 0x1020c928 via base v0 (0x1020c920) with value 0x7ffffffffff.
  The `jal` at 0x1010c0f0 calls kt_output_info with a0=0x101b5930, a1=[a0+364], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1010c108 calls kt_output_info with a0=0x101b5948, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010c12c calls kt_output_rslt with a0=0x2, a1=0x101b5970, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010c180 calls kt_code_result with a0=0x2, a1=(unknown), a2=0x1, a3=(unknown).
  The `jal` at 0x1010c1a8 calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1010c1c8 calls sginap with a0=0x5, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010c1d4 calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1010c21c calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=(unknown).
  The `jal` at 0x1010c244 calls hash_value with a0=0x101b5a08, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010c260 calls reset_dacs with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010c280 calls kt_data_file with a0=0x101b5a10, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010c2bc calls tst_multi_voc with a0=0x8, a1=0x1, a2=0x1, a3=ret(kt_data_file), a4=0x1, a5=0x0, a6=0x0, a7=-0x1.
  The `jal` at 0x1010c2e8 calls tst_multi_voc with a0=0x8, a1=0x1, a2=0x0, a3=(unknown), a4=0x1, a5=0x1, a6=0x0, a7=-0x1.
  The `jalr` at 0x1010c2fc calls sleep with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010c328 calls fog with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010c344 calls kt_output_rslt with a0=(unknown), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1010c358 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=(unknown).
  The `jal` at 0x1010c398 calls kt_output_rslt with a0=0x0, a1=0x101b59d0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010c3c0 calls run_crc_testlist with a0=0x1020c930, a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010c3ec calls kt_output_rslt with a0=0x0, a1=0x101b59e8, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010c43c calls kt_output_dbug with a0=0x1, a1=0x101b5990, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` at 0x1010c0cc goes to 0x1010c13c when s2(=[a0+364]) == at(=0x1) and falls through when s2(=[a0+364]) != at(=0x1).
  The `beq` at 0x1010c154 goes to 0x1010c3fc when ra(=[[sym(KONAINFO)]]) == at(=0x6) and falls through when ra(=[[sym(KONAINFO)]]) != at(=0x6).
  The `blez` at 0x1010c15c goes to 0x1010c19c when s2(=[a0+364]) <= 0 (signed) and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` at 0x1010c190 goes to 0x1010c178 when s0(unknown) < s2(=[a0+364]) (signed) and falls through when s0(unknown) >= s2(=[a0+364]) (signed).
  The `beq` at 0x1010c1b0 goes to 0x1010c1f8 when v0(=ret(fcPioRead32)) == 0 and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` at 0x1010c1dc goes to 0x1010c1ec when v0(=ret(fcPioRead32)) == 0 -> outside and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` at 0x1010c1e8 goes to 0x1010c1c4 when s0(unknown) < 0x5 (signed) and falls through when s0(unknown) >= 0x5 (signed).
  The `beq` at 0x1010c1f0 goes to 0x1010c380 when t9(unknown) == 0 and falls through when t9(unknown) != 0.
  The `bltz` at 0x1010c224 goes to 0x1010c3d0 when v0(=ret(ioctl)) < 0 (signed) and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` at 0x1010c24c goes to 0x1010c308 when v0(=ret(hash_value)) == 0 and falls through when v0(=ret(hash_value)) != 0.
  The `beq` at 0x1010c314 goes to 0x1010c3a8 when ra(=[sym(Nocrc)]) == 0 and falls through when ra(=[sym(Nocrc)]) != 0.
  The return at 0x1010c378 has v0 = unknown.

- `TEST_imp9mem` in `usr/diags/IR/bin/irsaudit` at 0x10111444 (n32).
  It occupies 964 bytes.
  The `lw` at 0x10111464 loads 4 bytes from abs 0x102be1e0 via base at (0x102c4340).
  The `lw` at 0x10111468 loads 4 bytes from a0 (arg0 at entry) +0x16c via base a0 (a0).
  The `lw` at 0x1011146c loads 4 bytes from sym(KONAINFO) +0x0 via base at (sym(KONAINFO)).
  The `lw` at 0x10111474 loads 4 bytes from [sym(KONAINFO)] +0x0 via base at ([sym(KONAINFO)]).
  The 3 such `lw` accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x10111498, `lw` at 0x10111508, `lw` at 0x101117a8.
  The 3 such `lw` accesses load 4 bytes from abs 0x102bd054 via base a0 (0x102c4340), including `lw` at 0x101114a8, `lw` at 0x1011150c, `lw` at 0x101117ac.
  The 7 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x101114bc, `lw` at 0x1011152c, `lw` at 0x101116e8.
  The 4 such `lw` accesses load 4 bytes from abs 0x102bd054 via base a1 (0x102c4340), including `lw` at 0x101114c0, `lw` at 0x10111530, `lw` at 0x10111754.
  The `lw` at 0x1011155c loads 4 bytes from abs 0x102bd764 via base s1 (0x102c4340).
  The `lw` at 0x1011158c loads 4 bytes from abs 0x102bddf4 via base s1 (0x102c4340).
  The `lw` at 0x101115ac loads 4 bytes from abs 0x102bd458 via base s2 (0x102c4340).
  The `lw` at 0x101115f0 loads 4 bytes from abs 0x102bd45c via base s1 (0x102c4340).
  The `lw` at 0x101115f8 loads 4 bytes from abs 0x102be77c via base s2 (0x102c4340).
  The 3 such `lw` accesses load 4 bytes from sym(pipeFD) +0x0 via base s2 (sym(pipeFD)), including `lw` at 0x1011160c, `lw` at 0x1011166c, `lw` at 0x10111700.
  The `lw` at 0x1011161c loads 4 bytes from abs 0x102bd3c8 via base t9 (0x102c4340).
  The `lw` at 0x10111630 loads 4 bytes from abs 0x102bd378 via base t9 (0x102c4340).
  The `lw` at 0x10111650 loads 4 bytes from abs 0x102bd4b8 via base t9 (0x102c4340).
  The `lw` at 0x10111654 loads 4 bytes from abs 0x102bd058 via base s0 (0x102c4340).
  The `sw` at 0x10111664 stores 4 bytes to abs 0x10345410 via base s0 (0x10345410) with value ret(memalign).
  The `lw` at 0x10111674 loads 4 bytes from abs 0x102be6ac via base a2 (0x102c4340).
  The 4 such `lw` accesses load 4 bytes from abs 0x10345410 via base s0 (0x10345410), including `lw` at 0x10111678, `lw` at 0x1011171c, `lw` at 0x10111738.
  The `sw` at 0x1011167c stores 4 bytes to sym(map_diag) +0x0 via base a2 (sym(map_diag)) with value [0x10345410].
  The `sw` at 0x10111688 stores 4 bytes to sym(map_diag) +0x4 via base a2 (sym(map_diag)) with value 0x280.
  The `sw` at 0x10111690 stores 4 bytes to sym(map_diag) +0xc via base a2 (sym(map_diag)) with value 0x9.
  The `sw` at 0x1011169c stores 4 bytes to sym(map_diag) +0x8 via base a2 (sym(map_diag)) with value 0x0.
  The `lw` at 0x101116ac loads 4 bytes from abs 0x102bd05c via base t9 (0x102c4340).
  The `lw` at 0x101116c0 loads 4 bytes from abs 0x102bd060 via base t9 (0x102c4340).
  The `lw` at 0x10111714 loads 4 bytes from abs 0x102bd64c via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd420 via base t9 (0x102c4340), including `lw` at 0x10111730, `lw` at 0x101117c0.
  The `jal` at 0x101114a4 calls kt_output_info with a0=0x101b5ac0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101114c8 calls kt_output_rslt with a0=0x2, a1=0x101b5ae8, a2=(unknown), a3=(unknown).
  The `jal` at 0x10111514 calls kt_output_info with a0=0x101b5b08, a1=[a0+364], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10111538 calls kt_output_rslt with a0=0x2, a1=0x101b5b40, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011156c calls kt_code_result with a0=0x2, a1=(unknown), a2=0x1, a3=(unknown).
  The `jal` at 0x10111594 calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x101115b4 calls sginap with a0=0x5, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101115c0 calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10111608 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=(unknown).
  The `jalr` at 0x10111620 calls getpagesize with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10111638 calls memalign with a0=ret(getpagesize), a1=0x280, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10111660 calls bzero with a0=ret(memalign), a1=0x280, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10111698 calls ioctl with a0=[sym(pipeFD)], a1=0x2774, a2=sym(map_diag), a3=(unknown).
  The `jal` at 0x101116b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101116c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101116f0 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10111704 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=(unknown).
  The `jal` at 0x10111720 calls destroy_map_diag with a0=0x0, a1=[0x10345410], a2=0x1, a3=(unknown).
  The `jalr` at 0x10111734 calls free with a0=[0x10345410], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011175c calls kt_output_rslt with a0=0x0, a1=0x101b5b60, a2=(unknown), a3=(unknown).
  The `jal` at 0x10111788 calls kt_output_rslt with a0=0x0, a1=0x101b5b78, a2=(unknown), a3=(unknown).
  The `jal` at 0x101117b0 calls kt_output_info with a0=0x101b5b98, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x101117c4 calls free with a0=[0x10345410], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101117dc calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x101117f8 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x10111488 goes to 0x101114f0 when at(=[[sym(KONAINFO)]]) == v0(=0x2) and falls through when at(=[[sym(KONAINFO)]]) != v0(=0x2).
  The `beq` at 0x101114f4 goes to 0x10111548 when s2(=[a0+364]) == ra(=0x1) and falls through when s2(=[a0+364]) != ra(=0x1).
  The `blez` at 0x10111548 goes to 0x10111588 when s2(=[a0+364]) <= 0 (signed) and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` at 0x1011157c goes to 0x10111564 when s0(unknown) < s2(=[a0+364]) (signed) and falls through when s0(unknown) >= s2(=[a0+364]) (signed).
  The `beq` at 0x1011159c goes to 0x101115e4 when v0(=ret(fcPioRead32)) == 0 and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` at 0x101115c8 goes to 0x101115d8 when v0(=ret(fcPioRead32)) == 0 -> outside and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` at 0x101115d4 goes to 0x101115b0 when s0(unknown) < 0x5 (unsigned) and falls through when s0(unknown) >= 0x5 (unsigned).
  The `beq` at 0x101115dc goes to 0x10111744 when t9(unknown) == 0 and falls through when t9(unknown) != 0.
  The `bltz` at 0x10111610 goes to 0x1011176c when v0(=ret(ioctl)) < 0 (signed) and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `bltz` at 0x101116a0 goes to 0x10111798 when v0(=ret(ioctl)) < 0 (signed) and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` at 0x101116d8 goes to 0x101117ec when ra(unknown) == 0 and falls through when ra(unknown) != 0.
  The return at 0x101114e8 has v0 = unknown.

- `TEST_gvo_lut` in `usr/diags/IR/bin/irsaudit` at 0x1011b408 (n32).
  It occupies 1196 bytes.
  The `lw` at 0x1011b424 loads 4 bytes from abs 0x102be6c0 via base at (0x102c4340).
  The `lw` at 0x1011b42c loads 4 bytes from sym(xilinx_loaded) +0x0 via base at (sym(xilinx_loaded)).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd744 via base s0 (0x102c4340), including `lw` at 0x1011b44c, `lw` at 0x1011b588.
  The 9 such `lw` accesses load 4 bytes from abs 0x102bd0c4 via base a1 (0x102c4340), including `lw` at 0x1011b464, `lw` at 0x1011b54c, `lw` at 0x1011b608.
  The `lw` at 0x1011b470 loads 4 bytes from abs 0x102be6c0 via base a2 (0x102c4340).
  The `lw` at 0x1011b474 loads 4 bytes from sym(xilinx_loaded) +0x0 via base a2 (sym(xilinx_loaded)).
  The `lw` at 0x1011b488 loads 4 bytes from abs 0x102bdc58 via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd764 via base t9 (0x102c4340), including `lw` at 0x1011b4b8, `lw` at 0x1011b590.
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x1011b4d4, `lw` at 0x1011b5ac.
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x1011b50c, `lw` at 0x1011b7fc.
  The 6 such `lw` accesses load 4 bytes from abs 0x102bd0c4 via base a0 (0x102c4340), including `lw` at 0x1011b510, `lw` at 0x1011b710, `lw` at 0x1011b74c.
  The 3 such `lw` accesses load 4 bytes from abs 0x102bdea0 via base t9 (0x102c4340), including `lw` at 0x1011b528, `lw` at 0x1011b5e4, `lw` at 0x1011b6a0.
  The `lw` at 0x1011b570 loads 4 bytes from abs 0x102bdc5c via base t9 (0x102c4340).
  The `lw` at 0x1011b5cc loads 4 bytes from abs 0x102bdea8 via base s1 (0x102c4340).
  The `lw` at 0x1011b6e8 loads 4 bytes from abs 0x102bdc9c via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd730 via base s1 (0x102c4340), including `lw` at 0x1011b708, `lw` at 0x1011b844.
  The `lw` at 0x1011b72c loads 4 bytes from abs 0x102bdc98 via base t9 (0x102c4340).
  The `lw` at 0x1011b764 loads 4 bytes from abs 0x102bdc90 via base t9 (0x102c4340).
  The `lw` at 0x1011b79c loads 4 bytes from abs 0x102bdc94 via base t9 (0x102c4340).
  The `jal` at 0x1011b460 calls kt_output_dbug with a0=0x1, a1=0x101b93b8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011b48c calls dgo_reset with a0=(unknown), a1=(unknown), a2=[sym(xilinx_loaded)], a3=(unknown).
  The `jal` at 0x1011b4c4 calls kt_code_result with a0=0x4, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x1011b4dc calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b514 calls kt_output_info with a0=0x101b93e8, a1=(unknown), a2=[sym(xilinx_loaded)], a3=(unknown).
  The `jal` at 0x1011b534 calls vcWrite with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b558 calls kt_output_dbug with a0=0x5, a1=0x101b95b8, a2=(unknown), a3=0xc006.
  The `jal` at 0x1011b574 calls dgo_loadXilinx_reset with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011b59c calls kt_code_result with a0=0x4, a1=0x0, a2=0x1, a3=(unknown).
  The `jal` at 0x1011b5b4 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b5d4 calls vcRead with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b5f4 calls vcWrite with a0=0xc006, a1=(ret(vcRead) | 0x180), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b618 calls kt_output_dbug with a0=0x5, a1=0x101b95b8, a2=(unknown), a3=0xc006.
  The `jal` at 0x1011b63c calls vcRead with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b664 calls kt_output_dbug with a0=0x7, a1=0x101b95d8, a2=ret(vcRead), a3=0xc006.
  The `jal` at 0x1011b68c calls vcRead with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown), a4=0x186a0.
  The `jal` at 0x1011b6b4 calls vcWrite with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b6d8 calls kt_output_dbug with a0=0x5, a1=0x101b95b8, a2=(unknown), a3=0xc006.
  The `jal` at 0x1011b6ec calls dgo_gamma_lut_dbus_test with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b71c calls kt_output_info with a0=0x101b9628, a1=ret(dgo_gamma_lut_dbus_test), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b730 calls dgo_gamma_lut_abus_test with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b754 calls kt_output_info with a0=0x101b96a0, a1=ret(dgo_gamma_lut_abus_test), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b768 calls dgo_gamma_lut_cell_test with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b78c calls kt_output_info with a0=0x101b9720, a1=ret(dgo_gamma_lut_cell_test), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b7a0 calls dgo_gamma_lut_funky_cell_test with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b7c4 calls kt_output_info with a0=0x101b9798, a1=ret(dgo_gamma_lut_funky_cell_test), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b80c calls kt_output_info with a0=0x101b95f8, a1=(unknown), a2=(unknown), a3=(unknown), a4=0x186a0.
  The `jal` at 0x1011b830 calls kt_output_dbug with a0=0x1, a1=0x101b9668, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b85c calls kt_output_dbug with a0=0x1, a1=0x101b96e0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b880 calls kt_output_dbug with a0=0x1, a1=0x101b9760, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b8a4 calls kt_output_dbug with a0=0x1, a1=0x101b97d8, a2=(unknown), a3=(unknown).
  The `beq` at 0x1011b43c goes to 0x1011b568 when at(=[sym(xilinx_loaded)]) == 0 and falls through when at(=[sym(xilinx_loaded)]) != 0.
  The `beq` at 0x1011b478 goes to 0x1011b500 when a2(=[sym(xilinx_loaded)]) == 0 and falls through when a2(=[sym(xilinx_loaded)]) != 0.
  The `beq` at 0x1011b494 goes to 0x1011b5c4 when v0(=ret(dgo_reset)) == 0 and falls through when v0(=ret(dgo_reset)) != 0.
  The `beq` at 0x1011b4a0 goes to 0x1011b524 when s2(=one of 0x0, 0x1) == 0 and falls through when s2(=one of 0x0, 0x1) != 0.
  The `beq` at 0x1011b4a8 goes to 0x1011b58c when s1(unknown) == 0 and falls through when s1(unknown) != 0.
  The `beq` at 0x1011b630 goes to 0x1011b684 when v0(unknown) >= a4(=0x186a0) (signed) and falls through when v0(unknown) < a4(=0x186a0) (signed).
  The `bne` at 0x1011b67c goes to 0x1011b628 when a2(unknown) != a3(unknown) and falls through when a2(unknown) == a3(unknown).
  The `beq` at 0x1011b684 goes to 0x1011b7ec when v0(unknown) == a4(=0x186a0) and falls through when v0(unknown) != a4(=0x186a0).
  The `beq` at 0x1011b6f4 goes to 0x1011b81c when v0(=ret(dgo_gamma_lut_dbus_test)) == 0 and falls through when v0(=ret(dgo_gamma_lut_dbus_test)) != 0.
  The `beq` at 0x1011b738 goes to 0x1011b848 when v0(=ret(dgo_gamma_lut_abus_test)) == 0 and falls through when v0(=ret(dgo_gamma_lut_abus_test)) != 0.
  The `beq` at 0x1011b770 goes to 0x1011b86c when v0(=ret(dgo_gamma_lut_cell_test)) == 0 and falls through when v0(=ret(dgo_gamma_lut_cell_test)) != 0.
  The `beq` at 0x1011b7a8 goes to 0x1011b890 when v0(=ret(dgo_gamma_lut_funky_cell_test)) == 0 and falls through when v0(=ret(dgo_gamma_lut_funky_cell_test)) != 0.
  The return at 0x1011b4f8 has v0 = ret(kt_output_rslt).

- `TEST_gvo_status` in `usr/diags/IR/bin/irsaudit` at 0x1011b8b4 (n32).
  It occupies 332 bytes.
  The `lw` at 0x1011b8d8 loads 4 bytes from abs 0x102bd730 via base s0 (0x102c4340).
  The 3 such `lw` accesses load 4 bytes from abs 0x102bd0c4 via base a0 (0x102c4340), including `lw` at 0x1011b8e0, `lw` at 0x1011b920, `lw` at 0x1011b94c.
  The `lw` at 0x1011b8fc loads 4 bytes from abs 0x102bdc4c via base t9 (0x102c4340).
  The `lw` at 0x1011b934 loads 4 bytes from abs 0x102bdc54 via base t9 (0x102c4340).
  The `lw` at 0x1011b960 loads 4 bytes from abs 0x102bdc60 via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd764 via base t9 (0x102c4340), including `lw` at 0x1011b978, `lw` at 0x1011b9cc.
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x1011b994, `lw` at 0x1011b9e8.
  The `jal` at 0x1011b8ec calls kt_output_info with a0=0x101b9810, a1=0x1a8a8c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011b900 calls dgo_status with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b924 calls kt_output_info with a0=0x101b9820, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b938 calls dgo_genlock with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b950 calls kt_output_info with a0=0x101b9830, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b964 calls dgo_csc_status with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b984 calls kt_code_result with a0=0x4, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x1011b99c calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b9d8 calls kt_code_result with a0=0x4, a1=0x0, a2=0x1, a3=(unknown).
  The `jal` at 0x1011b9f0 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x1011b908 goes to 0x1011b9bc when v0(=ret(dgo_status)) == 0 and falls through when v0(=ret(dgo_status)) != 0.
  The `beq` at 0x1011b96c goes to 0x1011b9c4 when s1(=one of 0x0, 0x1) == 0 and falls through when s1(=one of 0x0, 0x1) != 0.
  The return at 0x1011b9b4 has v0 = ret(kt_output_rslt).

- `TEST_gvo_genlock` in `usr/diags/IR/bin/irsaudit` at 0x1011bb5c (n32).
  It occupies 348 bytes.
  The `lw` at 0x1011bb78 loads 4 bytes from abs 0x102be6c0 via base at (0x102c4340).
  The `lw` at 0x1011bb7c loads 4 bytes from sym(xilinx_loaded) +0x0 via base at (sym(xilinx_loaded)).
  The `lw` at 0x1011bb90 loads 4 bytes from abs 0x102bd744 via base t9 (0x102c4340).
  The `lw` at 0x1011bba4 loads 4 bytes from abs 0x102bd0c4 via base a1 (0x102c4340).
  The `lw` at 0x1011bbb0 loads 4 bytes from abs 0x102be6c0 via base ra (0x102c4340).
  The `lw` at 0x1011bbb4 loads 4 bytes from sym(xilinx_loaded) +0x0 via base ra (sym(xilinx_loaded)).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x1011bbd0, `lw` at 0x1011bc68.
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd0c4 via base a0 (0x102c4340), including `lw` at 0x1011bbd4, `lw` at 0x1011bc6c.
  The `lw` at 0x1011bbe8 loads 4 bytes from abs 0x102bdc88 via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd764 via base t9 (0x102c4340), including `lw` at 0x1011bc04, `lw` at 0x1011bc84.
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x1011bc20, `lw` at 0x1011bca0.
  The `lw` at 0x1011bc48 loads 4 bytes from abs 0x102bdc5c via base t9 (0x102c4340).
  The `jal` at 0x1011bba0 calls kt_output_dbug with a0=0x1, a1=0x101b93b8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011bbd8 calls kt_output_info with a0=0x101b9858, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011bbec calls dgo_genlock_test with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011bc10 calls kt_code_result with a0=0x4, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x1011bc28 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011bc4c calls dgo_loadXilinx_reset with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011bc70 calls kt_output_info with a0=0x101b93e8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011bc90 calls kt_code_result with a0=0x4, a1=0x0, a2=0x1, a3=(unknown).
  The `jal` at 0x1011bca8 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x1011bb80 goes to 0x1011bc40 when at(=[sym(xilinx_loaded)]) == 0 and falls through when at(=[sym(xilinx_loaded)]) != 0.
  The `beq` at 0x1011bbb8 goes to 0x1011bc5c when ra(=[sym(xilinx_loaded)]) == 0 and falls through when ra(=[sym(xilinx_loaded)]) != 0.
  The `beq` at 0x1011bbf4 goes to 0x1011bc80 when v0(=ret(dgo_genlock_test)) == 0 and falls through when v0(=ret(dgo_genlock_test)) != 0.
  The return at 0x1011bc38 has v0 = ret(kt_output_rslt).

- `TEST_gvo_lsb` in `usr/diags/IR/bin/irsaudit` at 0x1011bcb8 (n32).
  It occupies 352 bytes.
  The `lw` at 0x1011bcd4 loads 4 bytes from abs 0x102be6c0 via base at (0x102c4340).
  The `lw` at 0x1011bcd8 loads 4 bytes from sym(xilinx_loaded) +0x0 via base at (sym(xilinx_loaded)).
  The `lw` at 0x1011bcf0 loads 4 bytes from abs 0x102bd744 via base t9 (0x102c4340).
  The `lw` at 0x1011bd04 loads 4 bytes from abs 0x102bd0c4 via base a1 (0x102c4340).
  The `lw` at 0x1011bd10 loads 4 bytes from abs 0x102be6c0 via base ra (0x102c4340).
  The `lw` at 0x1011bd14 loads 4 bytes from sym(xilinx_loaded) +0x0 via base ra (sym(xilinx_loaded)).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x1011bd2c, `lw` at 0x1011bdc8.
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd0c4 via base a0 (0x102c4340), including `lw` at 0x1011bd30, `lw` at 0x1011bdcc.
  The `lw` at 0x1011bd44 loads 4 bytes from abs 0x102bdc40 via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd764 via base t9 (0x102c4340), including `lw` at 0x1011bd60, `lw` at 0x1011bde4.
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x1011bd7c, `lw` at 0x1011be00.
  The `lw` at 0x1011bda4 loads 4 bytes from abs 0x102bdc5c via base t9 (0x102c4340).
  The `jal` at 0x1011bd00 calls kt_output_dbug with a0=0x1, a1=0x101b93b8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011bd34 calls kt_output_info with a0=0x101b9880, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011bd48 calls dgo_lsb_test with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011bd6c calls kt_code_result with a0=0x4, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x1011bd84 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011bda8 calls dgo_loadXilinx_reset with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011bdd0 calls kt_output_info with a0=0x101b93e8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011bdf0 calls kt_code_result with a0=0x4, a1=0x0, a2=0x1, a3=(unknown).
  The `jal` at 0x1011be08 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x1011bce0 goes to 0x1011bd9c when at(=[sym(xilinx_loaded)]) == 0 and falls through when at(=[sym(xilinx_loaded)]) != 0.
  The `beq` at 0x1011bd18 goes to 0x1011bdb8 when ra(=[sym(xilinx_loaded)]) == 0 and falls through when ra(=[sym(xilinx_loaded)]) != 0.
  The `beq` at 0x1011bd50 goes to 0x1011bde0 when v0(=ret(dgo_lsb_test)) == 0 and falls through when v0(=ret(dgo_lsb_test)) != 0.
  The return at 0x1011bd94 has v0 = ret(kt_output_rslt).

- `TEST_gvo_ll` in `usr/diags/IR/bin/irsaudit` at 0x1011be18 (n32).
  It occupies 352 bytes.
  The `lw` at 0x1011be34 loads 4 bytes from abs 0x102be6c0 via base at (0x102c4340).
  The `lw` at 0x1011be38 loads 4 bytes from sym(xilinx_loaded) +0x0 via base at (sym(xilinx_loaded)).
  The `lw` at 0x1011be50 loads 4 bytes from abs 0x102bd744 via base t9 (0x102c4340).
  The `lw` at 0x1011be64 loads 4 bytes from abs 0x102bd0c4 via base a1 (0x102c4340).
  The `lw` at 0x1011be70 loads 4 bytes from abs 0x102be6c0 via base ra (0x102c4340).
  The `lw` at 0x1011be74 loads 4 bytes from sym(xilinx_loaded) +0x0 via base ra (sym(xilinx_loaded)).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x1011be8c, `lw` at 0x1011bf28.
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd0c4 via base a0 (0x102c4340), including `lw` at 0x1011be90, `lw` at 0x1011bf2c.
  The `lw` at 0x1011bea4 loads 4 bytes from abs 0x102bdcac via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd764 via base t9 (0x102c4340), including `lw` at 0x1011bec0, `lw` at 0x1011bf44.
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x1011bedc, `lw` at 0x1011bf60.
  The `lw` at 0x1011bf04 loads 4 bytes from abs 0x102bdc5c via base t9 (0x102c4340).
  The `jal` at 0x1011be60 calls kt_output_dbug with a0=0x1, a1=0x101b93b8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011be94 calls kt_output_info with a0=0x101b9898, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011bea8 calls gvo_low_latency_test with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011becc calls kt_code_result with a0=0x4, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x1011bee4 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011bf08 calls dgo_loadXilinx_reset with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011bf30 calls kt_output_info with a0=0x101b93e8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011bf50 calls kt_code_result with a0=0x4, a1=0x0, a2=0x1, a3=(unknown).
  The `jal` at 0x1011bf68 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x1011be40 goes to 0x1011befc when at(=[sym(xilinx_loaded)]) == 0 and falls through when at(=[sym(xilinx_loaded)]) != 0.
  The `beq` at 0x1011be78 goes to 0x1011bf18 when ra(=[sym(xilinx_loaded)]) == 0 and falls through when ra(=[sym(xilinx_loaded)]) != 0.
  The `beq` at 0x1011beb0 goes to 0x1011bf40 when v0(=ret(gvo_low_latency_test)) == 0 and falls through when v0(=ret(gvo_low_latency_test)) != 0.
  The return at 0x1011bef4 has v0 = ret(kt_output_rslt).

- `TEST_gvo_fb_lite` in `usr/diags/IR/bin/irsaudit` at 0x1011bf78 (n32).
  It occupies 456 bytes.
  The `lw` at 0x1011bf94 loads 4 bytes from abs 0x102be6c0 via base at (0x102c4340).
  The `lw` at 0x1011bf98 loads 4 bytes from sym(xilinx_loaded) +0x0 via base at (sym(xilinx_loaded)).
  The `lw` at 0x1011bfb4 loads 4 bytes from abs 0x102bd744 via base s0 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd0c4 via base a1 (0x102c4340), including `lw` at 0x1011bfcc, `lw` at 0x1011c0ec.
  The `lw` at 0x1011bfd8 loads 4 bytes from abs 0x102be6c0 via base t8 (0x102c4340).
  The `lw` at 0x1011bfdc loads 4 bytes from sym(xilinx_loaded) +0x0 via base t8 (sym(xilinx_loaded)).
  The `lw` at 0x1011bff4 loads 4 bytes from abs 0x102bd730 via base s0 (0x102c4340).
  The 3 such `lw` accesses load 4 bytes from abs 0x102bd0c4 via base a0 (0x102c4340), including `lw` at 0x1011bffc, `lw` at 0x1011c03c, `lw` at 0x1011c0c4.
  The `lw` at 0x1011c014 loads 4 bytes from abs 0x102bdc48 via base t9 (0x102c4340).
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x1011c038, `lw` at 0x1011c0c0.
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd764 via base t9 (0x102c4340), including `lw` at 0x1011c058, `lw` at 0x1011c10c.
  The 2 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x1011c074, `lw` at 0x1011c128.
  The `lw` at 0x1011c0a0 loads 4 bytes from abs 0x102bdc5c via base t9 (0x102c4340).
  The `lw` at 0x1011c0e8 loads 4 bytes from abs 0x102bd744 via base t9 (0x102c4340).
  The `jal` at 0x1011bfc8 calls kt_output_dbug with a0=0x1, a1=0x101b93b8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011c004 calls kt_output_info with a0=0x101b98c0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011c018 calls run_dgo_fb_lite_test with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011c044 calls kt_output_info with a0=0x101b98e0, a1=ret(run_dgo_fb_lite_test), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011c064 calls kt_code_result with a0=0x4, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x1011c07c calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011c0a4 calls dgo_loadXilinx_reset with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011c0c8 calls kt_output_info with a0=0x101b93e8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011c0f4 calls kt_output_dbug with a0=0x1, a1=0x101b9918, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011c118 calls kt_code_result with a0=0x4, a1=0x0, a2=0x1, a3=(unknown).
  The `jal` at 0x1011c130 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x1011bfa4 goes to 0x1011c098 when at(=[sym(xilinx_loaded)]) == 0 and falls through when at(=[sym(xilinx_loaded)]) != 0.
  The `beq` at 0x1011bfe0 goes to 0x1011c0b4 when t8(=[sym(xilinx_loaded)]) == 0 and falls through when t8(=[sym(xilinx_loaded)]) != 0.
  The `beq` at 0x1011c020 goes to 0x1011c0d8 when v0(=ret(run_dgo_fb_lite_test)) == 0 and falls through when v0(=ret(run_dgo_fb_lite_test)) != 0.
  The `beq` at 0x1011c04c goes to 0x1011c104 when s0(=ret(run_dgo_fb_lite_test)) == 0 and falls through when s0(=ret(run_dgo_fb_lite_test)) != 0.
  The return at 0x1011c090 has v0 = ret(kt_output_rslt).

- `TEST_txlut` in `usr/diags/IR/bin/irsaudit` at 0x10127bd8 (n32).
  It occupies 1072 bytes.
  The `lw` at 0x10127c00 loads 4 bytes from a0 (arg0 at entry) +0x16c via base a0 (a0).
  The `lw` at 0x10127c0c loads 4 bytes from abs 0x102be48c via base a1 (0x102c4340).
  The `sw` at 0x10127c1c stores 4 bytes to sym(KonatestTexRepeat) +0x0 via base a1 (sym(KonatestTexRepeat)) with value 0x1.
  The `lw` at 0x10127c3c loads 4 bytes from abs 0x102bd730 via base t9 (0x102c4340).
  The 5 such `lw` accesses load 4 bytes from abs 0x102bd1ac via base a0 (0x102c4340), including `lw` at 0x10127c50, `lw` at 0x10127dc8, `lw` at 0x10127e00.
  The 7 such `lw` accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x10127c64, `lw` at 0x10127e6c, `lw` at 0x10127eec.
  The 4 such `lw` accesses load 4 bytes from abs 0x102bd1ac via base a1 (0x102c4340), including `lw` at 0x10127c68, `lw` at 0x10127ef0, `lw` at 0x10127fb8.
  The `lw` at 0x10127c88 loads 4 bytes from abs 0x102be1e0 via base a1 (0x102c4340).
  The `lw` at 0x10127c8c loads 4 bytes from sym(KONAINFO) +0x0 via base a1 (sym(KONAINFO)).
  The 2 such `lw` accesses load 4 bytes from [sym(KONAINFO)] +0x0 via base a0 ([sym(KONAINFO)]), including `lw` at 0x10127c90, `lw` at 0x10127d00.
  The `lw` at 0x10127ca0 loads 4 bytes from abs 0x102be20c via base a2 (0x102c4340).
  The `lw` at 0x10127ca4 loads 4 bytes from sym(SET_HUB_WAR) +0x0 via base a2 (sym(SET_HUB_WAR)).
  The `lw` at 0x10127cb4 loads 4 bytes from abs 0x102be448 via base a4 (0x102c4340).
  The `sw` at 0x10127cb8 stores 4 bytes to sym(HUB_WAR) +0x0 via base a4 (sym(HUB_WAR)) with value 0x1.
  The `lw` at 0x10127ccc loads 4 bytes from abs 0x102bd764 via base s1 (0x102c4340).
  The `lw` at 0x10127cf8 loads 4 bytes from abs 0x102be1e0 via base a0 (0x102c4340).
  The `lw` at 0x10127cfc loads 4 bytes from sym(KONAINFO) +0x0 via base a0 (sym(KONAINFO)).
  The `lw` at 0x10127d14 loads 4 bytes from abs 0x102bddf4 via base s1 (0x102c4340).
  The `lw` at 0x10127d38 loads 4 bytes from abs 0x102bd458 via base s2 (0x102c4340).
  The `lw` at 0x10127d78 loads 4 bytes from abs 0x102bd45c via base s2 (0x102c4340).
  The `lw` at 0x10127d80 loads 4 bytes from abs 0x102be77c via base s1 (0x102c4340).
  The `lw` at 0x10127d94 loads 4 bytes from sym(pipeFD) +0x0 via base s1 (sym(pipeFD)).
  The `lw` at 0x10127da4 loads 4 bytes from abs 0x102be488 via base t8 (0x102c4340).
  The `lw` at 0x10127da8 loads 4 bytes from sym(Nocrc) +0x0 via base t8 (sym(Nocrc)).
  The `lw` at 0x10127dc0 loads 4 bytes from abs 0x102bd730 via base s0 (0x102c4340).
  The `lw` at 0x10127de0 loads 4 bytes from abs 0x102bd1b0 via base t9 (0x102c4340).
  The `lw` at 0x10127e30 loads 4 bytes from abs 0x102bd1b4 via base t9 (0x102c4340).
  The `lw` at 0x10127e8c loads 4 bytes from abs 0x102be48c via base ra (0x102c4340).
  The `lw` at 0x10127e94 loads 4 bytes from abs 0x102be77c via base a0 (0x102c4340).
  The `sw` at 0x10127e9c stores 4 bytes to sym(KonatestTexRepeat) +0x0 via base ra (sym(KonatestTexRepeat)) with value 0x0.
  The `lw` at 0x10127ea8 loads 4 bytes from sym(pipeFD) +0x0 via base a0 (sym(pipeFD)).
  The `lw` at 0x10127eb4 loads 4 bytes from abs 0x102be448 via base a1 (0x102c4340).
  The `sw` at 0x10127eb8 stores 4 bytes to sym(HUB_WAR) +0x0 via base a1 (sym(HUB_WAR)) with value 0x0.
  The `lw` at 0x10127f14 loads 4 bytes from abs 0x102bd584 via base t9 (0x102c4340).
  The `lw` at 0x10127f18 loads 4 bytes from abs 0x102bd1b8 via base a0 (0x102c4340).
  The `lw` at 0x10127f9c loads 4 bytes from abs 0x102bd1b8 via base v0 (0x102c4340).
  The `lw` at 0x10127fac loads 4 bytes from abs 0x102bd744 via base t9 (0x102c4340).
  The `sd` at 0x10127fc4 stores 8 bytes to abs 0x1020f060 via base v0 (0x1020f060) with value 0xfffff7ffffffffff.
  The `sd` at 0x10127fd0 stores 8 bytes to abs 0x1020f068 via base v0 (0x1020f060) with value 0x7ffffffffff.
  The `jal` at 0x10127c4c calls kt_output_info with a0=0x101bdb78, a1=[a0+364], a2=0x19c768, a3=0x1, a4=0x2, a5=0x4.
  The `jal` at 0x10127c70 calls kt_output_rslt with a0=0x2, a1=0x101bdb90, a2=(unknown), a3=(unknown).
  The `jal` at 0x10127cdc calls kt_code_result with a0=0x2, a1=(unknown), a2=0x1, a3=(unknown).
  The `jal` at 0x10127d1c calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10127d40 calls sginap with a0=0x5, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10127d4c calls fcPioRead32 with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10127d90 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=(unknown).
  The `jal` at 0x10127dd0 calls kt_output_info with a0=0x101bdc28, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10127de4 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10127e04 calls kt_output_info with a0=0x101bdc48, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10127e20 calls kt_output_info with a0=0x101bdc60, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10127e34 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10127e50 calls kt_output_info with a0=0x101bdc78, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10127e74 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10127ea4 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=(unknown).
  The `jal` at 0x10127ef8 calls kt_output_rslt with a0=0x0, a1=0x101bdbf0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10127f20 calls run_crc_testlist with a0=0x1020f070, a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x10127f40 calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10127f5c calls kt_output_rslt with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10127f78 calls kt_output_rslt with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10127fcc calls kt_output_dbug with a0=0x1, a1=0x101bdbb0, a2=0x6, a3=(unknown).
  The `jal` at 0x10127ff8 calls kt_output_rslt with a0=0x0, a1=0x101bdc08, a2=(unknown), a3=(unknown).
  The `beq` at 0x10127c18 goes to 0x10127c80 when s2(=[a0+364]) == a3(=0x1) and falls through when s2(=[a0+364]) != a3(=0x1).
  The `beq` at 0x10127c24 goes to 0x10127c84 when s2(=[a0+364]) == a4(=0x2) and falls through when s2(=[a0+364]) != a4(=0x2).
  The `beq` at 0x10127c30 goes to 0x10127c80 when s2(=[a0+364]) == a5(=0x4) and falls through when s2(=[a0+364]) != a5(=0x4).
  The `beq` at 0x10127c94 goes to 0x10127cbc when ra(=[[sym(KONAINFO)]]) == 0 and falls through when ra(=[[sym(KONAINFO)]]) != 0.
  The `beq` at 0x10127ca8 goes to 0x10127cbc when a2(=[sym(SET_HUB_WAR)]) == 0 and falls through when a2(=[sym(SET_HUB_WAR)]) != 0.
  The `blez` at 0x10127cbc goes to 0x10127d00 when s2(=[a0+364]) <= 0 (signed) and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` at 0x10127cec goes to 0x10127cd0 when s0(unknown) < s2(=[a0+364]) (signed) and falls through when s0(unknown) >= s2(=[a0+364]) (signed).
  The `beq` at 0x10127d08 goes to 0x10127f88 when a1(=[[sym(KONAINFO)]]) == a2(=0x6) and falls through when a1(=[[sym(KONAINFO)]]) != a2(=0x6).
  The `beq` at 0x10127d24 goes to 0x10127d70 when v0(=ret(fcPioRead32)) == 0 and falls through when v0(=ret(fcPioRead32)) != 0.
  The `beq` at 0x10127d54 goes to 0x10127d64 when v0(=ret(fcPioRead32)) == 0 -> outside and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` at 0x10127d60 goes to 0x10127d3c when s0(unknown) < 0x5 (unsigned) and falls through when s0(unknown) >= 0x5 (unsigned).
  The `beq` at 0x10127d68 goes to 0x10127edc when t9(unknown) == 0 and falls through when t9(unknown) != 0.
  The `bltz` at 0x10127d98 goes to 0x10127fdc when v0(=ret(ioctl)) < 0 (signed) and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` at 0x10127dac goes to 0x10127f08 when t8(=[sym(Nocrc)]) == 0 and falls through when t8(=[sym(Nocrc)]) != 0.
  The `beq` at 0x10127dec goes to 0x10127e10 when v0(=ret(0x10128008)) == 0 and falls through when v0(=ret(0x10128008)) != 0.
  The `beq` at 0x10127e3c goes to 0x10127e5c when v0(=ret(0x10128288)) == 0 and falls through when v0(=ret(0x10128288)) != 0.
  The `beq` at 0x10127e5c goes to 0x10127f50 when s1(=one of 0x0, 0x1, 0x2) == 0 and falls through when s1(=one of 0x0, 0x1, 0x2) != 0.
  The `bne` at 0x10127f28 goes to 0x10127f6c when v0(=ret(run_crc_testlist)) != 0 and falls through when v0(=ret(run_crc_testlist)) == 0.
  The return at 0x10127ed4 has v0 = unknown.

- `GEDdecodeOneHotRegisterAddress` in `usr/diags/IR/bin/irsaudit` at 0x1013fa48 (n32).
  It occupies 316 bytes.
  The `lw` at 0x1013fb28 loads 4 bytes from abs 0x102bd744 via base t9 (0x102c4340).
  The `lw` at 0x1013fb3c loads 4 bytes from abs 0x102bd2fc via base a1 (0x102c4340).
  The `lw` at 0x1013fb48 loads 4 bytes from abs 0x102bd394 via base t9 (0x102c4340).
  The `jal` at 0x1013fb38 calls kt_output_dbug with a0=0x1, a1=0x101c13d8, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1013fb4c calls exit with a0=-0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x1013fa68 goes to 0x1013faa8 when a0 < 0x10 (signed) and falls through when a0 >= 0x10 (signed).
  The `bne` at 0x1013fa7c goes to 0x1013fae8 when a2(=a0) < 0x11 (signed) and falls through when a2(=a0) >= 0x11 (signed).
  The `bne` at 0x1013fa88 goes to 0x1013fb54 when a2(=a0) < 0x40 (signed) and falls through when a2(=a0) >= 0x40 (signed).
  The `bne` at 0x1013fa90 goes to 0x1013fb7c when a0(unknown) != 0 and falls through when a0(unknown) == 0.
  The `bne` at 0x1013fa98 goes to 0x1013fb20 when a2(=a0) != a4(=0x80) and falls through when a2(=a0) == a4(=0x80).
  The `bne` at 0x1013fac4 goes to 0x1013fafc when a0 < 0x4 (signed) and falls through when a0 >= 0x4 (signed).
  The `bne` at 0x1013fad0 goes to 0x1013fb74 when a0(unknown) != 0 and falls through when a0(unknown) == 0.
  The `bne` at 0x1013fad8 goes to 0x1013fb20 when a2(=a0) != a5(=0x8) and falls through when a2(=a0) == a5(=0x8).
  The `bne` at 0x1013fafc goes to 0x1013fb64 when a4(unknown) != 0 and falls through when a4(unknown) == 0.
  The `beq` at 0x1013fb04 goes to 0x1013fb24 when a6(unknown) == 0 and falls through when a6(unknown) != 0.
  The `bne` at 0x1013fb54 goes to 0x1013fb24 when a2(unknown) != a5(unknown) and falls through when a2(unknown) == a5(unknown).
  The `bne` at 0x1013fb64 goes to 0x1013fb24 when a2(=a0) != a7(=0x1) and falls through when a2(=a0) == a7(=0x1).
  The return at 0x1013faf4 has v0 = unknown.
  The return at 0x1013fb18 has v0 = 0x36.

- `GEDencodeOneHotRegisterAddress` in `usr/diags/IR/bin/irsaudit` at 0x1013fb84 (n32).
  It occupies 220 bytes.
  The `lw` at 0x1013fba4 loads 4 bytes from abs 0x102bd2fc via base a5 (0x102c4340).
  The `lw` at 0x1013fbc4 loads 4 bytes from table(0x101c1408) +0x0 via base v0 (table(0x101c1408)).
  The `lw` at 0x1013fbe0 loads 4 bytes from abs 0x102bd744 via base t9 (0x102c4340).
  The `lw` at 0x1013fbfc loads 4 bytes from abs 0x102bd2fc via base a0 (0x102c4340).
  The `lw` at 0x1013fc04 loads 4 bytes from abs 0x102bd470 via base t9 (0x102c4340).
  The `jal` at 0x1013fbe8 calls kt_output_dbug with a0=0x1, a1=0x101c1428, a2=a0 at entry (arg0), a3=a3 at entry (arg3), a5=0x101c13d8, a6=0x1847bc.
  The `jalr` at 0x1013fc10 calls __assert with a0=0x101c1468, a1=0x101c1470, a2=0x116, a3=(unknown).
  The `beq` at 0x1013fbbc goes to 0x1013fbd8 when v1(=a0-53) >= 0x8 (unsigned) and falls through when v1(=a0-53) < 0x8 (unsigned).
  The return at 0x1013fc20 has v0 = unknown.
  The return at 0x1013fc58 has v0 = 0x2.

- `tbuWindow` in `usr/diags/IR/bin/irsaudit` at 0x10141248 (n32).
  It occupies 336 bytes.
  The `lw` at 0x101412ac loads 4 bytes from abs 0x102bd310 via base v0 (0x102c4340).
  The `ldc1` at 0x101412b0 loads 8 bytes from abs 0x101c1738 via base v0 (0x101c16a8).
  The `ldc1` at 0x101412c4 loads 8 bytes from abs 0x101c1780 via base v0 (0x101c16a8).
  The `swc1` at 0x101412f4 stores 4 bytes to a0 (arg0 at entry) +0x4 via base a0 (a0).
  The `swc1` at 0x101412fc stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `swc1` at 0x10141300 stores 4 bytes to a0 (arg0 at entry) +0xc via base a0 (a0).
  The `swc1` at 0x10141308 stores 4 bytes to a0 (arg0 at entry) +0x10 via base a0 (a0).
  The `swc1` at 0x1014130c stores 4 bytes to a0 (arg0 at entry) +0x18 via base a0 (a0).
  The `swc1` at 0x10141310 stores 4 bytes to a0 (arg0 at entry) +0x1c via base a0 (a0).
  The `swc1` at 0x10141314 stores 4 bytes to a0 (arg0 at entry) +0x30 via base a0 (a0).
  The `swc1` at 0x10141318 stores 4 bytes to a0 (arg0 at entry) +0x34 via base a0 (a0).
  The `lwc1` at 0x1014131c loads 4 bytes from abs 0x101c1734 via base v0 (0x101c16a8).
  The `swc1` at 0x10141320 stores 4 bytes to a0 (arg0 at entry) +0x3c via base a0 (a0).
  The `swc1` at 0x10141324 stores 4 bytes to a0 (arg0 at entry) +0x2c via base a0 (a0) with value 0xffffffffbf800000.
  The `swc1` at 0x10141328 stores 4 bytes to a0 (arg0 at entry) +0x20 via base a0 (a0).
  The `swc1` at 0x1014132c stores 4 bytes to a0 (arg0 at entry) +0x24 via base a0 (a0).
  The `swc1` at 0x10141330 stores 4 bytes to a0 (arg0 at entry) +0x28 via base a0 (a0).
  The `swc1` at 0x1014133c stores 4 bytes to a0 (arg0 at entry) +0x14 via base a0 (a0).
  The `swc1` at 0x10141340 stores 4 bytes to a0 (arg0 at entry) +0x0 via base a0 (a0).
  The `swc1` at 0x10141350 stores 4 bytes to a0 (arg0 at entry) +0x38 via base a0 (a0).
  The `lw` at 0x10141370 loads 4 bytes from abs 0x102bd310 via base a1 (0x102c4340).
  The `lw` at 0x1014137c loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x10141380 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `jalr` at 0x10141388 calls fprintf with a0=sym(__iob)+32, a1=0x101c1748, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bc1t` at 0x10141270 goes to 0x10141360 when f6 == f4 (c.eq.d at 0x10141254) and falls through when not (f6 == f4 (c.eq.d at 0x10141254)).
  The `bc1t` at 0x10141288 goes to 0x10141364 when f8 == f4 (c.eq.d at 0x10141280) and falls through when not (f8 == f4 (c.eq.d at 0x10141280)).
  The `bc1t` at 0x101412a0 goes to 0x10141360 when f10 == f4 (c.eq.d at 0x10141298) and falls through when not (f10 == f4 (c.eq.d at 0x10141298)).
  The return at 0x1014134c has v0 = 0x101c16a8.
  The return at 0x10141358 has v0 = ret(fprintf).

- `__glXBindHWContextToWindow` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd810634 (o32).
  It occupies 748 bytes.
  The instructions from 0xd810764 to 0xd810764 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd810800 to 0xd810800 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd81083c to 0xd81083c are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0xd810644 loads 4 bytes from abs 0xd845c98 via base gp (0xd84d8d0).
  The `lw` at 0xd810650 loads 4 bytes from a0 (arg0 at entry) +0x4c via base a0 (a0).
  The 2 such `lw` accesses load 4 bytes from abs 0x1014 via base zero (0x0), including `lw` at 0xd810668, `lw` at 0xd8106d8.
  The 41 such `lw` accesses load 4 bytes from unknown (base unknown) via base v1 (unknown), including `lw` at 0xd810670, `lw` at 0xd810690, `lw` at 0xd8106d4.
  The `lw` at 0xd810674 loads 4 bytes from [0x1014] +0x0 via base t6 ([0x1014]).
  The 3 such `lw` accesses load 4 bytes from abs 0xd8458e8 via base gp (0xd84d8d0), including `lw` at 0xd810688, `lw` at 0xd810774, `lw` at 0xd810858.
  The 3 such `lw` accesses load 4 bytes from abs 0xd8458f4 via base gp (0xd84d8d0), including `lw` at 0xd8106b4, `lw` at 0xd8107ac, `lw` at 0xd81089c.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14 via base a0 (a0), including `lw` at 0xd8106b8, `lw` at 0xd8107b0.
  The `sw` at 0xd8106dc stores 4 bytes to [0x1014] +0x0 via base t0 ([0x1014]).
  The `sb` at 0xd8106e8 stores 1 byte to unknown (base unknown) via base v1 (unknown) with value 0x0.
  The `lw` at 0xd810724 loads 4 bytes from unknown (base unknown) via base t7 (unknown).
  The 2 such `lw` accesses load 4 bytes from unknown (base unknown) via base t3 (unknown), including `lw` at 0xd810768, `lw` at 0xd810860.
  The 2 such `lw` accesses load 4 bytes from unknown (base unknown) via base t5 (unknown), including `lw` at 0xd81077c, `lw` at 0xd810874.
  The 2 such `lw` accesses load 4 bytes from unknown (base unknown) via base v0 (unknown), including `lw` at 0xd8107d4, `lw` at 0xd8108c8.
  The 3 such `sb` accesses store 1 byte to unknown (base unknown) via base v1 (unknown) with value 0x1, including `sb` at 0xd8107e0, `sb` at 0xd8108d0, `sb` at 0xd8108e8.
  The 2 such `sw` accesses store 4 bytes to unknown (base unknown) via base v0 (unknown), including `sw` at 0xd8107e8, `sw` at 0xd8108f0.
  The 4 such `sw` accesses store 4 bytes to unknown (base unknown) via base v1 (unknown), including `sw` at 0xd8107f4, `sw` at 0xd8107fc, `sw` at 0xd810908.
  The `lw` at 0xd810840 loads 4 bytes from unknown (base unknown) via base t8 (unknown).
  The 2 such `lw` accesses load 4 bytes from unknown (base unknown) via base t1 (unknown), including `lw` at 0xd81084c, `lw` at 0xd8108dc.
  The `lw` at 0xd8108a4 loads 4 bytes from a0 (arg0 at entry) +0x14 via base t9 (a0).
  The `sw` at 0xd8108fc stores 4 bytes to unknown (base unknown) via base t6 (unknown).
  The `jalr` at 0xd81065c calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd810698 calls Ioctl with a0=(unknown), a1=0x3ea, a2=sp-12, a3=(unknown).
  The `jalr` at 0xd8106c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd841624, a2=(unknown), a3=(unknown).
  The `jalr` at 0xd810790 calls Ioctl with a0=(unknown), a1=0x3eb, a2=sp-24, a3=(unknown).
  The `jalr` at 0xd8107b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd84163c, a2=(unknown), a3=(unknown).
  The `jalr` at 0xd810880 calls Ioctl with a0=(unknown), a1=0x400, a2=sp-44, a3=(unknown).
  The `jalr` at 0xd8108ac calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd841654, a2=(unknown), a3=(unknown).
  The `beq` at 0xd810680 goes to 0xd8106e4 when t7(=[[0x1014]]) == a3(unknown) and falls through when t7(=[[0x1014]]) != a3(unknown).
  The `bgez` at 0xd8106a4 goes to 0xd8106d4 when v0(=ret(Ioctl)) >= 0 (signed) and falls through when v0(=ret(Ioctl)) < 0 (signed).
  The `bne` at 0xd8106e4 goes to 0xd81070c when v0(unknown) != 0 and falls through when v0(unknown) == 0.
  The `bnel` at 0xd8106f4 goes to 0xd810710 when t1(unknown) != t2(unknown) and falls through when t1(unknown) == t2(unknown).
  The `beql` at 0xd810704 goes to 0xd810914 when t3(unknown) == t4(unknown) and falls through when t3(unknown) != t4(unknown).
  The `beql` at 0xd810714 goes to 0xd810734 when t5(unknown) == t6(unknown) and falls through when t5(unknown) != t6(unknown).
  The `bnel` at 0xd810728 goes to 0xd810804 when t9(unknown) != at(=0x3) and falls through when t9(unknown) == at(=0x3).
  The `beql` at 0xd810740 goes to 0xd810768 when t0(unknown) >= 0x2 (signed) and falls through when t0(unknown) < 0x2 (signed).
  The `beql` at 0xd810750 goes to 0xd810768 when t1(unknown) >= 0x3 (signed) and falls through when t1(unknown) < 0x3 (signed).
  The `bne` at 0xd8107a0 goes to 0xd8107c8 when v0(=ret(Ioctl)) != at(=-0x1) and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `beql` at 0xd8107d8 goes to 0xd8107f0 when t7(unknown) == t8(unknown) and falls through when t7(unknown) != t8(unknown).
  The `bnel` at 0xd810810 goes to 0xd810840 when t5(unknown) != at(=0x1) and falls through when t5(unknown) == at(=0x1).
  The `beql` at 0xd810820 goes to 0xd810840 when t6(unknown) >= 0x3 (signed) and falls through when t6(unknown) < 0x3 (signed).
  The `bne` at 0xd810890 goes to 0xd8108bc when v0(=ret(Ioctl)) != at(=-0x1) and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `bnel` at 0xd8108cc goes to 0xd8108ec when t7(unknown) != t8(unknown) and falls through when t7(unknown) == t8(unknown).
  The `beql` at 0xd8108e0 goes to 0xd810904 when t0(unknown) == t2(unknown) and falls through when t0(unknown) != t2(unknown).
  The return at 0xd810918 has v0 = unknown.

- `glXCreateWindow` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd837a78 (o32).
  It occupies 408 bytes.
  The `lw` at 0xd837a88 loads 4 bytes from abs 0xd845d04 via base gp (0xd84d8d0).
  The 4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0 via base s0 (a0), including `lw` at 0xd837ac8, `lw` at 0xd837ad4, `lw` at 0xd837af0.
  The `lw` at 0xd837acc loads 4 bytes from a3 (arg3 at entry) +0x0 via base a3 (a3).
  The `lw` at 0xd837ae0 loads 4 bytes from a3 (arg3 at entry) +0x8 via base v0 (a3).
  The `lw` at 0xd837aec loads 4 bytes from unknown (base unknown) via base v0 (unknown).
  The 4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c via base s0 (a0), including `lw` at 0xd837af8, `lw` at 0xd837b10, `lw` at 0xd837b3c.
  The `lw` at 0xd837afc loads 4 bytes from [a0+1232] +0x0 via base a1 ([a0+1232]).
  The `lw` at 0xd837b14 loads 4 bytes from a0 (arg0 at entry) +0x70 via base s0 (a0).
  The `lw` at 0xd837b28 loads 4 bytes from abs 0xd845a80 via base gp (0xd84d8d0).
  The `sw` at 0xd837b44 stores 4 bytes to a0 (arg0 at entry) +0x64 via base s0 (a0) with value [a0+108].
  The `sh` at 0xd837b50 stores 2 bytes to [a0+108] +0x2 via base v0 ([a0+108]) with value 0x6.
  The `sb` at 0xd837b54 stores 1 byte to [a0+108] +0x0 via base v0 ([a0+108]) with value 0x1f.
  The `lw` at 0xd837b58 loads 4 bytes from a0 (arg0 at entry) +0x60 via base s0 (a0).
  The `sw` at 0xd837b6c stores 4 bytes to a0 (arg0 at entry) +0x6c via base s0 (a0) with value [a0+108]+24.
  The `sw` at 0xd837b70 stores 4 bytes to a0 (arg0 at entry) +0x60 via base s0 (a0) with value [a0+96]+1.
  The `sb` at 0xd837b78 stores 1 byte to [a0+108] +0x1 via base v0 ([a0+108]) with value 0x1f.
  The `sb` at 0xd837b7c stores 1 byte to [a0+108] +0x0 via base v0 ([a0+108]).
  The `lw` at 0xd837b80 loads 4 bytes from a1 (arg1 at entry) +0x24 via base a2 (a1).
  The `sw` at 0xd837b84 stores 4 bytes to [a0+108] +0x4 via base v0 ([a0+108]) with value [a1+36].
  The `lw` at 0xd837b88 loads 4 bytes from a1 (arg1 at entry) +0x48 via base a2 (a1).
  The `sw` at 0xd837b8c stores 4 bytes to [a0+108] +0x8 via base v0 ([a0+108]) with value [a1+72].
  The `sw` at 0xd837b94 stores 4 bytes to [a0+108] +0xc via base v0 ([a0+108]) with value a2.
  The `lw` at 0xd837b9c loads 4 bytes from a0 (arg0 at entry) +0x2c via base s0 (a0).
  The `sw` at 0xd837bb4 stores 4 bytes to unknown (base unknown) via base v1 (unknown) with value ret(unknown).
  The `sw` at 0xd837bb8 stores 4 bytes to unknown (base unknown) via base v1 (unknown) with value 0x0.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c via base s0 (a0), including `lw` at 0xd837bc4, `lw` at 0xd837bdc.
  The `lw` at 0xd837bc8 loads 4 bytes from [a0+1232] +0x4 via base a1 ([a0+1232]).
  The `jalr` at 0xd837aa4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd837b04 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=(unknown), a3=a3 at entry (arg3).
  The `jalr` at 0xd837b30 calls _XFlush with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0xd837ba0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x1f, a2=a1 at entry (arg1), a3=(unknown).
  The `jalr` at 0xd837bd0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=(unknown), a3=(unknown).
  The `jalr` at 0xd837bec calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0xd837ab4 goes to 0xd837ac4 when v0(=ret(__glXSetupForCommand)) != 0 and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beql` at 0xd837ac4 goes to 0xd837af4 when a3 == 0 and falls through when a3 != 0.
  The `beql` at 0xd837ad0 goes to 0xd837af4 when v1(=[a3]) == 0 and falls through when v1(=[a3]) != 0.
  The `beq` at 0xd837ad8 goes to 0xd837af0 when v1(=[a3]) == 0 and falls through when v1(=[a3]) != 0.
  The `bnel` at 0xd837ae8 goes to 0xd837ae4 when t6(unknown) != 0 and falls through when t6(unknown) == 0.
  The `beql` at 0xd837af4 goes to 0xd837b14 when a1(=[a0+1232]) == 0 and falls through when a1(=[a0+1232]) != 0.
  The `beql` at 0xd837b20 goes to 0xd837b44 when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned) and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned).
  The `beql` at 0xd837bc0 goes to 0xd837be0 when a1(=[a0+1232]) == 0 and falls through when a1(=[a0+1232]) != 0.
  The `beql` at 0xd837be4 goes to 0xd837bfc when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  The return at 0xd837c08 has v0 = unknown.

- `glXDestroyWindow` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd837c10 (o32).
  It occupies 280 bytes.
  The `lw` at 0xd837c1c loads 4 bytes from abs 0xd845d04 via base gp (0xd84d8d0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0 via base s0 (a0), including `lw` at 0xd837c48, `lw` at 0xd837cd8.
  The 4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c via base s0 (a0), including `lw` at 0xd837c50, `lw` at 0xd837c68, `lw` at 0xd837c94.
  The `lw` at 0xd837c54 loads 4 bytes from [a0+1232] +0x0 via base v1 ([a0+1232]).
  The `lw` at 0xd837c6c loads 4 bytes from a0 (arg0 at entry) +0x70 via base s0 (a0).
  The 2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64 via base s0 (a0) with value [a0+108], including `sw` at 0xd837c7c, `sw` at 0xd837c98.
  The `lw` at 0xd837c80 loads 4 bytes from abs 0xd845a80 via base gp (0xd84d8d0).
  The `sh` at 0xd837ca4 stores 2 bytes to [a0+108] +0x2 via base a0 ([a0+108]) with value 0x2.
  The `sb` at 0xd837ca8 stores 1 byte to [a0+108] +0x0 via base a0 ([a0+108]) with value 0x20.
  The `lw` at 0xd837cac loads 4 bytes from a0 (arg0 at entry) +0x60 via base s0 (a0).
  The `sw` at 0xd837cbc stores 4 bytes to a0 (arg0 at entry) +0x6c via base s0 (a0) with value [a0+108]+8.
  The `sw` at 0xd837cc0 stores 4 bytes to a0 (arg0 at entry) +0x60 via base s0 (a0) with value [a0+96]+1.
  The `sb` at 0xd837cc8 stores 1 byte to [a0+108] +0x1 via base a0 ([a0+108]) with value 0x20.
  The `sb` at 0xd837ccc stores 1 byte to [a0+108] +0x0 via base a0 ([a0+108]).
  The `sw` at 0xd837cd4 stores 4 bytes to [a0+108] +0x4 via base a0 ([a0+108]) with value a1.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c via base s0 (a0), including `lw` at 0xd837ce0, `lw` at 0xd837cf8.
  The `lw` at 0xd837ce4 loads 4 bytes from [a0+1232] +0x4 via base v1 ([a0+1232]).
  The `jalr` at 0xd837c34 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd837c5c calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0xd837c88 calls _XFlush with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0xd837cec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x20, a2=(unknown), a3=(unknown).
  The `jalr` at 0xd837d08 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0xd837c40 goes to 0xd837d14 when v0(=ret(__glXSetupForCommand)) == 0 and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` at 0xd837c4c goes to 0xd837c6c when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  The `beql` at 0xd837c78 goes to 0xd837c9c when t6(=[a0+112]) >= t7(=[a0+108]+8) (unsigned) and falls through when t6(=[a0+112]) < t7(=[a0+108]+8) (unsigned).
  The `beql` at 0xd837cdc goes to 0xd837cfc when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  The `beql` at 0xd837d00 goes to 0xd837d18 when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  The return at 0xd837d20 has v0 = unknown.

- `glXBindChannelToWindowSGIX` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd839e08 (o32).
  It occupies 324 bytes.
  The `lw` at 0xd839e18 loads 4 bytes from abs 0x1014 via base zero (0x0).
  The `lw` at 0xd839e1c loads 4 bytes from abs 0xd845d00 via base gp (0xd84d8d0).
  The `lw` at 0xd839e38 loads 4 bytes from [0x1014] +0x114 via base t6 ([0x1014]).
  The `lw` at 0xd839e54 loads 4 bytes from abs 0xd8458f4 via base gp (0xd84d8d0).
  The `lw` at 0xd839e80 loads 4 bytes from abs 0xd845ba0 via base gp (0xd84d8d0).
  The `lw` at 0xd839eb4 loads 4 bytes from abs 0xd845a90 via base gp (0xd84d8d0).
  The `sb` at 0xd839eec stores 1 byte to unknown (base unknown) via base v1 (unknown).
  The `lw` at 0xd839ef8 loads 4 bytes from unknown (base unknown) via base t7 (unknown).
  The `lw` at 0xd839efc loads 4 bytes from unknown (base unknown) via base t8 (unknown).
  The `lw` at 0xd839f08 loads 4 bytes from unknown (base unknown) via base v1 (unknown).
  The `sb` at 0xd839f30 stores 1 byte to unknown (base unknown) via base v1 (unknown) with value 0x0.
  The `jalr` at 0xd839e40 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd839e68 calls __glXInitChannelRectState with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd839ea0 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64.
  The `jalr` at 0xd839eb8 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0xd839f10 calls (unknown callee) with a0=(unknown), a1=0x1, a2=(unknown), a3=(unknown).
  The `beq` at 0xd839e4c goes to 0xd839f38 when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` at 0xd839e70 goes to 0xd839f38 when v0(=ret(__glXInitChannelRectState)) == 0 and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` at 0xd839ee8 goes to 0xd839f20 when (t5(unknown) & 0xff) == 0 and falls through when (t5(unknown) & 0xff) != 0.
  The `beql` at 0xd839f00 goes to 0xd839f3c when v0(unknown) == 0 and falls through when v0(unknown) != 0.
  The `bnel` at 0xd839f28 goes to 0xd839f38 when t9(=a3) != 0 and falls through when t9(=a3) == 0.
  The return at 0xd839f44 has v0 = unknown.

- `__glChangeWindowSize` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d1d7c (o32).
  It occupies 280 bytes.
  The `sw` at 0xd9d1da4 stores 4 bytes to a0 (arg0 at entry) +0xe74 via base a0 (a0) with value a1.
  The `sw` at 0xd9d1da8 stores 4 bytes to a0 (arg0 at entry) +0xe78 via base a0 (a0) with value a2.
  The `lw` at 0xd9d1dac loads 4 bytes from a0 (arg0 at entry) +0x77f8 via base a0 (a0).
  The `lw` at 0xd9d1db8 loads 4 bytes from [a0+30712] +0x38 via base a0 ([a0+30712]).
  The `lbu` at 0xd9d1dc4 loads 1 byte from a0 (arg0 at entry) +0xc96 via base s0 (a0).
  The 2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc98 via base s0 (a0), including `lbu` at 0xd9d1dd0, `lbu` at 0xd9d1df0.
  The `lw` at 0xd9d1dd4 loads 4 bytes from a0 (arg0 at entry) +0x77fc via base s0 (a0).
  The `lw` at 0xd9d1de0 loads 4 bytes from [a0+30716] +0x38 via base a0 ([a0+30716]).
  The 3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc99 via base s0 (a0), including `lbu` at 0xd9d1df8, `lbu` at 0xd9d1e04, `lbu` at 0xd9d1e20.
  The `lw` at 0xd9d1dfc loads 4 bytes from a0 (arg0 at entry) +0x7ac8 via base s0 (a0).
  The `lw` at 0xd9d1e08 loads 4 bytes from a0 (arg0 at entry) +0x7af0 via base s0 (a0).
  The 2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc9a via base s0 (a0), including `lbu` at 0xd9d1e28, `lbu` at 0xd9d1e44.
  The `lw` at 0xd9d1e2c loads 4 bytes from a0 (arg0 at entry) +0x7a6c via base s0 (a0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2ec4 via base s0 (a0), including `lw` at 0xd9d1e4c, `lw` at 0xd9d1e68.
  The `lw` at 0xd9d1e50 loads 4 bytes from a0 (arg0 at entry) +0x79f4 via base s0 (a0).
  The `jalr` at 0xd9d1dbc calls (unknown callee) with a0=[a0+30712], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d1de4 calls (unknown callee) with a0=[a0+30716], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0xd9d1e14 calls (unknown callee) with a0=a0+31416, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0xd9d1e38 calls (unknown callee) with a0=a0+31284, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0xd9d1e5c calls (unknown callee) with a0=a0+31164, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0xd9d1e70 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beql` at 0xd9d1dcc goes to 0xd9d1df4 when t6(=[a0+3222]:1) == 0 and falls through when t6(=[a0+3222]:1) != 0.
  The `beql` at 0xd9d1df4 goes to 0xd9d1e24 when t7(=[a0+3224]:1) == 0 and falls through when t7(=[a0+3224]:1) != 0.
  The `beql` at 0xd9d1e00 goes to 0xd9d1e24 when t8(=[a0+31432]) == 0 and falls through when t8(=[a0+31432]) != 0.
  The `beql` at 0xd9d1e24 goes to 0xd9d1e48 when t0(=[a0+3225]:1) == 0 and falls through when t0(=[a0+3225]:1) != 0.
  The `beql` at 0xd9d1e48 goes to 0xd9d1e6c when t1(=[a0+3226]:1) == 0 and falls through when t1(=[a0+3226]:1) != 0.
  The return at 0xd9d1e8c has v0 = ret(unknown).

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d1e94 (o32).
  It occupies 12 bytes.
  The `sw` at 0xd9d1e94 stores 4 bytes to a0 (arg0 at entry) +0xe7c via base a0 (a0) with value a1.
  The `sw` at 0xd9d1e9c stores 4 bytes to a0 (arg0 at entry) +0xe80 via base a0 (a0) with value a2.
  The return at 0xd9d1e98 has v0 = unknown.

- `__glFindWindowSize` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d1ea0 (o32).
  It occupies 252 bytes.
  The instructions from 0xd9d1f38 to 0xd9d1f38 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0xd9d1ec8 loads 4 bytes from a0 (arg0 at entry) +0x1c via base s0 (a0).
  The `lw` at 0xd9d1ee0 loads 4 bytes from a0 (arg0 at entry) +0xe74 via base s0 (a0).
  The `lw` at 0xd9d1ef4 loads 4 bytes from a0 (arg0 at entry) +0xe78 via base s0 (a0).
  The 2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xdd0 via base s0 (a0), including `lbu` at 0xd9d1efc, `lbu` at 0xd9d1f18.
  The `lw` at 0xd9d1f00 loads 4 bytes from abs 0xda84c3c via base gp (0xda8bc00).
  The `lw` at 0xd9d1f24 loads 4 bytes from a0 (arg0 at entry) +0x48 via base s0 (a0).
  The `lw` at 0xd9d1f54 loads 4 bytes from a0 (arg0 at entry) +0xe7c via base s0 (a0).
  The `lw` at 0xd9d1f64 loads 4 bytes from a0 (arg0 at entry) +0xe80 via base s0 (a0).
  The `lw` at 0xd9d1f70 loads 4 bytes from abs 0xda84c40 via base gp (0xda8bc00).
  The `jalr` at 0xd9d1ed4 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-4, a2=sp-8, a3=sp-12.
  The `jalr` at 0xd9d1f0c calls __glChangeWindowSize with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0xd9d1f44 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-20, a2=sp-24, a3=(unknown).
  The `jalr` at 0xd9d1f7c calls __glChangeReadWindowSize with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0xd9d1eec goes to 0xd9d1f00 when t7(unknown) != t8(=[a0+3700]) and falls through when t7(unknown) == t8(=[a0+3700]).
  The `beql` at 0xd9d1ef8 goes to 0xd9d1f1c when t0(unknown) == t1(=[a0+3704]) and falls through when t0(unknown) != t1(=[a0+3704]).
  The `beql` at 0xd9d1f20 goes to 0xd9d1f3c when t2(=[a0+3536]:1) == 0 and falls through when t2(=[a0+3536]:1) != 0.
  The `bne` at 0xd9d1f5c goes to 0xd9d1f70 when t5(unknown) != t6(=[a0+3708]) and falls through when t5(unknown) == t6(=[a0+3708]).
  The `beql` at 0xd9d1f68 goes to 0xd9d1f8c when t7(unknown) == t8(=[a0+3712]) and falls through when t7(unknown) != t8(=[a0+3712]).
  The return at 0xd9d1f94 has v0 = unknown.

- `__glXBindHWContextToWindow` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd80e93c (n32).
  It occupies 692 bytes.
  The instructions from 0xd80eaf8 to 0xd80eaf8 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0xd80e954 loads 4 bytes from abs 0xd846520 via base gp (0xd84e158).
  The `lw` at 0xd80e968 loads 4 bytes from a0 (arg0 at entry) +0x4c via base a0 (a0).
  The 2 such `lw` accesses load 4 bytes from abs 0x1014 via base zero (0x0), including `lw` at 0xd80e96c, `lw` at 0xd80eb58.
  The 3 such `lw` accesses load 4 bytes from [a0+76] +0xcc via base s0 ([a0+76]), including `lw` at 0xd80e970, `lw` at 0xd80eb5c, `lw` at 0xd80eb6c.
  The `lw` at 0xd80e974 loads 4 bytes from [0x1014] +0x0 via base v1 ([0x1014]).
  The 2 such `lw` accesses load 4 bytes from abs 0xd846170 via base gp (0xd84e158), including `lw` at 0xd80e97c, `lw` at 0xd80e9a0.
  The 6 such `lw` accesses load 4 bytes from [a0+76] +0xe0 via base s0 ([a0+76]), including `lw` at 0xd80e980, `lw` at 0xd80ea64, `lw` at 0xd80ead8.
  The `lw` at 0xd80e984 loads 4 bytes from [a0+76] +0xf0 via base s0 ([a0+76]).
  The 6 such `lw` accesses load 4 bytes from [a0+76] +0xdc via base s0 ([a0+76]), including `lw` at 0xd80e988, `lw` at 0xd80ea68, `lw` at 0xd80eadc.
  The 2 such `sb` accesses store 1 byte to [a0+76] +0xf4 via base s0 ([a0+76]) with value 0x0, including `sb` at 0xd80e990, `sb` at 0xd80eb74.
  The `lw` at 0xd80e994 loads 4 bytes from [a0+76] +0xec via base s0 ([a0+76]).
  The 5 such `lw` accesses load 4 bytes from [a0+76] +0xe8 via base s0 ([a0+76]), including `lw` at 0xd80e9ac, `lw` at 0xd80e9e0, `lw` at 0xd80e9f8.
  The `lw` at 0xd80e9b0 loads 4 bytes from [[a0+76]+232] +0x2c via base ra ([[a0+76]+232]).
  The 2 such `lw` accesses load 4 bytes from [a0+76] +0x11c via base s0 ([a0+76]), including `lw` at 0xd80e9c4, `lw` at 0xd80eb10.
  The 2 such `lw` accesses load 4 bytes from [a0+76] +0x120 via base s0 ([a0+76]), including `lw` at 0xd80e9c8, `lw` at 0xd80eb14.
  The 6 such `lw` accesses load 4 bytes from [a0+76] +0xe4 via base s0 ([a0+76]), including `lw` at 0xd80e9d4, `lw` at 0xd80e9ec, `lw` at 0xd80ea2c.
  The `lw` at 0xd80e9d8 loads 4 bytes from [[a0+76]+228] +0x24 via base v1 ([[a0+76]+228]).
  The `lw` at 0xd80e9e4 loads 4 bytes from [[a0+76]+232] +0x24 via base v0 ([[a0+76]+232]).
  The `lw` at 0xd80e9f0 loads 4 bytes from [[a0+76]+228] +0x4 via base a1 ([[a0+76]+228]).
  The `lw` at 0xd80e9fc loads 4 bytes from [[a0+76]+232] +0x4 via base a0 ([[a0+76]+232]).
  The 3 such `lw` accesses load 4 bytes from [a0+76] +0x24 via base s0 ([a0+76]), including `lw` at 0xd80ea10, `lw` at 0xd80eaa4, `lw` at 0xd80eb4c.
  The 2 such `lw` accesses load 4 bytes from [[a0+76]+228] +0x4 via base a0 ([[a0+76]+228]), including `lw` at 0xd80ea30, `lw` at 0xd80eabc.
  The `lw` at 0xd80ea40 loads 4 bytes from [[a0+76]+232] +0x4 via base a5 ([[a0+76]+232]).
  The 2 such `sb` accesses store 1 byte to [a0+76] +0xf4 via base s0 ([a0+76]) with value 0x1, including `sb` at 0xd80ea4c, `sb` at 0xd80eac8.
  The 2 such `sw` accesses store 4 bytes to [[a0+76]+228] +0x4 via base a0 ([[a0+76]+228]), including `sw` at 0xd80ea54, `sw` at 0xd80ead0.
  The `sw` at 0xd80ea60 stores 4 bytes to [[a0+76]+232] +0x4 via base a7 ([[a0+76]+232]).
  The 2 such `sw` accesses store 4 bytes to [a0+76] +0xec via base s0 ([a0+76]) with value [[a0+76]+220], including `sw` at 0xd80ea6c, `sw` at 0xd80eae4.
  The 2 such `sw` accesses store 4 bytes to [a0+76] +0xf0 via base s0 ([a0+76]) with value [[a0+76]+224], including `sw` at 0xd80ea70, `sw` at 0xd80eae8.
  The `lw` at 0xd80ea84 loads 4 bytes from [[a0+76]+228] +0x24 via base t8 ([[a0+76]+228]).
  The `lw` at 0xd80ea90 loads 4 bytes from [[a0+76]+228] +0x4 via base ra ([[a0+76]+228]).
  The `sw` at 0xd80eb60 stores 4 bytes to [0x1014] +0x0 via base at ([0x1014]) with value [[a0+76]+204].
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14 via base t9 (a0), including `lw` at 0xd80eb98, `lw` at 0xd80ebb8, `lw` at 0xd80ebd8.
  The 3 such `lw` accesses load 4 bytes from abs 0xd84617c via base gp (0xd84e158), including `lw` at 0xd80eb9c, `lw` at 0xd80ebbc, `lw` at 0xd80ebdc.
  The `jalr` at 0xd80e964 calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd80ea0c calls (unknown callee) with a0=[[a0+76]+36], a1=0x400, a2=sp-56, a3=[[a0+76]+224], a4=[[a0+76]+204].
  The `bgezall` at 0xd80eaa0 calls (unknown callee) with a0=[[a0+76]+36], a1=0x3eb, a2=sp-72, a3=[[a0+76]+224], a4=[[a0+76]+204].
  The `bgezall` at 0xd80eb48 calls (unknown callee) with a0=[[a0+76]+36], a1=0x3ea, a2=sp-80, a3=(unknown), a4=[[a0+76]+204].
  The `jalr` at 0xd80eba0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8428c0, a2=(unknown), a3=(unknown).
  The `jalr` at 0xd80ebc0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8428f8, a2=0x1, a3=(unknown).
  The `jalr` at 0xd80ebe0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8428d8, a2=-0x1, a3=(unknown).
  The `bne` at 0xd80e978 goes to 0xd80eb38 when v1(=[[0x1014]]) != a4(=[[a0+76]+204]) and falls through when v1(=[[0x1014]]) == a4(=[[a0+76]+204]).
  The `bne` at 0xd80e98c goes to 0xd80e9a0 when a0(=[[a0+76]+240]) != a3(=[[a0+76]+224]) and falls through when a0(=[[a0+76]+240]) == a3(=[[a0+76]+224]).
  The `beq` at 0xd80e998 goes to 0xd80eafc when a1(=[[a0+76]+236]) == a2(=[[a0+76]+220]) and falls through when a1(=[[a0+76]+236]) != a2(=[[a0+76]+220]).
  The `beq` at 0xd80e9a4 goes to 0xd80eb0c when a3(=[[a0+76]+224]) == a2(=[[a0+76]+220]) and falls through when a3(=[[a0+76]+224]) != a2(=[[a0+76]+220]).
  The `beq` at 0xd80e9b8 goes to 0xd80eb0c when ra(=[[[a0+76]+232]+44]) == at(=0x3) and falls through when ra(=[[[a0+76]+232]+44]) != at(=0x3).
  The `beq` at 0xd80e9cc goes to 0xd80eb78 when at(=[[a0+76]+284]) == a2(=0x1) and falls through when at(=[[a0+76]+284]) != a2(=0x1).
  The `beq` at 0xd80ea24 goes to 0xd80ebd0 when v0(=ret(0xd80e4c4)) == a2(=-0x1) and falls through when v0(=ret(0xd80e4c4)) != a2(=-0x1).
  The `bne` at 0xd80ea38 goes to 0xd80ea4c when a3(=[[[a0+76]+228]+4]) != a4(unknown) and falls through when a3(=[[[a0+76]+228]+4]) == a4(unknown).
  The `beq` at 0xd80ea44 goes to 0xd80ea64 when a5(=[[[a0+76]+232]+4]) == a6(unknown) and falls through when a5(=[[[a0+76]+232]+4]) != a6(unknown).
  The `beq` at 0xd80eaac goes to 0xd80ebb0 when v0(=ret(0xd80e4c4)) == at(=-0x1) and falls through when v0(=ret(0xd80e4c4)) != at(=-0x1).
  The `beq` at 0xd80eac0 goes to 0xd80ead8 when v0(=[[[a0+76]+228]+4]) == v1(unknown) and falls through when v0(=[[[a0+76]+228]+4]) != v1(unknown).
  The `beq` at 0xd80eb1c goes to 0xd80ea80 when a5(=[[a0+76]+284]) >= 0x2 (signed) and falls through when a5(=[[a0+76]+284]) < 0x2 (signed).
  The `beq` at 0xd80eb24 goes to 0xd80ea80 when a6(unknown) == 0 and falls through when a6(unknown) != 0.
  The `bltz` at 0xd80eb50 goes to 0xd80eb94 when v0(=ret(0xd80e4c4)) < 0 (signed) and falls through when v0(=ret(0xd80e4c4)) >= 0 (signed).
  The `beq` at 0xd80eb78 goes to 0xd80e9d4 when v0(unknown) == 0 and falls through when v0(unknown) != 0.
  The return at 0xd80ea78 has v0 = ret(0xd80e4c4).
  The return at 0xd80eaf0 has v0 = [[[a0+76]+228]+4].
  The return at 0xd80eb04 has v0 = unknown.

- `glXCreateWindow` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83b8b4 (n32).
  It occupies 328 bytes.
  The `lw` at 0xd83b8cc loads 4 bytes from abs 0xd84658c via base gp (0xd84e158).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0 via base s0 (a0), including `lw` at 0xd83b8f4, `lw` at 0xd83b994.
  The `lw` at 0xd83b900 loads 4 bytes from [a0+1232] +0x0 via base a5 ([a0+1232]).
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c via base s0 (a0), including `lw` at 0xd83b90c, `lw` at 0xd83b948, `lw` at 0xd83b9e4.
  The `lw` at 0xd83b910 loads 4 bytes from a0 (arg0 at entry) +0x70 via base s0 (a0).
  The `lw` at 0xd83b920 loads 4 bytes from abs 0xd84630c via base gp (0xd84e158).
  The `sw` at 0xd83b930 stores 4 bytes to a0 (arg0 at entry) +0x64 via base s0 (a0) with value [a0+108].
  The `sh` at 0xd83b938 stores 2 bytes to [a0+108] +0x2 via base v0 ([a0+108]) with value 0x6.
  The `sb` at 0xd83b940 stores 1 byte to [a0+108] +0x0 via base v0 ([a0+108]) with value 0x1f.
  The `lw` at 0xd83b944 loads 4 bytes from a0 (arg0 at entry) +0x60 via base s0 (a0).
  The `sw` at 0xd83b950 stores 4 bytes to a0 (arg0 at entry) +0x60 via base s0 (a0) with value [a0+96]+1.
  The `sw` at 0xd83b958 stores 4 bytes to a0 (arg0 at entry) +0x6c via base s0 (a0) with value [a0+108]+24.
  The `sb` at 0xd83b95c stores 1 byte to [a0+108] +0x1 via base v0 ([a0+108]) with value 0x1f.
  The `sb` at 0xd83b960 stores 1 byte to [a0+108] +0x0 via base v0 ([a0+108]).
  The `lw` at 0xd83b964 loads 4 bytes from a1 (arg1 at entry) +0x24 via base a2 (a1).
  The `sw` at 0xd83b968 stores 4 bytes to [a0+108] +0x4 via base v0 ([a0+108]) with value [a1+36].
  The `lw` at 0xd83b96c loads 4 bytes from a1 (arg1 at entry) +0x48 via base a2 (a1).
  The `sw` at 0xd83b970 stores 4 bytes to [a0+108] +0xc via base v0 ([a0+108]) with value a2.
  The `sw` at 0xd83b974 stores 4 bytes to [a0+108] +0x8 via base v0 ([a0+108]) with value [a1+72].
  The `lw` at 0xd83b978 loads 4 bytes from a0 (arg0 at entry) +0x2c via base s0 (a0).
  The `sw` at 0xd83b98c stores 4 bytes to unknown (base unknown) via base t2 (unknown) with value 0x0.
  The `sw` at 0xd83b990 stores 4 bytes to unknown (base unknown) via base t2 (unknown) with value ret(unknown).
  The `lw` at 0xd83b9a0 loads 4 bytes from [a0+1232] +0x4 via base a5 ([a0+1232]).
  The `lw` at 0xd83b9ac loads 4 bytes from a0 (arg0 at entry) +0x7c via base s0 (a0).
  The `jalr` at 0xd83b8e0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83b904 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown), a5=[a0+1232].
  The `jalr` at 0xd83b980 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[a1+72], a3=[a1+36], a4=0x1f, a6=[a0+96]+1, a7=[a0+108]+24.
  The `jalr` at 0xd83b9a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown), a5=[a0+1232].
  The `jalr` at 0xd83b9b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0xd83b9d8 calls _XFlush with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0xd83b8ec goes to 0xd83b9e8 when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` at 0xd83b8f8 goes to 0xd83b90c when a5(=[a0+1232]) == 0 and falls through when a5(=[a0+1232]) != 0.
  The `bne` at 0xd83b91c goes to 0xd83b9d8 when v1(=[a0+112]) < a0(=[a0+108]+24) (unsigned) and falls through when v1(=[a0+112]) >= a0(=[a0+108]+24) (unsigned).
  The `beq` at 0xd83b998 goes to 0xd83b9ac when a5(=[a0+1232]) == 0 and falls through when a5(=[a0+1232]) != 0.
  The `beq` at 0xd83b9b0 goes to 0xd83b9c4 when t9(=[a0+124]) == 0 and falls through when t9(=[a0+124]) != 0.
  The return at 0xd83b9d0 has v0 = unknown.
  The return at 0xd83b9f4 has v0 = 0x0.

- `glXDestroyWindow` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83b9fc (n32).
  It occupies 252 bytes.
  The `lw` at 0xd83ba10 loads 4 bytes from abs 0xd84658c via base gp (0xd84e158).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0 via base s0 (a0), including `lw` at 0xd83ba38, `lw` at 0xd83baa8.
  The `lw` at 0xd83ba44 loads 4 bytes from [a0+1232] +0x0 via base a3 ([a0+1232]).
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c via base s0 (a0), including `lw` at 0xd83ba50, `lw` at 0xd83ba88, `lw` at 0xd83baf4.
  The `lw` at 0xd83ba54 loads 4 bytes from a0 (arg0 at entry) +0x70 via base s0 (a0).
  The `lw` at 0xd83ba64 loads 4 bytes from abs 0xd84630c via base gp (0xd84e158).
  The `sw` at 0xd83ba70 stores 4 bytes to a0 (arg0 at entry) +0x64 via base s0 (a0) with value [a0+108].
  The `sh` at 0xd83ba78 stores 2 bytes to [a0+108] +0x2 via base a0 ([a0+108]) with value 0x2.
  The `sb` at 0xd83ba80 stores 1 byte to [a0+108] +0x0 via base a0 ([a0+108]) with value 0x20.
  The `lw` at 0xd83ba84 loads 4 bytes from a0 (arg0 at entry) +0x60 via base s0 (a0).
  The `sw` at 0xd83ba90 stores 4 bytes to a0 (arg0 at entry) +0x60 via base s0 (a0) with value [a0+96]+1.
  The `sw` at 0xd83ba98 stores 4 bytes to a0 (arg0 at entry) +0x6c via base s0 (a0) with value [a0+108]+8.
  The `sw` at 0xd83ba9c stores 4 bytes to [a0+108] +0x4 via base a0 ([a0+108]) with value a1.
  The `sb` at 0xd83baa0 stores 1 byte to [a0+108] +0x1 via base a0 ([a0+108]) with value 0x20.
  The `sb` at 0xd83baa4 stores 1 byte to [a0+108] +0x0 via base a0 ([a0+108]).
  The `lw` at 0xd83bab4 loads 4 bytes from [a0+1232] +0x4 via base a3 ([a0+1232]).
  The `lw` at 0xd83bac0 loads 4 bytes from a0 (arg0 at entry) +0x7c via base s0 (a0).
  The `jalr` at 0xd83ba24 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83ba48 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=[a0+1232].
  The `jalr` at 0xd83bab8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x20, a3=[a0+1232], a4=[a0+96]+1, a5=[a0+108]+8, a6=0x2.
  The `jalr` at 0xd83bacc calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0xd83bae8 calls _XFlush with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0xd83ba30 goes to 0xd83bad8 when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` at 0xd83ba3c goes to 0xd83ba50 when a3(=[a0+1232]) == 0 and falls through when a3(=[a0+1232]) != 0.
  The `bne` at 0xd83ba60 goes to 0xd83bae8 when v0(=[a0+112]) < v1(=[a0+108]+8) (unsigned) and falls through when v0(=[a0+112]) >= v1(=[a0+108]+8) (unsigned).
  The `beq` at 0xd83baac goes to 0xd83bac0 when a3(=[a0+1232]) == 0 and falls through when a3(=[a0+1232]) != 0.
  The `beq` at 0xd83bac4 goes to 0xd83bad8 when t9(=[a0+124]) == 0 and falls through when t9(=[a0+124]) != 0.
  The return at 0xd83bae0 has v0 = unknown.

- `glXBindChannelToWindowSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83c52c (n32).
  It occupies 352 bytes.
  The `lw` at 0xd83c548 loads 4 bytes from abs 0x1014 via base zero (0x0).
  The `lw` at 0xd83c558 loads 4 bytes from abs 0xd846588 via base gp (0xd84e158).
  The `lw` at 0xd83c568 loads 4 bytes from [0x1014] +0x114 via base at ([0x1014]).
  The `lw` at 0xd83c580 loads 4 bytes from abs 0xd84617c via base gp (0xd84e158).
  The `lw` at 0xd83c5a4 loads 4 bytes from abs 0xd846428 via base gp (0xd84e158).
  The `lw` at 0xd83c5c8 loads 4 bytes from abs 0xd84631c via base gp (0xd84e158).
  The `sb` at 0xd83c604 stores 1 byte to (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x48 via base v0 ((ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))).
  The 2 such `lw` accesses load 4 bytes from unknown (base unknown) via base t9 (unknown), including `lw` at 0xd83c608, `lw` at 0xd83c60c.
  The `lw` at 0xd83c620 loads 4 bytes from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x44 via base v0 ((ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))).
  The `sb` at 0xd83c688 stores 1 byte to (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x49 via base v0 ((ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))) with value 0x0.
  The `jalr` at 0xd83c570 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd83c594 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd83c5c0 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4.
  The `jalr` at 0xd83c5d4 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0xd83c61c calls (unknown callee) with a0=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+68], a1=0x1, a2=(unknown), a3=(unknown).
  The `beq` at 0xd83c578 goes to 0xd83c638 when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` at 0xd83c59c goes to 0xd83c65c when v0(=ret(0xd83c38c)) == 0 and falls through when v0(=ret(0xd83c38c)) != 0.
  The `beq` at 0xd83c600 goes to 0xd83c67c when a0(=a3) == 0 and falls through when a0(=a3) != 0.
  The `beq` at 0xd83c614 goes to 0xd83c674 when t9(unknown) == 0 and falls through when t9(unknown) != 0.
  The return at 0xd83c630 has v0 = one of 0x0, 0x1.
  The return at 0xd83c654 has v0 = 0x0.

- `__glChangeWindowSize` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9cdb70 (n32).
  It occupies 260 bytes.
  The `sw` at 0xd9cdb78 stores 4 bytes to a0 (arg0 at entry) +0xe78 via base a0 (a0) with value a2.
  The `sw` at 0xd9cdb7c stores 4 bytes to a0 (arg0 at entry) +0xe74 via base a0 (a0) with value a1.
  The `lw` at 0xd9cdb80 loads 4 bytes from a0 (arg0 at entry) +0x77f8 via base a0 (a0).
  The `lw` at 0xd9cdb94 loads 4 bytes from [a0+30712] +0x38 via base at ([a0+30712]).
  The `lbu` at 0xd9cdbb8 loads 1 byte from a0 (arg0 at entry) +0xc96 via base s0 (a0).
  The `lw` at 0xd9cdbc4 loads 4 bytes from a0 (arg0 at entry) +0x77fc via base s0 (a0).
  The `lw` at 0xd9cdbc8 loads 4 bytes from [a0+30716] +0x38 via base a0 ([a0+30716]).
  The `lbu` at 0xd9cdbd8 loads 1 byte from a0 (arg0 at entry) +0xc98 via base s0 (a0).
  The `lw` at 0xd9cdbe4 loads 4 bytes from a0 (arg0 at entry) +0x7ac8 via base s0 (a0).
  The 2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc99 via base s0 (a0), including `lbu` at 0xd9cdbf0, `lbu` at 0xd9cdc70.
  The `lw` at 0xd9cdbfc loads 4 bytes from a0 (arg0 at entry) +0x7a6c via base s0 (a0).
  The `lbu` at 0xd9cdc10 loads 1 byte from a0 (arg0 at entry) +0xc9a via base s0 (a0).
  The `lw` at 0xd9cdc1c loads 4 bytes from a0 (arg0 at entry) +0x79f4 via base s0 (a0).
  The `lw` at 0xd9cdc30 loads 4 bytes from a0 (arg0 at entry) +0x2ec4 via base s0 (a0).
  The `lw` at 0xd9cdc58 loads 4 bytes from a0 (arg0 at entry) +0x7af0 via base s0 (a0).
  The `jalr` at 0xd9cdbb0 calls (unknown callee) with a0=[a0+30712], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cdbd0 calls (unknown callee) with a0=[a0+30716], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0xd9cdc08 calls (unknown callee) with a0=a0+31284, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0xd9cdc28 calls (unknown callee) with a0=a0+31164, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+3226]:1.
  The `jalr` at 0xd9cdc3c calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0xd9cdc64 calls (unknown callee) with a0=a0+31416, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `beq` at 0xd9cdbbc goes to 0xd9cdbd8 when v1(=[a0+3222]:1) == 0 and falls through when v1(=[a0+3222]:1) != 0.
  The `beq` at 0xd9cdbdc goes to 0xd9cdbf0 when a0(=[a0+3224]:1) == 0 and falls through when a0(=[a0+3224]:1) != 0.
  The `bne` at 0xd9cdbe8 goes to 0xd9cdc58 when a1(=[a0+31432]) != 0 and falls through when a1(=[a0+31432]) == 0.
  The `beq` at 0xd9cdbf4 goes to 0xd9cdc10 when a2(=[a0+3225]:1) == 0 and falls through when a2(=[a0+3225]:1) != 0.
  The `beq` at 0xd9cdc14 goes to 0xd9cdc30 when a3(=[a0+3226]:1) == 0 and falls through when a3(=[a0+3226]:1) != 0.
  The return at 0xd9cdc50 has v0 = ret(unknown).

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9cdc80 (n32).
  It occupies 12 bytes.
  The `sw` at 0xd9cdc80 stores 4 bytes to a0 (arg0 at entry) +0xe80 via base a0 (a0) with value a2.
  The `sw` at 0xd9cdc88 stores 4 bytes to a0 (arg0 at entry) +0xe7c via base a0 (a0) with value a1.
  The return at 0xd9cdc84 has v0 = unknown.

- `__glFindWindowSize` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xd9cdc90 (n32).
  It occupies 212 bytes.
  The `lw` at 0xd9cdca4 loads 4 bytes from a0 (arg0 at entry) +0x1c via base a0 (a0).
  The `lw` at 0xd9cdcd0 loads 4 bytes from a0 (arg0 at entry) +0xe74 via base s0 (a0).
  The `lw` at 0xd9cdcd4 loads 4 bytes from a0 (arg0 at entry) +0xe78 via base s0 (a0).
  The 2 such `lw` accesses load 4 bytes from abs 0xda8a018 via base gp (0xda90fd8), including `lw` at 0xd9cdce4, `lw` at 0xd9cdce4.
  The `lbu` at 0xd9cdcf0 loads 1 byte from a0 (arg0 at entry) +0xdd0 via base s0 (a0).
  The `lw` at 0xd9cdd08 loads 4 bytes from a0 (arg0 at entry) +0xe7c via base s0 (a0).
  The `lw` at 0xd9cdd10 loads 4 bytes from a0 (arg0 at entry) +0xe80 via base s0 (a0).
  The 2 such `lw` accesses load 4 bytes from abs 0xda8a01c via base gp (0xda90fd8), including `lw` at 0xd9cdd18, `lw` at 0xd9cdd30.
  The `lw` at 0xd9cdd44 loads 4 bytes from a0 (arg0 at entry) +0x48 via base s0 (a0).
  The `jalr` at 0xd9cdcc4 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-48, a2=sp-44, a3=sp-40, a4=sp-36.
  The `bgezall` at 0xd9cdce8 calls __glChangeWindowSize with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bgezall` at 0xd9cdd34 calls __glChangeReadWindowSize with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=[a0+3708], a4=[a0+3712].
  The `jalr` at 0xd9cdd50 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-32, a2=sp-28, a3=(unknown).
  The `bne` at 0xd9cdcd8 goes to 0xd9cdce4 when v0(=[a0+3700]) != a1(unknown) -> outside and falls through when v0(=[a0+3700]) == a1(unknown).
  The `beq` at 0xd9cdce0 goes to 0xd9cdcf0 when v1(=[a0+3704]) == a2(unknown) and falls through when v1(=[a0+3704]) != a2(unknown).
  The `beq` at 0xd9cdcf4 goes to 0xd9cdd44 when a0(=[a0+3536]:1) == 0 and falls through when a0(=[a0+3536]:1) != 0.
  The `bne` at 0xd9cdd0c goes to 0xd9cdd30 when a3(=[a0+3708]) != a1(unknown) and falls through when a3(=[a0+3708]) == a1(unknown).
  The `bne` at 0xd9cdd14 goes to 0xd9cdd34 when a4(=[a0+3712]) != a2(unknown) and falls through when a4(=[a0+3712]) == a2(unknown).
  The return at 0xd9cdd28 has v0 = unknown.

- `__glXBindHWContextToWindow` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2643464 (n64).
  It occupies 696 bytes.
  The instructions from 0x2643620 to 0x2643620 are not reached by any path from the entry, and their branches are not listed.
  The `ld` at 0x264347c loads 8 bytes from abs 0x267c220 via base gp (0x2683aa8).
  The `ld` at 0x2643490 loads 8 bytes from a0 (arg0 at entry) +0x98 via base a0 (a0).
  The 2 such `ld` accesses load 8 bytes from abs 0x1028 via base zero (0x0), including `ld` at 0x2643494, `ld` at 0x2643684.
  The 3 such `lw` accesses load 4 bytes from [a0+152]:8 +0x128 via base s0 ([a0+152]:8), including `lw` at 0x2643498, `lw` at 0x2643688, `lw` at 0x2643698.
  The `lw` at 0x264349c loads 4 bytes from [0x1028]:8 +0x0 via base v1 ([0x1028]:8).
  The 2 such `ld` accesses load 8 bytes from abs 0x267bac0 via base gp (0x2683aa8), including `ld` at 0x26434a4, `ld` at 0x26434c8.
  The 6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x148 via base s0 ([a0+152]:8), including `ld` at 0x26434a8, `ld` at 0x264358c, `ld` at 0x2643600.
  The `ld` at 0x26434ac loads 8 bytes from [a0+152]:8 +0x168 via base s0 ([a0+152]:8).
  The 6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x140 via base s0 ([a0+152]:8), including `ld` at 0x26434b0, `ld` at 0x2643590, `ld` at 0x2643604.
  The 2 such `sb` accesses store 1 byte to [a0+152]:8 +0x170 via base s0 ([a0+152]:8) with value 0x0, including `sb` at 0x26434b8, `sb` at 0x26436a0.
  The `ld` at 0x26434bc loads 8 bytes from [a0+152]:8 +0x160 via base s0 ([a0+152]:8).
  The 5 such `ld` accesses load 8 bytes from [a0+152]:8 +0x158 via base s0 ([a0+152]:8), including `ld` at 0x26434d4, `ld` at 0x2643508, `ld` at 0x2643520.
  The `lw` at 0x26434d8 loads 4 bytes from [[a0+152]:8+344]:8 +0x40 via base ra ([[a0+152]:8+344]:8).
  The 2 such `lw` accesses load 4 bytes from [a0+152]:8 +0x1b0 via base s0 ([a0+152]:8), including `lw` at 0x26434ec, `lw` at 0x2643638.
  The 2 such `lw` accesses load 4 bytes from [a0+152]:8 +0x1b4 via base s0 ([a0+152]:8), including `lw` at 0x26434f0, `lw` at 0x264363c.
  The 6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x150 via base s0 ([a0+152]:8), including `ld` at 0x26434fc, `ld` at 0x2643514, `ld` at 0x2643554.
  The `ld` at 0x2643500 loads 8 bytes from [[a0+152]:8+336]:8 +0x30 via base v1 ([[a0+152]:8+336]:8).
  The `ld` at 0x264350c loads 8 bytes from [[a0+152]:8+344]:8 +0x30 via base v0 ([[a0+152]:8+344]:8).
  The `lw` at 0x2643518 loads 4 bytes from [[a0+152]:8+336]:8 +0x8 via base a1 ([[a0+152]:8+336]:8).
  The `lw` at 0x2643524 loads 4 bytes from [[a0+152]:8+344]:8 +0x8 via base a0 ([[a0+152]:8+344]:8).
  The 3 such `lw` accesses load 4 bytes from [a0+152]:8 +0x40 via base s0 ([a0+152]:8), including `lw` at 0x2643538, `lw` at 0x26435cc, `lw` at 0x2643670.
  The 2 such `lw` accesses load 4 bytes from [[a0+152]:8+336]:8 +0x8 via base a0 ([[a0+152]:8+336]:8), including `lw` at 0x2643558, `lw` at 0x26435e4.
  The `lw` at 0x2643568 loads 4 bytes from [[a0+152]:8+344]:8 +0x8 via base a5 ([[a0+152]:8+344]:8).
  The 2 such `sb` accesses store 1 byte to [a0+152]:8 +0x170 via base s0 ([a0+152]:8) with value 0x1, including `sb` at 0x2643574, `sb` at 0x26435f0.
  The 2 such `sw` accesses store 4 bytes to [[a0+152]:8+336]:8 +0x8 via base a0 ([[a0+152]:8+336]:8), including `sw` at 0x264357c, `sw` at 0x26435f8.
  The `sw` at 0x2643588 stores 4 bytes to [[a0+152]:8+344]:8 +0x8 via base a7 ([[a0+152]:8+344]:8).
  The 2 such `sd` accesses store 8 bytes to [a0+152]:8 +0x160 via base s0 ([a0+152]:8) with value [[a0+152]:8+320]:8, including `sd` at 0x2643594, `sd` at 0x264360c.
  The 2 such `sd` accesses store 8 bytes to [a0+152]:8 +0x168 via base s0 ([a0+152]:8) with value [[a0+152]:8+328]:8, including `sd` at 0x2643598, `sd` at 0x2643610.
  The `ld` at 0x26435ac loads 8 bytes from [[a0+152]:8+336]:8 +0x30 via base t8 ([[a0+152]:8+336]:8).
  The `lw` at 0x26435b8 loads 4 bytes from [[a0+152]:8+336]:8 +0x8 via base ra ([[a0+152]:8+336]:8).
  The `sw` at 0x264368c stores 4 bytes to [0x1028]:8 +0x0 via base t2 ([0x1028]:8) with value [[a0+152]:8+296].
  The 3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28 via base t9 (a0), including `ld` at 0x26436c4, `ld` at 0x26436e4, `ld` at 0x2643704.
  The 3 such `ld` accesses load 8 bytes from abs 0x267bad8 via base gp (0x2683aa8), including `ld` at 0x26436c8, `ld` at 0x26436e8, `ld` at 0x2643708.
  The `jalr` at 0x264348c calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2643534 calls (unknown callee) with a0=[[a0+152]:8+64], a1=0x400, a2=sp-56, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296].
  The `bgezall` at 0x26435c8 calls (unknown callee) with a0=[[a0+152]:8+64], a1=0x3eb, a2=sp-72, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296].
  The `bgezall` at 0x2643674 calls (unknown callee) with a0=[[a0+152]:8+64], a1=0x3ea, a2=sp-80, a3=(unknown), a4=[[a0+152]:8+296].
  The `jalr` at 0x26436cc calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2677478, a2=(unknown), a3=(unknown).
  The `jalr` at 0x26436ec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x26774b0, a2=0x1, a3=(unknown).
  The `jalr` at 0x264370c calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2677490, a2=-0x1, a3=(unknown).
  The `bne` at 0x26434a0 goes to 0x2643660 when v1(=[[0x1028]:8]) != a4(=[[a0+152]:8+296]) and falls through when v1(=[[0x1028]:8]) == a4(=[[a0+152]:8+296]).
  The `bne` at 0x26434b4 goes to 0x26434c8 when a0(=[[a0+152]:8+360]:8) != a3(=[[a0+152]:8+328]:8) and falls through when a0(=[[a0+152]:8+360]:8) == a3(=[[a0+152]:8+328]:8).
  The `beq` at 0x26434c0 goes to 0x2643624 when a1(=[[a0+152]:8+352]:8) == a2(=[[a0+152]:8+320]:8) and falls through when a1(=[[a0+152]:8+352]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` at 0x26434cc goes to 0x2643634 when a3(=[[a0+152]:8+328]:8) == a2(=[[a0+152]:8+320]:8) and falls through when a3(=[[a0+152]:8+328]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` at 0x26434e0 goes to 0x2643634 when ra(=[[[a0+152]:8+344]:8+64]) == at(=0x3) and falls through when ra(=[[[a0+152]:8+344]:8+64]) != at(=0x3).
  The `beq` at 0x26434f4 goes to 0x26436a4 when at(=[[a0+152]:8+432]) == a2(=0x1) and falls through when at(=[[a0+152]:8+432]) != a2(=0x1).
  The `beq` at 0x264354c goes to 0x26436fc when v0(=ret(0x2642fec)) == a2(=-0x1) and falls through when v0(=ret(0x2642fec)) != a2(=-0x1).
  The `bne` at 0x2643560 goes to 0x2643574 when a3(=[[[a0+152]:8+336]:8+8]) != a4(unknown) and falls through when a3(=[[[a0+152]:8+336]:8+8]) == a4(unknown).
  The `beq` at 0x264356c goes to 0x264358c when a5(=[[[a0+152]:8+344]:8+8]) == a6(unknown) and falls through when a5(=[[[a0+152]:8+344]:8+8]) != a6(unknown).
  The `beq` at 0x26435d4 goes to 0x26436dc when v0(=ret(0x2642fec)) == at(=-0x1) and falls through when v0(=ret(0x2642fec)) != at(=-0x1).
  The `beq` at 0x26435e8 goes to 0x2643600 when v0(=[[[a0+152]:8+336]:8+8]) == v1(unknown) and falls through when v0(=[[[a0+152]:8+336]:8+8]) != v1(unknown).
  The `beq` at 0x2643644 goes to 0x26435a8 when a5(=[[a0+152]:8+432]) >= 0x2 (signed) and falls through when a5(=[[a0+152]:8+432]) < 0x2 (signed).
  The `beq` at 0x264364c goes to 0x26435a8 when a6(unknown) == 0 and falls through when a6(unknown) != 0.
  The `bltz` at 0x264367c goes to 0x26436c0 when v0(=ret(0x2642fec)) < 0 (signed) and falls through when v0(=ret(0x2642fec)) >= 0 (signed).
  The `beq` at 0x26436a4 goes to 0x26434fc when t3(unknown) == 0 and falls through when t3(unknown) != 0.
  The return at 0x26435a0 has v0 = ret(0x2642fec).
  The return at 0x2643618 has v0 = [[[a0+152]:8+336]:8+8].
  The return at 0x264362c has v0 = unknown.

- `glXCreateWindow` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2670560 (n64).
  It occupies 328 bytes.
  The `ld` at 0x2670578 loads 8 bytes from abs 0x267c2f8 via base gp (0x2683aa8).
  The 2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968 via base s0 (a0), including `ld` at 0x26705a0, `ld` at 0x267063c.
  The `ld` at 0x26705ac loads 8 bytes from [a0+2408]:8 +0x0 via base a5 ([a0+2408]:8).
  The 3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0 via base s0 (a0), including `ld` at 0x26705b8, `ld` at 0x26705f0, `ld` at 0x2670690.
  The `ld` at 0x26705bc loads 8 bytes from a0 (arg0 at entry) +0xb8 via base s0 (a0).
  The `sd` at 0x26705d8 stores 8 bytes to a0 (arg0 at entry) +0xa0 via base s0 (a0) with value [a0+176]:8.
  The `sh` at 0x26705e0 stores 2 bytes to [a0+176]:8 +0x2 via base a5 ([a0+176]:8) with value 0x6.
  The `sb` at 0x26705e8 stores 1 byte to [a0+176]:8 +0x0 via base a5 ([a0+176]:8) with value 0x1f.
  The `ld` at 0x26705ec loads 8 bytes from a0 (arg0 at entry) +0x98 via base s0 (a0).
  The `sd` at 0x26705f8 stores 8 bytes to a0 (arg0 at entry) +0x98 via base s0 (a0) with value [a0+152]:8+1.
  The `sd` at 0x2670600 stores 8 bytes to a0 (arg0 at entry) +0xb0 via base s0 (a0) with value [a0+176]:8+24.
  The `sb` at 0x2670604 stores 1 byte to [a0+176]:8 +0x1 via base a5 ([a0+176]:8) with value 0x1f.
  The `sb` at 0x2670608 stores 1 byte to [a0+176]:8 +0x0 via base a5 ([a0+176]:8).
  The `lw` at 0x267060c loads 4 bytes from a1 (arg1 at entry) +0x24 via base a3 (a1).
  The `sw` at 0x2670610 stores 4 bytes to [a0+176]:8 +0x4 via base a5 ([a0+176]:8) with value [a1+36].
  The `lw` at 0x2670614 loads 4 bytes from a1 (arg1 at entry) +0x48 via base a3 (a1).
  The `sw` at 0x2670618 stores 4 bytes to [a0+176]:8 +0xc via base a5 ([a0+176]:8) with value a2.
  The `sw` at 0x267061c stores 4 bytes to [a0+176]:8 +0x8 via base a5 ([a0+176]:8) with value [a1+72].
  The `ld` at 0x2670620 loads 8 bytes from a0 (arg0 at entry) +0x48 via base s0 (a0).
  The `sw` at 0x2670634 stores 4 bytes to unknown (base unknown) via base t8 (unknown) with value 0x0.
  The `sw` at 0x2670638 stores 4 bytes to unknown (base unknown) via base t8 (unknown) with value ret(unknown).
  The `ld` at 0x2670648 loads 8 bytes from [a0+2408]:8 +0x8 via base a5 ([a0+2408]:8).
  The `ld` at 0x2670654 loads 8 bytes from a0 (arg0 at entry) +0xd0 via base s0 (a0).
  The `ld` at 0x2670680 loads 8 bytes from abs 0x267bdf8 via base gp (0x2683aa8).
  The `jalr` at 0x267058c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x26705b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown), a5=[a0+2408]:8.
  The `jalr` at 0x2670628 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=a2 at entry (arg2), a3=[a1+72], a4=[a1+36], a5=[a0+176]:8, a6=0x1f.
  The `jalr` at 0x267064c calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown), a5=[a0+2408]:8.
  The `jalr` at 0x2670660 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x2670684 calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8+24, a2=a2 at entry (arg2), a3=(unknown), a5=[a0+176]:8.
  The `beq` at 0x2670598 goes to 0x2670694 when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` at 0x26705a4 goes to 0x26705b8 when a5(=[a0+2408]:8) == 0 and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` at 0x26705c8 goes to 0x2670680 when a0(=[a0+184]:8) < a1(=[a0+176]:8+24) (unsigned) and falls through when a0(=[a0+184]:8) >= a1(=[a0+176]:8+24) (unsigned).
  The `beq` at 0x2670640 goes to 0x2670654 when a5(=[a0+2408]:8) == 0 and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` at 0x2670658 goes to 0x267066c when t9(=[a0+208]:8) == 0 and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x2670678 has v0 = unknown.
  The return at 0x26706a0 has v0 = 0x0.

- `glXDestroyWindow` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x26706a8 (n64).
  It occupies 252 bytes.
  The `ld` at 0x26706bc loads 8 bytes from abs 0x267c2f8 via base gp (0x2683aa8).
  The 2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968 via base s0 (a0), including `ld` at 0x26706e4, `ld` at 0x2670754.
  The `ld` at 0x26706f0 loads 8 bytes from [a0+2408]:8 +0x0 via base a4 ([a0+2408]:8).
  The 3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0 via base s0 (a0), including `ld` at 0x26706fc, `ld` at 0x2670734, `ld` at 0x26707a0.
  The `ld` at 0x2670700 loads 8 bytes from a0 (arg0 at entry) +0xb8 via base s0 (a0).
  The `ld` at 0x2670710 loads 8 bytes from abs 0x267bdf8 via base gp (0x2683aa8).
  The `sd` at 0x267071c stores 8 bytes to a0 (arg0 at entry) +0xa0 via base s0 (a0) with value [a0+176]:8.
  The `sh` at 0x2670724 stores 2 bytes to [a0+176]:8 +0x2 via base a0 ([a0+176]:8) with value 0x2.
  The `sb` at 0x267072c stores 1 byte to [a0+176]:8 +0x0 via base a0 ([a0+176]:8) with value 0x20.
  The `ld` at 0x2670730 loads 8 bytes from a0 (arg0 at entry) +0x98 via base s0 (a0).
  The `sd` at 0x267073c stores 8 bytes to a0 (arg0 at entry) +0x98 via base s0 (a0) with value [a0+152]:8+1.
  The `sd` at 0x2670744 stores 8 bytes to a0 (arg0 at entry) +0xb0 via base s0 (a0) with value [a0+176]:8+8.
  The `sw` at 0x2670748 stores 4 bytes to [a0+176]:8 +0x4 via base a0 ([a0+176]:8) with value a1.
  The `sb` at 0x267074c stores 1 byte to [a0+176]:8 +0x0 via base a0 ([a0+176]:8).
  The `sb` at 0x2670750 stores 1 byte to [a0+176]:8 +0x1 via base a0 ([a0+176]:8) with value 0x20.
  The `ld` at 0x2670760 loads 8 bytes from [a0+2408]:8 +0x8 via base a4 ([a0+2408]:8).
  The `ld` at 0x267076c loads 8 bytes from a0 (arg0 at entry) +0xd0 via base s0 (a0).
  The `jalr` at 0x26706d0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x26706f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown), a4=[a0+2408]:8.
  The `jalr` at 0x2670764 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=a1 at entry (arg1), a4=[a0+2408]:8, a6=[a0+152]:8+1, a7=[a0+176]:8+8.
  The `jalr` at 0x2670778 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x2670794 calls _XFlush with a0=a0 at entry (arg0), a1=(unknown), a2=[a0+176]:8+8, a3=(unknown).
  The `beq` at 0x26706dc goes to 0x2670784 when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` at 0x26706e8 goes to 0x26706fc when a4(=[a0+2408]:8) == 0 and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` at 0x267070c goes to 0x2670794 when a1(=[a0+184]:8) < a2(=[a0+176]:8+8) (unsigned) and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+8) (unsigned).
  The `beq` at 0x2670758 goes to 0x267076c when a4(=[a0+2408]:8) == 0 and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` at 0x2670770 goes to 0x2670784 when t9(=[a0+208]:8) == 0 and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x267078c has v0 = unknown.

- `glXBindChannelToWindowSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x26711c0 (n64).
  It occupies 292 bytes.
  The `ld` at 0x26711d8 loads 8 bytes from abs 0x1028 via base zero (0x0).
  The `ld` at 0x26711e8 loads 8 bytes from abs 0x267c2f0 via base gp (0x2683aa8).
  The `ld` at 0x26711f0 loads 8 bytes from [0x1028]:8 +0x118 via base at ([0x1028]:8).
  The `ld` at 0x2671204 loads 8 bytes from abs 0x267bad8 via base gp (0x2683aa8).
  The `ld` at 0x267122c loads 8 bytes from abs 0x267c030 via base gp (0x2683aa8).
  The `ld` at 0x267124c loads 8 bytes from abs 0x267be18 via base gp (0x2683aa8).
  The `sb` at 0x2671284 stores 1 byte to unknown (base unknown) via base a6 (unknown).
  The 2 such `ld` accesses load 8 bytes from unknown (base unknown) via base t9 (unknown), including `ld` at 0x2671288, `ld` at 0x267128c.
  The `lw` at 0x26712a0 loads 4 bytes from unknown (base unknown) via base a6 (unknown).
  The `sb` at 0x26712e0 stores 1 byte to unknown (base unknown) via base a6 (unknown) with value 0x0.
  The `jalr` at 0x26711f4 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2671218 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0x2671244 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4.
  The `jalr` at 0x2671254 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x267129c calls (unknown callee) with a0=(unknown), a1=0x1, a2=(unknown), a3=(unknown), a7=(((a2 << 0x2) + a2) << 0x3).
  The `beq` at 0x26711fc goes to 0x26712b8 when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` at 0x2671220 goes to 0x26712cc when v0(=ret(0x2671024)) == 0 and falls through when v0(=ret(0x2671024)) != 0.
  The `beq` at 0x2671280 goes to 0x26712dc when v1(=a3) == 0 and falls through when v1(=a3) != 0.
  The `beq` at 0x2671290 goes to 0x26712d4 when t9(unknown) == 0 and falls through when t9(unknown) != 0.
  The return at 0x26712b0 has v0 = 0x1.
  The return at 0x26712c4 has v0 = 0x0.

- `__glChangeWindowSize` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31840 (n64).
  It occupies 288 bytes.
  The `sw` at 0x2e31848 stores 4 bytes to a0 (arg0 at entry) +0xfdc via base a0 (a0) with value a2.
  The `sw` at 0x2e31854 stores 4 bytes to a0 (arg0 at entry) +0xfd8 via base a0 (a0) with value a1.
  The `ld` at 0x2e31860 loads 8 bytes from a0 (arg0 at entry) +0x9968 via base s1 (a0+65536).
  The `ld` at 0x2e31870 loads 8 bytes from [a0+39272]:8 +0x58 via base at ([a0+39272]:8).
  The `lbu` at 0x2e31894 loads 1 byte from a0 (arg0 at entry) +0xde6 via base s0 (a0).
  The `ld` at 0x2e318a0 loads 8 bytes from a0 (arg0 at entry) +0x9970 via base s1 (a0+65536).
  The `ld` at 0x2e318a4 loads 8 bytes from [a0+39280]:8 +0x58 via base a0 ([a0+39280]:8).
  The `lbu` at 0x2e318b4 loads 1 byte from a0 (arg0 at entry) +0xde8 via base s0 (a0).
  The `ld` at 0x2e318c0 loads 8 bytes from a0 (arg0 at entry) +0x9de0 via base s1 (a0+65536).
  The 2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xde9 via base s0 (a0), including `lbu` at 0x2e318cc, `lbu` at 0x2e3195c.
  The `ld` at 0x2e318d8 loads 8 bytes from a0 (arg0 at entry) +0x9d50 via base s1 (a0+65536).
  The `lbu` at 0x2e318f0 loads 1 byte from a0 (arg0 at entry) +0xdea via base s0 (a0).
  The `ld` at 0x2e318fc loads 8 bytes from a0 (arg0 at entry) +0x9c78 via base s1 (a0+65536).
  The `ld` at 0x2e31914 loads 8 bytes from a0 (arg0 at entry) +0x4850 via base s0 (a0).
  The `ld` at 0x2e31940 loads 8 bytes from a0 (arg0 at entry) +0x9e20 via base s1 (a0+65536).
  The `jalr` at 0x2e3188c calls (unknown callee) with a0=[a0+39272]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e318ac calls (unknown callee) with a0=[a0+39280]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0x2e318e8 calls (unknown callee) with a0=a0+40184, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0x2e3190c calls (unknown callee) with a0=a0+39968, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0x2e31924 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x2e31950 calls (unknown callee) with a0=a0+40392, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `beq` at 0x2e31898 goes to 0x2e318b4 when t8(=[a0+3558]:1) == 0 and falls through when t8(=[a0+3558]:1) != 0.
  The `beq` at 0x2e318b8 goes to 0x2e318cc when t9(=[a0+3560]:1) == 0 and falls through when t9(=[a0+3560]:1) != 0.
  The `bne` at 0x2e318c4 goes to 0x2e31940 when ra(=[a0+40416]:8) != 0 and falls through when ra(=[a0+40416]:8) == 0.
  The `beq` at 0x2e318d0 goes to 0x2e318f0 when at(=[a0+3561]:1) == 0 and falls through when at(=[a0+3561]:1) != 0.
  The `beq` at 0x2e318f4 goes to 0x2e31914 when a1(=[a0+3562]:1) == 0 and falls through when a1(=[a0+3562]:1) != 0.
  The return at 0x2e31938 has v0 = ret(unknown).

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31960 (n64).
  It occupies 12 bytes.
  The `sw` at 0x2e31960 stores 4 bytes to a0 (arg0 at entry) +0xfe4 via base a0 (a0) with value a2.
  The `sw` at 0x2e31968 stores 4 bytes to a0 (arg0 at entry) +0xfe0 via base a0 (a0) with value a1.
  The return at 0x2e31964 has v0 = unknown.

- `__glFindWindowSize` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31970 (n64).
  It occupies 212 bytes.
  The `ld` at 0x2e31984 loads 8 bytes from a0 (arg0 at entry) +0x38 via base a0 (a0).
  The `lw` at 0x2e319b0 loads 4 bytes from a0 (arg0 at entry) +0xfd8 via base s0 (a0).
  The `lw` at 0x2e319b4 loads 4 bytes from a0 (arg0 at entry) +0xfdc via base s0 (a0).
  The 2 such `ld` accesses load 8 bytes from abs 0x2efa810 via base gp (0x2f00798), including `ld` at 0x2e319c4, `ld` at 0x2e319c4.
  The `lbu` at 0x2e319d0 loads 1 byte from a0 (arg0 at entry) +0xf20 via base s0 (a0).
  The `lw` at 0x2e319e8 loads 4 bytes from a0 (arg0 at entry) +0xfe0 via base s0 (a0).
  The `lw` at 0x2e319f0 loads 4 bytes from a0 (arg0 at entry) +0xfe4 via base s0 (a0).
  The 2 such `ld` accesses load 8 bytes from abs 0x2efa818 via base gp (0x2f00798), including `ld` at 0x2e319f8, `ld` at 0x2e31a10.
  The `ld` at 0x2e31a24 loads 8 bytes from a0 (arg0 at entry) +0x90 via base s0 (a0).
  The `jalr` at 0x2e319a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-48, a2=sp-44, a3=sp-40, a4=sp-36.
  The `bgezall` at 0x2e319c8 calls __glChangeWindowSize with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bgezall` at 0x2e31a14 calls __glChangeReadWindowSize with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=[a0+4064], a4=[a0+4068].
  The `jalr` at 0x2e31a30 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-32, a2=sp-28, a3=(unknown).
  The `bne` at 0x2e319b8 goes to 0x2e319c4 when v0(=[a0+4056]) != a1(unknown) -> outside and falls through when v0(=[a0+4056]) == a1(unknown).
  The `beq` at 0x2e319c0 goes to 0x2e319d0 when v1(=[a0+4060]) == a2(unknown) and falls through when v1(=[a0+4060]) != a2(unknown).
  The `beq` at 0x2e319d4 goes to 0x2e31a24 when a0(=[a0+3872]:1) == 0 and falls through when a0(=[a0+3872]:1) != 0.
  The `bne` at 0x2e319ec goes to 0x2e31a10 when a3(=[a0+4064]) != a1(unknown) and falls through when a3(=[a0+4064]) == a1(unknown).
  The `bne` at 0x2e319f4 goes to 0x2e31a14 when a4(=[a0+4068]) != a2(unknown) and falls through when a4(=[a0+4068]) == a2(unknown).
  The return at 0x2e31a08 has v0 = unknown.

- `__glXBindHWContextToWindow` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd810634 (o32).
  It occupies 748 bytes.
  The instructions from 0xd810764 to 0xd810764 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd810800 to 0xd810800 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd81083c to 0xd81083c are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0xd810644 loads 4 bytes from abs 0xd845c98 via base gp (0xd84d8d0).
  The `lw` at 0xd810650 loads 4 bytes from a0 (arg0 at entry) +0x4c via base a0 (a0).
  The 2 such `lw` accesses load 4 bytes from abs 0x1014 via base zero (0x0), including `lw` at 0xd810668, `lw` at 0xd8106d8.
  The 41 such `lw` accesses load 4 bytes from unknown (base unknown) via base v1 (unknown), including `lw` at 0xd810670, `lw` at 0xd810690, `lw` at 0xd8106d4.
  The `lw` at 0xd810674 loads 4 bytes from [0x1014] +0x0 via base t6 ([0x1014]).
  The 3 such `lw` accesses load 4 bytes from abs 0xd8458e8 via base gp (0xd84d8d0), including `lw` at 0xd810688, `lw` at 0xd810774, `lw` at 0xd810858.
  The 3 such `lw` accesses load 4 bytes from abs 0xd8458f4 via base gp (0xd84d8d0), including `lw` at 0xd8106b4, `lw` at 0xd8107ac, `lw` at 0xd81089c.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14 via base a0 (a0), including `lw` at 0xd8106b8, `lw` at 0xd8107b0.
  The `sw` at 0xd8106dc stores 4 bytes to [0x1014] +0x0 via base t0 ([0x1014]).
  The `sb` at 0xd8106e8 stores 1 byte to unknown (base unknown) via base v1 (unknown) with value 0x0.
  The `lw` at 0xd810724 loads 4 bytes from unknown (base unknown) via base t7 (unknown).
  The 2 such `lw` accesses load 4 bytes from unknown (base unknown) via base t3 (unknown), including `lw` at 0xd810768, `lw` at 0xd810860.
  The 2 such `lw` accesses load 4 bytes from unknown (base unknown) via base t5 (unknown), including `lw` at 0xd81077c, `lw` at 0xd810874.
  The 2 such `lw` accesses load 4 bytes from unknown (base unknown) via base v0 (unknown), including `lw` at 0xd8107d4, `lw` at 0xd8108c8.
  The 3 such `sb` accesses store 1 byte to unknown (base unknown) via base v1 (unknown) with value 0x1, including `sb` at 0xd8107e0, `sb` at 0xd8108d0, `sb` at 0xd8108e8.
  The 2 such `sw` accesses store 4 bytes to unknown (base unknown) via base v0 (unknown), including `sw` at 0xd8107e8, `sw` at 0xd8108f0.
  The 4 such `sw` accesses store 4 bytes to unknown (base unknown) via base v1 (unknown), including `sw` at 0xd8107f4, `sw` at 0xd8107fc, `sw` at 0xd810908.
  The `lw` at 0xd810840 loads 4 bytes from unknown (base unknown) via base t8 (unknown).
  The 2 such `lw` accesses load 4 bytes from unknown (base unknown) via base t1 (unknown), including `lw` at 0xd81084c, `lw` at 0xd8108dc.
  The `lw` at 0xd8108a4 loads 4 bytes from a0 (arg0 at entry) +0x14 via base t9 (a0).
  The `sw` at 0xd8108fc stores 4 bytes to unknown (base unknown) via base t6 (unknown).
  The `jalr` at 0xd81065c calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd810698 calls Ioctl with a0=(unknown), a1=0x3ea, a2=sp-12, a3=(unknown).
  The `jalr` at 0xd8106c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd841624, a2=(unknown), a3=(unknown).
  The `jalr` at 0xd810790 calls Ioctl with a0=(unknown), a1=0x3eb, a2=sp-24, a3=(unknown).
  The `jalr` at 0xd8107b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd84163c, a2=(unknown), a3=(unknown).
  The `jalr` at 0xd810880 calls Ioctl with a0=(unknown), a1=0x400, a2=sp-44, a3=(unknown).
  The `jalr` at 0xd8108ac calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd841654, a2=(unknown), a3=(unknown).
  The `beq` at 0xd810680 goes to 0xd8106e4 when t7(=[[0x1014]]) == a3(unknown) and falls through when t7(=[[0x1014]]) != a3(unknown).
  The `bgez` at 0xd8106a4 goes to 0xd8106d4 when v0(=ret(Ioctl)) >= 0 (signed) and falls through when v0(=ret(Ioctl)) < 0 (signed).
  The `bne` at 0xd8106e4 goes to 0xd81070c when v0(unknown) != 0 and falls through when v0(unknown) == 0.
  The `bnel` at 0xd8106f4 goes to 0xd810710 when t1(unknown) != t2(unknown) and falls through when t1(unknown) == t2(unknown).
  The `beql` at 0xd810704 goes to 0xd810914 when t3(unknown) == t4(unknown) and falls through when t3(unknown) != t4(unknown).
  The `beql` at 0xd810714 goes to 0xd810734 when t5(unknown) == t6(unknown) and falls through when t5(unknown) != t6(unknown).
  The `bnel` at 0xd810728 goes to 0xd810804 when t9(unknown) != at(=0x3) and falls through when t9(unknown) == at(=0x3).
  The `beql` at 0xd810740 goes to 0xd810768 when t0(unknown) >= 0x2 (signed) and falls through when t0(unknown) < 0x2 (signed).
  The `beql` at 0xd810750 goes to 0xd810768 when t1(unknown) >= 0x3 (signed) and falls through when t1(unknown) < 0x3 (signed).
  The `bne` at 0xd8107a0 goes to 0xd8107c8 when v0(=ret(Ioctl)) != at(=-0x1) and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `beql` at 0xd8107d8 goes to 0xd8107f0 when t7(unknown) == t8(unknown) and falls through when t7(unknown) != t8(unknown).
  The `bnel` at 0xd810810 goes to 0xd810840 when t5(unknown) != at(=0x1) and falls through when t5(unknown) == at(=0x1).
  The `beql` at 0xd810820 goes to 0xd810840 when t6(unknown) >= 0x3 (signed) and falls through when t6(unknown) < 0x3 (signed).
  The `bne` at 0xd810890 goes to 0xd8108bc when v0(=ret(Ioctl)) != at(=-0x1) and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `bnel` at 0xd8108cc goes to 0xd8108ec when t7(unknown) != t8(unknown) and falls through when t7(unknown) == t8(unknown).
  The `beql` at 0xd8108e0 goes to 0xd810904 when t0(unknown) == t2(unknown) and falls through when t0(unknown) != t2(unknown).
  The return at 0xd810918 has v0 = unknown.

- `glXCreateWindow` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd837a78 (o32).
  It occupies 408 bytes.
  The `lw` at 0xd837a88 loads 4 bytes from abs 0xd845d04 via base gp (0xd84d8d0).
  The 4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0 via base s0 (a0), including `lw` at 0xd837ac8, `lw` at 0xd837ad4, `lw` at 0xd837af0.
  The `lw` at 0xd837acc loads 4 bytes from a3 (arg3 at entry) +0x0 via base a3 (a3).
  The `lw` at 0xd837ae0 loads 4 bytes from a3 (arg3 at entry) +0x8 via base v0 (a3).
  The `lw` at 0xd837aec loads 4 bytes from unknown (base unknown) via base v0 (unknown).
  The 4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c via base s0 (a0), including `lw` at 0xd837af8, `lw` at 0xd837b10, `lw` at 0xd837b3c.
  The `lw` at 0xd837afc loads 4 bytes from [a0+1232] +0x0 via base a1 ([a0+1232]).
  The `lw` at 0xd837b14 loads 4 bytes from a0 (arg0 at entry) +0x70 via base s0 (a0).
  The `lw` at 0xd837b28 loads 4 bytes from abs 0xd845a80 via base gp (0xd84d8d0).
  The `sw` at 0xd837b44 stores 4 bytes to a0 (arg0 at entry) +0x64 via base s0 (a0) with value [a0+108].
  The `sh` at 0xd837b50 stores 2 bytes to [a0+108] +0x2 via base v0 ([a0+108]) with value 0x6.
  The `sb` at 0xd837b54 stores 1 byte to [a0+108] +0x0 via base v0 ([a0+108]) with value 0x1f.
  The `lw` at 0xd837b58 loads 4 bytes from a0 (arg0 at entry) +0x60 via base s0 (a0).
  The `sw` at 0xd837b6c stores 4 bytes to a0 (arg0 at entry) +0x6c via base s0 (a0) with value [a0+108]+24.
  The `sw` at 0xd837b70 stores 4 bytes to a0 (arg0 at entry) +0x60 via base s0 (a0) with value [a0+96]+1.
  The `sb` at 0xd837b78 stores 1 byte to [a0+108] +0x1 via base v0 ([a0+108]) with value 0x1f.
  The `sb` at 0xd837b7c stores 1 byte to [a0+108] +0x0 via base v0 ([a0+108]).
  The `lw` at 0xd837b80 loads 4 bytes from a1 (arg1 at entry) +0x24 via base a2 (a1).
  The `sw` at 0xd837b84 stores 4 bytes to [a0+108] +0x4 via base v0 ([a0+108]) with value [a1+36].
  The `lw` at 0xd837b88 loads 4 bytes from a1 (arg1 at entry) +0x48 via base a2 (a1).
  The `sw` at 0xd837b8c stores 4 bytes to [a0+108] +0x8 via base v0 ([a0+108]) with value [a1+72].
  The `sw` at 0xd837b94 stores 4 bytes to [a0+108] +0xc via base v0 ([a0+108]) with value a2.
  The `lw` at 0xd837b9c loads 4 bytes from a0 (arg0 at entry) +0x2c via base s0 (a0).
  The `sw` at 0xd837bb4 stores 4 bytes to unknown (base unknown) via base v1 (unknown) with value ret(unknown).
  The `sw` at 0xd837bb8 stores 4 bytes to unknown (base unknown) via base v1 (unknown) with value 0x0.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c via base s0 (a0), including `lw` at 0xd837bc4, `lw` at 0xd837bdc.
  The `lw` at 0xd837bc8 loads 4 bytes from [a0+1232] +0x4 via base a1 ([a0+1232]).
  The `jalr` at 0xd837aa4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd837b04 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=(unknown), a3=a3 at entry (arg3).
  The `jalr` at 0xd837b30 calls _XFlush with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0xd837ba0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x1f, a2=a1 at entry (arg1), a3=(unknown).
  The `jalr` at 0xd837bd0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=(unknown), a3=(unknown).
  The `jalr` at 0xd837bec calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0xd837ab4 goes to 0xd837ac4 when v0(=ret(__glXSetupForCommand)) != 0 and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beql` at 0xd837ac4 goes to 0xd837af4 when a3 == 0 and falls through when a3 != 0.
  The `beql` at 0xd837ad0 goes to 0xd837af4 when v1(=[a3]) == 0 and falls through when v1(=[a3]) != 0.
  The `beq` at 0xd837ad8 goes to 0xd837af0 when v1(=[a3]) == 0 and falls through when v1(=[a3]) != 0.
  The `bnel` at 0xd837ae8 goes to 0xd837ae4 when t6(unknown) != 0 and falls through when t6(unknown) == 0.
  The `beql` at 0xd837af4 goes to 0xd837b14 when a1(=[a0+1232]) == 0 and falls through when a1(=[a0+1232]) != 0.
  The `beql` at 0xd837b20 goes to 0xd837b44 when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned) and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned).
  The `beql` at 0xd837bc0 goes to 0xd837be0 when a1(=[a0+1232]) == 0 and falls through when a1(=[a0+1232]) != 0.
  The `beql` at 0xd837be4 goes to 0xd837bfc when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  The return at 0xd837c08 has v0 = unknown.

- `glXDestroyWindow` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd837c10 (o32).
  It occupies 280 bytes.
  The `lw` at 0xd837c1c loads 4 bytes from abs 0xd845d04 via base gp (0xd84d8d0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0 via base s0 (a0), including `lw` at 0xd837c48, `lw` at 0xd837cd8.
  The 4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c via base s0 (a0), including `lw` at 0xd837c50, `lw` at 0xd837c68, `lw` at 0xd837c94.
  The `lw` at 0xd837c54 loads 4 bytes from [a0+1232] +0x0 via base v1 ([a0+1232]).
  The `lw` at 0xd837c6c loads 4 bytes from a0 (arg0 at entry) +0x70 via base s0 (a0).
  The 2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64 via base s0 (a0) with value [a0+108], including `sw` at 0xd837c7c, `sw` at 0xd837c98.
  The `lw` at 0xd837c80 loads 4 bytes from abs 0xd845a80 via base gp (0xd84d8d0).
  The `sh` at 0xd837ca4 stores 2 bytes to [a0+108] +0x2 via base a0 ([a0+108]) with value 0x2.
  The `sb` at 0xd837ca8 stores 1 byte to [a0+108] +0x0 via base a0 ([a0+108]) with value 0x20.
  The `lw` at 0xd837cac loads 4 bytes from a0 (arg0 at entry) +0x60 via base s0 (a0).
  The `sw` at 0xd837cbc stores 4 bytes to a0 (arg0 at entry) +0x6c via base s0 (a0) with value [a0+108]+8.
  The `sw` at 0xd837cc0 stores 4 bytes to a0 (arg0 at entry) +0x60 via base s0 (a0) with value [a0+96]+1.
  The `sb` at 0xd837cc8 stores 1 byte to [a0+108] +0x1 via base a0 ([a0+108]) with value 0x20.
  The `sb` at 0xd837ccc stores 1 byte to [a0+108] +0x0 via base a0 ([a0+108]).
  The `sw` at 0xd837cd4 stores 4 bytes to [a0+108] +0x4 via base a0 ([a0+108]) with value a1.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c via base s0 (a0), including `lw` at 0xd837ce0, `lw` at 0xd837cf8.
  The `lw` at 0xd837ce4 loads 4 bytes from [a0+1232] +0x4 via base v1 ([a0+1232]).
  The `jalr` at 0xd837c34 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd837c5c calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0xd837c88 calls _XFlush with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0xd837cec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x20, a2=(unknown), a3=(unknown).
  The `jalr` at 0xd837d08 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0xd837c40 goes to 0xd837d14 when v0(=ret(__glXSetupForCommand)) == 0 and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` at 0xd837c4c goes to 0xd837c6c when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  The `beql` at 0xd837c78 goes to 0xd837c9c when t6(=[a0+112]) >= t7(=[a0+108]+8) (unsigned) and falls through when t6(=[a0+112]) < t7(=[a0+108]+8) (unsigned).
  The `beql` at 0xd837cdc goes to 0xd837cfc when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  The `beql` at 0xd837d00 goes to 0xd837d18 when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  The return at 0xd837d20 has v0 = unknown.

- `glXBindChannelToWindowSGIX` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd839e08 (o32).
  It occupies 324 bytes.
  The `lw` at 0xd839e18 loads 4 bytes from abs 0x1014 via base zero (0x0).
  The `lw` at 0xd839e1c loads 4 bytes from abs 0xd845d00 via base gp (0xd84d8d0).
  The `lw` at 0xd839e38 loads 4 bytes from [0x1014] +0x114 via base t6 ([0x1014]).
  The `lw` at 0xd839e54 loads 4 bytes from abs 0xd8458f4 via base gp (0xd84d8d0).
  The `lw` at 0xd839e80 loads 4 bytes from abs 0xd845ba0 via base gp (0xd84d8d0).
  The `lw` at 0xd839eb4 loads 4 bytes from abs 0xd845a90 via base gp (0xd84d8d0).
  The `sb` at 0xd839eec stores 1 byte to unknown (base unknown) via base v1 (unknown).
  The `lw` at 0xd839ef8 loads 4 bytes from unknown (base unknown) via base t7 (unknown).
  The `lw` at 0xd839efc loads 4 bytes from unknown (base unknown) via base t8 (unknown).
  The `lw` at 0xd839f08 loads 4 bytes from unknown (base unknown) via base v1 (unknown).
  The `sb` at 0xd839f30 stores 1 byte to unknown (base unknown) via base v1 (unknown) with value 0x0.
  The `jalr` at 0xd839e40 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd839e68 calls __glXInitChannelRectState with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd839ea0 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64.
  The `jalr` at 0xd839eb8 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0xd839f10 calls (unknown callee) with a0=(unknown), a1=0x1, a2=(unknown), a3=(unknown).
  The `beq` at 0xd839e4c goes to 0xd839f38 when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` at 0xd839e70 goes to 0xd839f38 when v0(=ret(__glXInitChannelRectState)) == 0 and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` at 0xd839ee8 goes to 0xd839f20 when (t5(unknown) & 0xff) == 0 and falls through when (t5(unknown) & 0xff) != 0.
  The `beql` at 0xd839f00 goes to 0xd839f3c when v0(unknown) == 0 and falls through when v0(unknown) != 0.
  The `bnel` at 0xd839f28 goes to 0xd839f38 when t9(=a3) != 0 and falls through when t9(=a3) == 0.
  The return at 0xd839f44 has v0 = unknown.

- `__glChangeWindowSize` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d1d7c (o32).
  It occupies 280 bytes.
  The `sw` at 0xd9d1da4 stores 4 bytes to a0 (arg0 at entry) +0xe74 via base a0 (a0) with value a1.
  The `sw` at 0xd9d1da8 stores 4 bytes to a0 (arg0 at entry) +0xe78 via base a0 (a0) with value a2.
  The `lw` at 0xd9d1dac loads 4 bytes from a0 (arg0 at entry) +0x77f8 via base a0 (a0).
  The `lw` at 0xd9d1db8 loads 4 bytes from [a0+30712] +0x38 via base a0 ([a0+30712]).
  The `lbu` at 0xd9d1dc4 loads 1 byte from a0 (arg0 at entry) +0xc96 via base s0 (a0).
  The 2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc98 via base s0 (a0), including `lbu` at 0xd9d1dd0, `lbu` at 0xd9d1df0.
  The `lw` at 0xd9d1dd4 loads 4 bytes from a0 (arg0 at entry) +0x77fc via base s0 (a0).
  The `lw` at 0xd9d1de0 loads 4 bytes from [a0+30716] +0x38 via base a0 ([a0+30716]).
  The 3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc99 via base s0 (a0), including `lbu` at 0xd9d1df8, `lbu` at 0xd9d1e04, `lbu` at 0xd9d1e20.
  The `lw` at 0xd9d1dfc loads 4 bytes from a0 (arg0 at entry) +0x7ac8 via base s0 (a0).
  The `lw` at 0xd9d1e08 loads 4 bytes from a0 (arg0 at entry) +0x7af0 via base s0 (a0).
  The 2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc9a via base s0 (a0), including `lbu` at 0xd9d1e28, `lbu` at 0xd9d1e44.
  The `lw` at 0xd9d1e2c loads 4 bytes from a0 (arg0 at entry) +0x7a6c via base s0 (a0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2ec4 via base s0 (a0), including `lw` at 0xd9d1e4c, `lw` at 0xd9d1e68.
  The `lw` at 0xd9d1e50 loads 4 bytes from a0 (arg0 at entry) +0x79f4 via base s0 (a0).
  The `jalr` at 0xd9d1dbc calls (unknown callee) with a0=[a0+30712], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d1de4 calls (unknown callee) with a0=[a0+30716], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0xd9d1e14 calls (unknown callee) with a0=a0+31416, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0xd9d1e38 calls (unknown callee) with a0=a0+31284, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0xd9d1e5c calls (unknown callee) with a0=a0+31164, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0xd9d1e70 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beql` at 0xd9d1dcc goes to 0xd9d1df4 when t6(=[a0+3222]:1) == 0 and falls through when t6(=[a0+3222]:1) != 0.
  The `beql` at 0xd9d1df4 goes to 0xd9d1e24 when t7(=[a0+3224]:1) == 0 and falls through when t7(=[a0+3224]:1) != 0.
  The `beql` at 0xd9d1e00 goes to 0xd9d1e24 when t8(=[a0+31432]) == 0 and falls through when t8(=[a0+31432]) != 0.
  The `beql` at 0xd9d1e24 goes to 0xd9d1e48 when t0(=[a0+3225]:1) == 0 and falls through when t0(=[a0+3225]:1) != 0.
  The `beql` at 0xd9d1e48 goes to 0xd9d1e6c when t1(=[a0+3226]:1) == 0 and falls through when t1(=[a0+3226]:1) != 0.
  The return at 0xd9d1e8c has v0 = ret(unknown).

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d1e94 (o32).
  It occupies 12 bytes.
  The `sw` at 0xd9d1e94 stores 4 bytes to a0 (arg0 at entry) +0xe7c via base a0 (a0) with value a1.
  The `sw` at 0xd9d1e9c stores 4 bytes to a0 (arg0 at entry) +0xe80 via base a0 (a0) with value a2.
  The return at 0xd9d1e98 has v0 = unknown.

- `__glFindWindowSize` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d1ea0 (o32).
  It occupies 252 bytes.
  The instructions from 0xd9d1f38 to 0xd9d1f38 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0xd9d1ec8 loads 4 bytes from a0 (arg0 at entry) +0x1c via base s0 (a0).
  The `lw` at 0xd9d1ee0 loads 4 bytes from a0 (arg0 at entry) +0xe74 via base s0 (a0).
  The `lw` at 0xd9d1ef4 loads 4 bytes from a0 (arg0 at entry) +0xe78 via base s0 (a0).
  The 2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xdd0 via base s0 (a0), including `lbu` at 0xd9d1efc, `lbu` at 0xd9d1f18.
  The `lw` at 0xd9d1f00 loads 4 bytes from abs 0xda84c3c via base gp (0xda8bc00).
  The `lw` at 0xd9d1f24 loads 4 bytes from a0 (arg0 at entry) +0x48 via base s0 (a0).
  The `lw` at 0xd9d1f54 loads 4 bytes from a0 (arg0 at entry) +0xe7c via base s0 (a0).
  The `lw` at 0xd9d1f64 loads 4 bytes from a0 (arg0 at entry) +0xe80 via base s0 (a0).
  The `lw` at 0xd9d1f70 loads 4 bytes from abs 0xda84c40 via base gp (0xda8bc00).
  The `jalr` at 0xd9d1ed4 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-4, a2=sp-8, a3=sp-12.
  The `jalr` at 0xd9d1f0c calls __glChangeWindowSize with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0xd9d1f44 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-20, a2=sp-24, a3=(unknown).
  The `jalr` at 0xd9d1f7c calls __glChangeReadWindowSize with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0xd9d1eec goes to 0xd9d1f00 when t7(unknown) != t8(=[a0+3700]) and falls through when t7(unknown) == t8(=[a0+3700]).
  The `beql` at 0xd9d1ef8 goes to 0xd9d1f1c when t0(unknown) == t1(=[a0+3704]) and falls through when t0(unknown) != t1(=[a0+3704]).
  The `beql` at 0xd9d1f20 goes to 0xd9d1f3c when t2(=[a0+3536]:1) == 0 and falls through when t2(=[a0+3536]:1) != 0.
  The `bne` at 0xd9d1f5c goes to 0xd9d1f70 when t5(unknown) != t6(=[a0+3708]) and falls through when t5(unknown) == t6(=[a0+3708]).
  The `beql` at 0xd9d1f68 goes to 0xd9d1f8c when t7(unknown) == t8(=[a0+3712]) and falls through when t7(unknown) != t8(=[a0+3712]).
  The return at 0xd9d1f94 has v0 = unknown.

- `__glXBindHWContextToWindow` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd80e93c (n32).
  It occupies 692 bytes.
  The instructions from 0xd80eaf8 to 0xd80eaf8 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0xd80e954 loads 4 bytes from abs 0xd846520 via base gp (0xd84e158).
  The `lw` at 0xd80e968 loads 4 bytes from a0 (arg0 at entry) +0x4c via base a0 (a0).
  The 2 such `lw` accesses load 4 bytes from abs 0x1014 via base zero (0x0), including `lw` at 0xd80e96c, `lw` at 0xd80eb58.
  The 3 such `lw` accesses load 4 bytes from [a0+76] +0xcc via base s0 ([a0+76]), including `lw` at 0xd80e970, `lw` at 0xd80eb5c, `lw` at 0xd80eb6c.
  The `lw` at 0xd80e974 loads 4 bytes from [0x1014] +0x0 via base v1 ([0x1014]).
  The 2 such `lw` accesses load 4 bytes from abs 0xd846170 via base gp (0xd84e158), including `lw` at 0xd80e97c, `lw` at 0xd80e9a0.
  The 6 such `lw` accesses load 4 bytes from [a0+76] +0xe0 via base s0 ([a0+76]), including `lw` at 0xd80e980, `lw` at 0xd80ea64, `lw` at 0xd80ead8.
  The `lw` at 0xd80e984 loads 4 bytes from [a0+76] +0xf0 via base s0 ([a0+76]).
  The 6 such `lw` accesses load 4 bytes from [a0+76] +0xdc via base s0 ([a0+76]), including `lw` at 0xd80e988, `lw` at 0xd80ea68, `lw` at 0xd80eadc.
  The 2 such `sb` accesses store 1 byte to [a0+76] +0xf4 via base s0 ([a0+76]) with value 0x0, including `sb` at 0xd80e990, `sb` at 0xd80eb74.
  The `lw` at 0xd80e994 loads 4 bytes from [a0+76] +0xec via base s0 ([a0+76]).
  The 5 such `lw` accesses load 4 bytes from [a0+76] +0xe8 via base s0 ([a0+76]), including `lw` at 0xd80e9ac, `lw` at 0xd80e9e0, `lw` at 0xd80e9f8.
  The `lw` at 0xd80e9b0 loads 4 bytes from [[a0+76]+232] +0x2c via base ra ([[a0+76]+232]).
  The 2 such `lw` accesses load 4 bytes from [a0+76] +0x11c via base s0 ([a0+76]), including `lw` at 0xd80e9c4, `lw` at 0xd80eb10.
  The 2 such `lw` accesses load 4 bytes from [a0+76] +0x120 via base s0 ([a0+76]), including `lw` at 0xd80e9c8, `lw` at 0xd80eb14.
  The 6 such `lw` accesses load 4 bytes from [a0+76] +0xe4 via base s0 ([a0+76]), including `lw` at 0xd80e9d4, `lw` at 0xd80e9ec, `lw` at 0xd80ea2c.
  The `lw` at 0xd80e9d8 loads 4 bytes from [[a0+76]+228] +0x24 via base v1 ([[a0+76]+228]).
  The `lw` at 0xd80e9e4 loads 4 bytes from [[a0+76]+232] +0x24 via base v0 ([[a0+76]+232]).
  The `lw` at 0xd80e9f0 loads 4 bytes from [[a0+76]+228] +0x4 via base a1 ([[a0+76]+228]).
  The `lw` at 0xd80e9fc loads 4 bytes from [[a0+76]+232] +0x4 via base a0 ([[a0+76]+232]).
  The 3 such `lw` accesses load 4 bytes from [a0+76] +0x24 via base s0 ([a0+76]), including `lw` at 0xd80ea10, `lw` at 0xd80eaa4, `lw` at 0xd80eb4c.
  The 2 such `lw` accesses load 4 bytes from [[a0+76]+228] +0x4 via base a0 ([[a0+76]+228]), including `lw` at 0xd80ea30, `lw` at 0xd80eabc.
  The `lw` at 0xd80ea40 loads 4 bytes from [[a0+76]+232] +0x4 via base a5 ([[a0+76]+232]).
  The 2 such `sb` accesses store 1 byte to [a0+76] +0xf4 via base s0 ([a0+76]) with value 0x1, including `sb` at 0xd80ea4c, `sb` at 0xd80eac8.
  The 2 such `sw` accesses store 4 bytes to [[a0+76]+228] +0x4 via base a0 ([[a0+76]+228]), including `sw` at 0xd80ea54, `sw` at 0xd80ead0.
  The `sw` at 0xd80ea60 stores 4 bytes to [[a0+76]+232] +0x4 via base a7 ([[a0+76]+232]).
  The 2 such `sw` accesses store 4 bytes to [a0+76] +0xec via base s0 ([a0+76]) with value [[a0+76]+220], including `sw` at 0xd80ea6c, `sw` at 0xd80eae4.
  The 2 such `sw` accesses store 4 bytes to [a0+76] +0xf0 via base s0 ([a0+76]) with value [[a0+76]+224], including `sw` at 0xd80ea70, `sw` at 0xd80eae8.
  The `lw` at 0xd80ea84 loads 4 bytes from [[a0+76]+228] +0x24 via base t8 ([[a0+76]+228]).
  The `lw` at 0xd80ea90 loads 4 bytes from [[a0+76]+228] +0x4 via base ra ([[a0+76]+228]).
  The `sw` at 0xd80eb60 stores 4 bytes to [0x1014] +0x0 via base at ([0x1014]) with value [[a0+76]+204].
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14 via base t9 (a0), including `lw` at 0xd80eb98, `lw` at 0xd80ebb8, `lw` at 0xd80ebd8.
  The 3 such `lw` accesses load 4 bytes from abs 0xd84617c via base gp (0xd84e158), including `lw` at 0xd80eb9c, `lw` at 0xd80ebbc, `lw` at 0xd80ebdc.
  The `jalr` at 0xd80e964 calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd80ea0c calls (unknown callee) with a0=[[a0+76]+36], a1=0x400, a2=sp-56, a3=[[a0+76]+224], a4=[[a0+76]+204].
  The `bgezall` at 0xd80eaa0 calls (unknown callee) with a0=[[a0+76]+36], a1=0x3eb, a2=sp-72, a3=[[a0+76]+224], a4=[[a0+76]+204].
  The `bgezall` at 0xd80eb48 calls (unknown callee) with a0=[[a0+76]+36], a1=0x3ea, a2=sp-80, a3=(unknown), a4=[[a0+76]+204].
  The `jalr` at 0xd80eba0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8428c0, a2=(unknown), a3=(unknown).
  The `jalr` at 0xd80ebc0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8428f8, a2=0x1, a3=(unknown).
  The `jalr` at 0xd80ebe0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8428d8, a2=-0x1, a3=(unknown).
  The `bne` at 0xd80e978 goes to 0xd80eb38 when v1(=[[0x1014]]) != a4(=[[a0+76]+204]) and falls through when v1(=[[0x1014]]) == a4(=[[a0+76]+204]).
  The `bne` at 0xd80e98c goes to 0xd80e9a0 when a0(=[[a0+76]+240]) != a3(=[[a0+76]+224]) and falls through when a0(=[[a0+76]+240]) == a3(=[[a0+76]+224]).
  The `beq` at 0xd80e998 goes to 0xd80eafc when a1(=[[a0+76]+236]) == a2(=[[a0+76]+220]) and falls through when a1(=[[a0+76]+236]) != a2(=[[a0+76]+220]).
  The `beq` at 0xd80e9a4 goes to 0xd80eb0c when a3(=[[a0+76]+224]) == a2(=[[a0+76]+220]) and falls through when a3(=[[a0+76]+224]) != a2(=[[a0+76]+220]).
  The `beq` at 0xd80e9b8 goes to 0xd80eb0c when ra(=[[[a0+76]+232]+44]) == at(=0x3) and falls through when ra(=[[[a0+76]+232]+44]) != at(=0x3).
  The `beq` at 0xd80e9cc goes to 0xd80eb78 when at(=[[a0+76]+284]) == a2(=0x1) and falls through when at(=[[a0+76]+284]) != a2(=0x1).
  The `beq` at 0xd80ea24 goes to 0xd80ebd0 when v0(=ret(0xd80e4c4)) == a2(=-0x1) and falls through when v0(=ret(0xd80e4c4)) != a2(=-0x1).
  The `bne` at 0xd80ea38 goes to 0xd80ea4c when a3(=[[[a0+76]+228]+4]) != a4(unknown) and falls through when a3(=[[[a0+76]+228]+4]) == a4(unknown).
  The `beq` at 0xd80ea44 goes to 0xd80ea64 when a5(=[[[a0+76]+232]+4]) == a6(unknown) and falls through when a5(=[[[a0+76]+232]+4]) != a6(unknown).
  The `beq` at 0xd80eaac goes to 0xd80ebb0 when v0(=ret(0xd80e4c4)) == at(=-0x1) and falls through when v0(=ret(0xd80e4c4)) != at(=-0x1).
  The `beq` at 0xd80eac0 goes to 0xd80ead8 when v0(=[[[a0+76]+228]+4]) == v1(unknown) and falls through when v0(=[[[a0+76]+228]+4]) != v1(unknown).
  The `beq` at 0xd80eb1c goes to 0xd80ea80 when a5(=[[a0+76]+284]) >= 0x2 (signed) and falls through when a5(=[[a0+76]+284]) < 0x2 (signed).
  The `beq` at 0xd80eb24 goes to 0xd80ea80 when a6(unknown) == 0 and falls through when a6(unknown) != 0.
  The `bltz` at 0xd80eb50 goes to 0xd80eb94 when v0(=ret(0xd80e4c4)) < 0 (signed) and falls through when v0(=ret(0xd80e4c4)) >= 0 (signed).
  The `beq` at 0xd80eb78 goes to 0xd80e9d4 when v0(unknown) == 0 and falls through when v0(unknown) != 0.
  The return at 0xd80ea78 has v0 = ret(0xd80e4c4).
  The return at 0xd80eaf0 has v0 = [[[a0+76]+228]+4].
  The return at 0xd80eb04 has v0 = unknown.

- `glXCreateWindow` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd83b8b4 (n32).
  It occupies 328 bytes.
  The `lw` at 0xd83b8cc loads 4 bytes from abs 0xd84658c via base gp (0xd84e158).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0 via base s0 (a0), including `lw` at 0xd83b8f4, `lw` at 0xd83b994.
  The `lw` at 0xd83b900 loads 4 bytes from [a0+1232] +0x0 via base a5 ([a0+1232]).
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c via base s0 (a0), including `lw` at 0xd83b90c, `lw` at 0xd83b948, `lw` at 0xd83b9e4.
  The `lw` at 0xd83b910 loads 4 bytes from a0 (arg0 at entry) +0x70 via base s0 (a0).
  The `lw` at 0xd83b920 loads 4 bytes from abs 0xd84630c via base gp (0xd84e158).
  The `sw` at 0xd83b930 stores 4 bytes to a0 (arg0 at entry) +0x64 via base s0 (a0) with value [a0+108].
  The `sh` at 0xd83b938 stores 2 bytes to [a0+108] +0x2 via base v0 ([a0+108]) with value 0x6.
  The `sb` at 0xd83b940 stores 1 byte to [a0+108] +0x0 via base v0 ([a0+108]) with value 0x1f.
  The `lw` at 0xd83b944 loads 4 bytes from a0 (arg0 at entry) +0x60 via base s0 (a0).
  The `sw` at 0xd83b950 stores 4 bytes to a0 (arg0 at entry) +0x60 via base s0 (a0) with value [a0+96]+1.
  The `sw` at 0xd83b958 stores 4 bytes to a0 (arg0 at entry) +0x6c via base s0 (a0) with value [a0+108]+24.
  The `sb` at 0xd83b95c stores 1 byte to [a0+108] +0x1 via base v0 ([a0+108]) with value 0x1f.
  The `sb` at 0xd83b960 stores 1 byte to [a0+108] +0x0 via base v0 ([a0+108]).
  The `lw` at 0xd83b964 loads 4 bytes from a1 (arg1 at entry) +0x24 via base a2 (a1).
  The `sw` at 0xd83b968 stores 4 bytes to [a0+108] +0x4 via base v0 ([a0+108]) with value [a1+36].
  The `lw` at 0xd83b96c loads 4 bytes from a1 (arg1 at entry) +0x48 via base a2 (a1).
  The `sw` at 0xd83b970 stores 4 bytes to [a0+108] +0xc via base v0 ([a0+108]) with value a2.
  The `sw` at 0xd83b974 stores 4 bytes to [a0+108] +0x8 via base v0 ([a0+108]) with value [a1+72].
  The `lw` at 0xd83b978 loads 4 bytes from a0 (arg0 at entry) +0x2c via base s0 (a0).
  The `sw` at 0xd83b98c stores 4 bytes to unknown (base unknown) via base t2 (unknown) with value 0x0.
  The `sw` at 0xd83b990 stores 4 bytes to unknown (base unknown) via base t2 (unknown) with value ret(unknown).
  The `lw` at 0xd83b9a0 loads 4 bytes from [a0+1232] +0x4 via base a5 ([a0+1232]).
  The `lw` at 0xd83b9ac loads 4 bytes from a0 (arg0 at entry) +0x7c via base s0 (a0).
  The `jalr` at 0xd83b8e0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83b904 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown), a5=[a0+1232].
  The `jalr` at 0xd83b980 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[a1+72], a3=[a1+36], a4=0x1f, a6=[a0+96]+1, a7=[a0+108]+24.
  The `jalr` at 0xd83b9a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown), a5=[a0+1232].
  The `jalr` at 0xd83b9b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0xd83b9d8 calls _XFlush with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0xd83b8ec goes to 0xd83b9e8 when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` at 0xd83b8f8 goes to 0xd83b90c when a5(=[a0+1232]) == 0 and falls through when a5(=[a0+1232]) != 0.
  The `bne` at 0xd83b91c goes to 0xd83b9d8 when v1(=[a0+112]) < a0(=[a0+108]+24) (unsigned) and falls through when v1(=[a0+112]) >= a0(=[a0+108]+24) (unsigned).
  The `beq` at 0xd83b998 goes to 0xd83b9ac when a5(=[a0+1232]) == 0 and falls through when a5(=[a0+1232]) != 0.
  The `beq` at 0xd83b9b0 goes to 0xd83b9c4 when t9(=[a0+124]) == 0 and falls through when t9(=[a0+124]) != 0.
  The return at 0xd83b9d0 has v0 = unknown.
  The return at 0xd83b9f4 has v0 = 0x0.

- `glXDestroyWindow` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd83b9fc (n32).
  It occupies 252 bytes.
  The `lw` at 0xd83ba10 loads 4 bytes from abs 0xd84658c via base gp (0xd84e158).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0 via base s0 (a0), including `lw` at 0xd83ba38, `lw` at 0xd83baa8.
  The `lw` at 0xd83ba44 loads 4 bytes from [a0+1232] +0x0 via base a3 ([a0+1232]).
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c via base s0 (a0), including `lw` at 0xd83ba50, `lw` at 0xd83ba88, `lw` at 0xd83baf4.
  The `lw` at 0xd83ba54 loads 4 bytes from a0 (arg0 at entry) +0x70 via base s0 (a0).
  The `lw` at 0xd83ba64 loads 4 bytes from abs 0xd84630c via base gp (0xd84e158).
  The `sw` at 0xd83ba70 stores 4 bytes to a0 (arg0 at entry) +0x64 via base s0 (a0) with value [a0+108].
  The `sh` at 0xd83ba78 stores 2 bytes to [a0+108] +0x2 via base a0 ([a0+108]) with value 0x2.
  The `sb` at 0xd83ba80 stores 1 byte to [a0+108] +0x0 via base a0 ([a0+108]) with value 0x20.
  The `lw` at 0xd83ba84 loads 4 bytes from a0 (arg0 at entry) +0x60 via base s0 (a0).
  The `sw` at 0xd83ba90 stores 4 bytes to a0 (arg0 at entry) +0x60 via base s0 (a0) with value [a0+96]+1.
  The `sw` at 0xd83ba98 stores 4 bytes to a0 (arg0 at entry) +0x6c via base s0 (a0) with value [a0+108]+8.
  The `sw` at 0xd83ba9c stores 4 bytes to [a0+108] +0x4 via base a0 ([a0+108]) with value a1.
  The `sb` at 0xd83baa0 stores 1 byte to [a0+108] +0x1 via base a0 ([a0+108]) with value 0x20.
  The `sb` at 0xd83baa4 stores 1 byte to [a0+108] +0x0 via base a0 ([a0+108]).
  The `lw` at 0xd83bab4 loads 4 bytes from [a0+1232] +0x4 via base a3 ([a0+1232]).
  The `lw` at 0xd83bac0 loads 4 bytes from a0 (arg0 at entry) +0x7c via base s0 (a0).
  The `jalr` at 0xd83ba24 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83ba48 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=[a0+1232].
  The `jalr` at 0xd83bab8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x20, a3=[a0+1232], a4=[a0+96]+1, a5=[a0+108]+8, a6=0x2.
  The `jalr` at 0xd83bacc calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0xd83bae8 calls _XFlush with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0xd83ba30 goes to 0xd83bad8 when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` at 0xd83ba3c goes to 0xd83ba50 when a3(=[a0+1232]) == 0 and falls through when a3(=[a0+1232]) != 0.
  The `bne` at 0xd83ba60 goes to 0xd83bae8 when v0(=[a0+112]) < v1(=[a0+108]+8) (unsigned) and falls through when v0(=[a0+112]) >= v1(=[a0+108]+8) (unsigned).
  The `beq` at 0xd83baac goes to 0xd83bac0 when a3(=[a0+1232]) == 0 and falls through when a3(=[a0+1232]) != 0.
  The `beq` at 0xd83bac4 goes to 0xd83bad8 when t9(=[a0+124]) == 0 and falls through when t9(=[a0+124]) != 0.
  The return at 0xd83bae0 has v0 = unknown.

- `glXBindChannelToWindowSGIX` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd83c52c (n32).
  It occupies 352 bytes.
  The `lw` at 0xd83c548 loads 4 bytes from abs 0x1014 via base zero (0x0).
  The `lw` at 0xd83c558 loads 4 bytes from abs 0xd846588 via base gp (0xd84e158).
  The `lw` at 0xd83c568 loads 4 bytes from [0x1014] +0x114 via base at ([0x1014]).
  The `lw` at 0xd83c580 loads 4 bytes from abs 0xd84617c via base gp (0xd84e158).
  The `lw` at 0xd83c5a4 loads 4 bytes from abs 0xd846428 via base gp (0xd84e158).
  The `lw` at 0xd83c5c8 loads 4 bytes from abs 0xd84631c via base gp (0xd84e158).
  The `sb` at 0xd83c604 stores 1 byte to (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x48 via base v0 ((ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))).
  The 2 such `lw` accesses load 4 bytes from unknown (base unknown) via base t9 (unknown), including `lw` at 0xd83c608, `lw` at 0xd83c60c.
  The `lw` at 0xd83c620 loads 4 bytes from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x44 via base v0 ((ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))).
  The `sb` at 0xd83c688 stores 1 byte to (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x49 via base v0 ((ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))) with value 0x0.
  The `jalr` at 0xd83c570 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd83c594 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd83c5c0 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4.
  The `jalr` at 0xd83c5d4 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0xd83c61c calls (unknown callee) with a0=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+68], a1=0x1, a2=(unknown), a3=(unknown).
  The `beq` at 0xd83c578 goes to 0xd83c638 when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` at 0xd83c59c goes to 0xd83c65c when v0(=ret(0xd83c38c)) == 0 and falls through when v0(=ret(0xd83c38c)) != 0.
  The `beq` at 0xd83c600 goes to 0xd83c67c when a0(=a3) == 0 and falls through when a0(=a3) != 0.
  The `beq` at 0xd83c614 goes to 0xd83c674 when t9(unknown) == 0 and falls through when t9(unknown) != 0.
  The return at 0xd83c630 has v0 = one of 0x0, 0x1.
  The return at 0xd83c654 has v0 = 0x0.

- `__glChangeWindowSize` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cdb70 (n32).
  It occupies 260 bytes.
  The `sw` at 0xd9cdb78 stores 4 bytes to a0 (arg0 at entry) +0xe78 via base a0 (a0) with value a2.
  The `sw` at 0xd9cdb7c stores 4 bytes to a0 (arg0 at entry) +0xe74 via base a0 (a0) with value a1.
  The `lw` at 0xd9cdb80 loads 4 bytes from a0 (arg0 at entry) +0x77f8 via base a0 (a0).
  The `lw` at 0xd9cdb94 loads 4 bytes from [a0+30712] +0x38 via base at ([a0+30712]).
  The `lbu` at 0xd9cdbb8 loads 1 byte from a0 (arg0 at entry) +0xc96 via base s0 (a0).
  The `lw` at 0xd9cdbc4 loads 4 bytes from a0 (arg0 at entry) +0x77fc via base s0 (a0).
  The `lw` at 0xd9cdbc8 loads 4 bytes from [a0+30716] +0x38 via base a0 ([a0+30716]).
  The `lbu` at 0xd9cdbd8 loads 1 byte from a0 (arg0 at entry) +0xc98 via base s0 (a0).
  The `lw` at 0xd9cdbe4 loads 4 bytes from a0 (arg0 at entry) +0x7ac8 via base s0 (a0).
  The 2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc99 via base s0 (a0), including `lbu` at 0xd9cdbf0, `lbu` at 0xd9cdc70.
  The `lw` at 0xd9cdbfc loads 4 bytes from a0 (arg0 at entry) +0x7a6c via base s0 (a0).
  The `lbu` at 0xd9cdc10 loads 1 byte from a0 (arg0 at entry) +0xc9a via base s0 (a0).
  The `lw` at 0xd9cdc1c loads 4 bytes from a0 (arg0 at entry) +0x79f4 via base s0 (a0).
  The `lw` at 0xd9cdc30 loads 4 bytes from a0 (arg0 at entry) +0x2ec4 via base s0 (a0).
  The `lw` at 0xd9cdc58 loads 4 bytes from a0 (arg0 at entry) +0x7af0 via base s0 (a0).
  The `jalr` at 0xd9cdbb0 calls (unknown callee) with a0=[a0+30712], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cdbd0 calls (unknown callee) with a0=[a0+30716], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0xd9cdc08 calls (unknown callee) with a0=a0+31284, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0xd9cdc28 calls (unknown callee) with a0=a0+31164, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+3226]:1.
  The `jalr` at 0xd9cdc3c calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0xd9cdc64 calls (unknown callee) with a0=a0+31416, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `beq` at 0xd9cdbbc goes to 0xd9cdbd8 when v1(=[a0+3222]:1) == 0 and falls through when v1(=[a0+3222]:1) != 0.
  The `beq` at 0xd9cdbdc goes to 0xd9cdbf0 when a0(=[a0+3224]:1) == 0 and falls through when a0(=[a0+3224]:1) != 0.
  The `bne` at 0xd9cdbe8 goes to 0xd9cdc58 when a1(=[a0+31432]) != 0 and falls through when a1(=[a0+31432]) == 0.
  The `beq` at 0xd9cdbf4 goes to 0xd9cdc10 when a2(=[a0+3225]:1) == 0 and falls through when a2(=[a0+3225]:1) != 0.
  The `beq` at 0xd9cdc14 goes to 0xd9cdc30 when a3(=[a0+3226]:1) == 0 and falls through when a3(=[a0+3226]:1) != 0.
  The return at 0xd9cdc50 has v0 = ret(unknown).

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cdc80 (n32).
  It occupies 12 bytes.
  The `sw` at 0xd9cdc80 stores 4 bytes to a0 (arg0 at entry) +0xe80 via base a0 (a0) with value a2.
  The `sw` at 0xd9cdc88 stores 4 bytes to a0 (arg0 at entry) +0xe7c via base a0 (a0) with value a1.
  The return at 0xd9cdc84 has v0 = unknown.

- `__glFindWindowSize` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cdc90 (n32).
  It occupies 212 bytes.
  The `lw` at 0xd9cdca4 loads 4 bytes from a0 (arg0 at entry) +0x1c via base a0 (a0).
  The `lw` at 0xd9cdcd0 loads 4 bytes from a0 (arg0 at entry) +0xe74 via base s0 (a0).
  The `lw` at 0xd9cdcd4 loads 4 bytes from a0 (arg0 at entry) +0xe78 via base s0 (a0).
  The 2 such `lw` accesses load 4 bytes from abs 0xda8a018 via base gp (0xda90fd8), including `lw` at 0xd9cdce4, `lw` at 0xd9cdce4.
  The `lbu` at 0xd9cdcf0 loads 1 byte from a0 (arg0 at entry) +0xdd0 via base s0 (a0).
  The `lw` at 0xd9cdd08 loads 4 bytes from a0 (arg0 at entry) +0xe7c via base s0 (a0).
  The `lw` at 0xd9cdd10 loads 4 bytes from a0 (arg0 at entry) +0xe80 via base s0 (a0).
  The 2 such `lw` accesses load 4 bytes from abs 0xda8a01c via base gp (0xda90fd8), including `lw` at 0xd9cdd18, `lw` at 0xd9cdd30.
  The `lw` at 0xd9cdd44 loads 4 bytes from a0 (arg0 at entry) +0x48 via base s0 (a0).
  The `jalr` at 0xd9cdcc4 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-48, a2=sp-44, a3=sp-40, a4=sp-36.
  The `bgezall` at 0xd9cdce8 calls __glChangeWindowSize with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bgezall` at 0xd9cdd34 calls __glChangeReadWindowSize with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=[a0+3708], a4=[a0+3712].
  The `jalr` at 0xd9cdd50 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-32, a2=sp-28, a3=(unknown).
  The `bne` at 0xd9cdcd8 goes to 0xd9cdce4 when v0(=[a0+3700]) != a1(unknown) -> outside and falls through when v0(=[a0+3700]) == a1(unknown).
  The `beq` at 0xd9cdce0 goes to 0xd9cdcf0 when v1(=[a0+3704]) == a2(unknown) and falls through when v1(=[a0+3704]) != a2(unknown).
  The `beq` at 0xd9cdcf4 goes to 0xd9cdd44 when a0(=[a0+3536]:1) == 0 and falls through when a0(=[a0+3536]:1) != 0.
  The `bne` at 0xd9cdd0c goes to 0xd9cdd30 when a3(=[a0+3708]) != a1(unknown) and falls through when a3(=[a0+3708]) == a1(unknown).
  The `bne` at 0xd9cdd14 goes to 0xd9cdd34 when a4(=[a0+3712]) != a2(unknown) and falls through when a4(=[a0+3712]) == a2(unknown).
  The return at 0xd9cdd28 has v0 = unknown.

- `__glXBindHWContextToWindow` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2143464 (n64).
  It occupies 696 bytes.
  The instructions from 0x2143620 to 0x2143620 are not reached by any path from the entry, and their branches are not listed.
  The `ld` at 0x214347c loads 8 bytes from abs 0x217c220 via base gp (0x2183aa8).
  The `ld` at 0x2143490 loads 8 bytes from a0 (arg0 at entry) +0x98 via base a0 (a0).
  The 2 such `ld` accesses load 8 bytes from abs 0x1028 via base zero (0x0), including `ld` at 0x2143494, `ld` at 0x2143684.
  The 3 such `lw` accesses load 4 bytes from [a0+152]:8 +0x128 via base s0 ([a0+152]:8), including `lw` at 0x2143498, `lw` at 0x2143688, `lw` at 0x2143698.
  The `lw` at 0x214349c loads 4 bytes from [0x1028]:8 +0x0 via base v1 ([0x1028]:8).
  The 2 such `ld` accesses load 8 bytes from abs 0x217bac0 via base gp (0x2183aa8), including `ld` at 0x21434a4, `ld` at 0x21434c8.
  The 6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x148 via base s0 ([a0+152]:8), including `ld` at 0x21434a8, `ld` at 0x214358c, `ld` at 0x2143600.
  The `ld` at 0x21434ac loads 8 bytes from [a0+152]:8 +0x168 via base s0 ([a0+152]:8).
  The 6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x140 via base s0 ([a0+152]:8), including `ld` at 0x21434b0, `ld` at 0x2143590, `ld` at 0x2143604.
  The 2 such `sb` accesses store 1 byte to [a0+152]:8 +0x170 via base s0 ([a0+152]:8) with value 0x0, including `sb` at 0x21434b8, `sb` at 0x21436a0.
  The `ld` at 0x21434bc loads 8 bytes from [a0+152]:8 +0x160 via base s0 ([a0+152]:8).
  The 5 such `ld` accesses load 8 bytes from [a0+152]:8 +0x158 via base s0 ([a0+152]:8), including `ld` at 0x21434d4, `ld` at 0x2143508, `ld` at 0x2143520.
  The `lw` at 0x21434d8 loads 4 bytes from [[a0+152]:8+344]:8 +0x40 via base ra ([[a0+152]:8+344]:8).
  The 2 such `lw` accesses load 4 bytes from [a0+152]:8 +0x1b0 via base s0 ([a0+152]:8), including `lw` at 0x21434ec, `lw` at 0x2143638.
  The 2 such `lw` accesses load 4 bytes from [a0+152]:8 +0x1b4 via base s0 ([a0+152]:8), including `lw` at 0x21434f0, `lw` at 0x214363c.
  The 6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x150 via base s0 ([a0+152]:8), including `ld` at 0x21434fc, `ld` at 0x2143514, `ld` at 0x2143554.
  The `ld` at 0x2143500 loads 8 bytes from [[a0+152]:8+336]:8 +0x30 via base v1 ([[a0+152]:8+336]:8).
  The `ld` at 0x214350c loads 8 bytes from [[a0+152]:8+344]:8 +0x30 via base v0 ([[a0+152]:8+344]:8).
  The `lw` at 0x2143518 loads 4 bytes from [[a0+152]:8+336]:8 +0x8 via base a1 ([[a0+152]:8+336]:8).
  The `lw` at 0x2143524 loads 4 bytes from [[a0+152]:8+344]:8 +0x8 via base a0 ([[a0+152]:8+344]:8).
  The 3 such `lw` accesses load 4 bytes from [a0+152]:8 +0x40 via base s0 ([a0+152]:8), including `lw` at 0x2143538, `lw` at 0x21435cc, `lw` at 0x2143670.
  The 2 such `lw` accesses load 4 bytes from [[a0+152]:8+336]:8 +0x8 via base a0 ([[a0+152]:8+336]:8), including `lw` at 0x2143558, `lw` at 0x21435e4.
  The `lw` at 0x2143568 loads 4 bytes from [[a0+152]:8+344]:8 +0x8 via base a5 ([[a0+152]:8+344]:8).
  The 2 such `sb` accesses store 1 byte to [a0+152]:8 +0x170 via base s0 ([a0+152]:8) with value 0x1, including `sb` at 0x2143574, `sb` at 0x21435f0.
  The 2 such `sw` accesses store 4 bytes to [[a0+152]:8+336]:8 +0x8 via base a0 ([[a0+152]:8+336]:8), including `sw` at 0x214357c, `sw` at 0x21435f8.
  The `sw` at 0x2143588 stores 4 bytes to [[a0+152]:8+344]:8 +0x8 via base a7 ([[a0+152]:8+344]:8).
  The 2 such `sd` accesses store 8 bytes to [a0+152]:8 +0x160 via base s0 ([a0+152]:8) with value [[a0+152]:8+320]:8, including `sd` at 0x2143594, `sd` at 0x214360c.
  The 2 such `sd` accesses store 8 bytes to [a0+152]:8 +0x168 via base s0 ([a0+152]:8) with value [[a0+152]:8+328]:8, including `sd` at 0x2143598, `sd` at 0x2143610.
  The `ld` at 0x21435ac loads 8 bytes from [[a0+152]:8+336]:8 +0x30 via base t8 ([[a0+152]:8+336]:8).
  The `lw` at 0x21435b8 loads 4 bytes from [[a0+152]:8+336]:8 +0x8 via base ra ([[a0+152]:8+336]:8).
  The `sw` at 0x214368c stores 4 bytes to [0x1028]:8 +0x0 via base t2 ([0x1028]:8) with value [[a0+152]:8+296].
  The 3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28 via base t9 (a0), including `ld` at 0x21436c4, `ld` at 0x21436e4, `ld` at 0x2143704.
  The 3 such `ld` accesses load 8 bytes from abs 0x217bad8 via base gp (0x2183aa8), including `ld` at 0x21436c8, `ld` at 0x21436e8, `ld` at 0x2143708.
  The `jalr` at 0x214348c calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2143534 calls (unknown callee) with a0=[[a0+152]:8+64], a1=0x400, a2=sp-56, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296].
  The `bgezall` at 0x21435c8 calls (unknown callee) with a0=[[a0+152]:8+64], a1=0x3eb, a2=sp-72, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296].
  The `bgezall` at 0x2143674 calls (unknown callee) with a0=[[a0+152]:8+64], a1=0x3ea, a2=sp-80, a3=(unknown), a4=[[a0+152]:8+296].
  The `jalr` at 0x21436cc calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2177478, a2=(unknown), a3=(unknown).
  The `jalr` at 0x21436ec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x21774b0, a2=0x1, a3=(unknown).
  The `jalr` at 0x214370c calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2177490, a2=-0x1, a3=(unknown).
  The `bne` at 0x21434a0 goes to 0x2143660 when v1(=[[0x1028]:8]) != a4(=[[a0+152]:8+296]) and falls through when v1(=[[0x1028]:8]) == a4(=[[a0+152]:8+296]).
  The `bne` at 0x21434b4 goes to 0x21434c8 when a0(=[[a0+152]:8+360]:8) != a3(=[[a0+152]:8+328]:8) and falls through when a0(=[[a0+152]:8+360]:8) == a3(=[[a0+152]:8+328]:8).
  The `beq` at 0x21434c0 goes to 0x2143624 when a1(=[[a0+152]:8+352]:8) == a2(=[[a0+152]:8+320]:8) and falls through when a1(=[[a0+152]:8+352]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` at 0x21434cc goes to 0x2143634 when a3(=[[a0+152]:8+328]:8) == a2(=[[a0+152]:8+320]:8) and falls through when a3(=[[a0+152]:8+328]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` at 0x21434e0 goes to 0x2143634 when ra(=[[[a0+152]:8+344]:8+64]) == at(=0x3) and falls through when ra(=[[[a0+152]:8+344]:8+64]) != at(=0x3).
  The `beq` at 0x21434f4 goes to 0x21436a4 when at(=[[a0+152]:8+432]) == a2(=0x1) and falls through when at(=[[a0+152]:8+432]) != a2(=0x1).
  The `beq` at 0x214354c goes to 0x21436fc when v0(=ret(0x2142fec)) == a2(=-0x1) and falls through when v0(=ret(0x2142fec)) != a2(=-0x1).
  The `bne` at 0x2143560 goes to 0x2143574 when a3(=[[[a0+152]:8+336]:8+8]) != a4(unknown) and falls through when a3(=[[[a0+152]:8+336]:8+8]) == a4(unknown).
  The `beq` at 0x214356c goes to 0x214358c when a5(=[[[a0+152]:8+344]:8+8]) == a6(unknown) and falls through when a5(=[[[a0+152]:8+344]:8+8]) != a6(unknown).
  The `beq` at 0x21435d4 goes to 0x21436dc when v0(=ret(0x2142fec)) == at(=-0x1) and falls through when v0(=ret(0x2142fec)) != at(=-0x1).
  The `beq` at 0x21435e8 goes to 0x2143600 when v0(=[[[a0+152]:8+336]:8+8]) == v1(unknown) and falls through when v0(=[[[a0+152]:8+336]:8+8]) != v1(unknown).
  The `beq` at 0x2143644 goes to 0x21435a8 when a5(=[[a0+152]:8+432]) >= 0x2 (signed) and falls through when a5(=[[a0+152]:8+432]) < 0x2 (signed).
  The `beq` at 0x214364c goes to 0x21435a8 when a6(unknown) == 0 and falls through when a6(unknown) != 0.
  The `bltz` at 0x214367c goes to 0x21436c0 when v0(=ret(0x2142fec)) < 0 (signed) and falls through when v0(=ret(0x2142fec)) >= 0 (signed).
  The `beq` at 0x21436a4 goes to 0x21434fc when t3(unknown) == 0 and falls through when t3(unknown) != 0.
  The return at 0x21435a0 has v0 = ret(0x2142fec).
  The return at 0x2143618 has v0 = [[[a0+152]:8+336]:8+8].
  The return at 0x214362c has v0 = unknown.

- `glXCreateWindow` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2170560 (n64).
  It occupies 328 bytes.
  The `ld` at 0x2170578 loads 8 bytes from abs 0x217c2f8 via base gp (0x2183aa8).
  The 2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968 via base s0 (a0), including `ld` at 0x21705a0, `ld` at 0x217063c.
  The `ld` at 0x21705ac loads 8 bytes from [a0+2408]:8 +0x0 via base a5 ([a0+2408]:8).
  The 3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0 via base s0 (a0), including `ld` at 0x21705b8, `ld` at 0x21705f0, `ld` at 0x2170690.
  The `ld` at 0x21705bc loads 8 bytes from a0 (arg0 at entry) +0xb8 via base s0 (a0).
  The `sd` at 0x21705d8 stores 8 bytes to a0 (arg0 at entry) +0xa0 via base s0 (a0) with value [a0+176]:8.
  The `sh` at 0x21705e0 stores 2 bytes to [a0+176]:8 +0x2 via base a5 ([a0+176]:8) with value 0x6.
  The `sb` at 0x21705e8 stores 1 byte to [a0+176]:8 +0x0 via base a5 ([a0+176]:8) with value 0x1f.
  The `ld` at 0x21705ec loads 8 bytes from a0 (arg0 at entry) +0x98 via base s0 (a0).
  The `sd` at 0x21705f8 stores 8 bytes to a0 (arg0 at entry) +0x98 via base s0 (a0) with value [a0+152]:8+1.
  The `sd` at 0x2170600 stores 8 bytes to a0 (arg0 at entry) +0xb0 via base s0 (a0) with value [a0+176]:8+24.
  The `sb` at 0x2170604 stores 1 byte to [a0+176]:8 +0x1 via base a5 ([a0+176]:8) with value 0x1f.
  The `sb` at 0x2170608 stores 1 byte to [a0+176]:8 +0x0 via base a5 ([a0+176]:8).
  The `lw` at 0x217060c loads 4 bytes from a1 (arg1 at entry) +0x24 via base a3 (a1).
  The `sw` at 0x2170610 stores 4 bytes to [a0+176]:8 +0x4 via base a5 ([a0+176]:8) with value [a1+36].
  The `lw` at 0x2170614 loads 4 bytes from a1 (arg1 at entry) +0x48 via base a3 (a1).
  The `sw` at 0x2170618 stores 4 bytes to [a0+176]:8 +0xc via base a5 ([a0+176]:8) with value a2.
  The `sw` at 0x217061c stores 4 bytes to [a0+176]:8 +0x8 via base a5 ([a0+176]:8) with value [a1+72].
  The `ld` at 0x2170620 loads 8 bytes from a0 (arg0 at entry) +0x48 via base s0 (a0).
  The `sw` at 0x2170634 stores 4 bytes to unknown (base unknown) via base t8 (unknown) with value 0x0.
  The `sw` at 0x2170638 stores 4 bytes to unknown (base unknown) via base t8 (unknown) with value ret(unknown).
  The `ld` at 0x2170648 loads 8 bytes from [a0+2408]:8 +0x8 via base a5 ([a0+2408]:8).
  The `ld` at 0x2170654 loads 8 bytes from a0 (arg0 at entry) +0xd0 via base s0 (a0).
  The `ld` at 0x2170680 loads 8 bytes from abs 0x217bdf8 via base gp (0x2183aa8).
  The `jalr` at 0x217058c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21705b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown), a5=[a0+2408]:8.
  The `jalr` at 0x2170628 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=a2 at entry (arg2), a3=[a1+72], a4=[a1+36], a5=[a0+176]:8, a6=0x1f.
  The `jalr` at 0x217064c calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown), a5=[a0+2408]:8.
  The `jalr` at 0x2170660 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x2170684 calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8+24, a2=a2 at entry (arg2), a3=(unknown), a5=[a0+176]:8.
  The `beq` at 0x2170598 goes to 0x2170694 when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` at 0x21705a4 goes to 0x21705b8 when a5(=[a0+2408]:8) == 0 and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` at 0x21705c8 goes to 0x2170680 when a0(=[a0+184]:8) < a1(=[a0+176]:8+24) (unsigned) and falls through when a0(=[a0+184]:8) >= a1(=[a0+176]:8+24) (unsigned).
  The `beq` at 0x2170640 goes to 0x2170654 when a5(=[a0+2408]:8) == 0 and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` at 0x2170658 goes to 0x217066c when t9(=[a0+208]:8) == 0 and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x2170678 has v0 = unknown.
  The return at 0x21706a0 has v0 = 0x0.

- `glXDestroyWindow` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x21706a8 (n64).
  It occupies 252 bytes.
  The `ld` at 0x21706bc loads 8 bytes from abs 0x217c2f8 via base gp (0x2183aa8).
  The 2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968 via base s0 (a0), including `ld` at 0x21706e4, `ld` at 0x2170754.
  The `ld` at 0x21706f0 loads 8 bytes from [a0+2408]:8 +0x0 via base a4 ([a0+2408]:8).
  The 3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0 via base s0 (a0), including `ld` at 0x21706fc, `ld` at 0x2170734, `ld` at 0x21707a0.
  The `ld` at 0x2170700 loads 8 bytes from a0 (arg0 at entry) +0xb8 via base s0 (a0).
  The `ld` at 0x2170710 loads 8 bytes from abs 0x217bdf8 via base gp (0x2183aa8).
  The `sd` at 0x217071c stores 8 bytes to a0 (arg0 at entry) +0xa0 via base s0 (a0) with value [a0+176]:8.
  The `sh` at 0x2170724 stores 2 bytes to [a0+176]:8 +0x2 via base a0 ([a0+176]:8) with value 0x2.
  The `sb` at 0x217072c stores 1 byte to [a0+176]:8 +0x0 via base a0 ([a0+176]:8) with value 0x20.
  The `ld` at 0x2170730 loads 8 bytes from a0 (arg0 at entry) +0x98 via base s0 (a0).
  The `sd` at 0x217073c stores 8 bytes to a0 (arg0 at entry) +0x98 via base s0 (a0) with value [a0+152]:8+1.
  The `sd` at 0x2170744 stores 8 bytes to a0 (arg0 at entry) +0xb0 via base s0 (a0) with value [a0+176]:8+8.
  The `sw` at 0x2170748 stores 4 bytes to [a0+176]:8 +0x4 via base a0 ([a0+176]:8) with value a1.
  The `sb` at 0x217074c stores 1 byte to [a0+176]:8 +0x0 via base a0 ([a0+176]:8).
  The `sb` at 0x2170750 stores 1 byte to [a0+176]:8 +0x1 via base a0 ([a0+176]:8) with value 0x20.
  The `ld` at 0x2170760 loads 8 bytes from [a0+2408]:8 +0x8 via base a4 ([a0+2408]:8).
  The `ld` at 0x217076c loads 8 bytes from a0 (arg0 at entry) +0xd0 via base s0 (a0).
  The `jalr` at 0x21706d0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21706f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown), a4=[a0+2408]:8.
  The `jalr` at 0x2170764 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=a1 at entry (arg1), a4=[a0+2408]:8, a6=[a0+152]:8+1, a7=[a0+176]:8+8.
  The `jalr` at 0x2170778 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x2170794 calls _XFlush with a0=a0 at entry (arg0), a1=(unknown), a2=[a0+176]:8+8, a3=(unknown).
  The `beq` at 0x21706dc goes to 0x2170784 when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` at 0x21706e8 goes to 0x21706fc when a4(=[a0+2408]:8) == 0 and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` at 0x217070c goes to 0x2170794 when a1(=[a0+184]:8) < a2(=[a0+176]:8+8) (unsigned) and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+8) (unsigned).
  The `beq` at 0x2170758 goes to 0x217076c when a4(=[a0+2408]:8) == 0 and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` at 0x2170770 goes to 0x2170784 when t9(=[a0+208]:8) == 0 and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x217078c has v0 = unknown.

- `glXBindChannelToWindowSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x21711c0 (n64).
  It occupies 292 bytes.
  The `ld` at 0x21711d8 loads 8 bytes from abs 0x1028 via base zero (0x0).
  The `ld` at 0x21711e8 loads 8 bytes from abs 0x217c2f0 via base gp (0x2183aa8).
  The `ld` at 0x21711f0 loads 8 bytes from [0x1028]:8 +0x118 via base at ([0x1028]:8).
  The `ld` at 0x2171204 loads 8 bytes from abs 0x217bad8 via base gp (0x2183aa8).
  The `ld` at 0x217122c loads 8 bytes from abs 0x217c030 via base gp (0x2183aa8).
  The `ld` at 0x217124c loads 8 bytes from abs 0x217be18 via base gp (0x2183aa8).
  The `sb` at 0x2171284 stores 1 byte to unknown (base unknown) via base a6 (unknown).
  The 2 such `ld` accesses load 8 bytes from unknown (base unknown) via base t9 (unknown), including `ld` at 0x2171288, `ld` at 0x217128c.
  The `lw` at 0x21712a0 loads 4 bytes from unknown (base unknown) via base a6 (unknown).
  The `sb` at 0x21712e0 stores 1 byte to unknown (base unknown) via base a6 (unknown) with value 0x0.
  The `jalr` at 0x21711f4 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2171218 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0x2171244 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4.
  The `jalr` at 0x2171254 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x217129c calls (unknown callee) with a0=(unknown), a1=0x1, a2=(unknown), a3=(unknown), a7=(((a2 << 0x2) + a2) << 0x3).
  The `beq` at 0x21711fc goes to 0x21712b8 when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` at 0x2171220 goes to 0x21712cc when v0(=ret(0x2171024)) == 0 and falls through when v0(=ret(0x2171024)) != 0.
  The `beq` at 0x2171280 goes to 0x21712dc when v1(=a3) == 0 and falls through when v1(=a3) != 0.
  The `beq` at 0x2171290 goes to 0x21712d4 when t9(unknown) == 0 and falls through when t9(unknown) != 0.
  The return at 0x21712b0 has v0 = 0x1.
  The return at 0x21712c4 has v0 = 0x0.

- `__glChangeWindowSize` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2211840 (n64).
  It occupies 288 bytes.
  The `sw` at 0x2211848 stores 4 bytes to a0 (arg0 at entry) +0xfdc via base a0 (a0) with value a2.
  The `sw` at 0x2211854 stores 4 bytes to a0 (arg0 at entry) +0xfd8 via base a0 (a0) with value a1.
  The `ld` at 0x2211860 loads 8 bytes from a0 (arg0 at entry) +0x9968 via base s1 (a0+65536).
  The `ld` at 0x2211870 loads 8 bytes from [a0+39272]:8 +0x58 via base at ([a0+39272]:8).
  The `lbu` at 0x2211894 loads 1 byte from a0 (arg0 at entry) +0xde6 via base s0 (a0).
  The `ld` at 0x22118a0 loads 8 bytes from a0 (arg0 at entry) +0x9970 via base s1 (a0+65536).
  The `ld` at 0x22118a4 loads 8 bytes from [a0+39280]:8 +0x58 via base a0 ([a0+39280]:8).
  The `lbu` at 0x22118b4 loads 1 byte from a0 (arg0 at entry) +0xde8 via base s0 (a0).
  The `ld` at 0x22118c0 loads 8 bytes from a0 (arg0 at entry) +0x9de0 via base s1 (a0+65536).
  The 2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xde9 via base s0 (a0), including `lbu` at 0x22118cc, `lbu` at 0x221195c.
  The `ld` at 0x22118d8 loads 8 bytes from a0 (arg0 at entry) +0x9d50 via base s1 (a0+65536).
  The `lbu` at 0x22118f0 loads 1 byte from a0 (arg0 at entry) +0xdea via base s0 (a0).
  The `ld` at 0x22118fc loads 8 bytes from a0 (arg0 at entry) +0x9c78 via base s1 (a0+65536).
  The `ld` at 0x2211914 loads 8 bytes from a0 (arg0 at entry) +0x4850 via base s0 (a0).
  The `ld` at 0x2211940 loads 8 bytes from a0 (arg0 at entry) +0x9e20 via base s1 (a0+65536).
  The `jalr` at 0x221188c calls (unknown callee) with a0=[a0+39272]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x22118ac calls (unknown callee) with a0=[a0+39280]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0x22118e8 calls (unknown callee) with a0=a0+40184, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0x221190c calls (unknown callee) with a0=a0+39968, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `jalr` at 0x2211924 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x2211950 calls (unknown callee) with a0=a0+40392, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(unknown).
  The `beq` at 0x2211898 goes to 0x22118b4 when t8(=[a0+3558]:1) == 0 and falls through when t8(=[a0+3558]:1) != 0.
  The `beq` at 0x22118b8 goes to 0x22118cc when t9(=[a0+3560]:1) == 0 and falls through when t9(=[a0+3560]:1) != 0.
  The `bne` at 0x22118c4 goes to 0x2211940 when ra(=[a0+40416]:8) != 0 and falls through when ra(=[a0+40416]:8) == 0.
  The `beq` at 0x22118d0 goes to 0x22118f0 when at(=[a0+3561]:1) == 0 and falls through when at(=[a0+3561]:1) != 0.
  The `beq` at 0x22118f4 goes to 0x2211914 when a1(=[a0+3562]:1) == 0 and falls through when a1(=[a0+3562]:1) != 0.
  The return at 0x2211938 has v0 = ret(unknown).

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2211960 (n64).
  It occupies 12 bytes.
  The `sw` at 0x2211960 stores 4 bytes to a0 (arg0 at entry) +0xfe4 via base a0 (a0) with value a2.
  The `sw` at 0x2211968 stores 4 bytes to a0 (arg0 at entry) +0xfe0 via base a0 (a0) with value a1.
  The return at 0x2211964 has v0 = unknown.

- `__glFindWindowSize` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2211970 (n64).
  It occupies 212 bytes.
  The `ld` at 0x2211984 loads 8 bytes from a0 (arg0 at entry) +0x38 via base a0 (a0).
  The `lw` at 0x22119b0 loads 4 bytes from a0 (arg0 at entry) +0xfd8 via base s0 (a0).
  The `lw` at 0x22119b4 loads 4 bytes from a0 (arg0 at entry) +0xfdc via base s0 (a0).
  The 2 such `ld` accesses load 8 bytes from abs 0x22da810 via base gp (0x22e0798), including `ld` at 0x22119c4, `ld` at 0x22119c4.
  The `lbu` at 0x22119d0 loads 1 byte from a0 (arg0 at entry) +0xf20 via base s0 (a0).
  The `lw` at 0x22119e8 loads 4 bytes from a0 (arg0 at entry) +0xfe0 via base s0 (a0).
  The `lw` at 0x22119f0 loads 4 bytes from a0 (arg0 at entry) +0xfe4 via base s0 (a0).
  The 2 such `ld` accesses load 8 bytes from abs 0x22da818 via base gp (0x22e0798), including `ld` at 0x22119f8, `ld` at 0x2211a10.
  The `ld` at 0x2211a24 loads 8 bytes from a0 (arg0 at entry) +0x90 via base s0 (a0).
  The `jalr` at 0x22119a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-48, a2=sp-44, a3=sp-40, a4=sp-36.
  The `bgezall` at 0x22119c8 calls __glChangeWindowSize with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bgezall` at 0x2211a14 calls __glChangeReadWindowSize with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=[a0+4064], a4=[a0+4068].
  The `jalr` at 0x2211a30 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-32, a2=sp-28, a3=(unknown).
  The `bne` at 0x22119b8 goes to 0x22119c4 when v0(=[a0+4056]) != a1(unknown) -> outside and falls through when v0(=[a0+4056]) == a1(unknown).
  The `beq` at 0x22119c0 goes to 0x22119d0 when v1(=[a0+4060]) == a2(unknown) and falls through when v1(=[a0+4060]) != a2(unknown).
  The `beq` at 0x22119d4 goes to 0x2211a24 when a0(=[a0+3872]:1) == 0 and falls through when a0(=[a0+3872]:1) != 0.
  The `bne` at 0x22119ec goes to 0x2211a10 when a3(=[a0+4064]) != a1(unknown) and falls through when a3(=[a0+4064]) == a1(unknown).
  The `bne` at 0x22119f4 goes to 0x2211a14 when a4(=[a0+4068]) != a2(unknown) and falls through when a4(=[a0+4068]) == a2(unknown).
  The return at 0x2211a08 has v0 = unknown.

- `__ct__18ChannelWindowClassGPCcP3ArgUii` in `usr/gfx/ircombine` at 0x10020b00 (n32).
  It occupies 484 bytes.
  The instructions from 0x10020cd0 to 0x10020ce0 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x10020b3c loads 4 bytes from abs 0x100a931c via base gp (0x100b1070).
  The `lw` at 0x10020b48 loads 4 bytes from abs 0x100a9e10 via base gp (0x100b1070).
  The `sw` at 0x10020b50 stores 4 bytes to a0 (arg0 at entry) +0x8 via base v1 (a0) with value sym(__vtbl__18ChannelWindowClass).
  The 2 such `lw` accesses load 4 bytes from abs 0x100a9320 via base gp (0x100b1070), including `lw` at 0x10020b58, `lw` at 0x10020c20.
  The `lw` at 0x10020b70 loads 4 bytes from abs 0x100a9e14 via base gp (0x100b1070).
  The `lw` at 0x10020b74 loads 4 bytes from abs 0x100a9324 via base gp (0x100b1070).
  The `lw` at 0x10020b88 loads 4 bytes from abs 0x100a92fc via base gp (0x100b1070).
  The `lw` at 0x10020bb4 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x10020bb8 loads 4 bytes from [a0+8] +0xe4 via base a0 ([a0+8]).
  The `lw` at 0x10020bc8 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x10020bcc loads 4 bytes from [a0+8] +0xec via base t9 ([a0+8]).
  The `lw` at 0x10020be8 loads 4 bytes from abs 0x100a9798 via base gp (0x100b1070).
  The `sw` at 0x10020c14 stores 4 bytes to a0 (arg0 at entry) +0x40 via base a2 (a0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0), including `lw` at 0x10020c1c, `lw` at 0x10020ca4.
  The 2 such `lw` accesses load 4 bytes from abs 0x100a91ac via base gp (0x100b1070), including `lw` at 0x10020c34, `lw` at 0x10020c40.
  The `lw` at 0x10020c50 loads 4 bytes from abs 0x100a9328 via base gp (0x100b1070).
  The `lw` at 0x10020c64 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0).
  The `lw` at 0x10020c68 loads 4 bytes from abs 0x100a932c via base gp (0x100b1070).
  The `lw` at 0x10020c94 loads 4 bytes from abs 0x100a9330 via base gp (0x100b1070).
  The `lw` at 0x10020cac loads 4 bytes from abs 0x100a979c via base gp (0x100b1070).
  The `jalr` at 0x10020b40 calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10020b5c calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10020b78 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultChannelWindowClassResources__18ChannelWindowClass), a3=(unknown).
  The `jalr` at 0x10020b8c calls __nw__GUi with a0=0x150, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10020bd0 calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x10020bec calls __ct__5Form1GPCcP10_WidgetReci with a0=(unknown), a1=0x100aa400, a2=ret(unknown), a3=a4 at entry (arg4).
  The `jalr` at 0x10020c24 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=(unknown), a2=a0 at entry (arg0), a3=(unknown).
  The `jalr` at 0x10020c54 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x19f, a3=sym(XtStrings)+234, a4=0x242, a5=0x0.
  The `jalr` at 0x10020c6c calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=(unknown), a3=(unknown).
  The `jalr` at 0x10020c98 calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x0, a6=0x1, a7=0x1.
  The `jal` at 0x10020cb0 calls setParent__5Form1GP14VkSimpleWindow with a0=[a0+64], a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `beq` at 0x10020ba0 goes to 0x10020c08 when a0(=ret(__nw__GUi)) == 0 and falls through when a0(=ret(__nw__GUi)) != 0.
  The return at 0x10020cc8 has v0 = a0.

- `__dt__18ChannelWindowClassGv` in `usr/gfx/ircombine` at 0x10020cf0 (n32).
  It occupies 220 bytes.
  The instructions from 0x10020db8 to 0x10020dc8 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x10020d1c loads 4 bytes from abs 0x100a9e10 via base gp (0x100b1070).
  The `sw` at 0x10020d24 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__18ChannelWindowClass).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0), including `lw` at 0x10020d2c, `lw` at 0x10020d4c.
  The `lw` at 0x10020d3c loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x10020d40 loads 4 bytes from [a0+64] +0x8 via base a0 ([a0+64]).
  The `lw` at 0x10020d44 loads 4 bytes from [[a0+64]+8] +0xc via base a0 ([[a0+64]+8]).
  The `lw` at 0x10020d5c loads 4 bytes from a0 (arg0 at entry) +0x40 via base t9 (a0).
  The `lw` at 0x10020d60 loads 4 bytes from [a0+64] +0x8 via base t9 ([a0+64]).
  The `lw` at 0x10020d64 loads 4 bytes from [[a0+64]+8] +0x14 via base t9 ([[a0+64]+8]).
  The `lw` at 0x10020d78 loads 4 bytes from abs 0x100a91fc via base gp (0x100b1070).
  The `lw` at 0x10020d98 loads 4 bytes from abs 0x100a9250 via base gp (0x100b1070).
  The `jalr` at 0x10020d68 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10020d7c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10020d9c calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10020d14 goes to 0x10020da4 when at(=a0) == 0 and falls through when at(=a0) != 0.
  The `beq` at 0x10020d30 goes to 0x10020d70 when a1(=[a0+64]) == 0 and falls through when a1(=[a0+64]) != 0.
  The `beq` at 0x10020d8c goes to 0x10020da4 when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  The return at 0x10020db0 has v0 = unknown.

- `className__18ChannelWindowClassGv` in `usr/gfx/ircombine` at 0x10020dd0 (n32).
  It occupies 64 bytes.
  The `lw` at 0x10020de8 loads 4 bytes from abs 0x100a90d4 via base at (0x100b1070).
  The return at 0x10020e08 has v0 = 0x100940e0.

- `okToQuit__18ChannelWindowClassGv` in `usr/gfx/ircombine` at 0x10020e10 (n32).
  It occupies 104 bytes.
  The `lw` at 0x10020e30 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x10020e34 loads 4 bytes from [a0+8] +0x30 via base a0 ([a0+8]).
  The `lw` at 0x10020e44 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x10020e48 loads 4 bytes from [a0+8] +0x38 via base t9 ([a0+8]).
  The `jalr` at 0x10020e4c calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10020e70 has v0 = 0x0.

- `update__18ChannelWindowClassGv` in `usr/gfx/ircombine` at 0x10020e80 (n32).
  It occupies 76 bytes.
  The `lw` at 0x10020ea0 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x10020ea4 loads 4 bytes from abs 0x100a97a0 via base gp (0x100b1070).
  The `jal` at 0x10020ea8 calls update__5Form1Gv with a0=[a0+64], a1=0x901f0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10020ec4 has v0 = ret(update__5Form1Gv).

- `update_fast__18ChannelWindowClassGv` in `usr/gfx/ircombine` at 0x10020ed0 (n32).
  It occupies 76 bytes.
  The `lw` at 0x10020ef0 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x10020ef4 loads 4 bytes from abs 0x100a97a4 via base gp (0x100b1070).
  The `jal` at 0x10020ef8 calls update_fast__5Form1Gv with a0=[a0+64], a1=0x901a0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10020f14 has v0 = ret(update_fast__5Form1Gv).

- `__ct__14DVPWindowClassGPCcP3ArgUii` in `usr/gfx/ircombine` at 0x10020f40 (n32).
  It occupies 516 bytes.
  The instructions from 0x10021130 to 0x10021140 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x10020f7c loads 4 bytes from abs 0x100a931c via base gp (0x100b1070).
  The `lw` at 0x10020f88 loads 4 bytes from abs 0x100a9e18 via base gp (0x100b1070).
  The `sw` at 0x10020f90 stores 4 bytes to a0 (arg0 at entry) +0x8 via base v1 (a0) with value sym(__vtbl__14DVPWindowClass).
  The 2 such `lw` accesses load 4 bytes from abs 0x100a9320 via base gp (0x100b1070), including `lw` at 0x10020f98, `lw` at 0x10021060.
  The `lw` at 0x10020fb0 loads 4 bytes from abs 0x100a9ef8 via base gp (0x100b1070).
  The `lw` at 0x10020fb4 loads 4 bytes from abs 0x100a9324 via base gp (0x100b1070).
  The `lw` at 0x10020fc8 loads 4 bytes from abs 0x100a92fc via base gp (0x100b1070).
  The `lw` at 0x10020ff4 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x10020ff8 loads 4 bytes from [a0+8] +0xe4 via base a0 ([a0+8]).
  The `lw` at 0x10021008 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x1002100c loads 4 bytes from [a0+8] +0xec via base t9 ([a0+8]).
  The `lw` at 0x10021028 loads 4 bytes from abs 0x100a9638 via base gp (0x100b1070).
  The `sw` at 0x10021054 stores 4 bytes to a0 (arg0 at entry) +0x40 via base a2 (a0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0), including `lw` at 0x1002105c, `lw` at 0x100210b8.
  The 2 such `lw` accesses load 4 bytes from abs 0x100a91ac via base gp (0x100b1070), including `lw` at 0x10021074, `lw` at 0x10021080.
  The `lw` at 0x10021090 loads 4 bytes from abs 0x100a9328 via base gp (0x100b1070).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0), including `lw` at 0x100210a4, `lw` at 0x100210c8.
  The `lw` at 0x100210a8 loads 4 bytes from abs 0x100a932c via base gp (0x100b1070).
  The `lw` at 0x100210bc loads 4 bytes from [a0+64] +0x8 via base a0 ([a0+64]).
  The `lw` at 0x100210c0 loads 4 bytes from [[a0+64]+8] +0x210 via base a0 ([[a0+64]+8]).
  The `lw` at 0x100210d8 loads 4 bytes from a0 (arg0 at entry) +0x40 via base t9 (a0).
  The `lw` at 0x100210dc loads 4 bytes from [a0+64] +0x8 via base t9 ([a0+64]).
  The `lw` at 0x100210e0 loads 4 bytes from [[a0+64]+8] +0x218 via base t9 ([[a0+64]+8]).
  The `lw` at 0x1002110c loads 4 bytes from abs 0x100a9330 via base gp (0x100b1070).
  The `jalr` at 0x10020f80 calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10020f9c calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10020fb8 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultDVPWindowClassResources__14DVPWindowClass), a3=(unknown).
  The `jalr` at 0x10020fcc calls __nw__GUi with a0=0x120, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10021010 calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x1002102c calls __ct__7DvpFormGPCcP10_WidgetReci with a0=(unknown), a1=0x100aa408, a2=ret(unknown), a3=a4 at entry (arg4).
  The `jalr` at 0x10021064 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=(unknown), a2=a0 at entry (arg0), a3=(unknown).
  The `jalr` at 0x10021094 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x1f4, a3=sym(XtStrings)+234, a4=0x244, a5=0x0.
  The `jalr` at 0x100210ac calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=(unknown), a3=(unknown).
  The `jalr` at 0x100210e4 calls (unknown callee) with a0=([[[a0+64]+8]+528] + [a0+64]), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10021110 calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x1, a6=0x1, a7=0x1.
  The `beq` at 0x10020fe0 goes to 0x10021048 when a0(=ret(__nw__GUi)) == 0 and falls through when a0(=ret(__nw__GUi)) != 0.
  The return at 0x10021128 has v0 = a0.

- `__dt__14DVPWindowClassGv` in `usr/gfx/ircombine` at 0x10021150 (n32).
  It occupies 220 bytes.
  The instructions from 0x10021218 to 0x10021228 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x1002117c loads 4 bytes from abs 0x100a9e18 via base gp (0x100b1070).
  The `sw` at 0x10021184 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__14DVPWindowClass).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0), including `lw` at 0x1002118c, `lw` at 0x100211ac.
  The `lw` at 0x1002119c loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x100211a0 loads 4 bytes from [a0+64] +0x8 via base a0 ([a0+64]).
  The `lw` at 0x100211a4 loads 4 bytes from [[a0+64]+8] +0xc via base a0 ([[a0+64]+8]).
  The `lw` at 0x100211bc loads 4 bytes from a0 (arg0 at entry) +0x40 via base t9 (a0).
  The `lw` at 0x100211c0 loads 4 bytes from [a0+64] +0x8 via base t9 ([a0+64]).
  The `lw` at 0x100211c4 loads 4 bytes from [[a0+64]+8] +0x14 via base t9 ([[a0+64]+8]).
  The `lw` at 0x100211d8 loads 4 bytes from abs 0x100a91fc via base gp (0x100b1070).
  The `lw` at 0x100211f8 loads 4 bytes from abs 0x100a9250 via base gp (0x100b1070).
  The `jalr` at 0x100211c8 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100211dc calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100211fc calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10021174 goes to 0x10021204 when at(=a0) == 0 and falls through when at(=a0) != 0.
  The `beq` at 0x10021190 goes to 0x100211d0 when a1(=[a0+64]) == 0 and falls through when a1(=[a0+64]) != 0.
  The `beq` at 0x100211ec goes to 0x10021204 when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  The return at 0x10021210 has v0 = unknown.

- `className__14DVPWindowClassGv` in `usr/gfx/ircombine` at 0x10021230 (n32).
  It occupies 64 bytes.
  The `lw` at 0x10021248 loads 4 bytes from abs 0x100a90d4 via base at (0x100b1070).
  The return at 0x10021268 has v0 = 0x10094110.

- `okToQuit__14DVPWindowClassGv` in `usr/gfx/ircombine` at 0x10021270 (n32).
  It occupies 104 bytes.
  The `lw` at 0x10021290 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x10021294 loads 4 bytes from [a0+8] +0x30 via base a0 ([a0+8]).
  The `lw` at 0x100212a4 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x100212a8 loads 4 bytes from [a0+8] +0x38 via base t9 ([a0+8]).
  The `jalr` at 0x100212ac calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100212d0 has v0 = 0x0.

- `update__14DVPWindowClassGv` in `usr/gfx/ircombine` at 0x100212e0 (n32).
  It occupies 76 bytes.
  The `lw` at 0x10021300 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x10021304 loads 4 bytes from abs 0x100a963c via base gp (0x100b1070).
  The `jal` at 0x10021308 calls update__7DvpFormGv with a0=[a0+64], a1=0x8fd90, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10021324 has v0 = ret(update__7DvpFormGv).

- `update_fast__14DVPWindowClassGv` in `usr/gfx/ircombine` at 0x10021330 (n32).
  It occupies 76 bytes.
  The `lw` at 0x10021350 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x10021354 loads 4 bytes from abs 0x100a9640 via base gp (0x100b1070).
  The `jal` at 0x10021358 calls update_fast__7DvpFormGv with a0=[a0+64], a1=0x8fd40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10021374 has v0 = ret(update_fast__7DvpFormGv).

- `setParent__7DvpFormGP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x10021770 (n32).
  It occupies 52 bytes.
  The `sw` at 0x10021788 stores 4 bytes to a0 (arg0 at entry) +0x114 via base v0 (a0) with value a1.
  The return at 0x1002179c has v0 = a0.

- `setParent__11EncoderFormGP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x10028db0 (n32).
  It occupies 52 bytes.
  The `sw` at 0x10028dc8 stores 4 bytes to a0 (arg0 at entry) +0x1cc via base v0 (a0) with value a1.
  The return at 0x10028ddc has v0 = a0.

- `__ct__18EncoderWindowClassGPCcP3ArgUi` in `usr/gfx/ircombine` at 0x100327e0 (n32).
  It occupies 480 bytes.
  The instructions from 0x100329ac to 0x100329bc are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x10032818 loads 4 bytes from abs 0x100a931c via base gp (0x100b1070).
  The `lw` at 0x10032824 loads 4 bytes from abs 0x100a9e38 via base gp (0x100b1070).
  The `sw` at 0x1003282c stores 4 bytes to a0 (arg0 at entry) +0x8 via base v1 (a0) with value sym(__vtbl__18EncoderWindowClass).
  The 2 such `lw` accesses load 4 bytes from abs 0x100a9320 via base gp (0x100b1070), including `lw` at 0x10032834, `lw` at 0x100328fc.
  The `lw` at 0x1003284c loads 4 bytes from abs 0x100a9e3c via base gp (0x100b1070).
  The `lw` at 0x10032850 loads 4 bytes from abs 0x100a9324 via base gp (0x100b1070).
  The `lw` at 0x10032864 loads 4 bytes from abs 0x100a92fc via base gp (0x100b1070).
  The `lw` at 0x10032890 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x10032894 loads 4 bytes from [a0+8] +0xe4 via base a0 ([a0+8]).
  The `lw` at 0x100328a4 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x100328a8 loads 4 bytes from [a0+8] +0xec via base t9 ([a0+8]).
  The `lw` at 0x100328bc loads 4 bytes from abs 0x100a90d4 via base gp (0x100b1070).
  The `lw` at 0x100328c4 loads 4 bytes from abs 0x100a96d0 via base gp (0x100b1070).
  The `sw` at 0x100328f0 stores 4 bytes to a0 (arg0 at entry) +0x40 via base a2 (a0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0), including `lw` at 0x100328f8, `lw` at 0x10032980.
  The 2 such `lw` accesses load 4 bytes from abs 0x100a91ac via base gp (0x100b1070), including `lw` at 0x10032910, `lw` at 0x1003291c.
  The `lw` at 0x1003292c loads 4 bytes from abs 0x100a9328 via base gp (0x100b1070).
  The `lw` at 0x10032940 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0).
  The `lw` at 0x10032944 loads 4 bytes from abs 0x100a932c via base gp (0x100b1070).
  The `lw` at 0x10032970 loads 4 bytes from abs 0x100a9330 via base gp (0x100b1070).
  The `lw` at 0x10032988 loads 4 bytes from abs 0x100a96d4 via base gp (0x100b1070).
  The `jalr` at 0x1003281c calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10032838 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032854 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultEncoderWindowClassResources__18EncoderWindowClass), a3=(unknown).
  The `jalr` at 0x10032868 calls __nw__GUi with a0=0x1d4, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100328ac calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x100328c8 calls __ct__11EncoderFormGPCcP10_WidgetRec with a0=(unknown), a1=0x10096058, a2=ret(unknown), a3=(unknown).
  The `jalr` at 0x10032900 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=(unknown), a2=a0 at entry (arg0), a3=(unknown).
  The `jalr` at 0x10032930 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x1f4, a3=sym(XtStrings)+234, a4=0x258, a5=0x0.
  The `jalr` at 0x10032948 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032974 calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x0, a6=0x1, a7=0x1.
  The `jal` at 0x1003298c calls setParent__11EncoderFormGP14VkSimpleWindow with a0=[a0+64], a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `beq` at 0x1003287c goes to 0x100328e4 when a0(=ret(__nw__GUi)) == 0 and falls through when a0(=ret(__nw__GUi)) != 0.
  The return at 0x100329a4 has v0 = a0.

- `__dt__18EncoderWindowClassGv` in `usr/gfx/ircombine` at 0x100329c0 (n32).
  It occupies 220 bytes.
  The instructions from 0x10032a88 to 0x10032a98 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x100329ec loads 4 bytes from abs 0x100a9e38 via base gp (0x100b1070).
  The `sw` at 0x100329f4 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__18EncoderWindowClass).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0), including `lw` at 0x100329fc, `lw` at 0x10032a1c.
  The `lw` at 0x10032a0c loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x10032a10 loads 4 bytes from [a0+64] +0x8 via base a0 ([a0+64]).
  The `lw` at 0x10032a14 loads 4 bytes from [[a0+64]+8] +0xc via base a0 ([[a0+64]+8]).
  The `lw` at 0x10032a2c loads 4 bytes from a0 (arg0 at entry) +0x40 via base t9 (a0).
  The `lw` at 0x10032a30 loads 4 bytes from [a0+64] +0x8 via base t9 ([a0+64]).
  The `lw` at 0x10032a34 loads 4 bytes from [[a0+64]+8] +0x14 via base t9 ([[a0+64]+8]).
  The `lw` at 0x10032a48 loads 4 bytes from abs 0x100a91fc via base gp (0x100b1070).
  The `lw` at 0x10032a68 loads 4 bytes from abs 0x100a9250 via base gp (0x100b1070).
  The `jalr` at 0x10032a38 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10032a4c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032a6c calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100329e4 goes to 0x10032a74 when at(=a0) == 0 and falls through when at(=a0) != 0.
  The `beq` at 0x10032a00 goes to 0x10032a40 when a1(=[a0+64]) == 0 and falls through when a1(=[a0+64]) != 0.
  The `beq` at 0x10032a5c goes to 0x10032a74 when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  The return at 0x10032a80 has v0 = unknown.

- `className__18EncoderWindowClassGv` in `usr/gfx/ircombine` at 0x10032aa0 (n32).
  It occupies 64 bytes.
  The `lw` at 0x10032ab8 loads 4 bytes from abs 0x100a90d4 via base at (0x100b1070).
  The return at 0x10032ad8 has v0 = 0x10096068.

- `okToQuit__18EncoderWindowClassGv` in `usr/gfx/ircombine` at 0x10032ae0 (n32).
  It occupies 104 bytes.
  The `lw` at 0x10032b00 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x10032b04 loads 4 bytes from [a0+8] +0x30 via base a0 ([a0+8]).
  The `lw` at 0x10032b14 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x10032b18 loads 4 bytes from [a0+8] +0x38 via base t9 ([a0+8]).
  The `jalr` at 0x10032b1c calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10032b40 has v0 = 0x0.

- `update__18EncoderWindowClassGv` in `usr/gfx/ircombine` at 0x10032b50 (n32).
  It occupies 76 bytes.
  The `lw` at 0x10032b70 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x10032b74 loads 4 bytes from abs 0x100a96d8 via base gp (0x100b1070).
  The `jal` at 0x10032b78 calls update__11EncoderFormGv with a0=[a0+64], a1=0x7e520, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10032b94 has v0 = ret(update__11EncoderFormGv).

- `update_fast__18EncoderWindowClassGv` in `usr/gfx/ircombine` at 0x10032ba0 (n32).
  It occupies 76 bytes.
  The `lw` at 0x10032bc0 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x10032bc4 loads 4 bytes from abs 0x100a96dc via base gp (0x100b1070).
  The `jal` at 0x10032bc8 calls update_fast__11EncoderFormGv with a0=[a0+64], a1=0x7e4d0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10032be4 has v0 = ret(update_fast__11EncoderFormGv).

- `setParent__5Form1GP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x10032ed0 (n32).
  It occupies 52 bytes.
  The `sw` at 0x10032ee8 stores 4 bytes to a0 (arg0 at entry) +0x144 via base v0 (a0) with value a1.
  The return at 0x10032efc has v0 = a0.

- `setParent__5Form2GP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x1003c490 (n32).
  It occupies 52 bytes.
  The `sw` at 0x1003c4a8 stores 4 bytes to a0 (arg0 at entry) +0xac via base v0 (a0) with value a1.
  The return at 0x1003c4bc has v0 = a0.

- `setParent__5FrameGP8VkWindow` in `usr/gfx/ircombine` at 0x10041a70 (n32).
  It occupies 52 bytes.
  The `sw` at 0x10041a88 stores 4 bytes to a0 (arg0 at entry) +0xdc via base v0 (a0) with value a1.
  The return at 0x10041a9c has v0 = a0.

- `grabWindow__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10041fe0 (n32).
  It occupies 808 bytes.
  The `lw` at 0x10042008 loads 4 bytes from a0 (arg0 at entry) +0x108 via base at (a0).
  The `lw` at 0x10042018 loads 4 bytes from abs 0x100a9318 via base gp (0x100b1070).
  The 2 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8 via base v0 (ret(getTheErrorDialog__Gv)), including `lw` at 0x10042028, `lw` at 0x10042054.
  The `lw` at 0x1004202c loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108 via base a0 ([ret(getTheErrorDialog__Gv)+8]).
  The `lw` at 0x10042034 loads 4 bytes from abs 0x100a90d4 via base gp (0x100b1070).
  The `lw` at 0x10042058 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110 via base t9 ([ret(getTheErrorDialog__Gv)+8]).
  The `lw` at 0x10042070 loads 4 bytes from abs 0x100a9320 via base gp (0x100b1070).
  The `lw` at 0x10042084 loads 4 bytes from abs 0x100a9304 via base gp (0x100b1070).
  The `lw` at 0x1004209c loads 4 bytes from abs 0x100a98e0 via base gp (0x100b1070).
  The `lw` at 0x100420d8 loads 4 bytes from abs 0x100a93b0 via base gp (0x100b1070).
  The `lw` at 0x10042108 loads 4 bytes from abs 0x100a93b4 via base gp (0x100b1070).
  The branch at 0x10042128 (target 0x100421e0) is never taken because its operands are equal constants, and it falls through.
  The `lw` at 0x10042148 loads 4 bytes from abs 0x100a93b8 via base gp (0x100b1070).
  The `lw` at 0x100421c8 loads 4 bytes from abs 0x100a9160 via base gp (0x100b1070).
  The `lw` at 0x100421ec loads 4 bytes from abs 0x100a93bc via base gp (0x100b1070).
  The `lw` at 0x10042200 loads 4 bytes from abs 0x100a93c0 via base gp (0x100b1070).
  The 4 such `lw` accesses load 4 bytes from abs 0x100a9ee8 via base gp (0x100b1070), including `lw` at 0x10042210, `lw` at 0x1004223c, `lw` at 0x10042268.
  The `lw` at 0x1004221c loads 4 bytes from a0 (arg0 at entry) +0x108 via base t3 (a0).
  The `sw` at 0x10042234 stores 4 bytes to unknown (base unknown) via base t1 (unknown).
  The `lw` at 0x10042248 loads 4 bytes from a0 (arg0 at entry) +0x108 via base t1 (a0).
  The `sw` at 0x10042260 stores 4 bytes to unknown (base unknown) via base a7 (unknown).
  The `lw` at 0x10042274 loads 4 bytes from a0 (arg0 at entry) +0x108 via base a7 (a0).
  The `sw` at 0x1004228c stores 4 bytes to unknown (base unknown) via base a5 (unknown).
  The `lw` at 0x100422a0 loads 4 bytes from a0 (arg0 at entry) +0x108 via base a5 (a0).
  The `sw` at 0x100422b8 stores 4 bytes to unknown (base unknown) via base a3 (unknown).
  The `lw` at 0x100422c4 loads 4 bytes from a0 (arg0 at entry) +0x108 via base a1 (a0).
  The `lw` at 0x100422d0 loads 4 bytes from abs 0x100a98c4 via base gp (0x100b1070).
  The `lw` at 0x100422e0 loads 4 bytes from abs 0x100a98b8 via base gp (0x100b1070).
  The `jalr` at 0x1004201c calls getTheErrorDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004205c calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x100978b8, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10042074 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10042088 calls XtDisplay with a0=ret(baseWidget__11VkComponentCGv), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100420a0 calls select_window__5FrameGP9_XDisplay with a0=a0 at entry (arg0), a1=ret(XtDisplay), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100420dc calls XGetGeometry with a0=(unknown), a1=ret(select_window__5FrameGP9_XDisplay), a2=sp-200, a3=sp-196, a4=sp-196, a5=sp-192, a6=sp-192, a7=sp-192.
  The `jalr` at 0x1004210c calls XmuClientWindow with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004214c calls XQueryTree with a0=(unknown), a1=(unknown), a2=sp-184, a3=sp-180, a4=sp-176, a5=sp-172.
  The `jalr` at 0x100421cc calls XFree with a0=(unknown), a1=ret(XQueryTree), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100421f0 calls XGetWindowAttributes with a0=(unknown), a1=(unknown), a2=sp-160, a3=(unknown).
  The `jalr` at 0x10042204 calls XSync with a0=(unknown), a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x100422d4 calls clamp_channel__5FrameGiN21 with a0=a0 at entry (arg0), a1=[a0+264], a2=0x1, a3=0x3, a5=[a0+264], a6=0xab0, a7=[a0+264].
  The `jal` at 0x100422e4 calls update__5FrameGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x10042010 goes to 0x1004206c when at(=[a0+264]) != v0(=-0x1) and falls through when at(=[a0+264]) == v0(=-0x1).
  The `beq` at 0x100420e8 goes to 0x1004211c when v0(=ret(XGetGeometry)) == 0 and falls through when v0(=ret(XGetGeometry)) != 0.
  The `beq` at 0x100420f8 goes to 0x1004211c when t1(unknown) == t2(unknown) and falls through when t1(unknown) != t2(unknown).
  The `beq` at 0x10042164 goes to 0x10042184 when t9(unknown) == ra(unknown) and falls through when t9(unknown) != ra(unknown).
  The `beq` at 0x10042170 goes to 0x10042184 when at(unknown) == 0 and falls through when at(unknown) != 0.
  The `bne` at 0x1004217c goes to 0x10042194 when v0(=ret(XQueryTree)) != 0 and falls through when v0(=ret(XQueryTree)) == 0.
  The `bne` at 0x1004219c goes to 0x100421e0 when a0(=one of 0x0, 0x1) != 0 and falls through when a0(=one of 0x0, 0x1) == 0.
  The `beq` at 0x100421b0 goes to 0x100421d4 when a1(=ret(XQueryTree)) == 0 and falls through when a1(=ret(XQueryTree)) != 0.
  The `beq` at 0x100421bc goes to 0x100421d4 when a3(unknown) == 0 and falls through when a3(unknown) != 0.
  The return at 0x10042300 has v0 = unknown.

- `grabWindowCallback__5FrameSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100497c0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100497f0 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x100497f4 loads 4 bytes from [a1+8] +0x144 via base a0 ([a1+8]).
  The `lw` at 0x1004980c loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x10049810 loads 4 bytes from [a1+8] +0x14c via base t9 ([a1+8]).
  The `jalr` at 0x10049814 calls (unknown callee) with a0=([[a1+8]+324] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x678b0.
  The return at 0x10049830 has v0 = ret(unknown).

- `__ct__14GVOWindowClassGPCcP3ArgUi` in `usr/gfx/ircombine` at 0x1004b990 (n32).
  It occupies 544 bytes.
  The instructions from 0x1004bb9c to 0x1004bbac are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x1004b9c8 loads 4 bytes from abs 0x100a931c via base gp (0x100b1070).
  The `lw` at 0x1004b9d4 loads 4 bytes from abs 0x100a9e68 via base gp (0x100b1070).
  The `sw` at 0x1004b9dc stores 4 bytes to a0 (arg0 at entry) +0x8 via base v1 (a0) with value sym(__vtbl__14GVOWindowClass).
  The 2 such `lw` accesses load 4 bytes from abs 0x100a9320 via base gp (0x100b1070), including `lw` at 0x1004b9e4, `lw` at 0x1004baa8.
  The `lw` at 0x1004b9fc loads 4 bytes from abs 0x100a9efc via base gp (0x100b1070).
  The `lw` at 0x1004ba00 loads 4 bytes from abs 0x100a9324 via base gp (0x100b1070).
  The `lw` at 0x1004ba14 loads 4 bytes from abs 0x100a92fc via base gp (0x100b1070).
  The `lw` at 0x1004ba40 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x1004ba44 loads 4 bytes from [a0+8] +0xe4 via base a0 ([a0+8]).
  The `lw` at 0x1004ba54 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x1004ba58 loads 4 bytes from [a0+8] +0xec via base t9 ([a0+8]).
  The `lw` at 0x1004ba70 loads 4 bytes from abs 0x100a9938 via base gp (0x100b1070).
  The `sw` at 0x1004ba9c stores 4 bytes to a0 (arg0 at entry) +0x40 via base a2 (a0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0), including `lw` at 0x1004baa4, `lw` at 0x1004bb24.
  The 2 such `lw` accesses load 4 bytes from abs 0x100a91ac via base gp (0x100b1070), including `lw` at 0x1004babc, `lw` at 0x1004bac8.
  The 2 such `lw` accesses load 4 bytes from abs 0x100a9328 via base gp (0x100b1070), including `lw` at 0x1004bad8, `lw` at 0x1004bafc.
  The `lw` at 0x1004bae8 loads 4 bytes from a0 (arg0 at entry) +0x10 via base a0 (a0).
  The `lw` at 0x1004baec loads 4 bytes from abs 0x100a9258 via base gp (0x100b1070).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0), including `lw` at 0x1004bb10, `lw` at 0x1004bb34.
  The `lw` at 0x1004bb14 loads 4 bytes from abs 0x100a932c via base gp (0x100b1070).
  The `lw` at 0x1004bb28 loads 4 bytes from [a0+64] +0x8 via base a0 ([a0+64]).
  The `lw` at 0x1004bb2c loads 4 bytes from [[a0+64]+8] +0x270 via base a0 ([[a0+64]+8]).
  The `lw` at 0x1004bb44 loads 4 bytes from a0 (arg0 at entry) +0x40 via base t9 (a0).
  The `lw` at 0x1004bb48 loads 4 bytes from [a0+64] +0x8 via base t9 ([a0+64]).
  The `lw` at 0x1004bb4c loads 4 bytes from [[a0+64]+8] +0x278 via base t9 ([[a0+64]+8]).
  The `lw` at 0x1004bb78 loads 4 bytes from abs 0x100a9330 via base gp (0x100b1070).
  The `jalr` at 0x1004b9cc calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004b9e8 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004ba04 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultGVOWindowClassResources__14GVOWindowClass), a3=(unknown).
  The `jalr` at 0x1004ba18 calls __nw__GUi with a0=0x158, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004ba5c calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x1004ba74 calls __ct__7GvoFormGPCcP10_WidgetRec with a0=(unknown), a1=0x100aa728, a2=ret(unknown), a3=(unknown).
  The `jalr` at 0x1004baac calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=(unknown), a2=a0 at entry (arg0), a3=(unknown).
  The `jalr` at 0x1004badc calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x1f4, a3=sym(XtStrings)+234, a4=0x258, a5=0x0.
  The `jalr` at 0x1004bb00 calls XtVaSetValues with a0=[a0+16], a1=sym(XtShellStrings)+280, a2=0x0, a3=0x0.
  The `jalr` at 0x1004bb18 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004bb50 calls (unknown callee) with a0=([[[a0+64]+8]+624] + [a0+64]), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004bb7c calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x0, a6=0x1, a7=0x1.
  The `beq` at 0x1004ba2c goes to 0x1004ba90 when a0(=ret(__nw__GUi)) == 0 and falls through when a0(=ret(__nw__GUi)) != 0.
  The return at 0x1004bb94 has v0 = a0.

- `__dt__14GVOWindowClassGv` in `usr/gfx/ircombine` at 0x1004bbb0 (n32).
  It occupies 220 bytes.
  The instructions from 0x1004bc78 to 0x1004bc88 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x1004bbdc loads 4 bytes from abs 0x100a9e68 via base gp (0x100b1070).
  The `sw` at 0x1004bbe4 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__14GVOWindowClass).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0), including `lw` at 0x1004bbec, `lw` at 0x1004bc0c.
  The `lw` at 0x1004bbfc loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x1004bc00 loads 4 bytes from [a0+64] +0x8 via base a0 ([a0+64]).
  The `lw` at 0x1004bc04 loads 4 bytes from [[a0+64]+8] +0xc via base a0 ([[a0+64]+8]).
  The `lw` at 0x1004bc1c loads 4 bytes from a0 (arg0 at entry) +0x40 via base t9 (a0).
  The `lw` at 0x1004bc20 loads 4 bytes from [a0+64] +0x8 via base t9 ([a0+64]).
  The `lw` at 0x1004bc24 loads 4 bytes from [[a0+64]+8] +0x14 via base t9 ([[a0+64]+8]).
  The `lw` at 0x1004bc38 loads 4 bytes from abs 0x100a91fc via base gp (0x100b1070).
  The `lw` at 0x1004bc58 loads 4 bytes from abs 0x100a9250 via base gp (0x100b1070).
  The `jalr` at 0x1004bc28 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004bc3c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004bc5c calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x1004bbd4 goes to 0x1004bc64 when at(=a0) == 0 and falls through when at(=a0) != 0.
  The `beq` at 0x1004bbf0 goes to 0x1004bc30 when a1(=[a0+64]) == 0 and falls through when a1(=[a0+64]) != 0.
  The `beq` at 0x1004bc4c goes to 0x1004bc64 when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  The return at 0x1004bc70 has v0 = unknown.

- `className__14GVOWindowClassGv` in `usr/gfx/ircombine` at 0x1004bc90 (n32).
  It occupies 64 bytes.
  The `lw` at 0x1004bca8 loads 4 bytes from abs 0x100a90d8 via base at (0x100b1070).
  The return at 0x1004bcc8 has v0 = 0x10098300.

- `okToQuit__14GVOWindowClassGv` in `usr/gfx/ircombine` at 0x1004bcd0 (n32).
  It occupies 104 bytes.
  The `lw` at 0x1004bcf0 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x1004bcf4 loads 4 bytes from [a0+8] +0x30 via base a0 ([a0+8]).
  The `lw` at 0x1004bd04 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x1004bd08 loads 4 bytes from [a0+8] +0x38 via base t9 ([a0+8]).
  The `jalr` at 0x1004bd0c calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004bd30 has v0 = 0x0.

- `update__14GVOWindowClassGv` in `usr/gfx/ircombine` at 0x1004bd40 (n32).
  It occupies 76 bytes.
  The `lw` at 0x1004bd60 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x1004bd64 loads 4 bytes from abs 0x100a993c via base gp (0x100b1070).
  The `jal` at 0x1004bd68 calls update__7GvoFormGv with a0=[a0+64], a1=0x65330, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004bd84 has v0 = ret(update__7GvoFormGv).

- `update_fast__14GVOWindowClassGv` in `usr/gfx/ircombine` at 0x1004bd90 (n32).
  It occupies 76 bytes.
  The `lw` at 0x1004bdb0 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x1004bdb4 loads 4 bytes from abs 0x100a9940 via base gp (0x100b1070).
  The `jal` at 0x1004bdb8 calls update_fast__7GvoFormGv with a0=[a0+64], a1=0x652e0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004bdd4 has v0 = ret(update_fast__7GvoFormGv).

- `__ct__18GlobalsWindowClassGPCcP3ArgUi` in `usr/gfx/ircombine` at 0x1004be00 (n32).
  It occupies 496 bytes.
  The instructions from 0x1004bfdc to 0x1004bfec are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x1004be38 loads 4 bytes from abs 0x100a931c via base gp (0x100b1070).
  The `lw` at 0x1004be44 loads 4 bytes from abs 0x100a9e6c via base gp (0x100b1070).
  The `sw` at 0x1004be4c stores 4 bytes to a0 (arg0 at entry) +0x8 via base v1 (a0) with value sym(__vtbl__18GlobalsWindowClass).
  The 2 such `lw` accesses load 4 bytes from abs 0x100a9320 via base gp (0x100b1070), including `lw` at 0x1004be54, `lw` at 0x1004bf18.
  The `lw` at 0x1004be6c loads 4 bytes from abs 0x100a9e70 via base gp (0x100b1070).
  The `lw` at 0x1004be70 loads 4 bytes from abs 0x100a9324 via base gp (0x100b1070).
  The `lw` at 0x1004be84 loads 4 bytes from abs 0x100a92fc via base gp (0x100b1070).
  The `lw` at 0x1004beb0 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x1004beb4 loads 4 bytes from [a0+8] +0xe4 via base a0 ([a0+8]).
  The `lw` at 0x1004bec4 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x1004bec8 loads 4 bytes from [a0+8] +0xec via base t9 ([a0+8]).
  The `lw` at 0x1004bee0 loads 4 bytes from abs 0x100a9854 via base gp (0x100b1070).
  The `sw` at 0x1004bf0c stores 4 bytes to a0 (arg0 at entry) +0x40 via base a2 (a0).
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0), including `lw` at 0x1004bf14, `lw` at 0x1004bf70, `lw` at 0x1004bfb0.
  The 2 such `lw` accesses load 4 bytes from abs 0x100a91ac via base gp (0x100b1070), including `lw` at 0x1004bf2c, `lw` at 0x1004bf38.
  The `lw` at 0x1004bf48 loads 4 bytes from abs 0x100a9328 via base gp (0x100b1070).
  The `lw` at 0x1004bf5c loads 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0).
  The `lw` at 0x1004bf60 loads 4 bytes from abs 0x100a932c via base gp (0x100b1070).
  The `lw` at 0x1004bf74 loads 4 bytes from abs 0x100a985c via base gp (0x100b1070).
  The `lw` at 0x1004bfa0 loads 4 bytes from abs 0x100a9330 via base gp (0x100b1070).
  The `lw` at 0x1004bfb8 loads 4 bytes from abs 0x100a9858 via base gp (0x100b1070).
  The `jalr` at 0x1004be3c calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004be58 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004be74 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultGlobalsWindowClassResources__18GlobalsWindowClass), a3=(unknown).
  The `jalr` at 0x1004be88 calls __nw__GUi with a0=0xb0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004becc calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x1004bee4 calls __ct__5Form2GPCcP10_WidgetRec with a0=(unknown), a1=0x100aa730, a2=ret(unknown), a3=(unknown).
  The `jalr` at 0x1004bf1c calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=(unknown), a2=a0 at entry (arg0), a3=(unknown).
  The `jalr` at 0x1004bf4c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x1f7, a3=sym(XtStrings)+234, a4=0x149, a5=0x0.
  The `jalr` at 0x1004bf64 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=(unknown), a3=(unknown).
  The `jal` at 0x1004bf78 calls update__5Form2Gv with a0=[a0+64], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004bfa4 calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x1, a6=0x1, a7=0x1.
  The `jal` at 0x1004bfbc calls setParent__5Form2GP14VkSimpleWindow with a0=[a0+64], a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `beq` at 0x1004be9c goes to 0x1004bf00 when a0(=ret(__nw__GUi)) == 0 and falls through when a0(=ret(__nw__GUi)) != 0.
  The return at 0x1004bfd4 has v0 = a0.

- `__dt__18GlobalsWindowClassGv` in `usr/gfx/ircombine` at 0x1004bff0 (n32).
  It occupies 220 bytes.
  The instructions from 0x1004c0b8 to 0x1004c0c8 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x1004c01c loads 4 bytes from abs 0x100a9e6c via base gp (0x100b1070).
  The `sw` at 0x1004c024 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__18GlobalsWindowClass).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0), including `lw` at 0x1004c02c, `lw` at 0x1004c04c.
  The `lw` at 0x1004c03c loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x1004c040 loads 4 bytes from [a0+64] +0x8 via base a0 ([a0+64]).
  The `lw` at 0x1004c044 loads 4 bytes from [[a0+64]+8] +0xc via base a0 ([[a0+64]+8]).
  The `lw` at 0x1004c05c loads 4 bytes from a0 (arg0 at entry) +0x40 via base t9 (a0).
  The `lw` at 0x1004c060 loads 4 bytes from [a0+64] +0x8 via base t9 ([a0+64]).
  The `lw` at 0x1004c064 loads 4 bytes from [[a0+64]+8] +0x14 via base t9 ([[a0+64]+8]).
  The `lw` at 0x1004c078 loads 4 bytes from abs 0x100a91fc via base gp (0x100b1070).
  The `lw` at 0x1004c098 loads 4 bytes from abs 0x100a9250 via base gp (0x100b1070).
  The `jalr` at 0x1004c068 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004c07c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004c09c calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x1004c014 goes to 0x1004c0a4 when at(=a0) == 0 and falls through when at(=a0) != 0.
  The `beq` at 0x1004c030 goes to 0x1004c070 when a1(=[a0+64]) == 0 and falls through when a1(=[a0+64]) != 0.
  The `beq` at 0x1004c08c goes to 0x1004c0a4 when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  The return at 0x1004c0b0 has v0 = unknown.

- `className__18GlobalsWindowClassGv` in `usr/gfx/ircombine` at 0x1004c0d0 (n32).
  It occupies 64 bytes.
  The `lw` at 0x1004c0e8 loads 4 bytes from abs 0x100a90d8 via base at (0x100b1070).
  The return at 0x1004c108 has v0 = 0x10098310.

- `okToQuit__18GlobalsWindowClassGv` in `usr/gfx/ircombine` at 0x1004c110 (n32).
  It occupies 104 bytes.
  The `lw` at 0x1004c130 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x1004c134 loads 4 bytes from [a0+8] +0x30 via base a0 ([a0+8]).
  The `lw` at 0x1004c144 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x1004c148 loads 4 bytes from [a0+8] +0x38 via base t9 ([a0+8]).
  The `jalr` at 0x1004c14c calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004c170 has v0 = 0x0.

- `update__18GlobalsWindowClassGv` in `usr/gfx/ircombine` at 0x1004c180 (n32).
  It occupies 76 bytes.
  The `lw` at 0x1004c1a0 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x1004c1a4 loads 4 bytes from abs 0x100a985c via base gp (0x100b1070).
  The `jal` at 0x1004c1a8 calls update__5Form2Gv with a0=[a0+64], a1=0x64ef0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004c1c4 has v0 = ret(update__5Form2Gv).

- `clampManagedArea__18GlobalsWindowClassGv` in `usr/gfx/ircombine` at 0x1004c1d0 (n32).
  It occupies 76 bytes.
  The `lw` at 0x1004c1f0 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x1004c1f4 loads 4 bytes from abs 0x100a9860 via base gp (0x100b1070).
  The `jal` at 0x1004c1f8 calls clampManagedArea__5Form2Gv with a0=[a0+64], a1=0x64ea0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004c214 has v0 = ret(clampManagedArea__5Form2Gv).

- `setParent__7GvoFormGP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x1004c550 (n32).
  It occupies 52 bytes.
  The `sw` at 0x1004c568 stores 4 bytes to a0 (arg0 at entry) +0x150 via base v0 (a0) with value a1.
  The return at 0x1004c57c has v0 = a0.

- `setParent__12HardwareFormGP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x10055d40 (n32).
  It occupies 52 bytes.
  The `sw` at 0x10055d58 stores 4 bytes to a0 (arg0 at entry) +0x74 via base v0 (a0) with value a1.
  The return at 0x10055d6c has v0 = a0.

- `__ct__19HardwareWindowClassGPCcP3ArgUi` in `usr/gfx/ircombine` at 0x10058290 (n32).
  It occupies 516 bytes.
  The instructions from 0x10058480 to 0x10058490 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x100582c8 loads 4 bytes from abs 0x100a931c via base gp (0x100b1070).
  The `lw` at 0x100582d4 loads 4 bytes from abs 0x100a9e8c via base gp (0x100b1070).
  The `sw` at 0x100582dc stores 4 bytes to a0 (arg0 at entry) +0x8 via base v1 (a0) with value sym(__vtbl__19HardwareWindowClass).
  The 2 such `lw` accesses load 4 bytes from abs 0x100a9320 via base gp (0x100b1070), including `lw` at 0x100582e4, `lw` at 0x100583ac.
  The `lw` at 0x100582fc loads 4 bytes from abs 0x100a9e90 via base gp (0x100b1070).
  The `lw` at 0x10058300 loads 4 bytes from abs 0x100a9324 via base gp (0x100b1070).
  The `lw` at 0x10058314 loads 4 bytes from abs 0x100a92fc via base gp (0x100b1070).
  The `lw` at 0x10058340 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x10058344 loads 4 bytes from [a0+8] +0xe4 via base a0 ([a0+8]).
  The `lw` at 0x10058354 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x10058358 loads 4 bytes from [a0+8] +0xec via base t9 ([a0+8]).
  The `lw` at 0x1005836c loads 4 bytes from abs 0x100a90d8 via base gp (0x100b1070).
  The `lw` at 0x10058374 loads 4 bytes from abs 0x100a99f0 via base gp (0x100b1070).
  The `sw` at 0x100583a0 stores 4 bytes to a0 (arg0 at entry) +0x40 via base a2 (a0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0), including `lw` at 0x100583a8, `lw` at 0x10058454.
  The 2 such `lw` accesses load 4 bytes from abs 0x100a91ac via base gp (0x100b1070), including `lw` at 0x100583c0, `lw` at 0x100583cc.
  The 2 such `lw` accesses load 4 bytes from abs 0x100a9328 via base gp (0x100b1070), including `lw` at 0x100583dc, `lw` at 0x10058400.
  The `lw` at 0x100583ec loads 4 bytes from a0 (arg0 at entry) +0x10 via base a0 (a0).
  The `lw` at 0x100583f0 loads 4 bytes from abs 0x100a9258 via base gp (0x100b1070).
  The `lw` at 0x10058414 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0).
  The `lw` at 0x10058418 loads 4 bytes from abs 0x100a932c via base gp (0x100b1070).
  The `lw` at 0x10058444 loads 4 bytes from abs 0x100a9330 via base gp (0x100b1070).
  The `lw` at 0x1005845c loads 4 bytes from abs 0x100a99f4 via base gp (0x100b1070).
  The `jalr` at 0x100582cc calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100582e8 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10058304 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultHardwareWindowClassResources__19HardwareWindowClass), a3=(unknown).
  The `jalr` at 0x10058318 calls __nw__GUi with a0=0x7c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1005835c calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x10058378 calls __ct__12HardwareFormGPCcP10_WidgetRec with a0=(unknown), a1=0x10099988, a2=ret(unknown), a3=(unknown).
  The `jalr` at 0x100583b0 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=(unknown), a2=a0 at entry (arg0), a3=(unknown).
  The `jalr` at 0x100583e0 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x1c6, a3=sym(XtStrings)+234, a4=0xe3, a5=0x0.
  The `jalr` at 0x10058404 calls XtVaSetValues with a0=[a0+16], a1=sym(XtShellStrings)+280, a2=0x0, a3=0x0.
  The `jalr` at 0x1005841c calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=(unknown), a3=(unknown).
  The `jalr` at 0x10058448 calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x0, a6=0x1, a7=0x1.
  The `jal` at 0x10058460 calls setParent__12HardwareFormGP14VkSimpleWindow with a0=[a0+64], a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `beq` at 0x1005832c goes to 0x10058394 when a0(=ret(__nw__GUi)) == 0 and falls through when a0(=ret(__nw__GUi)) != 0.
  The return at 0x10058478 has v0 = a0.

- `__dt__19HardwareWindowClassGv` in `usr/gfx/ircombine` at 0x100584a0 (n32).
  It occupies 220 bytes.
  The instructions from 0x10058568 to 0x10058578 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x100584cc loads 4 bytes from abs 0x100a9e8c via base gp (0x100b1070).
  The `sw` at 0x100584d4 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__19HardwareWindowClass).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0), including `lw` at 0x100584dc, `lw` at 0x100584fc.
  The `lw` at 0x100584ec loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x100584f0 loads 4 bytes from [a0+64] +0x8 via base a0 ([a0+64]).
  The `lw` at 0x100584f4 loads 4 bytes from [[a0+64]+8] +0xc via base a0 ([[a0+64]+8]).
  The `lw` at 0x1005850c loads 4 bytes from a0 (arg0 at entry) +0x40 via base t9 (a0).
  The `lw` at 0x10058510 loads 4 bytes from [a0+64] +0x8 via base t9 ([a0+64]).
  The `lw` at 0x10058514 loads 4 bytes from [[a0+64]+8] +0x14 via base t9 ([[a0+64]+8]).
  The `lw` at 0x10058528 loads 4 bytes from abs 0x100a91fc via base gp (0x100b1070).
  The `lw` at 0x10058548 loads 4 bytes from abs 0x100a9250 via base gp (0x100b1070).
  The `jalr` at 0x10058518 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1005852c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1005854c calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100584c4 goes to 0x10058554 when at(=a0) == 0 and falls through when at(=a0) != 0.
  The `beq` at 0x100584e0 goes to 0x10058520 when a1(=[a0+64]) == 0 and falls through when a1(=[a0+64]) != 0.
  The `beq` at 0x1005853c goes to 0x10058554 when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  The return at 0x10058560 has v0 = unknown.

- `className__19HardwareWindowClassGv` in `usr/gfx/ircombine` at 0x10058580 (n32).
  It occupies 64 bytes.
  The `lw` at 0x10058598 loads 4 bytes from abs 0x100a90d8 via base at (0x100b1070).
  The return at 0x100585b8 has v0 = 0x10099998.

- `okToQuit__19HardwareWindowClassGv` in `usr/gfx/ircombine` at 0x100585c0 (n32).
  It occupies 104 bytes.
  The `lw` at 0x100585e0 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x100585e4 loads 4 bytes from [a0+8] +0x30 via base a0 ([a0+8]).
  The `lw` at 0x100585f4 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x100585f8 loads 4 bytes from [a0+8] +0x38 via base t9 ([a0+8]).
  The `jalr` at 0x100585fc calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10058620 has v0 = 0x0.

- `setTarget__19HardwareWindowClassGP11konTarget_t` in `usr/gfx/ircombine` at 0x10058630 (n32).
  It occupies 84 bytes.
  The `lw` at 0x10058654 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x1005865c loads 4 bytes from abs 0x100a99f8 via base gp (0x100b1070).
  The `jal` at 0x10058660 calls setTarget__12HardwareFormGP11konTarget_t with a0=[a0+64], a1=a1 at entry (arg1), a2=0x58a40, a3=a3 at entry (arg3).
  The return at 0x1005867c has v0 = ret(setTarget__12HardwareFormGP11konTarget_t).

- `__ct__26HdgvoAttributesWindowClassGPCcP3ArgUi` in `usr/gfx/ircombine` at 0x100586b0 (n32).
  It occupies 512 bytes.
  The instructions from 0x1005889c to 0x100588ac are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x100586e8 loads 4 bytes from abs 0x100a931c via base gp (0x100b1070).
  The `lw` at 0x100586f4 loads 4 bytes from abs 0x100a9e94 via base gp (0x100b1070).
  The `sw` at 0x100586fc stores 4 bytes to a0 (arg0 at entry) +0x8 via base v1 (a0) with value sym(__vtbl__26HdgvoAttributesWindowClass).
  The 2 such `lw` accesses load 4 bytes from abs 0x100a9320 via base gp (0x100b1070), including `lw` at 0x10058704, `lw` at 0x100587cc.
  The `lw` at 0x1005871c loads 4 bytes from abs 0x100a9e98 via base gp (0x100b1070).
  The `lw` at 0x10058720 loads 4 bytes from abs 0x100a9324 via base gp (0x100b1070).
  The `lw` at 0x10058734 loads 4 bytes from abs 0x100a92fc via base gp (0x100b1070).
  The `lw` at 0x10058760 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x10058764 loads 4 bytes from [a0+8] +0xe4 via base a0 ([a0+8]).
  The `lw` at 0x10058774 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x10058778 loads 4 bytes from [a0+8] +0xec via base t9 ([a0+8]).
  The `lw` at 0x1005878c loads 4 bytes from abs 0x100a90d8 via base gp (0x100b1070).
  The `lw` at 0x10058794 loads 4 bytes from abs 0x100a9a60 via base gp (0x100b1070).
  The `sw` at 0x100587c0 stores 4 bytes to a0 (arg0 at entry) +0x40 via base a2 (a0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0), including `lw` at 0x100587c8, `lw` at 0x10058824.
  The 2 such `lw` accesses load 4 bytes from abs 0x100a91ac via base gp (0x100b1070), including `lw` at 0x100587e0, `lw` at 0x100587ec.
  The `lw` at 0x100587fc loads 4 bytes from abs 0x100a9328 via base gp (0x100b1070).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0), including `lw` at 0x10058810, `lw` at 0x10058834.
  The `lw` at 0x10058814 loads 4 bytes from abs 0x100a932c via base gp (0x100b1070).
  The `lw` at 0x10058828 loads 4 bytes from [a0+64] +0x8 via base a0 ([a0+64]).
  The `lw` at 0x1005882c loads 4 bytes from [[a0+64]+8] +0x2dc via base a0 ([[a0+64]+8]).
  The `lw` at 0x10058844 loads 4 bytes from a0 (arg0 at entry) +0x40 via base t9 (a0).
  The `lw` at 0x10058848 loads 4 bytes from [a0+64] +0x8 via base t9 ([a0+64]).
  The `lw` at 0x1005884c loads 4 bytes from [[a0+64]+8] +0x2e4 via base t9 ([[a0+64]+8]).
  The `lw` at 0x10058878 loads 4 bytes from abs 0x100a9330 via base gp (0x100b1070).
  The `jalr` at 0x100586ec calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10058708 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10058724 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultHdgvoAttributesWindowClassResources__26HdgvoAttributesWindowClass), a3=(unknown).
  The `jalr` at 0x10058738 calls __nw__GUi with a0=0x168, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1005877c calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x10058798 calls __ct__9HdgvoFormGPCcP10_WidgetRec with a0=(unknown), a1=0x100999d0, a2=ret(unknown), a3=(unknown).
  The `jalr` at 0x100587d0 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=(unknown), a2=a0 at entry (arg0), a3=(unknown).
  The `jalr` at 0x10058800 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x20d, a3=sym(XtStrings)+234, a4=0x243, a5=0x0.
  The `jalr` at 0x10058818 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=(unknown), a3=(unknown).
  The `jalr` at 0x10058850 calls (unknown callee) with a0=([[[a0+64]+8]+732] + [a0+64]), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1005887c calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x0, a6=0x1, a7=0x1.
  The `beq` at 0x1005874c goes to 0x100587b4 when a0(=ret(__nw__GUi)) == 0 and falls through when a0(=ret(__nw__GUi)) != 0.
  The return at 0x10058894 has v0 = a0.

- `__dt__26HdgvoAttributesWindowClassGv` in `usr/gfx/ircombine` at 0x100588b0 (n32).
  It occupies 220 bytes.
  The instructions from 0x10058978 to 0x10058988 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x100588dc loads 4 bytes from abs 0x100a9e94 via base gp (0x100b1070).
  The `sw` at 0x100588e4 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__26HdgvoAttributesWindowClass).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0), including `lw` at 0x100588ec, `lw` at 0x1005890c.
  The `lw` at 0x100588fc loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x10058900 loads 4 bytes from [a0+64] +0x8 via base a0 ([a0+64]).
  The `lw` at 0x10058904 loads 4 bytes from [[a0+64]+8] +0xc via base a0 ([[a0+64]+8]).
  The `lw` at 0x1005891c loads 4 bytes from a0 (arg0 at entry) +0x40 via base t9 (a0).
  The `lw` at 0x10058920 loads 4 bytes from [a0+64] +0x8 via base t9 ([a0+64]).
  The `lw` at 0x10058924 loads 4 bytes from [[a0+64]+8] +0x14 via base t9 ([[a0+64]+8]).
  The `lw` at 0x10058938 loads 4 bytes from abs 0x100a91fc via base gp (0x100b1070).
  The `lw` at 0x10058958 loads 4 bytes from abs 0x100a9250 via base gp (0x100b1070).
  The `jalr` at 0x10058928 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1005893c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1005895c calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100588d4 goes to 0x10058964 when at(=a0) == 0 and falls through when at(=a0) != 0.
  The `beq` at 0x100588f0 goes to 0x10058930 when a1(=[a0+64]) == 0 and falls through when a1(=[a0+64]) != 0.
  The `beq` at 0x1005894c goes to 0x10058964 when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  The return at 0x10058970 has v0 = unknown.

- `className__26HdgvoAttributesWindowClassGv` in `usr/gfx/ircombine` at 0x10058990 (n32).
  It occupies 64 bytes.
  The `lw` at 0x100589a8 loads 4 bytes from abs 0x100a90d8 via base at (0x100b1070).
  The return at 0x100589c8 has v0 = 0x100999e0.

- `okToQuit__26HdgvoAttributesWindowClassGv` in `usr/gfx/ircombine` at 0x100589d0 (n32).
  It occupies 104 bytes.
  The `lw` at 0x100589f0 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x100589f4 loads 4 bytes from [a0+8] +0x30 via base a0 ([a0+8]).
  The `lw` at 0x10058a04 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x10058a08 loads 4 bytes from [a0+8] +0x38 via base t9 ([a0+8]).
  The `jalr` at 0x10058a0c calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10058a30 has v0 = 0x0.

- `update__26HdgvoAttributesWindowClassGv` in `usr/gfx/ircombine` at 0x10058a40 (n32).
  It occupies 76 bytes.
  The `lw` at 0x10058a60 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x10058a64 loads 4 bytes from abs 0x100a9a64 via base gp (0x100b1070).
  The `jal` at 0x10058a68 calls update__9HdgvoFormGv with a0=[a0+64], a1=0x58630, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10058a84 has v0 = ret(update__9HdgvoFormGv).

- `update_fast__26HdgvoAttributesWindowClassGv` in `usr/gfx/ircombine` at 0x10058a90 (n32).
  It occupies 76 bytes.
  The `lw` at 0x10058ab0 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x10058ab4 loads 4 bytes from abs 0x100a9a68 via base gp (0x100b1070).
  The `jal` at 0x10058ab8 calls update_fast__9HdgvoFormGv with a0=[a0+64], a1=0x585e0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10058ad4 has v0 = ret(update_fast__9HdgvoFormGv).

- `setParent__9HdgvoFormGP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x10058e10 (n32).
  It occupies 52 bytes.
  The `sw` at 0x10058e28 stores 4 bytes to a0 (arg0 at entry) +0x160 via base v0 (a0) with value a1.
  The return at 0x10058e3c has v0 = a0.

- `setParent__15HdgvoFormatFormGP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x10061f00 (n32).
  It occupies 52 bytes.
  The `sw` at 0x10061f18 stores 4 bytes to a0 (arg0 at entry) +0x38 via base v0 (a0) with value a1.
  The return at 0x10061f2c has v0 = a0.

- `__ct__28HdgvoFormatSelectWindowClassGPCcP3ArgUi` in `usr/gfx/ircombine` at 0x10062dc0 (n32).
  It occupies 512 bytes.
  The instructions from 0x10062fac to 0x10062fbc are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x10062df8 loads 4 bytes from abs 0x100a931c via base gp (0x100b1070).
  The `lw` at 0x10062e04 loads 4 bytes from abs 0x100a9eb4 via base gp (0x100b1070).
  The `sw` at 0x10062e0c stores 4 bytes to a0 (arg0 at entry) +0x8 via base v1 (a0) with value sym(__vtbl__28HdgvoFormatSelectWindowClass).
  The 2 such `lw` accesses load 4 bytes from abs 0x100a9320 via base gp (0x100b1070), including `lw` at 0x10062e14, `lw` at 0x10062edc.
  The `lw` at 0x10062e2c loads 4 bytes from abs 0x100a9eb8 via base gp (0x100b1070).
  The `lw` at 0x10062e30 loads 4 bytes from abs 0x100a9324 via base gp (0x100b1070).
  The `lw` at 0x10062e44 loads 4 bytes from abs 0x100a92fc via base gp (0x100b1070).
  The `lw` at 0x10062e70 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x10062e74 loads 4 bytes from [a0+8] +0xe4 via base a0 ([a0+8]).
  The `lw` at 0x10062e84 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x10062e88 loads 4 bytes from [a0+8] +0xec via base t9 ([a0+8]).
  The `lw` at 0x10062e9c loads 4 bytes from abs 0x100a90d8 via base gp (0x100b1070).
  The `lw` at 0x10062ea4 loads 4 bytes from abs 0x100a9b3c via base gp (0x100b1070).
  The `sw` at 0x10062ed0 stores 4 bytes to a0 (arg0 at entry) +0x40 via base a2 (a0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0), including `lw` at 0x10062ed8, `lw` at 0x10062f34.
  The 2 such `lw` accesses load 4 bytes from abs 0x100a91ac via base gp (0x100b1070), including `lw` at 0x10062ef0, `lw` at 0x10062efc.
  The `lw` at 0x10062f0c loads 4 bytes from abs 0x100a9328 via base gp (0x100b1070).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0), including `lw` at 0x10062f20, `lw` at 0x10062f44.
  The `lw` at 0x10062f24 loads 4 bytes from abs 0x100a932c via base gp (0x100b1070).
  The `lw` at 0x10062f38 loads 4 bytes from [a0+64] +0x8 via base a0 ([a0+64]).
  The `lw` at 0x10062f3c loads 4 bytes from [[a0+64]+8] +0xcc via base a0 ([[a0+64]+8]).
  The `lw` at 0x10062f54 loads 4 bytes from a0 (arg0 at entry) +0x40 via base t9 (a0).
  The `lw` at 0x10062f58 loads 4 bytes from [a0+64] +0x8 via base t9 ([a0+64]).
  The `lw` at 0x10062f5c loads 4 bytes from [[a0+64]+8] +0xd4 via base t9 ([[a0+64]+8]).
  The `lw` at 0x10062f88 loads 4 bytes from abs 0x100a9330 via base gp (0x100b1070).
  The `jalr` at 0x10062dfc calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10062e18 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10062e34 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultHdgvoFormatSelectWindowClassResources__28HdgvoFormatSelectWindowClass), a3=(unknown).
  The `jalr` at 0x10062e48 calls __nw__GUi with a0=0x3c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10062e8c calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x10062ea8 calls __ct__15HdgvoFormatFormGPCcP10_WidgetRec with a0=(unknown), a1=0x1009b1c0, a2=ret(unknown), a3=(unknown).
  The `jalr` at 0x10062ee0 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=(unknown), a2=a0 at entry (arg0), a3=(unknown).
  The `jalr` at 0x10062f10 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x195, a3=sym(XtStrings)+234, a4=0xab, a5=0x0.
  The `jalr` at 0x10062f28 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=(unknown), a3=(unknown).
  The `jalr` at 0x10062f60 calls (unknown callee) with a0=([[[a0+64]+8]+204] + [a0+64]), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10062f8c calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x0, a6=0x1, a7=0x1.
  The `beq` at 0x10062e5c goes to 0x10062ec4 when a0(=ret(__nw__GUi)) == 0 and falls through when a0(=ret(__nw__GUi)) != 0.
  The return at 0x10062fa4 has v0 = a0.

- `__dt__28HdgvoFormatSelectWindowClassGv` in `usr/gfx/ircombine` at 0x10062fc0 (n32).
  It occupies 220 bytes.
  The instructions from 0x10063088 to 0x10063098 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x10062fec loads 4 bytes from abs 0x100a9eb4 via base gp (0x100b1070).
  The `sw` at 0x10062ff4 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__28HdgvoFormatSelectWindowClass).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0), including `lw` at 0x10062ffc, `lw` at 0x1006301c.
  The `lw` at 0x1006300c loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x10063010 loads 4 bytes from [a0+64] +0x8 via base a0 ([a0+64]).
  The `lw` at 0x10063014 loads 4 bytes from [[a0+64]+8] +0xc via base a0 ([[a0+64]+8]).
  The `lw` at 0x1006302c loads 4 bytes from a0 (arg0 at entry) +0x40 via base t9 (a0).
  The `lw` at 0x10063030 loads 4 bytes from [a0+64] +0x8 via base t9 ([a0+64]).
  The `lw` at 0x10063034 loads 4 bytes from [[a0+64]+8] +0x14 via base t9 ([[a0+64]+8]).
  The `lw` at 0x10063048 loads 4 bytes from abs 0x100a91fc via base gp (0x100b1070).
  The `lw` at 0x10063068 loads 4 bytes from abs 0x100a9250 via base gp (0x100b1070).
  The `jalr` at 0x10063038 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1006304c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006306c calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10062fe4 goes to 0x10063074 when at(=a0) == 0 and falls through when at(=a0) != 0.
  The `beq` at 0x10063000 goes to 0x10063040 when a1(=[a0+64]) == 0 and falls through when a1(=[a0+64]) != 0.
  The `beq` at 0x1006305c goes to 0x10063074 when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  The return at 0x10063080 has v0 = unknown.

- `className__28HdgvoFormatSelectWindowClassGv` in `usr/gfx/ircombine` at 0x100630a0 (n32).
  It occupies 64 bytes.
  The `lw` at 0x100630b8 loads 4 bytes from abs 0x100a90d8 via base at (0x100b1070).
  The return at 0x100630d8 has v0 = 0x1009b1d0.

- `okToQuit__28HdgvoFormatSelectWindowClassGv` in `usr/gfx/ircombine` at 0x100630e0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10063100 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x10063104 loads 4 bytes from [a0+64] +0x8 via base a0 ([a0+64]).
  The `lw` at 0x10063108 loads 4 bytes from [[a0+64]+8] +0x48 via base a0 ([[a0+64]+8]).
  The `lw` at 0x10063110 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0).
  The `lw` at 0x1006311c loads 4 bytes from a0 (arg0 at entry) +0x40 via base t9 (a0).
  The `lw` at 0x10063120 loads 4 bytes from [a0+64] +0x8 via base t9 ([a0+64]).
  The `lw` at 0x10063124 loads 4 bytes from [[a0+64]+8] +0x50 via base t9 ([[a0+64]+8]).
  The `jalr` at 0x10063128 calls (unknown callee) with a0=([[[a0+64]+8]+72] + [a0+64]), a1=[a0+64], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10063150 has v0 = ret(unknown).

- `setParent__10SiriusFormGP14VkSimpleWindow` in `usr/gfx/ircombine` at 0x10063420 (n32).
  It occupies 52 bytes.
  The `sw` at 0x10063438 stores 4 bytes to a0 (arg0 at entry) +0x154 via base v0 (a0) with value a1.
  The return at 0x1006344c has v0 = a0.

- `__ct__17SiriusWindowClassGPCcP3ArgUi` in `usr/gfx/ircombine` at 0x1006cd40 (n32).
  It occupies 480 bytes.
  The instructions from 0x1006cf0c to 0x1006cf1c are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x1006cd78 loads 4 bytes from abs 0x100a931c via base gp (0x100b1070).
  The `lw` at 0x1006cd84 loads 4 bytes from abs 0x100a9ec8 via base gp (0x100b1070).
  The `sw` at 0x1006cd8c stores 4 bytes to a0 (arg0 at entry) +0x8 via base v1 (a0) with value sym(__vtbl__17SiriusWindowClass).
  The 2 such `lw` accesses load 4 bytes from abs 0x100a9320 via base gp (0x100b1070), including `lw` at 0x1006cd94, `lw` at 0x1006ce5c.
  The `lw` at 0x1006cdac loads 4 bytes from abs 0x100a9ecc via base gp (0x100b1070).
  The `lw` at 0x1006cdb0 loads 4 bytes from abs 0x100a9324 via base gp (0x100b1070).
  The `lw` at 0x1006cdc4 loads 4 bytes from abs 0x100a92fc via base gp (0x100b1070).
  The `lw` at 0x1006cdf0 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x1006cdf4 loads 4 bytes from [a0+8] +0xe4 via base a0 ([a0+8]).
  The `lw` at 0x1006ce04 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x1006ce08 loads 4 bytes from [a0+8] +0xec via base t9 ([a0+8]).
  The `lw` at 0x1006ce1c loads 4 bytes from abs 0x100a90d8 via base gp (0x100b1070).
  The `lw` at 0x1006ce24 loads 4 bytes from abs 0x100a9b60 via base gp (0x100b1070).
  The `sw` at 0x1006ce50 stores 4 bytes to a0 (arg0 at entry) +0x40 via base a2 (a0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0), including `lw` at 0x1006ce58, `lw` at 0x1006cee0.
  The 2 such `lw` accesses load 4 bytes from abs 0x100a91ac via base gp (0x100b1070), including `lw` at 0x1006ce70, `lw` at 0x1006ce7c.
  The `lw` at 0x1006ce8c loads 4 bytes from abs 0x100a9328 via base gp (0x100b1070).
  The `lw` at 0x1006cea0 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0).
  The `lw` at 0x1006cea4 loads 4 bytes from abs 0x100a932c via base gp (0x100b1070).
  The `lw` at 0x1006ced0 loads 4 bytes from abs 0x100a9330 via base gp (0x100b1070).
  The `lw` at 0x1006cee8 loads 4 bytes from abs 0x100a9b64 via base gp (0x100b1070).
  The `jalr` at 0x1006cd7c calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1006cd98 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006cdb4 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultSiriusWindowClassResources__17SiriusWindowClass), a3=(unknown).
  The `jalr` at 0x1006cdc8 calls __nw__GUi with a0=0x15c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006ce0c calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x1006ce28 calls __ct__10SiriusFormGPCcP10_WidgetRec with a0=(unknown), a1=0x1009c328, a2=ret(unknown), a3=(unknown).
  The `jalr` at 0x1006ce60 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=(unknown), a2=a0 at entry (arg0), a3=(unknown).
  The `jalr` at 0x1006ce90 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x1f4, a3=sym(XtStrings)+234, a4=0x258, a5=0x0.
  The `jalr` at 0x1006cea8 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006ced4 calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x0, a6=0x1, a7=0x1.
  The `jal` at 0x1006ceec calls setParent__10SiriusFormGP14VkSimpleWindow with a0=[a0+64], a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `beq` at 0x1006cddc goes to 0x1006ce44 when a0(=ret(__nw__GUi)) == 0 and falls through when a0(=ret(__nw__GUi)) != 0.
  The return at 0x1006cf04 has v0 = a0.

- `__dt__17SiriusWindowClassGv` in `usr/gfx/ircombine` at 0x1006cf20 (n32).
  It occupies 220 bytes.
  The instructions from 0x1006cfe8 to 0x1006cff8 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x1006cf4c loads 4 bytes from abs 0x100a9ec8 via base gp (0x100b1070).
  The `sw` at 0x1006cf54 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__17SiriusWindowClass).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base a1 (a0), including `lw` at 0x1006cf5c, `lw` at 0x1006cf7c.
  The `lw` at 0x1006cf6c loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x1006cf70 loads 4 bytes from [a0+64] +0x8 via base a0 ([a0+64]).
  The `lw` at 0x1006cf74 loads 4 bytes from [[a0+64]+8] +0xc via base a0 ([[a0+64]+8]).
  The `lw` at 0x1006cf8c loads 4 bytes from a0 (arg0 at entry) +0x40 via base t9 (a0).
  The `lw` at 0x1006cf90 loads 4 bytes from [a0+64] +0x8 via base t9 ([a0+64]).
  The `lw` at 0x1006cf94 loads 4 bytes from [[a0+64]+8] +0x14 via base t9 ([[a0+64]+8]).
  The `lw` at 0x1006cfa8 loads 4 bytes from abs 0x100a91fc via base gp (0x100b1070).
  The `lw` at 0x1006cfc8 loads 4 bytes from abs 0x100a9250 via base gp (0x100b1070).
  The `jalr` at 0x1006cf98 calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1006cfac calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006cfcc calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x1006cf44 goes to 0x1006cfd4 when at(=a0) == 0 and falls through when at(=a0) != 0.
  The `beq` at 0x1006cf60 goes to 0x1006cfa0 when a1(=[a0+64]) == 0 and falls through when a1(=[a0+64]) != 0.
  The `beq` at 0x1006cfbc goes to 0x1006cfd4 when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  The return at 0x1006cfe0 has v0 = unknown.

- `className__17SiriusWindowClassGv` in `usr/gfx/ircombine` at 0x1006d000 (n32).
  It occupies 64 bytes.
  The `lw` at 0x1006d018 loads 4 bytes from abs 0x100a90d8 via base at (0x100b1070).
  The return at 0x1006d038 has v0 = 0x1009c338.

- `okToQuit__17SiriusWindowClassGv` in `usr/gfx/ircombine` at 0x1006d040 (n32).
  It occupies 104 bytes.
  The `lw` at 0x1006d060 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x1006d064 loads 4 bytes from [a0+8] +0x30 via base a0 ([a0+8]).
  The `lw` at 0x1006d074 loads 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0).
  The `lw` at 0x1006d078 loads 4 bytes from [a0+8] +0x38 via base t9 ([a0+8]).
  The `jalr` at 0x1006d07c calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1006d0a0 has v0 = 0x0.

- `update__17SiriusWindowClassGv` in `usr/gfx/ircombine` at 0x1006d0b0 (n32).
  It occupies 76 bytes.
  The `lw` at 0x1006d0d0 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x1006d0d4 loads 4 bytes from abs 0x100a9b68 via base gp (0x100b1070).
  The `jal` at 0x1006d0d8 calls update__10SiriusFormGv with a0=[a0+64], a1=0x43fc0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1006d0f4 has v0 = ret(update__10SiriusFormGv).

- `update_fast__17SiriusWindowClassGv` in `usr/gfx/ircombine` at 0x1006d100 (n32).
  It occupies 76 bytes.
  The `lw` at 0x1006d120 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x1006d124 loads 4 bytes from abs 0x100a9b6c via base gp (0x100b1070).
  The `jal` at 0x1006d128 calls update_fast__10SiriusFormGv with a0=[a0+64], a1=0x43f70, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1006d144 has v0 = ret(update_fast__10SiriusFormGv).

- `prepost__22SmallFormatFileBrowserGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow` in `usr/gfx/ircombine` at 0x1006df00 (n32).
  It occupies 332 bytes.
  The `lw` at 0x1006df58 loads 4 bytes from abs 0x100a94a0 via base gp (0x100b1070).
  The `lw` at 0x1006df78 loads 4 bytes from a0 (arg0 at entry) +0x80 via base a0 (a0).
  The 4 such `lw` accesses load 4 bytes from abs 0x100a9dd0 via base gp (0x100b1070), including `lw` at 0x1006df7c, `lw` at 0x1006dfa8, `lw` at 0x1006dfd4.
  The 4 such `lw` accesses load 4 bytes from abs 0x100a9df0 via base gp (0x100b1070), including `lw` at 0x1006df94, `lw` at 0x1006dfc0, `lw` at 0x1006dfec.
  The `lw` at 0x1006dfa4 loads 4 bytes from a0 (arg0 at entry) +0x74 via base a0 (a0).
  The `lw` at 0x1006dfd0 loads 4 bytes from a0 (arg0 at entry) +0x78 via base a0 (a0).
  The `lw` at 0x1006dffc loads 4 bytes from a0 (arg0 at entry) +0x7c via base a0 (a0).
  The `jalr` at 0x1006df5c calls prepost__15VkDialogManagerGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1006df80 calls EZ__GP10_WidgetRec with a0=[a0+128], a1=0x100aa860, a2=(unknown), a3=(unknown).
  The `jal` at 0x1006df98 calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1006dfac calls EZ__GP10_WidgetRec with a0=[a0+116], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1006dfc4 calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1006dfd8 calls EZ__GP10_WidgetRec with a0=[a0+120], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1006dff0 calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1006e004 calls EZ__GP10_WidgetRec with a0=[a0+124], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1006e01c calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x1006e044 has v0 = unknown.

- `__ct__18VkwindowMainWindowGPCcP3ArgUi` in `usr/gfx/ircombine` at 0x1006e600 (n32).
  It occupies 1904 bytes.
  The instructions from 0x1006ed5c to 0x1006ed6c are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x1006e638 loads 4 bytes from abs 0x100a94a4 via base gp (0x100b1070).
  The `lw` at 0x1006e644 loads 4 bytes from abs 0x100a9ed4 via base gp (0x100b1070).
  The `sw` at 0x1006e64c stores 4 bytes to a0 (arg0 at entry) +0x8 via base v1 (a0) with value sym(__vtbl__18VkwindowMainWindow).
  The 2 such `lw` accesses load 4 bytes from abs 0x100a9320 via base gp (0x100b1070), including `lw` at 0x1006e654, `lw` at 0x1006e718.
  The `lw` at 0x1006e66c loads 4 bytes from abs 0x100a9ed8 via base gp (0x100b1070).
  The `lw` at 0x1006e670 loads 4 bytes from abs 0x100a9324 via base gp (0x100b1070).
  The `lw` at 0x1006e684 loads 4 bytes from abs 0x100a92fc via base gp (0x100b1070).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0), including `lw` at 0x1006e6b0, `lw` at 0x1006ed08.
  The `lw` at 0x1006e6b4 loads 4 bytes from [a0+8] +0xe4 via base a0 ([a0+8]).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0), including `lw` at 0x1006e6c4, `lw` at 0x1006ed1c.
  The `lw` at 0x1006e6c8 loads 4 bytes from [a0+8] +0xec via base t9 ([a0+8]).
  The `lw` at 0x1006e6e0 loads 4 bytes from abs 0x100a98b0 via base gp (0x100b1070).
  The `sw` at 0x1006e70c stores 4 bytes to a0 (arg0 at entry) +0x48 via base a2 (a0).
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0), including `lw` at 0x1006e714, `lw` at 0x1006ec3c, `lw` at 0x1006ec74.
  The 2 such `lw` accesses load 4 bytes from abs 0x100a91ac via base gp (0x100b1070), including `lw` at 0x1006e72c, `lw` at 0x1006e738.
  The `lw` at 0x1006e748 loads 4 bytes from abs 0x100a9328 via base gp (0x100b1070).
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0), including `lw` at 0x1006e75c, `lw` at 0x1006ec4c, `lw` at 0x1006ec88.
  The `lw` at 0x1006e760 loads 4 bytes from abs 0x100a932c via base gp (0x100b1070).
  The 22 such `lw` accesses load 4 bytes from abs 0x100a90d8 via base gp (0x100b1070), including `lw` at 0x1006e770, `lw` at 0x1006e798, `lw` at 0x1006e7cc.
  The 3 such `lw` accesses load 4 bytes from abs 0x100a94a8 via base gp (0x100b1070), including `lw` at 0x1006e778, `lw` at 0x1006e92c, `lw` at 0x1006ea18.
  The `sw` at 0x1006e78c stores 4 bytes to a0 (arg0 at entry) +0x4c via base a1 (a0) with value ret(addMenuPane__8VkWindowGPCc).
  The 8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c via base a0 (a0), including `lw` at 0x1006e794, `lw` at 0x1006e7c8, `lw` at 0x1006e7fc.
  The `lw` at 0x1006e7a0 loads 4 bytes from abs 0x100a9c68 via base gp (0x100b1070).
  The 16 such `lw` accesses load 4 bytes from abs 0x100a9374 via base gp (0x100b1070), including `lw` at 0x1006e7ac, `lw` at 0x1006e7e0, `lw` at 0x1006e814.
  The `sw` at 0x1006e7c0 stores 4 bytes to a0 (arg0 at entry) +0x50 via base a1 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `lw` at 0x1006e7d4 loads 4 bytes from abs 0x100a9c6c via base gp (0x100b1070).
  The `sw` at 0x1006e7f4 stores 4 bytes to a0 (arg0 at entry) +0x54 via base a1 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `lw` at 0x1006e808 loads 4 bytes from abs 0x100a9c78 via base gp (0x100b1070).
  The `sw` at 0x1006e828 stores 4 bytes to a0 (arg0 at entry) +0x58 via base a1 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `lw` at 0x1006e83c loads 4 bytes from abs 0x100a9c80 via base gp (0x100b1070).
  The `sw` at 0x1006e85c stores 4 bytes to a0 (arg0 at entry) +0x5c via base a1 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `lw` at 0x1006e870 loads 4 bytes from abs 0x100a9c7c via base gp (0x100b1070).
  The `sw` at 0x1006e890 stores 4 bytes to a0 (arg0 at entry) +0x44 via base a1 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The 2 such `lw` accesses load 4 bytes from abs 0x100a94ac via base gp (0x100b1070), including `lw` at 0x1006e8a0, `lw` at 0x1006ebec.
  The `sw` at 0x1006e8b4 stores 4 bytes to a0 (arg0 at entry) +0x60 via base a1 (a0) with value ret(addSeparator__6VkMenuGi).
  The `lw` at 0x1006e8c8 loads 4 bytes from abs 0x100a9c44 via base gp (0x100b1070).
  The `sw` at 0x1006e8e8 stores 4 bytes to a0 (arg0 at entry) +0x64 via base a1 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `lw` at 0x1006e8fc loads 4 bytes from abs 0x100a9c74 via base gp (0x100b1070).
  The `sw` at 0x1006e91c stores 4 bytes to a0 (arg0 at entry) +0x68 via base a2 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `sw` at 0x1006e940 stores 4 bytes to a0 (arg0 at entry) +0x6c via base a3 (a0) with value ret(addMenuPane__8VkWindowGPCc).
  The `lw` at 0x1006e944 loads 4 bytes from abs 0x100a94b0 via base gp (0x100b1070).
  The 4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c via base a0 (a0), including `lw` at 0x1006e95c, `lw` at 0x1006e974, `lw` at 0x1006e9a8.
  The `lw` at 0x1006e964 loads 4 bytes from abs 0x100a94b4 via base gp (0x100b1070).
  The `lw` at 0x1006e980 loads 4 bytes from abs 0x100a9c50 via base gp (0x100b1070).
  The `sw` at 0x1006e9a0 stores 4 bytes to a0 (arg0 at entry) +0x74 via base a1 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `lw` at 0x1006e9b4 loads 4 bytes from abs 0x100a9c48 via base gp (0x100b1070).
  The `sw` at 0x1006e9d4 stores 4 bytes to a0 (arg0 at entry) +0x78 via base a1 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `lw` at 0x1006e9e8 loads 4 bytes from abs 0x100a9c70 via base gp (0x100b1070).
  The `sw` at 0x1006ea08 stores 4 bytes to a0 (arg0 at entry) +0x7c via base a2 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `sw` at 0x1006ea2c stores 4 bytes to a0 (arg0 at entry) +0x80 via base a1 (a0) with value ret(addMenuPane__8VkWindowGPCc).
  The 5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80 via base a0 (a0), including `lw` at 0x1006ea34, `lw` at 0x1006ea68, `lw` at 0x1006ea9c.
  The `lw` at 0x1006ea40 loads 4 bytes from abs 0x100a9c64 via base gp (0x100b1070).
  The `sw` at 0x1006ea60 stores 4 bytes to a0 (arg0 at entry) +0x84 via base a1 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `lw` at 0x1006ea74 loads 4 bytes from abs 0x100a9c54 via base gp (0x100b1070).
  The `sw` at 0x1006ea94 stores 4 bytes to a0 (arg0 at entry) +0x88 via base a1 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `lw` at 0x1006eaa8 loads 4 bytes from abs 0x100a9c58 via base gp (0x100b1070).
  The `sw` at 0x1006eac8 stores 4 bytes to a0 (arg0 at entry) +0x8c via base a1 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `lw` at 0x1006eadc loads 4 bytes from abs 0x100a9c84 via base gp (0x100b1070).
  The `sw` at 0x1006eafc stores 4 bytes to a0 (arg0 at entry) +0x90 via base a1 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `lw` at 0x1006eb10 loads 4 bytes from abs 0x100a9c60 via base gp (0x100b1070).
  The `sw` at 0x1006eb30 stores 4 bytes to a0 (arg0 at entry) +0x94 via base a2 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `lw` at 0x1006eb40 loads 4 bytes from abs 0x100a94b8 via base gp (0x100b1070).
  The `sw` at 0x1006eb54 stores 4 bytes to a0 (arg0 at entry) +0x98 via base a1 (a0) with value ret(addRadioMenuPane__8VkWindowGPCc).
  The 4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x98 via base a0 (a0), including `lw` at 0x1006eb5c, `lw` at 0x1006ebac, `lw` at 0x1006ebe4.
  The `lw` at 0x1006eb68 loads 4 bytes from abs 0x100a9c4c via base gp (0x100b1070).
  The 2 such `lw` accesses load 4 bytes from abs 0x100a94bc via base gp (0x100b1070), including `lw` at 0x1006eb78, `lw` at 0x1006ebc8.
  The `sw` at 0x1006eb8c stores 4 bytes to a0 (arg0 at entry) +0x9c via base a1 (a0) with value ret(addToggle__6VkMenuGPCcPGP10_WidgetRecPvT2_vPviT4).
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c via base a0 (a0), including `lw` at 0x1006eb94, `lw` at 0x1006ecc4, `lw` at 0x1006ecd8.
  The 3 such `lw` accesses load 4 bytes from abs 0x100a94c0 via base gp (0x100b1070), including `lw` at 0x1006eb9c, `lw` at 0x1006ece0, `lw` at 0x1006ecf8.
  The `lw` at 0x1006ebb8 loads 4 bytes from abs 0x100a9c88 via base gp (0x100b1070).
  The `sw` at 0x1006ebdc stores 4 bytes to a0 (arg0 at entry) +0xa0 via base a1 (a0) with value ret(addToggle__6VkMenuGPCcPGP10_WidgetRecPvT2_vPviT4).
  The `sw` at 0x1006ec00 stores 4 bytes to a0 (arg0 at entry) +0xa4 via base a1 (a0) with value ret(addSeparator__6VkMenuGi).
  The `lw` at 0x1006ec14 loads 4 bytes from abs 0x100a9c5c via base gp (0x100b1070).
  The `sw` at 0x1006ec34 stores 4 bytes to a0 (arg0 at entry) +0xa8 via base a1 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `lw` at 0x1006ec40 loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006ec44 loads 4 bytes from [[a0+72]+8] +0xf0 via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006ec5c loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006ec60 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006ec64 loads 4 bytes from [[a0+72]+8] +0xf8 via base t9 ([[a0+72]+8]).
  The `lw` at 0x1006ec78 loads 4 bytes from abs 0x100a98b4 via base gp (0x100b1070).
  The `lw` at 0x1006ec8c loads 4 bytes from [a0+72] +0x98 via base a1 ([a0+72]).
  The `lw` at 0x1006ec94 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a2 (a0).
  The `lw` at 0x1006eca8 loads 4 bytes from a0 (arg0 at entry) +0xa8 via base a0 (a0).
  The 2 such `lw` accesses load 4 bytes from abs 0x100a9388 via base gp (0x100b1070), including `lw` at 0x1006ecac, `lw` at 0x1006ecc8.
  The `lw` at 0x1006ecf0 loads 4 bytes from a0 (arg0 at entry) +0xa0 via base a0 (a0).
  The `lw` at 0x1006ed0c loads 4 bytes from [a0+8] +0x168 via base a0 ([a0+8]).
  The `lw` at 0x1006ed20 loads 4 bytes from [a0+8] +0x170 via base t9 ([a0+8]).
  The `lw` at 0x1006ed38 loads 4 bytes from abs 0x100a94c4 via base gp (0x100b1070).
  The `jalr` at 0x1006e63c calls __ct__8VkWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1006e658 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006e674 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultVkwindowMainWindowResources__18VkwindowMainWindow), a3=(unknown).
  The `jalr` at 0x1006e688 calls __nw__GUi with a0=0xaeac, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006e6cc calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x1006e6e4 calls __ct__5FrameGPCcP10_WidgetRec with a0=(unknown), a1=0x100aa890, a2=ret(unknown), a3=(unknown).
  The `jalr` at 0x1006e71c calls baseWidget__11VkComponentCGv with a0=[a0+72], a1=(unknown), a2=a0 at entry (arg0), a3=(unknown).
  The `jalr` at 0x1006e74c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x357, a3=sym(XtStrings)+234, a4=0x2e5, a5=0x0.
  The `jalr` at 0x1006e764 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+72], a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006e77c calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x1009c488, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006e7b0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+76], a1=0x1009c498, a2=sym(newFileCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e7e4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+76], a1=0x1009c4a8, a2=sym(openFileCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e818 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+76], a1=0x1009c4b8, a2=sym(saveCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e84c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+76], a1=0x1009c4c8, a2=sym(saveasCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e880 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+76], a1=0x1009c4d8, a2=sym(saveToHardwareCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e8a4 calls addSeparator__6VkMenuGi with a0=[a0+76], a1=-0x1, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006e8d8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+76], a1=0x1009c4f0, a2=sym(closeCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e90c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+76], a1=0x1009c500, a2=sym(quitCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e930 calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x1009c510, a2=a0 at entry (arg0), a3=(unknown).
  The `jalr` at 0x1006e948 calls getTheUndoManager__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=a0 at entry (arg0).
  The `jalr` at 0x1006e968 calls add__6VkMenuGP10VkMenuItemi with a0=[a0+108], a1=ret(getTheUndoManager__Gv), a2=-0x1, a3=(unknown).
  The `jalr` at 0x1006e990 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+108], a1=0x1009c520, a2=sym(cutCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e9c4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+108], a1=0x1009c530, a2=sym(copyCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006e9f8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+108], a1=0x1009c540, a2=sym(pasteCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006ea1c calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x1009c550, a2=a0 at entry (arg0), a3=(unknown).
  The `jalr` at 0x1006ea50 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+128], a1=0x1009c560, a2=sym(newChannelCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006ea84 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+128], a1=0x1009c578, a2=sym(deleteChannelCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006eab8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+128], a1=0x1009c590, a2=sym(editChannelCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006eaec calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+128], a1=0x1009c5a8, a2=sym(snapChannelCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006eb20 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+128], a1=0x1009c5c0, a2=sym(grabWindowCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006eb44 calls addRadioMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x1009c5d8, a2=a0 at entry (arg0), a3=(unknown).
  The `jalr` at 0x1006eb7c calls addToggle__6VkMenuGPCcPGP10_WidgetRecPvT2_vPviT4 with a0=[a0+152], a1=0x1009c5e8, a2=sym(currentHardwareCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1, a5=-0x1.
  The `jalr` at 0x1006eba0 calls setVisualState__12VkMenuToggleGc with a0=[a0+156], a1=0x1, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006ebcc calls addToggle__6VkMenuGPCcPGP10_WidgetRecPvT2_vPviT4 with a0=[a0+152], a1=0x1009c600, a2=sym(userHardwareCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1, a5=-0x1.
  The `jalr` at 0x1006ebf0 calls addSeparator__6VkMenuGi with a0=[a0+152], a1=-0x1, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006ec24 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+152], a1=0x1009c618, a2=sym(editHardwareCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1006ec68 calls (unknown callee) with a0=([[[a0+72]+8]+240] + [a0+72]), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x1006ec7c calls cleanup__5FrameGv with a0=[a0+72], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006ecb0 calls deactivate__10VkMenuItemGv with a0=[a0+168], a1=[[a0+72]+152], a2=[a0+72]+156, a3=(unknown).
  The `jalr` at 0x1006eccc calls deactivate__10VkMenuItemGv with a0=[a0+156], a1=[[a0+72]+152], a2=[a0+72]+156, a3=(unknown).
  The `jalr` at 0x1006ece4 calls setVisualState__12VkMenuToggleGc with a0=[a0+156], a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006ecfc calls setVisualState__12VkMenuToggleGc with a0=[a0+160], a1=0x1, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006ed24 calls (unknown callee) with a0=([[a0+8]+360] + a0), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006ed3c calls showHelpPane__9VkMenuBarGc with a0=ret(unknown), a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x1006e69c goes to 0x1006e700 when a0(=ret(__nw__GUi)) == 0 and falls through when a0(=ret(__nw__GUi)) != 0.
  The `bne` at 0x1006ec9c goes to 0x1006ecc0 when a1(=[[a0+72]+152]) != a2(=[a0+72]+156) and falls through when a1(=[[a0+72]+152]) == a2(=[a0+72]+156).
  The return at 0x1006ed54 has v0 = a0.

- `__dt__18VkwindowMainWindowGv` in `usr/gfx/ircombine` at 0x1006ed70 (n32).
  It occupies 220 bytes.
  The instructions from 0x1006ee38 to 0x1006ee48 are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x1006ed9c loads 4 bytes from abs 0x100a9ed4 via base gp (0x100b1070).
  The `sw` at 0x1006eda4 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__18VkwindowMainWindow).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0), including `lw` at 0x1006edac, `lw` at 0x1006edcc.
  The `lw` at 0x1006edbc loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006edc0 loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006edc4 loads 4 bytes from [[a0+72]+8] +0xc via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006eddc loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006ede0 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006ede4 loads 4 bytes from [[a0+72]+8] +0x14 via base t9 ([[a0+72]+8]).
  The `lw` at 0x1006edf8 loads 4 bytes from abs 0x100a9180 via base gp (0x100b1070).
  The `lw` at 0x1006ee18 loads 4 bytes from abs 0x100a9250 via base gp (0x100b1070).
  The `jalr` at 0x1006ede8 calls (unknown callee) with a0=([[[a0+72]+8]+12] + [a0+72]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1006edfc calls __dt__8VkWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006ee1c calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x1006ed94 goes to 0x1006ee24 when at(=a0) == 0 and falls through when at(=a0) != 0.
  The `beq` at 0x1006edb0 goes to 0x1006edf0 when a1(=[a0+72]) == 0 and falls through when a1(=[a0+72]) != 0.
  The `beq` at 0x1006ee0c goes to 0x1006ee24 when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  The return at 0x1006ee30 has v0 = unknown.

- `className__18VkwindowMainWindowGv` in `usr/gfx/ircombine` at 0x1006ee50 (n32).
  It occupies 64 bytes.
  The `lw` at 0x1006ee68 loads 4 bytes from abs 0x100a90d8 via base at (0x100b1070).
  The return at 0x1006ee88 has v0 = 0x1009c630.

- `okToQuit__18VkwindowMainWindowGv` in `usr/gfx/ircombine` at 0x1006ee90 (n32).
  It occupies 120 bytes.
  The `lw` at 0x1006eeb0 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006eeb4 loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006eeb8 loads 4 bytes from [[a0+72]+8] +0x48 via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006eec0 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0).
  The `lw` at 0x1006eecc loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006eed0 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006eed4 loads 4 bytes from [[a0+72]+8] +0x50 via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006eed8 calls (unknown callee) with a0=([[[a0+72]+8]+72] + [a0+72]), a1=[a0+72], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1006ef00 has v0 = ret(unknown).

- `update__18VkwindowMainWindowGv` in `usr/gfx/ircombine` at 0x1006ef10 (n32).
  It occupies 76 bytes.
  The `lw` at 0x1006ef30 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006ef34 loads 4 bytes from abs 0x100a98b8 via base gp (0x100b1070).
  The `jal` at 0x1006ef38 calls update__5FrameGv with a0=[a0+72], a1=0x42160, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1006ef54 has v0 = ret(update__5FrameGv).

- `setSensitive__18VkwindowMainWindowGv` in `usr/gfx/ircombine` at 0x1006ef60 (n32).
  It occupies 76 bytes.
  The `lw` at 0x1006ef80 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006ef84 loads 4 bytes from abs 0x100a98c0 via base gp (0x100b1070).
  The `jal` at 0x1006ef88 calls setSensitive__5FrameGv with a0=[a0+72], a1=0x42110, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1006efa4 has v0 = ret(setSensitive__5FrameGv).

- `clamp__18VkwindowMainWindowGiN21` in `usr/gfx/ircombine` at 0x1006efb0 (n32).
  It occupies 100 bytes.
  The `lw` at 0x1006efdc loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006efec loads 4 bytes from abs 0x100a98c4 via base gp (0x100b1070).
  The `jal` at 0x1006eff0 calls clamp_channel__5FrameGiN21 with a0=[a0+72], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x420c0.
  The return at 0x1006f00c has v0 = ret(clamp_channel__5FrameGiN21).

- `openFile__18VkwindowMainWindowGPCc` in `usr/gfx/ircombine` at 0x1006f020 (n32).
  It occupies 116 bytes.
  The `lw` at 0x1006f044 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006f048 loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006f04c loads 4 bytes from [[a0+72]+8] +0x168 via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006f054 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0).
  The `lw` at 0x1006f064 loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006f068 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006f06c loads 4 bytes from [[a0+72]+8] +0x170 via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006f070 calls (unknown callee) with a0=([[[a0+72]+8]+360] + [a0+72]), a1=a1 at entry (arg1), a2=0x42050, a3=a3 at entry (arg3).
  The return at 0x1006f08c has v0 = ret(unknown).

- `loadFormat__18VkwindowMainWindowGiPCc` in `usr/gfx/ircombine` at 0x1006f0a0 (n32).
  It occupies 92 bytes.
  The `lw` at 0x1006f0c8 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006f0d4 loads 4 bytes from abs 0x100a98cc via base gp (0x100b1070).
  The `jal` at 0x1006f0d8 calls loadFormat__5FrameGiPCc with a0=[a0+72], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41fd0.
  The return at 0x1006f0f4 has v0 = ret(loadFormat__5FrameGiPCc).

- `getTarget__18VkwindowMainWindowGv` in `usr/gfx/ircombine` at 0x1006f100 (n32).
  It occupies 56 bytes.
  The `lw` at 0x1006f110 loads 4 bytes from a0 (arg0 at entry) +0x48 via base at (a0).
  The `lw` at 0x1006f114 loads 4 bytes from [a0+72] +0x98 via base at ([a0+72]).
  The return at 0x1006f130 has v0 = [[a0+72]+152].

- `close__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f140 (n32).
  It occupies 168 bytes.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0), including `lw` at 0x1006f168, `lw` at 0x1006f1a4.
  The `lw` at 0x1006f16c loads 4 bytes from [a0+8] +0x48 via base a0 ([a0+8]).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8 via base t9 (a0), including `lw` at 0x1006f17c, `lw` at 0x1006f1bc.
  The `lw` at 0x1006f180 loads 4 bytes from [a0+8] +0x50 via base t9 ([a0+8]).
  The `lw` at 0x1006f1a8 loads 4 bytes from [a0+8] +0xc via base a0 ([a0+8]).
  The `lw` at 0x1006f1c0 loads 4 bytes from [a0+8] +0x14 via base t9 ([a0+8]).
  The `jalr` at 0x1006f184 calls (unknown callee) with a0=([[a0+8]+72] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x41f30.
  The `jalr` at 0x1006f1c4 calls (unknown callee) with a0=([[a0+8]+12] + a0), a1=0x3, a2=(unknown), a3=(unknown), a4=a0 at entry (arg0).
  The `beq` at 0x1006f18c goes to 0x1006f1cc when v0(=ret(unknown)) == 0 and falls through when v0(=ret(unknown)) != 0.
  The `beq` at 0x1006f198 goes to 0x1006f1cc when a4(=a0) == 0 and falls through when a4(=a0) != 0.
  The return at 0x1006f1e0 has v0 = ret(unknown).

- `copy__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f1f0 (n32).
  It occupies 116 bytes.
  The `lw` at 0x1006f218 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006f21c loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006f220 loads 4 bytes from [[a0+72]+8] +0xfc via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006f228 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0).
  The `lw` at 0x1006f234 loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006f238 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006f23c loads 4 bytes from [[a0+72]+8] +0x104 via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006f240 calls (unknown callee) with a0=([[[a0+72]+8]+252] + [a0+72]), a1=[a0+72], a2=a2 at entry (arg2), a3=0x41e80.
  The return at 0x1006f25c has v0 = ret(unknown).

- `currentHardware__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f270 (n32).
  It occupies 124 bytes.
  The `lw` at 0x1006f298 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006f29c loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006f2a0 loads 4 bytes from [[a0+72]+8] +0x108 via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006f2a8 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0).
  The `lw` at 0x1006f2bc loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006f2c0 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006f2c4 loads 4 bytes from [[a0+72]+8] +0x110 via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006f2c8 calls (unknown callee) with a0=([[[a0+72]+8]+264] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41e00.
  The return at 0x1006f2e4 has v0 = ret(unknown).

- `cut__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f2f0 (n32).
  It occupies 116 bytes.
  The `lw` at 0x1006f318 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006f31c loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006f320 loads 4 bytes from [[a0+72]+8] +0x114 via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006f328 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0).
  The `lw` at 0x1006f334 loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006f338 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006f33c loads 4 bytes from [[a0+72]+8] +0x11c via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006f340 calls (unknown callee) with a0=([[[a0+72]+8]+276] + [a0+72]), a1=[a0+72], a2=a2 at entry (arg2), a3=0x41d80.
  The return at 0x1006f35c has v0 = ret(unknown).

- `deleteChannel__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f370 (n32).
  It occupies 124 bytes.
  The `lw` at 0x1006f398 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006f39c loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006f3a0 loads 4 bytes from [[a0+72]+8] +0x120 via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006f3a8 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0).
  The `lw` at 0x1006f3bc loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006f3c0 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006f3c4 loads 4 bytes from [[a0+72]+8] +0x128 via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006f3c8 calls (unknown callee) with a0=([[[a0+72]+8]+288] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41d00.
  The return at 0x1006f3e4 has v0 = ret(unknown).

- `editChannel__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f3f0 (n32).
  It occupies 124 bytes.
  The `lw` at 0x1006f418 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006f41c loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006f420 loads 4 bytes from [[a0+72]+8] +0x12c via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006f428 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0).
  The `lw` at 0x1006f43c loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006f440 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006f444 loads 4 bytes from [[a0+72]+8] +0x134 via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006f448 calls (unknown callee) with a0=([[[a0+72]+8]+300] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41c80.
  The return at 0x1006f464 has v0 = ret(unknown).

- `editHardware__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f470 (n32).
  It occupies 124 bytes.
  The `lw` at 0x1006f498 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006f49c loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006f4a0 loads 4 bytes from [[a0+72]+8] +0x138 via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006f4a8 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0).
  The `lw` at 0x1006f4bc loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006f4c0 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006f4c4 loads 4 bytes from [[a0+72]+8] +0x140 via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006f4c8 calls (unknown callee) with a0=([[[a0+72]+8]+312] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41c00.
  The return at 0x1006f4e4 has v0 = ret(unknown).

- `grabWindow__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f4f0 (n32).
  It occupies 124 bytes.
  The `lw` at 0x1006f518 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006f51c loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006f520 loads 4 bytes from [[a0+72]+8] +0x144 via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006f528 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0).
  The `lw` at 0x1006f53c loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006f540 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006f544 loads 4 bytes from [[a0+72]+8] +0x14c via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006f548 calls (unknown callee) with a0=([[[a0+72]+8]+324] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41b80.
  The return at 0x1006f564 has v0 = ret(unknown).

- `newChannel__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f570 (n32).
  It occupies 124 bytes.
  The `lw` at 0x1006f598 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006f59c loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006f5a0 loads 4 bytes from [[a0+72]+8] +0x150 via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006f5a8 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0).
  The `lw` at 0x1006f5bc loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006f5c0 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006f5c4 loads 4 bytes from [[a0+72]+8] +0x158 via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006f5c8 calls (unknown callee) with a0=([[[a0+72]+8]+336] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41b00.
  The return at 0x1006f5e4 has v0 = ret(unknown).

- `newFile__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f5f0 (n32).
  It occupies 116 bytes.
  The `lw` at 0x1006f618 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006f61c loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006f620 loads 4 bytes from [[a0+72]+8] +0x15c via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006f628 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0).
  The `lw` at 0x1006f634 loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006f638 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006f63c loads 4 bytes from [[a0+72]+8] +0x164 via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006f640 calls (unknown callee) with a0=([[[a0+72]+8]+348] + [a0+72]), a1=[a0+72], a2=a2 at entry (arg2), a3=0x41a80.
  The return at 0x1006f65c has v0 = ret(unknown).

- `openFile__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f670 (n32).
  It occupies 604 bytes.
  The 4 such `lw` accesses load 4 bytes from abs 0x100a90d8 via base gp (0x100b1070), including `lw` at 0x1006f694, `lw` at 0x1006f6d8, `lw` at 0x1006f704.
  The `lw` at 0x1006f69c loads 4 bytes from abs 0x100a9348 via base gp (0x100b1070).
  The `lw` at 0x1006f6e4 loads 4 bytes from abs 0x100a9314 via base gp (0x100b1070).
  The 7 such `lw` accesses load 4 bytes from abs 0x100a93cc via base gp (0x100b1070), including `lw` at 0x1006f6f0, `lw` at 0x1006f718, `lw` at 0x1006f73c.
  The `lw` at 0x1006f70c loads 4 bytes from abs 0x100a934c via base gp (0x100b1070).
  The `lw` at 0x1006f730 loads 4 bytes from abs 0x100a9350 via base gp (0x100b1070).
  The `lw` at 0x1006f754 loads 4 bytes from abs 0x100a9354 via base gp (0x100b1070).
  The 2 such `lw` accesses load 4 bytes from abs 0x100a9320 via base gp (0x100b1070), including `lw` at 0x1006f774, `lw` at 0x1006f7a0.
  The `lw` at 0x1006f7b8 loads 4 bytes from abs 0x100a938c via base gp (0x100b1070).
  The 2 such `lw` accesses load 4 bytes from abs 0x100a914c via base gp (0x100b1070), including `lw` at 0x1006f7cc, `lw` at 0x1006f7d8.
  The `lw` at 0x1006f7e8 loads 4 bytes from abs 0x100a9328 via base gp (0x100b1070).
  The 2 such `lw` accesses load 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8 via base v0 (ret(getTheFileSelectionDialog__Gv)), including `lw` at 0x1006f804, `lw` at 0x1006f830.
  The `lw` at 0x1006f808 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108 via base a0 ([ret(getTheFileSelectionDialog__Gv)+8]).
  The `lw` at 0x1006f834 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110 via base t9 ([ret(getTheFileSelectionDialog__Gv)+8]).
  The `lw` at 0x1006f864 loads 4 bytes from abs 0x100a909c via base gp (0x100b1070).
  The `lw` at 0x1006f880 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006f884 loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006f888 loads 4 bytes from [[a0+72]+8] +0x168 via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006f890 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a2 (a0).
  The `lw` at 0x1006f89c loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006f8a0 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006f8a4 loads 4 bytes from [[a0+72]+8] +0x170 via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006f6a0 calls getenv with a0=0x1009c648, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41a00.
  The `jalr` at 0x1006f6e8 calls sprintf with a0=sp-1112, a1=0x1009c658, a2=(unknown), a3=(unknown), a4=ret(getenv).
  The `jalr` at 0x1006f6f4 calls getTheFileSelectionDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006f710 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x1009c678, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006f71c calls getTheFileSelectionDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006f734 calls setDirectory__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=sp-1112, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006f740 calls getTheFileSelectionDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006f758 calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x100aa8a0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006f764 calls getTheFileSelectionDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006f778 calls baseWidget__11VkComponentCGv with a0=ret(getTheFileSelectionDialog__Gv), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006f790 calls getTheFileSelectionDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006f7a4 calls baseWidget__11VkComponentCGv with a0=ret(getTheFileSelectionDialog__Gv), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006f7bc calls XmFileSelectionBoxGetChild with a0=ret(baseWidget__11VkComponentCGv), a1=0x8, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006f7ec calls XtVaSetValues with a0=ret(XmFileSelectionBoxGetChild), a1=sym(_XmStrings)+9512, a2=0x0, a3=sym(_XmStrings)+9494, a4=0x0, a5=0x0.
  The `jalr` at 0x1006f7f8 calls getTheFileSelectionDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006f838 calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x1009c690, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1006f854 calls getTheFileSelectionDialog__Gv with a0=(unknown), a1=0x1, a2=(unknown), a3=(unknown).
  The `jal` at 0x1006f86c calls (unknown callee) with a0=ret(getTheFileSelectionDialog__Gv), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006f8a8 calls (unknown callee) with a0=([[[a0+72]+8]+360] + [a0+72]), a1=ret(0x100706c0), a2=[a0+72], a3=(unknown).
  The `beq` at 0x1006f6b4 goes to 0x1006f6cc when a4(=ret(getenv)) == 0 and falls through when a4(=ret(getenv)) != 0.
  The `beq` at 0x1006f784 goes to 0x1006f7f4 when v0(=ret(baseWidget__11VkComponentCGv)) == 0 and falls through when v0(=ret(baseWidget__11VkComponentCGv)) != 0.
  The `bne` at 0x1006f848 goes to 0x1006f8b0 when v0(=ret(unknown)) != a1(=0x1) and falls through when v0(=ret(unknown)) == a1(=0x1).
  The return at 0x1006f8c4 has v0 = ret(unknown).

- `paste__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f8d0 (n32).
  It occupies 116 bytes.
  The `lw` at 0x1006f8f8 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006f8fc loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006f900 loads 4 bytes from [[a0+72]+8] +0x174 via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006f908 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0).
  The `lw` at 0x1006f914 loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006f918 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006f91c loads 4 bytes from [[a0+72]+8] +0x17c via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006f920 calls (unknown callee) with a0=([[[a0+72]+8]+372] + [a0+72]), a1=[a0+72], a2=a2 at entry (arg2), a3=0x417a0.
  The return at 0x1006f93c has v0 = ret(unknown).

- `quit__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f950 (n32).
  It occupies 116 bytes.
  The 3 such `lw` accesses load 4 bytes from abs 0x100a91b4 via base gp (0x100b1070), including `lw` at 0x1006f974, `lw` at 0x1006f984, `lw` at 0x1006f990.
  The `lw` at 0x1006f978 loads 4 bytes from sym(theApplication) +0x0 via base a0 (sym(theApplication)).
  The `lw` at 0x1006f97c loads 4 bytes from [sym(theApplication)] +0x8 via base a0 ([sym(theApplication)]).
  The `lw` at 0x1006f980 loads 4 bytes from [[sym(theApplication)]+8] +0xc0 via base a0 ([[sym(theApplication)]+8]).
  The `lw` at 0x1006f988 loads 4 bytes from sym(theApplication) +0x0 via base a1 (sym(theApplication)).
  The `lw` at 0x1006f994 loads 4 bytes from sym(theApplication) +0x0 via base t9 (sym(theApplication)).
  The `lw` at 0x1006f998 loads 4 bytes from [sym(theApplication)] +0x8 via base t9 ([sym(theApplication)]).
  The `lw` at 0x1006f99c loads 4 bytes from [[sym(theApplication)]+8] +0xc8 via base t9 ([[sym(theApplication)]+8]).
  The `jalr` at 0x1006f9a0 calls (unknown callee) with a0=([[[sym(theApplication)]+8]+192] + [sym(theApplication)]), a1=[sym(theApplication)], a2=a2 at entry (arg2), a3=0x41720.
  The return at 0x1006f9bc has v0 = ret(unknown).

- `save__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006f9d0 (n32).
  It occupies 116 bytes.
  The `lw` at 0x1006f9f8 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006f9fc loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006fa00 loads 4 bytes from [[a0+72]+8] +0x180 via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006fa08 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0).
  The `lw` at 0x1006fa14 loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006fa18 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006fa1c loads 4 bytes from [[a0+72]+8] +0x188 via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006fa20 calls (unknown callee) with a0=([[[a0+72]+8]+384] + [a0+72]), a1=[a0+72], a2=a2 at entry (arg2), a3=0x416a0.
  The return at 0x1006fa3c has v0 = ret(unknown).

- `saveToHardware__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006fa50 (n32).
  It occupies 124 bytes.
  The `lw` at 0x1006fa78 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006fa7c loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006fa80 loads 4 bytes from [[a0+72]+8] +0x18c via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006fa88 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0).
  The `lw` at 0x1006fa9c loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006faa0 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006faa4 loads 4 bytes from [[a0+72]+8] +0x194 via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006faa8 calls (unknown callee) with a0=([[[a0+72]+8]+396] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41620.
  The return at 0x1006fac4 has v0 = ret(unknown).

- `saveas__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006fad0 (n32).
  It occupies 456 bytes.
  The 4 such `lw` accesses load 4 bytes from abs 0x100a90d8 via base gp (0x100b1070), including `lw` at 0x1006faf4, `lw` at 0x1006fb38, `lw` at 0x1006fb64.
  The `lw` at 0x1006fafc loads 4 bytes from abs 0x100a9348 via base gp (0x100b1070).
  The `lw` at 0x1006fb44 loads 4 bytes from abs 0x100a9314 via base gp (0x100b1070).
  The 5 such `lw` accesses load 4 bytes from abs 0x100a93cc via base gp (0x100b1070), including `lw` at 0x1006fb50, `lw` at 0x1006fb78, `lw` at 0x1006fb9c.
  The `lw` at 0x1006fb6c loads 4 bytes from abs 0x100a934c via base gp (0x100b1070).
  The `lw` at 0x1006fb90 loads 4 bytes from abs 0x100a9350 via base gp (0x100b1070).
  The `lw` at 0x1006fbb4 loads 4 bytes from abs 0x100a9354 via base gp (0x100b1070).
  The 2 such `lw` accesses load 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8 via base v0 (ret(getTheFileSelectionDialog__Gv)), including `lw` at 0x1006fbd0, `lw` at 0x1006fbfc.
  The `lw` at 0x1006fbd4 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108 via base a0 ([ret(getTheFileSelectionDialog__Gv)+8]).
  The `lw` at 0x1006fc00 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110 via base t9 ([ret(getTheFileSelectionDialog__Gv)+8]).
  The `lw` at 0x1006fc30 loads 4 bytes from abs 0x100a909c via base gp (0x100b1070).
  The `lw` at 0x1006fc4c loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006fc50 loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006fc54 loads 4 bytes from [[a0+72]+8] +0x198 via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006fc5c loads 4 bytes from a0 (arg0 at entry) +0x48 via base a2 (a0).
  The `lw` at 0x1006fc68 loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006fc6c loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006fc70 loads 4 bytes from [[a0+72]+8] +0x1a0 via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006fb00 calls getenv with a0=0x1009c648, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x415a0.
  The `jalr` at 0x1006fb48 calls sprintf with a0=sp-1096, a1=0x1009c658, a2=(unknown), a3=(unknown), a4=ret(getenv).
  The `jalr` at 0x1006fb54 calls getTheFileSelectionDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006fb70 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x1009c6a8, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006fb7c calls getTheFileSelectionDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006fb94 calls setDirectory__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=sp-1096, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006fba0 calls getTheFileSelectionDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006fbb8 calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x100aa8a0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006fbc4 calls getTheFileSelectionDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006fc04 calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x1009c6c0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1006fc20 calls getTheFileSelectionDialog__Gv with a0=(unknown), a1=0x1, a2=(unknown), a3=(unknown).
  The `jal` at 0x1006fc38 calls (unknown callee) with a0=ret(getTheFileSelectionDialog__Gv), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1006fc74 calls (unknown callee) with a0=([[[a0+72]+8]+408] + [a0+72]), a1=ret(0x100706c0), a2=[a0+72], a3=(unknown).
  The `beq` at 0x1006fb14 goes to 0x1006fb2c when a4(=ret(getenv)) == 0 and falls through when a4(=ret(getenv)) != 0.
  The `bne` at 0x1006fc14 goes to 0x1006fc7c when v0(=ret(unknown)) != a1(=0x1) and falls through when v0(=ret(unknown)) == a1(=0x1).
  The return at 0x1006fc90 has v0 = ret(unknown).

- `snapChannel__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006fca0 (n32).
  It occupies 124 bytes.
  The `lw` at 0x1006fcc8 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006fccc loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006fcd0 loads 4 bytes from [[a0+72]+8] +0x1a4 via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006fcd8 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0).
  The `lw` at 0x1006fcec loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006fcf0 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006fcf4 loads 4 bytes from [[a0+72]+8] +0x1ac via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006fcf8 calls (unknown callee) with a0=([[[a0+72]+8]+420] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x413d0.
  The return at 0x1006fd14 has v0 = ret(unknown).

- `userHardware__18VkwindowMainWindowGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1006fd20 (n32).
  It occupies 124 bytes.
  The `lw` at 0x1006fd48 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a0 (a0).
  The `lw` at 0x1006fd4c loads 4 bytes from [a0+72] +0x8 via base a0 ([a0+72]).
  The `lw` at 0x1006fd50 loads 4 bytes from [[a0+72]+8] +0x1b0 via base a0 ([[a0+72]+8]).
  The `lw` at 0x1006fd58 loads 4 bytes from a0 (arg0 at entry) +0x48 via base a1 (a0).
  The `lw` at 0x1006fd6c loads 4 bytes from a0 (arg0 at entry) +0x48 via base t9 (a0).
  The `lw` at 0x1006fd70 loads 4 bytes from [a0+72] +0x8 via base t9 ([a0+72]).
  The `lw` at 0x1006fd74 loads 4 bytes from [[a0+72]+8] +0x1b8 via base t9 ([[a0+72]+8]).
  The `jalr` at 0x1006fd78 calls (unknown callee) with a0=([[[a0+72]+8]+432] + [a0+72]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x41350.
  The return at 0x1006fd94 has v0 = ret(unknown).

- `closeCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1006fda0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x1006fdd0 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x1006fdd4 loads 4 bytes from [a1+8] +0x174 via base a0 ([a1+8]).
  The `lw` at 0x1006fdec loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x1006fdf0 loads 4 bytes from [a1+8] +0x17c via base t9 ([a1+8]).
  The `jalr` at 0x1006fdf4 calls (unknown callee) with a0=([[a1+8]+372] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x412d0.
  The return at 0x1006fe10 has v0 = ret(unknown).

- `copyCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1006fe20 (n32).
  It occupies 120 bytes.
  The `lw` at 0x1006fe50 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x1006fe54 loads 4 bytes from [a1+8] +0x180 via base a0 ([a1+8]).
  The `lw` at 0x1006fe6c loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x1006fe70 loads 4 bytes from [a1+8] +0x188 via base t9 ([a1+8]).
  The `jalr` at 0x1006fe74 calls (unknown callee) with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x41250.
  The return at 0x1006fe90 has v0 = ret(unknown).

- `currentHardwareCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1006fea0 (n32).
  It occupies 140 bytes.
  The `lw` at 0x1006fed0 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x1006fed4 loads 4 bytes from [a1+8] +0x18c via base a0 ([a1+8]).
  The `lw` at 0x1006feec loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x1006fef0 loads 4 bytes from [a1+8] +0x194 via base t9 ([a1+8]).
  The `lw` at 0x1006ff00 loads 4 bytes from a1 (arg1 at entry) +0xa8 via base a0 (a1).
  The `lw` at 0x1006ff04 loads 4 bytes from abs 0x100a9388 via base gp (0x100b1070).
  The `jalr` at 0x1006fef4 calls (unknown callee) with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x411d0.
  The `jalr` at 0x1006ff08 calls deactivate__10VkMenuItemGv with a0=[a1+168], a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x1006ff24 has v0 = ret(deactivate__10VkMenuItemGv).

- `cutCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1006ff30 (n32).
  It occupies 120 bytes.
  The `lw` at 0x1006ff60 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x1006ff64 loads 4 bytes from [a1+8] +0x198 via base a0 ([a1+8]).
  The `lw` at 0x1006ff7c loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x1006ff80 loads 4 bytes from [a1+8] +0x1a0 via base t9 ([a1+8]).
  The `jalr` at 0x1006ff84 calls (unknown callee) with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x41140.
  The return at 0x1006ffa0 has v0 = ret(unknown).

- `deleteChannelCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1006ffb0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x1006ffe0 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x1006ffe4 loads 4 bytes from [a1+8] +0x1a4 via base a0 ([a1+8]).
  The `lw` at 0x1006fffc loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x10070000 loads 4 bytes from [a1+8] +0x1ac via base t9 ([a1+8]).
  The `jalr` at 0x10070004 calls (unknown callee) with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x410c0.
  The return at 0x10070020 has v0 = ret(unknown).

- `editChannelCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10070030 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10070060 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x10070064 loads 4 bytes from [a1+8] +0x1b0 via base a0 ([a1+8]).
  The `lw` at 0x1007007c loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x10070080 loads 4 bytes from [a1+8] +0x1b8 via base t9 ([a1+8]).
  The `jalr` at 0x10070084 calls (unknown callee) with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x41040.
  The return at 0x100700a0 has v0 = ret(unknown).

- `editHardwareCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100700b0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100700e0 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x100700e4 loads 4 bytes from [a1+8] +0x1bc via base a0 ([a1+8]).
  The `lw` at 0x100700fc loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x10070100 loads 4 bytes from [a1+8] +0x1c4 via base t9 ([a1+8]).
  The `jalr` at 0x10070104 calls (unknown callee) with a0=([[a1+8]+444] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40fc0.
  The return at 0x10070120 has v0 = ret(unknown).

- `grabWindowCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10070130 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10070160 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x10070164 loads 4 bytes from [a1+8] +0x1c8 via base a0 ([a1+8]).
  The `lw` at 0x1007017c loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x10070180 loads 4 bytes from [a1+8] +0x1d0 via base t9 ([a1+8]).
  The `jalr` at 0x10070184 calls (unknown callee) with a0=([[a1+8]+456] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40f40.
  The return at 0x100701a0 has v0 = ret(unknown).

- `newChannelCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100701b0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100701e0 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x100701e4 loads 4 bytes from [a1+8] +0x1d4 via base a0 ([a1+8]).
  The `lw` at 0x100701fc loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x10070200 loads 4 bytes from [a1+8] +0x1dc via base t9 ([a1+8]).
  The `jalr` at 0x10070204 calls (unknown callee) with a0=([[a1+8]+468] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40ec0.
  The return at 0x10070220 has v0 = ret(unknown).

- `newFileCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10070230 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10070260 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x10070264 loads 4 bytes from [a1+8] +0x1e0 via base a0 ([a1+8]).
  The `lw` at 0x1007027c loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x10070280 loads 4 bytes from [a1+8] +0x1e8 via base t9 ([a1+8]).
  The `jalr` at 0x10070284 calls (unknown callee) with a0=([[a1+8]+480] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40e40.
  The return at 0x100702a0 has v0 = ret(unknown).

- `openFileCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100702b0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100702e0 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x100702e4 loads 4 bytes from [a1+8] +0x1ec via base a0 ([a1+8]).
  The `lw` at 0x100702fc loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x10070300 loads 4 bytes from [a1+8] +0x1f4 via base t9 ([a1+8]).
  The `jalr` at 0x10070304 calls (unknown callee) with a0=([[a1+8]+492] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40dc0.
  The return at 0x10070320 has v0 = ret(unknown).

- `pasteCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10070330 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10070360 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x10070364 loads 4 bytes from [a1+8] +0x1f8 via base a0 ([a1+8]).
  The `lw` at 0x1007037c loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x10070380 loads 4 bytes from [a1+8] +0x200 via base t9 ([a1+8]).
  The `jalr` at 0x10070384 calls (unknown callee) with a0=([[a1+8]+504] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40d40.
  The return at 0x100703a0 has v0 = ret(unknown).

- `quitCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100703b0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100703e0 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x100703e4 loads 4 bytes from [a1+8] +0x204 via base a0 ([a1+8]).
  The `lw` at 0x100703fc loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x10070400 loads 4 bytes from [a1+8] +0x20c via base t9 ([a1+8]).
  The `jalr` at 0x10070404 calls (unknown callee) with a0=([[a1+8]+516] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40cc0.
  The return at 0x10070420 has v0 = ret(unknown).

- `saveCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10070430 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10070460 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x10070464 loads 4 bytes from [a1+8] +0x210 via base a0 ([a1+8]).
  The `lw` at 0x1007047c loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x10070480 loads 4 bytes from [a1+8] +0x218 via base t9 ([a1+8]).
  The `jalr` at 0x10070484 calls (unknown callee) with a0=([[a1+8]+528] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40c40.
  The return at 0x100704a0 has v0 = ret(unknown).

- `saveToHardwareCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100704b0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100704e0 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x100704e4 loads 4 bytes from [a1+8] +0x21c via base a0 ([a1+8]).
  The `lw` at 0x100704fc loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x10070500 loads 4 bytes from [a1+8] +0x224 via base t9 ([a1+8]).
  The `jalr` at 0x10070504 calls (unknown callee) with a0=([[a1+8]+540] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40bc0.
  The return at 0x10070520 has v0 = ret(unknown).

- `saveasCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10070530 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10070560 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x10070564 loads 4 bytes from [a1+8] +0x228 via base a0 ([a1+8]).
  The `lw` at 0x1007057c loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x10070580 loads 4 bytes from [a1+8] +0x230 via base t9 ([a1+8]).
  The `jalr` at 0x10070584 calls (unknown callee) with a0=([[a1+8]+552] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40b40.
  The return at 0x100705a0 has v0 = ret(unknown).

- `snapChannelCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100705b0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100705e0 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x100705e4 loads 4 bytes from [a1+8] +0x234 via base a0 ([a1+8]).
  The `lw` at 0x100705fc loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x10070600 loads 4 bytes from [a1+8] +0x23c via base t9 ([a1+8]).
  The `jalr` at 0x10070604 calls (unknown callee) with a0=([[a1+8]+564] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40ac0.
  The return at 0x10070620 has v0 = ret(unknown).

- `userHardwareCallback__18VkwindowMainWindowSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10070630 (n32).
  It occupies 140 bytes.
  The `lw` at 0x10070660 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a0 (a1).
  The `lw` at 0x10070664 loads 4 bytes from [a1+8] +0x240 via base a0 ([a1+8]).
  The `lw` at 0x1007067c loads 4 bytes from a1 (arg1 at entry) +0x8 via base t9 (a1).
  The `lw` at 0x10070680 loads 4 bytes from [a1+8] +0x248 via base t9 ([a1+8]).
  The `lw` at 0x10070690 loads 4 bytes from a1 (arg1 at entry) +0xa8 via base a0 (a1).
  The `lw` at 0x10070694 loads 4 bytes from abs 0x100a9384 via base gp (0x100b1070).
  The `jalr` at 0x10070684 calls (unknown callee) with a0=([[a1+8]+576] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x40a40.
  The `jalr` at 0x10070698 calls activate__10VkMenuItemGv with a0=[a1+168], a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100706b4 has v0 = ret(activate__10VkMenuItemGv).

- `__ct__20GammaAssignmentClassGPCc` in `usr/bin/X11/xsetmon` at 0x10030bd0 (n32).
  It occupies 72 bytes.
  The `lw` at 0x10030be4 loads 4 bytes from abs 0x10050ec4 via base gp (0x100588fc).
  The `lw` at 0x10030bf8 loads 4 bytes from abs 0x100512a4 via base gp (0x100588fc).
  The `sw` at 0x10030c08 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__20GammaAssignmentClass).
  The `jal` at 0x10030bf0 calls __ct__22GammaAssignmentClassUIGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10030c10 has v0 = a0.

- `saveData__10GammaClassGP8__file_s` in `usr/bin/X11/xsetmon` at 0x10030c20 (n32).
  It occupies 372 bytes.
  The `lw` at 0x10030c3c loads 4 bytes from abs 0x1005131c via base gp (0x100588fc).
  The 3 such `lw` accesses load 4 bytes from abs 0x10050c74 via base gp (0x100588fc), including `lw` at 0x10030c40, `lw` at 0x10030c98, `lw` at 0x10030cd0.
  The `lw` at 0x10030c48 loads 4 bytes from sym(xsetmonApp) +0x0 via base at (sym(xsetmonApp)).
  The `lw` at 0x10030c60 loads 4 bytes from [sym(xsetmonApp)] +0x98 via base at ([sym(xsetmonApp)]).
  The `lw` at 0x10030c90 loads 4 bytes from a0 (arg0 at entry) +0x30 via base s0 (a0).
  The `lw` at 0x10030c94 loads 4 bytes from [a0+48] +0x3c via base a4 ([a0+48]).
  The `lw` at 0x10030cac loads 4 bytes from unknown (base unknown) via base a4 (unknown).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68 via base s0 (a0), including `lw` at 0x10030ce8, `lw` at 0x10030d60.
  The 3 such `lw` accesses load 4 bytes from abs 0x10051000 via base gp (0x100588fc), including `lw` at 0x10030d00, `lw` at 0x10030d20, `lw` at 0x10030d40.
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c via base s0 (a0), including `lw` at 0x10030d08, `lw` at 0x10030d28, `lw` at 0x10030d48.
  The `lw` at 0x10030d14 loads 4 bytes from a0 (arg0 at entry) +0x24 via base s0 (a0).
  The `lw` at 0x10030d34 loads 4 bytes from a0 (arg0 at entry) +0x28 via base s0 (a0).
  The `lw` at 0x10030d54 loads 4 bytes from a0 (arg0 at entry) +0x2c via base s0 (a0).
  The `jalr` at 0x10030c68 calls fwrite with a0=sp-64, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10030cb4 calls fwrite with a0=sp-60, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10030ce0 calls fwrite with a0=a0+104, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jal` at 0x10030d18 calls saveData__19GammaMapEditorClassGP18GammaMapDescriptorilP8__file_s with a0=[a0+36], a1=(unknown), a2=0x1, a3=0x1, a4=a1 at entry (arg1).
  The `jal` at 0x10030d38 calls saveData__19GammaMapEditorClassGP18GammaMapDescriptorilP8__file_s with a0=[a0+40], a1=(unknown), a2=0x2, a3=0x2, a4=a1 at entry (arg1).
  The `jal` at 0x10030d58 calls saveData__19GammaMapEditorClassGP18GammaMapDescriptorilP8__file_s with a0=[a0+44], a1=(unknown), a2=0x3, a3=0x4, a4=a1 at entry (arg1).
  The `blez` at 0x10030c7c goes to 0x10030cd0 when v1(unknown) <= 0 (signed) and falls through when v1(unknown) > 0 (signed).
  The `bne` at 0x10030cc8 goes to 0x10030c90 when s3(unknown) < a5(unknown) (signed) and falls through when s3(unknown) >= a5(unknown) (signed).
  The `blez` at 0x10030cf0 goes to 0x10030d74 when a6(=[a0+104]) <= 0 (signed) and falls through when a6(=[a0+104]) > 0 (signed).
  The `bne` at 0x10030d6c goes to 0x10030d00 when s3(unknown) < a2(=[a0+104]) (signed) and falls through when s3(unknown) >= a2(=[a0+104]) (signed).
  The return at 0x10030d8c has v0 = unknown.

- `__dt__21MasterTabbedDeckClassGv` in `usr/bin/X11/xsetmon` at 0x10030da0 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10030dc8 loads 4 bytes from abs 0x10050fb8 via base gp (0x100588fc).
  The `lw` at 0x10030dcc loads 4 bytes from abs 0x100512c8 via base gp (0x100588fc).
  The `sw` at 0x10030dd0 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__21MasterTabbedDeckClass).
  The `lw` at 0x10030df0 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jal` at 0x10030dd8 calls __dt__12MyTabbedDeckGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030df4 calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10030dc0 goes to 0x10030dfc when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x10030de8 goes to 0x10030e00 when (v1(=a1) & 0x1) == 0 and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10030e04 has v0 = unknown.

- `vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC` in `usr/bin/X11/xsetmon` at 0x10030f10 (n32).
  It occupies 128 bytes.
  The `lw` at 0x10030f10 loads 4 bytes from a0 (arg0 at entry) +0x24 via base a0 (a0).
  The `lw` at 0x10030f30 loads 4 bytes from abs 0x1005131c via base gp (0x100588fc).
  The `lw` at 0x10030f34 loads 4 bytes from abs 0x10050d3c via base gp (0x100588fc).
  The `lw` at 0x10030f38 loads 4 bytes from sym(xsetmonApp) +0x0 via base at (sym(xsetmonApp)).
  The `lw` at 0x10030f40 loads 4 bytes from [sym(xsetmonApp)] +0x6c via base at ([sym(xsetmonApp)]).
  The `lh` at 0x10030f50 loads 2 bytes from a1 (arg1 at entry) +0x2 via base s8 (a1).
  The `lw` at 0x10030f54 loads 4 bytes from abs 0x10050d50 via base gp (0x100588fc).
  The `lh` at 0x10030f60 loads 2 bytes from a1 (arg1 at entry) +0x0 via base s8 (a1).
  The `jalr` at 0x10030f48 calls XtWindow with a0=[a0+36], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10030f74 calls XFillRectangle with a0=(unknown), a1=ret(XtWindow), a2=a2 at entry (arg2), a3=[a1]:2-2, a4=[a1+2]:2-2, a5=0x5, a6=0x5.
  The return at 0x10030f88 has v0 = ret(XFillRectangle).

- `__ct__21SetmonMasterFormClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10030fd0 (n32).
  It occupies 380 bytes.
  The `lw` at 0x10030fe4 loads 4 bytes from abs 0x100511ec via base gp (0x100588fc).
  The `lw` at 0x10030ff8 loads 4 bytes from abs 0x10051204 via base gp (0x100588fc).
  The `lw` at 0x10031000 loads 4 bytes from abs 0x100512d8 via base gp (0x100588fc).
  The `sw` at 0x10031004 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a2 (a0) with value sym(__vtbl__21SetmonMasterFormClass).
  The 4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28 via base a0 (a0), including `lw` at 0x10031010, `lw` at 0x10031020, `lw` at 0x10031030.
  The `lw` at 0x10031014 loads 4 bytes from abs 0x10050f74 via base gp (0x100588fc).
  The `lw` at 0x10031024 loads 4 bytes from abs 0x10051044 via base gp (0x100588fc).
  The `lw` at 0x10031034 loads 4 bytes from abs 0x100511ac via base gp (0x100588fc).
  The 4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20 via base v0 (a0), including `lw` at 0x10031048, `lw` at 0x10031064, `lw` at 0x10031080.
  The `lw` at 0x1003104c loads 4 bytes from [a0+32] +0x9c via base a0 ([a0+32]).
  The `lw` at 0x10031054 loads 4 bytes from abs 0x100511a8 via base gp (0x100588fc).
  The `lw` at 0x10031068 loads 4 bytes from [a0+32] +0xa0 via base a0 ([a0+32]).
  The `lw` at 0x10031070 loads 4 bytes from abs 0x10050ed4 via base gp (0x100588fc).
  The `lw` at 0x10031084 loads 4 bytes from [a0+32] +0xa4 via base a0 ([a0+32]).
  The 3 such `lw` accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x1003108c, `lw` at 0x100310a0, `lw` at 0x100310bc.
  The `lw` at 0x10031090 loads 4 bytes from abs 0x10050ed0 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)), including `lw` at 0x100310a4, `lw` at 0x100310c4.
  The `lbu` at 0x100310a8 loads 1 byte from [sym(xsetmonApp)] +0xc9 via base a0 ([sym(xsetmonApp)]).
  The `lw` at 0x100310b0 loads 4 bytes from abs 0x10050fe8 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28 via base v0 (a0), including `lw` at 0x100310b8, `lw` at 0x100310d4.
  The `lbu` at 0x100310c8 loads 1 byte from [sym(xsetmonApp)] +0xc8 via base a0 ([sym(xsetmonApp)]).
  The `lw` at 0x100310d8 loads 4 bytes from [a0+40] +0x8 via base a3 ([a0+40]).
  The `lw` at 0x100310dc loads 4 bytes from [[a0+40]+8] +0xa4 via base a0 ([[a0+40]+8]).
  The `lw` at 0x100310e0 loads 4 bytes from [[a0+40]+8] +0x9c via base a0 ([[a0+40]+8]).
  The `lw` at 0x100310fc loads 4 bytes from [a0+32] +0xb0 via base a3 ([a0+32]).
  The `lw` at 0x10031100 loads 4 bytes from [a0+32] +0xc4 via base a3 ([a0+32]).
  The `lw` at 0x10031104 loads 4 bytes from [a0+32] +0xb8 via base a3 ([a0+32]).
  The `lw` at 0x10031108 loads 4 bytes from [a0+32] +0xcc via base a3 ([a0+32]).
  The `lw` at 0x10031120 loads 4 bytes from abs 0x10050c1c via base gp (0x100588fc).
  The `lw` at 0x10031128 loads 4 bytes from a0 (arg0 at entry) +0x30 via base v0 (a0).
  The `jal` at 0x10030ff0 calls __ct__23SetmonMasterFormClassUIGPCcP10_WidgetRec with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003100c calls ClearFormat__19StatisticsFormClassGv with a0=[a0+40], a1=sym(__vtbl__21SetmonMasterFormClass), a2=a0 at entry (arg0), a3=(unknown).
  The `jal` at 0x1003101c calls ClearfbConfig__19StatisticsFormClassGv with a0=[a0+40], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003102c calls ClearfbDepth__19StatisticsFormClassGv with a0=[a0+40], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003103c calls ClearaccumBufType__19StatisticsFormClassGv with a0=[a0+40], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10031058 calls DisplayFormat__21SetmonMasterFormClassGPC21XSGIvcVideoFormatInfo with a0=a0 at entry (arg0), a1=[[a0+32]+156], a2=(unknown), a3=(unknown).
  The `jal` at 0x10031074 calls DisplayCombination__21SetmonMasterFormClassGPCc with a0=a0 at entry (arg0), a1=[[a0+32]+160], a2=(unknown), a3=(unknown).
  The `jal` at 0x10031094 calls DisplayfbConfig__21SetmonMasterFormClassGPCc with a0=a0 at entry (arg0), a1=[[a0+32]+164], a2=(unknown), a3=(unknown).
  The `jal` at 0x100310b4 calls updateMemoUsageOdsy__19StatisticsFormClassGv with a0=[a0+40], a1=[[sym(xsetmonApp)]+201]:1, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100310ec calls (unknown callee) with a0=([[[a0+40]+8]+156] + [a0+40]), a1=0x0, a2=0x0, a3=[a0+40].
  The `jalr` at 0x10031124 calls XtUnmanageChild with a0=[a0+48], a1=(([[a0+32]+176] + [[a0+32]+196]) + ([[a0+32]+184] + [[a0+32]+204])), a2=([[a0+32]+184] + [[a0+32]+204]), a3=[[a0+32]+204], a4=[[a0+32]+196].
  The `beq` at 0x10031050 goes to 0x10031068 when a1(=[[a0+32]+156]) == 0 and falls through when a1(=[[a0+32]+156]) != 0.
  The `beq` at 0x1003106c goes to 0x10031084 when a1(=[[a0+32]+160]) == 0 and falls through when a1(=[[a0+32]+160]) != 0.
  The `beq` at 0x10031088 goes to 0x100310a4 when a1(=[[a0+32]+164]) == 0 and falls through when a1(=[[a0+32]+164]) != 0.
  The `beq` at 0x100310ac goes to 0x100310c8 when a1(=[[sym(xsetmonApp)]+201]:1) == 0 and falls through when a1(=[[sym(xsetmonApp)]+201]:1) != 0.
  The `beq` at 0x100310cc goes to 0x100310f8 when a1(=[[sym(xsetmonApp)]+200]:1) == 0 and falls through when a1(=[[sym(xsetmonApp)]+200]:1) != 0.
  The `beq` at 0x10031118 goes to 0x10031140 when a1(=(([[a0+32]+176] + [[a0+32]+196]) + ([[a0+32]+184] + [[a0+32]+204]))) == 0 and falls through when a1(=(([[a0+32]+176] + [[a0+32]+196]) + ([[a0+32]+184] + [[a0+32]+204]))) != 0.
  The return at 0x10031138 has v0 = a0.
  The return at 0x10031144 has v0 = a0.

- `postInfoMessage__22ScrollingErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10031150 (n32).
  It occupies 96 bytes.
  The `lw` at 0x10031164 loads 4 bytes from abs 0x10050de0 via base gp (0x100588fc).
  The `lw` at 0x1003117c loads 4 bytes from abs 0x10050f5c via base gp (0x100588fc).
  The `lw` at 0x10031190 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x10031174 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10031188 calls appendText__22ScrollingErrorMessagerGPc with a0=a0 at entry (arg0), a1=ret(str__9strstreamGv), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10031198 calls __dl__GPv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100311a8 has v0 = ret(__dl__GPv).

- `__dt__12GammaClassUIGv` in `usr/bin/X11/xsetmon` at 0x100311b0 (n32).
  It occupies 388 bytes.
  The `lw` at 0x100311d4 loads 4 bytes from abs 0x100512b4 via base gp (0x100588fc).
  The `sw` at 0x100311d8 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__12GammaClassUI).
  The `lw` at 0x100311e0 loads 4 bytes from a0 (arg0 at entry) +0x20 via base a0 (a0).
  The `lw` at 0x100311ec loads 4 bytes from [a0+32] +0x8 via base a3 ([a0+32]).
  The `lw` at 0x100311f0 loads 4 bytes from [[a0+32]+8] +0x14 via base a0 ([[a0+32]+8]).
  The `lw` at 0x100311f4 loads 4 bytes from [[a0+32]+8] +0xc via base a0 ([[a0+32]+8]).
  The `lw` at 0x10031208 loads 4 bytes from a0 (arg0 at entry) +0x30 via base a0 (a0).
  The `lw` at 0x10031214 loads 4 bytes from [a0+48] +0x8 via base a3 ([a0+48]).
  The `lw` at 0x10031218 loads 4 bytes from [[a0+48]+8] +0x14 via base a0 ([[a0+48]+8]).
  The `lw` at 0x1003121c loads 4 bytes from [[a0+48]+8] +0xc via base a0 ([[a0+48]+8]).
  The `lw` at 0x10031230 loads 4 bytes from a0 (arg0 at entry) +0x24 via base a0 (a0).
  The `lw` at 0x1003123c loads 4 bytes from [a0+36] +0x8 via base a3 ([a0+36]).
  The `lw` at 0x10031240 loads 4 bytes from [[a0+36]+8] +0x14 via base a0 ([[a0+36]+8]).
  The `lw` at 0x10031244 loads 4 bytes from [[a0+36]+8] +0xc via base a0 ([[a0+36]+8]).
  The `lw` at 0x10031258 loads 4 bytes from a0 (arg0 at entry) +0x28 via base a0 (a0).
  The `lw` at 0x10031264 loads 4 bytes from [a0+40] +0x8 via base a3 ([a0+40]).
  The `lw` at 0x10031268 loads 4 bytes from [[a0+40]+8] +0x14 via base a0 ([[a0+40]+8]).
  The `lw` at 0x1003126c loads 4 bytes from [[a0+40]+8] +0xc via base a0 ([[a0+40]+8]).
  The `lw` at 0x10031280 loads 4 bytes from a0 (arg0 at entry) +0x2c via base a0 (a0).
  The `lw` at 0x1003128c loads 4 bytes from [a0+44] +0x8 via base a3 ([a0+44]).
  The `lw` at 0x10031290 loads 4 bytes from [[a0+44]+8] +0x14 via base a0 ([[a0+44]+8]).
  The `lw` at 0x10031294 loads 4 bytes from [[a0+44]+8] +0xc via base a0 ([[a0+44]+8]).
  The `lw` at 0x100312a8 loads 4 bytes from a0 (arg0 at entry) +0x64 via base a0 (a0).
  The `lw` at 0x100312b4 loads 4 bytes from [a0+100] +0x8 via base a3 ([a0+100]).
  The `lw` at 0x100312b8 loads 4 bytes from [[a0+100]+8] +0x14 via base a0 ([[a0+100]+8]).
  The `lw` at 0x100312bc loads 4 bytes from [[a0+100]+8] +0xc via base a0 ([[a0+100]+8]).
  The `lw` at 0x100312d0 loads 4 bytes from a0 (arg0 at entry) +0x6c via base a0 (a0).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b1c via base gp (0x100588fc), including `lw` at 0x100312d8, `lw` at 0x10031300.
  The `lw` at 0x100312e0 loads 4 bytes from abs 0x10050d18 via base gp (0x100588fc).
  The `lw` at 0x10031318 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x100311fc calls (unknown callee) with a0=([[[a0+32]+8]+12] + [a0+32]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+32].
  The `jalr` at 0x10031224 calls (unknown callee) with a0=([[[a0+48]+8]+12] + [a0+48]), a1=0x3, a2=(unknown), a3=[a0+48].
  The `jalr` at 0x1003124c calls (unknown callee) with a0=([[[a0+36]+8]+12] + [a0+36]), a1=0x3, a2=(unknown), a3=[a0+36].
  The `jalr` at 0x10031274 calls (unknown callee) with a0=([[[a0+40]+8]+12] + [a0+40]), a1=0x3, a2=(unknown), a3=[a0+40].
  The `jalr` at 0x1003129c calls (unknown callee) with a0=([[[a0+44]+8]+12] + [a0+44]), a1=0x3, a2=(unknown), a3=[a0+44].
  The `jalr` at 0x100312c4 calls (unknown callee) with a0=([[[a0+100]+8]+12] + [a0+100]), a1=0x3, a2=(unknown), a3=[a0+100].
  The `jalr` at 0x100312f4 calls __vec_delete2 with a0=[a0+108], a1=-0x1, a2=0x18, a3=0x0, a4=0x1, a5=0x0, a7=[a0+108].
  The `jalr` at 0x10031304 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003131c calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100311c8 goes to 0x10031324 when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x100311e4 goes to 0x10031208 when a3(=[a0+32]) == 0 and falls through when a3(=[a0+32]) != 0.
  The `beq` at 0x1003120c goes to 0x10031230 when a3(=[a0+48]) == 0 and falls through when a3(=[a0+48]) != 0.
  The `beq` at 0x10031234 goes to 0x10031258 when a3(=[a0+36]) == 0 and falls through when a3(=[a0+36]) != 0.
  The `beq` at 0x1003125c goes to 0x10031280 when a3(=[a0+40]) == 0 and falls through when a3(=[a0+40]) != 0.
  The `beq` at 0x10031284 goes to 0x100312a8 when a3(=[a0+44]) == 0 and falls through when a3(=[a0+44]) != 0.
  The `beq` at 0x100312ac goes to 0x100312d0 when a3(=[a0+100]) == 0 and falls through when a3(=[a0+100]) != 0.
  The `beq` at 0x100312d4 goes to 0x10031304 when a7(=[a0+108]) == 0 and falls through when a7(=[a0+108]) != 0.
  The `beq` at 0x10031314 goes to 0x10031324 when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  The return at 0x1003132c has v0 = unknown.

- `doOptionNotBlankedCallback__18ChannelFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10031340 (n32).
  It occupies 68 bytes.
  The `lw` at 0x10031344 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a1 (a1).
  The `lw` at 0x10031350 loads 4 bytes from [a1+8] +0xcc via base v1 ([a1+8]).
  The `lw` at 0x1003135c loads 4 bytes from [a1+8] +0xd4 via base v1 ([a1+8]).
  The `jalr` at 0x1003136c calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x275bc.
  The return at 0x1003137c has v0 = ret(unknown).

- `__dt__13GammaEditUndoGv` in `usr/bin/X11/xsetmon` at 0x10031390 (n32).
  It occupies 96 bytes.
  The `lw` at 0x100313b4 loads 4 bytes from abs 0x10050b98 via base gp (0x100588fc).
  The `lw` at 0x100313c0 loads 4 bytes from a0 (arg0 at entry) +0x4 via base a0 (a0).
  The `lw` at 0x100313d4 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x100313bc calls __dla__GPv with a0=[a0+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100313d8 calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100313ac goes to 0x100313e0 when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x100313cc goes to 0x100313e4 when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  The return at 0x100313e8 has v0 = unknown.

- `changeTargetDisplay__21MasterTabbedDeckClassGPc` in `usr/bin/X11/xsetmon` at 0x10031540 (n32).
  It occupies 1360 bytes.
  The `lbu` at 0x1003156c loads 1 byte from a1 (arg1 at entry) +0x0 via base a1 (a1).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b9c via base gp (0x100588fc), including `lw` at 0x10031574, `lw` at 0x1003197c.
  The `lw` at 0x10031578 loads 4 bytes from abs 0x10050ba0 via base gp (0x100588fc).
  The 16 such `lw` accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x1003157c, `lw` at 0x100315e0, `lw` at 0x100315f8.
  The `lw` at 0x10031588 loads 4 bytes from abs 0x10050ba4 via base gp (0x100588fc).
  The `lw` at 0x100315a0 loads 4 bytes from abs 0x10050bac via base gp (0x100588fc).
  The `lw` at 0x100315b4 loads 4 bytes from abs 0x10050bb4 via base gp (0x100588fc).
  The `lw` at 0x100315c8 loads 4 bytes from ret(XOpenDisplay) +0x84 via base s2 (ret(XOpenDisplay)).
  The 3 such `lw` accesses load 4 bytes from abs 0x10050b68 via base gp (0x100588fc), including `lw` at 0x100315d4, `lw` at 0x10031990, `lw` at 0x10031a10.
  The 5 such `lw` accesses load 4 bytes from abs 0x10050f08 via base gp (0x100588fc), including `lw` at 0x100315dc, `lw` at 0x100315f4, `lw` at 0x1003160c.
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c via base s0 (a0), including `lw` at 0x100315e8, `lw` at 0x1003163c, `lw` at 0x10031820.
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30 via base s0 (a0), including `lw` at 0x10031600, `lw` at 0x10031660, `lw` at 0x10031838.
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34 via base s0 (a0), including `lw` at 0x10031618, `lw` at 0x10031684, `lw` at 0x10031850.
  The 6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38 via base s0 (a0), including `lw` at 0x10031630, `lw` at 0x100316a8, `lw` at 0x100317bc.
  The `lw` at 0x10031648 loads 4 bytes from [a0+44] +0x8 via base v0 ([a0+44]).
  The `lw` at 0x1003164c loads 4 bytes from [[a0+44]+8] +0x14 via base a0 ([[a0+44]+8]).
  The `lw` at 0x10031650 loads 4 bytes from [[a0+44]+8] +0xc via base a0 ([[a0+44]+8]).
  The `lw` at 0x1003166c loads 4 bytes from [a0+48] +0x8 via base v0 ([a0+48]).
  The `lw` at 0x10031670 loads 4 bytes from [[a0+48]+8] +0x14 via base a0 ([[a0+48]+8]).
  The `lw` at 0x10031674 loads 4 bytes from [[a0+48]+8] +0xc via base a0 ([[a0+48]+8]).
  The `lw` at 0x10031690 loads 4 bytes from [a0+52] +0x8 via base v0 ([a0+52]).
  The `lw` at 0x10031694 loads 4 bytes from [[a0+52]+8] +0x14 via base a0 ([[a0+52]+8]).
  The `lw` at 0x10031698 loads 4 bytes from [[a0+52]+8] +0xc via base a0 ([[a0+52]+8]).
  The 2 such `lw` accesses load 4 bytes from abs 0x100510e4 via base gp (0x100588fc), including `lw` at 0x100316b0, `lw` at 0x100316cc.
  The `lw` at 0x100316b4 loads 4 bytes from [a0+56] +0x8 via base v0 ([a0+56]).
  The `lw` at 0x100316b8 loads 4 bytes from [[a0+56]+8] +0x14 via base a0 ([[a0+56]+8]).
  The `lw` at 0x100316bc loads 4 bytes from [[a0+56]+8] +0xc via base a0 ([[a0+56]+8]).
  The `lw` at 0x100316d0 loads 4 bytes from abs 0x1005131c via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0 via base s2 (sym(xsetmonApp)), including `lw` at 0x100316dc, `lw` at 0x100316e8.
  The `lw` at 0x100316e0 loads 4 bytes from abs 0x10051154 via base gp (0x100588fc).
  The 4 such `lw` accesses load 4 bytes from abs 0x10050b4c via base gp (0x100588fc), including `lw` at 0x100316ec, `lw` at 0x10031720, `lw` at 0x10031754.
  The `sw` at 0x10031708 stores 4 bytes to a0 (arg0 at entry) +0x2c via base s0 (a0) with value 0x0.
  The 3 such `lw` accesses load 4 bytes from unknown (base unknown) via base v0 (unknown), including `lw` at 0x1003170c, `lw` at 0x10031740, `lw` at 0x10031774.
  The 6 such `lw` accesses load 4 bytes from unknown (base unknown) via base a0 (unknown), including `lw` at 0x10031710, `lw` at 0x10031714, `lw` at 0x10031744.
  The `sw` at 0x1003173c stores 4 bytes to a0 (arg0 at entry) +0x30 via base s0 (a0) with value 0x0.
  The `sw` at 0x10031770 stores 4 bytes to a0 (arg0 at entry) +0x34 via base s0 (a0) with value 0x0.
  The `sb` at 0x1003178c stores 1 byte to a0 (arg0 at entry) +0x40 via base s0 (a0) with value 0x0.
  The 2 such `lw` accesses load 4 bytes from abs 0x1005122c via base gp (0x100588fc), including `lw` at 0x100317a8, `lw` at 0x10031978.
  The `sw` at 0x100317b8 stores 4 bytes to a0 (arg0 at entry) +0x38 via base s0 (a0).
  The 2 such `lw` accesses load 4 bytes from [a0+56] +0x8 via base a1 ([a0+56]), including `lw` at 0x100317c0, `lw` at 0x100317e4.
  The `lw` at 0x100317c4 loads 4 bytes from [[a0+56]+8] +0x2c via base a0 ([[a0+56]+8]).
  The `lw` at 0x100317c8 loads 4 bytes from [[a0+56]+8] +0x24 via base a0 ([[a0+56]+8]).
  The `lbu` at 0x100317d4 loads 1 byte from a0 (arg0 at entry) +0x40 via base s0 (a0).
  The 5 such `lw` accesses load 4 bytes from abs 0x10051208 via base gp (0x100588fc), including `lw` at 0x100317dc, `lw` at 0x10031810, `lw` at 0x1003182c.
  The `lw` at 0x100317e8 loads 4 bytes from [[a0+56]+8] +0x38 via base a0 ([[a0+56]+8]).
  The `lw` at 0x100317ec loads 4 bytes from [[a0+56]+8] +0x30 via base a0 ([[a0+56]+8]).
  The 4 such `lw` accesses load 4 bytes from abs 0x10050bd8 via base gp (0x100588fc), including `lw` at 0x10031894, `lw` at 0x100318d0, `lw` at 0x1003190c.
  The 4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20 via base s0 (a0), including `lw` at 0x1003189c, `lw` at 0x100318d8, `lw` at 0x10031914.
  The `lw` at 0x100318a0 loads 4 bytes from abs 0x10051088 via base gp (0x100588fc).
  The `sw` at 0x100318c4 stores 4 bytes to a0 (arg0 at entry) +0x2c via base s0 (a0).
  The `lw` at 0x100318dc loads 4 bytes from abs 0x10051218 via base gp (0x100588fc).
  The `sw` at 0x10031900 stores 4 bytes to a0 (arg0 at entry) +0x30 via base s0 (a0).
  The `lw` at 0x10031918 loads 4 bytes from abs 0x10051120 via base gp (0x100588fc).
  The `sw` at 0x1003193c stores 4 bytes to a0 (arg0 at entry) +0x34 via base s0 (a0).
  The `lw` at 0x10031954 loads 4 bytes from abs 0x1005110c via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b84 via base gp (0x100588fc), including `lw` at 0x100319a8, `lw` at 0x10031a28.
  The 2 such `lw` accesses load 4 bytes from abs 0x10050ba8 via base gp (0x100588fc), including `lw` at 0x100319bc, `lw` at 0x10031a3c.
  The 2 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8 via base v0 (ret(getTheErrorDialog__Gv)), including `lw` at 0x100319c8, `lw` at 0x10031a48.
  The 2 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110 via base a0 ([ret(getTheErrorDialog__Gv)+8]), including `lw` at 0x100319d8, `lw` at 0x10031a58.
  The 2 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108 via base a0 ([ret(getTheErrorDialog__Gv)+8]), including `lw` at 0x100319e4, `lw` at 0x10031a64.
  The `jalr` at 0x10031580 calls putenv with a0=0x10045ee8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10031590 calls XOpenDisplay with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100315ac calls XSGIvcQueryVersion with a0=ret(XOpenDisplay), a1=sp-1120, a2=sp-1116, a3=(unknown).
  The `jalr` at 0x100315c4 calls XSGIvcQueryScreenGammaMaps with a0=ret(XOpenDisplay), a1=[ret(XOpenDisplay)+132], a2=sp-1112, a3=(unknown).
  The `jal` at 0x100315ec calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc with a0=a0 at entry (arg0), a1=[a0+44], a2=0x10045db8, a3=(unknown).
  The `jal` at 0x10031604 calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc with a0=a0 at entry (arg0), a1=[a0+48], a2=0x10045dd0, a3=(unknown).
  The `jal` at 0x1003161c calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc with a0=a0 at entry (arg0), a1=[a0+52], a2=0x10045de8, a3=(unknown).
  The `jal` at 0x10031634 calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc with a0=a0 at entry (arg0), a1=[a0+56], a2=0x10045e00, a3=(unknown).
  The `jalr` at 0x10031658 calls (unknown callee) with a0=([[[a0+44]+8]+12] + [a0+44]), a1=0x3, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003167c calls (unknown callee) with a0=([[[a0+48]+8]+12] + [a0+48]), a1=0x3, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100316a0 calls (unknown callee) with a0=([[[a0+52]+8]+12] + [a0+52]), a1=0x3, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100316c4 calls (unknown callee) with a0=([[[a0+56]+8]+12] + [a0+56]), a1=0x3, a2=(unknown), a3=(unknown).
  The `jal` at 0x100316d8 calls getDpyInfo__7xsetmonGPc with a0=[sym(xsetmonApp)], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100316e4 calls setTitle__7xsetmonGv with a0=[sym(xsetmonApp)], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100316f4 calls __nw__GUi with a0=0x40, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10031718 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10031728 calls __nw__GUi with a0=0x7c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003174c calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003175c calls __nw__GUi with a0=0x108, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10031780 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10031794 calls __nw__GUi with a0=0x78, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100317b4 calls setTabbedDeckParent__10GammaClassGP21MasterTabbedDeckClass with a0=(unknown), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100317cc calls (unknown callee) with a0=([[[a0+56]+8]+36] + [a0+56]), a1=[a0+56], a2=(unknown), a3=(unknown).
  The `jalr` at 0x100317f0 calls (unknown callee) with a0=([[[a0+56]+8]+48] + [a0+56]), a1=[a0+56], a2=(unknown), a3=(unknown).
  The `jal` at 0x10031808 calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc with a0=a0 at entry (arg0), a1=[a0+56], a2=0x10045e00, a3=(unknown).
  The `jal` at 0x10031824 calls registerChild__12MyTabbedDeckGP11VkComponentPCc with a0=a0 at entry (arg0), a1=[a0+44], a2=0x10045db8, a3=(unknown).
  The `jal` at 0x1003183c calls registerChild__12MyTabbedDeckGP11VkComponentPCc with a0=a0 at entry (arg0), a1=[a0+48], a2=0x10045dd0, a3=(unknown).
  The `jal` at 0x10031854 calls registerChild__12MyTabbedDeckGP11VkComponentPCc with a0=a0 at entry (arg0), a1=[a0+52], a2=0x10045de8, a3=(unknown).
  The `jal` at 0x1003186c calls registerChild__12MyTabbedDeckGP11VkComponentPCc with a0=a0 at entry (arg0), a1=[a0+56], a2=0x10045e00, a3=(unknown).
  The `jalr` at 0x10031898 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=(unknown), a2=(unknown), a3=0x1.
  The `jal` at 0x100318b0 calls __ct__21SetmonMasterFormClassGPCcP10_WidgetRec with a0=(unknown), a1=0x10045db8, a2=ret(baseWidget__11VkComponentCGv), a3=(unknown).
  The `jalr` at 0x100318d4 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=(unknown), a2=0x1, a3=(unknown).
  The `jal` at 0x100318ec calls __ct__19ServerInfoFormClassGPCcP10_WidgetRec with a0=(unknown), a1=0x10045dd0, a2=ret(baseWidget__11VkComponentCGv), a3=(unknown).
  The `jalr` at 0x10031910 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=(unknown), a2=0x1, a3=(unknown).
  The `jal` at 0x10031928 calls __ct__16ChannelFormClassGPCcP10_WidgetRec with a0=(unknown), a1=0x10045de8, a2=ret(baseWidget__11VkComponentCGv), a3=(unknown).
  The `jalr` at 0x1003194c calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=(unknown), a2=0x1, a3=(unknown).
  The `jal` at 0x10031964 calls __ct__10GammaClassGPCcP10_WidgetRec with a0=(unknown), a1=0x10045e00, a2=ret(baseWidget__11VkComponentCGv), a3=(unknown).
  The `jalr` at 0x10031980 calls getenv with a0=0x10051708, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100319a0 calls VkGetResource__GPCcT1 with a0=0x10045f00, a1=0x10045f00, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100319b4 calls sprintf with a0=sp-1104, a1=ret(VkGetResource__GPCcT1), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100319c0 calls getTheErrorDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100319f0 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-1104, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10031a20 calls VkGetResource__GPCcT1 with a0=0x10045f20, a1=0x10045f20, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10031a34 calls sprintf with a0=sp-1104, a1=ret(VkGetResource__GPCcT1), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10031a40 calls getTheErrorDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10031a70 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-1104, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` at 0x10031564 goes to 0x1003197c when a1 == 0 and falls through when a1 != 0.
  The `beq` at 0x10031570 goes to 0x10031980 when v0(=[a1]:1) == 0 and falls through when v0(=[a1]:1) != 0.
  The `beq` at 0x10031598 goes to 0x10031a10 when v0(=ret(XOpenDisplay)) == 0 and falls through when v0(=ret(XOpenDisplay)) != 0.
  The `beq` at 0x100315d0 goes to 0x10031994 when a1(unknown) == 0 and falls through when a1(unknown) != 0.
  The `beq` at 0x100315d8 goes to 0x10031990 when v0(=ret(XSGIvcQueryScreenGammaMaps)) == 0 and falls through when v0(=ret(XSGIvcQueryScreenGammaMaps)) != 0.
  The `beq` at 0x10031640 goes to 0x10031660 when v0(=[a0+44]) == 0 and falls through when v0(=[a0+44]) != 0.
  The `beq` at 0x10031664 goes to 0x10031684 when v0(=[a0+48]) == 0 and falls through when v0(=[a0+48]) != 0.
  The `beq` at 0x10031688 goes to 0x100316a8 when v0(=[a0+52]) == 0 and falls through when v0(=[a0+52]) != 0.
  The `beq` at 0x100316ac goes to 0x100316d0 when v0(=[a0+56]) == 0 and falls through when v0(=[a0+56]) != 0.
  The `bne` at 0x100316fc goes to 0x1003188c when v0(=ret(__nw__GUi)) != 0 and falls through when v0(=ret(__nw__GUi)) == 0.
  The `bne` at 0x10031730 goes to 0x100318c8 when v0(=ret(__nw__GUi)) != 0 and falls through when v0(=ret(__nw__GUi)) == 0.
  The `bne` at 0x10031764 goes to 0x10031904 when v0(=ret(__nw__GUi)) != 0 and falls through when v0(=ret(__nw__GUi)) == 0.
  The `bne` at 0x1003179c goes to 0x10031940 when v0(=ret(__nw__GUi)) != 0 and falls through when v0(=ret(__nw__GUi)) == 0.
  The `beq` at 0x100317d8 goes to 0x10031814 when a1(=[a0+64]:1) == 0 and falls through when a1(=[a0+64]:1) != 0.
  The return at 0x10031884 has v0 = ret(registerChild__12MyTabbedDeckGP11VkComponentPCc).
  The return at 0x10031a08 has v0 = ret(unknown).
  The return at 0x10031a88 has v0 = ret(unknown).

- `__ct__30CombinationContentsListClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x10031a90 (n32).
  It occupies 72 bytes.
  The `lw` at 0x10031aa4 loads 4 bytes from abs 0x10050be0 via base gp (0x100588fc).
  The `lw` at 0x10031ab8 loads 4 bytes from abs 0x10051280 via base gp (0x100588fc).
  The `sw` at 0x10031ac8 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__30CombinationContentsListClassUI).
  The `jalr` at 0x10031ab0 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10031ad0 has v0 = a0.

- `doOptionMap__10GammaClassGP18GammaMapDescriptor` in `usr/bin/X11/xsetmon` at 0x10031ea0 (n32).
  It occupies 564 bytes.
  The `lw` at 0x10031ea0 loads 4 bytes from a1 (arg1 at entry) +0x0 via base a1 (a1).
  The 3 such `lw` accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x10031ec0, `lw` at 0x10031f24, `lw` at 0x10031f80.
  The 3 such `lw` accesses load 4 bytes from abs 0x10050d14 via base gp (0x100588fc), including `lw` at 0x10031ec4, `lw` at 0x10031f28, `lw` at 0x10031f84.
  The `lw` at 0x10031ec8 loads 4 bytes from sym(xsetmonApp) +0x0 via base at (sym(xsetmonApp)).
  The `lw` at 0x10031ee0 loads 4 bytes from [sym(xsetmonApp)] +0x13c via base at ([sym(xsetmonApp)]).
  The `lw` at 0x10031eec loads 4 bytes from [sym(xsetmonApp)] +0x138 via base at ([sym(xsetmonApp)]).
  The 3 such `lw` accesses load 4 bytes from abs 0x10050efc via base gp (0x100588fc), including `lw` at 0x10031ef4, `lw` at 0x10031f50, `lw` at 0x100320c0.
  The 3 such `lw` accesses load 4 bytes from abs 0x100510b8 via base gp (0x100588fc), including `lw` at 0x10031ef8, `lw` at 0x10031f54, `lw` at 0x10031fac.
  The `lw` at 0x10031f14 loads 4 bytes from a0 (arg0 at entry) +0x24 via base s1 (a0).
  The 3 such `lw` accesses load 4 bytes from abs 0x10050c40 via base gp (0x100588fc), including `lw` at 0x10031f18, `lw` at 0x10031f74, `lw` at 0x10031fcc.
  The 2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)), including `lw` at 0x10031f2c, `lw` at 0x10031f88.
  The 2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0 via base s0 (a1), including `lw` at 0x10031f30, `lw` at 0x10031f8c.
  The 2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x13c via base a0 ([sym(xsetmonApp)]), including `lw` at 0x10031f3c, `lw` at 0x10031f98.
  The 2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138 via base a0 ([sym(xsetmonApp)]), including `lw` at 0x10031f48, `lw` at 0x10031fa4.
  The `lw` at 0x10031f70 loads 4 bytes from a0 (arg0 at entry) +0x28 via base s1 (a0).
  The `lw` at 0x10031fc8 loads 4 bytes from a0 (arg0 at entry) +0x2c via base s1 (a0).
  The 3 such `lw` accesses load 4 bytes from abs 0x10050e64 via base gp (0x100588fc), including `lw` at 0x10031fd8, `lw` at 0x10031ff4, `lw` at 0x10032010.
  The `lw` at 0x10031fe0 loads 4 bytes from a0 (arg0 at entry) +0x54 via base s1 (a0).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050e78 via base gp (0x100588fc), including `lw` at 0x10031fe4, `lw` at 0x10032000.
  The `lw` at 0x10031ff0 loads 4 bytes from a1 (arg1 at entry) +0x4 via base s0 (a1).
  The `lw` at 0x10031ffc loads 4 bytes from a0 (arg0 at entry) +0x50 via base s1 (a0).
  The `lw` at 0x1003200c loads 4 bytes from a1 (arg1 at entry) +0x8 via base s0 (a1).
  The `lw` at 0x10032018 loads 4 bytes from a0 (arg0 at entry) +0x4c via base s1 (a0).
  The `lw` at 0x1003201c loads 4 bytes from a1 (arg1 at entry) +0xc via base s0 (a1).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b68 via base gp (0x100588fc), including `lw` at 0x10032028, `lw` at 0x10032080.
  The 2 such `lw` accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x1003202c, `lw` at 0x10032084.
  The `lw` at 0x10032044 loads 4 bytes from abs 0x10050e80 via base gp (0x100588fc).
  The `lw` at 0x10032050 loads 4 bytes from a0 (arg0 at entry) +0x20 via base s1 (a0).
  The `lw` at 0x10032054 loads 4 bytes from [a0+32] +0x8 via base a1 ([a0+32]).
  The `lw` at 0x10032058 loads 4 bytes from [[a0+32]+8] +0x38 via base a0 ([[a0+32]+8]).
  The `lw` at 0x1003205c loads 4 bytes from [[a0+32]+8] +0x30 via base a0 ([[a0+32]+8]).
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74 via base s1 (a0), including `lw` at 0x100320a4, `lw` at 0x100320b4, `lw` at 0x100320c8.
  The `jalr` at 0x10031ee8 calls XSGIvcQueryGammaColors with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[a1], a3=0x1, a4=sp-48, a5=sp-44.
  The `jal` at 0x10031f10 calls loadEditor__19GammaMapEditorClassGPUsiP18GammaMapDescriptorT2l with a0=[a0+36], a1=(unknown), a2=(unknown), a3=a1 at entry (arg1), a4=0x1, a5=0x1.
  The `jalr` at 0x10031f1c calls XFree with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10031f44 calls XSGIvcQueryGammaColors with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[a1], a3=0x2, a4=sp-48, a5=sp-44.
  The `jal` at 0x10031f6c calls loadEditor__19GammaMapEditorClassGPUsiP18GammaMapDescriptorT2l with a0=[a0+40], a1=(unknown), a2=(unknown), a3=a1 at entry (arg1), a4=0x2, a5=0x2.
  The `jalr` at 0x10031f78 calls XFree with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10031fa0 calls XSGIvcQueryGammaColors with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[a1], a3=0x3, a4=sp-48, a5=sp-44.
  The `jal` at 0x10031fc4 calls loadEditor__19GammaMapEditorClassGPUsiP18GammaMapDescriptorT2l with a0=[a0+44], a1=(unknown), a2=(unknown), a3=a1 at entry (arg1), a4=0x3, a5=0x4.
  The `jalr` at 0x10031fd0 calls XFree with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10031fdc calls EZ__GP10_WidgetRec with a0=[a0+84], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10031fec calls __as__9EZWrapperGi with a0=ret(EZ__GP10_WidgetRec), a1=[a1+4], a2=(unknown), a3=(unknown).
  The `jal` at 0x10031ff8 calls EZ__GP10_WidgetRec with a0=[a0+80], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10032008 calls __as__9EZWrapperGi with a0=ret(EZ__GP10_WidgetRec), a1=[a1+8], a2=(unknown), a3=(unknown).
  The `jal` at 0x10032014 calls EZ__GP10_WidgetRec with a0=[a0+76], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032038 calls VkGetResource__GPCcT1 with a0=0x10045410, a1=0x10045410, a2=(unknown), a3=(unknown).
  The `jal` at 0x10032048 calls __as__9EZWrapperGPCc with a0=(unknown), a1=ret(VkGetResource__GPCcT1), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032060 calls (unknown callee) with a0=([[[a0+32]+8]+48] + [a0+32]), a1=[a0+32], a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003208c calls VkGetResource__GPCcT1 with a0=0x10045420, a1=0x10045420, a2=(unknown), a3=(unknown).
  The `jal` at 0x100320a0 calls hideGamma__21MasterTabbedDeckClassGv with a0=[a0+116], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100320b0 calls hideGamma__21MasterTabbedDeckClassGv with a0=[a0+116], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100320c4 calls hideGamma__21MasterTabbedDeckClassGv with a0=[a0+116], a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10031ef0 goes to 0x100320a0 when v0(=ret(XSGIvcQueryGammaColors)) == 0 and falls through when v0(=ret(XSGIvcQueryGammaColors)) != 0.
  The `beq` at 0x10031f4c goes to 0x100320b0 when v0(=ret(XSGIvcQueryGammaColors)) == 0 and falls through when v0(=ret(XSGIvcQueryGammaColors)) != 0.
  The `beq` at 0x10031fa8 goes to 0x100320c0 when v0(=ret(XSGIvcQueryGammaColors)) == 0 and falls through when v0(=ret(XSGIvcQueryGammaColors)) != 0.
  The `beq` at 0x10032020 goes to 0x10032080 when a1(=[a1+12]) == 0 and falls through when a1(=[a1+12]) != 0.
  The return at 0x10032078 has v0 = unknown.

- `__dt__23AboutXsetmonFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x100320e0 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10032108 loads 4 bytes from abs 0x10050b1c via base gp (0x100588fc).
  The `lw` at 0x1003210c loads 4 bytes from abs 0x10051268 via base gp (0x100588fc).
  The `sw` at 0x10032110 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__23AboutXsetmonFormClassUI).
  The `lw` at 0x10032130 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x10032118 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10032134 calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10032100 goes to 0x1003213c when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x10032128 goes to 0x10032140 when (v1(=a1) & 0x1) == 0 and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10032144 has v0 = unknown.

- `create__23SetmonMasterFormClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10032150 (n32).
  It occupies 1668 bytes.
  The `lw` at 0x10032168 loads 4 bytes from abs 0x10050be4 via base gp (0x100588fc).
  The `lw` at 0x10032180 loads 4 bytes from abs 0x100512e0 via base gp (0x100588fc).
  The `lw` at 0x10032184 loads 4 bytes from abs 0x10050be8 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b0c via base gp (0x100588fc), including `lw` at 0x1003218c, `lw` at 0x100322b4.
  The `lw` at 0x10032198 loads 4 bytes from a0 (arg0 at entry) +0xc via base s0 (a0).
  The 2 such `lw` accesses load 4 bytes from sym(xmFormWidgetClass) +0x0 via base a1 (sym(xmFormWidgetClass)), including `lw` at 0x100321a4, `lw` at 0x100322cc.
  The `lw` at 0x100321a8 loads 4 bytes from abs 0x10050bec via base gp (0x100588fc).
  The `sw` at 0x100321b0 stores 4 bytes to a0 (arg0 at entry) +0x10 via base s0 (a0) with value ret(XtVaCreateWidget).
  The `sw` at 0x100321bc stores 4 bytes to a0 (arg0 at entry) +0x38 via base s0 (a0) with value ret(XtVaCreateWidget).
  The 2 such `lw` accesses load 4 bytes from abs 0x100509b8 via base gp (0x100588fc), including `lw` at 0x100321c0, `lw` at 0x10032464.
  The 4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10 via base s0 (a0), including `lw` at 0x100321c4, `lw` at 0x100323c8, `lw` at 0x1003242c.
  The 2 such `lw` accesses load 4 bytes from sym(xmFrameWidgetClass) +0x0 via base a1 (sym(xmFrameWidgetClass)), including `lw` at 0x100321c8, `lw` at 0x1003246c.
  The 5 such `lw` accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x1003226c, `lw` at 0x100323c0, `lw` at 0x10032424.
  The 4 such `lw` accesses load 4 bytes from abs 0x10050bf0 via base gp (0x100588fc), including `lw` at 0x10032284, `lw` at 0x100322c0, `lw` at 0x10032370.
  The `sw` at 0x100322ac stores 4 bytes to a0 (arg0 at entry) +0x30 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x100322e8 loads 4 bytes from abs 0x100509c4 via base gp (0x100588fc).
  The `sw` at 0x100322ec stores 4 bytes to a0 (arg0 at entry) +0x2c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x100322f0 loads 4 bytes from sym(xmLabelWidgetClass) +0x0 via base a1 (sym(xmLabelWidgetClass)).
  The 3 such `lw` accesses load 4 bytes from abs 0x10050b4c via base gp (0x100588fc), including `lw` at 0x10032398, `lw` at 0x10032400, `lw` at 0x10032520.
  The `sw` at 0x1003239c stores 4 bytes to a0 (arg0 at entry) +0x34 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x100323bc loads 4 bytes from abs 0x10050f34 via base gp (0x100588fc).
  The `sw` at 0x100323e0 stores 4 bytes to a0 (arg0 at entry) +0x20 via base s0 (a0).
  The `sw` at 0x100323e8 stores 4 bytes to a0 (arg0 at entry) +0x20 via base s0 (a0) with value 0x0.
  The 3 such `lw` accesses load 4 bytes from unknown (base unknown) via base v0 (unknown), including `lw` at 0x100323ec, `lw` at 0x10032450, `lw` at 0x10032574.
  The 6 such `lw` accesses load 4 bytes from unknown (base unknown) via base a0 (unknown), including `lw` at 0x100323f0, `lw` at 0x100323f4, `lw` at 0x10032454.
  The `lw` at 0x10032420 loads 4 bytes from abs 0x10051210 via base gp (0x100588fc).
  The `sw` at 0x10032444 stores 4 bytes to a0 (arg0 at entry) +0x24 via base s0 (a0).
  The `sw` at 0x1003244c stores 4 bytes to a0 (arg0 at entry) +0x24 via base s0 (a0) with value 0x0.
  The `sw` at 0x10032524 stores 4 bytes to a0 (arg0 at entry) +0x3c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x10032544 loads 4 bytes from abs 0x1005120c via base gp (0x100588fc).
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c via base s0 (a0), including `lw` at 0x10032550, `lw` at 0x10032694, `lw` at 0x100327c8.
  The `sw` at 0x10032568 stores 4 bytes to a0 (arg0 at entry) +0x28 via base s0 (a0).
  The `sw` at 0x10032570 stores 4 bytes to a0 (arg0 at entry) +0x28 via base s0 (a0) with value 0x0.
  The 6 such `lw` accesses load 4 bytes from abs 0x10050bd8 via base gp (0x100588fc), including `lw` at 0x10032588, `lw` at 0x100325ac, `lw` at 0x10032658.
  The `lw` at 0x10032590 loads 4 bytes from a0 (arg0 at entry) +0x28 via base s0 (a0).
  The 5 such `lw` accesses load 4 bytes from abs 0x10050bdc via base gp (0x100588fc), including `lw` at 0x10032594, `lw` at 0x10032630, `lw` at 0x10032714.
  The 4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20 via base s0 (a0), including `lw` at 0x100325b4, `lw` at 0x10032670, `lw` at 0x10032784.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24 via base s0 (a0), including `lw` at 0x10032660, `lw` at 0x10032764.
  The `lw` at 0x1003273c loads 4 bytes from abs 0x1005131c via base gp (0x100588fc).
  The `lw` at 0x10032740 loads 4 bytes from sym(xsetmonApp) +0x0 via base ra (sym(xsetmonApp)).
  The `lw` at 0x10032744 loads 4 bytes from [sym(xsetmonApp)] +0x9c via base ra ([sym(xsetmonApp)]).
  The `lw` at 0x10032768 loads 4 bytes from [a0+36] +0x8 via base a1 ([a0+36]).
  The `lw` at 0x1003276c loads 4 bytes from [[a0+36]+8] +0x38 via base a0 ([[a0+36]+8]).
  The `lw` at 0x10032770 loads 4 bytes from [[a0+36]+8] +0x30 via base a0 ([[a0+36]+8]).
  The `jalr` at 0x1003217c calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultSetmonMasterFormClassUIResources__23SetmonMasterFormClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x100321a0 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x100321b8 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100322a4 calls XtVaCreateManagedWidget with a0=0x10046770, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x100322e0 calls XtVaCreateManagedWidget with a0=0x10051790, a1=[sym(xmFormWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xd1, a4=0x1, a5=-0x17, a6=0x2a2, a7=-0x16.
  The `jalr` at 0x10032390 calls XtVaCreateManagedWidget with a0=0x10051798, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x100323a4 calls __nw__GUi with a0=0xf8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100323cc calls __ct__27FormatCombinationListsClassGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=0x10046788, a2=[a0+16], a3=(unknown).
  The `jalr` at 0x100323f8 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032408 calls __nw__GUi with a0=0x3c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10032430 calls __ct__28CombinationContentsListClassGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=0x100467a8, a2=[a0+16], a3=(unknown).
  The `jalr` at 0x1003245c calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032518 calls XtVaCreateManagedWidget with a0=0x100467c8, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003252c calls __nw__GUi with a0=0x164, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10032554 calls __ct__19StatisticsFormClassGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=0x100467d8, a2=[a0+60], a3=(unknown).
  The `jalr` at 0x10032580 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003258c calls baseWidget__11VkComponentCGv with a0=[a0+40], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100325a4 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x16, a2=0x255, a3=0x0.
  The `jalr` at 0x100325b0 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032650 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x1, a3=-0x66, a4=0x1, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x1003265c calls baseWidget__11VkComponentCGv with a0=[a0+36], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003266c calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032734 calls XtVaSetValues with a0=(unknown), a1=-0x42, a2=0x1, a3=-0x66, a4=0x1, a5=-0x46, a6=0x3, a7=-0xa5.
  The `jalr` at 0x10032774 calls (unknown callee) with a0=([[[a0+36]+8]+48] + [a0+36]), a1=[a0+36], a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032780 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032798 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x2e1, a2=0x32, a3=0x0.
  The `jalr` at 0x100327a4 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100327c4 calls XtVaSetValues with a0=[a0+60], a1=-0x46, a2=0x3, a3=-0xa5, a4=ret(baseWidget__11VkComponentCGv), a5=0x0.
  The `beq` at 0x100323b0 goes to 0x100323e4 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x10032414 goes to 0x10032448 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x10032538 goes to 0x1003256c when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x1003274c goes to 0x10032764 when (ra(=[[sym(xsetmonApp)]+156]) & 0x2) == 0 and falls through when (ra(=[[sym(xsetmonApp)]+156]) & 0x2) != 0.
  The return at 0x1003275c has v0 = ret(XtVaSetValues).

- `doFinishRegionDrag__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x100327e0 (n32).
  It occupies 340 bytes.
  The `sw` at 0x100327e0 stores 4 bytes to a0 (arg0 at entry) +0x6c via base a0 (a0) with value 0x0.
  The `lw` at 0x100327e8 loads 4 bytes from a0 (arg0 at entry) +0x68 via base a0 (a0).
  The 4 such `lw` accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x1003280c, `lw` at 0x10032840, `lw` at 0x1003285c.
  The `lw` at 0x10032810 loads 4 bytes from sym(xsetmonApp) +0x0 via base a3 (sym(xsetmonApp)).
  The `lw` at 0x10032814 loads 4 bytes from [sym(xsetmonApp)] +0x8 via base a3 ([sym(xsetmonApp)]).
  The `lw` at 0x10032818 loads 4 bytes from [[sym(xsetmonApp)]+8] +0x128 via base a0 ([[sym(xsetmonApp)]+8]).
  The `lw` at 0x1003281c loads 4 bytes from [[sym(xsetmonApp)]+8] +0x120 via base a0 ([[sym(xsetmonApp)]+8]).
  The `lw` at 0x10032830 loads 4 bytes from a0 (arg0 at entry) +0x50 via base s0 (a0).
  The `lw` at 0x10032834 loads 4 bytes from a0 (arg0 at entry) +0x60 via base s0 (a0).
  The `lw` at 0x10032838 loads 4 bytes from a0 (arg0 at entry) +0x54 via base s0 (a0).
  The `lw` at 0x1003283c loads 4 bytes from a0 (arg0 at entry) +0x58 via base s0 (a0).
  The `lw` at 0x10032844 loads 4 bytes from abs 0x10050d24 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)), including `lw` at 0x10032848, `lw` at 0x10032864.
  The `lw` at 0x1003284c loads 4 bytes from [a0+88] +0x0 via base a2 ([a0+88]).
  The `lw` at 0x10032850 loads 4 bytes from [sym(xsetmonApp)] +0x13c via base a0 ([sym(xsetmonApp)]).
  The 2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138 via base a0 ([sym(xsetmonApp)]), including `lw` at 0x10032858, `lw` at 0x10032870.
  The `lw` at 0x10032860 loads 4 bytes from abs 0x10050ccc via base gp (0x100588fc).
  The `lw` at 0x10032874 loads 4 bytes from abs 0x10050b4c via base gp (0x100588fc).
  The `lw` at 0x10032894 loads 4 bytes from abs 0x10051038 via base gp (0x100588fc).
  The `lw` at 0x100328b8 loads 4 bytes from abs 0x10050d28 via base gp (0x100588fc).
  The `lw` at 0x100328c4 loads 4 bytes from abs 0x10050b68 via base gp (0x100588fc).
  The `lw` at 0x100328c8 loads 4 bytes from abs 0x1005091c via base gp (0x100588fc).
  The `lw` at 0x100328dc loads 4 bytes from abs 0x10050d2c via base gp (0x100588fc).
  The `lw` at 0x100328f0 loads 4 bytes from abs 0x100510ac via base gp (0x100588fc).
  The `lw` at 0x100328f8 loads 4 bytes from sym(xsetmonApp) +0x0 via base a1 (sym(xsetmonApp)).
  The `lw` at 0x100328fc loads 4 bytes from [sym(xsetmonApp)] +0x8 via base a1 ([sym(xsetmonApp)]).
  The `lw` at 0x10032900 loads 4 bytes from [[sym(xsetmonApp)]+8] +0x140 via base a0 ([[sym(xsetmonApp)]+8]).
  The `lw` at 0x10032904 loads 4 bytes from [[sym(xsetmonApp)]+8] +0x138 via base a0 ([[sym(xsetmonApp)]+8]).
  The `lw` at 0x10032910 loads 4 bytes from abs 0x10050fc4 via base gp (0x100588fc).
  The `jalr` at 0x10032828 calls (unknown callee) with a0=([[[sym(xsetmonApp)]+8]+288] + [sym(xsetmonApp)]), a1=0x0, a2=0x0, a3=[sym(xsetmonApp)].
  The `jalr` at 0x10032854 calls XSGIvcStoreGammaColors16 with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[[a0+88]], a3=[a0+84], a4=[a0+96], a5=[a0+80].
  The `jalr` at 0x1003286c calls XSync with a0=[[sym(xsetmonApp)]+312], a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003287c calls __nw__GUi with a0=0x14, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003289c calls __ct__13GammaEditUndoGP19GammaMapEditorClass with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100328bc calls getTheUndoManager__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100328d4 calls VkGetResource__GPCcT1 with a0=0x100459a0, a1=0x100459a0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100328ec calls add__17VkMenuUndoManagerGPCcPGP10_WidgetRecPvT2_vPv with a0=(unknown), a1=ret(VkGetResource__GPCcT1), a2=sym(vPerformUndo__13GammaEditUndoSGPvT1), a3=(unknown).
  The `jalr` at 0x10032908 calls (unknown callee) with a0=([[[sym(xsetmonApp)]+8]+312] + [sym(xsetmonApp)]), a1=[sym(xsetmonApp)], a2=(unknown), a3=(unknown).
  The `jal` at 0x10032918 calls redraw__19GammaMapEditorClassCGi with a0=a0 at entry (arg0), a1=0x1, a2=(unknown), a3=(unknown).
  The `beq` at 0x10032804 goes to 0x10032910 when at(=[a0+104]) == 0 and falls through when at(=[a0+104]) != 0.
  The `beq` at 0x10032888 goes to 0x100328b4 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x1003292c has v0 = ret(redraw__19GammaMapEditorClassCGi).

- `saveSettingsFile__21MasterTabbedDeckClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10032940 (n32).
  It occupies 60 bytes.
  The `lw` at 0x10032954 loads 4 bytes from abs 0x10051230 via base gp (0x100588fc).
  The `lw` at 0x10032958 loads 4 bytes from abs 0x1005091c via base gp (0x100588fc).
  The `jal` at 0x10032964 calls VkUnimplemented__GP10_WidgetRecPCc with a0=0x0, a1=0x10045e78, a2=0x25fbc, a3=a3 at entry (arg3).
  The return at 0x10032974 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `DisplayaccumBufType__21SetmonMasterFormClassGi` in `usr/bin/X11/xsetmon` at 0x10032980 (n32).
  It occupies 52 bytes.
  The `lw` at 0x10032994 loads 4 bytes from abs 0x10050ea8 via base gp (0x100588fc).
  The `lw` at 0x100329a0 loads 4 bytes from a0 (arg0 at entry) +0x28 via base a0 (a0).
  The `jal` at 0x1003299c calls DisplayaccumBufType__19StatisticsFormClassGi with a0=[a0+40], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100329ac has v0 = ret(DisplayaccumBufType__19StatisticsFormClassGi).

- `RegisterGainControlClassInterface__16GainControlClassSGv` in `usr/bin/X11/xsetmon` at 0x100329c0 (n32).
  It occupies 24 bytes.
  The `lw` at 0x100329cc loads 4 bytes from abs 0x10050950 via base at (0x100588fc).
  The return at 0x100329d0 has v0 = 0x1004d390.

- `tInverse__7MMatrixCGRi` in `usr/bin/X11/xsetmon` at 0x100329e0 (n32).
  It occupies 396 bytes.
  The `lw` at 0x100329e8 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a0 (a0).
  The `lw` at 0x100329f0 loads 4 bytes from [a0] +0x0 via base v1 ([a0]).
  The `lw` at 0x100329f8 loads 4 bytes from [a0] +0x4 via base v1 ([a0]).
  The `lw` at 0x10032a20 loads 4 bytes from abs 0x10050f3c via base gp (0x100588fc).
  The `lw` at 0x10032a34 loads 4 bytes from abs 0x10050b90 via base gp (0x100588fc).
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0 via base s0 (a0), including `lw` at 0x10032a38, `lw` at 0x10032a5c, `lw` at 0x10032a9c.
  The `lw` at 0x10032a40 loads 4 bytes from [a0] +0x0 via base a0 ([a0]).
  The `lw` at 0x10032a44 loads 4 bytes from a1 (arg1 at entry) +0x0 via base s1 (a1).
  The `lw` at 0x10032a50 loads 4 bytes from [a1] +0xc via base s1 ([a1]).
  The 2 such `lw` accesses load 4 bytes from [a0] +0x0 via base a5 ([a0]), including `lw` at 0x10032a60, `lw` at 0x10032aa0.
  The `lw` at 0x10032a80 loads 4 bytes from [a0] +0x4 via base a5 ([a0]).
  The `sw` at 0x10032a98 stores 4 bytes to unknown (base unknown) via base a6 (unknown).
  The `lw` at 0x10032ab8 loads 4 bytes from abs 0x10050918 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0 via base a1 (a1), including `lw` at 0x10032abc, `lw` at 0x10032ae4.
  The 2 such `lw` accesses load 4 bytes from [a1] +0x4 via base a1 ([a1]), including `lw` at 0x10032acc, `lw` at 0x10032af4.
  The 2 such `lw` accesses load 4 bytes from [a1] +0x0 via base a1 ([a1]), including `lw` at 0x10032ad8, `lw` at 0x10032b00.
  The `lw` at 0x10032ae0 loads 4 bytes from abs 0x10050914 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050dbc via base gp (0x100588fc), including `lw` at 0x10032b04, `lw` at 0x10032b14.
  The `sw` at 0x10032b08 stores 4 bytes to a2 (arg2 at entry) +0x0 via base s7 (a2) with value ret(0x100226c0).
  The `lw` at 0x10032b10 loads 4 bytes from ret(0x100305a0) +0x4 via base s0 (ret(0x100305a0)).
  The `lw` at 0x10032b24 loads 4 bytes from abs 0x10050b98 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050920 via base gp (0x100588fc), including `lw` at 0x10032b48, `lw` at 0x10032b50.
  The `lw` at 0x10032b4c loads 4 bytes from abs 0x10050d10 via base gp (0x100588fc).
  The `jal` at 0x10032a2c calls __ct__7MMatrixGRC7MMatrix with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032a54 calls __nwa__GUi with a0=([[a0]] << 0x2)+4, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10032ad4 calls (unknown callee) with a0=0x1, a1=[[a1]], a2=0x1, a3=[[a1]+4], a5=[a0].
  The `jal` at 0x10032afc calls (unknown callee) with a0=ret(__nwa__GUi), a1=[[a1]], a2=ret(0x100305a0), a3=[[a1]+4].
  The `jalr` at 0x10032b0c calls free with a0=[ret(0x100305a0)+4], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032b1c calls free with a0=ret(0x100305a0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032b2c calls __dla__GPv with a0=ret(__nwa__GUi), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032b5c calls __assert with a0=0x100494e8, a1=0x100494a0, a2=0x104, a3=a3 at entry (arg3).
  The `bne` at 0x10032a18 goes to 0x10032b48 when at(=[[a0]]) != v1(=[[a0]+4]) and falls through when at(=[[a0]]) == v1(=[[a0]+4]).
  The `blez` at 0x10032a6c goes to 0x10032ab4 when a1(=[[a0]]) <= 0 (signed) and falls through when a1(=[[a0]]) > 0 (signed).
  The `bne` at 0x10032aac goes to 0x10032a80 when a7(unknown) < a2(=[[a0]]) (signed) and falls through when a7(unknown) >= a2(=[[a0]]) (signed).
  The return at 0x10032b40 has v0 = ret(__dla__GPv).

- `vPerformUndo__13GammaEditUndoSGPvT1` in `usr/bin/X11/xsetmon` at 0x10032b70 (n32).
  It occupies 132 bytes.
  The `lw` at 0x10032b84 loads 4 bytes from abs 0x10051024 via base gp (0x100588fc).
  The `lw` at 0x10032b88 loads 4 bytes from a1 (arg1 at entry) +0x0 via base a1 (a1).
  The `lw` at 0x10032b9c loads 4 bytes from abs 0x10050f80 via base gp (0x100588fc).
  The `lw` at 0x10032ba0 loads 4 bytes from a1 (arg1 at entry) +0x4 via base s0 (a1).
  The 3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0 via base s0 (a1), including `lw` at 0x10032ba8, `lw` at 0x10032bac, `lw` at 0x10032be8.
  The `lw` at 0x10032bb0 loads 4 bytes from [a1] +0xc0 via base a0 ([a1]).
  The `lw` at 0x10032bd0 loads 4 bytes from abs 0x10050ecc via base gp (0x100588fc).
  The `lw` at 0x10032bdc loads 4 bytes from abs 0x10050fc4 via base gp (0x100588fc).
  The `jal` at 0x10032b94 calls vClearScreen__19GammaMapEditorClassCGv with a0=[a1], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10032ba4 calls vLoadDrawTable__19GammaMapEditorClassGPUs with a0=[a1], a1=[a1+4], a2=(unknown), a3=(unknown).
  The `jal` at 0x10032bd4 calls vDetermineSplinePoints__19GammaMapEditorClassGv with a0=[a1], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10032be4 calls redraw__19GammaMapEditorClassCGi with a0=[a1], a1=0x1, a2=(unknown), a3=(unknown).
  The `beq` at 0x10032bb8 goes to 0x10032bd0 when v0(=[[a1]+192]) == v1(=0x1) and falls through when v0(=[[a1]+192]) != v1(=0x1).
  The return at 0x10032bc8 has v0 = unknown.

- `doDragScalar__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10032c00 (n32).
  It occupies 8 bytes.
  The return at 0x10032c00 has v0 = unknown.

- `doSetVerticalPhaseCallback__18ChannelFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10032c10 (n32).
  It occupies 68 bytes.
  The `lw` at 0x10032c14 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a1 (a1).
  The `lw` at 0x10032c20 loads 4 bytes from [a1+8] +0xe4 via base v1 ([a1+8]).
  The `lw` at 0x10032c2c loads 4 bytes from [a1+8] +0xec via base v1 ([a1+8]).
  The `jalr` at 0x10032c3c calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x25cec.
  The return at 0x10032c4c has v0 = ret(unknown).

- `doSetVerticalPhase__16ChannelFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10032c60 (n32).
  It occupies 96 bytes.
  The `lw` at 0x10032c64 loads 4 bytes from a2 (arg2 at entry) +0x8 via base a2 (a2).
  The 2 such `lw` accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x10032c78, `lw` at 0x10032c9c.
  The `lw` at 0x10032c7c loads 4 bytes from a0 (arg0 at entry) +0xd8 via base a0 (a0).
  The `lw` at 0x10032c80 loads 4 bytes from sym(xsetmonApp) +0x0 via base at (sym(xsetmonApp)).
  The `lw` at 0x10032c84 loads 4 bytes from abs 0x10050c0c via base gp (0x100588fc).
  The `lw` at 0x10032c88 loads 4 bytes from [sym(xsetmonApp)] +0x138 via base at ([sym(xsetmonApp)]).
  The `lw` at 0x10032c90 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base at ([[sym(xsetmonApp)]+312]).
  The `lw` at 0x10032ca0 loads 4 bytes from abs 0x10050bfc via base gp (0x100588fc).
  The `lw` at 0x10032ca4 loads 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)).
  The `lw` at 0x10032cac loads 4 bytes from [sym(xsetmonApp)] +0x138 via base a0 ([sym(xsetmonApp)]).
  The `jalr` at 0x10032c94 calls XSGIvcSetOutputPhaseV with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+216], a3=[a2+8].
  The `jalr` at 0x10032ca8 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x10032cb8 has v0 = ret(XFlush).

- `fbDepthSelectedCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10032cc0 (n32).
  It occupies 68 bytes.
  The `lw` at 0x10032cc4 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a1 (a1).
  The `lw` at 0x10032cd0 loads 4 bytes from [a1+8] +0xfc via base v1 ([a1+8]).
  The `lw` at 0x10032cdc loads 4 bytes from [a1+8] +0x104 via base v1 ([a1+8]).
  The `jalr` at 0x10032cec calls (unknown callee) with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x25c3c.
  The return at 0x10032cfc has v0 = ret(unknown).

- `quit__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10032d10 (n32).
  It occupies 68 bytes.
  The `lw` at 0x10032d24 loads 4 bytes from abs 0x10050a24 via base gp (0x100588fc).
  The `lw` at 0x10032d28 loads 4 bytes from sym(theApplication) +0x0 via base a1 (sym(theApplication)).
  The `lw` at 0x10032d2c loads 4 bytes from [sym(theApplication)] +0x8 via base a1 ([sym(theApplication)]).
  The `lw` at 0x10032d30 loads 4 bytes from [[sym(theApplication)]+8] +0xc8 via base a0 ([[sym(theApplication)]+8]).
  The `lw` at 0x10032d34 loads 4 bytes from [[sym(theApplication)]+8] +0xc0 via base a0 ([[sym(theApplication)]+8]).
  The `jalr` at 0x10032d3c calls (unknown callee) with a0=([[[sym(theApplication)]+8]+192] + [sym(theApplication)]), a1=[sym(theApplication)], a2=0x25bec, a3=a3 at entry (arg3).
  The return at 0x10032d4c has v0 = ret(unknown).

- `__ct__12MyTabbedDeckGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10032e20 (n32).
  It occupies 672 bytes.
  The `lw` at 0x10032e34 loads 4 bytes from abs 0x10050be0 via base gp (0x100588fc).
  The `lw` at 0x10032e50 loads 4 bytes from abs 0x10050e0c via base gp (0x100588fc).
  The `lw` at 0x10032e58 loads 4 bytes from abs 0x10051318 via base gp (0x100588fc).
  The `sw` at 0x10032e5c stores 4 bytes to a0 (arg0 at entry) +0x8 via base a3 (a0) with value sym(__vtbl__12MyTabbedDeck).
  The `lw` at 0x10032e74 loads 4 bytes from a0 (arg0 at entry) +0xc via base a1 (a0).
  The `lw` at 0x10032e7c loads 4 bytes from abs 0x10050bec via base gp (0x100588fc).
  The `sw` at 0x10032e80 stores 4 bytes to a0 (arg0 at entry) +0x10 via base a4 (a0) with value ret(XmCreateForm).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b4c via base gp (0x100588fc), including `lw` at 0x10032e8c, `lw` at 0x10032efc.
  The `lw` at 0x10032eac loads 4 bytes from abs 0x10050e10 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10 via base a2 (a0), including `lw` at 0x10032ec0, `lw` at 0x10032f34.
  The `sw` at 0x10032edc stores 4 bytes to a0 (arg0 at entry) +0x20 via base a2 (a0).
  The `lw` at 0x10032ee4 loads 4 bytes from a0 (arg0 at entry) +0x20 via base a1 (a0).
  The `lw` at 0x10032ee8 loads 4 bytes from [a0+32] +0x8 via base a1 ([a0+32]).
  The `lw` at 0x10032eec loads 4 bytes from [[a0+32]+8] +0x2c via base a0 ([[a0+32]+8]).
  The `lw` at 0x10032ef0 loads 4 bytes from [[a0+32]+8] +0x24 via base a0 ([[a0+32]+8]).
  The `lw` at 0x10032f1c loads 4 bytes from abs 0x10050e14 via base gp (0x100588fc).
  The `sw` at 0x10032f50 stores 4 bytes to a0 (arg0 at entry) +0x24 via base a2 (a0).
  The `lw` at 0x10032f58 loads 4 bytes from a0 (arg0 at entry) +0x24 via base a1 (a0).
  The `lw` at 0x10032f5c loads 4 bytes from [a0+36] +0x8 via base a1 ([a0+36]).
  The `lw` at 0x10032f60 loads 4 bytes from [[a0+36]+8] +0x2c via base a0 ([[a0+36]+8]).
  The `lw` at 0x10032f64 loads 4 bytes from [[a0+36]+8] +0x24 via base a0 ([[a0+36]+8]).
  The `lw` at 0x10032f70 loads 4 bytes from abs 0x10050a18 via base gp (0x100588fc).
  The `lw` at 0x10032f78 loads 4 bytes from sym(tabSelectCallback__10VkTabPanel) +0x0 via base a1 (sym(tabSelectCallback__10VkTabPanel)).
  The `lw` at 0x10032f7c loads 4 bytes from abs 0x10050950 via base gp (0x100588fc).
  The `lw` at 0x10032f80 loads 4 bytes from abs 0x10050e18 via base gp (0x100588fc).
  The `lw` at 0x10032f84 loads 4 bytes from a0 (arg0 at entry) +0x24 via base a2 (a0).
  The `lw` at 0x10032f8c loads 4 bytes from abs 0x1004f3f0 via base a4 (0x1004f3e8).
  The `ld` at 0x10032f94 loads 8 bytes from abs 0x1004f3e8 via base a3 (0x10050000).
  The 3 such `lw` accesses load 4 bytes from abs 0x10050bd8 via base gp (0x100588fc), including `lw` at 0x10032fa0, `lw` at 0x10032fb0, `lw` at 0x10033034.
  The `lw` at 0x10032fac loads 4 bytes from a0 (arg0 at entry) +0x20 via base a0 (a0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24 via base a0 (a0), including `lw` at 0x10032fc0, `lw` at 0x10033044.
  The 2 such `lw` accesses load 4 bytes from abs 0x10050bdc via base gp (0x100588fc), including `lw` at 0x1003300c, `lw` at 0x10033084.
  The `jalr` at 0x10032e48 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10032e70 calls XmCreateForm with a0=a2 at entry (arg2), a1=[a0+12], a2=0x0, a3=0x0.
  The `jalr` at 0x10032e84 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown), a4=a0 at entry (arg0).
  The `jalr` at 0x10032e94 calls __nw__GUi with a0=0x30, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032ebc calls __ct__6VkDeckGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=0x100519b8, a2=[a0+16], a3=(unknown), a5=0x1.
  The `jalr` at 0x10032ef4 calls (unknown callee) with a0=([[[a0+32]+8]+36] + [a0+32]), a1=[a0+32], a2=a0 at entry (arg0), a3=(unknown).
  The `jalr` at 0x10032f04 calls __nw__GUi with a0=0x4c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032f30 calls __ct__10VkTabPanelGPCcP10_WidgetRecci with a0=ret(__nw__GUi), a1=0x100519c0, a2=[a0+16], a3=0x1, a4=0x0.
  The `jalr` at 0x10032f68 calls (unknown callee) with a0=([[[a0+36]+8]+36] + [a0+36]), a1=[a0+36], a2=a0 at entry (arg0), a3=(unknown).
  The `jalr` at 0x10032f98 calls addCallback__16VkCallbackObjectGPCcP16VkCallbackObjectM16VkCallbackObjectGP16VkCallbackObjectPvT2_vPv with a0=[a0+36], a1=[sym(tabSelectCallback__10VkTabPanel)], a2=a0 at entry (arg0), a3=[0x1004f3e8]:8, a4=([0x1004f3f0] << 0x20), a5=0x0.
  The `jalr` at 0x10032fa8 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10032fbc calls baseWidget__11VkComponentCGv with a0=[a0+36], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003302c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x1, a3=-0x46, a4=0x1, a5=-0x67, a6=0x1, a7=-0x66.
  The `jalr` at 0x10033040 calls baseWidget__11VkComponentCGv with a0=[a0+36], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100330a4 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x0, a3=-0x46, a4=0x1, a5=-0x67, a6=0x1, a7=-0x66.
  The `beq` at 0x10032ea0 goes to 0x10032ed4 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x10032f10 goes to 0x10032f48 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x100330b8 has v0 = a0.

- `nameSelected__28CombinationContentsListClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x100330c0 (n32).
  It occupies 168 bytes.
  The `lw` at 0x100330c8 loads 4 bytes from a0 (arg0 at entry) +0x38 via base a0 (a0).
  The `lw` at 0x100330cc loads 4 bytes from a0 (arg0 at entry) +0x34 via base a0 (a0).
  The `lw` at 0x100330f4 loads 4 bytes from a2 (arg2 at entry) +0x10 via base a2 (a2).
  The `lw` at 0x10033100 loads 4 bytes from unknown (base unknown) via base a3 (unknown).
  The 2 such `lw` accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x10033118, `lw` at 0x10033164.
  The `lw` at 0x1003311c loads 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)).
  The `lw` at 0x10033120 loads 4 bytes from a0 (arg0 at entry) +0x30 via base a7 (a0).
  The `lw` at 0x1003312c loads 4 bytes from [sym(xsetmonApp)] +0x130 via base a0 ([sym(xsetmonApp)]).
  The `lw` at 0x10033130 loads 4 bytes from abs 0x100511a8 via base gp (0x100588fc).
  The `lw` at 0x1003313c loads 4 bytes from [[sym(xsetmonApp)]+304] +0x44 via base a0 ([[sym(xsetmonApp)]+304]).
  The `lw` at 0x1003314c loads 4 bytes from [[[sym(xsetmonApp)]+304]+68] +0x2c via base a0 ([[[sym(xsetmonApp)]+304]+68]).
  The `jal` at 0x10033148 calls DisplayFormat__21SetmonMasterFormClassGPC21XSGIvcVideoFormatInfo with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=(unknown), a2=(unknown), a3=(unknown), a7=a0 at entry (arg0).
  The `blez` at 0x100330e8 goes to 0x10033160 when t0(=[a0+56]) <= 0 (signed) and falls through when t0(=[a0+56]) > 0 (signed).
  The `beq` at 0x10033108 goes to 0x10033118 when t0(unknown) == a5(=[a2+16]-1) and falls through when t0(unknown) != a5(=[a2+16]-1).
  The `bne` at 0x10033110 goes to 0x10033100 when t1(unknown) != 0 and falls through when t1(unknown) == 0.
  The return at 0x10033158 has v0 = ret(DisplayFormat__21SetmonMasterFormClassGPC21XSGIvcVideoFormatInfo).

- `populateAssignmentWindow__22GammaAssignmentClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10033170 (n32).
  It occupies 1712 bytes.
  The 10 such `lw` accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x1003318c, `lw` at 0x100331e8, `lw` at 0x10033204.
  The `lw` at 0x10033190 loads 4 bytes from abs 0x10050bb4 via base gp (0x100588fc).
  The `lw` at 0x10033194 loads 4 bytes from sym(xsetmonApp) +0x0 via base at (sym(xsetmonApp)).
  The `lw` at 0x100331a0 loads 4 bytes from [sym(xsetmonApp)] +0x13c via base at ([sym(xsetmonApp)]).
  The `lw` at 0x100331ac loads 4 bytes from [sym(xsetmonApp)] +0x138 via base at ([sym(xsetmonApp)]).
  The 6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base s3 (a0), including `lw` at 0x100331d4, `lw` at 0x10033284, `lw` at 0x10033294.
  The `lw` at 0x100331dc loads 4 bytes from abs 0x10050c1c via base gp (0x100588fc).
  The `lw` at 0x100331e4 loads 4 bytes from a0 (arg0 at entry) +0x2c via base s3 (a0).
  The 3 such `lw` accesses load 4 bytes from abs 0x10050b90 via base gp (0x100588fc), including `lw` at 0x100331ec, `lw` at 0x10033200, `lw` at 0x10033280.
  The 2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)), including `lw` at 0x100331f0, `lw` at 0x1003320c.
  The 2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x98 via base a0 ([sym(xsetmonApp)]), including `lw` at 0x100331f4, `lw` at 0x10033210.
  The `sw` at 0x10033208 stores 4 bytes to a0 (arg0 at entry) +0x38 via base s3 (a0) with value ret(__nwa__GUi).
  The `sw` at 0x10033220 stores 4 bytes to a0 (arg0 at entry) +0x3c via base s3 (a0) with value ret(__nwa__GUi).
  The 2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0 via base a1 (sym(xsetmonApp)), including `lw` at 0x10033224, `lw` at 0x100335fc.
  The 2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x98 via base a1 ([sym(xsetmonApp)]), including `lw` at 0x10033228, `lw` at 0x1003360c.
  The `lw` at 0x10033240 loads 4 bytes from abs 0x10050fdc via base gp (0x100588fc).
  The 5 such `lw` accesses load 4 bytes from abs 0x10050c50 via base gp (0x100588fc), including `lw` at 0x1003324c, `lw` at 0x1003342c, `lw` at 0x100335cc.
  The `sw` at 0x10033258 stores 4 bytes to unknown (base unknown) via base s1 (unknown).
  The `lw` at 0x1003325c loads 4 bytes from abs 0x10050bdc via base gp (0x100588fc).
  The `lw` at 0x10033274 loads 4 bytes from abs 0x10050c34 via base gp (0x100588fc).
  The `sw` at 0x10033290 stores 4 bytes to unknown (base unknown) via base s1 (unknown) with value ret(__nwa__GUi).
  The 8 such `lw` accesses load 4 bytes from unknown (base unknown) via base s1 (unknown), including `lw` at 0x100332a4, `lw` at 0x100332c8, `lw` at 0x1003339c.
  The `sw` at 0x100332ac stores 4 bytes to unknown (base unknown) via base a4 (unknown) with value 0x0.
  The `sw` at 0x100332d0 stores 4 bytes to unknown (base unknown) via base a6 (unknown) with value 0x0.
  The 4 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0 via base s0 (sym(xsetmonApp)), including `lw` at 0x100332e8, `lw` at 0x10033314, `lw` at 0x100333cc.
  The `lw` at 0x100332ec loads 4 bytes from abs 0x10050c38 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x13c via base a0 ([sym(xsetmonApp)]), including `lw` at 0x100332f4, `lw` at 0x100333d8.
  The 2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138 via base a0 ([sym(xsetmonApp)]), including `lw` at 0x10033300, `lw` at 0x100333e4.
  The 6 such `lw` accesses load 4 bytes from unknown (base unknown) via base a3 (unknown), including `lw` at 0x1003330c, `lw` at 0x10033324, `lw` at 0x100333b4.
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b4c via base gp (0x100588fc), including `lw` at 0x10033320, `lw` at 0x10033688.
  The `lw` at 0x10033334 loads 4 bytes from unknown (base unknown) via base s0 (unknown).
  The 4 such `lw` accesses load 4 bytes from abs 0x10050b84 via base gp (0x100588fc), including `lw` at 0x10033338, `lw` at 0x10033364, `lw` at 0x10033630.
  The `lw` at 0x10033344 loads 4 bytes from abs 0x10051b80 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b68 via base gp (0x100588fc), including `lw` at 0x10033350, `lw` at 0x10033654.
  The 13 such `lw` accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x10033354, `lw` at 0x10033444, `lw` at 0x10033468.
  The `sw` at 0x10033378 stores 4 bytes to ret(__nw__GUi) +0x8 via base s5 (ret(__nw__GUi)).
  The `lw` at 0x1003337c loads 4 bytes from abs 0x10050c4c via base gp (0x100588fc).
  The `sw` at 0x10033384 stores 4 bytes to ret(__nw__GUi) +0x4 via base s5 (ret(__nw__GUi)).
  The `sw` at 0x10033390 stores 4 bytes to ret(__nw__GUi) +0x0 via base s5 (ret(__nw__GUi)) with value a0.
  The `sw` at 0x100333ac stores 4 bytes to unknown (base unknown) via base a2 (unknown) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `lw` at 0x100333d0 loads 4 bytes from abs 0x10050d0c via base gp (0x100588fc).
  The 11 such `lw` accesses load 4 bytes from abs 0x10050b60 via base gp (0x100588fc), including `lw` at 0x100333ec, `lw` at 0x10033440, `lw` at 0x10033464.
  The 2 such `lw` accesses load 4 bytes from unknown (base unknown) via base a1 (unknown), including `lw` at 0x10033410, `lw` at 0x100334dc.
  The `lw` at 0x10033418 loads 4 bytes from abs 0x10050c2c via base gp (0x100588fc).
  The `lw` at 0x10033420 loads 4 bytes from sym(xsetmonApp) +0x0 via base a3 (sym(xsetmonApp)).
  The `lbu` at 0x10033424 loads 1 byte from [sym(xsetmonApp)] +0x94 via base a3 ([sym(xsetmonApp)]).
  The `lw` at 0x10033430 loads 4 bytes from abs 0x10050b5c via base gp (0x100588fc).
  The 4 such `lw` accesses load 4 bytes from abs 0x10050a40 via base gp (0x100588fc), including `lw` at 0x10033454, `lw` at 0x10033794, `lw` at 0x100337dc.
  The 6 such `lw` accesses load 4 bytes from abs 0x10050c18 via base gp (0x100588fc), including `lw` at 0x10033478, `lw` at 0x1003349c, `lw` at 0x100334cc.
  The `lw` at 0x1003353c loads 4 bytes from unknown (base unknown) via base s4 (unknown).
  The 2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x134 via base s0 ([sym(xsetmonApp)]), including `lw` at 0x1003357c, `lw` at 0x100335a0.
  The `lw` at 0x10033588 loads 4 bytes from abs 0x10050d10 via base gp (0x100588fc).
  The `lw` at 0x100335a4 loads 4 bytes from [[sym(xsetmonApp)]+308] +0x4 via base a2 ([[sym(xsetmonApp)]+308]).
  The `lw` at 0x100335a8 loads 4 bytes from [[[sym(xsetmonApp)]+308]+4] +0x20 via base a0 ([[[sym(xsetmonApp)]+308]+4]).
  The `lw` at 0x100335ac loads 4 bytes from [[[sym(xsetmonApp)]+308]+4] +0x18 via base a0 ([[[sym(xsetmonApp)]+308]+4]).
  The `lw` at 0x100335bc loads 4 bytes from abs 0x10050a14 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050c3c via base gp (0x100588fc), including `lw` at 0x100335d8, `lw` at 0x10033714.
  The 3 such `lw` accesses load 4 bytes from abs 0x10050c40 via base gp (0x100588fc), including `lw` at 0x100335e8, `lw` at 0x100336f4, `lw` at 0x10033728.
  The `lw` at 0x10033628 loads 4 bytes from a0 (arg0 at entry) +0x3c via base s3 (a0).
  The `sw` at 0x10033638 stores 4 bytes to unknown (base unknown) via base ra (unknown) with value 0x0.
  The `lw` at 0x1003363c loads 4 bytes from a0 (arg0 at entry) +0x38 via base s3 (a0).
  The `lw` at 0x10033648 loads 4 bytes from abs 0x10051b84 via base gp (0x100588fc).
  The `lw` at 0x1003367c loads 4 bytes from abs 0x10050c30 via base gp (0x100588fc).
  The `lw` at 0x100336b0 loads 4 bytes from abs 0x10050c48 via base gp (0x100588fc).
  The `lw` at 0x100336e8 loads 4 bytes from unknown (base unknown) via base a2 (unknown).
  The `lw` at 0x10033710 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The 3 such `lw` accesses load 4 bytes from abs 0x10050a50 via base gp (0x100588fc), including `lw` at 0x10033768, `lw` at 0x100337b0, `lw` at 0x100337fc.
  The 3 such `lw` accesses load 4 bytes from abs 0x10050b30 via base gp (0x100588fc), including `lw` at 0x100337a0, `lw` at 0x100337e8, `lw` at 0x10033814.
  The `jalr` at 0x100331a8 calls XSGIvcQueryScreenGammaMaps with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=a0+64, a3=a3 at entry (arg3).
  The `jalr` at 0x100331e0 calls XtUnmanageChild with a0=[a0+44], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100331f8 calls __nwa__GUi with a0=([[sym(xsetmonApp)]+152] << 0x3), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033214 calls __nwa__GUi with a0=([[sym(xsetmonApp)]+152] << 0x2), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033254 calls baseWidget__10VkMenuItemCGv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003326c calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x7, a2=ret(XmStringCreateSimple), a3=0x0.
  The `jalr` at 0x10033278 calls XmStringFree with a0=ret(XmStringCreateSimple), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033288 calls __nwa__GUi with a0=([a0+64] << 0x2), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100332fc calls XSGIvcQueryChannelInfo with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=(unknown), a3=sp-128.
  The `jalr` at 0x10033330 calls __nw__GUi with a0=0xc, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033348 calls sprintf with a0=sp-344, a1=[0x10051b80], a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003335c calls VkGetResource__GPCcT1 with a0=0x10045148, a1=0x10045148, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033370 calls sprintf with a0=sp-240, a1=ret(VkGetResource__GPCcT1), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033398 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=(unknown), a1=sp-240, a2=sym(assignChannelMapCallback__22GammaAssignmentClassUISGP10_WidgetRecPvT2), a3=ret(__nw__GUi), a4=-0x1.
  The `jalr` at 0x100333e0 calls XSGIvcQueryChannelGammaMap with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=(unknown), a3=sp-124.
  The `jalr` at 0x10033438 calls __ct__9strstreamGv with a0=sp-496, a1=0x0, a2=(unknown), a3=[[sym(xsetmonApp)]+148]:1.
  The `jalr` at 0x1003344c calls __ls__7ostreamGPCc with a0=sp-416, a1=0x10045188, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003345c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033470 calls __ls__7ostreamGPCc with a0=sp-416, a1=0x10045198, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033480 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033494 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x100451c8, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100334a4 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100334b0 calls endl__GR7ostream with a0=ret(__ls__7ostreamGi), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100334c4 calls __ls__7ostreamGPCc with a0=sp-416, a1=0x100451e0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100334d8 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100334ec calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10045208, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100334f8 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033538 calls __ls__7ostreamGPCc with a0=sp-416, a1=0x10045220, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033548 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033554 calls endl__GR7ostream with a0=ret(__ls__7ostreamGi), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033598 calls __assert with a0=0x10045230, a1=0x10045250, a2=0x90, a3=(unknown).
  The `jalr` at 0x100335b4 calls (unknown callee) with a0=([[[[sym(xsetmonApp)]+308]+4]+24] + [[sym(xsetmonApp)]+308]), a1=sp-496, a2=[[sym(xsetmonApp)]+308], a3=(unknown).
  The `jalr` at 0x100335c4 calls __dt__9strstreamGv with a0=sp-496, a1=0x2, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100335d0 calls baseWidget__10VkMenuItemCGv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100335e0 calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100335ec calls XFree with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003364c calls sprintf with a0=sp-344, a1=[0x10051b84], a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033660 calls VkGetResource__GPCcT1 with a0=0x10045108, a1=0x10045108, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033674 calls sprintf with a0=sp-240, a1=ret(VkGetResource__GPCcT1), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033680 calls XmStringCreateSimple with a0=sp-240, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033694 calls __nw__GUi with a0=0x4c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100336c4 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=a1 at entry (arg1), a2=sp-344, a3=0x0, a4=0x0.
  The `jalr` at 0x100336dc calls set__12VkOptionMenuGP10VkMenuItem with a0=(unknown), a1=(unknown), a2=(unknown), a3=sym(xsetmonApp).
  The `jalr` at 0x1003370c calls baseWidget__10VkMenuItemCGv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003371c calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003376c calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10045118, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003377c calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003378c calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051658, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033798 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100337a4 calls exit with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100337b4 calls (unknown callee) with a0=sym(cerr), a1=0x10045158, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100337c4 calls __ls__7ostreamGi with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100337d4 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051658, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100337e0 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100337ec calls exit with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033800 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x100450e0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003380c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033818 calls exit with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100331cc goes to 0x100337f4 when v0(=ret(XSGIvcQueryScreenGammaMaps)) == 0 and falls through when v0(=ret(XSGIvcQueryScreenGammaMaps)) != 0.
  The `beq` at 0x100331d8 goes to 0x1003372c when v1(=[a0+64]) == 0 and falls through when v1(=[a0+64]) != 0.
  The `blez` at 0x1003322c goes to 0x1003372c when a1(=[[sym(xsetmonApp)]+152]) <= 0 (signed) and falls through when a1(=[[sym(xsetmonApp)]+152]) > 0 (signed).
  The `blez` at 0x1003329c goes to 0x100332e8 when a1(=[a0+64]) <= 0 (signed) and falls through when a1(=[a0+64]) > 0 (signed).
  The `beq` at 0x100332c0 goes to 0x100332e8 when v0(unknown) >= a2(=[a0+64]) (signed) and falls through when v0(unknown) < a2(=[a0+64]) (signed).
  The `bne` at 0x100332e0 goes to 0x100332a4 when v0(unknown) < a5(=[a0+64]) (signed) and falls through when v0(unknown) >= a5(=[a0+64]) (signed).
  The `beq` at 0x10033304 goes to 0x10033760 when v0(=ret(XSGIvcQueryChannelInfo)) == 0 and falls through when v0(=ret(XSGIvcQueryChannelInfo)) != 0.
  The `blez` at 0x10033310 goes to 0x100333d0 when a1(unknown) <= 0 (signed) and falls through when a1(unknown) > 0 (signed).
  The `bne` at 0x100333c0 goes to 0x10033320 when s4(unknown) < a1(unknown) (signed) and falls through when s4(unknown) >= a1(unknown) (signed).
  The `beq` at 0x100333e8 goes to 0x100337ac when v0(=ret(XSGIvcQueryChannelGammaMap)) == 0 and falls through when v0(=ret(XSGIvcQueryChannelGammaMap)) != 0.
  The `beq` at 0x100333fc goes to 0x10033420 when v0(unknown) >= a1(=[a0+64]) (signed) and falls through when v0(unknown) < a1(=[a0+64]) (signed).
  The `bne` at 0x10033414 goes to 0x100336dc when a1(unknown) != 0 and falls through when a1(unknown) == 0.
  The `beq` at 0x10033428 goes to 0x100335d0 when a3(=[[sym(xsetmonApp)]+148]:1) == 0 and falls through when a3(=[[sym(xsetmonApp)]+148]:1) != 0.
  The `blez` at 0x1003350c goes to 0x10033574 when a2(unknown) <= 0 (signed) and falls through when a2(unknown) > 0 (signed).
  The `bne` at 0x1003356c goes to 0x10033520 when s2(unknown) < t8(unknown) (signed) and falls through when s2(unknown) >= t8(unknown) (signed).
  The `bne` at 0x10033580 goes to 0x100335a0 when t9(=[[sym(xsetmonApp)]+308]) != 0 and falls through when t9(=[[sym(xsetmonApp)]+308]) == 0.
  The `beq` at 0x1003361c goes to 0x1003372c when s6(unknown) >= a1(=[[sym(xsetmonApp)]+152]) (signed) and falls through when s6(unknown) < a1(=[[sym(xsetmonApp)]+152]) (signed).
  The `beq` at 0x100336a0 goes to 0x1003324c when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x100336f0 goes to 0x100335ec when a2(unknown) >= 0x2 (signed) and falls through when a2(unknown) < 0x2 (signed).
  The return at 0x10033758 has v0 = unknown.

- `fSplineCalc__19GammaMapEditorClassCGiT1PfN23T1` in `usr/bin/X11/xsetmon` at 0x10033820 (n32).
  It occupies 444 bytes.
  The 2 such `lwc1` accesses load 4 bytes from unknown (base unknown) via base v1 (unknown), including `lwc1` at 0x10033878, `lwc1` at 0x100339d8.
  The `lwc1` at 0x100338a4 loads 4 bytes from unknown (base unknown) via base t0 (unknown).
  The `lwc1` at 0x100338a8 loads 4 bytes from unknown (base unknown) via base t1 (unknown).
  The `lwc1` at 0x100338ec loads 4 bytes from unknown (base unknown) via base t8 (unknown).
  The `lwc1` at 0x100338f4 loads 4 bytes from unknown (base unknown) via base t9 (unknown).
  The `ldc1` at 0x10033914 loads 8 bytes from abs 0x10051db0 via base gp (0x100588fc).
  The `lwc1` at 0x10033928 loads 4 bytes from unknown (base unknown) via base t3 (unknown).
  The `lwc1` at 0x1003392c loads 4 bytes from unknown (base unknown) via base t2 (unknown).
  The 2 such `lw` accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x10033978, `lw` at 0x10033980.
  The `lw` at 0x1003397c loads 4 bytes from abs 0x10050d10 via base gp (0x100588fc).
  The `lwc1` at 0x100339b8 loads 4 bytes from unknown (base unknown) via base a7 (unknown).
  The `lwc1` at 0x100339c0 loads 4 bytes from unknown (base unknown) via base a3 (unknown).
  The `jalr` at 0x10033994 calls __assert with a0=0x10045ad8, a1=0x10045ac0, a2=0x224, a3=a3 at entry (arg3).
  The `bne` at 0x10033844 goes to 0x1003395c when a7(unknown) < 0x2 (signed) and falls through when a7(unknown) >= 0x2 (signed).
  The `bne` at 0x10033870 goes to 0x10033894 when v0(unknown) < 0x2 (signed) and falls through when v0(unknown) >= 0x2 (signed).
  The `bc1t` at 0x10033884 goes to 0x10033858 when f20 < f21 (c.lt.s at 0x1003387c) and falls through when not (f20 < f21 (c.lt.s at 0x1003387c)).
  The `bc1t` at 0x100338c0 goes to 0x1003396c when f23 == f25 (c.eq.d at 0x100338b8) and falls through when not (f23 == f25 (c.eq.d at 0x100338b8)).
  The return at 0x10033954 has v0 = unknown.

- `doButtonSetCallback__18ChannelFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10033a50 (n32).
  It occupies 68 bytes.
  The `lw` at 0x10033a54 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a1 (a1).
  The `lw` at 0x10033a60 loads 4 bytes from [a1+8] +0xa8 via base v1 ([a1+8]).
  The `lw` at 0x10033a6c loads 4 bytes from [a1+8] +0xb0 via base v1 ([a1+8]).
  The `jalr` at 0x10033a7c calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24eac.
  The return at 0x10033a8c has v0 = ret(unknown).

- `DeleteCombination__21SetmonMasterFormClassGv` in `usr/bin/X11/xsetmon` at 0x10033aa0 (n32).
  It occupies 52 bytes.
  The `lw` at 0x10033ab4 loads 4 bytes from abs 0x10051138 via base gp (0x100588fc).
  The `lw` at 0x10033ac0 loads 4 bytes from a0 (arg0 at entry) +0x24 via base a0 (a0).
  The `jal` at 0x10033abc calls DeleteCombination__28CombinationContentsListClassGv with a0=[a0+36], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10033acc has v0 = ret(DeleteCombination__28CombinationContentsListClassGv).

- `doArmRegionDrag__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10033ae0 (n32).
  It occupies 392 bytes.
  The instructions from 0x10033b24 to 0x10033b2c are not reached by any path from the entry, and their branches are not listed.
  The `sw` at 0x10033ae0 stores 4 bytes to a0 (arg0 at entry) +0x70 via base a0 (a0) with value 0x0.
  The `sw` at 0x10033ae4 stores 4 bytes to a0 (arg0 at entry) +0x6c via base a0 (a0) with value 0x0.
  The `lw` at 0x10033af4 loads 4 bytes from a0 (arg0 at entry) +0xac via base a0 (a0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4 via base s0 (a0), including `lw` at 0x10033b20, `lw` at 0x10033b48.
  The `lw` at 0x10033b30 loads 4 bytes from a0 (arg0 at entry) +0x70 via base s0 (a0).
  The `lw` at 0x10033b34 loads 4 bytes from a0 (arg0 at entry) +0xac via base s0 (a0).
  The `sw` at 0x10033b44 stores 4 bytes to a0 (arg0 at entry) +0x70 via base s0 (a0) with value [a0+112]+1.
  The `lw` at 0x10033b50 loads 4 bytes from a0 (arg0 at entry) +0xb0 via base s0 (a0).
  The `lwc1` at 0x10033b5c loads 4 bytes from unknown (base unknown) via base t0 (unknown).
  The `lwc1` at 0x10033b60 loads 4 bytes from unknown (base unknown) via base a6 (unknown).
  The `lw` at 0x10033b64 loads 4 bytes from abs 0x10051170 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x20 via base s1 (a2), including `lw` at 0x10033b88, `lw` at 0x10033bdc.
  The 2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x24 via base s1 (a2), including `lw` at 0x10033bb0, `lw` at 0x10033bec.
  The `lw` at 0x10033bc8 loads 4 bytes from a0 (arg0 at entry) +0x64 via base s0 (a0).
  The `lw` at 0x10033bcc loads 4 bytes from a0 (arg0 at entry) +0x50 via base s0 (a0).
  The `sw` at 0x10033bd0 stores 4 bytes to a0 (arg0 at entry) +0x68 via base s0 (a0) with value 0x0.
  The `sw` at 0x10033bd8 stores 4 bytes to a0 (arg0 at entry) +0x6c via base s0 (a0) with value 0x1.
  The `sh` at 0x10033be0 stores 2 bytes to a0 (arg0 at entry) +0x74 via base s0 (a0) with value [a2+32].
  The `sh` at 0x10033be4 stores 2 bytes to a0 (arg0 at entry) +0x78 via base s0 (a0) with value [a2+32].
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54 via base s0 (a0), including `lw` at 0x10033be8, `lw` at 0x10033c08, `lw` at 0x10033c24.
  The `sh` at 0x10033bf0 stores 2 bytes to a0 (arg0 at entry) +0x76 via base s0 (a0) with value [a2+36].
  The `sh` at 0x10033bfc stores 2 bytes to a0 (arg0 at entry) +0x7a via base s0 (a0) with value [a2+36].
  The 2 such `lhu` accesses load 2 bytes from unknown (base unknown) via base a0 (unknown), including `lhu` at 0x10033c00, `lhu` at 0x10033c1c.
  The 2 such `sh` accesses store 2 bytes to unknown (base unknown) via base a3 (unknown), including `sh` at 0x10033c04, `sh` at 0x10033c20.
  The `lw` at 0x10033c3c loads 4 bytes from abs 0x10051084 via base gp (0x100588fc).
  The `lw` at 0x10033c44 loads 4 bytes from a0 (arg0 at entry) +0x4c via base s0 (a0).
  The `jal` at 0x10033b7c calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=sp-48.
  The `jal` at 0x10033c48 calls vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC with a0=a0 at entry (arg0), a1=sp-48, a2=[a0+76], a3=(unknown).
  The `blez` at 0x10033b14 goes to 0x10033c50 when at(=[a0+172]) <= 0 (signed) and falls through when at(=[a0+172]) > 0 (signed).
  The `beq` at 0x10033b40 goes to 0x10033c50 when a5(=[a0+112]+1) >= v1(=[a0+172]) (signed) and falls through when a5(=[a0+112]+1) < v1(=[a0+172]) (signed).
  The `bne` at 0x10033b9c goes to 0x10033b30 when a3(=[a2+32]) < t1(unknown) (signed) and falls through when a3(=[a2+32]) >= t1(unknown) (signed).
  The `bne` at 0x10033ba8 goes to 0x10033b30 when t2(unknown) != 0 and falls through when t2(unknown) == 0.
  The `bne` at 0x10033bb8 goes to 0x10033b30 when a0(=[a2+36]) < t3(unknown) (signed) and falls through when a0(=[a2+36]) >= t3(unknown) (signed).
  The `bne` at 0x10033bc0 goes to 0x10033b30 when t8(unknown) != 0 and falls through when t8(unknown) == 0.
  The `blez` at 0x10033bf8 goes to 0x10033c3c when ra(=[a0+84]) <= 0 (signed) and falls through when ra(=[a0+84]) > 0 (signed).
  The `beq` at 0x10033c14 goes to 0x10033c3c when a2(unknown) >= v1(=[a0+84]) (signed) and falls through when a2(unknown) < v1(=[a0+84]) (signed).
  The `bne` at 0x10033c34 goes to 0x10033c00 when a2(unknown) < a4(=[a0+84]) (signed) and falls through when a2(unknown) >= a4(=[a0+84]) (signed).
  The return at 0x10033c60 has v0 = unknown.

- `className__23SetmonMasterFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x10033c70 (n32).
  It occupies 24 bytes.
  The `lw` at 0x10033c7c loads 4 bytes from abs 0x1005091c via base at (0x100588fc).
  The return at 0x10033c80 has v0 = 0x100467f0.

- `OneTimeInitialization__19ServerInfoFormClassGv` in `usr/bin/X11/xsetmon` at 0x10033c90 (n32).
  It occupies 448 bytes.
  The `lw` at 0x10033cac loads 4 bytes from abs 0x1005131c via base gp (0x100588fc).
  The 8 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0 via base s1 (sym(xsetmonApp)), including `lw` at 0x10033cb4, `lw` at 0x10033cd0, `lw` at 0x10033cf0.
  The `lw` at 0x10033cb8 loads 4 bytes from abs 0x10050d7c via base gp (0x100588fc).
  The `lw` at 0x10033cbc loads 4 bytes from [sym(xsetmonApp)] +0x138 via base at ([sym(xsetmonApp)]).
  The `lw` at 0x10033ccc loads 4 bytes from [[sym(xsetmonApp)]+312] +0x80 via base at ([[sym(xsetmonApp)]+312]).
  The 7 such `lw` accesses load 4 bytes from abs 0x10050e64 via base gp (0x100588fc), including `lw` at 0x10033cd4, `lw` at 0x10033d00, `lw` at 0x10033d20.
  The `sw` at 0x10033cdc stores 4 bytes to [sym(xsetmonApp)] +0x11c via base a0 ([sym(xsetmonApp)]) with value -0x1.
  The `lw` at 0x10033ce8 loads 4 bytes from a0 (arg0 at entry) +0x40 via base s0 (a0).
  The 4 such `lw` accesses load 4 bytes from abs 0x10050e78 via base gp (0x100588fc), including `lw` at 0x10033cec, `lw` at 0x10033d48, `lw` at 0x10033d68.
  The `lw` at 0x10033cfc loads 4 bytes from [sym(xsetmonApp)] +0x98 via base a1 ([sym(xsetmonApp)]).
  The `lw` at 0x10033d08 loads 4 bytes from a0 (arg0 at entry) +0x48 via base s0 (a0).
  The 3 such `lw` accesses load 4 bytes from abs 0x10050e80 via base gp (0x100588fc), including `lw` at 0x10033d0c, `lw` at 0x10033d2c, `lw` at 0x10033d94.
  The `lw` at 0x10033d28 loads 4 bytes from a0 (arg0 at entry) +0x58 via base s0 (a0).
  The `lw` at 0x10033d44 loads 4 bytes from a0 (arg0 at entry) +0x50 via base s0 (a0).
  The `lw` at 0x10033d58 loads 4 bytes from [sym(xsetmonApp)] +0x90 via base a1 ([sym(xsetmonApp)]).
  The `lw` at 0x10033d64 loads 4 bytes from a0 (arg0 at entry) +0x4c via base s0 (a0).
  The `lw` at 0x10033d78 loads 4 bytes from [sym(xsetmonApp)] +0x8c via base a1 ([sym(xsetmonApp)]).
  The `lw` at 0x10033d80 loads 4 bytes from [sym(xsetmonApp)] +0xa0 via base a2 ([sym(xsetmonApp)]).
  The `lw` at 0x10033d90 loads 4 bytes from a0 (arg0 at entry) +0x44 via base s0 (a0).
  The `lw` at 0x10033da8 loads 4 bytes from abs 0x10050d80 via base gp (0x100588fc).
  The `lw` at 0x10033dac loads 4 bytes from [sym(xsetmonApp)] +0x138 via base a2 ([sym(xsetmonApp)]).
  The `lw` at 0x10033dc0 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base a0 ([[sym(xsetmonApp)]+312]).
  The `lw` at 0x10033dd0 loads 4 bytes from a0 (arg0 at entry) +0x5c via base s0 (a0).
  The `lw` at 0x10033de0 loads 4 bytes from a0 (arg0 at entry) +0x78 via base s0 (a0).
  The `lw` at 0x10033de4 loads 4 bytes from abs 0x10051148 via base gp (0x100588fc).
  The `lw` at 0x10033e0c loads 4 bytes from abs 0x10050b60 via base gp (0x100588fc).
  The `lw` at 0x10033e10 loads 4 bytes from abs 0x1005091c via base gp (0x100588fc).
  The `lw` at 0x10033e14 loads 4 bytes from abs 0x10050a50 via base gp (0x100588fc).
  The `lw` at 0x10033e20 loads 4 bytes from abs 0x10050a40 via base gp (0x100588fc).
  The `lw` at 0x10033e2c loads 4 bytes from abs 0x10050b30 via base gp (0x100588fc).
  The `lw` at 0x10033e38 loads 4 bytes from abs 0x10050c3c via base gp (0x100588fc).
  The `lw` at 0x10033e44 loads 4 bytes from a0 (arg0 at entry) +0x24 via base s0 (a0).
  The `jalr` at 0x10033cc8 calls XDisplayName with a0=[[[sym(xsetmonApp)]+312]+128], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10033ce4 calls EZ__GP10_WidgetRec with a0=[a0+64], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10033cf8 calls __as__9EZWrapperGi with a0=ret(EZ__GP10_WidgetRec), a1=[[sym(xsetmonApp)]+152], a2=(unknown), a3=(unknown).
  The `jal` at 0x10033d04 calls EZ__GP10_WidgetRec with a0=[a0+72], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10033d18 calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=[sym(xsetmonApp)]+164, a2=(unknown), a3=(unknown).
  The `jal` at 0x10033d24 calls EZ__GP10_WidgetRec with a0=[a0+88], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10033d34 calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=ret(XDisplayName), a2=(unknown), a3=(unknown).
  The `jal` at 0x10033d40 calls EZ__GP10_WidgetRec with a0=[a0+80], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10033d54 calls __as__9EZWrapperGi with a0=ret(EZ__GP10_WidgetRec), a1=[[sym(xsetmonApp)]+144], a2=(unknown), a3=(unknown).
  The `jal` at 0x10033d60 calls EZ__GP10_WidgetRec with a0=[a0+76], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10033d74 calls __as__9EZWrapperGi with a0=ret(EZ__GP10_WidgetRec), a1=[[sym(xsetmonApp)]+140], a2=(unknown), a3=(unknown).
  The `jal` at 0x10033d8c calls EZ__GP10_WidgetRec with a0=[a0+68], a1=(unknown), a2=[[sym(xsetmonApp)]+160], a3=(unknown).
  The `jal` at 0x10033d9c calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=0x10051710, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033dbc calls XSGIvcQueryScreenInputSyncSource with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[sym(xsetmonApp)]+280, a3=[sym(xsetmonApp)]+284, a4=a0+120.
  The `jal` at 0x10033dcc calls EZ__GP10_WidgetRec with a0=[a0+92], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10033ddc calls __as__9EZWrapperGi with a0=ret(EZ__GP10_WidgetRec), a1=[a0+120], a2=(unknown), a3=(unknown).
  The `jal` at 0x10033de8 calls setSyncOptionMenus__19ServerInfoFormClassGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033e18 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10045f50, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033e24 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033e30 calls exit with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033e40 calls XtSetSensitive with a0=[a0+36], a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x10033d84 goes to 0x10033e38 when a2(=[[sym(xsetmonApp)]+160]) == 0 and falls through when a2(=[[sym(xsetmonApp)]+160]) != 0.
  The `beq` at 0x10033dc4 goes to 0x10033e0c when v0(=ret(XSGIvcQueryScreenInputSyncSource)) == 0 and falls through when v0(=ret(XSGIvcQueryScreenInputSyncSource)) != 0.
  The return at 0x10033e04 has v0 = unknown.

- `className__29FormatCombinationListsClassUIGv` in `usr/bin/X11/xsetmon` at 0x10033e50 (n32).
  It occupies 24 bytes.
  The `lw` at 0x10033e5c loads 4 bytes from abs 0x1005091c via base at (0x100588fc).
  The return at 0x10033e60 has v0 = 0x10044d18.

- `__dt__21StatisticsFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x10033e70 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10033e98 loads 4 bytes from abs 0x10050b1c via base gp (0x100588fc).
  The `lw` at 0x10033e9c loads 4 bytes from abs 0x100512e8 via base gp (0x100588fc).
  The `sw` at 0x10033ea0 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__21StatisticsFormClassUI).
  The `lw` at 0x10033ec0 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x10033ea8 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10033ec4 calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10033e90 goes to 0x10033ecc when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x10033eb8 goes to 0x10033ed0 when (v1(=a1) & 0x1) == 0 and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10033ed4 has v0 = unknown.

- `cancel__21AboutXsetmonFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10033ee0 (n32).
  It occupies 8 bytes.
  The return at 0x10033ee0 has v0 = unknown.

- `__dt__12StereoDialogGv` in `usr/bin/X11/xsetmon` at 0x10033ef0 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10033f18 loads 4 bytes from abs 0x10050bd0 via base gp (0x100588fc).
  The `lw` at 0x10033f1c loads 4 bytes from abs 0x10051308 via base gp (0x100588fc).
  The `sw` at 0x10033f20 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__12StereoDialog).
  The `lw` at 0x10033f40 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x10033f28 calls __dt__15VkGenericDialogGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10033f44 calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10033f10 goes to 0x10033f4c when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x10033f38 goes to 0x10033f50 when (v1(=a1) & 0x1) == 0 and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10033f54 has v0 = unknown.

- `postHaltMessage__17TextErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10033f60 (n32).
  It occupies 96 bytes.
  The `lw` at 0x10033f74 loads 4 bytes from abs 0x10050de0 via base gp (0x100588fc).
  The `lw` at 0x10033f8c loads 4 bytes from abs 0x10050ff8 via base gp (0x100588fc).
  The `lw` at 0x10033fa0 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x10033f84 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10033f98 calls appendText__17TextErrorMessagerGPc with a0=a0 at entry (arg0), a1=ret(str__9strstreamGv), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10033fa8 calls __dl__GPv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x10033fb8 has v0 = ret(__dl__GPv).

- `__as__7MMatrixGRC7MMatrix` in `usr/bin/X11/xsetmon` at 0x10033fc0 (n32).
  It occupies 116 bytes.
  The `lw` at 0x10033fd8 loads 4 bytes from abs 0x100510e0 via base gp (0x100588fc).
  The `lw` at 0x10033ff4 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a0 (a0).
  The `lw` at 0x10033ff8 loads 4 bytes from a1 (arg1 at entry) +0x0 via base s8 (a1).
  The `lw` at 0x10033ffc loads 4 bytes from abs 0x10050e00 via base gp (0x100588fc).
  The `lw` at 0x10034000 loads 4 bytes from a0 (arg0 at entry) +0x0 via base s0 (a0).
  The `lw` at 0x10034004 loads 4 bytes from [a1] +0xc via base a1 ([a1]).
  The `lw` at 0x10034008 loads 4 bytes from [a0] +0x8 via base a0 ([a0]).
  The `lw` at 0x1003400c loads 4 bytes from [a0] +0xc via base a0 ([a0]).
  The `jal` at 0x10033ff0 calls __dt__9MMdtArrayGv with a0=[a0], a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10034010 calls memcpy with a0=[[a0]+12], a1=[[a1]+12], a2=([[a0]+8] << 0x2), a3=(unknown).
  The return at 0x1003402c has v0 = a0.

- `sFindDistanceIndex__19GammaMapEditorClassGfsT2` in `usr/bin/X11/xsetmon` at 0x10034040 (n32).
  It occupies 100 bytes.
  The `lw` at 0x10034074 loads 4 bytes from a0 (arg0 at entry) +0x54 via base a0 (a0).
  The `bltz` at 0x1003406c goes to 0x1003409c when v0(unknown) < 0 (signed) and falls through when v0(unknown) >= 0 (signed).
  The `bne` at 0x1003407c goes to 0x10034094 when v0(unknown) < a3(=[a0+84]) (signed) and falls through when v0(unknown) >= a3(=[a0+84]) (signed).
  The return at 0x1003408c has v0 = unknown.
  The return at 0x10034094 has v0 = unknown.
  The return at 0x1003409c has v0 = 0x0.

- `__dt__9MMdtArrayGv` in `usr/bin/X11/xsetmon` at 0x100340b0 (n32).
  It occupies 96 bytes.
  The `lw` at 0x100340d4 loads 4 bytes from abs 0x10050b98 via base gp (0x100588fc).
  The `lw` at 0x100340e0 loads 4 bytes from a0 (arg0 at entry) +0xc via base a0 (a0).
  The `lw` at 0x100340f4 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x100340dc calls __dla__GPv with a0=[a0+12], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100340f8 calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100340cc goes to 0x10034100 when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x100340ec goes to 0x10034104 when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  The return at 0x10034108 has v0 = unknown.

- `getDpyInfo__7xsetmonGPc` in `usr/bin/X11/xsetmon` at 0x10034110 (n32).
  It occupies 1116 bytes.
  The `lbu` at 0x10034134 loads 1 byte from a1 (arg1 at entry) +0x0 via base a1 (a1).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b9c via base gp (0x100588fc), including `lw` at 0x1003413c, `lw` at 0x1003429c.
  The `lw` at 0x10034140 loads 4 bytes from abs 0x10050b64 via base gp (0x100588fc).
  The `lw` at 0x1003414c loads 4 bytes from abs 0x10050ba0 via base gp (0x100588fc).
  The 10 such `lw` accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x10034150, `lw` at 0x10034184, `lw` at 0x10034224.
  The `sw` at 0x10034154 stores 4 bytes to a0 (arg0 at entry) +0x80 via base s0 (a0) with value ret(strdup).
  The `lw` at 0x10034160 loads 4 bytes from abs 0x10050ba4 via base gp (0x100588fc).
  The 5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80 via base s0 (a0), including `lw` at 0x10034168, `lw` at 0x1003419c, `lw` at 0x1003423c.
  The `sw` at 0x10034170 stores 4 bytes to a0 (arg0 at entry) +0x138 via base s0 (a0) with value ret(XOpenDisplay).
  The 3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x84 via base s0 (a0), including `lbu` at 0x10034174, `lbu` at 0x10034214, `lbu` at 0x100342d8.
  The 8 such `lw` accesses load 4 bytes from abs 0x10050b60 via base gp (0x100588fc), including `lw` at 0x1003417c, `lw` at 0x1003421c, `lw` at 0x10034348.
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b68 via base gp (0x100588fc), including `lw` at 0x10034180, `lw` at 0x10034220.
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b84 via base gp (0x100588fc), including `lw` at 0x10034194, `lw` at 0x10034234.
  The 3 such `lw` accesses load 4 bytes from abs 0x10050ba8 via base gp (0x100588fc), including `lw` at 0x100341a8, `lw` at 0x10034248, `lw` at 0x100342e0.
  The 3 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8 via base v0 (ret(getTheErrorDialog__Gv)), including `lw` at 0x100341b4, `lw` at 0x10034254, `lw` at 0x100342ec.
  The 3 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110 via base a0 ([ret(getTheErrorDialog__Gv)+8]), including `lw` at 0x100341c4, `lw` at 0x10034264, `lw` at 0x10034300.
  The 3 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108 via base a0 ([ret(getTheErrorDialog__Gv)+8]), including `lw` at 0x100341d0, `lw` at 0x10034270, `lw` at 0x1003430c.
  The `lw` at 0x100341f8 loads 4 bytes from abs 0x10050bac via base gp (0x100588fc).
  The 4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x138 via base s0 (a0), including `lw` at 0x100342b0, `lw` at 0x10034390, `lw` at 0x1003440c.
  The `lw` at 0x100342b4 loads 4 bytes from abs 0x10050bb0 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from [a0+312] +0x84 via base a1 ([a0+312]), including `lw` at 0x100342b8, `lw` at 0x100342cc.
  The `sw` at 0x100342c0 stores 4 bytes to a0 (arg0 at entry) +0x13c via base s0 (a0) with value [[a0+312]+132].
  The `lw` at 0x100342d4 loads 4 bytes from abs 0x10050bb4 via base gp (0x100588fc).
  The 3 such `lw` accesses load 4 bytes from abs 0x10050a50 via base gp (0x100588fc), including `lw` at 0x1003433c, `lw` at 0x100344c8, `lw` at 0x1003453c.
  The 3 such `lw` accesses load 4 bytes from abs 0x10050a40 via base gp (0x100588fc), including `lw` at 0x1003436c, `lw` at 0x1003450c, `lw` at 0x10034548.
  The 2 such `lw` accesses load 4 bytes from [a0+312] +0x84 via base a0 ([a0+312]), including `lw` at 0x1003439c, `lw` at 0x1003446c.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c via base s0 (a0), including `lw` at 0x100343a0, `lw` at 0x100343d8.
  The 5 such `lw` accesses load 4 bytes from abs 0x10050bb8 via base gp (0x100588fc), including `lw` at 0x100343ac, `lw` at 0x100343c4, `lw` at 0x10034438.
  The `sb` at 0x100343c0 stores 1 byte to a0 (arg0 at entry) +0xc8 via base s0 (a0) with value 0x0.
  The `sb` at 0x100343e8 stores 1 byte to a0 (arg0 at entry) +0xcd via base s0 (a0).
  The `sb` at 0x100343f8 stores 1 byte to a0 (arg0 at entry) +0xc9 via base s0 (a0) with value 0x0.
  The `lw` at 0x100343fc loads 4 bytes from abs 0x10050bbc via base gp (0x100588fc).
  The `sb` at 0x10034418 stores 1 byte to a0 (arg0 at entry) +0xcb via base s0 (a0) with value ret(XSGIStereoQueryExtension).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x90 via base s0 (a0), including `lw` at 0x10034430, `lw` at 0x10034494.
  The `lw` at 0x10034450 loads 4 bytes from abs 0x10050bc0 via base gp (0x100588fc).
  The `ldc1` at 0x10034474 loads 8 bytes from abs 0x10051d80 via base gp (0x100588fc).
  The `sb` at 0x10034490 stores 1 byte to a0 (arg0 at entry) +0xca via base s0 (a0) with value 0x0.
  The `sb` at 0x100344c0 stores 1 byte to a0 (arg0 at entry) +0xc8 via base s0 (a0) with value 0x1.
  The `sb` at 0x10034560 stores 1 byte to a0 (arg0 at entry) +0xca via base s0 (a0) with value 0x1.
  The `sb` at 0x10034568 stores 1 byte to a0 (arg0 at entry) +0xc9 via base s0 (a0) with value 0x1.
  The `jalr` at 0x10034144 calls strdup with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10034158 calls putenv with a0=0x10043cd8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10034164 calls XOpenDisplay with a0=[a0+128], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003418c calls VkGetResource__GPCcT1 with a0=0x10043da8, a1=0x10043da8, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100341a0 calls sprintf with a0=sp-1104, a1=ret(VkGetResource__GPCcT1), a2=[a0+128], a3=(unknown).
  The `jalr` at 0x100341ac calls getTheErrorDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100341dc calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-1104, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10034204 calls XSGIvcQueryVersion with a0=ret(XOpenDisplay), a1=a0+140, a2=a0+144, a3=(unknown).
  The `jalr` at 0x1003422c calls VkGetResource__GPCcT1 with a0=0x10043cf0, a1=0x10043cf0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10034240 calls sprintf with a0=sp-1104, a1=ret(VkGetResource__GPCcT1), a2=[a0+128], a3=(unknown).
  The `jalr` at 0x1003424c calls getTheErrorDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003427c calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-1104, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x100342a0 calls getenv with a0=0x10051400, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100342c8 calls XSGIvcQueryVideoScreenInfo with a0=[a0+312], a1=[[a0+312]+132], a2=a0+152, a3=[[a0+312]+132].
  The `jalr` at 0x100342e4 calls getTheErrorDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown), a4=[a0+132]:1.
  The `jalr` at 0x10034318 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x10043cf0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10034340 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10043dc0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10034350 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=[a0+128], a2=(unknown), a3=(unknown).
  The `jalr` at 0x10034364 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=0x10043de0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10034370 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10034398 calls XSGIvcQueryScreenGammaMaps with a0=[a0+312], a1=[[a0+312]+132], a2=a0+276, a3=(unknown).
  The `jalr` at 0x100343d0 calls strncmp with a0=(unknown), a1=0x1005140c, a2=0x3, a3=(unknown).
  The `jalr` at 0x10034408 calls XSGIStereoQueryExtension with a0=[a0+312], a1=sp-48, a2=sp-44, a3=(unknown).
  The `jalr` at 0x10034444 calls strncmp with a0=(unknown), a1=0x10051410, a2=0x7, a3=(unknown).
  The `jalr` at 0x10034468 calls XSGIvcQueryPlatformParameter with a0=[a0+312], a1=[[a0+312]+132], a2=0x0, a3=0x0, a4=sp-80, a5=0x20.
  The `jalr` at 0x100344ac calls strncmp with a0=a0+164, a1=0x10051408, a2=0x3, a3=(unknown).
  The `jalr` at 0x100344cc calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10043d10, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100344dc calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=[a0+128], a2=(unknown), a3=(unknown).
  The `jalr` at 0x100344f0 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=0x10043d28, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10034504 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=0x10043d48, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10034510 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10034540 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10043d80, a2=(unknown), a3=(unknown), a4=[a0+132]:1.
  The `jalr` at 0x1003454c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x1003412c goes to 0x1003429c when a1 == 0 and falls through when a1 != 0.
  The `beq` at 0x10034138 goes to 0x100342a0 when v0(=[a1]:1) == 0 and falls through when v0(=[a1]:1) != 0.
  The `bne` at 0x1003416c goes to 0x100341f8 when v0(=ret(XOpenDisplay)) != 0 and falls through when v0(=ret(XOpenDisplay)) == 0.
  The `beq` at 0x10034178 goes to 0x10034338 when a1(=[a0+132]:1) == 0 and falls through when a1(=[a0+132]:1) != 0.
  The `bne` at 0x1003420c goes to 0x100342b0 when v0(=ret(XSGIvcQueryVersion)) != 0 and falls through when v0(=ret(XSGIvcQueryVersion)) == 0.
  The `beq` at 0x10034218 goes to 0x100344c4 when a1(=[a0+132]:1) == 0 and falls through when a1(=[a0+132]:1) != 0.
  The `bne` at 0x100342d0 goes to 0x10034390 when v0(=ret(XSGIvcQueryVideoScreenInfo)) != 0 and falls through when v0(=ret(XSGIvcQueryVideoScreenInfo)) == 0.
  The `beq` at 0x100342dc goes to 0x10034530 when a4(=[a0+132]:1) == 0 and falls through when a4(=[a0+132]:1) != 0.
  The `beq` at 0x100343a8 goes to 0x100344a0 when a1(=[a0+140]) >= 0x2 (signed) and falls through when a1(=[a0+140]) < 0x2 (signed).
  The `beq` at 0x100343b4 goes to 0x10034494 when a1(=[a0+140]) == a3(=0x1) and falls through when a1(=[a0+140]) != a3(=0x1).
  The `beq` at 0x100343e4 goes to 0x10034438 when a1(=[a0+140]) >= 0x2 (signed) -> outside and falls through when a1(=[a0+140]) < 0x2 (signed).
  The `beq` at 0x100343f0 goes to 0x10034430 when a1(=[a0+140]) == a7(=0x1) and falls through when a1(=[a0+140]) != a7(=0x1).
  The `blez` at 0x10034434 goes to 0x100343f8 when t1(=[a0+144]) <= 0 (signed) and falls through when t1(=[a0+144]) > 0 (signed).
  The `bne` at 0x1003444c goes to 0x100343f8 when v0(=ret(strncmp)) != 0 and falls through when v0(=ret(strncmp)) == 0.
  The `bc1f` at 0x10034484 goes to 0x10034560 when not (f0 < f1(=0x4060000000000000) (c.lt.d at 0x1003447c)) and falls through when f0 < f1(=0x4060000000000000) (c.lt.d at 0x1003447c).
  The `blez` at 0x10034498 goes to 0x100343b8 when t2(=[a0+144]) <= 0 (signed) -> outside and falls through when t2(=[a0+144]) > 0 (signed).
  The `bne` at 0x100344b4 goes to 0x100343c0 when v0(=ret(strncmp)) != 0 and falls through when v0(=ret(strncmp)) == 0.
  The return at 0x100341f0 has v0 = 0x0.
  The return at 0x10034294 has v0 = 0x0.
  The return at 0x10034330 has v0 = 0x0.
  The return at 0x10034388 has v0 = 0x0.
  The return at 0x10034428 has v0 = 0x1.
  The return at 0x10034528 has v0 = 0x0.

- `__dt__21GammaMapEditorClassUIGv` in `usr/bin/X11/xsetmon` at 0x10034570 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10034598 loads 4 bytes from abs 0x10050b1c via base gp (0x100588fc).
  The `lw` at 0x1003459c loads 4 bytes from abs 0x100512c0 via base gp (0x100588fc).
  The `sw` at 0x100345a0 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__21GammaMapEditorClassUI).
  The `lw` at 0x100345c0 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x100345a8 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x100345c4 calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10034590 goes to 0x100345cc when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x100345b8 goes to 0x100345d0 when (v1(=a1) & 0x1) == 0 and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x100345d4 has v0 = unknown.

- `vFindRegionAffected__19GammaMapEditorClassGP6XPointT1f` in `usr/bin/X11/xsetmon` at 0x100345e0 (n32).
  It occupies 368 bytes.
  The `lw` at 0x10034604 loads 4 bytes from a0 (arg0 at entry) +0x54 via base a0 (a0).
  The 2 such `lwc1` accesses load 4 bytes from abs 0x10051df0 via base gp (0x100588fc), including `lwc1` at 0x10034630, `lwc1` at 0x10034740.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c via base s1 (a0), including `lw` at 0x10034640, `lw` at 0x10034698.
  The `lh` at 0x10034644 loads 2 bytes from a1 (arg1 at entry) +0x2 via base s3 (a1).
  The `lh` at 0x1003464c loads 2 bytes from a1 (arg1 at entry) +0x0 via base s3 (a1).
  The 2 such `lh` accesses load 2 bytes from unknown (base unknown) via base v1 (unknown), including `lh` at 0x10034658, `lh` at 0x10034660.
  The `lw` at 0x10034668 loads 4 bytes from abs 0x10051248 via base gp (0x100588fc).
  The 2 such `lh` accesses load 2 bytes from unknown (base unknown) via base a0 (unknown), including `lh` at 0x100346a0, `lh` at 0x100346a8.
  The `sh` at 0x100346a4 stores 2 bytes to a2 (arg2 at entry) +0x0 via base s5 (a2).
  The `sh` at 0x100346b4 stores 2 bytes to a2 (arg2 at entry) +0x2 via base s5 (a2).
  The `lw` at 0x100346bc loads 4 bytes from a0 (arg0 at entry) +0x54 via base s1 (a0).
  The 2 such `lw` accesses load 4 bytes from abs 0x100510dc via base gp (0x100588fc), including `lw` at 0x100346d8, `lw` at 0x10034700.
  The `sh` at 0x1003471c stores 2 bytes to a0 (arg0 at entry) +0x7c via base s1 (a0) with value ret(sFindDistanceIndex__19GammaMapEditorClassGfsT2).
  The `sh` at 0x10034724 stores 2 bytes to a0 (arg0 at entry) +0x80 via base s1 (a0).
  The `sh` at 0x1003472c stores 2 bytes to a0 (arg0 at entry) +0x7e via base s1 (a0) with value ret(sFindDistanceIndex__19GammaMapEditorClassGfsT2).
  The `jal` at 0x10034680 calls fDistanceFunction__19GammaMapEditorClassGfN31 with a0=a0 at entry (arg0), a1=[a1]:2, a2=[a1+2]:2, a3=(unknown).
  The `jal` at 0x100346f4 calls sFindDistanceIndex__19GammaMapEditorClassGfsT2 with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=-0x1.
  The `jal` at 0x10034718 calls sFindDistanceIndex__19GammaMapEditorClassGfsT2 with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=0x1.
  The `blez` at 0x10034628 goes to 0x10034740 when at(=[a0+84]) <= 0 (signed) and falls through when at(=[a0+84]) > 0 (signed).
  The `bc1f` at 0x10034690 goes to 0x100346b8 when not (f0(=ret(fDistanceFunction__19GammaMapEditorClassGfN31)) < f20 (c.lt.s at 0x10034688)) and falls through when f0(=ret(fDistanceFunction__19GammaMapEditorClassGfN31)) < f20 (c.lt.s at 0x10034688).
  The `bne` at 0x100346cc goes to 0x10034640 when s0(unknown) < a1(=[a0+84]) (signed) and falls through when s0(unknown) >= a1(=[a0+84]) (signed).
  The return at 0x10034738 has v0 = ret(sFindDistanceIndex__19GammaMapEditorClassGfsT2).

- `vDrawSpline__19GammaMapEditorClassCGv` in `usr/bin/X11/xsetmon` at 0x10034750 (n32).
  It occupies 552 bytes.
  The instructions from 0x100347f4 to 0x100347fc are not reached by any path from the entry, and their branches are not listed.
  The `lw` at 0x10034764 loads 4 bytes from a0 (arg0 at entry) +0xac via base a0 (a0).
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8 via base s0 (a0), including `lw` at 0x10034788, `lw` at 0x10034874, `lw` at 0x10034974.
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4 via base s0 (a0), including `lw` at 0x1003478c, `lw` at 0x10034878, `lw` at 0x100348d0.
  The 2 such `lw` accesses load 4 bytes from abs 0x100510c4 via base gp (0x100588fc), including `lw` at 0x10034790, `lw` at 0x1003487c.
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0 via base s0 (a0), including `lw` at 0x10034794, `lw` at 0x10034880, `lw` at 0x100348d4.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xbc via base s0 (a0), including `lw` at 0x1003479c, `lw` at 0x10034888.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb8 via base s0 (a0), including `lw` at 0x100347a8, `lw` at 0x10034894.
  The 4 such `lw` accesses load 4 bytes from abs 0x10051170 via base gp (0x100588fc), including `lw` at 0x100347ac, `lw` at 0x10034804, `lw` at 0x1003480c.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54 via base s0 (a0), including `lw` at 0x100347c8, `lw` at 0x1003485c.
  The `lw` at 0x100347f0 loads 4 bytes from abs 0x1005131c via base gp (0x100588fc).
  The `lw` at 0x10034820 loads 4 bytes from abs 0x10050d3c via base gp (0x100588fc).
  The `lw` at 0x10034824 loads 4 bytes from sym(xsetmonApp) +0x0 via base s7 (sym(xsetmonApp)).
  The `lw` at 0x10034828 loads 4 bytes from a0 (arg0 at entry) +0x24 via base s0 (a0).
  The `lw` at 0x10034830 loads 4 bytes from [sym(xsetmonApp)] +0x6c via base s4 ([sym(xsetmonApp)]).
  The `lh` at 0x10034834 loads 2 bytes from (sp + one of -0x5e, -0x5a) +0x0 via base s1 ((sp + one of -0x60, -0x5c)).
  The `lh` at 0x10034838 loads 2 bytes from (sp + one of -0x60, -0x5c) +0x0 via base s1 ((sp + one of -0x60, -0x5c)).
  The `lw` at 0x1003483c loads 4 bytes from abs 0x10050d4c via base gp (0x100588fc).
  The `lh` at 0x10034840 loads 2 bytes from (sp + one of -0x5e, -0x5a) +0x0 via base s3 ((sp + one of -0x60, -0x5c)).
  The `lh` at 0x1003484c loads 2 bytes from (sp + one of -0x60, -0x5c) +0x0 via base s3 ((sp + one of -0x60, -0x5c)).
  The `lw` at 0x10034858 loads 4 bytes from a0 (arg0 at entry) +0x44 via base s0 (a0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac via base s0 (a0), including `lw` at 0x100348c0, `lw` at 0x1003491c.
  The `lwc1` at 0x100348e0 loads 4 bytes from unknown (base unknown) via base at (unknown).
  The `lwc1` at 0x100348e4 loads 4 bytes from unknown (base unknown) via base ra (unknown).
  The `lw` at 0x10034908 loads 4 bytes from abs 0x10051084 via base gp (0x100588fc).
  The `lw` at 0x10034910 loads 4 bytes from a0 (arg0 at entry) +0x48 via base s0 (a0).
  The 2 such `lw` accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x10034954, `lw` at 0x1003495c.
  The `lw` at 0x10034958 loads 4 bytes from abs 0x10050d10 via base gp (0x100588fc).
  The `jal` at 0x100347a4 calls fSplineCalc__19GammaMapEditorClassCGiT1PfN23T1 with a0=a0 at entry (arg0), a1=[a0+184], a2=[a0+188], a3=[a0+176], a4=[a0+180], a5=[a0+168], a6=0x0.
  The `jal` at 0x100347c0 calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=sp-96.
  The `jal` at 0x10034818 calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(sp + one of -0x60, -0x5c).
  The `jalr` at 0x1003482c calls XtWindow with a0=[a0+36], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10034854 calls XDrawLine with a0=[[sym(xsetmonApp)]+108], a1=ret(XtWindow), a2=[a0+68], a3=(unknown).
  The `jal` at 0x10034890 calls fSplineCalc__19GammaMapEditorClassCGiT1PfN23T1 with a0=a0 at entry (arg0), a1=[a0+184], a2=[a0+188], a3=[a0+176], a4=[a0+180], a5=[a0+168].
  The `jal` at 0x10034900 calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=sp-88.
  The `jal` at 0x10034914 calls vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC with a0=a0 at entry (arg0), a1=sp-88, a2=[a0+72], a3=(unknown).
  The `jalr` at 0x10034968 calls __assert with a0=0x10045aa8, a1=0x10045ac0, a2=0x256, a3=a3 at entry (arg3).
  The `beq` at 0x10034780 goes to 0x10034954 when at(=[a0+172]) == 0 and falls through when at(=[a0+172]) != 0.
  The `blez` at 0x100347d0 goes to 0x100348c0 when v1(=[a0+84]) <= 0 (signed) and falls through when v1(=[a0+84]) > 0 (signed).
  The `beq` at 0x10034800 goes to 0x10034810 when a0(unknown) == 0 and falls through when a0(unknown) != 0.
  The `beq` at 0x1003486c goes to 0x100348b4 when s2(unknown) >= t8(=[a0+84]) (signed) and falls through when s2(unknown) < t8(=[a0+84]) (signed).
  The `bgez` at 0x100348a4 goes to 0x10034800 when a2(unknown) >= 0 (signed) and falls through when a2(unknown) < 0 (signed).
  The `blez` at 0x100348c8 goes to 0x10034930 when t9(=[a0+172]) <= 0 (signed) and falls through when t9(=[a0+172]) > 0 (signed).
  The `bne` at 0x10034928 goes to 0x100348d0 when s2(unknown) < v0(=[a0+172]) (signed) and falls through when s2(unknown) >= v0(=[a0+172]) (signed).
  The return at 0x1003494c has v0 = unknown.

- `accumBufTypeSelectedCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10034980 (n32).
  It occupies 68 bytes.
  The `lw` at 0x10034984 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a1 (a1).
  The `lw` at 0x10034990 loads 4 bytes from [a1+8] +0x108 via base v1 ([a1+8]).
  The `lw` at 0x1003499c loads 4 bytes from [a1+8] +0x110 via base v1 ([a1+8]).
  The `jalr` at 0x100349ac calls (unknown callee) with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23f7c.
  The return at 0x100349bc has v0 = ret(unknown).

- `setOpMenuIndex__12GammaClassUIGi` in `usr/bin/X11/xsetmon` at 0x100349d0 (n32).
  It occupies 52 bytes.
  The `lw` at 0x100349e4 loads 4 bytes from abs 0x10050d08 via base gp (0x100588fc).
  The `lw` at 0x100349f0 loads 4 bytes from a0 (arg0 at entry) +0x64 via base a0 (a0).
  The `jalr` at 0x100349ec calls set__12VkOptionMenuGi with a0=[a0+100], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100349fc has v0 = ret(set__12VkOptionMenuGi).

- `fbConfigSelected__27FormatCombinationListsClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10034a10 (n32).
  It occupies 96 bytes.
  The `lw` at 0x10034a24 loads 4 bytes from a2 (arg2 at entry) +0x10 via base a2 (a2).
  The `lw` at 0x10034a28 loads 4 bytes from abs 0x10050950 via base gp (0x100588fc).
  The `lw` at 0x10034a34 loads 4 bytes from abs 0x1005131c via base gp (0x100588fc).
  The `lw` at 0x10034a3c loads 4 bytes from table(0x1004cf5c) +0x0 via base a1 (table(0x1004cf60)).
  The `sw` at 0x10034a40 stores 4 bytes to a0 (arg0 at entry) +0xa4 via base a0 (a0) with value entry(0x1004cf5c).
  The `lw` at 0x10034a44 loads 4 bytes from sym(xsetmonApp) +0x0 via base a2 (sym(xsetmonApp)).
  The `lw` at 0x10034a48 loads 4 bytes from [sym(xsetmonApp)] +0x130 via base a0 ([sym(xsetmonApp)]).
  The `lw` at 0x10034a4c loads 4 bytes from abs 0x10050ed0 via base gp (0x100588fc).
  The `lw` at 0x10034a50 loads 4 bytes from [[sym(xsetmonApp)]+304] +0x44 via base a0 ([[sym(xsetmonApp)]+304]).
  The `lw` at 0x10034a5c loads 4 bytes from [[[sym(xsetmonApp)]+304]+68] +0x2c via base a0 ([[[sym(xsetmonApp)]+304]+68]).
  The `jal` at 0x10034a58 calls DisplayfbConfig__21SetmonMasterFormClassGPCc with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=entry(0x1004cf5c), a2=sym(xsetmonApp), a3=([a2+16] << 0x2).
  The return at 0x10034a68 has v0 = ret(DisplayfbConfig__21SetmonMasterFormClassGPCc).

- `className__19GammaMapEditorClassGv` in `usr/bin/X11/xsetmon` at 0x10034a70 (n32).
  It occupies 24 bytes.
  The `lw` at 0x10034a7c loads 4 bytes from abs 0x1005091c via base at (0x100588fc).
  The return at 0x10034a80 has v0 = 0x10045968.

- `create__18ChannelFormClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10034b70 (n32).
  It occupies 9156 bytes.
  The `lw` at 0x10034b8c loads 4 bytes from abs 0x10050be4 via base gp (0x100588fc).
  The `lw` at 0x10034ba4 loads 4 bytes from abs 0x10051278 via base gp (0x100588fc).
  The `lw` at 0x10034ba8 loads 4 bytes from abs 0x10050be8 via base gp (0x100588fc).
  The `lw` at 0x10034bb0 loads 4 bytes from abs 0x10050b0c via base gp (0x100588fc).
  The `lw` at 0x10034bbc loads 4 bytes from a0 (arg0 at entry) +0xc via base s0 (a0).
  The 5 such `lw` accesses load 4 bytes from sym(xmFormWidgetClass) +0x0 via base s2 (sym(xmFormWidgetClass)), including `lw` at 0x10034bc8, `lw` at 0x10034be4, `lw` at 0x10034dc4.
  The `lw` at 0x10034bcc loads 4 bytes from abs 0x10050bec via base gp (0x100588fc).
  The `sw` at 0x10034bd0 stores 4 bytes to a0 (arg0 at entry) +0x10 via base s0 (a0) with value ret(XtVaCreateWidget).
  The `sw` at 0x10034bdc stores 4 bytes to a0 (arg0 at entry) +0x4c via base s0 (a0) with value ret(XtVaCreateWidget).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10 via base s0 (a0), including `lw` at 0x10034be0, `lw` at 0x10036e08.
  The 30 such `lw` accesses load 4 bytes from abs 0x10050bf0 via base gp (0x100588fc), including `lw` at 0x10034c74, `lw` at 0x10034d5c, `lw` at 0x10034d98.
  The 31 such `lw` accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x10034c80, `lw` at 0x10034d68, `lw` at 0x10034fbc.
  The 3 such `lw` accesses load 4 bytes from abs 0x100509b8 via base gp (0x100588fc), including `lw` at 0x10034c9c, `lw` at 0x10034df8, `lw` at 0x10035790.
  The `sw` at 0x10034ca0 stores 4 bytes to a0 (arg0 at entry) +0x5c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The 2 such `lw` accesses load 4 bytes from sym(xmFrameWidgetClass) +0x0 via base a1 (sym(xmFrameWidgetClass)), including `lw` at 0x10034ca4, `lw` at 0x10034e00.
  The `sw` at 0x10034d84 stores 4 bytes to a0 (arg0 at entry) +0x50 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x10034d8c loads 4 bytes from abs 0x100509c4 via base gp (0x100588fc).
  The 12 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0 via base s1 (sym(xmLabelWidgetClass)), including `lw` at 0x10034da4, `lw` at 0x1003523c, `lw` at 0x10035328.
  The `sw` at 0x10034dc0 stores 4 bytes to a0 (arg0 at entry) +0x78 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50 via base s0 (a0), including `lw` at 0x10034dd4, `lw` at 0x1003686c.
  The `sw` at 0x10034dfc stores 4 bytes to a0 (arg0 at entry) +0x58 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10034ec4 stores 4 bytes to a0 (arg0 at entry) +0x64 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x10034f00 loads 4 bytes from abs 0x10050b04 via base gp (0x100588fc).
  The `sw` at 0x10034f04 stores 4 bytes to a0 (arg0 at entry) +0x54 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The 4 such `lw` accesses load 4 bytes from sym(xmTextFieldWidgetClass) +0x0 via base s3 (sym(xmTextFieldWidgetClass)), including `lw` at 0x10034f08, `lw` at 0x10034fe0, `lw` at 0x100350a8.
  The 7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54 via base s0 (a0), including `lw` at 0x10034fd8, `lw` at 0x100350a0, `lw` at 0x10035170.
  The `sw` at 0x10034fdc stores 4 bytes to a0 (arg0 at entry) +0xbc via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x100350a4 stores 4 bytes to a0 (arg0 at entry) +0xb8 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10035174 stores 4 bytes to a0 (arg0 at entry) +0xb0 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10035238 stores 4 bytes to a0 (arg0 at entry) +0xb4 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10035324 stores 4 bytes to a0 (arg0 at entry) +0x88 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10035410 stores 4 bytes to a0 (arg0 at entry) +0x84 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x100354ec stores 4 bytes to a0 (arg0 at entry) +0x80 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x100355b8 loads 4 bytes from abs 0x10050b08 via base gp (0x100588fc).
  The `sw` at 0x100355bc stores 4 bytes to a0 (arg0 at entry) +0x7c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The 2 such `lw` accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0 via base s3 (sym(xmPushButtonWidgetClass)), including `lw` at 0x100355c0, `lw` at 0x100356a4.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x58 via base s0 (a0), including `lw` at 0x100355c4, `lw` at 0x100356a8.
  The 8 such `lw` accesses load 4 bytes from abs 0x10050c44 via base gp (0x100588fc), including `lw` at 0x10035688, `lw` at 0x10035748, `lw` at 0x10035f40.
  The `lw` at 0x10035694 loads 4 bytes from abs 0x100510c8 via base gp (0x100588fc).
  The `sw` at 0x100356a0 stores 4 bytes to a0 (arg0 at entry) +0x48 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x10035754 loads 4 bytes from abs 0x10051180 via base gp (0x100588fc).
  The `sw` at 0x10035760 stores 4 bytes to a0 (arg0 at entry) +0x44 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The 20 such `lw` accesses load 4 bytes from abs 0x10050bdc via base gp (0x100588fc), including `lw` at 0x10035764, `lw` at 0x10035784, `lw` at 0x10035c5c.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44 via base s0 (a0), including `lw` at 0x1003576c, `lw` at 0x1003577c.
  The `lw` at 0x10035778 loads 4 bytes from a0 (arg0 at entry) +0x64 via base s0 (a0).
  The `lw` at 0x1003579c loads 4 bytes from a0 (arg0 at entry) +0x48 via base s0 (a0).
  The 17 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c via base s0 (a0), including `lw` at 0x100357a8, `lw` at 0x10035e38, `lw` at 0x10035f78.
  The `lw` at 0x100357ac loads 4 bytes from sym(xmFrameWidgetClass) +0x0 via base s3 (sym(xmFrameWidgetClass)).
  The `sw` at 0x10035874 stores 4 bytes to a0 (arg0 at entry) +0x68 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x100358a8 stores 4 bytes to a0 (arg0 at entry) +0x74 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x100358b0 loads 4 bytes from a0 (arg0 at entry) +0x68 via base s0 (a0).
  The 11 such `lw` accesses load 4 bytes from abs 0x10050b4c via base gp (0x100588fc), including `lw` at 0x100358e4, `lw` at 0x10035a80, `lw` at 0x10035ae8.
  The `sw` at 0x100358e8 stores 4 bytes to a0 (arg0 at entry) +0x60 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The 4 such `lw` accesses load 4 bytes from abs 0x10051118 via base gp (0x100588fc), including `lw` at 0x10035908, `lw` at 0x10035aa4, `lw` at 0x10035b08.
  The 4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60 via base s0 (a0), including `lw` at 0x10035914, `lw` at 0x10035954, `lw` at 0x10035b14.
  The `sw` at 0x1003592c stores 4 bytes to a0 (arg0 at entry) +0x20 via base s0 (a0).
  The `sw` at 0x10035934 stores 4 bytes to a0 (arg0 at entry) +0x20 via base s0 (a0) with value 0x0.
  The 9 such `lw` accesses load 4 bytes from unknown (base unknown) via base v0 (unknown), including `lw` at 0x10035938, `lw` at 0x10035ad4, `lw` at 0x10035b38.
  The 18 such `lw` accesses load 4 bytes from unknown (base unknown) via base a0 (unknown), including `lw` at 0x1003593c, `lw` at 0x10035940, `lw` at 0x10035ad8.
  The `lw` at 0x1003594c loads 4 bytes from abs 0x10050a74 via base gp (0x100588fc).
  The `lw` at 0x10035950 loads 4 bytes from sym(xmScrolledWindowWidgetClass) +0x0 via base a1 (sym(xmScrolledWindowWidgetClass)).
  The `sw` at 0x10035a40 stores 4 bytes to a0 (arg0 at entry) +0xac via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x10035a4c loads 4 bytes from abs 0x10050a78 via base gp (0x100588fc).
  The `lw` at 0x10035a64 loads 4 bytes from sym(xmRowColumnWidgetClass) +0x0 via base a1 (sym(xmRowColumnWidgetClass)).
  The `sw` at 0x10035a84 stores 4 bytes to a0 (arg0 at entry) +0x9c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x10035ab0 loads 4 bytes from a0 (arg0 at entry) +0x9c via base s0 (a0).
  The `sw` at 0x10035ac8 stores 4 bytes to a0 (arg0 at entry) +0x24 via base s0 (a0).
  The `sw` at 0x10035ad0 stores 4 bytes to a0 (arg0 at entry) +0x24 via base s0 (a0) with value 0x0.
  The `sw` at 0x10035b2c stores 4 bytes to a0 (arg0 at entry) +0x28 via base s0 (a0).
  The `sw` at 0x10035b34 stores 4 bytes to a0 (arg0 at entry) +0x28 via base s0 (a0) with value 0x0.
  The `sw` at 0x10035b90 stores 4 bytes to a0 (arg0 at entry) +0x2c via base s0 (a0).
  The `sw` at 0x10035b98 stores 4 bytes to a0 (arg0 at entry) +0x2c via base s0 (a0) with value 0x0.
  The 11 such `lw` accesses load 4 bytes from abs 0x10050bd8 via base gp (0x100588fc), including `lw` at 0x10035bb0, `lw` at 0x10035c84, `lw` at 0x10035d5c.
  The `lw` at 0x10035bb8 loads 4 bytes from a0 (arg0 at entry) +0x20 via base s0 (a0).
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac via base s0 (a0), including `lw` at 0x10035bcc, `lw` at 0x10035ca0, `lw` at 0x10035d78.
  The `lw` at 0x10035c8c loads 4 bytes from a0 (arg0 at entry) +0x28 via base s0 (a0).
  The `lw` at 0x10035d64 loads 4 bytes from a0 (arg0 at entry) +0x2c via base s0 (a0).
  The `lw` at 0x10035e34 loads 4 bytes from abs 0x10050a98 via base gp (0x100588fc).
  The 3 such `lw` accesses load 4 bytes from sym(xmScaleWidgetClass) +0x0 via base s2 (sym(xmScaleWidgetClass)), including `lw` at 0x10035e3c, `lw` at 0x10035f7c, `lw` at 0x100360b0.
  The `lw` at 0x10035f48 loads 4 bytes from abs 0x10050f10 via base gp (0x100588fc).
  The `sw` at 0x10035f54 stores 4 bytes to a0 (arg0 at entry) +0xa4 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x10035f74 loads 4 bytes from a0 (arg0 at entry) +0xa4 via base s0 (a0).
  The `lw` at 0x1003607c loads 4 bytes from abs 0x10051028 via base gp (0x100588fc).
  The `sw` at 0x10036088 stores 4 bytes to a0 (arg0 at entry) +0xa0 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x100360a8 loads 4 bytes from a0 (arg0 at entry) +0xa0 via base s0 (a0).
  The `lw` at 0x1003619c loads 4 bytes from abs 0x100510b0 via base gp (0x100588fc).
  The `sw` at 0x100361a8 stores 4 bytes to a0 (arg0 at entry) +0xa8 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x100361c8 loads 4 bytes from a0 (arg0 at entry) +0xa8 via base s0 (a0).
  The 4 such `lw` accesses load 4 bytes from abs 0x100511e0 via base gp (0x100588fc), including `lw` at 0x100361ec, `lw` at 0x10036250, `lw` at 0x100362b4.
  The `sw` at 0x10036210 stores 4 bytes to a0 (arg0 at entry) +0x30 via base s0 (a0).
  The `sw` at 0x10036218 stores 4 bytes to a0 (arg0 at entry) +0x30 via base s0 (a0) with value 0x0.
  The `sw` at 0x10036274 stores 4 bytes to a0 (arg0 at entry) +0x34 via base s0 (a0).
  The `sw` at 0x1003627c stores 4 bytes to a0 (arg0 at entry) +0x34 via base s0 (a0) with value 0x0.
  The `sw` at 0x100362d8 stores 4 bytes to a0 (arg0 at entry) +0x38 via base s0 (a0).
  The `sw` at 0x100362e0 stores 4 bytes to a0 (arg0 at entry) +0x38 via base s0 (a0) with value 0x0.
  The `sw` at 0x1003633c stores 4 bytes to a0 (arg0 at entry) +0x3c via base s0 (a0).
  The `sw` at 0x10036344 stores 4 bytes to a0 (arg0 at entry) +0x3c via base s0 (a0) with value 0x0.
  The 2 such `lw` accesses load 4 bytes from abs 0x10050c48 via base gp (0x100588fc), including `lw` at 0x1003637c, `lw` at 0x10036824.
  The 3 such `lw` accesses load 4 bytes from abs 0x10050c4c via base gp (0x100588fc), including `lw` at 0x100363a8, `lw` at 0x100363b0, `lw` at 0x100363d8.
  The `lw` at 0x100363c0 loads 4 bytes from abs 0x10050ec8 via base gp (0x100588fc).
  The `sw` at 0x100363c8 stores 4 bytes to a0 (arg0 at entry) +0xc0 via base s0 (a0).
  The `lw` at 0x100363d4 loads 4 bytes from abs 0x10051090 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc0 via base s0 (a0), including `lw` at 0x100363e8, `lw` at 0x10036bec.
  The `sw` at 0x100363ec stores 4 bytes to a0 (arg0 at entry) +0xc8 via base s0 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `sw` at 0x100363f8 stores 4 bytes to a0 (arg0 at entry) +0xcc via base s0 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `sw` at 0x100364a4 stores 4 bytes to a0 (arg0 at entry) +0x90 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10036554 stores 4 bytes to a0 (arg0 at entry) +0x6c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10036600 stores 4 bytes to a0 (arg0 at entry) +0x94 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x100366b0 stores 4 bytes to a0 (arg0 at entry) +0x70 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003675c stores 4 bytes to a0 (arg0 at entry) +0x98 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10036804 stores 4 bytes to a0 (arg0 at entry) +0x8c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x90 via base s0 (a0), including `lw` at 0x10036860, `lw` at 0x10036c94.
  The `sw` at 0x10036870 stores 4 bytes to a0 (arg0 at entry) +0xc4 via base s0 (a0).
  The `lw` at 0x10036884 loads 4 bytes from a0 (arg0 at entry) +0x34 via base s0 (a0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38 via base s0 (a0), including `lw` at 0x10036894, `lw` at 0x1003696c.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c via base s0 (a0), including `lw` at 0x1003697c, `lw` at 0x10036a54.
  The `lw` at 0x10036b20 loads 4 bytes from a0 (arg0 at entry) +0x30 via base s0 (a0).
  The 4 such `lw` accesses load 4 bytes from abs 0x10050c50 via base gp (0x100588fc), including `lw` at 0x10036be4, `lw` at 0x10036d00, `lw` at 0x10036d0c.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c via base s0 (a0), including `lw` at 0x10036c88, `lw` at 0x10036d38.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70 via base s0 (a0), including `lw` at 0x10036ca8, `lw` at 0x10036cd4.
  The `lw` at 0x10036cb4 loads 4 bytes from a0 (arg0 at entry) +0x94 via base s0 (a0).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x98 via base s0 (a0), including `lw` at 0x10036cc8, `lw` at 0x10036cf4.
  The `lw` at 0x10036ce8 loads 4 bytes from a0 (arg0 at entry) +0x8c via base s0 (a0).
  The 3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc4 via base s0 (a0), including `lw` at 0x10036d08, `lw` at 0x10036d18, `lw` at 0x10036d48.
  The `lw` at 0x10036dfc loads 4 bytes from abs 0x1005120c via base gp (0x100588fc).
  The `sw` at 0x10036e20 stores 4 bytes to a0 (arg0 at entry) +0x40 via base s0 (a0).
  The `sw` at 0x10036e28 stores 4 bytes to a0 (arg0 at entry) +0x40 via base s0 (a0) with value 0x0.
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base s0 (a0), including `lw` at 0x10036e50, `lw` at 0x10036e74.
  The `lw` at 0x10036f14 loads 4 bytes from abs 0x10050f84 via base gp (0x100588fc).
  The `jalr` at 0x10034ba0 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultChannelFormClassUIResources__18ChannelFormClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x10034bc4 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x10034bd8 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
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
  The `jalr` at 0x100358f0 calls __nw__GUi with a0=0x3c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10035918 calls __ct__17SyncSelectorFrameGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=0x100441a8, a2=[a0+96], a3=(unknown).
  The `jalr` at 0x10035944 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10035a38 calls XtVaCreateManagedWidget with a0=0x100441b8, a1=[sym(xmScrolledWindowWidgetClass)], a2=[a0+96], a3=-0x5a, a4=0x0, a5=-0x5b, a6=0x1, a7=-0x42.
  The `jalr` at 0x10035a78 calls XtVaCreateManagedWidget with a0=0x100441d0, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xc1, a6=0x1, a7=-0x16.
  The `jalr` at 0x10035a8c calls __nw__GUi with a0=0x3c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10035ab4 calls __ct__17SyncSelectorFrameGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=0x100441e8, a2=[a0+156], a3=(unknown).
  The `jalr` at 0x10035ae0 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10035af0 calls __nw__GUi with a0=0x3c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10035b18 calls __ct__17SyncSelectorFrameGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=0x10044200, a2=[a0+96], a3=(unknown).
  The `jalr` at 0x10035b44 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10035b54 calls __nw__GUi with a0=0x3c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10035b7c calls __ct__17SyncSelectorFrameGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=0x10044218, a2=[a0+96], a3=(unknown).
  The `jalr` at 0x10035ba8 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10035bb4 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10035c7c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x5, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x10035c88 calls baseWidget__11VkComponentCGv with a0=[a0+40], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10035d54 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x5, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x10035d60 calls baseWidget__11VkComponentCGv with a0=[a0+44], a1=(unknown), a2=(unknown), a3=(unknown).
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
  The `jalr` at 0x100361d4 calls __nw__GUi with a0=0x3c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100361fc calls __ct__16GainControlClassGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=0x10044270, a2=[a0+92], a3=(unknown).
  The `jalr` at 0x10036228 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10036238 calls __nw__GUi with a0=0x3c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10036260 calls __ct__16GainControlClassGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=0x10044280, a2=[a0+92], a3=(unknown).
  The `jalr` at 0x1003628c calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003629c calls __nw__GUi with a0=0x3c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100362c4 calls __ct__16GainControlClassGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=0x10044290, a2=[a0+92], a3=(unknown).
  The `jalr` at 0x100362f0 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10036300 calls __nw__GUi with a0=0x3c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10036328 calls __ct__16GainControlClassGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=0x100442a8, a2=[a0+92], a3=(unknown).
  The `jalr` at 0x10036354 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10036364 calls __nw__GUi with a0=0x4c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10036394 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+92], a2=0x100442b8, a3=0x0, a4=0x0.
  The `jalr` at 0x100363cc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=(unknown), a1=0x100442d0, a2=sym(doOptionBlankedCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100363f0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+192], a1=0x100442e0, a2=sym(doOptionNotBlankedCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003649c calls XtVaCreateManagedWidget with a0=0x100442f8, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x4, a7=-0x66.
  The `jalr` at 0x1003654c calls XtVaCreateManagedWidget with a0=0x10051520, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x100365f8 calls XtVaCreateManagedWidget with a0=0x10044308, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x4, a7=-0x66.
  The `jalr` at 0x100366a8 calls XtVaCreateManagedWidget with a0=0x10051528, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x10036754 calls XtVaCreateManagedWidget with a0=0x10044318, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x4, a7=-0x66.
  The `jalr` at 0x100367f8 calls XtVaCreateManagedWidget with a0=0x10051530, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x1003680c calls __nw__GUi with a0=0x4c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003683c calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+92], a2=0x10044330, a3=0x0, a4=0x0.
  The `jalr` at 0x10036874 calls XtVaSetValues with a0=[a0+80], a1=-0x76, a2=[a0+144], a3=-0xa5, a4=[a0+144], a5=0x0.
  The `jalr` at 0x10036880 calls baseWidget__11VkComponentCGv with a0=[a0+52], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10036890 calls baseWidget__11VkComponentCGv with a0=[a0+56], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003695c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x4, a3=-0x66, a4=0x5, a5=-0x46, a6=0x5, a7=-0x67.
  The `jalr` at 0x10036968 calls baseWidget__11VkComponentCGv with a0=[a0+56], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10036978 calls baseWidget__11VkComponentCGv with a0=[a0+60], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10036a44 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x4, a3=-0x66, a4=0x5, a5=-0x46, a6=0x5, a7=-0x67.
  The `jalr` at 0x10036a50 calls baseWidget__11VkComponentCGv with a0=[a0+60], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10036b10 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x5, a5=-0x46, a6=0x5, a7=-0x67.
  The `jalr` at 0x10036b1c calls baseWidget__11VkComponentCGv with a0=[a0+48], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10036bdc calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x5, a5=-0x46, a6=0x5, a7=-0x67.
  The `jalr` at 0x10036be8 calls baseWidget__10VkMenuItemCGv with a0=[a0+192], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10036c78 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x0, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x10036c98 calls XtVaSetValues with a0=[a0+144], a1=-0x76, a2=[a0+108], a3=-0xa5, a4=[a0+108], a5=0x0.
  The `jalr` at 0x10036cb8 calls XtVaSetValues with a0=[a0+148], a1=-0x76, a2=[a0+112], a3=-0xa5, a4=[a0+112], a5=0x0.
  The `jalr` at 0x10036cd8 calls XtVaSetValues with a0=[a0+112], a1=-0x76, a2=[a0+152], a3=-0xa5, a4=[a0+152], a5=0x0.
  The `jalr` at 0x10036cf8 calls XtVaSetValues with a0=[a0+152], a1=-0x76, a2=[a0+140], a3=-0xa5, a4=[a0+140], a5=0x0.
  The `jalr` at 0x10036d04 calls baseWidget__10VkMenuItemCGv with a0=[a0+196], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10036d14 calls baseWidget__10VkMenuItemCGv with a0=[a0+196], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10036d34 calls XtVaSetValues with a0=[a0+108], a1=-0x76, a2=ret(baseWidget__10VkMenuItemCGv), a3=-0xa5, a4=ret(baseWidget__10VkMenuItemCGv), a5=0x0.
  The `jalr` at 0x10036d44 calls baseWidget__10VkMenuItemCGv with a0=[a0+196], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10036dd4 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x0, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x10036de4 calls __nw__GUi with a0=0x164, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10036e0c calls __ct__19StatisticsFormClassGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=0x10044350, a2=[a0+16], a3=(unknown).
  The `jalr` at 0x10036e40 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10036e4c calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10036e64 calls XtVaSetValues with a0=[a0+92], a1=-0x116, a2=ret(baseWidget__11VkComponentCGv), a3=0x0.
  The `jalr` at 0x10036e70 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10036f0c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x1, a3=-0x66, a4=0x1, a5=-0x46, a6=0x0, a7=-0x67.
  The `jal` at 0x10036f18 calls createChannelChanger__18ChannelFormClassUIGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100358f8 goes to 0x10035930 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x10035a98 goes to 0x10035acc when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x10035afc goes to 0x10035b30 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x10035b5c goes to 0x10035b94 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x100361dc goes to 0x10036214 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x10036240 goes to 0x10036278 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x100362a4 goes to 0x100362dc when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x10036308 goes to 0x10036340 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x1003636c goes to 0x100363ac when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x10036814 goes to 0x10036854 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x10036dec goes to 0x10036e24 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x10036f2c has v0 = ret(createChannelChanger__18ChannelFormClassUIGv).

- `postInfoMessage__13ErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10037180 (n32).
  It occupies 132 bytes.
  The `lw` at 0x10037194 loads 4 bytes from abs 0x10050de0 via base gp (0x100588fc).
  The `lw` at 0x100371a8 loads 4 bytes from abs 0x10050b94 via base gp (0x100588fc).
  The `lw` at 0x100371b4 loads 4 bytes from ret(getTheInfoDialog__Gv) +0x8 via base v0 (ret(getTheInfoDialog__Gv)).
  The `lw` at 0x100371c4 loads 4 bytes from [ret(getTheInfoDialog__Gv)+8] +0x110 via base a0 ([ret(getTheInfoDialog__Gv)+8]).
  The `lw` at 0x100371d0 loads 4 bytes from [ret(getTheInfoDialog__Gv)+8] +0x108 via base a0 ([ret(getTheInfoDialog__Gv)+8]).
  The `lw` at 0x100371e4 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x100371a0 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100371ac calls getTheInfoDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100371dc calls (unknown callee) with a0=([[ret(getTheInfoDialog__Gv)+8]+264] + ret(getTheInfoDialog__Gv)), a1=ret(str__9strstreamGv), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x100371e8 calls __dl__GPv with a0=ret(str__9strstreamGv), a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100371fc has v0 = ret(__dl__GPv).

- `afterRealizeHook__21ServerInfoFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x10037220 (n32).
  It occupies 168 bytes.
  The 2 such `lw` accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x10037234, `lw` at 0x1003727c.
  The `lw` at 0x1003723c loads 4 bytes from sym(xsetmonApp) +0x0 via base at (sym(xsetmonApp)).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050d84 via base gp (0x100588fc), including `lw` at 0x10037240, `lw` at 0x10037284.
  The `lw` at 0x10037244 loads 4 bytes from [sym(xsetmonApp)] +0x138 via base at ([sym(xsetmonApp)]).
  The `lw` at 0x10037254 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base at ([[sym(xsetmonApp)]+312]).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050d88 via base gp (0x100588fc), including `lw` at 0x10037260, `lw` at 0x10037298.
  The `lw` at 0x10037268 loads 4 bytes from abs 0x10051108 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10 via base s0 (a0), including `lw` at 0x10037278, `lw` at 0x100372b0.
  The `lw` at 0x10037280 loads 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)).
  The `lw` at 0x10037288 loads 4 bytes from [sym(xsetmonApp)] +0x138 via base a0 ([sym(xsetmonApp)]).
  The `lw` at 0x10037294 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base a0 ([[sym(xsetmonApp)]+312]).
  The `lw` at 0x100372a0 loads 4 bytes from abs 0x1005107c via base gp (0x100588fc).
  The `jalr` at 0x10037258 calls XSGIvcSelectInput with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x4, a3=a3 at entry (arg3).
  The `jalr` at 0x10037274 calls XtAddEventHandler with a0=[a0+16], a1=0x4, a2=0x0, a3=sym(doLockStatusChangedHandler__21ServerInfoFormClassUISGP10_WidgetRecPvP7_XEventPc), a4=a0 at entry (arg0).
  The `jalr` at 0x10037290 calls XSGIvcSelectInput with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x2, a3=(unknown).
  The `jalr` at 0x100372ac calls XtAddEventHandler with a0=[a0+16], a1=0x2, a2=0x0, a3=sym(doInputSyncSourceNotifyHandler__21ServerInfoFormClassUISGP10_WidgetRecPvP7_XEventPc), a4=a0 at entry (arg0).
  The return at 0x100372c0 has v0 = ret(XtAddEventHandler).

- `__dt__29FormatCombinationListsClassUIGv` in `usr/bin/X11/xsetmon` at 0x100372d0 (n32).
  It occupies 108 bytes.
  The `lw` at 0x100372f8 loads 4 bytes from abs 0x10050b1c via base gp (0x100588fc).
  The `lw` at 0x100372fc loads 4 bytes from abs 0x10051290 via base gp (0x100588fc).
  The `sw` at 0x10037300 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__29FormatCombinationListsClassUI).
  The `lw` at 0x10037320 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x10037308 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10037324 calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100372f0 goes to 0x1003732c when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x10037318 goes to 0x10037330 when (v1(=a1) & 0x1) == 0 and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10037334 has v0 = unknown.

- `configureGain__16GainControlClassGiT1` in `usr/bin/X11/xsetmon` at 0x10037340 (n32).
  It occupies 224 bytes.
  The `sw` at 0x1003734c stores 4 bytes to a0 (arg0 at entry) +0x34 via base a0 (a0) with value a1.
  The `lw` at 0x1003735c loads 4 bytes from abs 0x1005131c via base gp (0x100588fc).
  The `sw` at 0x10037360 stores 4 bytes to a0 (arg0 at entry) +0x38 via base a0 (a0) with value a2.
  The `lw` at 0x10037364 loads 4 bytes from sym(xsetmonApp) +0x0 via base at (sym(xsetmonApp)).
  The `lw` at 0x10037368 loads 4 bytes from abs 0x10050cfc via base gp (0x100588fc).
  The `lw` at 0x10037374 loads 4 bytes from [sym(xsetmonApp)] +0x138 via base at ([sym(xsetmonApp)]).
  The `lw` at 0x10037384 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base at ([[sym(xsetmonApp)]+312]).
  The `ldc1` at 0x10037398 loads 8 bytes from abs 0x10051d88 via base gp (0x100588fc).
  The `lw` at 0x100373a4 loads 4 bytes from abs 0x10050bdc via base gp (0x100588fc).
  The `lw` at 0x100373bc loads 4 bytes from a0 (arg0 at entry) +0x24 via base s0 (a0).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b60 via base gp (0x100588fc), including `lw` at 0x100373d4, `lw` at 0x100373f8.
  The `lw` at 0x100373d8 loads 4 bytes from abs 0x1005091c via base gp (0x100588fc).
  The `lw` at 0x100373dc loads 4 bytes from abs 0x10050a50 via base gp (0x100588fc).
  The `lw` at 0x100373e8 loads 4 bytes from abs 0x10050c18 via base gp (0x100588fc).
  The `lw` at 0x100373f4 loads 4 bytes from a0 (arg0 at entry) +0x34 via base s0 (a0).
  The `lw` at 0x10037408 loads 4 bytes from abs 0x10050a40 via base gp (0x100588fc).
  The `lw` at 0x10037414 loads 4 bytes from abs 0x10050b30 via base gp (0x100588fc).
  The `jalr` at 0x10037388 calls XSGIvcQueryOutputGain with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=sp-32.
  The `jalr` at 0x100373b8 calls XtVaSetValues with a0=[a0+36], a1=-0x8, a2=(unknown), a3=0x0.
  The `jalr` at 0x100373e0 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10044f20, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100373f0 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=[a0+52], a2=(unknown), a3=(unknown).
  The `jalr` at 0x10037400 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051600, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003740c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10037418 calls exit with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10037390 goes to 0x100373d4 when v0(=ret(XSGIvcQueryOutputGain)) == 0 and falls through when v0(=ret(XSGIvcQueryOutputGain)) != 0.
  The return at 0x100373cc has v0 = ret(XtVaSetValues).

- `prepost__16AboutDialogClassGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow` in `usr/bin/X11/xsetmon` at 0x10037420 (n32).
  It occupies 52 bytes.
  The `lw` at 0x10037434 loads 4 bytes from abs 0x10050ad8 via base gp (0x100588fc).
  The `jalr` at 0x1003743c calls prepost__15VkDialogManagerGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003744c has v0 = ret(prepost__15VkDialogManagerGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow).

- `SG2applyChanges__21StatisticsFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10037460 (n32).
  It occupies 276 bytes.
  The `lw` at 0x1003747c loads 4 bytes from abs 0x100511f4 via base gp (0x100588fc).
  The 3 such `lw` accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x10037480, `lw` at 0x100374c4, `lw` at 0x100374d4.
  The `lw` at 0x10037490 loads 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050ca4 via base gp (0x100588fc), including `lw` at 0x10037498, `lw` at 0x100374b4.
  The `lw` at 0x100374a0 loads 4 bytes from a1 (arg1 at entry) +0x14c via base s0 (a1).
  The `lw` at 0x100374bc loads 4 bytes from a1 (arg1 at entry) +0x15c via base s0 (a1).
  The 2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0 via base s0 (sym(xsetmonApp)), including `lw` at 0x100374d8, `lw` at 0x10037500.
  The `lw` at 0x100374dc loads 4 bytes from abs 0x10050cc4 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138 via base a0 ([sym(xsetmonApp)]), including `lw` at 0x100374e4, `lw` at 0x10037508.
  The `lw` at 0x100374f8 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base a0 ([[sym(xsetmonApp)]+312]).
  The `lw` at 0x100374fc loads 4 bytes from abs 0x10050bfc via base gp (0x100588fc).
  The `lw` at 0x1003750c loads 4 bytes from abs 0x10050c6c via base gp (0x100588fc).
  The `lw` at 0x10037518 loads 4 bytes from abs 0x10050b68 via base gp (0x100588fc).
  The `lw` at 0x1003751c loads 4 bytes from abs 0x1005091c via base gp (0x100588fc).
  The `lw` at 0x10037530 loads 4 bytes from ret(getTheWarningDialog__Gv) +0x8 via base s0 (ret(getTheWarningDialog__Gv)).
  The `lw` at 0x10037540 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x110 via base a0 ([ret(getTheWarningDialog__Gv)+8]).
  The `lw` at 0x1003754c loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x108 via base a0 ([ret(getTheWarningDialog__Gv)+8]).
  The `jal` at 0x1003748c calls checkPriv__7xsetmonGv with a0=[sym(xsetmonApp)], a1=a1 at entry (arg1), a2=0x2149c, a3=a3 at entry (arg3).
  The `jalr` at 0x1003749c calls XmToggleButtonGetState with a0=[a1+332], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100374b8 calls XmToggleButtonGetState with a0=[a1+348], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100374f4 calls XSGIvcSetPlatformParameter with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=0x0, a4=sp-32, a5=0x4.
  The `jalr` at 0x10037504 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10037510 calls getTheWarningDialog__Gv with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10037528 calls VkGetResource__GPCcT1 with a0=0x10046eb8, a1=0x10046eb8, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10037558 calls (unknown callee) with a0=([[ret(getTheWarningDialog__Gv)+8]+264] + ret(getTheWarningDialog__Gv)), a1=ret(VkGetResource__GPCcT1), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` at 0x10037494 goes to 0x10037560 when v0(=ret(checkPriv__7xsetmonGv)) == 0 and falls through when v0(=ret(checkPriv__7xsetmonGv)) != 0.
  The `beq` at 0x100374a4 goes to 0x100374b4 when v0(=ret(XmToggleButtonGetState)) == 0 and falls through when v0(=ret(XmToggleButtonGetState)) != 0.
  The `beq` at 0x100374c0 goes to 0x100374d8 when v0(=ret(XmToggleButtonGetState)) == 0 and falls through when v0(=ret(XmToggleButtonGetState)) != 0.
  The return at 0x1003756c has v0 = unknown.

- `doHorizontalPhaseCallback__18ChannelFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10037580 (n32).
  It occupies 8 bytes.
  The return at 0x10037580 has v0 = unknown.

- `doLockStatusChangedHandler__21ServerInfoFormClassUISGP10_WidgetRecPvP7_XEventPc` in `usr/bin/X11/xsetmon` at 0x100375e0 (n32).
  It occupies 68 bytes.
  The `lw` at 0x100375e4 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a1 (a1).
  The `lw` at 0x100375f0 loads 4 bytes from [a1+8] +0xd8 via base v1 ([a1+8]).
  The `lw` at 0x100375fc loads 4 bytes from [a1+8] +0xe0 via base v1 ([a1+8]).
  The `jalr` at 0x1003760c calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2131c.
  The return at 0x1003761c has v0 = ret(unknown).

- `__ct__10GammaClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10037630 (n32).
  It occupies 72 bytes.
  The `lw` at 0x10037644 loads 4 bytes from abs 0x10050f48 via base gp (0x100588fc).
  The `lw` at 0x10037658 loads 4 bytes from abs 0x100512b0 via base gp (0x100588fc).
  The `sw` at 0x10037668 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__10GammaClass).
  The `jal` at 0x10037650 calls __ct__12GammaClassUIGPCcP10_WidgetRec with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10037670 has v0 = a0.

- `multRight__7MMatrixGRC7MMatrix` in `usr/bin/X11/xsetmon` at 0x10037680 (n32).
  It occupies 648 bytes.
  The instructions from 0x100377c8 to 0x100377cc are not reached by any path from the entry, and their branches are not listed.
  The 2 such `lw` accesses load 4 bytes from abs 0x10050fbc via base gp (0x100588fc), including `lw` at 0x10037694, `lw` at 0x100376b8.
  The `lw` at 0x100376e4 loads 4 bytes from abs 0x100510d8 via base gp (0x100588fc).
  The 4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0 via base s6 (a1), including `lw` at 0x1003770c, `lw` at 0x10037744, `lw` at 0x10037848.
  The 6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0 via base s2 (a0), including `lw` at 0x10037710, `lw` at 0x1003774c, `lw` at 0x1003778c.
  The `lw` at 0x10037714 loads 4 bytes from [a1] +0x0 via base v0 ([a1]).
  The `lw` at 0x10037718 loads 4 bytes from [a0] +0x4 via base v1 ([a0]).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050920 via base gp (0x100588fc), including `lw` at 0x10037720, `lw` at 0x100378ec.
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b4c via base gp (0x100588fc), including `lw` at 0x10037724, `lw` at 0x10037904.
  The `lw` at 0x10037748 loads 4 bytes from abs 0x1005101c via base gp (0x100588fc).
  The `lw` at 0x10037750 loads 4 bytes from [a1] +0x4 via base a2 ([a1]).
  The `lw` at 0x1003775c loads 4 bytes from [a0] +0x0 via base a1 ([a0]).
  The 2 such `lw` accesses load 4 bytes from [a0] +0x0 via base a0 ([a0]), including `lw` at 0x10037794, `lw` at 0x10037860.
  The `lw` at 0x100377a4 loads 4 bytes from unknown (base unknown) via base s4 (unknown).
  The `lw` at 0x100377ac loads 4 bytes from abs 0x10050918 via base gp (0x100588fc).
  The `swc1` at 0x100377d0 stores 4 bytes to unknown (base unknown) via base s4 (unknown) with value f20.
  The 2 such `lw` accesses load 4 bytes from [a0] +0x4 via base a0 ([a0]), including `lw` at 0x100377d8, `lw` at 0x10037834.
  The `lwc1` at 0x10037818 loads 4 bytes from ret(0x1002d620) +0x0 via base v0 (ret(0x1002d620)).
  The `lwc1` at 0x1003781c loads 4 bytes from ret(0x1002d620) +0x0 via base s3 (ret(0x1002d620)).
  The `lwc1` at 0x10037820 loads 4 bytes from unknown (base unknown) via base s4 (unknown).
  The `swc1` at 0x1003782c stores 4 bytes to unknown (base unknown) via base s4 (unknown).
  The `lw` at 0x1003784c loads 4 bytes from [a1] +0x4 via base ra ([a1]).
  The `lw` at 0x10037888 loads 4 bytes from [a1] +0x4 via base v0 ([a1]).
  The `lw` at 0x1003789c loads 4 bytes from abs 0x100510e0 via base gp (0x100588fc).
  The `sw` at 0x100378d8 stores 4 bytes to a0 (arg0 at entry) +0x0 via base s2 (a0).
  The `lw` at 0x100378e8 loads 4 bytes from abs 0x10050d10 via base gp (0x100588fc).
  The `jal` at 0x100376ac calls bIsIdentity__7MMatrixCGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100376d8 calls bIsIdentity__7MMatrixCGv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100376ec calls __as__7MMatrixGRC7MMatrix with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003772c calls __nw__GUi with a0=0x10, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10037758 calls __ct__9MMdtArrayGiT1 with a0=ret(__nw__GUi), a1=[[a0]], a2=[[a1]+4], a3=(unknown).
  The `jal` at 0x100377f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10037810 calls (unknown callee) with a0=a1 at entry (arg1), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003787c calls (unknown callee) with a0=a0 at entry (arg0), a1=(unknown), a2=0x0, a3=(unknown).
  The `jal` at 0x100378a0 calls __dt__9MMdtArrayGv with a0=[a0], a1=0x3, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100378f8 calls __assert with a0=0x10049508, a1=0x100494a0, a2=0x7f, a3=(unknown).
  The `beq` at 0x100376b4 goes to 0x100376d8 when v0(=ret(bIsIdentity__7MMatrixCGv)) == 0 and falls through when v0(=ret(bIsIdentity__7MMatrixCGv)) != 0.
  The `beq` at 0x100376e0 goes to 0x1003770c when v0(=ret(bIsIdentity__7MMatrixCGv)) == 0 and falls through when v0(=ret(bIsIdentity__7MMatrixCGv)) != 0.
  The `bne` at 0x1003771c goes to 0x100378e8 when v0(=[[a1]]) != v1(=[[a0]+4]) and falls through when v0(=[[a1]]) == v1(=[[a0]+4]).
  The `beq` at 0x10037734 goes to 0x10037774 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `blez` at 0x100377a0 goes to 0x1003789c when a4(=[[a0]]) <= 0 (signed) and falls through when a4(=[[a0]]) > 0 (signed).
  The `blez` at 0x100377dc goes to 0x10037848 when t8(=[[a0]+4]) <= 0 (signed) and falls through when t8(=[[a0]+4]) > 0 (signed).
  The `bne` at 0x10037840 goes to 0x100377f0 when s0(unknown) < t9(=[[a0]+4]) (signed) and falls through when s0(unknown) >= t9(=[[a0]+4]) (signed).
  The `bne` at 0x10037858 goes to 0x100377d0 when s5(unknown) < ra(=[[a1]+4]) (signed) and falls through when s5(unknown) >= ra(=[[a1]+4]) (signed).
  The `beq` at 0x1003786c goes to 0x1003789c when s7(unknown) >= at(=[[a0]]) (signed) and falls through when s7(unknown) < at(=[[a0]]) (signed).
  The `bgtz` at 0x1003788c goes to 0x100377d0 when v0(=[[a1]+4]) > 0 (signed) and falls through when v0(=[[a1]+4]) <= 0 (signed).
  The return at 0x100376d0 has v0 = a0.
  The return at 0x10037704 has v0 = ret(__as__7MMatrixGRC7MMatrix).
  The return at 0x100378e0 has v0 = a0.

- `__dt__21ServerInfoFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x10037910 (n32).
  It occupies 180 bytes.
  The `lw` at 0x10037934 loads 4 bytes from abs 0x100512d0 via base gp (0x100588fc).
  The `sw` at 0x10037938 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__21ServerInfoFormClassUI).
  The `lw` at 0x10037940 loads 4 bytes from a0 (arg0 at entry) +0x60 via base a0 (a0).
  The `lw` at 0x1003794c loads 4 bytes from [a0+96] +0x8 via base a3 ([a0+96]).
  The `lw` at 0x10037950 loads 4 bytes from [[a0+96]+8] +0x14 via base a0 ([[a0+96]+8]).
  The `lw` at 0x10037954 loads 4 bytes from [[a0+96]+8] +0xc via base a0 ([[a0+96]+8]).
  The `lw` at 0x10037968 loads 4 bytes from a0 (arg0 at entry) +0x64 via base a0 (a0).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b1c via base gp (0x100588fc), including `lw` at 0x10037970, `lw` at 0x10037990.
  The `lw` at 0x10037974 loads 4 bytes from [a0+100] +0x8 via base a3 ([a0+100]).
  The `lw` at 0x10037978 loads 4 bytes from [[a0+100]+8] +0x14 via base a0 ([[a0+100]+8]).
  The `lw` at 0x1003797c loads 4 bytes from [[a0+100]+8] +0xc via base a0 ([[a0+100]+8]).
  The `lw` at 0x100379a8 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x1003795c calls (unknown callee) with a0=([[[a0+96]+8]+12] + [a0+96]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+96].
  The `jalr` at 0x10037984 calls (unknown callee) with a0=([[[a0+100]+8]+12] + [a0+100]), a1=0x3, a2=(unknown), a3=[a0+100].
  The `jalr` at 0x10037994 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100379ac calls __dl__GPv with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10037928 goes to 0x100379b4 when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x10037944 goes to 0x10037968 when a3(=[a0+96]) == 0 and falls through when a3(=[a0+96]) != 0.
  The `beq` at 0x1003796c goes to 0x10037994 when a3(=[a0+100]) == 0 and falls through when a3(=[a0+100]) != 0.
  The `beq` at 0x100379a4 goes to 0x100379b4 when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  The return at 0x100379bc has v0 = unknown.

- `doToggleExternalLockCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10037a20 (n32).
  It occupies 68 bytes.
  The `lw` at 0x10037a24 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a1 (a1).
  The `lw` at 0x10037a30 loads 4 bytes from [a1+8] +0xcc via base v1 ([a1+8]).
  The `lw` at 0x10037a3c loads 4 bytes from [a1+8] +0xd4 via base v1 ([a1+8]).
  The `jalr` at 0x10037a4c calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20edc.
  The return at 0x10037a5c has v0 = ret(unknown).

- `doSetSCHPhase__16ChannelFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10037a70 (n32).
  It occupies 96 bytes.
  The `lw` at 0x10037a74 loads 4 bytes from a2 (arg2 at entry) +0x8 via base a2 (a2).
  The 2 such `lw` accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x10037a88, `lw` at 0x10037aac.
  The `lw` at 0x10037a8c loads 4 bytes from a0 (arg0 at entry) +0xd8 via base a0 (a0).
  The `lw` at 0x10037a90 loads 4 bytes from sym(xsetmonApp) +0x0 via base at (sym(xsetmonApp)).
  The `lw` at 0x10037a94 loads 4 bytes from abs 0x10050c08 via base gp (0x100588fc).
  The `lw` at 0x10037a98 loads 4 bytes from [sym(xsetmonApp)] +0x138 via base at ([sym(xsetmonApp)]).
  The `lw` at 0x10037aa0 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base at ([[sym(xsetmonApp)]+312]).
  The `lw` at 0x10037ab0 loads 4 bytes from abs 0x10050bfc via base gp (0x100588fc).
  The `lw` at 0x10037ab4 loads 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)).
  The `lw` at 0x10037abc loads 4 bytes from [sym(xsetmonApp)] +0x138 via base a0 ([sym(xsetmonApp)]).
  The `jalr` at 0x10037aa4 calls XSGIvcSetOutputPhaseSCH with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+216], a3=[a2+8].
  The `jalr` at 0x10037ab8 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x10037ac8 has v0 = ret(XFlush).

- `__ct__16ChannelFormClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10037ad0 (n32).
  It occupies 104 bytes.
  The `lw` at 0x10037ae4 loads 4 bytes from abs 0x10051010 via base gp (0x100588fc).
  The `lw` at 0x10037afc loads 4 bytes from abs 0x10051270 via base gp (0x100588fc).
  The `sw` at 0x10037b00 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a2 (a0) with value sym(__vtbl__16ChannelFormClass).
  The `lw` at 0x10037b08 loads 4 bytes from abs 0x10051014 via base gp (0x100588fc).
  The `sw` at 0x10037b0c stores 4 bytes to a0 (arg0 at entry) +0x100 via base a0 (a0) with value 0x0.
  The `sw` at 0x10037b14 stores 4 bytes to a0 (arg0 at entry) +0x104 via base v1 (a0) with value 0x0.
  The `jal` at 0x10037af0 calls __ct__18ChannelFormClassUIGPCcP10_WidgetRec with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10037b1c calls populateFormWithChannel__16ChannelFormClassGi with a0=a0 at entry (arg0), a1=0x0, a2=a0 at entry (arg0), a3=(unknown).
  The return at 0x10037b30 has v0 = a0.

- `vSplineFit__19GammaMapEditorClassCGiT1PCfT3Pf` in `usr/bin/X11/xsetmon` at 0x10037b40 (n32).
  It occupies 560 bytes.
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b90 via base gp (0x100588fc), including `lw` at 0x10037b6c, `lw` at 0x10037b90.
  The `ldc1` at 0x10037ba8 loads 8 bytes from abs 0x10051db0 via base gp (0x100588fc).
  The `swc1` at 0x10037bb8 stores 4 bytes to ret(__nwa__GUi) +0x0 via base v0 (ret(__nwa__GUi)).
  The `swc1` at 0x10037bc4 stores 4 bytes to ret(__nwa__GUi) +0x0 via base s0 (ret(__nwa__GUi)).
  The `ldc1` at 0x10037bc8 loads 8 bytes from abs 0x10051da0 via base gp (0x100588fc).
  The `ldc1` at 0x10037bd8 loads 8 bytes from abs 0x10051da8 via base gp (0x100588fc).
  The 9 such `lwc1` accesses load 4 bytes from unknown (base unknown) via base t0 (unknown), including `lwc1` at 0x10037bf0, `lwc1` at 0x10037bf4, `lwc1` at 0x10037bf8.
  The `lwc1` at 0x10037c08 loads 4 bytes from unknown (base unknown) via base t1 (unknown).
  The 2 such `swc1` accesses store 4 bytes to unknown (base unknown) via base t1 (unknown), including `swc1` at 0x10037c30, `swc1` at 0x10037d00.
  The 3 such `lwc1` accesses load 4 bytes from unknown (base unknown) via base a7 (unknown), including `lwc1` at 0x10037c38, `lwc1` at 0x10037c3c, `lwc1` at 0x10037c50.
  The 2 such `swc1` accesses store 4 bytes to unknown (base unknown) via base a6 (unknown), including `swc1` at 0x10037c68, `swc1` at 0x10037cb4.
  The 2 such `lwc1` accesses load 4 bytes from unknown (base unknown) via base a6 (unknown), including `lwc1` at 0x10037c88, `lwc1` at 0x10037d18.
  The `lwc1` at 0x10037cb8 loads 4 bytes from abs 0x10051dec via base gp (0x100588fc).
  The `lwc1` at 0x10037cc8 loads 4 bytes from unknown (base unknown) via base t2 (unknown).
  The `ldc1` at 0x10037cd4 loads 8 bytes from abs 0x10051db8 via base gp (0x100588fc).
  The `swc1` at 0x10037d0c stores 4 bytes to unknown (base unknown) via base t0 (unknown).
  The 2 such `lwc1` accesses load 4 bytes from unknown (base unknown) via base a3 (unknown), including `lwc1` at 0x10037d10, `lwc1` at 0x10037d14.
  The `swc1` at 0x10037d2c stores 4 bytes to unknown (base unknown) via base a4 (unknown).
  The `swc1` at 0x10037d38 stores 4 bytes to unknown (base unknown) via base a3 (unknown).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b98 via base gp (0x100588fc), including `lw` at 0x10037d3c, `lw` at 0x10037d50.
  The `jalr` at 0x10037b88 calls __nwa__GUi with a0=(unknown), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10037b98 calls __nwa__GUi with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10037d48 calls __dla__GPv with a0=ret(__nwa__GUi), a1=(unknown), a2=(unknown), a3=(unknown), a7=ret(__nwa__GUi)-4.
  The `jalr` at 0x10037d54 calls __dla__GPv with a0=ret(__nwa__GUi), a1=(unknown), a2=(unknown), a3=(unknown).
  The `blez` at 0x10037bc0 goes to 0x10037cb8 when a5(unknown) <= 0 (signed) and falls through when a5(unknown) > 0 (signed).
  The `bne` at 0x10037cb0 goes to 0x10037bf0 when t0(unknown) != t2(unknown) and falls through when t0(unknown) == t2(unknown).
  The `bltz` at 0x10037d08 goes to 0x10037d3c when a5(unknown) < 0 (signed) and falls through when a5(unknown) >= 0 (signed).
  The `bne` at 0x10037d34 goes to 0x10037d10 when a6(unknown) != a7(=ret(__nwa__GUi)-4) and falls through when a6(unknown) == a7(=ret(__nwa__GUi)-4).
  The return at 0x10037d68 has v0 = ret(__dla__GPv).

- `doLockStatusChanged__21ServerInfoFormClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10037d70 (n32).
  It occupies 8 bytes.
  The return at 0x10037d70 has v0 = unknown.

- `doOptionVideoVoltage__21ServerInfoFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10037d80 (n32).
  It occupies 8 bytes.
  The return at 0x10037d80 has v0 = unknown.

- `topWidget__12MyTabbedDeckGv` in `usr/bin/X11/xsetmon` at 0x10037d90 (n32).
  It occupies 8 bytes.
  The `lw` at 0x10037d94 loads 4 bytes from a0 (arg0 at entry) +0x28 via base a0 (a0).
  The return at 0x10037d90 has v0 = [a0+40].

- `RegisterSetmonMasterFormClassInterface__21SetmonMasterFormClassSGv` in `usr/bin/X11/xsetmon` at 0x10037da0 (n32).
  It occupies 24 bytes.
  The `lw` at 0x10037dac loads 4 bytes from abs 0x10050950 via base at (0x100588fc).
  The return at 0x10037db0 has v0 = 0x1004e4e8.

- `fbConfigSelected__29FormatCombinationListsClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10037dc0 (n32).
  It occupies 8 bytes.
  The return at 0x10037dc0 has v0 = unknown.

- `fbDepthSelected__29FormatCombinationListsClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10037dd0 (n32).
  It occupies 8 bytes.
  The return at 0x10037dd0 has v0 = unknown.

- `afterRealizeHook__7xsetmonGv` in `usr/bin/X11/xsetmon` at 0x10037e30 (n32).
  It occupies 236 bytes.
  The `lw` at 0x10037e44 loads 4 bytes from abs 0x1005131c via base gp (0x100588fc).
  The `lw` at 0x10037e48 loads 4 bytes from sym(xsetmonApp) +0x0 via base at (sym(xsetmonApp)).
  The `lbu` at 0x10037e4c loads 1 byte from [sym(xsetmonApp)] +0x94 via base at ([sym(xsetmonApp)]).
  The `lw` at 0x10037e60 loads 4 bytes from abs 0x10050b4c via base gp (0x100588fc).
  The `lw` at 0x10037e80 loads 4 bytes from abs 0x10050fe4 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x10037e84, `lw` at 0x10037ec0.
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b5c via base gp (0x100588fc), including `lw` at 0x10037ea0, `lw` at 0x10037ea8.
  The `sw` at 0x10037eb8 stores 4 bytes to a0 (arg0 at entry) +0x134 via base s0 (a0).
  The `lw` at 0x10037ebc loads 4 bytes from abs 0x10050b60 via base gp (0x100588fc).
  The `lw` at 0x10037ed0 loads 4 bytes from abs 0x10050a40 via base gp (0x100588fc).
  The `lw` at 0x10037edc loads 4 bytes from a0 (arg0 at entry) +0x134 via base s0 (a0).
  The `lw` at 0x10037ee0 loads 4 bytes from [a0+308] +0x4 via base a2 ([a0+308]).
  The `lw` at 0x10037ee4 loads 4 bytes from [[a0+308]+4] +0x44 via base a0 ([[a0+308]+4]).
  The `lw` at 0x10037ee8 loads 4 bytes from [[a0+308]+4] +0x3c via base a0 ([[a0+308]+4]).
  The `lw` at 0x10037ef8 loads 4 bytes from abs 0x10050a14 via base gp (0x100588fc).
  The `jalr` at 0x10037e68 calls __nw__GUi with a0=0x10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10037e8c calls __ct__22ScrollingErrorMessagerGPCc with a0=ret(__nw__GUi), a1=0x10043c18, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10037eb4 calls __ct__9strstreamGv with a0=sp-184, a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10037ec8 calls __ls__7ostreamGPCc with a0=sp-104, a1=0x10043c30, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10037ed4 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10037ef0 calls (unknown callee) with a0=([[[a0+308]+4]+60] + [a0+308]), a1=sp-184, a2=[a0+308], a3=(unknown).
  The `jalr` at 0x10037f00 calls __dt__9strstreamGv with a0=sp-184, a1=0x2, a2=(unknown), a3=(unknown).
  The `beq` at 0x10037e58 goes to 0x10037f08 when at(=[[sym(xsetmonApp)]+148]:1) == 0 and falls through when at(=[[sym(xsetmonApp)]+148]:1) != 0.
  The `beq` at 0x10037e74 goes to 0x10037ea4 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x10037f14 has v0 = unknown.

- `RegisterGammaClassInterface__10GammaClassSGv` in `usr/bin/X11/xsetmon` at 0x10037f20 (n32).
  It occupies 24 bytes.
  The `lw` at 0x10037f2c loads 4 bytes from abs 0x10050950 via base at (0x100588fc).
  The return at 0x10037f30 has v0 = 0x1004d950.

- `vListaccumBufTypes__27FormatCombinationListsClassGv` in `usr/bin/X11/xsetmon` at 0x10037f50 (n32).
  It occupies 468 bytes.
  The `lw` at 0x10037f64 loads 4 bytes from abs 0x10050cd0 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x10037f7c, `lw` at 0x10038058.
  The `sw` at 0x10037f84 stores 4 bytes to a0 (arg0 at entry) +0xe8 via base s0 (a0) with value -0x1.
  The `lw` at 0x10037f88 loads 4 bytes from sym(xsetmonApp) +0x0 via base a4 (sym(xsetmonApp)).
  The `lw` at 0x10037f8c loads 4 bytes from abs 0x10050bc0 via base gp (0x100588fc).
  The `lw` at 0x10037f94 loads 4 bytes from [sym(xsetmonApp)] +0x138 via base a4 ([sym(xsetmonApp)]).
  The `lw` at 0x10037fac loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base a0 ([[sym(xsetmonApp)]+312]).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b8c via base gp (0x100588fc), including `lw` at 0x10037fb4, `lw` at 0x10038008.
  The `lw` at 0x10037fbc loads 4 bytes from abs 0x10051af8 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b90 via base gp (0x100588fc), including `lw` at 0x10037fc0, `lw` at 0x10038014.
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b84 via base gp (0x100588fc), including `lw` at 0x10037fd0, `lw` at 0x10038020.
  The 2 such `lw` accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x10037fd4, `lw` at 0x10038024.
  The `lw` at 0x10037fe0 loads 4 bytes from abs 0x10051af8 via base s2 (0x10051af8).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050cdc via base gp (0x100588fc), including `lw` at 0x10037fec, `lw` at 0x1003803c.
  The 2 such `lw` accesses load 4 bytes from abs 0x10050b98 via base gp (0x100588fc), including `lw` at 0x10037ffc, `lw` at 0x1003804c.
  The 2 such `lw` accesses load 4 bytes from abs 0x10051afc via base s2 (0x10051af8), including `lw` at 0x10038010, `lw` at 0x10038030.
  The `lw` at 0x1003805c loads 4 bytes from sym(xsetmonApp) +0x0 via base v0 (sym(xsetmonApp)).
  The `lw` at 0x10038060 loads 4 bytes from [sym(xsetmonApp)] +0xf8 via base a5 ([sym(xsetmonApp)]).
  The 4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c via base s0 (a0), including `lw` at 0x10038064, `lw` at 0x1003809c, `lw` at 0x100380d0.
  The `lw` at 0x1003806c loads 4 bytes from abs 0x10050ce0 via base gp (0x100588fc).
  The `sw` at 0x10038074 stores 4 bytes to a0 (arg0 at entry) +0xe8 via base s0 (a0) with value [[sym(xsetmonApp)]+248]+1.
  The `lw` at 0x10038084 loads 4 bytes from table(0x10051af4) +0x0 via base a4 (table(0x10051af8)).
  The `sw` at 0x10038090 stores 4 bytes to a0 (arg0 at entry) +0xac via base s0 (a0) with value entry(0x10051af4).
  The `lw` at 0x10038094 loads 4 bytes from abs 0x10050ce4 via base gp (0x100588fc).
  The 2 such `lw` accesses load 4 bytes from abs 0x10050ce8 via base gp (0x100588fc), including `lw` at 0x100380a0, `lw` at 0x100380d4.
  The `lw` at 0x100380ac loads 4 bytes from abs 0x10050cec via base gp (0x100588fc).
  The `lw` at 0x100380b8 loads 4 bytes from abs 0x10050cf0 via base gp (0x100588fc).
  The `lw` at 0x100380e0 loads 4 bytes from a0 (arg0 at entry) +0xe8 via base s0 (a0).
  The `lw` at 0x100380e8 loads 4 bytes from abs 0x10050c64 via base gp (0x100588fc).
  The `lw` at 0x100380f8 loads 4 bytes from abs 0x10050aac via base gp (0x100588fc).
  The `jalr` at 0x10037f74 calls __ct__10VkNameListGv with a0=sp-64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10037fa8 calls XSGIvcQueryPlatformParameter with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=0x1, a4=[sym(xsetmonApp)]+244, a5=0x20.
  The `jalr` at 0x10037fb8 calls strlen with a0=[0x10051af8], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10037fc8 calls __nwa__GUi with a0=ret(strlen)+10, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10037fe4 calls sprintf with a0=ret(__nwa__GUi), a1=0x10044ac0, a2=[0x10051af8], a3=(unknown).
  The `jalr` at 0x10037ff4 calls add__10VkNameListGPc with a0=sp-64, a1=ret(__nwa__GUi), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10038000 calls __dla__GPv with a0=ret(__nwa__GUi), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003800c calls strlen with a0=[0x10051afc], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10038018 calls __nwa__GUi with a0=ret(strlen)+10, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10038034 calls sprintf with a0=ret(__nwa__GUi), a1=0x10044ac0, a2=[0x10051afc], a3=(unknown).
  The `jalr` at 0x10038044 calls add__10VkNameListGPc with a0=sp-64, a1=ret(__nwa__GUi), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10038050 calls __dla__GPv with a0=ret(__nwa__GUi), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003808c calls XtVaGetValues with a0=[a0+76], a1=-0x84, a2=sp-48, a3=0x0, a4=entry(0x10051af4), a5=[[sym(xsetmonApp)]+248]+1.
  The `jalr` at 0x10038098 calls XmListDeleteAllItems with a0=[a0+76], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100380a4 calls freeXmStringTable__10VkNameListSGPPUc with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100380b0 calls getXmStringTable__10VkNameListCGv with a0=sp-64, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100380cc calls XmListAddItems with a0=[a0+76], a1=ret(getXmStringTable__10VkNameListCGv), a2=(unknown), a3=0x1.
  The `jalr` at 0x100380d8 calls freeXmStringTable__10VkNameListSGPPUc with a0=ret(getXmStringTable__10VkNameListCGv), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100380f0 calls XmListSelectPos with a0=[a0+76], a1=[a0+232], a2=0x0, a3=(unknown).
  The `jalr` at 0x1003810c calls __dt__10VkNameListGv with a0=sp-64, a1=0x2, a2=(unknown), a3=(unknown).
  The `blez` at 0x100380e4 goes to 0x100380f8 when a1(=[a0+232]) <= 0 (signed) and falls through when a1(=[a0+232]) > 0 (signed).
  The return at 0x1003811c has v0 = ret(__dt__10VkNameListGv).
