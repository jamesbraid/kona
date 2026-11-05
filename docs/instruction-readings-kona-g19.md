# Instruction readings from hostfacts

These readings summarize selected memory accesses, calls, branches and returns from each routine body. Every instruction claim cites its address in the exact binary build. They describe software behavior, not hardware measurements.

Skipped routines: 7640 located, 12633 understood, and 8 no-software-dependency rows were excluded by status; 633 rows already had exact entries; 33145 eligible targets remain after this first 250.

- `rl_discard_argument` in `usr/gfx/KONA/bin/kpm` at 0x10047090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10047090-0x100470fc (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x100470b0 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x100470c4 loads 4 bytes from abs 0x1014c5ec.
  The `lw` at 0x100470d8 loads 4 bytes from abs 0x1014c4f4.
  The `jal` at 0x100470b4 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100470c8 calls rl_clear_message [0x10051990] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100470dc calls rl_init_argument [0x10047100] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x100470f4 has v0 = 0x0.
- `rl_init_argument` in `usr/gfx/KONA/bin/kpm` at 0x10047100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10047100-0x1004714c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10047118 loads 4 bytes from abs 0x1014c7c8.
  The `sw` at 0x1004711c stores 4 bytes to sym(rl_arg_sign) +0x0.
  The `lw` at 0x10047128 loads 4 bytes from abs 0x1014c7c4.
  The `sw` at 0x1004712c stores 4 bytes to sym(rl_numeric_arg) +0x0.
  The `lw` at 0x10047138 loads 4 bytes from abs 0x1014c8a0.
  The `sw` at 0x1004713c stores 4 bytes to sym(rl_explicit_arg) +0x0.
  The return at 0x10047144 has v0 = 0x0.
- `rl_universal_argument` in `usr/gfx/KONA/bin/kpm` at 0x10047150 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10047150-0x100471b4 (100 bytes).
  It occupies 100 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7c4, including `lw` at 0x10047170, `lw` at 0x10047184.
  The `lw` at 0x10047174 loads 4 bytes from sym(rl_numeric_arg) +0x0.
  The `sw` at 0x10047188 stores 4 bytes to sym(rl_numeric_arg) +0x0.
  The `lw` at 0x10047194 loads 4 bytes from abs 0x1014bfe8.
  The `jal` at 0x10047198 calls (unnamed) [0x10046d80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100471ac has v0 = ret(0x10046d80).
- `_rl_set_screen_size` in `usr/gfx/KONA/bin/kpm` at 0x10047210 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10047210-0x10047554 (836 bytes).
  It occupies 836 bytes.
  The `lw` at 0x10047248 loads 4 bytes from abs 0x1014c0c8.
  10 such `lw` accesses load 4 bytes from abs 0x1014c8ec, including `lw` at 0x1004726c, `lw` at 0x10047290, `lw` at 0x1004730c.
  5 such `sw` accesses store 4 bytes to sym(screenwidth) +0x0, including `sw` at 0x10047270, `sw` at 0x10047310, `sw` at 0x10047378.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8f0, including `lw` at 0x10047280, `lw` at 0x10047384, `lw` at 0x10047400.
  4 such `sw` accesses store 4 bytes to sym(screenheight) +0x0, including `sw` at 0x10047284, `sw` at 0x10047404, `sw` at 0x1004746c.
  5 such `lw` accesses load 4 bytes from sym(screenwidth) +0x0, including `lw` at 0x10047294, `lw` at 0x10047320, `lw` at 0x1004747c.
  4 such `lw` accesses load 4 bytes from abs 0x1014bfb4, including `lw` at 0x100472b4, `lw` at 0x1004734c, `lw` at 0x100473a8.
  2 such `lw` accesses load 4 bytes from abs 0x1014c19c, including `lw` at 0x100472c4, `lw` at 0x100473b8.
  2 such `lw` accesses load 4 bytes from abs 0x1014c0e4, including `lw` at 0x100472f4, `lw` at 0x100473e8.
  2 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10047334, `lw` at 0x10047428.
  2 such `lw` accesses load 4 bytes from abs 0x1024ac90, including `lw` at 0x10047338, `lw` at 0x1004742c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c248, including `lw` at 0x1004735c, `lw` at 0x10047450.
  4 such `lw` accesses load 4 bytes from sym(screenheight) +0x0, including `lw` at 0x10047388, `lw` at 0x10047414, `lw` at 0x100474ac.
  The `lw` at 0x100474d4 loads 4 bytes from abs 0x1014c8e8.
  The `lw` at 0x100474d8 loads 4 bytes from sym(term_xn) +0x0.
  The `lw` at 0x10047538 loads 4 bytes from abs 0x1014c8f4.
  The `sw` at 0x1004753c stores 4 bytes to sym(screenchars) +0x0.
  The `jalr` at 0x1004724c calls ioctl with a0=a0 at entry (arg0), a1=0x40087468, a2=sp-64, a3=a3 at entry (arg3).
  The `jalr` at 0x100472c8 calls getenv with a0=0x10092af0, a1=?, a2=?, a3=?, a7=[sym(screenwidth)].
  The `jalr` at 0x100472f8 calls atoi with a0=ret(getenv), a1=ret(getenv), a2=?, a3=?.
  The `jalr` at 0x10047360 calls tgetnum with a0=0x10092af8, a1=?, a2=?, a3=?.
  The `jalr` at 0x100473bc calls getenv with a0=0x10092b00, a1=?, a2=[sym(screenheight)], a3=a1 at entry (arg1).
  The `jalr` at 0x100473ec calls atoi with a0=ret(getenv), a1=ret(getenv), a2=?, a3=?.
  The `jalr` at 0x10047454 calls tgetnum with a0=0x10092b08, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10047258 targets 0x10047288, is taken when v0(=ret(ioctl)) != 0, and falls through when v0(=ret(ioctl)) == 0.
  The `bgtz` branch at 0x10047298 targets 0x1004737c, is taken when a7(=[sym(screenwidth)]) > 0 (signed), and falls through when a7(=[sym(screenwidth)]) <= 0 (signed).
  The `bne` branch at 0x100472a4 targets 0x10047314, is taken when t0(=a1) != 0, and falls through when t0(=a1) == 0.
  The `beq` branch at 0x100472e0 targets 0x10047314, is taken when a1(=ret(getenv)) == 0, and falls through when a1(=ret(getenv)) != 0.
  The `bgtz` branch at 0x10047324 targets 0x1004737c, is taken when at(=[sym(screenwidth)]) > 0 (signed), and falls through when at(=[sym(screenwidth)]) <= 0 (signed).
  The `beq` branch at 0x1004733c targets 0x1004737c, is taken when v0(=[0x1024ac90]) == 0, and falls through when v0(=[0x1024ac90]) != 0.
  The `bgtz` branch at 0x1004738c targets 0x10047470, is taken when a2(=[sym(screenheight)]) > 0 (signed), and falls through when a2(=[sym(screenheight)]) <= 0 (signed).
  The `bne` branch at 0x10047398 targets 0x10047408, is taken when a3(=a1) != 0, and falls through when a3(=a1) == 0.
  The `beq` branch at 0x100473d4 targets 0x10047408, is taken when a1(=ret(getenv)) == 0, and falls through when a1(=ret(getenv)) != 0.
  The `bgtz` branch at 0x10047418 targets 0x10047470, is taken when at(=[sym(screenheight)]) > 0 (signed), and falls through when at(=[sym(screenheight)]) <= 0 (signed).
  The `beq` branch at 0x10047430 targets 0x10047470, is taken when v0(=[0x1024ac90]) == 0, and falls through when v0(=[0x1024ac90]) != 0.
  The `beq` branch at 0x10047484 targets 0x100474a0, is taken when a2(=[sym(screenwidth)]) >= 0x2 (signed), and falls through when a2(=[sym(screenwidth)]) < 0x2 (signed).
  The `bgtz` branch at 0x100474b0 targets 0x100474cc, is taken when a5(=[sym(screenheight)]) > 0 (signed), and falls through when a5(=[sym(screenheight)]) <= 0 (signed).
  The `bne` branch at 0x100474dc targets 0x10047508, is taken when t0(=[sym(term_xn)]) != 0, and falls through when t0(=[sym(term_xn)]) == 0.
  The return at 0x1004754c has v0 = ?.
- `rl_get_termcap` in `usr/gfx/KONA/bin/kpm` at 0x10047e30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10047e30-0x10047f64 (308 bytes).
  It occupies 308 bytes.
  The `lw` at 0x10047e54 loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x10047e58 loads 4 bytes from abs 0x1024ac94.
  3 such `lw` accesses load 4 bytes from abs 0x1014bfb8, including `lw` at 0x10047e8c, `lw` at 0x10047ec0, `lw` at 0x10047f00.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10047ea0, `lw` at 0x10047ed4.
  The `lbu` at 0x10047ea4 loads 1 byte from ?.
  The `lbu` at 0x10047eac loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x10047ee4 loads 4 bytes from abs 0x1014c150.
  The `lw` at 0x10047f14 loads 4 bytes from table(0x10148f7c) +0x0.
  The `lw` at 0x10047f18 loads 4 bytes from entry(0x10148f7c) +0x0.
  The `jalr` at 0x10047ee8 calls strcmp with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `bne` branch at 0x10047e5c targets 0x10047e70, is taken when at(=[0x1024ac94]) != 0, and falls through when at(=[0x1024ac94]) == 0.
  The `beq` branch at 0x10047e68 targets 0x10047f4c and is always taken.
  The `beq` branch at 0x10047e7c targets 0x10047f44 and is never taken: its operands are equal constants, so execution always falls through.
  The `bne` branch at 0x10047eb0 targets 0x10047f28, is taken when a0(?) != a1(=[a0]:1), and falls through when a0(?) == a1(=[a0]:1).
  The `bne` branch at 0x10047ef0 targets 0x10047f28, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x10047f20 targets 0x10047f4c and is always taken.
  The `bne` branch at 0x10047f3c targets 0x10047e84, is taken when a2(?) < 0x15 (unsigned), and falls through when a2(?) >= 0x15 (unsigned).
  The return at 0x10047f5c has v0 = one of 0x0, [entry(0x10148f7c)].
- `_rl_output_character_function` in `usr/gfx/KONA/bin/kpm` at 0x10047f70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10047f70-0x100480cc (348 bytes).
  It occupies 348 bytes.
  The `lw` at 0x10047f94 loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x10047f98 loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  8 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10047fb0, `lw` at 0x10047fe4, `lw` at 0x10047ffc.
  8 such `lw` accesses load 4 bytes from abs 0x1024aa0c, including `lw` at 0x10047fb4, `lw` at 0x10047fe8, `lw` at 0x10048000.
  The `lw` at 0x10047fc0 loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [0x1024aa0c] +0x0, including `lw` at 0x10047fec, `lw` at 0x10048018.
  The `sw` at 0x10048004 stores 4 bytes to [0x1024aa0c] +0x0.
  The `lw` at 0x10048040 loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [0x1024aa0c] +0x4, including `lw` at 0x1004806c, `lw` at 0x100480a0.
  The `sw` at 0x10048084 stores 4 bytes to [0x1024aa0c] +0x4.
  The `sb` at 0x100480a4 stores 1 byte to [[0x1024aa0c]+4] -0x1.
  The `jalr` at 0x10047fc4 calls __semputc with a0=a0 at entry (arg0), a1=[0x1024aa0c], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10048044 calls __flsbuf with a0=a0 at entry (arg0), a1=[0x1024aa0c], a2=a2 at entry (arg2), a3=[[0x1024aa0c]], a4=[[0x1024aa0c]]-1, a5=[0x1024aa0c].
  The `beq` branch at 0x10047f9c targets 0x10047fdc, is taken when at(=[sym(__us_rsthread_stdio)]) == 0, and falls through when at(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x10047fd4 targets 0x100480b4 and is always taken.
  The `bgez` branch at 0x1004801c targets 0x1004805c, is taken when a3(=[[0x1024aa0c]]) >= 0 (signed), and falls through when a3(=[[0x1024aa0c]]) < 0 (signed).
  The `beq` branch at 0x10048054 targets 0x100480ac and is always taken.
  The return at 0x100480c4 has v0 = one of ret(__semputc), ?.
- `_rl_output_some_chars` in `usr/gfx/KONA/bin/kpm` at 0x100480d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100480d0-0x10048134 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x10048104 loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x10048108 loads 4 bytes from abs 0x1024aa0c.
  The `lw` at 0x10048114 loads 4 bytes from abs 0x1014c180.
  The `jalr` at 0x10048118 calls fwrite with a0=a0 at entry (arg0), a1=0x1, a2=a1 at entry (arg1), a3=[0x1024aa0c], a4=0x10bbf0.
  The return at 0x1004812c has v0 = ret(fwrite).
- `backspace` in `usr/gfx/KONA/bin/kpm` at 0x10048140 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048140-0x1004835c (540 bytes).
  It occupies 540 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c91c, including `lw` at 0x10048164, `lw` at 0x10048194.
  2 such `lw` accesses load 4 bytes from sym(term_backspace) +0x0, including `lw` at 0x10048168, `lw` at 0x10048198.
  The `lw` at 0x100481a8 loads 4 bytes from abs 0x1014c500.
  The `lw` at 0x100481b4 loads 4 bytes from abs 0x1014c258.
  The `lw` at 0x10048208 loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x1004820c loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  8 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10048224, `lw` at 0x10048258, `lw` at 0x10048270.
  8 such `lw` accesses load 4 bytes from abs 0x1024aa0c, including `lw` at 0x10048228, `lw` at 0x1004825c, `lw` at 0x10048274.
  The `lw` at 0x10048234 loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [0x1024aa0c] +0x0, including `lw` at 0x10048260, `lw` at 0x1004828c.
  The `sw` at 0x10048278 stores 4 bytes to [0x1024aa0c] +0x0.
  The `lw` at 0x100482b4 loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [0x1024aa0c] +0x4, including `lw` at 0x100482e0, `lw` at 0x10048310.
  The `sw` at 0x100482f8 stores 4 bytes to [0x1024aa0c] +0x4.
  The `sb` at 0x10048314 stores 1 byte to [[0x1024aa0c]+4] -0x1.
  The `jalr` at 0x100481b8 calls tputs with a0=[sym(term_backspace)], a1=0x1, a2=sym(_rl_output_character_function), a3=?.
  The `jalr` at 0x10048238 calls __semputc with a0=0x8, a1=[0x1024aa0c], a2=?, a3=?, a6=[sym(__us_rsthread_stdio)].
  The `jalr` at 0x100482b8 calls __flsbuf with a0=0x8, a1=[0x1024aa0c], a2=?, a3=[[0x1024aa0c]], a4=[[0x1024aa0c]]-1, a5=[0x1024aa0c], a6=[sym(__us_rsthread_stdio)].
  The `beq` branch at 0x1004816c targets 0x100481e8, is taken when at(=[sym(term_backspace)]) == 0, and falls through when at(=[sym(term_backspace)]) != 0.
  The `beq` branch at 0x10048184 targets 0x100481e0, is taken when v1(=0x0) >= a0 (signed), and falls through when v1(=0x0) < a0 (signed).
  The `bne` branch at 0x100481d8 targets 0x1004818c, is taken when a1(?) < a2(=a0) (signed), and falls through when a1(?) >= a2(=a0) (signed).
  The `beq` branch at 0x100481e0 targets 0x10048344 and is always taken.
  The `beq` branch at 0x100481f8 targets 0x10048344, is taken when a4(=0x0) >= a5(=a0) (signed), and falls through when a4(=0x0) < a5(=a0) (signed).
  The `beq` branch at 0x10048210 targets 0x10048250, is taken when a6(=[sym(__us_rsthread_stdio)]) == 0, and falls through when a6(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x10048248 targets 0x10048324 and is always taken.
  The `bgez` branch at 0x10048290 targets 0x100482d0, is taken when a3(=[[0x1024aa0c]]) >= 0 (signed), and falls through when a3(=[[0x1024aa0c]]) < 0 (signed).
  The `beq` branch at 0x100482c8 targets 0x1004831c and is always taken.
  The `bne` branch at 0x1004833c targets 0x10048200, is taken when a7(?) < t0(=a0) (signed), and falls through when a7(?) >= t0(=a0) (signed).
  The return at 0x10048354 has v0 = 0x0.
- `crlf` in `usr/gfx/KONA/bin/kpm` at 0x10048360 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048360-0x100484b4 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0x10048380 loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x10048384 loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  8 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x1004839c, `lw` at 0x100483d0, `lw` at 0x100483e8.
  8 such `lw` accesses load 4 bytes from abs 0x1024aa0c, including `lw` at 0x100483a0, `lw` at 0x100483d4, `lw` at 0x100483ec.
  The `lw` at 0x100483ac loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [0x1024aa0c] +0x0, including `lw` at 0x100483d8, `lw` at 0x10048404.
  The `sw` at 0x100483f0 stores 4 bytes to [0x1024aa0c] +0x0.
  The `lw` at 0x1004842c loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [0x1024aa0c] +0x4, including `lw` at 0x10048458, `lw` at 0x10048488.
  The `sw` at 0x10048470 stores 4 bytes to [0x1024aa0c] +0x4.
  The `sb` at 0x1004848c stores 1 byte to [[0x1024aa0c]+4] -0x1.
  The `jalr` at 0x100483b0 calls __semputc with a0=0xa, a1=[0x1024aa0c], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10048430 calls __flsbuf with a0=0xa, a1=[0x1024aa0c], a2=a2 at entry (arg2), a3=[[0x1024aa0c]], a4=[[0x1024aa0c]]-1, a5=[0x1024aa0c].
  The `beq` branch at 0x10048388 targets 0x100483c8, is taken when at(=[sym(__us_rsthread_stdio)]) == 0, and falls through when at(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x100483c0 targets 0x1004849c and is always taken.
  The `bgez` branch at 0x10048408 targets 0x10048448, is taken when a3(=[[0x1024aa0c]]) >= 0 (signed), and falls through when a3(=[[0x1024aa0c]]) < 0 (signed).
  The `beq` branch at 0x10048440 targets 0x10048494 and is always taken.
  The return at 0x100484ac has v0 = 0x0.
- `rl_tty_status` in `usr/gfx/KONA/bin/kpm` at 0x100484c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100484c0-0x1004850c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x100484e8 loads 4 bytes from abs 0x1014c514.
  The `jal` at 0x100484ec calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10048504 has v0 = 0x0.
- `alphabetic` in `usr/gfx/KONA/bin/kpm` at 0x10048510 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048510-0x100485e4 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0x10048534 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x10048538 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004854c loads 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4.
  The `lw` at 0x10048574 loads 4 bytes from abs 0x1014c96c.
  The `lw` at 0x10048578 loads 4 bytes from sym(allow_pathname_alphabetic_chars) +0x0.
  The `lw` at 0x1004858c loads 4 bytes from abs 0x1014c7dc.
  The `lw` at 0x10048590 loads 4 bytes from sym(pathname_alphabetic_chars) +0x0.
  The `lw` at 0x100485a0 loads 4 bytes from abs 0x1014c200.
  The `jalr` at 0x100485a4 calls strchr with a0=[sym(pathname_alphabetic_chars)], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10048554 targets 0x1004856c, is taken when (at(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x7) == 0, and falls through when (at(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x7) != 0.
  The `beq` branch at 0x10048564 targets 0x100485cc and is always taken.
  The `beq` branch at 0x1004857c targets 0x100485bc, is taken when a0(=[sym(allow_pathname_alphabetic_chars)]) == 0, and falls through when a0(=[sym(allow_pathname_alphabetic_chars)]) != 0.
  The `beq` branch at 0x100485b4 targets 0x100485cc and is always taken.
  The `beq` branch at 0x100485c4 targets 0x100485cc and is always taken.
  The return at 0x100485dc has v0 = one of 0x1, ?, 0x0.
- `ding` in `usr/gfx/KONA/bin/kpm` at 0x100485f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100485f0-0x10048744 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0x10048610 loads 4 bytes from abs 0x1014c7cc.
  The `lw` at 0x10048614 loads 4 bytes from sym(readline_echoing_p) +0x0.
  The `lw` at 0x10048628 loads 4 bytes from abs 0x1014c7d4.
  The `lw` at 0x1004862c loads 4 bytes from sym(_rl_bell_preference) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c944, including `lw` at 0x10048660, `lw` at 0x10048678.
  2 such `lw` accesses load 4 bytes from sym(visible_bell) +0x0, including `lw` at 0x10048664, `lw` at 0x1004867c.
  The `lw` at 0x1004868c loads 4 bytes from abs 0x1014c500.
  The `lw` at 0x10048698 loads 4 bytes from abs 0x1014c258.
  2 such `lw` accesses load 4 bytes from abs 0x1014c15c, including `lw` at 0x100486b4, `lw` at 0x100486e8.
  The `lw` at 0x100486c4 loads 4 bytes from abs 0x1014bfb4.
  The `lw` at 0x100486d4 loads 4 bytes from abs 0x1014c128.
  The `lw` at 0x100486f8 loads 4 bytes from abs 0x1014c140.
  The `jalr` at 0x1004869c calls tputs with a0=[sym(visible_bell)], a1=0x1, a2=sym(_rl_output_character_function), a3=a3 at entry (arg3).
  The `jalr` at 0x100486d8 calls fprintf with a0=sym(__iob)+32, a1=0x10092b34, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0x100486fc calls fflush with a0=sym(__iob)+32, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10048618 targets 0x10048720, is taken when at(=[sym(readline_echoing_p)]) == 0, and falls through when at(=[sym(readline_echoing_p)]) != 0.
  The `beq` branch at 0x10048638 targets 0x10048658, is taken when v1(=[sym(_rl_bell_preference)]) == a0(=0x2), and falls through when v1(=[sym(_rl_bell_preference)]) != a0(=0x2).
  The `beq` branch at 0x10048648 targets 0x100486ac, is taken when a0(=[sym(_rl_bell_preference)]) == a1(=0x1), and falls through when a0(=[sym(_rl_bell_preference)]) != a1(=0x1).
  The `beq` branch at 0x10048650 targets 0x1004870c and is always taken.
  The `beq` branch at 0x10048668 targets 0x100486ac, is taken when a2(=[sym(visible_bell)]) == 0, and falls through when a2(=[sym(visible_bell)]) != 0.
  The `beq` branch at 0x100486a4 targets 0x10048714 and is always taken.
  The `beq` branch at 0x10048704 targets 0x10048714 and is always taken.
  The `beq` branch at 0x1004870c targets 0x10048714 and is always taken.
  The `beq` branch at 0x10048718 targets 0x1004872c and is always taken.
  The return at 0x1004873c has v0 = one of -0x1, 0x0.
- `rl_abort` in `usr/gfx/KONA/bin/kpm` at 0x10048750 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048750-0x10048854 (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0x10048770 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x10048784 loads 4 bytes from abs 0x1014c5ec.
  The `lw` at 0x10048798 loads 4 bytes from abs 0x1014c4f4.
  The `lw` at 0x100487ac loads 4 bytes from abs 0x1014c8d0.
  The `sw` at 0x100487b0 stores 4 bytes to sym(rl_pending_input) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x100487bc, `lw` at 0x100487cc, `lw` at 0x100487f8.
  The `sw` at 0x100487c0 stores 4 bytes to abs 0x1024aa58.
  2 such `lw` accesses load 4 bytes from abs 0x1024ac74, including `lw` at 0x100487d0, `lw` at 0x100487fc.
  The `lw` at 0x100487e4 loads 4 bytes from abs 0x1014bfcc.
  The `lw` at 0x10048810 loads 4 bytes from abs 0x1014c8b4.
  The `sw` at 0x10048814 stores 4 bytes to sym(rl_last_func) +0x0.
  The `lw` at 0x10048834 loads 4 bytes from abs 0x1014c25c.
  The `jal` at 0x10048774 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10048788 calls rl_clear_message [0x10051990] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004879c calls rl_init_argument [0x10047100] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100487e8 calls (unnamed) [0x10045d90] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10048838 calls longjmp with a0=0x1024a928, a1=0x1, a2=?, a3=?.
  The `beq` branch at 0x100487d4 targets 0x10048808, is taken when ra(=[0x1024ac74]) == 0, and falls through when ra(=[0x1024ac74]) != 0.
  The `bne` branch at 0x10048800 targets 0x100487dc, is taken when ra(=[0x1024ac74]) != 0, and falls through when ra(=[0x1024ac74]) == 0.
  The return at 0x1004884c has v0 = ret(longjmp).
- `rl_copy_text` in `usr/gfx/KONA/bin/kpm` at 0x10048860 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048860-0x10048938 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0x100488cc loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x100488ec loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x100488f0 loads 4 bytes from abs 0x1024aa28.
  The `lw` at 0x10048904 loads 4 bytes from abs 0x1014c20c.
  The `sb` at 0x1004891c stores 1 byte to ?.
  The `jal` at 0x100488d0 calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0x10048908 calls strncpy with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004888c targets 0x100488ac, is taken when at(=a1) >= v0(=a0) (signed), and falls through when at(=a1) < v0(=a0) (signed).
  The return at 0x10048930 has v0 = ?.
- `rl_extend_line_buffer` in `usr/gfx/KONA/bin/kpm` at 0x10048940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048940-0x10048a38 (248 bytes).
  It occupies 248 bytes.
  5 such `lw` accesses load 4 bytes from abs 0x1014c8e4, including `lw` at 0x10048964, `lw` at 0x10048984, `lw` at 0x10048998.
  4 such `lw` accesses load 4 bytes from sym(rl_line_buffer_len) +0x0, including `lw` at 0x10048968, `lw` at 0x10048988, `lw` at 0x100489bc.
  The `sw` at 0x1004899c stores 4 bytes to sym(rl_line_buffer_len) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x100489a8, `lw` at 0x100489dc, `lw` at 0x10048a0c.
  2 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x100489ac, `lw` at 0x10048a10.
  The `lw` at 0x100489c8 loads 4 bytes from abs 0x1014c6e8.
  The `sw` at 0x100489e0 stores 4 bytes to sym(rl_line_buffer) +0x0.
  The `lw` at 0x10048a1c loads 4 bytes from abs 0x1014bfb0.
  The `sw` at 0x10048a20 stores 4 bytes to abs 0x1024aa28.
  The `jal` at 0x100489cc calls xrealloc [0x100619d0] with a0=[sym(rl_line_buffer)], a1=[sym(rl_line_buffer_len)], a2=sym(rl_line_buffer_len), a3=?.
  The `bne` branch at 0x10048974 targets 0x10048a04, is taken when at(=a0) < v0(=[sym(rl_line_buffer_len)]) (signed), and falls through when at(=a0) >= v0(=[sym(rl_line_buffer_len)]) (signed).
  The `beq` branch at 0x100489fc targets 0x1004897c, is taken when a2(=a0) >= a3(=[sym(rl_line_buffer_len)]) (signed), and falls through when a2(=a0) < a3(=[sym(rl_line_buffer_len)]) (signed).
  The return at 0x10048a30 has v0 = one of [sym(rl_line_buffer_len)], ret(xrealloc).
- `rl_insert_text` in `usr/gfx/KONA/bin/kpm` at 0x10048a40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048a40-0x10048d84 (836 bytes).
  It occupies 836 bytes.
  The `lw` at 0x10048a68 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x10048a80 loads 4 bytes from abs 0x1014c8e4.
  The `lw` at 0x10048a84 loads 4 bytes from sym(rl_line_buffer_len) +0x0.
  6 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10048a90, `lw` at 0x10048ab4, `lw` at 0x10048ae0.
  5 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10048a94, `lw` at 0x10048ab8, `lw` at 0x10048ae4.
  The `lw` at 0x10048acc loads 4 bytes from abs 0x1014c520.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10048af4, `lw` at 0x10048b60, `lw` at 0x10048b80.
  7 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10048af8, `lw` at 0x10048b64, `lw` at 0x10048b84.
  5 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10048b18, `lw` at 0x10048b30, `lw` at 0x10048b90.
  4 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x10048b1c, `lw` at 0x10048b34, `lw` at 0x10048b94.
  The `lbu` at 0x10048b24 loads 1 byte from ?.
  The `sb` at 0x10048b48 stores 1 byte to ?.
  The `lw` at 0x10048bac loads 4 bytes from abs 0x1014c20c.
  The `lw` at 0x10048bc4 loads 4 bytes from abs 0x1024aa60.
  7 such `lw` accesses load 4 bytes from abs 0x1014c970, including `lw` at 0x10048be8, `lw` at 0x10048c00, `lw` at 0x10048c30.
  7 such `lw` accesses load 4 bytes from sym(rl_undo_list) +0x0, including `lw` at 0x10048bec, `lw` at 0x10048c04, `lw` at 0x10048c34.
  The `lw` at 0x10048c08 loads 4 bytes from [sym(rl_undo_list)] +0x10.
  3 such `lw` accesses load 4 bytes from [sym(rl_undo_list)] +0x8, including `lw` at 0x10048c38, `lw` at 0x10048c54, `lw` at 0x10048c8c.
  The `lw` at 0x10048c68 loads 4 bytes from [sym(rl_undo_list)] +0x4.
  The `sw` at 0x10048ca4 stores 4 bytes to [sym(rl_undo_list)] +0x8.
  The `lw` at 0x10048ce8 loads 4 bytes from abs 0x1014c568.
  The `sw` at 0x10048d18 stores 4 bytes to sym(rl_point) +0x0.
  The `sw` at 0x10048d40 stores 4 bytes to sym(rl_end) +0x0.
  The `sb` at 0x10048d68 stores 1 byte to ([sym(rl_end)] + [0x1024aa28]) +0x0.
  The `jalr` at 0x10048a6c calls strlen with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10048ad0 calls rl_extend_line_buffer [0x10048940] with a0=([sym(rl_end)] + ret(strlen)), a1=ret(strlen), a2=?, a3=?.
  The `jalr` at 0x10048bb0 calls strncpy with a0=([sym(rl_point)] + [0x1024aa28]), a1=a0 at entry (arg0), a2=?, a3=[sym(rl_end)].
  The `jal` at 0x10048cec calls rl_add_undo [0x1004b990] with a0=0x1, a1=[sym(rl_point)], a2=?, a3=0x0.
  The `bne` branch at 0x10048aa4 targets 0x10048ad8, is taken when at(=([sym(rl_end)] + ret(strlen))) < v0(=[sym(rl_line_buffer_len)]) (signed), and falls through when at(=([sym(rl_end)] + ret(strlen))) >= v0(=[sym(rl_line_buffer_len)]) (signed).
  The `bne` branch at 0x10048b04 targets 0x10048b78, is taken when a1(=[sym(rl_end)]) < a2(=[sym(rl_point)]) (signed), and falls through when a1(=[sym(rl_end)]) >= a2(=[sym(rl_point)]) (signed).
  The `beq` branch at 0x10048b70 targets 0x10048b0c, is taken when a4(?) >= a5(=[sym(rl_point)]) (signed), and falls through when a4(?) < a5(=[sym(rl_point)]) (signed).
  The `bne` branch at 0x10048bc8 targets 0x10048cf4, is taken when a1(=[0x1024aa60]) != 0, and falls through when a1(=[0x1024aa60]) == 0.
  The `bne` branch at 0x10048bd8 targets 0x10048cb0, is taken when a2(?) != a3(=0x1), and falls through when a2(?) == a3(=0x1).
  The `beq` branch at 0x10048bf0 targets 0x10048cb0, is taken when a4(=[sym(rl_undo_list)]) == 0, and falls through when a4(=[sym(rl_undo_list)]) != 0.
  The `bne` branch at 0x10048c10 targets 0x10048cb0, is taken when a5(=[[sym(rl_undo_list)]+16]) != a6(=0x1), and falls through when a5(=[[sym(rl_undo_list)]+16]) == a6(=0x1).
  The `bne` branch at 0x10048c3c targets 0x10048cb0, is taken when a6(=[sym(rl_point)]) != a7(=[[sym(rl_undo_list)]+8]), and falls through when a6(=[sym(rl_point)]) == a7(=[[sym(rl_undo_list)]+8]).
  The `beq` branch at 0x10048c74 targets 0x10048cb0, is taken when a7(?) >= 0x14 (signed), and falls through when a7(?) < 0x14 (signed).
  The `beq` branch at 0x10048ca8 targets 0x10048cf4 and is always taken.
  The return at 0x10048d7c has v0 = ?.
- `rl_delete_text` in `usr/gfx/KONA/bin/kpm` at 0x10048d90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048d90-0x10048f74 (484 bytes).
  It occupies 484 bytes.
  The `lw` at 0x10048dec loads 4 bytes from abs 0x1014c51c.
  5 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10048e20, `lw` at 0x10048e94, `lw` at 0x10048f14.
  4 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10048e24, `lw` at 0x10048e98, `lw` at 0x10048f18.
  4 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10048e44, `lw` at 0x10048e6c, `lw` at 0x10048eb8.
  3 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x10048e48, `lw` at 0x10048e70, `lw` at 0x10048f50.
  The `lbu` at 0x10048e5c loads 1 byte from ?.
  The `sb` at 0x10048e78 stores 1 byte to ?.
  The `lw` at 0x10048ebc loads 4 bytes from abs 0x1024aa60.
  The `lw` at 0x10048ee0 loads 4 bytes from abs 0x1014c568.
  The `lw` at 0x10048f00 loads 4 bytes from abs 0x1014c114.
  The `sw` at 0x10048f30 stores 4 bytes to sym(rl_end) +0x0.
  The `sb` at 0x10048f58 stores 1 byte to ([sym(rl_end)] + [0x1024aa28]) +0x0.
  The `jal` at 0x10048df0 calls rl_copy_text [0x10048860] with a0=?, a1=?, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x10048ee4 calls rl_add_undo [0x1004b990] with a0=0x0, a1=?, a2=?, a3=ret(rl_copy_text), a5=[0x1024aa60].
  The `jalr` at 0x10048f04 calls free with a0=ret(rl_copy_text), a1=?, a2=?, a3=?, a5=[0x1024aa60].
  The `beq` branch at 0x10048dbc targets 0x10048ddc, is taken when at(=a1) >= v0(=a0) (signed), and falls through when at(=a1) < v0(=a0) (signed).
  The `beq` branch at 0x10048e34 targets 0x10048eb0, is taken when ra(?) >= at(?) (signed), and falls through when ra(?) < at(?) (signed).
  The `bne` branch at 0x10048ea8 targets 0x10048e3c, is taken when a1(?) < a2(?) (signed), and falls through when a1(?) >= a2(?) (signed).
  The `bne` branch at 0x10048ec0 targets 0x10048ef4, is taken when a5(=[0x1024aa60]) != 0, and falls through when a5(=[0x1024aa60]) == 0.
  The `beq` branch at 0x10048eec targets 0x10048f0c and is always taken.
  The return at 0x10048f6c has v0 = ?.
- `rl_forward` in `usr/gfx/KONA/bin/kpm` at 0x10048f80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048f80-0x10049094 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0x10048fbc loads 4 bytes from abs 0x1014c530.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10048fe4, `lw` at 0x10049044, `lw` at 0x10049074.
  The `lw` at 0x10048fe8 loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x10049000 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x10049004 loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x10049010 loads 4 bytes from abs 0x1014c7c0.
  The `lw` at 0x10049014 loads 4 bytes from sym(rl_editing_mode) +0x0.
  2 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10049048, `sw` at 0x10049078.
  The `lw` at 0x10049054 loads 4 bytes from abs 0x1014c514.
  The `jal` at 0x10048fc0 calls rl_backward [0x100490a0] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10049058 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a0 at entry (arg0), a2=?, a3=([sym(rl_point)] + a0), a6=a0 at entry (arg0).
  The `bgez` branch at 0x10048fa4 targets 0x10048fd0, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x10048fc8 targets 0x1004907c and is always taken.
  The `blez` branch at 0x10048fd4 targets 0x1004907c, is taken when a1(=a0) <= 0 (signed), and falls through when a1(=a0) > 0 (signed).
  The `beq` branch at 0x10049030 targets 0x10049068, is taken when a2(?) >= a3(=([sym(rl_point)] + a0)) (signed), and falls through when a2(?) < a3(=([sym(rl_point)] + a0)) (signed).
  The `beq` branch at 0x10049060 targets 0x1004907c and is always taken.
  The return at 0x1004908c has v0 = 0x0.
- `rl_backward` in `usr/gfx/KONA/bin/kpm` at 0x100490a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100490a0-0x10049188 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x100490dc loads 4 bytes from abs 0x1014c52c.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10049104, `lw` at 0x10049124, `lw` at 0x10049150.
  2 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10049108, `lw` at 0x10049154.
  2 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10049128, `sw` at 0x1004916c.
  The `lw` at 0x10049134 loads 4 bytes from abs 0x1014c514.
  The `jal` at 0x100490e0 calls rl_forward [0x10048f80] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10049138 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a0 at entry (arg0), a2=?, a3=a0 at entry (arg0).
  The `bgez` branch at 0x100490c4 targets 0x100490f0, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x100490e8 targets 0x10049170 and is always taken.
  The `blez` branch at 0x100490f4 targets 0x10049170, is taken when a1(=a0) <= 0 (signed), and falls through when a1(=a0) > 0 (signed).
  The `beq` branch at 0x10049114 targets 0x10049148, is taken when a2(=[sym(rl_point)]) >= a3(=a0) (signed), and falls through when a2(=[sym(rl_point)]) < a3(=a0) (signed).
  The `beq` branch at 0x10049140 targets 0x10049170 and is always taken.
  The return at 0x10049180 has v0 = 0x0.
- `rl_beg_of_line` in `usr/gfx/KONA/bin/kpm` at 0x10049190 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10049190-0x100491b8 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0x100491a4 loads 4 bytes from abs 0x1014c8a4.
  The `sw` at 0x100491a8 stores 4 bytes to sym(rl_point) +0x0.
  The return at 0x100491b0 has v0 = 0x0.
- `rl_end_of_line` in `usr/gfx/KONA/bin/kpm` at 0x100491c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100491c0-0x100491f8 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0x100491d4 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x100491d8 loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x100491e4 loads 4 bytes from abs 0x1014c8a4.
  The `sw` at 0x100491e8 stores 4 bytes to sym(rl_point) +0x0.
  The return at 0x100491f0 has v0 = 0x0.
- `rl_forward_word` in `usr/gfx/KONA/bin/kpm` at 0x10049200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10049200-0x10049530 (816 bytes).
  It occupies 816 bytes.
  The `lw` at 0x1004923c loads 4 bytes from abs 0x1014c540.
  17 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10049268, `lw` at 0x1004929c, `lw` at 0x100492ec.
  13 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004926c, `lw` at 0x100492a0, `lw` at 0x100492f0.
  6 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10049278, `lw` at 0x10049320, `lw` at 0x100493c0.
  6 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x1004927c, `lw` at 0x10049324, `lw` at 0x100493c4.
  3 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x100492ac, `lw` at 0x1004934c, `lw` at 0x10049470.
  3 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x100492b0, `lw` at 0x10049350, `lw` at 0x10049474.
  3 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [0x1024aa28]) +0x0, including `lbu` at 0x100492b8, `lbu` at 0x10049358, `lbu` at 0x1004947c.
  3 such `lw` accesses load 4 bytes from abs 0x1014c510, including `lw` at 0x100492cc, `lw` at 0x1004936c, `lw` at 0x10049490.
  4 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10049304, `sw` at 0x100493a4, `sw` at 0x10049428.
  The `jal` at 0x10049240 calls rl_backward_word [0x10049530] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100492d0 calls alphabetic [0x10048510] with a0=[([sym(rl_point)] + [0x1024aa28])]:1, a1=?, a2=[sym(rl_point)], a3=[sym(rl_end)].
  The `jal` at 0x10049370 calls alphabetic [0x10048510] with a0=[([sym(rl_point)] + [0x1024aa28])]:1, a1=?, a2=?, a3=?.
  The `jal` at 0x10049494 calls alphabetic [0x10048510] with a0=[([sym(rl_point)] + [0x1024aa28])]:1, a1=?, a2=?, a3=?.
  The `bgez` branch at 0x10049224 targets 0x10049254, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004924c targets 0x10049518 and is always taken.
  The `beq` branch at 0x10049258 targets 0x10049510, is taken when a1(=a0) == 0, and falls through when a1(=a0) != 0.
  The `bne` branch at 0x10049280 targets 0x10049294, is taken when a2(=[sym(rl_point)]) != a3(=[sym(rl_end)]), and falls through when a2(=[sym(rl_point)]) == a3(=[sym(rl_end)]).
  The `beq` branch at 0x1004928c targets 0x10049518 and is always taken.
  The `bne` branch at 0x100492dc targets 0x100493d4, is taken when v0(=ret(alphabetic)) != 0, and falls through when v0(=ret(alphabetic)) == 0.
  The `beq` branch at 0x1004932c targets 0x100493d4, is taken when at(=[sym(rl_point)]) >= v0(=[sym(rl_end)]) (signed), and falls through when at(=[sym(rl_point)]) < v0(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x1004937c targets 0x100493d4, is taken when v0(=ret(alphabetic)) != 0, and falls through when v0(=ret(alphabetic)) == 0.
  The `bne` branch at 0x100493cc targets 0x10049334, is taken when at(=[sym(rl_point)]) < v0(=[sym(rl_end)]) (signed), and falls through when at(=[sym(rl_point)]) >= v0(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x100493f4 targets 0x10049408, is taken when v1(=[sym(rl_point)]) != a0(=[sym(rl_end)]), and falls through when v1(=[sym(rl_point)]) == a0(=[sym(rl_end)]).
  The `beq` branch at 0x10049400 targets 0x10049518 and is always taken.
  The `beq` branch at 0x10049450 targets 0x100494f8, is taken when a0(=[sym(rl_point)]) >= a1(=[sym(rl_end)]) (signed), and falls through when a0(=[sym(rl_point)]) < a1(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x100494a0 targets 0x100494f8, is taken when v0(=ret(alphabetic)) == 0, and falls through when v0(=ret(alphabetic)) != 0.
  The `bne` branch at 0x100494f0 targets 0x10049458, is taken when at(=[sym(rl_point)]) < v0(=[sym(rl_end)]) (signed), and falls through when at(=[sym(rl_point)]) >= v0(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10049508 targets 0x10049260, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The return at 0x10049528 has v0 = 0x0.
- `rl_backward_word` in `usr/gfx/KONA/bin/kpm` at 0x10049530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10049530-0x100497bc (652 bytes).
  It occupies 652 bytes.
  The `lw` at 0x1004956c loads 4 bytes from abs 0x1014c53c.
  14 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10049598, `lw` at 0x100495cc, `lw` at 0x10049610.
  11 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004959c, `lw` at 0x100495d0, `lw` at 0x10049614.
  3 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x100495bc, `lw` at 0x1004964c, `lw` at 0x100496f4.
  3 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x100495c0, `lw` at 0x10049650, `lw` at 0x100496f8.
  3 such `lbu` accesses load 1 byte from ([0x1024aa28] + [sym(rl_point)]-1) +0x0, including `lbu` at 0x100495dc, `lbu` at 0x1004966c, `lbu` at 0x10049714.
  3 such `lw` accesses load 4 bytes from abs 0x1014c510, including `lw` at 0x100495f0, `lw` at 0x10049680, `lw` at 0x10049728.
  3 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10049628, `sw` at 0x100496b8, `sw` at 0x10049768.
  The `jal` at 0x10049570 calls rl_forward_word [0x10049200] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100495f4 calls alphabetic [0x10048510] with a0=[([0x1024aa28] + [sym(rl_point)]-1)]:1, a1=?, a2=[sym(rl_point)], a3=?.
  The `jal` at 0x10049684 calls alphabetic [0x10048510] with a0=[([0x1024aa28] + [sym(rl_point)]-1)]:1, a1=?, a2=?, a3=?.
  The `jal` at 0x1004972c calls alphabetic [0x10048510] with a0=[([0x1024aa28] + [sym(rl_point)]-1)]:1, a1=?, a2=?, a3=?.
  The `bgez` branch at 0x10049554 targets 0x10049584, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004957c targets 0x100497a4 and is always taken.
  The `beq` branch at 0x10049588 targets 0x1004979c, is taken when a1(=a0) == 0, and falls through when a1(=a0) != 0.
  The `bne` branch at 0x100495a0 targets 0x100495b4, is taken when a2(=[sym(rl_point)]) != 0, and falls through when a2(=[sym(rl_point)]) == 0.
  The `beq` branch at 0x100495ac targets 0x100497a4 and is always taken.
  The `bne` branch at 0x10049600 targets 0x100496d4, is taken when v0(=ret(alphabetic)) != 0, and falls through when v0(=ret(alphabetic)) == 0.
  The `beq` branch at 0x1004963c targets 0x100496d4, is taken when at(=[sym(rl_point)]) == 0, and falls through when at(=[sym(rl_point)]) != 0.
  The `bne` branch at 0x10049690 targets 0x100496d4, is taken when v0(=ret(alphabetic)) != 0, and falls through when v0(=ret(alphabetic)) == 0.
  The `bne` branch at 0x100496cc targets 0x10049644, is taken when at(=[sym(rl_point)]) != 0, and falls through when at(=[sym(rl_point)]) == 0.
  The `beq` branch at 0x100496e4 targets 0x10049784, is taken when v1(=[sym(rl_point)]) == 0, and falls through when v1(=[sym(rl_point)]) != 0.
  The `bne` branch at 0x10049738 targets 0x10049748, is taken when v0(=ret(alphabetic)) != 0, and falls through when v0(=ret(alphabetic)) == 0.
  The `beq` branch at 0x10049740 targets 0x10049784 and is always taken.
  The `bne` branch at 0x1004977c targets 0x100496ec, is taken when v0(=[sym(rl_point)]) != 0, and falls through when v0(=[sym(rl_point)]) == 0.
  The `bne` branch at 0x10049794 targets 0x10049590, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The return at 0x100497b4 has v0 = 0x0.
- `rl_refresh_line` in `usr/gfx/KONA/bin/kpm` at 0x100497c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100497c0-0x10049978 (440 bytes).
  It occupies 440 bytes.
  The `lw` at 0x100497e0 loads 4 bytes from abs 0x1014c988.
  The `lw` at 0x100497e4 loads 4 bytes from sym(rl_display_prompt) +0x0.
  The `lw` at 0x100497f0 loads 4 bytes from abs 0x1014c8c0.
  The `lw` at 0x100497f4 loads 4 bytes from sym(rl_prompt) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c98c, including `lw` at 0x10049808, `lw` at 0x1004984c.
  2 such `lw` accesses load 4 bytes from sym(_rl_last_c_pos) +0x0, including `lw` at 0x1004980c, `lw` at 0x10049850.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8ec, including `lw` at 0x10049818, `lw` at 0x1004985c, `lw` at 0x10049884.
  3 such `lw` accesses load 4 bytes from sym(screenwidth) +0x0, including `lw` at 0x1004981c, `lw` at 0x10049860, `lw` at 0x10049888.
  The `lw` at 0x1004982c loads 4 bytes from abs 0x1014c8c4.
  The `lw` at 0x10049830 loads 4 bytes from sym(rl_visible_prompt_length) +0x0.
  The `lw` at 0x100498b8 loads 4 bytes from abs 0x1014c5e0.
  The `lw` at 0x100498d0 loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x100498d4 loads 4 bytes from abs 0x1024aa28.
  The `lw` at 0x100498e0 loads 4 bytes from abs 0x1014c5dc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c910, including `lw` at 0x100498f4, `lw` at 0x1004990c.
  2 such `lw` accesses load 4 bytes from sym(term_clreol) +0x0, including `lw` at 0x100498f8, `lw` at 0x10049910.
  The `lw` at 0x10049920 loads 4 bytes from abs 0x1014c500.
  The `lw` at 0x1004992c loads 4 bytes from abs 0x1014c258.
  The `lw` at 0x10049940 loads 4 bytes from abs 0x1014c5d8.
  The `lw` at 0x10049958 loads 4 bytes from abs 0x1014c984.
  The `sw` at 0x1004995c stores 4 bytes to sym(rl_display_fixed) +0x0.
  The `jal` at 0x100498bc calls _rl_move_vert [0x10051200] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100498e4 calls _rl_move_cursor_relative [0x10050e90] with a0=0x0, a1=[0x1024aa28], a2=?, a3=?.
  The `jalr` at 0x10049930 calls tputs with a0=[sym(term_clreol)], a1=0x1, a2=sym(_rl_output_character_function), a3=?.
  The `jal` at 0x10049944 calls rl_forced_update_display [0x10050db0] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x100497f8 targets 0x10049844, is taken when at(=[sym(rl_display_prompt)]) != v0(=[sym(rl_prompt)]), and falls through when at(=[sym(rl_display_prompt)]) == v0(=[sym(rl_prompt)]).
  The `beq` branch at 0x1004983c targets 0x1004986c and is always taken.
  The `blez` branch at 0x10049870 targets 0x100498a8, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x100498a0 targets 0x100498ac and is always taken.
  The `beq` branch at 0x100498fc targets 0x10049938, is taken when a2(=[sym(term_clreol)]) == 0, and falls through when a2(=[sym(term_clreol)]) != 0.
  The return at 0x10049970 has v0 = 0x0.
- `rl_clear_screen` in `usr/gfx/KONA/bin/kpm` at 0x10049980 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10049980-0x10049a88 (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0x100499a8 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x100499ac loads 4 bytes from sym(rl_explicit_arg) +0x0.
  The `lw` at 0x100499c0 loads 4 bytes from abs 0x1014c544.
  2 such `lw` accesses load 4 bytes from abs 0x1014c918, including `lw` at 0x100499e0, `lw` at 0x100499f8.
  2 such `lw` accesses load 4 bytes from sym(term_clrpag) +0x0, including `lw` at 0x100499e4, `lw` at 0x100499fc.
  The `lw` at 0x10049a0c loads 4 bytes from abs 0x1014c500.
  The `lw` at 0x10049a18 loads 4 bytes from abs 0x1014c258.
  The `lw` at 0x10049a34 loads 4 bytes from abs 0x1014c50c.
  The `lw` at 0x10049a48 loads 4 bytes from abs 0x1014c5d8.
  The `lw` at 0x10049a60 loads 4 bytes from abs 0x1014c984.
  The `sw` at 0x10049a64 stores 4 bytes to sym(rl_display_fixed) +0x0.
  The `jal` at 0x100499c4 calls rl_refresh_line [0x100497c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10049a1c calls tputs with a0=[sym(term_clrpag)], a1=0x1, a2=sym(_rl_output_character_function), a3=a3 at entry (arg3).
  The `jal` at 0x10049a38 calls crlf [0x10048360] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10049a4c calls rl_forced_update_display [0x10050db0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100499b0 targets 0x100499d8, is taken when at(=[sym(rl_explicit_arg)]) == 0, and falls through when at(=[sym(rl_explicit_arg)]) != 0.
  The `beq` branch at 0x100499d0 targets 0x10049a70 and is always taken.
  The `beq` branch at 0x100499e8 targets 0x10049a2c, is taken when ra(=[sym(term_clrpag)]) == 0, and falls through when ra(=[sym(term_clrpag)]) != 0.
  The `beq` branch at 0x10049a24 targets 0x10049a40 and is always taken.
  The return at 0x10049a80 has v0 = 0x0.
- `rl_arrow_keys` in `usr/gfx/KONA/bin/kpm` at 0x10049a90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10049a90-0x10049c2c (412 bytes).
  It occupies 412 bytes.
  The `lw` at 0x10049ab8 loads 4 bytes from abs 0x1014c4dc.
  The `lw` at 0x10049ad4 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x10049ad8 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x10049aec loads 4 bytes from ([sym(__libc_attr)] + (ret(rl_read_key) << 0x2)) +0x4.
  The `lw` at 0x10049b08 loads 4 bytes from abs 0x1014c260.
  The `lw` at 0x10049b84 loads 4 bytes from abs 0x1014c59c.
  The `lw` at 0x10049ba4 loads 4 bytes from abs 0x1014c598.
  The `lw` at 0x10049bc4 loads 4 bytes from abs 0x1014c52c.
  The `lw` at 0x10049be4 loads 4 bytes from abs 0x1014c530.
  The `lw` at 0x10049c00 loads 4 bytes from abs 0x1014c514.
  The `jal` at 0x10049abc calls rl_read_key [0x10045470] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10049b0c calls toupper with a0=ret(rl_read_key), a1=?, a2=?, a3=?.
  The `jal` at 0x10049b88 calls rl_get_previous_history [0x1004c8f0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10049ba8 calls rl_get_next_history [0x1004c6b0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10049bc8 calls rl_forward [0x10048f80] with a0=a0 at entry (arg0), a1=?, a2=0x43, a3=?.
  The `jal` at 0x10049be8 calls rl_backward [0x100490a0] with a0=a0 at entry (arg0), a1=?, a2=0x43, a3=?, a4=0x44.
  The `jal` at 0x10049c04 calls ding [0x100485f0] with a0=0x42, a1=?, a2=0x43, a3=?, a4=0x44.
  The `beq` branch at 0x10049af4 targets 0x10049b24, is taken when (at(=[([sym(__libc_attr)] + (ret(rl_read_key) << 0x2))+4]) & 0x2) == 0, and falls through when (at(=[([sym(__libc_attr)] + (ret(rl_read_key) << 0x2))+4]) & 0x2) != 0.
  The `beq` branch at 0x10049b1c targets 0x10049b2c and is always taken.
  The `beq` branch at 0x10049b38 targets 0x10049b78, is taken when v0(?) == v1(=0x41), and falls through when v0(?) != v1(=0x41).
  The `beq` branch at 0x10049b48 targets 0x10049b98, is taken when v1(?) == a0(=0x42), and falls through when v1(?) != a0(=0x42).
  The `beq` branch at 0x10049b58 targets 0x10049bb8, is taken when a1(?) == a2(=0x43), and falls through when a1(?) != a2(=0x43).
  The `beq` branch at 0x10049b68 targets 0x10049bd8, is taken when a3(?) == a4(=0x44), and falls through when a3(?) != a4(=0x44).
  The `beq` branch at 0x10049b70 targets 0x10049bf8 and is always taken.
  The `beq` branch at 0x10049b90 targets 0x10049c14 and is always taken.
  The `beq` branch at 0x10049bb0 targets 0x10049c14 and is always taken.
  The `beq` branch at 0x10049bd0 targets 0x10049c14 and is always taken.
  The `beq` branch at 0x10049bf0 targets 0x10049c14 and is always taken.
  The `beq` branch at 0x10049c0c targets 0x10049c14 and is always taken.
  The return at 0x10049c24 has v0 = 0x0.
- `rl_insert` in `usr/gfx/KONA/bin/kpm` at 0x10049c30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10049c30-0x1004a094 (1124 bytes).
  It occupies 1124 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x10049c98, `lw` at 0x10049e70.
  7 such `sb` accesses store 1 byte to ?, including `sb` at 0x10049cd4, `sb` at 0x10049d04, `sb` at 0x10049d78.
  4 such `lw` accesses load 4 bytes from abs 0x1014c524, including `lw` at 0x10049d14, `lw` at 0x10049df0, `lw` at 0x1004a024.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x10049d2c, `lw` at 0x1004a03c.
  2 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10049e2c, `lw` at 0x10049e3c.
  The `lw` at 0x10049e30 loads 4 bytes from abs 0x1024aa68.
  The `lw` at 0x10049e40 loads 4 bytes from abs 0x1024aa6c.
  The `lw` at 0x10049e5c loads 4 bytes from abs 0x1014bfb8.
  The `lw` at 0x10049e60 loads 4 bytes from abs 0x10148f70.
  2 such `lw` accesses load 4 bytes from abs 0x1014c4d0, including `lw` at 0x10049eb4, `lw` at 0x10049f64.
  4 such `lw` accesses load 4 bytes from abs 0x1014c7bc, including `lw` at 0x10049ee0, `lw` at 0x10049f08, `lw` at 0x10049f90.
  4 such `lw` accesses load 4 bytes from sym(_rl_keymap) +0x0, including `lw` at 0x10049ee4, `lw` at 0x10049f0c, `lw` at 0x10049f94.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10049ef4, `lbu` at 0x10049fa4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10049f1c, `lw` at 0x10049fcc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c548, including `lw` at 0x10049f28, `lw` at 0x10049fd8.
  The `lw` at 0x10049ffc loads 4 bytes from abs 0x1014c4d4.
  The `jal` at 0x10049c9c calls xmalloc [0x10061950] with a0=a0+1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10049d18 calls rl_insert_text [0x10048a40] with a0=ret(xmalloc), a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10049d30 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10049df4 calls rl_insert_text [0x10048a40] with a0=sp-1112, a1=?, a2=?, a3=?.
  The `jal` at 0x10049e74 calls xmalloc [0x10061950] with a0=[0x10148f70]+1, a1=a1 at entry (arg1), a2=[0x1024aa68], a3=[0x1024aa6c].
  The `jal` at 0x10049eb8 calls rl_get_char [0x10044ff0] with a0=sp-76, a1=?, a2=?, a3=?.
  The `jal` at 0x10049f68 calls rl_get_char [0x10044ff0] with a0=sp-76, a1=?, a2=?, a3=sym(rl_insert).
  The `jal` at 0x1004a000 calls rl_unget_char [0x100450f0] with a0=?, a1=?, a2=?, a3=ret(rl_get_char).
  The `jal` at 0x1004a028 calls rl_insert_text [0x10048a40] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004a040 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004a06c calls rl_insert_text [0x10048a40] with a0=sp-68, a1=a1 at entry (arg1), a2=[0x1024aa68], a3=[0x1024aa6c].
  The `bgtz` branch at 0x10049c54 targets 0x10049c68, is taken when at(=a0) > 0 (signed), and falls through when at(=a0) <= 0 (signed).
  The `beq` branch at 0x10049c60 targets 0x1004a07c and is always taken.
  The `bne` branch at 0x10049c70 targets 0x10049d44, is taken when v1(=a0) < 0x2 (signed), and falls through when v1(=a0) >= 0x2 (signed).
  The `beq` branch at 0x10049c80 targets 0x10049d44, is taken when a0 >= 0x400 (signed), and falls through when a0 < 0x400 (signed).
  The `beq` branch at 0x10049cbc targets 0x10049cf8, is taken when a1(=0x0) >= a2(=a0) (signed), and falls through when a1(=0x0) < a2(=a0) (signed).
  The `bne` branch at 0x10049cf0 targets 0x10049cc4, is taken when a3(?) < a4(=a0) (signed), and falls through when a3(?) >= a4(=a0) (signed).
  The `beq` branch at 0x10049d3c targets 0x1004a07c and is always taken.
  The `bne` branch at 0x10049d4c targets 0x10049e24, is taken when ra(=a0) < 0x401 (signed), and falls through when ra(=a0) >= 0x401 (signed).
  The `beq` branch at 0x10049d60 targets 0x10049d98 and is never taken: its operands are equal constants, so execution always falls through.
  The `bne` branch at 0x10049d90 targets 0x10049d68, is taken when v0(?) < 0x400 (signed), and falls through when v0(?) >= 0x400 (signed).
  The `beq` branch at 0x10049d9c targets 0x10049e18, is taken when a3(=a0) == 0, and falls through when a3(=a0) != 0.
  The `bne` branch at 0x10049dac targets 0x10049dc4, is taken when a4(?) < 0x401 (signed), and falls through when a4(?) >= 0x401 (signed).
  The `beq` branch at 0x10049dbc targets 0x10049dcc and is always taken.
  The `bne` branch at 0x10049e10 targets 0x10049da4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x10049e1c targets 0x1004a07c and is always taken.
  The `beq` branch at 0x10049e44 targets 0x1004a050, is taken when a2(=[0x1024aa68]) == a3(=[0x1024aa6c]), and falls through when a2(=[0x1024aa68]) != a3(=[0x1024aa6c]).
  The `beq` branch at 0x10049ed0 targets 0x10049fe4, is taken when a0(=ret(rl_get_char)) == 0, and falls through when a0(=ret(rl_get_char)) != 0.
  The `bne` branch at 0x10049ef8 targets 0x10049fe4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x10049f2c targets 0x10049fe4, is taken when a2(?) != a3(=sym(rl_insert)), and falls through when a2(?) == a3(=sym(rl_insert)).
  The `beq` branch at 0x10049f80 targets 0x10049fe4, is taken when a0(=ret(rl_get_char)) == 0, and falls through when a0(=ret(rl_get_char)) != 0.
  The `bne` branch at 0x10049fa8 targets 0x10049fe4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x10049fdc targets 0x10049f34, is taken when a2(?) == a3(=sym(rl_insert)), and falls through when a2(?) != a3(=sym(rl_insert)).
  The `beq` branch at 0x10049fe8 targets 0x1004a008, is taken when a3(=ret(rl_get_char)) == 0, and falls through when a3(=ret(rl_get_char)) != 0.
  The `beq` branch at 0x1004a048 targets 0x1004a074 and is always taken.
  The return at 0x1004a08c has v0 = 0x0.
- `rl_quoted_insert` in `usr/gfx/KONA/bin/kpm` at 0x1004a0a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004a0a0-0x1004a110 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1004a0c8 loads 4 bytes from abs 0x1014c4dc.
  The `lw` at 0x1004a0ec loads 4 bytes from abs 0x1014c548.
  The `jal` at 0x1004a0cc calls rl_read_key [0x10045470] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004a0f0 calls rl_insert [0x10049c30] with a0=a0 at entry (arg0), a1=ret(rl_read_key), a2=?, a3=?.
  The return at 0x1004a108 has v0 = ret(rl_insert).
- `rl_tab_insert` in `usr/gfx/KONA/bin/kpm` at 0x1004a110 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004a110-0x1004a160 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1004a140 loads 4 bytes from abs 0x1014c548.
  The `jal` at 0x1004a144 calls rl_insert [0x10049c30] with a0=a0 at entry (arg0), a1=0x9, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004a158 has v0 = ret(rl_insert).
- `rl_newline` in `usr/gfx/KONA/bin/kpm` at 0x1004a160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004a160-0x1004a200 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x1004a18c loads 4 bytes from abs 0x1014c8b0.
  The `sw` at 0x1004a190 stores 4 bytes to sym(rl_done) +0x0.
  The `lw` at 0x1004a19c loads 4 bytes from abs 0x1014c650.
  The `lw` at 0x1004a1b0 loads 4 bytes from abs 0x1014c618.
  The `lw` at 0x1004a1c4 loads 4 bytes from abs 0x1014c7cc.
  The `lw` at 0x1004a1c8 loads 4 bytes from sym(readline_echoing_p) +0x0.
  The `lw` at 0x1004a1dc loads 4 bytes from abs 0x1014c5f8.
  The `jal` at 0x1004a1a0 calls _rl_vi_done_inserting [0x10057130] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004a1b4 calls _rl_vi_reset_last [0x100539e0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004a1e0 calls _rl_update_final [0x10052320] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004a1cc targets 0x1004a1e8, is taken when ra(=[sym(readline_echoing_p)]) == 0, and falls through when ra(=[sym(readline_echoing_p)]) != 0.
  The return at 0x1004a1f8 has v0 = 0x0.
- `rl_clean_up_for_exit` in `usr/gfx/KONA/bin/kpm` at 0x1004a200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004a200-0x1004a2b4 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0x1004a220 loads 4 bytes from abs 0x1014c7cc.
  The `lw` at 0x1004a224 loads 4 bytes from sym(readline_echoing_p) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c994, including `lw` at 0x1004a238, `lw` at 0x1004a25c.
  The `lw` at 0x1004a23c loads 4 bytes from sym(_rl_vis_botlin) +0x0.
  The `lw` at 0x1004a248 loads 4 bytes from abs 0x1014c5e0.
  The `sw` at 0x1004a260 stores 4 bytes to sym(_rl_vis_botlin) +0x0.
  The `lw` at 0x1004a26c loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x1004a270 loads 4 bytes from abs 0x1024aa0c.
  The `lw` at 0x1004a27c loads 4 bytes from abs 0x1014c140.
  The `lw` at 0x1004a290 loads 4 bytes from abs 0x1014c604.
  The `jal` at 0x1004a24c calls _rl_move_vert [0x10051200] with a0=[sym(_rl_vis_botlin)], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004a280 calls fflush with a0=[0x1024aa0c], a1=sym(_rl_vis_botlin), a2=?, a3=?.
  The `jal` at 0x1004a294 calls rl_restart_output [0x10053220] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004a228 targets 0x1004a29c, is taken when at(=[sym(readline_echoing_p)]) == 0, and falls through when at(=[sym(readline_echoing_p)]) != 0.
  The return at 0x1004a2ac has v0 = 0x0.
- `rl_do_lowercase_version` in `usr/gfx/KONA/bin/kpm` at 0x1004a2c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004a2c0-0x1004a2dc (28 bytes).
  It occupies 28 bytes.
  The return at 0x1004a2d4 has v0 = 0x0.
- `rl_rubout` in `usr/gfx/KONA/bin/kpm` at 0x1004a2e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004a2e0-0x1004a550 (624 bytes).
  It occupies 624 bytes.
  The `lw` at 0x1004a31c loads 4 bytes from abs 0x1014c55c.
  10 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004a33c, `lw` at 0x1004a3a0, `lw` at 0x1004a3d0.
  9 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004a340, `lw` at 0x1004a3a4, `lw` at 0x1004a3d4.
  The `lw` at 0x1004a354 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1004a388 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x1004a38c loads 4 bytes from sym(rl_explicit_arg) +0x0.
  The `lw` at 0x1004a3b8 loads 4 bytes from abs 0x1014c530.
  The `lw` at 0x1004a3e0 loads 4 bytes from abs 0x1014c5a8.
  The `sw` at 0x1004a414 stores 4 bytes to sym(rl_point) +0x0.
  The `lw` at 0x1004a430 loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x1004a434 loads 4 bytes from abs 0x1024aa28.
  The `lbu` at 0x1004a43c loads 1 byte from ([sym(rl_point)] + [0x1024aa28]) +0x0.
  The `lw` at 0x1004a470 loads 4 bytes from abs 0x1014c528.
  The `lw` at 0x1004a494 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x1004a498 loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x1004a4ac loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1004a4b0 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004a4c4 loads 4 bytes from ?.
  The `lw` at 0x1004a4dc loads 4 bytes from abs 0x1014c98c.
  The `lw` at 0x1004a4e0 loads 4 bytes from sym(_rl_last_c_pos) +0x0.
  The `lw` at 0x1004a508 loads 4 bytes from abs 0x1014c5e4.
  The `lw` at 0x1004a524 loads 4 bytes from abs 0x1014c5f4.
  The `jal` at 0x1004a320 calls rl_delete [0x1004a550] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004a358 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=[sym(rl_point)], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004a3bc calls rl_backward [0x100490a0] with a0=a0 at entry (arg0), a1=[sym(rl_point)], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004a3e4 calls rl_kill_text [0x1004cd40] with a0=?, a1=[sym(rl_point)], a2=?, a3=?.
  The `jal` at 0x1004a474 calls rl_delete_text [0x10048d90] with a0=[sym(rl_point)], a1=[sym(rl_point)]+1, a2=[0x1024aa28], a3=sym(rl_point).
  The `jal` at 0x1004a50c calls rl_character_len [0x10051790] with a0=?, a1=[sym(rl_point)], a2=?, a3=[sym(rl_point)], a5=[sym(_rl_last_c_pos)].
  The `jal` at 0x1004a528 calls _rl_erase_at_end_of_line [0x10051ab0] with a0=ret(rl_character_len), a1=?, a2=?, a3=?.
  The `bgez` branch at 0x1004a304 targets 0x1004a334, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004a32c targets 0x1004a538 and is always taken.
  The `bne` branch at 0x1004a344 targets 0x1004a370, is taken when a1(=[sym(rl_point)]) != 0, and falls through when a1(=[sym(rl_point)]) == 0.
  The `beq` branch at 0x1004a368 targets 0x1004a538 and is always taken.
  The `beq` branch at 0x1004a378 targets 0x1004a398, is taken when at(=a0) >= 0x2 (signed), and falls through when at(=a0) < 0x2 (signed).
  The `beq` branch at 0x1004a390 targets 0x1004a3f4, is taken when v0(=[sym(rl_explicit_arg)]) == 0, and falls through when v0(=[sym(rl_explicit_arg)]) != 0.
  The `beq` branch at 0x1004a3ec targets 0x1004a530 and is always taken.
  The `bne` branch at 0x1004a49c targets 0x1004a530, is taken when a3(=[sym(rl_point)]) != a4(=[sym(rl_end)]), and falls through when a3(=[sym(rl_point)]) == a4(=[sym(rl_end)]).
  The `beq` branch at 0x1004a4cc targets 0x1004a530, is taken when (a4(?) & 0xc097) == 0, and falls through when (a4(?) & 0xc097) != 0.
  The `beq` branch at 0x1004a4e4 targets 0x1004a530, is taken when a5(=[sym(_rl_last_c_pos)]) == 0, and falls through when a5(=[sym(_rl_last_c_pos)]) != 0.
  The return at 0x1004a548 has v0 = one of -0x1, 0x0.
- `rl_delete` in `usr/gfx/KONA/bin/kpm` at 0x1004a550 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004a550-0x1004a704 (436 bytes).
  It occupies 436 bytes.
  The `lw` at 0x1004a58c loads 4 bytes from abs 0x1014c558.
  6 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004a5b4, `lw` at 0x1004a628, `lw` at 0x1004a658.
  5 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004a5b8, `lw` at 0x1004a62c, `lw` at 0x1004a65c.
  The `lw` at 0x1004a5c4 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x1004a5c8 loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x1004a5dc loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1004a610 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x1004a614 loads 4 bytes from sym(rl_explicit_arg) +0x0.
  The `lw` at 0x1004a640 loads 4 bytes from abs 0x1014c52c.
  The `lw` at 0x1004a668 loads 4 bytes from abs 0x1014c5a8.
  The `sw` at 0x1004a684 stores 4 bytes to sym(rl_point) +0x0.
  The `lw` at 0x1004a6c8 loads 4 bytes from abs 0x1014c528.
  The `jal` at 0x1004a590 calls rl_rubout [0x1004a2e0] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004a5e0 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(rl_point)], a3=[sym(rl_end)].
  The `jal` at 0x1004a644 calls rl_forward [0x10048f80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(rl_point)], a3=[sym(rl_end)].
  The `jal` at 0x1004a66c calls rl_kill_text [0x1004cd40] with a0=?, a1=[sym(rl_point)], a2=?, a3=?.
  The `jal` at 0x1004a6cc calls rl_delete_text [0x10048d90] with a0=[sym(rl_point)], a1=[sym(rl_point)]+1, a2=[sym(rl_point)], a3=[sym(rl_end)].
  The `bgez` branch at 0x1004a574 targets 0x1004a5ac, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004a5a4 targets 0x1004a6ec and is always taken.
  The `bne` branch at 0x1004a5cc targets 0x1004a5f8, is taken when a2(=[sym(rl_point)]) != a3(=[sym(rl_end)]), and falls through when a2(=[sym(rl_point)]) == a3(=[sym(rl_end)]).
  The `beq` branch at 0x1004a5f0 targets 0x1004a6ec and is always taken.
  The `beq` branch at 0x1004a600 targets 0x1004a620, is taken when at(=a0) >= 0x2 (signed), and falls through when at(=a0) < 0x2 (signed).
  The `beq` branch at 0x1004a618 targets 0x1004a69c, is taken when v0(=[sym(rl_explicit_arg)]) == 0, and falls through when v0(=[sym(rl_explicit_arg)]) != 0.
  The `beq` branch at 0x1004a68c targets 0x1004a6ec and is always taken.
  The `beq` branch at 0x1004a6e4 targets 0x1004a6ec and is always taken.
  The return at 0x1004a6fc has v0 = one of ret(rl_rubout), -0x1, 0x0, ret(rl_delete_text).
  The instructions from 0x1004a694 to 0x1004a698 are not reached by any path from the entry, and their branches are not listed.
- `rl_delete_horizontal_space` in `usr/gfx/KONA/bin/kpm` at 0x1004a710 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004a710-0x1004aa48 (824 bytes).
  It occupies 824 bytes.
  21 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004a738, `lw` at 0x1004a74c, `lw` at 0x1004a774.
  18 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004a73c, `lw` at 0x1004a750, `lw` at 0x1004a778.
  8 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x1004a764, `lw` at 0x1004a79c, `lw` at 0x1004a810.
  8 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x1004a768, `lw` at 0x1004a7a0, `lw` at 0x1004a814.
  4 such `lbu` accesses load 1 byte from ([0x1024aa28] + [sym(rl_point)]-1) +0x0, including `lbu` at 0x1004a784, `lbu` at 0x1004a7bc, `lbu` at 0x1004a830.
  3 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x1004a7ec, `sw` at 0x1004a940, `sw` at 0x1004aa2c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x1004a8a4, `lw` at 0x1004a95c.
  2 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x1004a8a8, `lw` at 0x1004a960.
  4 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [0x1024aa28]) +0x0, including `lbu` at 0x1004a8dc, `lbu` at 0x1004a910, `lbu` at 0x1004a994.
  The `lw` at 0x1004aa10 loads 4 bytes from abs 0x1014c528.
  The `jal` at 0x1004aa14 calls rl_delete_text [0x10048d90] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?, a7=[sym(rl_end)].
  The `beq` branch at 0x1004a754 targets 0x1004a878, is taken when at(=[sym(rl_point)]) == 0, and falls through when at(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x1004a78c targets 0x1004a7cc, is taken when a0(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a1(=0x20), and falls through when a0(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a1(=0x20).
  The `bne` branch at 0x1004a7c4 targets 0x1004a878, is taken when a1(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a2(=0x9), and falls through when a1(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a2(=0x9).
  The `beq` branch at 0x1004a800 targets 0x1004a878, is taken when a2(=[sym(rl_point)]) == 0, and falls through when a2(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x1004a838 targets 0x1004a7cc, is taken when a4(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a5(=0x20), and falls through when a4(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a5(=0x20).
  The `beq` branch at 0x1004a870 targets 0x1004a7cc, is taken when a5(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a6(=0x9), and falls through when a5(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a6(=0x9).
  The `beq` branch at 0x1004a8b0 targets 0x1004a9d8, is taken when a6(=[sym(rl_point)]) >= a7(=[sym(rl_end)]) (signed), and falls through when a6(=[sym(rl_point)]) < a7(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x1004a8e4 targets 0x1004a920, is taken when t0(=[([sym(rl_point)] + [0x1024aa28])]:1) == t1(=0x20), and falls through when t0(=[([sym(rl_point)] + [0x1024aa28])]:1) != t1(=0x20).
  The `bne` branch at 0x1004a918 targets 0x1004a9d8, is taken when t1(=[([sym(rl_point)] + [0x1024aa28])]:1) != t2(=0x9), and falls through when t1(=[([sym(rl_point)] + [0x1024aa28])]:1) == t2(=0x9).
  The `beq` branch at 0x1004a968 targets 0x1004a9d8, is taken when t2(=[sym(rl_point)]) >= t3(=[sym(rl_end)]) (signed), and falls through when t2(=[sym(rl_point)]) < t3(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x1004a99c targets 0x1004a920, is taken when t8(=[([sym(rl_point)] + [0x1024aa28])]:1) == t9(=0x20), and falls through when t8(=[([sym(rl_point)] + [0x1024aa28])]:1) != t9(=0x20).
  The `beq` branch at 0x1004a9d0 targets 0x1004a920, is taken when t9(=[([sym(rl_point)] + [0x1024aa28])]:1) == ra(=0x9), and falls through when t9(=[([sym(rl_point)] + [0x1024aa28])]:1) != ra(=0x9).
  The `beq` branch at 0x1004a9ec targets 0x1004aa30, is taken when ra(=[sym(rl_point)]) == at(=[sym(rl_point)]), and falls through when ra(=[sym(rl_point)]) != at(=[sym(rl_point)]).
  The return at 0x1004aa40 has v0 = 0x0.
- `rl_unix_word_rubout` in `usr/gfx/KONA/bin/kpm` at 0x1004aa50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004aa50-0x1004ad60 (784 bytes).
  It occupies 784 bytes.
  19 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004aa78, `lw` at 0x1004aaac, `lw` at 0x1004aac0.
  17 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004aa7c, `lw` at 0x1004aab0, `lw` at 0x1004aac4.
  The `lw` at 0x1004aa90 loads 4 bytes from abs 0x1014c514.
  8 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x1004aad8, `lw` at 0x1004ab10, `lw` at 0x1004ab84.
  8 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x1004aadc, `lw` at 0x1004ab14, `lw` at 0x1004ab88.
  8 such `lbu` accesses load 1 byte from ([0x1024aa28] + [sym(rl_point)]-1) +0x0, including `lbu` at 0x1004aaf8, `lbu` at 0x1004ab30, `lbu` at 0x1004aba4.
  2 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x1004ab60, `sw` at 0x1004ac94.
  The `lw` at 0x1004ad3c loads 4 bytes from abs 0x1014c5a8.
  The `jal` at 0x1004aa94 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004ad40 calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?, a4=[sym(rl_point)].
  The `bne` branch at 0x1004aa80 targets 0x1004aaa4, is taken when at(=[sym(rl_point)]) != 0, and falls through when at(=[sym(rl_point)]) == 0.
  The `beq` branch at 0x1004aa9c targets 0x1004ad48 and is always taken.
  The `beq` branch at 0x1004aac8 targets 0x1004abec, is taken when ra(=[sym(rl_point)]) == 0, and falls through when ra(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x1004ab00 targets 0x1004ab40, is taken when v0(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == v1(=0x20), and falls through when v0(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != v1(=0x20).
  The `bne` branch at 0x1004ab38 targets 0x1004abec, is taken when v1(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a0(=0x9), and falls through when v1(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a0(=0x9).
  The `beq` branch at 0x1004ab74 targets 0x1004abec, is taken when a0(=[sym(rl_point)]) == 0, and falls through when a0(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x1004abac targets 0x1004ab40, is taken when a2(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a3(=0x20), and falls through when a2(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a3(=0x20).
  The `beq` branch at 0x1004abe4 targets 0x1004ab40, is taken when a3(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a4(=0x9), and falls through when a3(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a4(=0x9).
  The `beq` branch at 0x1004abfc targets 0x1004ad20, is taken when a4(=[sym(rl_point)]) == 0, and falls through when a4(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x1004ac34 targets 0x1004ad20, is taken when a5(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a6(=0x20), and falls through when a5(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a6(=0x20).
  The `beq` branch at 0x1004ac6c targets 0x1004ad20, is taken when a6(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a7(=0x9), and falls through when a6(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a7(=0x9).
  The `beq` branch at 0x1004aca8 targets 0x1004ad20, is taken when a7(=[sym(rl_point)]) == 0, and falls through when a7(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x1004ace0 targets 0x1004ad20, is taken when t1(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == t2(=0x20), and falls through when t1(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != t2(=0x20).
  The `bne` branch at 0x1004ad18 targets 0x1004ac74, is taken when t2(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != t3(=0x9), and falls through when t2(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == t3(=0x9).
  The return at 0x1004ad58 has v0 = 0x0.
- `rl_unix_line_discard` in `usr/gfx/KONA/bin/kpm` at 0x1004ad60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004ad60-0x1004ae04 (164 bytes).
  It occupies 164 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004ad88, `lw` at 0x1004adbc, `lw` at 0x1004ade4.
  2 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004ad8c, `lw` at 0x1004adc0.
  The `lw` at 0x1004ada0 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1004add0 loads 4 bytes from abs 0x1014c5a8.
  The `sw` at 0x1004ade8 stores 4 bytes to sym(rl_point) +0x0.
  The `jal` at 0x1004ada4 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004add4 calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1004ad90 targets 0x1004adb4, is taken when at(=[sym(rl_point)]) != 0, and falls through when at(=[sym(rl_point)]) == 0.
  The `beq` branch at 0x1004adac targets 0x1004adec and is always taken.
  The return at 0x1004adfc has v0 = 0x0.
- `rl_upcase_word` in `usr/gfx/KONA/bin/kpm` at 0x1004ae10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004ae10-0x1004ae60 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1004ae40 loads 4 bytes from abs 0x1014bff0.
  The `jal` at 0x1004ae44 calls (unnamed) [0x1004af00] with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004ae58 has v0 = ret(0x1004af00).
- `rl_downcase_word` in `usr/gfx/KONA/bin/kpm` at 0x1004ae60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004ae60-0x1004aeb0 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1004ae90 loads 4 bytes from abs 0x1014bff0.
  The `jal` at 0x1004ae94 calls (unnamed) [0x1004af00] with a0=a0 at entry (arg0), a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004aea8 has v0 = ret(0x1004af00).
- `rl_capitalize_word` in `usr/gfx/KONA/bin/kpm` at 0x1004aeb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004aeb0-0x1004af00 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1004aee0 loads 4 bytes from abs 0x1014bff0.
  The `jal` at 0x1004aee4 calls (unnamed) [0x1004af00] with a0=a0 at entry (arg0), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004aef8 has v0 = ret(0x1004af00).
- `rl_transpose_words` in `usr/gfx/KONA/bin/kpm` at 0x1004b450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004b450-0x1004b70c (700 bytes).
  It occupies 700 bytes.
  9 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004b478, `lw` at 0x1004b4bc, `lw` at 0x1004b4e8.
  5 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004b47c, `lw` at 0x1004b4c0, `lw` at 0x1004b4ec.
  2 such `lw` accesses load 4 bytes from abs 0x1014c53c, including `lw` at 0x1004b4a8, `lw` at 0x1004b52c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c540, including `lw` at 0x1004b4d4, `lw` at 0x1004b500.
  The `lw` at 0x1004b578 loads 4 bytes from abs 0x1014c514.
  4 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x1004b594, `sw` at 0x1004b614, `sw` at 0x1004b65c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c51c, including `lw` at 0x1004b5b8, `lw` at 0x1004b5dc.
  The `lw` at 0x1004b5f8 loads 4 bytes from abs 0x1014c574.
  2 such `lw` accesses load 4 bytes from abs 0x1014c528, including `lw` at 0x1004b628, `lw` at 0x1004b670.
  2 such `lw` accesses load 4 bytes from abs 0x1014c524, including `lw` at 0x1004b640, `lw` at 0x1004b688.
  The `lw` at 0x1004b6b0 loads 4 bytes from abs 0x1014c578.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1004b6c8, `lw` at 0x1004b6e0.
  The `jal` at 0x1004b4ac calls rl_forward_word [0x10049200] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004b4d8 calls rl_backward_word [0x10049530] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1004b504 calls rl_backward_word [0x10049530] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1004b530 calls rl_forward_word [0x10049200] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1004b57c calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004b5bc calls rl_copy_text [0x10048860] with a0=?, a1=[sym(rl_point)], a2=?, a3=?.
  The `jal` at 0x1004b5e0 calls rl_copy_text [0x10048860] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004b5fc calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004b62c calls rl_delete_text [0x10048d90] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004b644 calls rl_insert_text [0x10048a40] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004b674 calls rl_delete_text [0x10048d90] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004b68c calls rl_insert_text [0x10048a40] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004b6b4 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004b6cc calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004b6e4 calls free with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1004b488 targets 0x1004b49c, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `beq` branch at 0x1004b494 targets 0x1004b6f4 and is always taken.
  The `beq` branch at 0x1004b554 targets 0x1004b570, is taken when at(?) == v0(?), and falls through when at(?) != v0(?).
  The `beq` branch at 0x1004b568 targets 0x1004b5a8, is taken when a0(?) >= a1(=[sym(rl_point)]) (signed), and falls through when a0(?) < a1(=[sym(rl_point)]) (signed).
  The `beq` branch at 0x1004b5a0 targets 0x1004b6f4 and is always taken.
  The return at 0x1004b704 has v0 = one of -0x1, 0x0.
- `rl_transpose_chars` in `usr/gfx/KONA/bin/kpm` at 0x1004b710 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004b710-0x1004b984 (628 bytes).
  It occupies 628 bytes.
  15 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004b750, `lw` at 0x1004b7bc, `lw` at 0x1004b7e4.
  10 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004b754, `lw` at 0x1004b7c0, `lw` at 0x1004b7e8.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x1004b768, `lw` at 0x1004b7cc, `lw` at 0x1004b8d4.
  4 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x1004b76c, `lw` at 0x1004b7d0, `lw` at 0x1004b8d8.
  The `lw` at 0x1004b784 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1004b7a8 loads 4 bytes from abs 0x1014c574.
  5 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x1004b7fc, `sw` at 0x1004b828, `sw` at 0x1004b8b8.
  The `lw` at 0x1004b844 loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x1004b848 loads 4 bytes from abs 0x1024aa28.
  The `lbu` at 0x1004b850 loads 1 byte from ([sym(rl_point)] + [0x1024aa28]) +0x0.
  The `lw` at 0x1004b888 loads 4 bytes from abs 0x1014c528.
  The `lw` at 0x1004b944 loads 4 bytes from abs 0x1014c524.
  The `lw` at 0x1004b958 loads 4 bytes from abs 0x1014c578.
  The `jal` at 0x1004b788 calls ding [0x100485f0] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004b7ac calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004b88c calls rl_delete_text [0x10048d90] with a0=[sym(rl_point)], a1=[sym(rl_point)]+1, a2=[0x1024aa28], a3=sym(rl_point).
  The `jal` at 0x1004b948 calls rl_insert_text [0x10048a40] with a0=sp-48, a1=?, a2=?, a3=?, a4=[sym(rl_point)].
  The `jal` at 0x1004b95c calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1004b734 targets 0x1004b748, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `beq` branch at 0x1004b740 targets 0x1004b96c and is always taken.
  The `beq` branch at 0x1004b758 targets 0x1004b77c, is taken when v1(=[sym(rl_point)]) == 0, and falls through when v1(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x1004b774 targets 0x1004b7a0, is taken when a0(=[sym(rl_end)]) >= 0x2 (signed), and falls through when a0(=[sym(rl_end)]) < 0x2 (signed).
  The `beq` branch at 0x1004b798 targets 0x1004b96c and is always taken.
  The `bne` branch at 0x1004b7d4 targets 0x1004b808, is taken when ra(=[sym(rl_point)]) != at(=[sym(rl_end)]), and falls through when ra(=[sym(rl_point)]) == at(=[sym(rl_end)]).
  The `beq` branch at 0x1004b8e0 targets 0x1004b910, is taken when a3(=[sym(rl_end)]) >= a4(=[sym(rl_point)]) (signed), and falls through when a3(=[sym(rl_end)]) < a4(=[sym(rl_point)]) (signed).
  The `beq` branch at 0x1004b908 targets 0x1004b938 and is always taken.
  The `bgez` branch at 0x1004b920 targets 0x1004b938, is taken when a7(=[sym(rl_point)]) >= 0 (signed), and falls through when a7(=[sym(rl_point)]) < 0 (signed).
  The return at 0x1004b97c has v0 = one of -0x1, 0x0.
- `rl_add_undo` in `usr/gfx/KONA/bin/kpm` at 0x1004b990 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004b990-0x1004ba44 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0x1004b9c4 loads 4 bytes from abs 0x1014c6e4.
  The `sw` at 0x1004b9dc stores 4 bytes to ret(xmalloc) +0x10.
  The `sw` at 0x1004b9e8 stores 4 bytes to ret(xmalloc) +0x4.
  The `sw` at 0x1004b9f4 stores 4 bytes to ret(xmalloc) +0x8.
  The `sw` at 0x1004ba00 stores 4 bytes to ret(xmalloc) +0xc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c970, including `lw` at 0x1004ba0c, `lw` at 0x1004ba28.
  The `lw` at 0x1004ba10 loads 4 bytes from sym(rl_undo_list) +0x0.
  The `sw` at 0x1004ba18 stores 4 bytes to ret(xmalloc) +0x0.
  The `sw` at 0x1004ba2c stores 4 bytes to sym(rl_undo_list) +0x0.
  The `jal` at 0x1004b9c8 calls xmalloc [0x10061950] with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004ba3c has v0 = sym(rl_undo_list).
- `free_undo_list` in `usr/gfx/KONA/bin/kpm` at 0x1004ba50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004ba50-0x1004bb38 (232 bytes).
  It occupies 232 bytes.
  6 such `lw` accesses load 4 bytes from abs 0x1014c970, including `lw` at 0x1004ba70, `lw` at 0x1004ba88, `lw` at 0x1004ba9c.
  4 such `lw` accesses load 4 bytes from sym(rl_undo_list) +0x0, including `lw` at 0x1004ba74, `lw` at 0x1004ba8c, `lw` at 0x1004baa0.
  The `lw` at 0x1004baa4 loads 4 bytes from [sym(rl_undo_list)] +0x0.
  2 such `sw` accesses store 4 bytes to sym(rl_undo_list) +0x0, including `sw` at 0x1004bab4, `sw` at 0x1004bb20.
  The `lw` at 0x1004babc loads 4 bytes from [sym(rl_undo_list)] +0x10.
  The `lw` at 0x1004bacc loads 4 bytes from [sym(rl_undo_list)] +0xc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1004bad8, `lw` at 0x1004baf0.
  The `jalr` at 0x1004badc calls free with a0=[[sym(rl_undo_list)]+12], a1=sym(rl_undo_list), a2=?, a3=?.
  The `jalr` at 0x1004baf4 calls free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004ba78 targets 0x1004bb14, is taken when at(=[sym(rl_undo_list)]) == 0, and falls through when at(=[sym(rl_undo_list)]) != 0.
  The `bne` branch at 0x1004bac0 targets 0x1004bae4, is taken when v1(=[[sym(rl_undo_list)]+16]) != 0, and falls through when v1(=[[sym(rl_undo_list)]+16]) == 0.
  The `bne` branch at 0x1004bb0c targets 0x1004ba80, is taken when ra(=[sym(rl_undo_list)]) != 0, and falls through when ra(=[sym(rl_undo_list)]) == 0.
  The return at 0x1004bb30 has v0 = one of 0x108270, ret(free).
- `rl_do_undo` in `usr/gfx/KONA/bin/kpm` at 0x1004bb40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004bb40-0x1004bdb0 (624 bytes).
  It occupies 624 bytes.
  11 such `lw` accesses load 4 bytes from abs 0x1014c970, including `lw` at 0x1004bb64, `lw` at 0x1004bb9c, `lw` at 0x1004bbf4.
  10 such `lw` accesses load 4 bytes from sym(rl_undo_list) +0x0, including `lw` at 0x1004bb68, `lw` at 0x1004bba0, `lw` at 0x1004bbf8.
  2 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x1004bb8c, `lw` at 0x1004bd28.
  2 such `sw` accesses store 4 bytes to abs 0x1024aa60, including `sw` at 0x1004bb90, `sw` at 0x1004bd2c.
  The `lw` at 0x1004bba4 loads 4 bytes from [sym(rl_undo_list)] +0x10.
  3 such `lw` accesses load 4 bytes from [sym(rl_undo_list)] +0x4, including `lw` at 0x1004bbfc, `lw` at 0x1004bc78, `lw` at 0x1004bcb4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004bc08, `lw` at 0x1004bcc0.
  2 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x1004bc0c, `sw` at 0x1004bcc4.
  2 such `lw` accesses load 4 bytes from [sym(rl_undo_list)] +0xc, including `lw` at 0x1004bc20, `lw` at 0x1004bc48.
  The `lw` at 0x1004bc2c loads 4 bytes from abs 0x1014c524.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1004bc54, `lw` at 0x1004bd74.
  The `lw` at 0x1004bc8c loads 4 bytes from [sym(rl_undo_list)] +0x8.
  The `lw` at 0x1004bc98 loads 4 bytes from abs 0x1014c528.
  The `lw` at 0x1004bd0c loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1004bd54 loads 4 bytes from [sym(rl_undo_list)] +0x0.
  The `sw` at 0x1004bd64 stores 4 bytes to sym(rl_undo_list) +0x0.
  The `jal` at 0x1004bc30 calls rl_insert_text [0x10048a40] with a0=[[sym(rl_undo_list)]+12], a1=[[sym(rl_undo_list)]+4], a2=sym(rl_point), a3=?.
  The `jalr` at 0x1004bc58 calls free with a0=[[sym(rl_undo_list)]+12], a1=?, a2=?, a3=?.
  The `jal` at 0x1004bc9c calls rl_delete_text [0x10048d90] with a0=[[sym(rl_undo_list)]+4], a1=[[sym(rl_undo_list)]+8], a2=[[sym(rl_undo_list)]+16], a3=0x1.
  The `jal` at 0x1004bd10 calls ding [0x100485f0] with a0=0x1, a1=0x1024a900, a2=[[sym(rl_undo_list)]+16], a3=?, a4=[[sym(rl_undo_list)]+16], a5=0x3, a6=[[sym(rl_undo_list)]+16], a7=0x2.
  The `jalr` at 0x1004bd78 calls free with a0=[sym(rl_undo_list)], a1=?, a2=?, a3=?.
  The `bne` branch at 0x1004bb6c targets 0x1004bb80, is taken when v0(=[sym(rl_undo_list)]) != 0, and falls through when v0(=[sym(rl_undo_list)]) == 0.
  The `beq` branch at 0x1004bb78 targets 0x1004bd98 and is always taken.
  The `beq` branch at 0x1004bbac targets 0x1004bbec, is taken when v1(=[[sym(rl_undo_list)]+16]) == 0, and falls through when v1(=[[sym(rl_undo_list)]+16]) != 0.
  The `beq` branch at 0x1004bbbc targets 0x1004bc68, is taken when a2(=[[sym(rl_undo_list)]+16]) == a3(=0x1), and falls through when a2(=[[sym(rl_undo_list)]+16]) != a3(=0x1).
  The `beq` branch at 0x1004bbcc targets 0x1004bcd0, is taken when a4(=[[sym(rl_undo_list)]+16]) == a5(=0x3), and falls through when a4(=[[sym(rl_undo_list)]+16]) != a5(=0x3).
  The `beq` branch at 0x1004bbdc targets 0x1004bce4, is taken when a6(=[[sym(rl_undo_list)]+16]) == a7(=0x2), and falls through when a6(=[[sym(rl_undo_list)]+16]) != a7(=0x2).
  The `beq` branch at 0x1004bbe4 targets 0x1004bd20 and is always taken.
  The `beq` branch at 0x1004bc60 targets 0x1004bd20 and is always taken.
  The `beq` branch at 0x1004bcc8 targets 0x1004bd20 and is always taken.
  The `beq` branch at 0x1004bcdc targets 0x1004bd20 and is always taken.
  The `beq` branch at 0x1004bce8 targets 0x1004bd04, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1004bcfc targets 0x1004bd18 and is always taken.
  The `beq` branch at 0x1004bd18 targets 0x1004bd20 and is always taken.
  The `bne` branch at 0x1004bd84 targets 0x1004bb5c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The return at 0x1004bda8 has v0 = one of 0x0, 0x1.
- `rl_begin_undo_group` in `usr/gfx/KONA/bin/kpm` at 0x1004bdb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004bdb0-0x1004be04 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x1004bde0 loads 4 bytes from abs 0x1014c568.
  The `jal` at 0x1004bde4 calls rl_add_undo [0x1004b990] with a0=0x2, a1=0x0, a2=0x0, a3=0x0.
  The return at 0x1004bdfc has v0 = 0x0.
- `rl_end_undo_group` in `usr/gfx/KONA/bin/kpm` at 0x1004be10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004be10-0x1004be64 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x1004be40 loads 4 bytes from abs 0x1014c568.
  The `jal` at 0x1004be44 calls rl_add_undo [0x1004b990] with a0=0x3, a1=0x0, a2=0x0, a3=0x0.
  The return at 0x1004be5c has v0 = 0x0.
- `rl_modifying` in `usr/gfx/KONA/bin/kpm` at 0x1004be70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004be70-0x1004bf74 (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0x1004bedc loads 4 bytes from abs 0x1014c51c.
  The `lw` at 0x1004bef4 loads 4 bytes from abs 0x1014c574.
  2 such `lw` accesses load 4 bytes from abs 0x1014c568, including `lw` at 0x1004bf18, `lw` at 0x1004bf3c.
  The `lw` at 0x1004bf50 loads 4 bytes from abs 0x1014c578.
  The `jal` at 0x1004bee0 calls rl_copy_text [0x10048860] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004bef8 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004bf1c calls rl_add_undo [0x1004b990] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x1004bf40 calls rl_add_undo [0x1004b990] with a0=0x1, a1=?, a2=?, a3=0x0.
  The `jal` at 0x1004bf54 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004be9c targets 0x1004bebc, is taken when at(=a1) >= v0(=a0) (signed), and falls through when at(=a1) < v0(=a0) (signed).
  The `beq` branch at 0x1004bec4 targets 0x1004bf5c, is taken when a3(?) == a4(?), and falls through when a3(?) != a4(?).
  The return at 0x1004bf6c has v0 = 0x0.
- `rl_revert_line` in `usr/gfx/KONA/bin/kpm` at 0x1004bf80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004bf80-0x1004c030 (176 bytes).
  It occupies 176 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c970, including `lw` at 0x1004bfa8, `lw` at 0x1004bfdc, `lw` at 0x1004c008.
  3 such `lw` accesses load 4 bytes from sym(rl_undo_list) +0x0, including `lw` at 0x1004bfac, `lw` at 0x1004bfe0, `lw` at 0x1004c00c.
  The `lw` at 0x1004bfc0 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1004bff4 loads 4 bytes from abs 0x1014c570.
  The `jal` at 0x1004bfc4 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004bff8 calls rl_do_undo [0x1004bb40] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1004bfb0 targets 0x1004bfd4, is taken when at(=[sym(rl_undo_list)]) != 0, and falls through when at(=[sym(rl_undo_list)]) == 0.
  The `beq` branch at 0x1004bfcc targets 0x1004c018 and is always taken.
  The `beq` branch at 0x1004bfe4 targets 0x1004c018, is taken when ra(=[sym(rl_undo_list)]) == 0, and falls through when ra(=[sym(rl_undo_list)]) != 0.
  The `bne` branch at 0x1004c010 targets 0x1004bfec, is taken when ra(=[sym(rl_undo_list)]) != 0, and falls through when ra(=[sym(rl_undo_list)]) == 0.
  The return at 0x1004c028 has v0 = 0x0.
- `_rl_free_history_entry` in `usr/gfx/KONA/bin/kpm` at 0x1004c170 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c170-0x1004c1f8 (136 bytes).
  It occupies 136 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x1004c1a4, `lw` at 0x1004c1b4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1004c1c0, `lw` at 0x1004c1d8.
  The `jalr` at 0x1004c1c4 calls free with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004c1dc calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x1004c190 targets 0x1004c1a0, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `beq` branch at 0x1004c198 targets 0x1004c1e4 and is always taken.
  The `beq` branch at 0x1004c1a8 targets 0x1004c1cc, is taken when v1(=[a0]) == 0, and falls through when v1(=[a0]) != 0.
  The return at 0x1004c1f0 has v0 = one of 0x107b50, ret(free).
- `maybe_replace_line` in `usr/gfx/KONA/bin/kpm` at 0x1004c200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c200-0x1004c300 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0x1004c220 loads 4 bytes from abs 0x1014c488.
  2 such `lw` accesses load 4 bytes from abs 0x1014c970, including `lw` at 0x1004c248, `lw` at 0x1004c294.
  2 such `lw` accesses load 4 bytes from sym(rl_undo_list) +0x0, including `lw` at 0x1004c24c, `lw` at 0x1004c298.
  The `lw` at 0x1004c254 loads 4 bytes from ret(current_history) +0x4.
  The `lw` at 0x1004c268 loads 4 bytes from abs 0x1014c478.
  The `lw` at 0x1004c284 loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x1004c288 loads 4 bytes from abs 0x1024aa28.
  The `lw` at 0x1004c2a4 loads 4 bytes from abs 0x1014c474.
  The `lw` at 0x1004c2b8 loads 4 bytes from ret(replace_history_entry) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1004c2c4, `lw` at 0x1004c2dc.
  The `jal` at 0x1004c224 calls current_history [0x1003cc60] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004c26c calls where_history [0x1003b5e0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004c2a8 calls replace_history_entry [0x1003b4a0] with a0=ret(where_history), a1=[0x1024aa28], a2=[sym(rl_undo_list)], a3=?.
  The `jalr` at 0x1004c2c8 calls free with a0=[ret(replace_history_entry)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1004c2e0 calls free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004c238 targets 0x1004c2e8, is taken when at(=ret(current_history)) == 0, and falls through when at(=ret(current_history)) != 0.
  The `beq` branch at 0x1004c258 targets 0x1004c2e8, is taken when v0(=[sym(rl_undo_list)]) == v1(=[ret(current_history)+4]), and falls through when v0(=[sym(rl_undo_list)]) != v1(=[ret(current_history)+4]).
  The return at 0x1004c2f8 has v0 = 0x0.
- `maybe_unsave_line` in `usr/gfx/KONA/bin/kpm` at 0x1004c300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c300-0x1004c4a8 (424 bytes).
  It occupies 424 bytes.
  6 such `lw` accesses load 4 bytes from abs 0x1014c974, including `lw` at 0x1004c320, `lw` at 0x1004c338, `lw` at 0x1004c3b0.
  5 such `lw` accesses load 4 bytes from sym(saved_line_for_history) +0x0, including `lw` at 0x1004c324, `lw` at 0x1004c33c, `lw` at 0x1004c3b4.
  2 such `lw` accesses load 4 bytes from [sym(saved_line_for_history)] +0x0, including `lw` at 0x1004c340, `lw` at 0x1004c3b8.
  2 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x1004c34c, `lw` at 0x1004c440.
  The `lw` at 0x1004c368 loads 4 bytes from abs 0x1014c8e4.
  The `lw` at 0x1004c36c loads 4 bytes from sym(rl_line_buffer_len) +0x0.
  The `lw` at 0x1004c38c loads 4 bytes from abs 0x1014c520.
  2 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x1004c3a0, `lw` at 0x1004c430.
  2 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x1004c3a4, `lw` at 0x1004c434.
  The `lw` at 0x1004c3c4 loads 4 bytes from abs 0x1014c0f8.
  The `lw` at 0x1004c3e0 loads 4 bytes from [sym(saved_line_for_history)] +0x4.
  The `lw` at 0x1004c3ec loads 4 bytes from abs 0x1014c970.
  The `sw` at 0x1004c3f0 stores 4 bytes to sym(rl_undo_list) +0x0.
  The `lw` at 0x1004c40c loads 4 bytes from abs 0x1014c584.
  The `sw` at 0x1004c424 stores 4 bytes to sym(saved_line_for_history) +0x0.
  The `lw` at 0x1004c45c loads 4 bytes from abs 0x1014c8a4.
  The `sw` at 0x1004c460 stores 4 bytes to sym(rl_point) +0x0.
  The `lw` at 0x1004c46c loads 4 bytes from abs 0x1014c8ac.
  The `sw` at 0x1004c470 stores 4 bytes to sym(rl_end) +0x0.
  The `lw` at 0x1004c484 loads 4 bytes from abs 0x1014c514.
  The `jalr` at 0x1004c350 calls strlen with a0=[[sym(saved_line_for_history)]], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004c390 calls rl_extend_line_buffer [0x10048940] with a0=ret(strlen), a1=?, a2=[sym(rl_line_buffer_len)], a3=?.
  The `jalr` at 0x1004c3c8 calls strcpy with a0=[0x1024aa28], a1=[[sym(saved_line_for_history)]], a2=?, a3=?.
  The `jal` at 0x1004c410 calls _rl_free_history_entry [0x1004c170] with a0=[sym(saved_line_for_history)], a1=[[sym(saved_line_for_history)]+4], a2=sym(rl_undo_list), a3=?.
  The `jalr` at 0x1004c444 calls strlen with a0=[0x1024aa28], a1=sym(saved_line_for_history), a2=?, a3=?.
  The `jal` at 0x1004c488 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1004c328 targets 0x1004c47c, is taken when at(=[sym(saved_line_for_history)]) == 0, and falls through when at(=[sym(saved_line_for_history)]) != 0.
  The `bne` branch at 0x1004c378 targets 0x1004c398, is taken when a1(=ret(strlen)) < a2(=[sym(rl_line_buffer_len)]) (signed), and falls through when a1(=ret(strlen)) >= a2(=[sym(rl_line_buffer_len)]) (signed).
  The `beq` branch at 0x1004c474 targets 0x1004c490 and is always taken.
  The return at 0x1004c4a0 has v0 = 0x0.
- `maybe_save_line` in `usr/gfx/KONA/bin/kpm` at 0x1004c4b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c4b0-0x1004c5c4 (276 bytes).
  It occupies 276 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c974, including `lw` at 0x1004c4d0, `lw` at 0x1004c504, `lw` at 0x1004c57c.
  3 such `lw` accesses load 4 bytes from sym(saved_line_for_history) +0x0, including `lw` at 0x1004c4d4, `lw` at 0x1004c580, `lw` at 0x1004c5a4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x1004c4ec, `lw` at 0x1004c540.
  The `sw` at 0x1004c508 stores 4 bytes to sym(saved_line_for_history) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x1004c514, `lw` at 0x1004c558.
  2 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x1004c518, `lw` at 0x1004c55c.
  The `lw` at 0x1004c524 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1004c568 loads 4 bytes from abs 0x1014c0f8.
  The `sw` at 0x1004c584 stores 4 bytes to [sym(saved_line_for_history)] +0x0.
  The `lw` at 0x1004c590 loads 4 bytes from abs 0x1014c970.
  The `lw` at 0x1004c594 loads 4 bytes from sym(rl_undo_list) +0x0.
  The `sw` at 0x1004c5a8 stores 4 bytes to [sym(saved_line_for_history)] +0x4.
  The `jal` at 0x1004c4f0 calls xmalloc [0x10061950] with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004c528 calls strlen with a0=[0x1024aa28], a1=sym(saved_line_for_history), a2=?, a3=?.
  The `jal` at 0x1004c544 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004c56c calls strcpy with a0=ret(xmalloc), a1=[0x1024aa28], a2=?, a3=?.
  The `bne` branch at 0x1004c4d8 targets 0x1004c5ac, is taken when at(=[sym(saved_line_for_history)]) != 0, and falls through when at(=[sym(saved_line_for_history)]) == 0.
  The return at 0x1004c5bc has v0 = 0x0.
- `rl_beginning_of_history` in `usr/gfx/KONA/bin/kpm` at 0x1004c5d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c5d0-0x1004c630 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x1004c5f8 loads 4 bytes from abs 0x1014c478.
  The `lw` at 0x1004c610 loads 4 bytes from abs 0x1014c59c.
  The `jal` at 0x1004c5fc calls where_history [0x1003b5e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004c614 calls rl_get_previous_history [0x1004c8f0] with a0=ret(where_history)+1, a1=?, a2=?, a3=?.
  The return at 0x1004c628 has v0 = ret(rl_get_previous_history).
- `rl_end_of_history` in `usr/gfx/KONA/bin/kpm` at 0x1004c630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c630-0x1004c6a4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0x1004c658 loads 4 bytes from abs 0x1014c588.
  The `lw` at 0x1004c66c loads 4 bytes from abs 0x1014c46c.
  The `lw` at 0x1004c680 loads 4 bytes from abs 0x1014c58c.
  The `jal` at 0x1004c65c calls maybe_replace_line [0x1004c200] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004c670 calls using_history [0x1003af60] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004c684 calls maybe_unsave_line [0x1004c300] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x1004c69c has v0 = 0x0.
- `rl_get_next_history` in `usr/gfx/KONA/bin/kpm` at 0x1004c6b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c6b0-0x1004c8e4 (564 bytes).
  It occupies 564 bytes.
  The `lw` at 0x1004c6f0 loads 4 bytes from abs 0x1014c59c.
  The `lw` at 0x1004c730 loads 4 bytes from abs 0x1014c588.
  The `lw` at 0x1004c750 loads 4 bytes from abs 0x1014c490.
  The `lw` at 0x1004c79c loads 4 bytes from abs 0x1014c58c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1004c7b4, `lw` at 0x1004c820, `lw` at 0x1004c83c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x1004c7c0, `lw` at 0x1004c868.
  The `lw` at 0x1004c7dc loads 4 bytes from abs 0x1014c8e4.
  The `lw` at 0x1004c7e0 loads 4 bytes from sym(rl_line_buffer_len) +0x0.
  The `lw` at 0x1004c800 loads 4 bytes from abs 0x1014c520.
  2 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x1004c814, `lw` at 0x1004c858.
  2 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x1004c818, `lw` at 0x1004c85c.
  The `lw` at 0x1004c82c loads 4 bytes from abs 0x1014c0f8.
  The `lw` at 0x1004c848 loads 4 bytes from abs 0x1014c970.
  The `sw` at 0x1004c84c stores 4 bytes to sym(rl_undo_list) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004c884, `lw` at 0x1004c8bc.
  2 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x1004c888, `sw` at 0x1004c8c0.
  The `lw` at 0x1004c894 loads 4 bytes from abs 0x1014c8ac.
  The `sw` at 0x1004c898 stores 4 bytes to sym(rl_end) +0x0.
  The `lw` at 0x1004c8a4 loads 4 bytes from abs 0x1014c7c0.
  The `lw` at 0x1004c8a8 loads 4 bytes from sym(rl_editing_mode) +0x0.
  The `jal` at 0x1004c6f4 calls rl_get_previous_history [0x1004c8f0] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004c734 calls maybe_replace_line [0x1004c200] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jal` at 0x1004c754 calls next_history [0x1003cdc0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004c7a0 calls maybe_unsave_line [0x1004c300] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004c7c4 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004c804 calls rl_extend_line_buffer [0x10048940] with a0=ret(strlen), a1=?, a2=[sym(rl_line_buffer_len)], a3=?.
  The `jalr` at 0x1004c830 calls strcpy with a0=[0x1024aa28], a1=?, a2=?, a3=?.
  The `jalr` at 0x1004c86c calls strlen with a0=[0x1024aa28], a1=?, a2=sym(rl_undo_list), a3=?.
  The `bgez` branch at 0x1004c6d8 targets 0x1004c710, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004c708 targets 0x1004c8cc and is always taken.
  The `bne` branch at 0x1004c714 targets 0x1004c728, is taken when a2(=a0) != 0, and falls through when a2(=a0) == 0.
  The `beq` branch at 0x1004c720 targets 0x1004c8cc and is always taken.
  The `beq` branch at 0x1004c740 targets 0x1004c788, is taken when ra(=a0) == 0, and falls through when ra(=a0) != 0.
  The `beq` branch at 0x1004c768 targets 0x1004c788, is taken when ra(=ret(next_history)) == 0, and falls through when ra(=ret(next_history)) != 0.
  The `bne` branch at 0x1004c780 targets 0x1004c748, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x1004c78c targets 0x1004c7b0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x1004c7a8 targets 0x1004c8c4 and is always taken.
  The `bne` branch at 0x1004c7ec targets 0x1004c80c, is taken when a1(=ret(strlen)) < a2(=[sym(rl_line_buffer_len)]) (signed), and falls through when a1(=ret(strlen)) >= a2(=[sym(rl_line_buffer_len)]) (signed).
  The `bne` branch at 0x1004c8ac targets 0x1004c8c4, is taken when a2(=[sym(rl_editing_mode)]) != 0, and falls through when a2(=[sym(rl_editing_mode)]) == 0.
  The return at 0x1004c8dc has v0 = one of ret(rl_get_previous_history), 0x0.
- `rl_get_previous_history` in `usr/gfx/KONA/bin/kpm` at 0x1004c8f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c8f0-0x1004cb48 (600 bytes).
  It occupies 600 bytes.
  The `lw` at 0x1004c934 loads 4 bytes from abs 0x1014c598.
  The `lw` at 0x1004c974 loads 4 bytes from abs 0x1014c590.
  The `lw` at 0x1004c988 loads 4 bytes from abs 0x1014c588.
  The `lw` at 0x1004c9a8 loads 4 bytes from abs 0x1014c48c.
  The `lw` at 0x1004ca24 loads 4 bytes from abs 0x1014c514.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1004ca3c, `lw` at 0x1004caa8, `lw` at 0x1004cac4.
  The `lw` at 0x1004ca48 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1004ca64 loads 4 bytes from abs 0x1014c8e4.
  The `lw` at 0x1004ca68 loads 4 bytes from sym(rl_line_buffer_len) +0x0.
  The `lw` at 0x1004ca88 loads 4 bytes from abs 0x1014c520.
  The `lw` at 0x1004ca9c loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x1004caa0 loads 4 bytes from abs 0x1024aa28.
  The `lw` at 0x1004cab4 loads 4 bytes from abs 0x1014c0f8.
  The `lw` at 0x1004cad0 loads 4 bytes from abs 0x1014c970.
  The `sw` at 0x1004cad4 stores 4 bytes to sym(rl_undo_list) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004cae8, `lw` at 0x1004cb20.
  2 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x1004caec, `sw` at 0x1004cb24.
  The `lw` at 0x1004caf8 loads 4 bytes from abs 0x1014c8ac.
  The `sw` at 0x1004cafc stores 4 bytes to sym(rl_end) +0x0.
  The `lw` at 0x1004cb08 loads 4 bytes from abs 0x1014c7c0.
  The `lw` at 0x1004cb0c loads 4 bytes from sym(rl_editing_mode) +0x0.
  The `jal` at 0x1004c938 calls rl_get_next_history [0x1004c6b0] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004c978 calls maybe_save_line [0x1004c4b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jal` at 0x1004c98c calls maybe_replace_line [0x1004c200] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004c9ac calls previous_history [0x1003cd10] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004ca28 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004ca4c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004ca8c calls rl_extend_line_buffer [0x10048940] with a0=ret(strlen), a1=?, a2=[sym(rl_line_buffer_len)], a3=?.
  The `jalr` at 0x1004cab8 calls strcpy with a0=[0x1024aa28], a1=?, a2=?, a3=?.
  The `bgez` branch at 0x1004c91c targets 0x1004c954, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004c94c targets 0x1004cb30 and is always taken.
  The `bne` branch at 0x1004c958 targets 0x1004c96c, is taken when a2(=a0) != 0, and falls through when a2(=a0) == 0.
  The `beq` branch at 0x1004c964 targets 0x1004cb30 and is always taken.
  The `beq` branch at 0x1004c998 targets 0x1004c9f0, is taken when ra(=a0) == 0, and falls through when ra(=a0) != 0.
  The `bne` branch at 0x1004c9c0 targets 0x1004c9d0, is taken when ra(=ret(previous_history)) != 0, and falls through when ra(=ret(previous_history)) == 0.
  The `beq` branch at 0x1004c9c8 targets 0x1004c9f0 and is always taken.
  The `bne` branch at 0x1004c9e8 targets 0x1004c9a0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x1004c9f4 targets 0x1004ca10, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x1004ca00 targets 0x1004ca10, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x1004ca14 targets 0x1004ca38, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1004ca30 targets 0x1004cb28 and is always taken.
  The `bne` branch at 0x1004ca74 targets 0x1004ca94, is taken when a1(=ret(strlen)) < a2(=[sym(rl_line_buffer_len)]) (signed), and falls through when a1(=ret(strlen)) >= a2(=[sym(rl_line_buffer_len)]) (signed).
  The `bne` branch at 0x1004cb10 targets 0x1004cb28, is taken when a1(=[sym(rl_editing_mode)]) != 0, and falls through when a1(=[sym(rl_editing_mode)]) == 0.
  The return at 0x1004cb40 has v0 = one of ret(rl_get_next_history), 0x0.
- `rl_execute_next` in `usr/gfx/KONA/bin/kpm` at 0x1004cb50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004cb50-0x1004cb88 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0x1004cb70 loads 4 bytes from abs 0x1014c8d0.
  The `sw` at 0x1004cb74 stores 4 bytes to sym(rl_pending_input) +0x0.
  The return at 0x1004cb80 has v0 = 0x0.
- `rl_set_mark` in `usr/gfx/KONA/bin/kpm` at 0x1004cb90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004cb90-0x1004cc08 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x1004cbb0 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x1004cbb4 loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x1004cbe4 loads 4 bytes from abs 0x1014c8a8.
  The `sw` at 0x1004cbe8 stores 4 bytes to sym(rl_mark) +0x0.
  The `beq` branch at 0x1004cbc0 targets 0x1004cbd8, is taken when v0(=[sym(rl_end)]) >= v1(=a0) (signed), and falls through when v0(=[sym(rl_end)]) < v1(=a0) (signed).
  The `beq` branch at 0x1004cbd0 targets 0x1004cbf4 and is always taken.
  The return at 0x1004cc00 has v0 = one of -0x1, 0x0.
- `rl_exchange_mark_and_point` in `usr/gfx/KONA/bin/kpm` at 0x1004cc10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004cc10-0x1004cd18 (264 bytes).
  It occupies 264 bytes.
  5 such `lw` accesses load 4 bytes from abs 0x1014c8a8, including `lw` at 0x1004cc38, `lw` at 0x1004cc68, `lw` at 0x1004cc78.
  3 such `lw` accesses load 4 bytes from sym(rl_mark) +0x0, including `lw` at 0x1004cc3c, `lw` at 0x1004cc7c, `lw` at 0x1004ccd0.
  The `lw` at 0x1004cc48 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x1004cc4c loads 4 bytes from sym(rl_end) +0x0.
  2 such `sw` accesses store 4 bytes to sym(rl_mark) +0x0, including `sw` at 0x1004cc6c, `sw` at 0x1004ccf4.
  The `lw` at 0x1004cc94 loads 4 bytes from abs 0x1014c514.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004ccb8, `lw` at 0x1004ccdc.
  The `lw` at 0x1004ccbc loads 4 bytes from sym(rl_point) +0x0.
  The `sw` at 0x1004cce0 stores 4 bytes to sym(rl_point) +0x0.
  The `jal` at 0x1004cc98 calls ding [0x100485f0] with a0=?, a1=?, a2=[sym(rl_mark)], a3=-0x1.
  The `beq` branch at 0x1004cc54 targets 0x1004cc70, is taken when at(=[sym(rl_end)]) >= v0(=[sym(rl_mark)]) (signed), and falls through when at(=[sym(rl_end)]) < v0(=[sym(rl_mark)]) (signed).
  The `bne` branch at 0x1004cc84 targets 0x1004ccb0, is taken when a2(=[sym(rl_mark)]) != a3(=-0x1), and falls through when a2(=[sym(rl_mark)]) == a3(=-0x1).
  The `beq` branch at 0x1004cca8 targets 0x1004cd00 and is always taken.
  The return at 0x1004cd10 has v0 = one of -0x1, 0x0.
- `rl_set_retained_kills` in `usr/gfx/KONA/bin/kpm` at 0x1004cd20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004cd20-0x1004cd38 (24 bytes).
  It occupies 24 bytes.
  The return at 0x1004cd30 has v0 = 0x0.
- `rl_kill_text` in `usr/gfx/KONA/bin/kpm` at 0x1004cd40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004cd40-0x1004d238 (1272 bytes).
  It occupies 1272 bytes.
  6 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x1004cd78, `lw` at 0x1004cd8c, `lw` at 0x1004cde8.
  4 such `lw` accesses load 4 bytes from abs 0x1024a900, including `lw` at 0x1004cd7c, `lw` at 0x1004cdec, `lw` at 0x1004d030.
  2 such `sw` accesses store 4 bytes to abs 0x1024a900, including `sw` at 0x1004cd90, `sw` at 0x1004d214.
  The `lw` at 0x1004cdb0 loads 4 bytes from abs 0x1014c51c.
  The `lw` at 0x1004cdd4 loads 4 bytes from abs 0x1014c528.
  12 such `lw` accesses load 4 bytes from abs 0x1014c978, including `lw` at 0x1004ce00, `lw` at 0x1004ce50, `lw` at 0x1004ce68.
  10 such `lw` accesses load 4 bytes from sym(rl_kill_ring) +0x0, including `lw` at 0x1004ce04, `lw` at 0x1004ce6c, `lw` at 0x1004cec0.
  6 such `lw` accesses load 4 bytes from abs 0x1014c980, including `lw` at 0x1004ce20, `lw` at 0x1004ce8c, `lw` at 0x1004cf68.
  2 such `sw` accesses store 4 bytes to sym(rl_kill_ring_length) +0x0, including `sw` at 0x1004ce24, `sw` at 0x1004cf80.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x1004ce38, `lw` at 0x1004d0c4.
  2 such `sw` accesses store 4 bytes to sym(rl_kill_ring) +0x0, including `sw` at 0x1004ce54, `sw` at 0x1004cfd4.
  The `sw` at 0x1004ce78 stores 4 bytes to [sym(rl_kill_ring)] +0x0.
  4 such `lw` accesses load 4 bytes from sym(rl_kill_ring_length) +0x0, including `lw` at 0x1004ce90, `lw` at 0x1004cf6c, `lw` at 0x1004cf90.
  The `lw` at 0x1004cea0 loads 4 bytes from abs 0x1014c7e0.
  The `lw` at 0x1004cea4 loads 4 bytes from sym(rl_max_kills) +0x0.
  The `lw` at 0x1004cec4 loads 4 bytes from [sym(rl_kill_ring)] +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1004ced0, `lw` at 0x1004d16c, `lw` at 0x1004d184.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1004cf14, `lw` at 0x1004d070.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1004cf34, `sw` at 0x1004d000, `sw` at 0x1004d1b0.
  The `lw` at 0x1004cfb8 loads 4 bytes from abs 0x1014c6e8.
  The `lw` at 0x1004d044 loads 4 bytes from abs 0x1014c7c0.
  The `lw` at 0x1004d048 loads 4 bytes from sym(rl_editing_mode) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x1004d084, `lw` at 0x1004d0a0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c0f8, including `lw` at 0x1004d0f8, `lw` at 0x1004d138.
  2 such `lw` accesses load 4 bytes from abs 0x1014c0ec, including `lw` at 0x1004d114, `lw` at 0x1004d154.
  The `lw` at 0x1004d1ec loads 4 bytes from abs 0x1014c97c.
  The `sw` at 0x1004d1f0 stores 4 bytes to sym(rl_kill_index) +0x0.
  The `jal` at 0x1004cdb4 calls rl_copy_text [0x10048860] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004cdd8 calls rl_delete_text [0x10048d90] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1004ce3c calls xmalloc [0x10061950] with a0=0x8, a1=sym(rl_kill_ring_length), a2=?, a3=?.
  The `jalr` at 0x1004ced4 calls free with a0=[[sym(rl_kill_ring)]], a1=?, a2=?, a3=?, a4=[sym(rl_max_kills)], a5=[sym(rl_kill_ring_length)].
  The `jal` at 0x1004cfbc calls xrealloc [0x100619d0] with a0=[sym(rl_kill_ring)], a1=([sym(rl_kill_ring_length)] << 0x2), a2=[sym(rl_kill_ring_length)]+1, a3=sym(rl_kill_ring_length), a4=[sym(rl_max_kills)], a5=[sym(rl_kill_ring_length)].
  The `jalr` at 0x1004d088 calls strlen with a0=?, a1=?, a2=?, a3=?, a7=[0x1024a900].
  The `jalr` at 0x1004d0a4 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004d0c8 calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004d0fc calls strcpy with a0=ret(xmalloc), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x1004d118 calls strcat with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004d13c calls strcpy with a0=ret(xmalloc), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x1004d158 calls strcat with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004d170 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004d188 calls free with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1004cd68 targets 0x1004cda0, is taken when at(=a0) != v0(=a1), and falls through when at(=a0) == v0(=a1).
  The `beq` branch at 0x1004cd98 targets 0x1004d220 and is always taken.
  The `bne` branch at 0x1004cdf0 targets 0x1004d00c, is taken when ra(=[0x1024a900]) != 0, and falls through when ra(=[0x1024a900]) == 0.
  The `bne` branch at 0x1004ce08 targets 0x1004ce84, is taken when at(=[sym(rl_kill_ring)]) != 0, and falls through when at(=[sym(rl_kill_ring)]) == 0.
  The `beq` branch at 0x1004ce7c targets 0x1004d004 and is always taken.
  The `bne` branch at 0x1004ceac targets 0x1004cf60, is taken when a4(=[sym(rl_max_kills)]) != a5(=[sym(rl_kill_ring_length)]), and falls through when a4(=[sym(rl_max_kills)]) == a5(=[sym(rl_kill_ring_length)]).
  The `beq` branch at 0x1004ceec targets 0x1004cf58, is taken when a1(=0x0) >= a2(?) (signed), and falls through when a1(=0x0) < a2(?) (signed).
  The `bne` branch at 0x1004cf50 targets 0x1004cef4, is taken when a3(?) < a4(?) (signed), and falls through when a3(?) >= a4(?) (signed).
  The `beq` branch at 0x1004cf58 targets 0x1004cfd8 and is always taken.
  The `beq` branch at 0x1004d004 targets 0x1004d024 and is always taken.
  The `beq` branch at 0x1004d034 targets 0x1004d1bc, is taken when a7(=[0x1024a900]) == 0, and falls through when a7(=[0x1024a900]) != 0.
  The `beq` branch at 0x1004d04c targets 0x1004d1bc, is taken when t0(=[sym(rl_editing_mode)]) == 0, and falls through when t0(=[sym(rl_editing_mode)]) != 0.
  The `beq` branch at 0x1004d0e0 targets 0x1004d128, is taken when a1(=a0) >= a2(=a1) (signed), and falls through when a1(=a0) < a2(=a1) (signed).
  The `beq` branch at 0x1004d120 targets 0x1004d160 and is always taken.
  The `beq` branch at 0x1004d1b4 targets 0x1004d1e0 and is always taken.
  The return at 0x1004d230 has v0 = 0x0.
- `rl_kill_word` in `usr/gfx/KONA/bin/kpm` at 0x1004d240 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004d240-0x1004d33c (252 bytes).
  It occupies 252 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004d268, `lw` at 0x1004d2cc, `lw` at 0x1004d2ec.
  3 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004d26c, `lw` at 0x1004d2d0, `lw` at 0x1004d2f0.
  The `lw` at 0x1004d290 loads 4 bytes from abs 0x1014c5b0.
  The `lw` at 0x1004d2b8 loads 4 bytes from abs 0x1014c53c.
  The `lw` at 0x1004d2fc loads 4 bytes from abs 0x1014c5a8.
  The `sw` at 0x1004d318 stores 4 bytes to sym(rl_point) +0x0.
  The `jal` at 0x1004d294 calls rl_backward_kill_word [0x1004d340] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d2bc calls rl_forward_word [0x10049200] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d300 calls rl_kill_text [0x1004cd40] with a0=?, a1=[sym(rl_point)], a2=?, a3=?.
  The `bgez` branch at 0x1004d278 targets 0x1004d2ac, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004d2a4 targets 0x1004d324 and is always taken.
  The `beq` branch at 0x1004d2d8 targets 0x1004d308, is taken when ra(=[sym(rl_point)]) == at(?), and falls through when ra(=[sym(rl_point)]) != at(?).
  The return at 0x1004d334 has v0 = one of ret(rl_backward_kill_word), 0x0.
- `rl_backward_kill_word` in `usr/gfx/KONA/bin/kpm` at 0x1004d340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004d340-0x1004d428 (232 bytes).
  It occupies 232 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004d368, `lw` at 0x1004d3cc, `lw` at 0x1004d3ec.
  3 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004d36c, `lw` at 0x1004d3d0, `lw` at 0x1004d3f0.
  The `lw` at 0x1004d390 loads 4 bytes from abs 0x1014c5ac.
  The `lw` at 0x1004d3b8 loads 4 bytes from abs 0x1014c540.
  The `lw` at 0x1004d3fc loads 4 bytes from abs 0x1014c5a8.
  The `jal` at 0x1004d394 calls rl_kill_word [0x1004d240] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d3bc calls rl_backward_word [0x10049530] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d400 calls rl_kill_text [0x1004cd40] with a0=?, a1=[sym(rl_point)], a2=?, a3=?.
  The `bgez` branch at 0x1004d378 targets 0x1004d3ac, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004d3a4 targets 0x1004d410 and is always taken.
  The `beq` branch at 0x1004d3d8 targets 0x1004d408, is taken when ra(=[sym(rl_point)]) == at(?), and falls through when ra(=[sym(rl_point)]) != at(?).
  The return at 0x1004d420 has v0 = one of ret(rl_kill_word), 0x0.
- `rl_kill_line` in `usr/gfx/KONA/bin/kpm` at 0x1004d430 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004d430-0x1004d524 (244 bytes).
  It occupies 244 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004d458, `lw` at 0x1004d4b4, `lw` at 0x1004d4d4.
  3 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004d45c, `lw` at 0x1004d4b8, `lw` at 0x1004d4d8.
  The `lw` at 0x1004d47c loads 4 bytes from abs 0x1014c5b8.
  The `lw` at 0x1004d4a0 loads 4 bytes from abs 0x1014c538.
  The `lw` at 0x1004d4e4 loads 4 bytes from abs 0x1014c5a8.
  The `sw` at 0x1004d500 stores 4 bytes to sym(rl_point) +0x0.
  The `jal` at 0x1004d480 calls rl_backward_kill_line [0x1004d530] with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d4a4 calls rl_end_of_line [0x100491c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d4e8 calls rl_kill_text [0x1004cd40] with a0=?, a1=[sym(rl_point)], a2=?, a3=?.
  The `bgez` branch at 0x1004d468 targets 0x1004d498, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004d490 targets 0x1004d50c and is always taken.
  The `beq` branch at 0x1004d4c0 targets 0x1004d4f0, is taken when ra(=[sym(rl_point)]) == at(?), and falls through when ra(=[sym(rl_point)]) != at(?).
  The return at 0x1004d51c has v0 = one of ret(rl_backward_kill_line), 0x0.
- `rl_backward_kill_line` in `usr/gfx/KONA/bin/kpm` at 0x1004d530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004d530-0x1004d628 (248 bytes).
  It occupies 248 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004d558, `lw` at 0x1004d5a0, `lw` at 0x1004d5ec.
  3 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004d55c, `lw` at 0x1004d5a4, `lw` at 0x1004d5f0.
  The `lw` at 0x1004d57c loads 4 bytes from abs 0x1014c5b4.
  The `lw` at 0x1004d5b8 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1004d5d4 loads 4 bytes from abs 0x1014c534.
  The `lw` at 0x1004d5fc loads 4 bytes from abs 0x1014c5a8.
  The `jal` at 0x1004d580 calls rl_kill_line [0x1004d430] with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d5bc calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d5d8 calls rl_beg_of_line [0x10049190] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d600 calls rl_kill_text [0x1004cd40] with a0=?, a1=[sym(rl_point)], a2=?, a3=?.
  The `bgez` branch at 0x1004d568 targets 0x1004d598, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004d590 targets 0x1004d610 and is always taken.
  The `bne` branch at 0x1004d5a8 targets 0x1004d5cc, is taken when at(=[sym(rl_point)]) != 0, and falls through when at(=[sym(rl_point)]) == 0.
  The `beq` branch at 0x1004d5c4 targets 0x1004d608 and is always taken.
  The return at 0x1004d620 has v0 = one of ret(rl_kill_line), 0x0.
- `rl_kill_full_line` in `usr/gfx/KONA/bin/kpm` at 0x1004d630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004d630-0x1004d6d4 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x1004d658 loads 4 bytes from abs 0x1014c574.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004d66c, `lw` at 0x1004d67c.
  The `sw` at 0x1004d670 stores 4 bytes to sym(rl_point) +0x0.
  The `lw` at 0x1004d680 loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x1004d68c loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x1004d690 loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x1004d69c loads 4 bytes from abs 0x1014c5a8.
  The `lw` at 0x1004d6b0 loads 4 bytes from abs 0x1014c578.
  The `jal` at 0x1004d65c calls rl_begin_undo_group [0x1004bdb0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d6a0 calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=[sym(rl_end)], a2=?, a3=?.
  The `jal` at 0x1004d6b4 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x1004d6cc has v0 = 0x0.
- `rl_yank` in `usr/gfx/KONA/bin/kpm` at 0x1004d6e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004d6e0-0x1004d7c0 (224 bytes).
  It occupies 224 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c978, including `lw` at 0x1004d708, `lw` at 0x1004d768.
  2 such `lw` accesses load 4 bytes from sym(rl_kill_ring) +0x0, including `lw` at 0x1004d70c, `lw` at 0x1004d76c.
  The `lw` at 0x1004d720 loads 4 bytes from abs 0x1014c518.
  The `lw` at 0x1004d744 loads 4 bytes from abs 0x1014c8a4.
  The `lw` at 0x1004d748 loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x1004d754 loads 4 bytes from abs 0x1014c5a4.
  The `lw` at 0x1004d778 loads 4 bytes from abs 0x1014c97c.
  The `lw` at 0x1004d77c loads 4 bytes from sym(rl_kill_index) +0x0.
  The `lw` at 0x1004d788 loads 4 bytes from ([sym(rl_kill_ring)] + ([sym(rl_kill_index)] << 0x2)) +0x0.
  The `lw` at 0x1004d794 loads 4 bytes from abs 0x1014c524.
  The `jal` at 0x1004d724 calls rl_abort [0x10048750] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d758 calls rl_set_mark [0x1004cb90] with a0=[sym(rl_point)], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d798 calls rl_insert_text [0x10048a40] with a0=[([sym(rl_kill_ring)] + ([sym(rl_kill_index)] << 0x2))], a1=([sym(rl_kill_index)] << 0x2), a2=?, a3=?.
  The `bne` branch at 0x1004d710 targets 0x1004d73c, is taken when at(=[sym(rl_kill_ring)]) != 0, and falls through when at(=[sym(rl_kill_ring)]) == 0.
  The `beq` branch at 0x1004d734 targets 0x1004d7a8 and is always taken.
  The return at 0x1004d7b8 has v0 = one of -0x1, 0x0.
- `rl_yank_pop` in `usr/gfx/KONA/bin/kpm` at 0x1004d7c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004d7c0-0x1004da74 (692 bytes).
  It occupies 692 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8b4, including `lw` at 0x1004d7e8, `lw` at 0x1004d80c.
  2 such `lw` accesses load 4 bytes from sym(rl_last_func) +0x0, including `lw` at 0x1004d7ec, `lw` at 0x1004d810.
  The `lw` at 0x1004d7f8 loads 4 bytes from abs 0x1014c5c0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c5bc, including `lw` at 0x1004d81c, `lw` at 0x1004da1c.
  3 such `lw` accesses load 4 bytes from abs 0x1014c978, including `lw` at 0x1004d830, `lw` at 0x1004d86c, `lw` at 0x1004d900.
  3 such `lw` accesses load 4 bytes from sym(rl_kill_ring) +0x0, including `lw` at 0x1004d834, `lw` at 0x1004d870, `lw` at 0x1004d904.
  2 such `lw` accesses load 4 bytes from abs 0x1014c518, including `lw` at 0x1004d848, `lw` at 0x1004da3c.
  6 such `lw` accesses load 4 bytes from abs 0x1014c97c, including `lw` at 0x1004d87c, `lw` at 0x1004d910, `lw` at 0x1004d9b4.
  4 such `lw` accesses load 4 bytes from sym(rl_kill_index) +0x0, including `lw` at 0x1004d880, `lw` at 0x1004d914, `lw` at 0x1004d9b8.
  2 such `lw` accesses load 4 bytes from ([sym(rl_kill_ring)] + ([sym(rl_kill_index)] << 0x2)) +0x0, including `lw` at 0x1004d88c, `lw` at 0x1004d920.
  The `lw` at 0x1004d898 loads 4 bytes from abs 0x1014c158.
  6 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004d8b4, `lw` at 0x1004d8e4, `lw` at 0x1004d950.
  5 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004d8b8, `lw` at 0x1004d8e8, `lw` at 0x1004d954.
  The `lw` at 0x1004d8d4 loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x1004d8d8 loads 4 bytes from abs 0x1024aa28.
  The `lw` at 0x1004d930 loads 4 bytes from abs 0x1014c170.
  The `lw` at 0x1004d978 loads 4 bytes from abs 0x1014c528.
  The `sw` at 0x1004d9a8 stores 4 bytes to sym(rl_point) +0x0.
  2 such `sw` accesses store 4 bytes to sym(rl_kill_index) +0x0, including `sw` at 0x1004d9cc, `sw` at 0x1004da08.
  The `lw` at 0x1004d9f0 loads 4 bytes from abs 0x1014c980.
  The `lw` at 0x1004d9f4 loads 4 bytes from sym(rl_kill_ring_length) +0x0.
  The `jal` at 0x1004d84c calls rl_abort [0x10048750] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004d89c calls strlen with a0=[([sym(rl_kill_ring)] + ([sym(rl_kill_index)] << 0x2))], a1=([sym(rl_kill_index)] << 0x2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004d934 calls strncmp with a0=?, a1=[([sym(rl_kill_ring)] + ([sym(rl_kill_index)] << 0x2))], a2=ret(strlen), a3=?.
  The `jal` at 0x1004d97c calls rl_delete_text [0x10048d90] with a0=?, a1=[sym(rl_point)], a2=?, a3=?.
  The `jal` at 0x1004da20 calls rl_yank [0x1004d6e0] with a0=0x1, a1=0x0, a2=[sym(rl_kill_index)]-1, a3=sym(rl_kill_index).
  The `jal` at 0x1004da40 calls rl_abort [0x10048750] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004d7fc targets 0x1004d828, is taken when at(=[sym(rl_last_func)]) == v0(=sym(rl_yank_pop)), and falls through when at(=[sym(rl_last_func)]) != v0(=sym(rl_yank_pop)).
  The `bne` branch at 0x1004d820 targets 0x1004d840, is taken when v1(=[sym(rl_last_func)]) != a0(=sym(rl_yank)), and falls through when v1(=[sym(rl_last_func)]) == a0(=sym(rl_yank)).
  The `bne` branch at 0x1004d838 targets 0x1004d864, is taken when a0(=[sym(rl_kill_ring)]) != 0, and falls through when a0(=[sym(rl_kill_ring)]) == 0.
  The `beq` branch at 0x1004d85c targets 0x1004da5c and is always taken.
  The `bltz` branch at 0x1004d8c4 targets 0x1004da34, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bne` branch at 0x1004d940 targets 0x1004da34, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `bgez` branch at 0x1004d9e0 targets 0x1004da0c, is taken when a1(=[sym(rl_kill_index)]) >= 0 (signed), and falls through when a1(=[sym(rl_kill_index)]) < 0 (signed).
  The `beq` branch at 0x1004da2c targets 0x1004da5c and is always taken.
  The `beq` branch at 0x1004da54 targets 0x1004da5c and is always taken.
  The return at 0x1004da6c has v0 = one of -0x1, 0x0.
- `rl_yank_nth_arg` in `usr/gfx/KONA/bin/kpm` at 0x1004da80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004da80-0x1004dc3c (444 bytes).
  It occupies 444 bytes.
  The `lw` at 0x1004daa8 loads 4 bytes from abs 0x1014c48c.
  The `lw` at 0x1004dad0 loads 4 bytes from abs 0x1014c490.
  2 such `lw` accesses load 4 bytes from abs 0x1014c514, including `lw` at 0x1004daec, `lw` at 0x1004db58.
  The `lw` at 0x1004db14 loads 4 bytes from ?.
  The `lw` at 0x1004db20 loads 4 bytes from abs 0x1014c4a4.
  The `lbu` at 0x1004db44 loads 1 byte from ret(history_arg_extract) +0x0.
  The `lw` at 0x1004db7c loads 4 bytes from abs 0x1014c574.
  The `lw` at 0x1004db90 loads 4 bytes from abs 0x1014c7c0.
  The `lw` at 0x1004db94 loads 4 bytes from sym(rl_editing_mode) +0x0.
  The `lw` at 0x1004dba8 loads 4 bytes from abs 0x1014c648.
  The `lw` at 0x1004dbbc loads 4 bytes from abs 0x1014bfb4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c524, including `lw` at 0x1004dbcc, `lw` at 0x1004dbe4.
  The `lw` at 0x1004dbfc loads 4 bytes from abs 0x1014c114.
  The `lw` at 0x1004dc10 loads 4 bytes from abs 0x1014c578.
  The `jal` at 0x1004daac calls previous_history [0x1003cd10] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004dad4 calls next_history [0x1003cdc0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004daf0 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004db24 calls history_arg_extract [0x1003ffa0] with a0=a0 at entry (arg0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1004db5c calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=ret(history_arg_extract).
  The `jal` at 0x1004db80 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=ret(history_arg_extract), a4=[ret(history_arg_extract)]:1.
  The `jal` at 0x1004dbac calls rl_vi_append_mode [0x10056fa0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004dbd0 calls rl_insert_text [0x10048a40] with a0=0x10092b36, a1=?, a2=?, a3=?.
  The `jal` at 0x1004dbe8 calls rl_insert_text [0x10048a40] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004dc00 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004dc14 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004dac0 targets 0x1004dae4, is taken when at(=ret(previous_history)) == 0, and falls through when at(=ret(previous_history)) != 0.
  The `beq` branch at 0x1004dadc targets 0x1004db08 and is always taken.
  The `beq` branch at 0x1004db00 targets 0x1004dc24 and is always taken.
  The `beq` branch at 0x1004db38 targets 0x1004db50, is taken when a3(=ret(history_arg_extract)) == 0, and falls through when a3(=ret(history_arg_extract)) != 0.
  The `bne` branch at 0x1004db48 targets 0x1004db74, is taken when a4(=[ret(history_arg_extract)]:1) != 0, and falls through when a4(=[ret(history_arg_extract)]:1) == 0.
  The `beq` branch at 0x1004db6c targets 0x1004dc24 and is always taken.
  The `bne` branch at 0x1004db98 targets 0x1004dbd8, is taken when ra(=[sym(rl_editing_mode)]) != 0, and falls through when ra(=[sym(rl_editing_mode)]) == 0.
  The return at 0x1004dc34 has v0 = one of -0x1, 0x0.
- `rl_yank_last_arg` in `usr/gfx/KONA/bin/kpm` at 0x1004dc40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004dc40-0x1004dcf4 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0x1004dc68 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x1004dc6c loads 4 bytes from sym(rl_explicit_arg) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c5c4, including `lw` at 0x1004dc88, `lw` at 0x1004dcb8.
  The `jal` at 0x1004dc8c calls rl_yank_nth_arg [0x1004da80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004dcbc calls rl_yank_nth_arg [0x1004da80] with a0=0x24, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1004dc70 targets 0x1004dca8, is taken when at(=[sym(rl_explicit_arg)]) == 0, and falls through when at(=[sym(rl_explicit_arg)]) != 0.
  The `beq` branch at 0x1004dca0 targets 0x1004dcdc and is always taken.
  The `beq` branch at 0x1004dcd4 targets 0x1004dcdc and is always taken.
  The return at 0x1004dcec has v0 = ret(rl_yank_nth_arg).
- `rl_vi_editing_mode` in `usr/gfx/KONA/bin/kpm` at 0x1004dd00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004dd00-0x1004dd5c (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x1004dd28 loads 4 bytes from abs 0x1014c7c0.
  The `sw` at 0x1004dd2c stores 4 bytes to sym(rl_editing_mode) +0x0.
  The `lw` at 0x1004dd38 loads 4 bytes from abs 0x1014c64c.
  The `jal` at 0x1004dd3c calls rl_vi_insertion_mode [0x100570f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004dd54 has v0 = 0x0.
- `rl_emacs_editing_mode` in `usr/gfx/KONA/bin/kpm` at 0x1004dd60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004dd60-0x1004ddb8 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x1004dd84 loads 4 bytes from abs 0x1014c7c0.
  The `sw` at 0x1004dd88 stores 4 bytes to sym(rl_editing_mode) +0x0.
  The `lw` at 0x1004dd94 loads 4 bytes from abs 0x1014c7f0.
  The `lw` at 0x1004dda0 loads 4 bytes from abs 0x1014c7bc.
  The `sw` at 0x1004dda4 stores 4 bytes to sym(_rl_keymap) +0x0.
  The return at 0x1004ddb0 has v0 = 0x0.
- `rl_getc` in `usr/gfx/KONA/bin/kpm` at 0x1004ddc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004ddc0-0x1004df5c (412 bytes).
  It occupies 412 bytes.
  3 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0xe, including `lhu` at 0x1004ddec, `lhu` at 0x1004de70, `lhu` at 0x1004ded8.
  The `lw` at 0x1004de00 loads 4 bytes from abs 0x1014c0f4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c134, including `lw` at 0x1004de58, `lw` at 0x1004df10.
  2 such `lw` accesses load 4 bytes from sym(errno) +0x0, including `lw` at 0x1004de5c, `lw` at 0x1004df14.
  2 such `lw` accesses load 4 bytes from abs 0x1014c198, including `lw` at 0x1004de84, `lw` at 0x1004deec.
  The `jalr` at 0x1004de04 calls read with a0=[a0+14]:2, a1=sp-64, a2=0x1, a3=?.
  The `jalr` at 0x1004de88 calls fcntl with a0=[a0+14]:2, a1=0x3, a2=0x0, a3=?, a4=ret(read), a6=[sym(errno)], a7=0xb.
  The `jalr` at 0x1004def0 calls fcntl with a0=[a0+14]:2, a1=0x4, a2=?, a3=?.
  The `beq` branch at 0x1004dde0 targets 0x1004df44 and is never taken: its operands are equal constants, so execution always falls through.
  The `bne` branch at 0x1004de1c targets 0x1004de34, is taken when a1(=ret(read)) != a2(=0x1), and falls through when a1(=ret(read)) == a2(=0x1).
  The `beq` branch at 0x1004de2c targets 0x1004df44 and is always taken.
  The `bne` branch at 0x1004de38 targets 0x1004de50, is taken when a4(=ret(read)) != 0, and falls through when a4(=ret(read)) == 0.
  The `beq` branch at 0x1004de48 targets 0x1004df44 and is always taken.
  The `bne` branch at 0x1004de64 targets 0x1004df08, is taken when a6(=[sym(errno)]) != a7(=0xb), and falls through when a6(=[sym(errno)]) == a7(=0xb).
  The `bgez` branch at 0x1004de9c targets 0x1004deb4, is taken when a1(=ret(fcntl)) >= 0 (signed), and falls through when a1(=ret(fcntl)) < 0 (signed).
  The `beq` branch at 0x1004deac targets 0x1004df44 and is always taken.
  The `beq` branch at 0x1004debc targets 0x1004df00, is taken when (a3(=ret(fcntl)) & 0x4) == 0, and falls through when (a3(=ret(fcntl)) & 0x4) != 0.
  The `beq` branch at 0x1004def8 targets 0x1004df38 and is always taken.
  The `beq` branch at 0x1004df00 targets 0x1004df38 and is always taken.
  The `beq` branch at 0x1004df1c targets 0x1004df38, is taken when a3(=[sym(errno)]) == a4(=0x4), and falls through when a3(=[sym(errno)]) != a4(=0x4).
  The `beq` branch at 0x1004df30 targets 0x1004df44 and is always taken.
  The `bne` branch at 0x1004df3c targets 0x1004dde8 and is always taken.
  The return at 0x1004df54 has v0 = one of ?, -0x1.
- `savestring` in `usr/gfx/KONA/bin/kpm` at 0x1004df60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004df60-0x1004dfdc (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x1004df88 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1004dfa0 loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x1004dfbc loads 4 bytes from abs 0x1014c0f8.
  The `jalr` at 0x1004df8c calls strlen with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004dfa4 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004dfc0 calls strcpy with a0=ret(xmalloc), a1=a0 at entry (arg0), a2=?, a3=?.
  The return at 0x1004dfd4 has v0 = ret(strcpy).
- `uppercase_p` in `usr/gfx/KONA/bin/kpm` at 0x1004dfe0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004dfe0-0x1004e028 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0x1004dffc loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1004e000 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004e014 loads 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4.
  The return at 0x1004e020 has v0 = ?.
- `lowercase_p` in `usr/gfx/KONA/bin/kpm` at 0x1004e030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004e030-0x1004e078 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0x1004e04c loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1004e050 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004e064 loads 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4.
  The return at 0x1004e070 has v0 = ?.
- `pure_alphabetic` in `usr/gfx/KONA/bin/kpm` at 0x1004e080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004e080-0x1004e120 (160 bytes).
  It occupies 160 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x1004e0a0, `lw` at 0x1004e0d0.
  2 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x1004e0a4, `lw` at 0x1004e0d4.
  2 such `lw` accesses load 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4, including `lw` at 0x1004e0b8, `lw` at 0x1004e0e8.
  The `bne` branch at 0x1004e0c0 targets 0x1004e0f8, is taken when (v0(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x1) != 0, and falls through when (v0(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x1) == 0.
  The `beq` branch at 0x1004e0f0 targets 0x1004e108, is taken when (a0(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x2) == 0, and falls through when (a0(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x2) != 0.
  The `beq` branch at 0x1004e100 targets 0x1004e10c and is always taken.
  The return at 0x1004e118 has v0 = one of 0x0, 0x1.
- `digit_p` in `usr/gfx/KONA/bin/kpm` at 0x1004e120 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004e120-0x1004e168 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0x1004e13c loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1004e140 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004e154 loads 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4.
  The return at 0x1004e160 has v0 = ?.
- `to_lower` in `usr/gfx/KONA/bin/kpm` at 0x1004e170 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004e170-0x1004e204 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x1004e194 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1004e198 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004e1ac loads 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4.
  The `lw` at 0x1004e1c8 loads 4 bytes from abs 0x1014c234.
  The `jalr` at 0x1004e1cc calls tolower with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1004e1b4 targets 0x1004e1e4, is taken when (at(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x1) == 0, and falls through when (at(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x1004e1dc targets 0x1004e1ec and is always taken.
  The return at 0x1004e1fc has v0 = one of ret(tolower), a0.
- `to_upper` in `usr/gfx/KONA/bin/kpm` at 0x1004e210 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004e210-0x1004e2a4 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x1004e234 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1004e238 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004e24c loads 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4.
  The `lw` at 0x1004e268 loads 4 bytes from abs 0x1014c260.
  The `jalr` at 0x1004e26c calls toupper with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1004e254 targets 0x1004e284, is taken when (at(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x2) == 0, and falls through when (at(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x2) != 0.
  The `beq` branch at 0x1004e27c targets 0x1004e28c and is always taken.
  The return at 0x1004e29c has v0 = one of ret(toupper), a0.
- `digit_value` in `usr/gfx/KONA/bin/kpm` at 0x1004e2b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004e2b0-0x1004e328 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x1004e2d0 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1004e2d4 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004e2e8 loads 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4.
  The `beq` branch at 0x1004e2f0 targets 0x1004e30c, is taken when (v0(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x4) == 0, and falls through when (v0(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x4) != 0.
  The `beq` branch at 0x1004e304 targets 0x1004e314 and is always taken.
  The return at 0x1004e320 has v0 = one of a0-48, a0.
- `rl_expand_prompt` in `usr/gfx/KONA/bin/kpm` at 0x1004e570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004e570-0x1004e7a4 (564 bytes).
  It occupies 564 bytes.
  15 such `lw` accesses load 4 bytes from abs 0x1014bff4, including `lw` at 0x1004e594, `lw` at 0x1004e5ac, `lw` at 0x1004e5d0.
  2 such `lw` accesses load 4 bytes from abs 0x1024adbc, including `lw` at 0x1004e598, `lw` at 0x1004e5b0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1004e5bc, `lw` at 0x1004e5f8.
  2 such `lw` accesses load 4 bytes from abs 0x1024adc0, including `lw` at 0x1004e5d4, `lw` at 0x1004e5ec.
  3 such `sw` accesses store 4 bytes to abs 0x1024adc0, including `sw` at 0x1004e614, `sw` at 0x1004e6a0, `sw` at 0x1004e75c.
  3 such `sw` accesses store 4 bytes to abs 0x1024adbc, including `sw` at 0x1004e624, `sw` at 0x1004e690, `sw` at 0x1004e70c.
  The `lw` at 0x1004e638 loads 4 bytes from abs 0x1014c1e4.
  3 such `lw` accesses load 4 bytes from abs 0x1014bff8, including `lw` at 0x1004e674, `lw` at 0x1004e6f0, `lw` at 0x1004e740.
  The `lw` at 0x1004e6b0 loads 4 bytes from abs 0x1024adc4.
  The `lbu` at 0x1004e714 loads 1 byte from ?.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x1004e720, `sb` at 0x1004e768.
  The `lw` at 0x1004e778 loads 4 bytes from abs 0x1024adc8.
  The `jalr` at 0x1004e5c0 calls free with a0=[0x1024adbc], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004e5fc calls free with a0=[0x1024adc0], a1=[0x1024adc0], a2=?, a3=?.
  The `jalr` at 0x1004e63c calls strrchr with a0=a0 at entry (arg0), a1=0xa, a2=?, a3=?.
  The `jal` at 0x1004e678 calls (unnamed) [0x1004e330] with a0=a0 at entry (arg0), a1=0x1024adc4, a2=?, a3=?.
  The `jal` at 0x1004e6f4 calls (unnamed) [0x1004e330] with a0=ret(strrchr)+1, a1=0x1024adc4, a2=ret(strrchr)+1, a3=ret(strrchr)+1.
  The `jal` at 0x1004e744 calls (unnamed) [0x1004e330] with a0=a0 at entry (arg0), a1=0x1024adc8, a2=?, a3=?, a4=0x1024ad18.
  The `beq` branch at 0x1004e59c targets 0x1004e5c8, is taken when at(=[0x1024adbc]) == 0, and falls through when at(=[0x1024adbc]) != 0.
  The `beq` branch at 0x1004e5d8 targets 0x1004e604, is taken when a1(=[0x1024adc0]) == 0, and falls through when a1(=[0x1024adc0]) != 0.
  The `bne` branch at 0x1004e650 targets 0x1004e6c0, is taken when v0(=ret(strrchr)) != 0, and falls through when v0(=ret(strrchr)) == 0.
  The `beq` branch at 0x1004e6b8 targets 0x1004e78c and is always taken.
  The `beq` branch at 0x1004e784 targets 0x1004e78c and is always taken.
  The return at 0x1004e79c has v0 = [one of 0x1024adc4, 0x1024adc8].
- `rl_redisplay` in `usr/gfx/KONA/bin/kpm` at 0x1004e7b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004e7b0-0x1004fff0 (6208 bytes).
  It occupies 6208 bytes.
  63 such `lw` accesses load 4 bytes from abs 0x1014bff4, including `lw` at 0x1004e7d0, `lw` at 0x1004e840, `lw` at 0x1004e880.
  12 such `lw` accesses load 4 bytes from abs 0x1024ad34, including `lw` at 0x1004e7d4, `lw` at 0x1004e844, `lw` at 0x1004e8cc.
  The `lw` at 0x1004e7ec loads 4 bytes from abs 0x1014c7cc.
  The `lw` at 0x1004e7f0 loads 4 bytes from sym(readline_echoing_p) +0x0.
  7 such `lw` accesses load 4 bytes from abs 0x1014c988, including `lw` at 0x1004e80c, `lw` at 0x1004e830, `lw` at 0x1004ea5c.
  6 such `lw` accesses load 4 bytes from sym(rl_display_prompt) +0x0, including `lw` at 0x1004e810, `lw` at 0x1004ea60, `lw` at 0x1004ebd8.
  3 such `lw` accesses load 4 bytes from abs 0x1014bffc, including `lw` at 0x1004e824, `lw` at 0x1004ee90, `lw` at 0x1004f274.
  The `sw` at 0x1004e834 stores 4 bytes to sym(rl_display_prompt) +0x0.
  9 such `lw` accesses load 4 bytes from abs 0x1014c000, including `lw` at 0x1004e858, `lw` at 0x1004e890, `lw` at 0x1004e8e0.
  8 such `lw` accesses load 4 bytes from abs 0x10149028, including `lw` at 0x1004e85c, `lw` at 0x1004e894, `lw` at 0x1004e8e4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x1004e868, `lw` at 0x1004e8a0.
  3 such `sw` accesses store 4 bytes to abs 0x1024ad30, including `sw` at 0x1004e884, `sw` at 0x1004edc0, `sw` at 0x1004ff58.
  3 such `sw` accesses store 4 bytes to abs 0x1024ad34, including `sw` at 0x1004e8bc, `sw` at 0x1004ee08, `sw` at 0x1004ff6c.
  7 such `lw` accesses load 4 bytes from abs 0x1024ad30, including `lw` at 0x1004e908, `lw` at 0x1004ea10, `lw` at 0x1004ed88.
  16 such `sb` accesses store 1 byte to ?, including `sb` at 0x1004e910, `sb` at 0x1004e930, `sb` at 0x1004e9f0.
  The `lw` at 0x1004e968 loads 4 bytes from abs 0x1014c5d4.
  The `lw` at 0x1004e988 loads 4 bytes from abs 0x1014c8dc.
  The `lw` at 0x1004e98c loads 4 bytes from sym(_rl_mark_modified_lines) +0x0.
  The `lw` at 0x1004e9a0 loads 4 bytes from abs 0x1014c488.
  The `lw` at 0x1004e9c0 loads 4 bytes from abs 0x1014c970.
  The `lw` at 0x1004e9c4 loads 4 bytes from sym(rl_undo_list) +0x0.
  The `lbu` at 0x1004ea14 loads 1 byte from [0x1024ad30] +0x0.
  The `lbu` at 0x1004ea28 loads 1 byte from [0x1024ad34] +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014c984, including `lw` at 0x1004ea3c, `lw` at 0x1004f170, `lw` at 0x1004fc34.
  2 such `sw` accesses store 4 bytes to sym(rl_display_fixed) +0x0, including `sw` at 0x1004ea40, `sw` at 0x1004ff7c.
  The `lw` at 0x1004ea4c loads 4 bytes from abs 0x1014c8c0.
  The `lw` at 0x1004ea50 loads 4 bytes from sym(rl_prompt) +0x0.
  5 such `lw` accesses load 4 bytes from abs 0x1024adbc, including `lw` at 0x1004ea78, `lw` at 0x1004ea90, `lw` at 0x1004eb6c.
  4 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x1004ea9c, `lw` at 0x1004eb10, `lw` at 0x1004ec90.
  3 such `lw` accesses load 4 bytes from abs 0x1024adc0, including `lw` at 0x1004ead4, `lw` at 0x1004eb04, `lw` at 0x1004eb30.
  4 such `lw` accesses load 4 bytes from abs 0x1024adb8, including `lw` at 0x1004eaec, `lw` at 0x1004ec3c, `lw` at 0x1004f18c.
  3 such `lw` accesses load 4 bytes from abs 0x1014c504, including `lw` at 0x1004eb3c, `lw` at 0x1004ec78, `lw` at 0x1004f870.
  2 such `lw` accesses load 4 bytes from abs 0x1014c20c, including `lw` at 0x1004eb7c, `lw` at 0x1004ecc0.
  3 such `lw` accesses load 4 bytes from abs 0x1024adc4, including `lw` at 0x1004ebb8, `lw` at 0x1004f790, `lw` at 0x1004f9e0.
  The `lw` at 0x1004ebe8 loads 4 bytes from abs 0x1014c1e4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x1004ecfc, `lw` at 0x1004f0cc.
  2 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x1004ed00, `lw` at 0x1004f0d0.
  The `lw` at 0x1004ed20 loads 4 bytes from abs 0x1014c8e0.
  The `lw` at 0x1004ed24 loads 4 bytes from sym(rl_line_buffer) +0x0.
  The `lbu` at 0x1004ed2c loads 1 byte from ?.
  The `sw` at 0x1004ed78 stores 4 bytes to abs 0x10149028.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e8, including `lw` at 0x1004eda4, `lw` at 0x1004edec.
  The `lw` at 0x1004ee28 loads 4 bytes from abs 0x1014c8a4.
  The `lw` at 0x1004ee2c loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x1004ee6c loads 4 bytes from abs 0x1014c8fc.
  The `lw` at 0x1004ee70 loads 4 bytes from sym(_rl_output_meta_chars) +0x0.
  The `lw` at 0x1004eea4 loads 4 bytes from abs 0x1014c100.
  The `lw` at 0x1004efac loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1004efb0 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004efc8 loads 4 bytes from ?.
  The `lw` at 0x1004efe8 loads 4 bytes from abs 0x1014c260.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8d8, including `lw` at 0x1004f110, `lw` at 0x1004ff88.
  2 such `lw` accesses load 4 bytes from sym(_rl_horizontal_scroll_mode) +0x0, including `lw` at 0x1004f114, `lw` at 0x1004ff8c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c940, including `lw` at 0x1004f128, `lw` at 0x1004f140.
  2 such `lw` accesses load 4 bytes from sym(term_up) +0x0, including `lw` at 0x1004f12c, `lw` at 0x1004f144.
  The `lbu` at 0x1004f148 loads 1 byte from [sym(term_up)] +0x0.
  The `lw` at 0x1004f15c loads 4 bytes from abs 0x1014c8f4.
  The `lw` at 0x1004f160 loads 4 bytes from sym(screenchars) +0x0.
  2 such `lw` accesses load 4 bytes from sym(rl_display_fixed) +0x0, including `lw` at 0x1004f174, `lw` at 0x1004fc38.
  2 such `sw` accesses store 4 bytes to abs 0x1024adb8, including `sw` at 0x1004f1a4, `sw` at 0x1004fc84.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8e8, including `lw` at 0x1004f1d0, `lw` at 0x1004f6a8.
  2 such `lw` accesses load 4 bytes from sym(term_xn) +0x0, including `lw` at 0x1004f1d4, `lw` at 0x1004f6ac.
  20 such `lw` accesses load 4 bytes from abs 0x1014c8ec, including `lw` at 0x1004f208, `lw` at 0x1004f2a8, `lw` at 0x1004f304.
  20 such `lw` accesses load 4 bytes from sym(screenwidth) +0x0, including `lw` at 0x1004f20c, `lw` at 0x1004f2ac, `lw` at 0x1004f308.
  6 such `lw` accesses load 4 bytes from abs 0x1014c994, including `lw` at 0x1004f254, `lw` at 0x1004f50c, `lw` at 0x1004f52c.
  5 such `lw` accesses load 4 bytes from sym(_rl_vis_botlin) +0x0, including `lw` at 0x1004f258, `lw` at 0x1004f510, `lw` at 0x1004f530.
  6 such `lw` accesses load 4 bytes from abs 0x1024adcc, including `lw` at 0x1004f29c, `lw` at 0x1004f344, `lw` at 0x1004f404.
  2 such `lw` accesses load 4 bytes from abs 0x1014c004, including `lw` at 0x1004f3d4, `lw` at 0x1004fd30.
  13 such `lw` accesses load 4 bytes from abs 0x1014c98c, including `lw` at 0x1004f420, `lw` at 0x1004f464, `lw` at 0x1004f764.
  10 such `lw` accesses load 4 bytes from sym(_rl_last_c_pos) +0x0, including `lw` at 0x1004f424, `lw` at 0x1004f468, `lw` at 0x1004f768.
  3 such `lw` accesses load 4 bytes from abs 0x1024add0, including `lw` at 0x1004f434, `lw` at 0x1004fde0, `lw` at 0x1004fe88.
  3 such `lw` accesses load 4 bytes from abs 0x1014c008, including `lw` at 0x1004f480, `lw` at 0x1004f648, `lw` at 0x1004fe1c.
  3 such `sw` accesses store 4 bytes to abs 0x1024add0, including `sw` at 0x1004f4e0, `sw` at 0x1004fe68, `sw` at 0x1004feb4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c5e0, including `lw` at 0x1004f5b8, `lw` at 0x1004f738.
  3 such `lw` accesses load 4 bytes from abs 0x1014c5dc, including `lw` at 0x1004f5d4, `lw` at 0x1004f9a0, `lw` at 0x1004fee4.
  The `sw` at 0x1004f690 stores 4 bytes to sym(_rl_vis_botlin) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c990, including `lw` at 0x1004f708, `lw` at 0x1004f9bc.
  The `lw` at 0x1004f70c loads 4 bytes from sym(_rl_last_v_pos) +0x0.
  3 such `sw` accesses store 4 bytes to sym(_rl_last_c_pos) +0x0, including `sw` at 0x1004f780, `sw` at 0x1004f88c, `sw` at 0x1004f95c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c914, including `lw` at 0x1004f810, `lw` at 0x1004f828.
  2 such `lw` accesses load 4 bytes from sym(term_cr) +0x0, including `lw` at 0x1004f814, `lw` at 0x1004f82c.
  The `lw` at 0x1004f83c loads 4 bytes from abs 0x1014c500.
  The `lw` at 0x1004f848 loads 4 bytes from abs 0x1014c258.
  The `lw` at 0x1004f940 loads 4 bytes from abs 0x1014c508.
  The `sw` at 0x1004f9c0 stores 4 bytes to sym(_rl_last_v_pos) +0x0.
  6 such `lw` accesses load 4 bytes from abs 0x1024ad2c, including `lw` at 0x1004f9fc, `lw` at 0x1004fa14, `lw` at 0x1004fb94.
  The `sw` at 0x1004ff00 stores 4 bytes to abs 0x1024ad2c.
  The `lw` at 0x1004ff0c loads 4 bytes from abs 0x1014c8bc.
  The `lw` at 0x1004ff10 loads 4 bytes from sym(rl_outstream) +0x0.
  The `lw` at 0x1004ff1c loads 4 bytes from abs 0x1014c140.
  2 such `sw` accesses store 4 bytes to abs 0x1024adcc, including `sw` at 0x1004ffbc, `sw` at 0x1004ffd8.
  The `jal` at 0x1004e86c calls xmalloc [0x10061950] with a0=[0x10149028], a1=?, a2=[0x1024ad34], a3=a3 at entry (arg3).
  The `jal` at 0x1004e8a4 calls xmalloc [0x10061950] with a0=[0x10149028], a1=0x1024ad18, a2=?, a3=?.
  The `jal` at 0x1004e96c calls rl_on_new_line [0x10050d10] with a0=?, a1=?, a2=?, a3=[0x10149028], a4=[0x1024ad34], a5=0x1024ad18.
  The `jal` at 0x1004e9a4 calls current_history [0x1003cc60] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004eaa0 calls strlen with a0=[0x1024adbc], a1=?, a2=?, a3=[[0x1024ad30]]:1, a5=[sym(rl_prompt)], a6=[0x1024adbc].
  The `jalr` at 0x1004eb14 calls strlen with a0=[0x1024adc0], a1=?, a2=[0x1024adc0], a3=?, a4=[0x1024adb8].
  The `jal` at 0x1004eb40 calls _rl_output_some_chars [0x100480d0] with a0=[0x1024adc0], a1=ret(strlen), a2=?, a3=?.
  The `jalr` at 0x1004eb80 calls strncpy with a0=?, a1=[0x1024adbc], a2=?, a3=?.
  The `jalr` at 0x1004ebec calls strrchr with a0=[sym(rl_display_prompt)], a1=0xa, a2=?, a3=[[0x1024ad30]]:1, a5=[sym(rl_prompt)], a6=[sym(rl_display_prompt)].
  The `jal` at 0x1004ec7c calls _rl_output_some_chars [0x100480d0] with a0=[sym(rl_display_prompt)], a1=?, a2=[sym(rl_display_prompt)], a3=[0x1024adb8], a4=ret(strrchr)+1.
  The `jalr` at 0x1004ec94 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004ecc4 calls strncpy with a0=?, a1=?, a2=ret(strlen), a3=?.
  The `jal` at 0x1004eda8 calls xrealloc [0x100619d0] with a0=[0x1024ad30], a1=[0x10149028], a2=0x10149028, a3=?.
  The `jal` at 0x1004edf0 calls xrealloc [0x100619d0] with a0=[0x1024ad34], a1=[0x10149028], a2=?, a3=?.
  The `jalr` at 0x1004eea8 calls sprintf with a0=?, a1=0x10092ba0, a2=?, a3=?, a4=[sym(rl_point)].
  The `jalr` at 0x1004efec calls toupper with a0=?, a1=?, a2=?, a3=0x5e.
  The `jal` at 0x1004f3d8 calls (unnamed) [0x1004fff0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004f484 calls (unnamed) [0x10051d20] with a0=?, a1=?, a2=?, a3=?, a7=[0x1024add0].
  The `jal` at 0x1004f5bc calls _rl_move_vert [0x10051200] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004f5d8 calls _rl_move_cursor_relative [0x10050e90] with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004f60c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004f64c calls (unnamed) [0x10051d20] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004f73c calls _rl_move_vert [0x10051200] with a0=?, a1=?, a2=sym(_rl_vis_botlin), a3=?.
  The `jalr` at 0x1004f84c calls tputs with a0=[sym(term_cr)], a1=0x1, a2=sym(_rl_output_character_function), a3=?, a4=[sym(_rl_last_c_pos)], a5=[0x1024adbc], a6=[sym(term_cr)].
  The `jal` at 0x1004f874 calls _rl_output_some_chars [0x100480d0] with a0=[0x1024adbc], a1=?, a2=?, a3=?.
  The `jal` at 0x1004f944 calls backspace [0x10048140] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004f9a4 calls _rl_move_cursor_relative [0x10050e90] with a0=?, a1=?, a2=[0x1024ad34], a3=[sym(_rl_last_c_pos)].
  The `jal` at 0x1004fd34 calls (unnamed) [0x1004fff0] with a0=([0x1024ad2c] + [0x1024ad30]), a1=?, a2=0x0, a3=([sym(screenwidth)] + [0x1024adcc]), a5=0x0.
  The `jal` at 0x1004fe20 calls (unnamed) [0x10051d20] with a0=?, a1=?, a2=?, a3=?, a7=[sym(_rl_last_c_pos)].
  The `jal` at 0x1004fee8 calls _rl_move_cursor_relative [0x10050e90] with a0=?, a1=?, a2=[0x1024ad34], a3=?.
  The `jalr` at 0x1004ff20 calls fflush with a0=[sym(rl_outstream)], a1=?, a2=?, a3=?.
  The `bne` branch at 0x1004e7f4 targets 0x1004e804, is taken when at(=[sym(readline_echoing_p)]) != 0, and falls through when at(=[sym(readline_echoing_p)]) == 0.
  The `beq` branch at 0x1004e7fc targets 0x1004ffdc and is always taken.
  The `bne` branch at 0x1004e814 targets 0x1004e838, is taken when a0(=[sym(rl_display_prompt)]) != 0, and falls through when a0(=[sym(rl_display_prompt)]) == 0.
  The `bne` branch at 0x1004e848 targets 0x1004e974, is taken when a2(=[0x1024ad34]) != 0, and falls through when a2(=[0x1024ad34]) == 0.
  The `beq` branch at 0x1004e8f0 targets 0x1004e960, is taken when a2(=0x0) >= a3(=[0x10149028]) (signed), and falls through when a2(=0x0) < a3(=[0x10149028]) (signed).
  The `bne` branch at 0x1004e958 targets 0x1004e8f8, is taken when a6(?) < a7(=[0x10149028]) (signed), and falls through when a6(?) >= a7(=[0x10149028]) (signed).
  The `beq` branch at 0x1004e990 targets 0x1004ea04, is taken when ra(=[sym(_rl_mark_modified_lines)]) == 0, and falls through when ra(=[sym(_rl_mark_modified_lines)]) != 0.
  The `beq` branch at 0x1004e9b0 targets 0x1004ea04, is taken when v0(=ret(current_history)) == 0, and falls through when v0(=ret(current_history)) != 0.
  The `beq` branch at 0x1004e9c8 targets 0x1004ea04, is taken when ra(=[sym(rl_undo_list)]) == 0, and falls through when ra(=[sym(rl_undo_list)]) != 0.
  The `beq` branch at 0x1004ea2c targets 0x1004ea44, is taken when a3(=[[0x1024ad30]]:1) == a4(=[[0x1024ad34]]:1), and falls through when a3(=[[0x1024ad30]]:1) != a4(=[[0x1024ad34]]:1).
  The `bne` branch at 0x1004ea64 targets 0x1004ebcc, is taken when a5(=[sym(rl_prompt)]) != a6(=[sym(rl_display_prompt)]), and falls through when a5(=[sym(rl_prompt)]) == a6(=[sym(rl_display_prompt)]).
  The `beq` branch at 0x1004ea7c targets 0x1004eabc, is taken when a6(=[0x1024adbc]) == 0, and falls through when a6(=[0x1024adbc]) != 0.
  The `beq` branch at 0x1004eab4 targets 0x1004eac0 and is always taken.
  The `beq` branch at 0x1004ead8 targets 0x1004eb48, is taken when a2(=[0x1024adc0]) == 0, and falls through when a2(=[0x1024adc0]) != 0.
  The `beq` branch at 0x1004eaf0 targets 0x1004eb48, is taken when a4(=[0x1024adb8]) == 0, and falls through when a4(=[0x1024adb8]) != 0.
  The `blez` branch at 0x1004eb4c targets 0x1004eb88, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x1004ebc4 targets 0x1004ecf0 and is always taken.
  The `bne` branch at 0x1004ec00 targets 0x1004ec24, is taken when a1(=ret(strrchr)) != 0, and falls through when a1(=ret(strrchr)) == 0.
  The `beq` branch at 0x1004ec1c targets 0x1004ec84 and is always taken.
  The `beq` branch at 0x1004ec40 targets 0x1004ec84, is taken when a3(=[0x1024adb8]) == 0, and falls through when a3(=[0x1024adb8]) != 0.
  The `beq` branch at 0x1004ed0c targets 0x1004f0e4, is taken when a6(=0x0) >= a7(=[sym(rl_end)]) (signed), and falls through when a6(=0x0) < a7(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x1004ed50 targets 0x1004ee20, is taken when t0(?) < t1(=[0x10149028]) (signed), and falls through when t0(?) >= t1(=[0x10149028]) (signed).
  The `bne` branch at 0x1004ee34 targets 0x1004ee44, is taken when a4(=[sym(rl_point)]) != a5(?), and falls through when a4(=[sym(rl_point)]) == a5(?).
  The `bne` branch at 0x1004ee4c targets 0x1004eef0, is taken when a6(?) < 0x80 (signed), and falls through when a6(?) >= 0x80 (signed).
  The `beq` branch at 0x1004ee5c targets 0x1004eef0, is taken when a7(?) >= 0x100 (signed), and falls through when a7(?) < 0x100 (signed).
  The `bne` branch at 0x1004ee74 targets 0x1004eec4, is taken when t0(=[sym(_rl_output_meta_chars)]) != 0, and falls through when t0(=[sym(_rl_output_meta_chars)]) == 0.
  The `beq` branch at 0x1004eebc targets 0x1004eee8 and is always taken.
  The `beq` branch at 0x1004eee8 targets 0x1004f0b8 and is always taken.
  The `bne` branch at 0x1004eef8 targets 0x1004ef64, is taken when a7(?) != t0(=0x9), and falls through when a7(?) == t0(=0x9).
  The `beq` branch at 0x1004ef1c targets 0x1004ef5c, is taken when t1(?) >= t2(?) (signed), and falls through when t1(?) < t2(?) (signed).
  The `bne` branch at 0x1004ef54 targets 0x1004ef24, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed).
  The `beq` branch at 0x1004ef5c targets 0x1004f0b8 and is always taken.
  The `beq` branch at 0x1004ef6c targets 0x1004f034, is taken when a0(?) >= 0x20 (signed), and falls through when a0(?) < 0x20 (signed).
  The `beq` branch at 0x1004efd0 targets 0x1004f008, is taken when (a1(?) & 0x2) == 0, and falls through when (a1(?) & 0x2) != 0.
  The `beq` branch at 0x1004f000 targets 0x1004f014 and is always taken.
  The `beq` branch at 0x1004f02c targets 0x1004f0b8 and is always taken.
  The `bne` branch at 0x1004f03c targets 0x1004f094, is taken when a6(?) != a7(=0x7f), and falls through when a6(?) == a7(=0x7f).
  The `beq` branch at 0x1004f08c targets 0x1004f0b8 and is always taken.
  The `bne` branch at 0x1004f0dc targets 0x1004ed14, is taken when a2(?) < a3(=[sym(rl_end)]) (signed), and falls through when a2(?) >= a3(=[sym(rl_end)]) (signed).
  The `bgez` branch at 0x1004f0f8 targets 0x1004f108, is taken when a5(?) >= 0 (signed), and falls through when a5(?) < 0 (signed).
  The `bne` branch at 0x1004f118 targets 0x1004f9b4, is taken when t1(=[sym(_rl_horizontal_scroll_mode)]) != 0, and falls through when t1(=[sym(_rl_horizontal_scroll_mode)]) == 0.
  The `beq` branch at 0x1004f130 targets 0x1004f9b4, is taken when t2(=[sym(term_up)]) == 0, and falls through when t2(=[sym(term_up)]) != 0.
  The `beq` branch at 0x1004f14c targets 0x1004f9b4, is taken when t3(=[[sym(term_up)]]:1) == 0, and falls through when t3(=[[sym(term_up)]]:1) != 0.
  The `beq` branch at 0x1004f178 targets 0x1004f198, is taken when t8(=[sym(rl_display_fixed)]) == 0, and falls through when t8(=[sym(rl_display_fixed)]) != 0.
  The `beq` branch at 0x1004f190 targets 0x1004f9ac, is taken when ra(=[0x1024adb8]) == 0, and falls through when ra(=[0x1024adb8]) != 0.
  The `bne` branch at 0x1004f1b4 targets 0x1004f1c8, is taken when at(?) < v0(=[sym(screenchars)]) (signed), and falls through when at(?) >= v0(=[sym(screenchars)]) (signed).
  The `blez` branch at 0x1004f1f4 targets 0x1004f228, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x1004f220 targets 0x1004f22c and is always taken.
  The `bne` branch at 0x1004f244 targets 0x1004f504, is taken when a5(?) < a6(=0x0) (signed), and falls through when a5(?) >= a6(=0x0) (signed).
  The `beq` branch at 0x1004f264 targets 0x1004f284, is taken when t0(=[sym(_rl_vis_botlin)]) >= t1(?) (signed), and falls through when t0(=[sym(_rl_vis_botlin)]) < t1(?) (signed).
  The `beq` branch at 0x1004f27c targets 0x1004f2ec and is always taken.
  The `blez` branch at 0x1004f288 targets 0x1004f2cc, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x1004f2c4 targets 0x1004f2d0 and is always taken.
  The `blez` branch at 0x1004f2f0 targets 0x1004f328, is taken when ra(?) <= 0 (signed), and falls through when ra(?) > 0 (signed).
  The `beq` branch at 0x1004f320 targets 0x1004f32c and is always taken.
  The `bne` branch at 0x1004f330 targets 0x1004f354, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x1004f34c targets 0x1004f358 and is always taken.
  The `bne` branch at 0x1004f35c targets 0x1004f374, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1004f36c targets 0x1004f378 and is always taken.
  The `bne` branch at 0x1004f3e4 targets 0x1004f48c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x1004f3f0 targets 0x1004f48c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x1004f410 targets 0x1004f48c, is taken when a5(=[0x1024adcc]) >= a6(?) (signed), and falls through when a5(=[0x1024adcc]) < a6(?) (signed).
  The `beq` branch at 0x1004f43c targets 0x1004f48c, is taken when a6(=[sym(_rl_last_c_pos)]) >= a7(=[0x1024add0]) (signed), and falls through when a6(=[sym(_rl_last_c_pos)]) < a7(=[0x1024add0]) (signed).
  The `bne` branch at 0x1004f490 targets 0x1004f4e4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `blez` branch at 0x1004f49c targets 0x1004f4c0, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `beq` branch at 0x1004f4b8 targets 0x1004f4d0 and is always taken.
  The `beq` branch at 0x1004f4fc targets 0x1004f24c, is taken when a4(?) >= a5(?) (signed), and falls through when a4(?) < a5(?) (signed).
  The `beq` branch at 0x1004f51c targets 0x1004f680, is taken when a7(?) >= t0(=[sym(_rl_vis_botlin)]) (signed), and falls through when a7(?) < t0(=[sym(_rl_vis_botlin)]) (signed).
  The `bne` branch at 0x1004f53c targets 0x1004f680, is taken when t1(=[sym(_rl_vis_botlin)]) < t2(?) (signed), and falls through when t1(=[sym(_rl_vis_botlin)]) >= t2(?) (signed).
  The `blez` branch at 0x1004f548 targets 0x1004f58c, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x1004f584 targets 0x1004f590 and is always taken.
  The `bne` branch at 0x1004f5f4 targets 0x1004f628, is taken when ra(=[sym(_rl_vis_botlin)]) != at(?), and falls through when ra(=[sym(_rl_vis_botlin)]) == at(?).
  The `beq` branch at 0x1004f620 targets 0x1004f63c and is always taken.
  The `beq` branch at 0x1004f678 targets 0x1004f544, is taken when ra(=[sym(_rl_vis_botlin)]) >= at(?) (signed), and falls through when ra(=[sym(_rl_vis_botlin)]) < at(?) (signed).
  The `blez` branch at 0x1004f6c0 targets 0x1004f6f4, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `beq` branch at 0x1004f6ec targets 0x1004f6f8 and is always taken.
  The `beq` branch at 0x1004f724 targets 0x1004f784, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x1004f748 targets 0x1004f784, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x1004f754 targets 0x1004f784, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x1004f7a4 targets 0x1004f890, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `blez` branch at 0x1004f7b0 targets 0x1004f890, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `blez` branch at 0x1004f7c8 targets 0x1004f890, is taken when a2(=[sym(_rl_last_c_pos)]) <= 0 (signed), and falls through when a2(=[sym(_rl_last_c_pos)]) > 0 (signed).
  The `bne` branch at 0x1004f7e8 targets 0x1004f890, is taken when a3(?) < a4(=[sym(_rl_last_c_pos)]) (signed), and falls through when a3(?) >= a4(=[sym(_rl_last_c_pos)]) (signed).
  The `beq` branch at 0x1004f800 targets 0x1004f890, is taken when a5(=[0x1024adbc]) == 0, and falls through when a5(=[0x1024adbc]) != 0.
  The `beq` branch at 0x1004f818 targets 0x1004f854, is taken when a6(=[sym(term_cr)]) == 0, and falls through when a6(=[sym(term_cr)]) != 0.
  The `blez` branch at 0x1004f894 targets 0x1004f8cc, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0x1004f8c4 targets 0x1004f8d0 and is always taken.
  The `beq` branch at 0x1004f8ec targets 0x1004f960, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x1004f8f8 targets 0x1004f960, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x1004f918 targets 0x1004f960, is taken when t8(?) >= t9(=[sym(_rl_last_c_pos)]) (signed), and falls through when t8(?) < t9(=[sym(_rl_last_c_pos)]) (signed).
  The `beq` branch at 0x1004f974 targets 0x1004f9ac, is taken when a3(=[sym(_rl_last_c_pos)]) == a4(?), and falls through when a3(=[sym(_rl_last_c_pos)]) != a4(?).
  The `beq` branch at 0x1004f9ac targets 0x1004ff04 and is always taken.
  The `beq` branch at 0x1004fa00 targets 0x1004fa24, is taken when a3(=[0x1024ad2c]) == 0, and falls through when a3(=[0x1024ad2c]) != 0.
  The `beq` branch at 0x1004fa1c targets 0x1004fa2c and is always taken.
  The `beq` branch at 0x1004fa78 targets 0x1004fae0, is taken when t2(=[sym(screenwidth)]-2) >= t3(?) (signed), and falls through when t2(=[sym(screenwidth)]-2) < t3(?) (signed).
  The `bgez` branch at 0x1004fa98 targets 0x1004faa4, is taken when at(?) >= 0 (signed), and falls through when at(?) < 0 (signed).
  The `beq` branch at 0x1004faa8 targets 0x1004fad8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `blez` branch at 0x1004fab4 targets 0x1004fad8, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x1004fac8 targets 0x1004fad8, is taken when a2(?) >= a3(?) (signed), and falls through when a2(?) < a3(?) (signed).
  The `beq` branch at 0x1004fad8 targets 0x1004fb9c and is always taken.
  The `beq` branch at 0x1004fafc targets 0x1004fb10, is taken when a5(?) >= a6(=[sym(screenwidth)]-2) (signed), and falls through when a5(?) < a6(=[sym(screenwidth)]-2) (signed).
  The `beq` branch at 0x1004fb08 targets 0x1004fb9c and is always taken.
  The `bgtz` branch at 0x1004fb14 targets 0x1004fb88, is taken when a7(?) > 0 (signed), and falls through when a7(?) <= 0 (signed).
  The `beq` branch at 0x1004fb50 targets 0x1004fb80, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `blez` branch at 0x1004fb5c targets 0x1004fb80, is taken when ra(?) <= 0 (signed), and falls through when ra(?) > 0 (signed).
  The `beq` branch at 0x1004fb70 targets 0x1004fb80, is taken when at(?) >= v0(?) (signed), and falls through when at(?) < v0(?) (signed).
  The `beq` branch at 0x1004fb80 targets 0x1004fb9c and is always taken.
  The `blez` branch at 0x1004fba0 targets 0x1004fbbc, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `bne` branch at 0x1004fbc0 targets 0x1004fbd8, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x1004fbd0 targets 0x1004fbdc and is always taken.
  The `beq` branch at 0x1004fc0c targets 0x1004fc2c, is taken when a7(?) >= t0(?) (signed), and falls through when a7(?) < t0(?) (signed).
  The `beq` branch at 0x1004fc3c targets 0x1004fc78, is taken when t9(=[sym(rl_display_fixed)]) == 0, and falls through when t9(=[sym(rl_display_fixed)]) != 0.
  The `bne` branch at 0x1004fc54 targets 0x1004fc78, is taken when ra(=[0x1024adb8]) != 0, and falls through when ra(=[0x1024adb8]) == 0.
  The `beq` branch at 0x1004fc70 targets 0x1004ff04, is taken when at(=[0x1024ad2c]) == v0(?), and falls through when at(=[0x1024ad2c]) != v0(?).
  The `beq` branch at 0x1004fc8c targets 0x1004fca0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1004fc98 targets 0x1004fca8 and is always taken.
  The `bne` branch at 0x1004fd40 targets 0x1004fd58, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x1004fd50 targets 0x1004fd5c and is always taken.
  The `bne` branch at 0x1004fd7c targets 0x1004fd94, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1004fd8c targets 0x1004fd98 and is always taken.
  The `beq` branch at 0x1004fdb0 targets 0x1004fe28, is taken when a6(=[0x1024adcc]) >= a7(?) (signed), and falls through when a6(=[0x1024adcc]) < a7(?) (signed).
  The `bne` branch at 0x1004fdcc targets 0x1004fe28, is taken when a7(=[sym(_rl_last_c_pos)]) != t0(?), and falls through when a7(=[sym(_rl_last_c_pos)]) == t0(?).
  The `beq` branch at 0x1004fdec targets 0x1004fe28, is taken when t0(?) >= t1(=[0x1024add0]) (signed), and falls through when t0(?) < t1(=[0x1024add0]) (signed).
  The `bne` branch at 0x1004fe2c targets 0x1004fe44, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x1004fe3c targets 0x1004fe48 and is always taken.
  The `beq` branch at 0x1004fe90 targets 0x1004feb8, is taken when v1(=[sym(screenwidth)]) >= a0(=[0x1024add0]) (signed), and falls through when v1(=[sym(screenwidth)]) < a0(=[0x1024add0]) (signed).
  The `beq` branch at 0x1004ff90 targets 0x1004ffc8, is taken when a1(=[sym(_rl_horizontal_scroll_mode)]) == 0, and falls through when a1(=[sym(_rl_horizontal_scroll_mode)]) != 0.
  The `beq` branch at 0x1004ffa8 targets 0x1004ffc8, is taken when a7(=[0x1024ad2c]) == 0, and falls through when a7(=[0x1024ad2c]) != 0.
  The `beq` branch at 0x1004ffc0 targets 0x1004ffdc and is always taken.
  The return at 0x1004ffe8 has v0 = one of [0x1024ad34], ret(fflush).
- `rl_on_new_line` in `usr/gfx/KONA/bin/kpm` at 0x10050d10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10050d10-0x10050dac (156 bytes).
  It occupies 156 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014bff4, including `lw` at 0x10050d2c, `lw` at 0x10050d44, `lw` at 0x10050d80.
  2 such `lw` accesses load 4 bytes from abs 0x1024ad30, including `lw` at 0x10050d30, `lw` at 0x10050d48.
  The `sb` at 0x10050d4c stores 1 byte to [0x1024ad30] +0x0.
  The `lw` at 0x10050d5c loads 4 bytes from abs 0x1014c990.
  The `sw` at 0x10050d60 stores 4 bytes to sym(_rl_last_v_pos) +0x0.
  The `lw` at 0x10050d6c loads 4 bytes from abs 0x1014c98c.
  The `sw` at 0x10050d70 stores 4 bytes to sym(_rl_last_c_pos) +0x0.
  The `sw` at 0x10050d84 stores 4 bytes to abs 0x1024ad2c.
  The `lw` at 0x10050d90 loads 4 bytes from abs 0x1014c994.
  The `sw` at 0x10050d94 stores 4 bytes to sym(_rl_vis_botlin) +0x0.
  The `beq` branch at 0x10050d34 targets 0x10050d50, is taken when v0(=[0x1024ad30]) == 0, and falls through when v0(=[0x1024ad30]) != 0.
  The return at 0x10050da4 has v0 = 0x0.
- `rl_forced_update_display` in `usr/gfx/KONA/bin/kpm` at 0x10050db0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10050db0-0x10050e8c (220 bytes).
  It occupies 220 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014bff4, including `lw` at 0x10050dd0, `lw` at 0x10050de8, `lw` at 0x10050e44.
  2 such `lw` accesses load 4 bytes from abs 0x1024ad30, including `lw` at 0x10050dd4, `lw` at 0x10050dec.
  The `lbu` at 0x10050df8 loads 1 byte from [0x1024ad30] +0x0.
  The `sb` at 0x10050e14 stores 1 byte to ?.
  The `lbu` at 0x10050e1c loads 1 byte from ?.
  The `lw` at 0x10050e30 loads 4 bytes from abs 0x1014c5d4.
  The `lw` at 0x10050e48 loads 4 bytes from abs 0x1024adb8.
  The `sw` at 0x10050e5c stores 4 bytes to abs 0x1024adb8.
  The `lw` at 0x10050e68 loads 4 bytes from abs 0x1014c5d0.
  The `jal` at 0x10050e34 calls rl_on_new_line [0x10050d10] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10050e6c calls rl_redisplay [0x1004e7b0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10050dd8 targets 0x10050e28, is taken when at(=[0x1024ad30]) == 0, and falls through when at(=[0x1024ad30]) != 0.
  The `beq` branch at 0x10050dfc targets 0x10050e28, is taken when v1(=[[0x1024ad30]]:1) == 0, and falls through when v1(=[[0x1024ad30]]:1) != 0.
  The `bne` branch at 0x10050e20 targets 0x10050e04, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The return at 0x10050e84 has v0 = 0x0.
- `_rl_move_cursor_relative` in `usr/gfx/KONA/bin/kpm` at 0x10050e90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10050e90-0x100511f4 (868 bytes).
  It occupies 868 bytes.
  9 such `lw` accesses load 4 bytes from abs 0x1014c98c, including `lw` at 0x10050eb8, `lw` at 0x10050f14, `lw` at 0x10050f38.
  7 such `lw` accesses load 4 bytes from sym(_rl_last_c_pos) +0x0, including `lw` at 0x10050ebc, `lw` at 0x10050f18, `lw` at 0x10050f3c.
  The `lw` at 0x10050edc loads 4 bytes from abs 0x1014c990.
  The `lw` at 0x10050ee0 loads 4 bytes from sym(_rl_last_v_pos) +0x0.
  The `lw` at 0x10050ef4 loads 4 bytes from abs 0x1014bff4.
  The `lw` at 0x10050ef8 loads 4 bytes from abs 0x1024adcc.
  The `lw` at 0x10050f5c loads 4 bytes from abs 0x1014c8e8.
  The `lw` at 0x10050f60 loads 4 bytes from sym(term_xn) +0x0.
  The `lw` at 0x10050f74 loads 4 bytes from abs 0x1014c8ec.
  The `lw` at 0x10050f78 loads 4 bytes from sym(screenwidth) +0x0.
  The `lw` at 0x10050f90 loads 4 bytes from abs 0x1014c914.
  The `lw` at 0x10050f94 loads 4 bytes from sym(term_cr) +0x0.
  The `lw` at 0x10050fa4 loads 4 bytes from abs 0x1014c500.
  The `lw` at 0x10050fb0 loads 4 bytes from abs 0x1014c258.
  2 such `sw` accesses store 4 bytes to sym(_rl_last_c_pos) +0x0, including `sw` at 0x10050fc8, `sw` at 0x100511dc.
  The `lw` at 0x1005101c loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x10051020 loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10051038, `lbu` at 0x100510c4, `lbu` at 0x10051134.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8bc, including `lw` at 0x10051044, `lw` at 0x10051078, `lw` at 0x10051090.
  8 such `lw` accesses load 4 bytes from sym(rl_outstream) +0x0, including `lw` at 0x10051048, `lw` at 0x1005107c, `lw` at 0x10051094.
  The `lw` at 0x10051054 loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x0, including `lw` at 0x10051080, `lw` at 0x100510ac.
  The `sw` at 0x10051098 stores 4 bytes to [sym(rl_outstream)] +0x0.
  The `lw` at 0x100510e0 loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x4, including `lw` at 0x1005110c, `lw` at 0x10051148.
  The `sw` at 0x10051124 stores 4 bytes to [sym(rl_outstream)] +0x4.
  The `sb` at 0x1005114c stores 1 byte to [[sym(rl_outstream)]+4] -0x1.
  The `lw` at 0x100511c0 loads 4 bytes from abs 0x1014c508.
  The `jalr` at 0x10050fb4 calls tputs with a0=[sym(term_cr)], a1=0x1, a2=sym(_rl_output_character_function), a3=?.
  The `jalr` at 0x10051058 calls __semputc with a0=?, a1=[sym(rl_outstream)], a2=?, a3=?, a6=[sym(__us_rsthread_stdio)].
  The `jalr` at 0x100510e4 calls __flsbuf with a0=?, a1=[sym(rl_outstream)], a2=?, a3=[[sym(rl_outstream)]], a4=[[sym(rl_outstream)]]-1, a5=[sym(rl_outstream)], a6=[sym(__us_rsthread_stdio)].
  The `jal` at 0x100511c4 calls backspace [0x10048140] with a0=?, a1=a0 at entry (arg0), a2=?, a3=a0 at entry (arg0).
  The `bne` branch at 0x10050ec4 targets 0x10050ed4, is taken when at(=[sym(_rl_last_c_pos)]) != v0(=a0), and falls through when at(=[sym(_rl_last_c_pos)]) == v0(=a0).
  The `beq` branch at 0x10050ecc targets 0x100511e0 and is always taken.
  The `bne` branch at 0x10050ee4 targets 0x10050f08, is taken when v1(=[sym(_rl_last_v_pos)]) != 0, and falls through when v1(=[sym(_rl_last_v_pos)]) == 0.
  The `beq` branch at 0x10050f00 targets 0x10050f0c and is always taken.
  The `bne` branch at 0x10050f4c targets 0x10050f88, is taken when a1(=a0+1) < a2(?) (signed), and falls through when a1(=a0+1) >= a2(?) (signed).
  The `beq` branch at 0x10050f64 targets 0x10050fcc, is taken when a3(=[sym(term_xn)]) == 0, and falls through when a3(=[sym(term_xn)]) != 0.
  The `bne` branch at 0x10050f80 targets 0x10050fcc, is taken when a4(=[sym(screenwidth)]) != a5(?), and falls through when a4(=[sym(screenwidth)]) == a5(?).
  The `beq` branch at 0x10050fe4 targets 0x10051184, is taken when a2(=[sym(_rl_last_c_pos)]) >= a3(=a0) (signed), and falls through when a2(=[sym(_rl_last_c_pos)]) < a3(=a0) (signed).
  The `beq` branch at 0x1005100c targets 0x1005117c, is taken when a3(=[sym(_rl_last_c_pos)]) >= a4(=a0) (signed), and falls through when a3(=[sym(_rl_last_c_pos)]) < a4(=a0) (signed).
  The `beq` branch at 0x10051024 targets 0x10051070, is taken when a6(=[sym(__us_rsthread_stdio)]) == 0, and falls through when a6(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x10051068 targets 0x1005115c and is always taken.
  The `bgez` branch at 0x100510b0 targets 0x100510fc, is taken when a3(=[[sym(rl_outstream)]]) >= 0 (signed), and falls through when a3(=[[sym(rl_outstream)]]) < 0 (signed).
  The `beq` branch at 0x100510f4 targets 0x10051154 and is always taken.
  The `bne` branch at 0x10051174 targets 0x10051014, is taken when a7(?) < t0(=a0) (signed), and falls through when a7(?) >= t0(=a0) (signed).
  The `beq` branch at 0x1005117c targets 0x100511cc and is always taken.
  The `beq` branch at 0x10051198 targets 0x100511cc, is taken when t2(=[sym(_rl_last_c_pos)]) == t3(=a0), and falls through when t2(=[sym(_rl_last_c_pos)]) != t3(=a0).
  The return at 0x100511ec has v0 = one of a0, ?.
- `_rl_move_vert` in `usr/gfx/KONA/bin/kpm` at 0x10051200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10051200-0x10051504 (772 bytes).
  It occupies 772 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c990, including `lw` at 0x10051224, `lw` at 0x1005126c, `lw` at 0x100514e8.
  2 such `lw` accesses load 4 bytes from sym(_rl_last_v_pos) +0x0, including `lw` at 0x10051228, `lw` at 0x10051270.
  The `lw` at 0x10051240 loads 4 bytes from abs 0x1014c8f0.
  The `lw` at 0x10051244 loads 4 bytes from sym(screenheight) +0x0.
  The `lw` at 0x100512a8 loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x100512ac loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8bc, including `lw` at 0x100512c4, `lw` at 0x100512fc, `lw` at 0x10051314.
  8 such `lw` accesses load 4 bytes from sym(rl_outstream) +0x0, including `lw` at 0x100512c8, `lw` at 0x10051300, `lw` at 0x10051318.
  The `lw` at 0x100512d4 loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x0, including `lw` at 0x10051304, `lw` at 0x10051330.
  The `sw` at 0x1005131c stores 4 bytes to [sym(rl_outstream)] +0x0.
  The `lw` at 0x10051358 loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x4, including `lw` at 0x10051384, `lw` at 0x100513b4.
  The `sw` at 0x1005139c stores 4 bytes to [sym(rl_outstream)] +0x4.
  The `sb` at 0x100513b8 stores 1 byte to [[sym(rl_outstream)]+4] -0x1.
  The `lw` at 0x100513f0 loads 4 bytes from abs 0x1014c914.
  The `lw` at 0x100513f4 loads 4 bytes from sym(term_cr) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c500, including `lw` at 0x10051404, `lw` at 0x100514a0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c258, including `lw` at 0x10051410, `lw` at 0x100514ac.
  The `lw` at 0x10051424 loads 4 bytes from abs 0x1014c98c.
  The `sw` at 0x10051428 stores 4 bytes to sym(_rl_last_c_pos) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c940, including `lw` at 0x1005143c, `lw` at 0x10051454, `lw` at 0x1005148c.
  3 such `lw` accesses load 4 bytes from sym(term_up) +0x0, including `lw` at 0x10051440, `lw` at 0x10051458, `lw` at 0x10051490.
  The `lbu` at 0x1005145c loads 1 byte from [sym(term_up)] +0x0.
  The `sw` at 0x100514ec stores 4 bytes to sym(_rl_last_v_pos) +0x0.
  The `jalr` at 0x100512d8 calls __semputc with a0=0xa, a1=[sym(rl_outstream)], a2=?, a3=?, a4=[sym(__us_rsthread_stdio)].
  The `jalr` at 0x1005135c calls __flsbuf with a0=0xa, a1=[sym(rl_outstream)], a2=?, a3=[[sym(rl_outstream)]], a4=[[sym(rl_outstream)]]-1, a5=[sym(rl_outstream)].
  The `jalr` at 0x10051414 calls tputs with a0=[sym(term_cr)], a1=0x1, a2=sym(_rl_output_character_function), a3=?.
  The `jalr` at 0x100514b0 calls tputs with a0=[sym(term_up)], a1=0x1, a2=sym(_rl_output_character_function), a3=?.
  The `beq` branch at 0x10051230 targets 0x10051258, is taken when at(=[sym(_rl_last_v_pos)]) == v0(=a0), and falls through when at(=[sym(_rl_last_v_pos)]) != v0(=a0).
  The `beq` branch at 0x10051250 targets 0x10051260, is taken when v1(=[sym(screenheight)]) >= a0 (signed), and falls through when v1(=[sym(screenheight)]) < a0 (signed).
  The `beq` branch at 0x10051258 targets 0x100514f0 and is always taken.
  The `blez` branch at 0x10051280 targets 0x10051434, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x10051298 targets 0x100513e8, is taken when a2(=0x0) >= a3(?) (signed), and falls through when a2(=0x0) < a3(?) (signed).
  The `beq` branch at 0x100512b0 targets 0x100512f4, is taken when a4(=[sym(__us_rsthread_stdio)]) == 0, and falls through when a4(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x100512ec targets 0x100513c8 and is always taken.
  The `bgez` branch at 0x10051334 targets 0x10051374, is taken when a3(=[[sym(rl_outstream)]]) >= 0 (signed), and falls through when a3(=[[sym(rl_outstream)]]) < 0 (signed).
  The `beq` branch at 0x1005136c targets 0x100513c0 and is always taken.
  The `bne` branch at 0x100513e0 targets 0x100512a0, is taken when a7(?) < t0(?) (signed), and falls through when a7(?) >= t0(?) (signed).
  The `beq` branch at 0x1005142c targets 0x100514dc and is always taken.
  The `beq` branch at 0x10051444 targets 0x100514dc, is taken when a2(=[sym(term_up)]) == 0, and falls through when a2(=[sym(term_up)]) != 0.
  The `beq` branch at 0x10051460 targets 0x100514dc, is taken when a3(=[[sym(term_up)]]:1) == 0, and falls through when a3(=[[sym(term_up)]]:1) != 0.
  The `beq` branch at 0x1005147c targets 0x100514dc, is taken when a4(=0x0) >= a5(?) (signed), and falls through when a4(=0x0) < a5(?) (signed).
  The `bne` branch at 0x100514d4 targets 0x10051484, is taken when a1(?) < a2(?) (signed), and falls through when a1(?) >= a2(?) (signed).
  The return at 0x100514fc has v0 = one of a0, ?.
- `rl_show_char` in `usr/gfx/KONA/bin/kpm` at 0x10051510 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10051510-0x1005178c (636 bytes).
  It occupies 636 bytes.
  The `lw` at 0x1005155c loads 4 bytes from abs 0x1014c8fc.
  The `lw` at 0x10051560 loads 4 bytes from sym(_rl_output_meta_chars) +0x0.
  11 such `lw` accesses load 4 bytes from abs 0x1014c8bc, including `lw` at 0x10051574, `lw` at 0x100515e4, `lw` at 0x1005164c.
  11 such `lw` accesses load 4 bytes from sym(rl_outstream) +0x0, including `lw` at 0x10051578, `lw` at 0x100515e8, `lw` at 0x10051650.
  2 such `lw` accesses load 4 bytes from abs 0x1014bffc, including `lw` at 0x10051584, `lw` at 0x100515f4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c128, including `lw` at 0x10051594, `lw` at 0x10051604.
  The `lw` at 0x10051630 loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x10051634 loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  The `lw` at 0x1005165c loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x0, including `lw` at 0x10051688, `lw` at 0x100516b4.
  The `sw` at 0x100516a0 stores 4 bytes to [sym(rl_outstream)] +0x0.
  The `lw` at 0x100516dc loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x4, including `lw` at 0x10051708, `lw` at 0x1005173c.
  The `sw` at 0x10051720 stores 4 bytes to [sym(rl_outstream)] +0x4.
  The `sb` at 0x10051740 stores 1 byte to [[sym(rl_outstream)]+4] -0x1.
  The `lw` at 0x10051768 loads 4 bytes from abs 0x1014c140.
  The `jalr` at 0x10051598 calls fprintf with a0=[sym(rl_outstream)], a1=0x10092ba4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10051608 calls fprintf with a0=[sym(rl_outstream)], a1=0x10092ba8, a2=?, a3=?, a6=0x9.
  The `jalr` at 0x10051660 calls __semputc with a0=?, a1=[sym(rl_outstream)], a2=?, a3=[sym(__us_rsthread_stdio)].
  The `jalr` at 0x100516e0 calls __flsbuf with a0=?, a1=[sym(rl_outstream)], a2=?, a3=[[sym(rl_outstream)]], a4=[[sym(rl_outstream)]]-1, a5=[sym(rl_outstream)].
  The `jalr` at 0x1005176c calls fflush with a0=[sym(rl_outstream)], a1=?, a2=?, a3=?.
  The `bne` branch at 0x1005153c targets 0x100515bc, is taken when at(=a0) < 0x80 (signed), and falls through when at(=a0) >= 0x80 (signed).
  The `beq` branch at 0x1005154c targets 0x100515bc, is taken when a0 >= 0x100 (signed), and falls through when a0 < 0x100 (signed).
  The `bne` branch at 0x10051564 targets 0x100515bc, is taken when a1(=[sym(_rl_output_meta_chars)]) != 0, and falls through when a1(=[sym(_rl_output_meta_chars)]) == 0.
  The `beq` branch at 0x100515c4 targets 0x10051628, is taken when a4(?) >= 0x20 (signed), and falls through when a4(?) < 0x20 (signed).
  The `beq` branch at 0x100515d4 targets 0x10051628, is taken when a5(?) == a6(=0x9), and falls through when a5(?) != a6(=0x9).
  The `beq` branch at 0x10051638 targets 0x10051678, is taken when a3(=[sym(__us_rsthread_stdio)]) == 0, and falls through when a3(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x10051670 targets 0x10051750 and is always taken.
  The `bgez` branch at 0x100516b8 targets 0x100516f8, is taken when a3(=[[sym(rl_outstream)]]) >= 0 (signed), and falls through when a3(=[[sym(rl_outstream)]]) < 0 (signed).
  The `beq` branch at 0x100516f0 targets 0x10051748 and is always taken.
  The return at 0x10051784 has v0 = ?.
- `rl_character_len` in `usr/gfx/KONA/bin/kpm` at 0x10051790 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10051790-0x100518ac (284 bytes).
  It occupies 284 bytes.
  The `lw` at 0x100517dc loads 4 bytes from abs 0x1014c8fc.
  The `lw` at 0x100517e0 loads 4 bytes from sym(_rl_output_meta_chars) +0x0.
  The `lw` at 0x1005184c loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x10051850 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x10051864 loads 4 bytes from ?.
  The `bne` branch at 0x100517bc targets 0x10051814, is taken when v0(?) < 0x80 (signed), and falls through when v0(?) >= 0x80 (signed).
  The `beq` branch at 0x100517cc targets 0x10051814, is taken when a3(?) >= 0x100 (signed), and falls through when a3(?) < 0x100 (signed).
  The `bne` branch at 0x100517e4 targets 0x100517fc, is taken when a4(=[sym(_rl_output_meta_chars)]) != 0, and falls through when a4(=[sym(_rl_output_meta_chars)]) == 0.
  The `beq` branch at 0x100517f4 targets 0x10051804 and is always taken.
  The `beq` branch at 0x1005180c targets 0x10051898 and is always taken.
  The `bne` branch at 0x1005181c targets 0x10051844, is taken when t0(?) != t1(=0x9), and falls through when t0(?) == t1(=0x9).
  The `beq` branch at 0x1005183c targets 0x10051898 and is always taken.
  The `beq` branch at 0x1005186c targets 0x10051884, is taken when (t3(?) & 0xc097) == 0, and falls through when (t3(?) & 0xc097) != 0.
  The `beq` branch at 0x1005187c targets 0x1005188c and is always taken.
  The return at 0x100518a4 has v0 = one of 0x1, 0x4, ?, 0x2.
- `rl_message` in `usr/gfx/KONA/bin/kpm` at 0x100518b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100518b0-0x10051988 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0x10051908 loads 4 bytes from ?.
  2 such `lw` accesses load 4 bytes from abs 0x1014bff4, including `lw` at 0x10051918, `lw` at 0x10051944.
  The `lw` at 0x10051930 loads 4 bytes from abs 0x1014c18c.
  The `lw` at 0x10051954 loads 4 bytes from abs 0x1014c988.
  The `sw` at 0x10051958 stores 4 bytes to sym(rl_display_prompt) +0x0.
  The `lw` at 0x10051964 loads 4 bytes from abs 0x1014c5d0.
  The `jalr` at 0x10051934 calls vsprintf with a0=0x1024ad38, a1=?, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x10051968 calls rl_redisplay [0x1004e7b0] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x10051980 has v0 = 0x0.
- `rl_clear_message` in `usr/gfx/KONA/bin/kpm` at 0x10051990 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10051990-0x100519f4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x100519b0 loads 4 bytes from abs 0x1014c8c0.
  The `lw` at 0x100519b4 loads 4 bytes from sym(rl_prompt) +0x0.
  The `lw` at 0x100519c0 loads 4 bytes from abs 0x1014c988.
  The `sw` at 0x100519c4 stores 4 bytes to sym(rl_display_prompt) +0x0.
  The `lw` at 0x100519d0 loads 4 bytes from abs 0x1014c5d0.
  The `jal` at 0x100519d4 calls rl_redisplay [0x1004e7b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100519ec has v0 = 0x0.
- `_rl_erase_at_end_of_line` in `usr/gfx/KONA/bin/kpm` at 0x10051ab0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10051ab0-0x10051d14 (612 bytes).
  It occupies 612 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c508, including `lw` at 0x10051ad8, `lw` at 0x10051c4c.
  The `lw` at 0x10051b04 loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x10051b08 loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8bc, including `lw` at 0x10051b20, `lw` at 0x10051b54, `lw` at 0x10051b6c.
  8 such `lw` accesses load 4 bytes from sym(rl_outstream) +0x0, including `lw` at 0x10051b24, `lw` at 0x10051b58, `lw` at 0x10051b70.
  The `lw` at 0x10051b30 loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x0, including `lw` at 0x10051b5c, `lw` at 0x10051b88.
  The `sw` at 0x10051b74 stores 4 bytes to [sym(rl_outstream)] +0x0.
  The `lw` at 0x10051bb0 loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x4, including `lw` at 0x10051bdc, `lw` at 0x10051c0c.
  The `sw` at 0x10051bf4 stores 4 bytes to [sym(rl_outstream)] +0x4.
  The `sb` at 0x10051c10 stores 1 byte to [[sym(rl_outstream)]+4] -0x1.
  3 such `lw` accesses load 4 bytes from abs 0x1014c98c, including `lw` at 0x10051c78, `lw` at 0x10051c8c, `lw` at 0x10051c9c.
  2 such `lw` accesses load 4 bytes from sym(_rl_last_c_pos) +0x0, including `lw` at 0x10051c7c, `lw` at 0x10051ca0.
  The `sw` at 0x10051c90 stores 4 bytes to sym(_rl_last_c_pos) +0x0.
  The `lw` at 0x10051cac loads 4 bytes from abs 0x1014bff4.
  The `lw` at 0x10051cb0 loads 4 bytes from abs 0x1024ad30.
  The `sb` at 0x10051cb8 stores 1 byte to ([sym(_rl_last_c_pos)] + [0x1024ad30]) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c984, including `lw` at 0x10051ce4, `lw` at 0x10051cf8.
  The `lw` at 0x10051ce8 loads 4 bytes from sym(rl_display_fixed) +0x0.
  The `sw` at 0x10051cfc stores 4 bytes to sym(rl_display_fixed) +0x0.
  The `jal` at 0x10051adc calls backspace [0x10048140] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10051b34 calls __semputc with a0=0x20, a1=[sym(rl_outstream)], a2=?, a3=?.
  The `jalr` at 0x10051bb4 calls __flsbuf with a0=0x20, a1=[sym(rl_outstream)], a2=?, a3=[[sym(rl_outstream)]], a4=[[sym(rl_outstream)]]-1, a5=[sym(rl_outstream)].
  The `jal` at 0x10051c50 calls backspace [0x10048140] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10051af4 targets 0x10051c40, is taken when at(=0x0) >= v0(=a0) (signed), and falls through when at(=0x0) < v0(=a0) (signed).
  The `beq` branch at 0x10051b0c targets 0x10051b4c, is taken when v1(=[sym(__us_rsthread_stdio)]) == 0, and falls through when v1(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x10051b44 targets 0x10051c20 and is always taken.
  The `bgez` branch at 0x10051b8c targets 0x10051bcc, is taken when a3(=[[sym(rl_outstream)]]) >= 0 (signed), and falls through when a3(=[[sym(rl_outstream)]]) < 0 (signed).
  The `beq` branch at 0x10051bc4 targets 0x10051c18 and is always taken.
  The `bne` branch at 0x10051c38 targets 0x10051afc, is taken when a7(?) < t0(=a0) (signed), and falls through when a7(?) >= t0(=a0) (signed).
  The `beq` branch at 0x10051c68 targets 0x10051cdc, is taken when ra(=0x0) >= at(=a0) (signed), and falls through when ra(=0x0) < at(=a0) (signed).
  The `bne` branch at 0x10051cd4 targets 0x10051c70, is taken when v0(?) < v1(=a0) (signed), and falls through when v0(?) >= v1(=a0) (signed).
  The return at 0x10051d0c has v0 = one of ret(backspace), ?.
- `_rl_update_final` in `usr/gfx/KONA/bin/kpm` at 0x10052320 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10052320-0x1005268c (876 bytes).
  It occupies 876 bytes.
  7 such `lw` accesses load 4 bytes from abs 0x1014c994, including `lw` at 0x10052344, `lw` at 0x1005237c, `lw` at 0x100523a4.
  5 such `lw` accesses load 4 bytes from sym(_rl_vis_botlin) +0x0, including `lw` at 0x10052348, `lw` at 0x10052380, `lw` at 0x100523a8.
  2 such `lw` accesses load 4 bytes from abs 0x1014bff4, including `lw` at 0x1005235c, `lw` at 0x10052418.
  2 such `lw` accesses load 4 bytes from abs 0x1024ad30, including `lw` at 0x10052360, `lw` at 0x1005241c.
  6 such `lw` accesses load 4 bytes from abs 0x1014c8ec, including `lw` at 0x1005236c, `lw` at 0x10052428, `lw` at 0x10052458.
  6 such `lw` accesses load 4 bytes from sym(screenwidth) +0x0, including `lw` at 0x10052370, `lw` at 0x1005242c, `lw` at 0x1005245c.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10052390, `lbu` at 0x100524c8, `lbu` at 0x10052564.
  2 such `sw` accesses store 4 bytes to sym(_rl_vis_botlin) +0x0, including `sw` at 0x100523bc, `sw` at 0x10052618.
  The `lw` at 0x100523e0 loads 4 bytes from abs 0x1014c5e0.
  The `lw` at 0x10052400 loads 4 bytes from abs 0x1014c8e8.
  The `lw` at 0x10052404 loads 4 bytes from sym(term_xn) +0x0.
  The `lw` at 0x10052470 loads 4 bytes from abs 0x1014c5dc.
  The `lw` at 0x10052488 loads 4 bytes from abs 0x1014c008.
  The `lw` at 0x1005249c loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x100524a0 loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  9 such `lw` accesses load 4 bytes from abs 0x1014c8bc, including `lw` at 0x100524d4, `lw` at 0x10052508, `lw` at 0x10052520.
  9 such `lw` accesses load 4 bytes from sym(rl_outstream) +0x0, including `lw` at 0x100524d8, `lw` at 0x1005250c, `lw` at 0x10052524.
  The `lw` at 0x100524e4 loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x0, including `lw` at 0x10052510, `lw` at 0x1005253c.
  The `sw` at 0x10052528 stores 4 bytes to [sym(rl_outstream)] +0x0.
  The `lw` at 0x10052580 loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x4, including `lw` at 0x100525ac, `lw` at 0x100525f8.
  The `sw` at 0x100525c4 stores 4 bytes to [sym(rl_outstream)] +0x4.
  The `sb` at 0x100525fc stores 1 byte to [[sym(rl_outstream)]+4] -0x1.
  The `lw` at 0x10052624 loads 4 bytes from abs 0x1014c50c.
  The `lw` at 0x10052648 loads 4 bytes from abs 0x1014c140.
  2 such `lw` accesses load 4 bytes from abs 0x1014c984, including `lw` at 0x1005265c, `lw` at 0x10052670.
  The `lw` at 0x10052660 loads 4 bytes from sym(rl_display_fixed) +0x0.
  The `sw` at 0x10052674 stores 4 bytes to sym(rl_display_fixed) +0x0.
  The `jal` at 0x100523e4 calls _rl_move_vert [0x10051200] with a0=[sym(_rl_vis_botlin)], a1=?, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x10052474 calls _rl_move_cursor_relative [0x10050e90] with a0=[sym(screenwidth)]-1, a1=?, a2=?, a3=[sym(screenwidth)], a4=[sym(_rl_vis_botlin)].
  The `jal` at 0x1005248c calls (unnamed) [0x10051d20] with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x100524e8 calls __semputc with a0=?, a1=[sym(rl_outstream)], a2=?, a3=?.
  The `jalr` at 0x10052584 calls __flsbuf with a0=?, a1=[sym(rl_outstream)], a2=?, a3=[[sym(rl_outstream)]], a4=[[sym(rl_outstream)]]-1, a5=[sym(rl_outstream)].
  The `jal` at 0x10052628 calls crlf [0x10048360] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005264c calls fflush with a0=[sym(rl_outstream)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005234c targets 0x100523c8, is taken when at(=[sym(_rl_vis_botlin)]) == 0, and falls through when at(=[sym(_rl_vis_botlin)]) != 0.
  The `bne` branch at 0x10052394 targets 0x100523c8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x100523f0 targets 0x1005260c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10052408 targets 0x1005260c, is taken when a2(=[sym(term_xn)]) == 0, and falls through when a2(=[sym(term_xn)]) != 0.
  The `beq` branch at 0x100524a4 targets 0x10052500, is taken when ra(=[sym(__us_rsthread_stdio)]) == 0, and falls through when ra(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x100524f8 targets 0x1005260c and is always taken.
  The `bgez` branch at 0x10052540 targets 0x1005259c, is taken when a3(=[[sym(rl_outstream)]]) >= 0 (signed), and falls through when a3(=[[sym(rl_outstream)]]) < 0 (signed).
  The `beq` branch at 0x10052594 targets 0x10052604 and is always taken.
  The return at 0x10052684 has v0 = ret(fflush).
- `rl_prep_terminal` in `usr/gfx/KONA/bin/kpm` at 0x10052eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10052eb0-0x100530e0 (560 bytes).
  It occupies 560 bytes.
  The `lw` at 0x10052ed4 loads 4 bytes from abs 0x1014c8b8.
  The `lw` at 0x10052ed8 loads 4 bytes from sym(rl_instream) +0x0.
  The `lhu` at 0x10052edc loads 2 bytes from [sym(rl_instream)] +0xe.
  6 such `lw` accesses load 4 bytes from abs 0x1014c018, including `lw` at 0x10052eec, `lw` at 0x10052f68, `lw` at 0x10052fa8.
  The `lw` at 0x10052ef0 loads 4 bytes from abs 0x1024ae04.
  The `lw` at 0x10052f0c loads 4 bytes from abs 0x1014c020.
  The `lw` at 0x10052f28 loads 4 bytes from abs 0x1014c024.
  3 such `lw` accesses load 4 bytes from abs 0x1014c028, including `lw` at 0x10052f48, `lw` at 0x10053014, `lw` at 0x100530c0.
  The `sd` at 0x10052f74 stores 8 bytes to abs 0x1024ae08.
  The `sd` at 0x10052f7c stores 8 bytes to abs 0x1024ae10.
  The `sd` at 0x10052f84 stores 8 bytes to abs 0x1024ae18.
  The `sd` at 0x10052f8c stores 8 bytes to abs 0x1024ae20.
  The `sd` at 0x10052f94 stores 8 bytes to abs 0x1024ae28.
  The `sd` at 0x10052f9c stores 8 bytes to abs 0x1024ae30.
  The `ld` at 0x10052fb0 loads 8 bytes from abs 0x1024ae08.
  The `ld` at 0x10052fb4 loads 8 bytes from abs 0x1024ae10.
  The `ld` at 0x10052fb8 loads 8 bytes from abs 0x1024ae18.
  The `ld` at 0x10052fbc loads 8 bytes from abs 0x1024ae20.
  The `ld` at 0x10052fc0 loads 8 bytes from abs 0x1024ae28.
  The `ld` at 0x10052fc4 loads 8 bytes from abs 0x1024ae30.
  The `lw` at 0x10052fd8 loads 4 bytes from abs 0x1014c02c.
  The `lw` at 0x10052ff4 loads 4 bytes from abs 0x1014c030.
  The `lw` at 0x10053034 loads 4 bytes from abs 0x1024add8.
  The `sw` at 0x1005304c stores 4 bytes to abs 0x1024add8.
  The `lw` at 0x1005305c loads 4 bytes from abs 0x1014c034.
  The `lw` at 0x10053074 loads 4 bytes from abs 0x1014c038.
  The `lw` at 0x10053088 loads 4 bytes from abs 0x1014c8bc.
  The `lw` at 0x1005308c loads 4 bytes from sym(rl_outstream) +0x0.
  The `lw` at 0x10053098 loads 4 bytes from abs 0x1014c140.
  The `sw` at 0x100530b4 stores 4 bytes to abs 0x1024ae04.
  The `jal` at 0x10052f10 calls (unnamed) [0x10052690] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10052f2c calls (unnamed) [0x10052b40] with a0=?, a1=sp-88, a2=?, a3=?.
  The `jal` at 0x10052f4c calls (unnamed) [0x10052790] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10052fdc calls (unnamed) [0x10052d50] with a0=a0 at entry (arg0), a1=[0x1024ae08]:8, a2=[0x1024ae10]:8, a3=[0x1024ae18]:8, a4=[0x1024ae20]:8, a5=[0x1024ae28]:8, a6=[0x1024ae30]:8, a7=sp-88.
  The `jal` at 0x10052ff8 calls (unnamed) [0x10052c90] with a0=?, a1=sp-88, a2=?, a3=?.
  The `jal` at 0x10053018 calls (unnamed) [0x10052790] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10053060 calls (unnamed) [0x10052970] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10053078 calls (unnamed) [0x10052a60] with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005309c calls fflush with a0=[sym(rl_outstream)], a1=?, a2=?, a3=?.
  The `jal` at 0x100530c4 calls (unnamed) [0x10052790] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10052ef4 targets 0x10052f04, is taken when at(=[0x1024ae04]) == 0, and falls through when at(=[0x1024ae04]) != 0.
  The `beq` branch at 0x10052efc targets 0x100530cc and is always taken.
  The `bgez` branch at 0x10052f38 targets 0x10052f5c, is taken when v0(=ret(0x10052b40)) >= 0 (signed), and falls through when v0(=ret(0x10052b40)) < 0 (signed).
  The `beq` branch at 0x10052f54 targets 0x100530cc and is always taken.
  The `bgez` branch at 0x10053004 targets 0x10053028, is taken when v0(=ret(0x10052c90)) >= 0 (signed), and falls through when v0(=ret(0x10052c90)) < 0 (signed).
  The `beq` branch at 0x10053020 targets 0x100530cc and is always taken.
  The `beq` branch at 0x10053038 targets 0x10053050, is taken when ra(=[0x1024add8]) == 0, and falls through when ra(=[0x1024add8]) != 0.
  The return at 0x100530d8 has v0 = one of [[sym(rl_instream)]+14]:2, ret(0x10052790).
- `rl_deprep_terminal` in `usr/gfx/KONA/bin/kpm` at 0x100530e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100530e0-0x1005321c (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0x10053100 loads 4 bytes from abs 0x1014c8b8.
  The `lw` at 0x10053104 loads 4 bytes from sym(rl_instream) +0x0.
  The `lhu` at 0x10053108 loads 2 bytes from [sym(rl_instream)] +0xe.
  3 such `lw` accesses load 4 bytes from abs 0x1014c018, including `lw` at 0x10053118, `lw` at 0x10053150, `lw` at 0x100531ec.
  The `lw` at 0x1005311c loads 4 bytes from abs 0x1024ae04.
  The `lw` at 0x10053138 loads 4 bytes from abs 0x1014c020.
  The `lw` at 0x10053160 loads 4 bytes from abs 0x1014c030.
  2 such `lw` accesses load 4 bytes from abs 0x1014c028, including `lw` at 0x1005317c, `lw` at 0x100531fc.
  The `lw` at 0x1005319c loads 4 bytes from abs 0x1014c034.
  The `lw` at 0x100531b4 loads 4 bytes from abs 0x1014c038.
  The `lw` at 0x100531c8 loads 4 bytes from abs 0x1014c8bc.
  The `lw` at 0x100531cc loads 4 bytes from sym(rl_outstream) +0x0.
  The `lw` at 0x100531d8 loads 4 bytes from abs 0x1014c140.
  The `sw` at 0x100531f0 stores 4 bytes to abs 0x1024ae04.
  The `jal` at 0x1005313c calls (unnamed) [0x10052690] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10053164 calls (unnamed) [0x10052c90] with a0=?, a1=0x1024ae08, a2=?, a3=?.
  The `jal` at 0x10053180 calls (unnamed) [0x10052790] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100531a0 calls (unnamed) [0x10052970] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x100531b8 calls (unnamed) [0x10052a60] with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x100531dc calls fflush with a0=[sym(rl_outstream)], a1=?, a2=?, a3=?.
  The `jal` at 0x10053200 calls (unnamed) [0x10052790] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10053120 targets 0x10053130, is taken when at(=[0x1024ae04]) != 0, and falls through when at(=[0x1024ae04]) == 0.
  The `beq` branch at 0x10053128 targets 0x10053208 and is always taken.
  The `bgez` branch at 0x1005316c targets 0x10053190, is taken when v0(=ret(0x10052c90)) >= 0 (signed), and falls through when v0(=ret(0x10052c90)) < 0 (signed).
  The `beq` branch at 0x10053188 targets 0x10053208 and is always taken.
  The return at 0x10053214 has v0 = one of [[sym(rl_instream)]+14]:2, ret(0x10052790).
- `rl_restart_output` in `usr/gfx/KONA/bin/kpm` at 0x10053220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053220-0x10053290 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x10053248 loads 4 bytes from abs 0x1014c8bc.
  The `lw` at 0x1005324c loads 4 bytes from sym(rl_outstream) +0x0.
  The `lhu` at 0x10053250 loads 2 bytes from [sym(rl_outstream)] +0xe.
  The `lw` at 0x1005326c loads 4 bytes from abs 0x1014c0c8.
  The `jalr` at 0x10053270 calls ioctl with a0=[[sym(rl_outstream)]+14]:2, a1=0x746e, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x10053288 has v0 = 0x0.
- `rl_stop_output` in `usr/gfx/KONA/bin/kpm` at 0x10053290 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053290-0x10053300 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x100532b8 loads 4 bytes from abs 0x1014c8b8.
  The `lw` at 0x100532bc loads 4 bytes from sym(rl_instream) +0x0.
  The `lhu` at 0x100532c0 loads 2 bytes from [sym(rl_instream)] +0xe.
  The `lw` at 0x100532dc loads 4 bytes from abs 0x1014c0c8.
  The `jalr` at 0x100532e0 calls ioctl with a0=[[sym(rl_instream)]+14]:2, a1=0x746f, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x100532f8 has v0 = 0x0.
- `rltty_set_default_bindings` in `usr/gfx/KONA/bin/kpm` at 0x10053300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053300-0x10053414 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0x10053324 loads 4 bytes from abs 0x1014c8b8.
  The `lw` at 0x10053328 loads 4 bytes from sym(rl_instream) +0x0.
  The `lhu` at 0x1005332c loads 2 bytes from [sym(rl_instream)] +0xe.
  The `lw` at 0x10053344 loads 4 bytes from abs 0x1014c024.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1005337c, `lbu` at 0x100533d0.
  The `lw` at 0x10053390 loads 4 bytes from abs 0x1014c558.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100533a4, `sw` at 0x100533f8.
  The `lw` at 0x100533e4 loads 4 bytes from abs 0x1014c564.
  The `jal` at 0x10053348 calls (unnamed) [0x10052b40] with a0=[[sym(rl_instream)]+14]:2, a1=sp-88, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x10053350 targets 0x10053400, is taken when v0(=ret(0x10052b40)) != 0, and falls through when v0(=ret(0x10052b40)) == 0.
  The `beq` branch at 0x10053364 targets 0x100533a8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10053380 targets 0x100533a8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x100533b8 targets 0x100533fc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x100533d4 targets 0x100533fc, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The return at 0x1005340c has v0 = one of ret(0x10052b40), ?.
- `rl_add_funmap_entry` in `usr/gfx/KONA/bin/kpm` at 0x10053420 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053420-0x10053664 (580 bytes).
  It occupies 580 bytes.
  13 such `lw` accesses load 4 bytes from abs 0x1014c03c, including `lw` at 0x10053448, `lw` at 0x10053458, `lw` at 0x10053498.
  3 such `lw` accesses load 4 bytes from abs 0x1024ae3c, including `lw` at 0x1005344c, `lw` at 0x100534dc, `lw` at 0x10053510.
  7 such `lw` accesses load 4 bytes from abs 0x1024ae40, including `lw` at 0x1005345c, `lw` at 0x10053578, `lw` at 0x100535a8.
  8 such `lw` accesses load 4 bytes from abs 0x1014c998, including `lw` at 0x10053478, `lw` at 0x100534c0, `lw` at 0x100534fc.
  6 such `lw` accesses load 4 bytes from sym(funmap) +0x0, including `lw` at 0x1005347c, `lw` at 0x10053500, `lw` at 0x10053568.
  2 such `sw` accesses store 4 bytes to abs 0x1024ae3c, including `sw` at 0x1005349c, `sw` at 0x100534f0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x100534ac, `lw` at 0x1005354c.
  2 such `sw` accesses store 4 bytes to sym(funmap) +0x0, including `sw` at 0x100534c4, `sw` at 0x1005353c.
  The `lw` at 0x10053520 loads 4 bytes from abs 0x1014c6e8.
  2 such `sw` accesses store 4 bytes to ([sym(funmap)] + ([0x1024ae40] << 0x2)) +0x0, including `sw` at 0x10053584, `sw` at 0x1005363c.
  2 such `lw` accesses load 4 bytes from ([sym(funmap)] + ([0x1024ae40] << 0x2)) +0x0, including `lw` at 0x100535b4, `lw` at 0x100535e8.
  The `sw` at 0x100535b8 stores 4 bytes to [([sym(funmap)] + ([0x1024ae40] << 0x2))] +0x0.
  The `sw` at 0x100535ec stores 4 bytes to [([sym(funmap)] + ([0x1024ae40] << 0x2))] +0x4.
  The `sw` at 0x10053610 stores 4 bytes to abs 0x1024ae40.
  The `jal` at 0x100534b0 calls xmalloc [0x10061950] with a0=0x140, a1=0x1024ae38, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10053524 calls xrealloc [0x100619d0] with a0=[sym(funmap)], a1=([0x1024ae3c] << 0x2), a2=0x1024ae38, a3=a3 at entry (arg3).
  The `jal` at 0x10053550 calls xmalloc [0x10061950] with a0=0x8, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10053468 targets 0x10053540, is taken when at(=[0x1024ae40]+2) < v0(=[0x1024ae3c]) (signed), and falls through when at(=[0x1024ae40]+2) >= v0(=[0x1024ae3c]) (signed).
  The `bne` branch at 0x10053480 targets 0x100534d0, is taken when a0(=[sym(funmap)]) != 0, and falls through when a0(=[sym(funmap)]) == 0.
  The `beq` branch at 0x100534c8 targets 0x10053540 and is always taken.
  The return at 0x1005365c has v0 = [0x1024ae40].
- `rl_initialize_funmap` in `usr/gfx/KONA/bin/kpm` at 0x10053670 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053670-0x10053788 (280 bytes).
  It occupies 280 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c03c, including `lw` at 0x10053690, `lw` at 0x10053758.
  The `lw` at 0x10053694 loads 4 bytes from abs 0x1024ae48.
  4 such `lw` accesses load 4 bytes from abs 0x1014c040, including `lw` at 0x100536b4, `lw` at 0x100536d8, `lw` at 0x100536f4.
  The `lw` at 0x100536c4 loads 4 bytes from abs 0x10149030.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100536e8, `lw` at 0x10053704.
  The `lw` at 0x10053710 loads 4 bytes from abs 0x1014c60c.
  The `lw` at 0x10053740 loads 4 bytes from table(0x10149030) +0x0.
  The `sw` at 0x1005375c stores 4 bytes to abs 0x1024ae48.
  The `lw` at 0x1005376c loads 4 bytes from abs 0x1014c99c.
  The `sw` at 0x10053770 stores 4 bytes to sym(funmap_program_specific_entry_start) +0x0.
  The `jal` at 0x10053714 calls rl_add_funmap_entry [0x10053420] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10053698 targets 0x100536a8, is taken when at(=[0x1024ae48]) == 0, and falls through when at(=[0x1024ae48]) != 0.
  The `beq` branch at 0x100536a0 targets 0x10053774 and is always taken.
  The `beq` branch at 0x100536c8 targets 0x1005374c, is taken when v1(=[0x10149030]) == 0, and falls through when v1(=[0x10149030]) != 0.
  The `bne` branch at 0x10053744 targets 0x100536d0, is taken when a1(=entry(0x10149030)) != 0, and falls through when a1(=entry(0x10149030)) == 0.
  The return at 0x10053780 has v0 = one of 0x100650, ?.
- `rl_funmap_names` in `usr/gfx/KONA/bin/kpm` at 0x10053790 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053790-0x10053948 (440 bytes).
  It occupies 440 bytes.
  The `lw` at 0x100537c0 loads 4 bytes from abs 0x1014c610.
  3 such `lw` accesses load 4 bytes from abs 0x1014c998, including `lw` at 0x100537d8, `lw` at 0x10053888, `lw` at 0x100538e4.
  3 such `lw` accesses load 4 bytes from sym(funmap) +0x0, including `lw` at 0x100537dc, `lw` at 0x1005388c, `lw` at 0x100538e8.
  The `lw` at 0x100537ec loads 4 bytes from [sym(funmap)] +0x0.
  The `lw` at 0x10053834 loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x1005386c loads 4 bytes from abs 0x1014c6e8.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005389c, `lw` at 0x100538a0, `lw` at 0x100538f8.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100538b4, `sw` at 0x100538cc.
  The `lw` at 0x10053918 loads 4 bytes from abs 0x1014c044.
  The `lw` at 0x10053924 loads 4 bytes from abs 0x1014c21c.
  The `jal` at 0x100537c4 calls rl_initialize_funmap [0x10053670] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10053838 calls xmalloc [0x10061950] with a0=0x50, a1=?, a2=?, a3=?.
  The `jal` at 0x10053870 calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10053928 calls qsort with a0=?, a1=?, a2=0x4, a3=0x10053950.
  The `beq` branch at 0x100537f0 targets 0x10053904, is taken when at(=[[sym(funmap)]]) == 0, and falls through when at(=[[sym(funmap)]]) != 0.
  The `beq` branch at 0x10053808 targets 0x10053880, is taken when v0(?) >= v1(?) (signed), and falls through when v0(?) < v1(?) (signed).
  The `bne` branch at 0x10053814 targets 0x1005384c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x10053844 targets 0x10053880 and is always taken.
  The `bne` branch at 0x100538fc targets 0x100537f8, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The return at 0x10053940 has v0 = ?.
- `_rl_vi_set_last` in `usr/gfx/KONA/bin/kpm` at 0x10053a40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053a40-0x10053aa4 (100 bytes).
  It occupies 100 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c048, including `lw` at 0x10053a68, `lw` at 0x10053a7c, `lw` at 0x10053a90.
  The `sw` at 0x10053a6c stores 4 bytes to abs 0x10149380.
  The `sw` at 0x10053a80 stores 4 bytes to abs 0x10149384.
  The `sw` at 0x10053a94 stores 4 bytes to abs 0x10149388.
  The return at 0x10053a9c has v0 = a2.
- `rl_vi_redo` in `usr/gfx/KONA/bin/kpm` at 0x10053b30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053b30-0x10053c18 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x10053b58 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x10053b5c loads 4 bytes from sym(rl_explicit_arg) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c048, including `lw` at 0x10053b70, `lw` at 0x10053b90, `lw` at 0x10053bc4.
  The `lw` at 0x10053b74 loads 4 bytes from abs 0x10149384.
  The `lw` at 0x10053b80 loads 4 bytes from abs 0x1014c7c4.
  The `sw` at 0x10053b84 stores 4 bytes to sym(rl_numeric_arg) +0x0.
  The `lw` at 0x10053b94 loads 4 bytes from abs 0x10149388.
  The `lw` at 0x10053ba0 loads 4 bytes from abs 0x1014c7c8.
  The `sw` at 0x10053ba4 stores 4 bytes to sym(rl_arg_sign) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10053bb4, `lw` at 0x10053bf8.
  2 such `sw` accesses store 4 bytes to abs 0x1024ae6c, including `sw` at 0x10053bb8, `sw` at 0x10053bfc.
  The `lw` at 0x10053bc8 loads 4 bytes from abs 0x10149380.
  The `lw` at 0x10053bd4 loads 4 bytes from abs 0x1014c7bc.
  The `lw` at 0x10053bd8 loads 4 bytes from sym(_rl_keymap) +0x0.
  The `lw` at 0x10053be4 loads 4 bytes from abs 0x1014c4e0.
  The `jal` at 0x10053be8 calls _rl_dispatch [0x10045630] with a0=[0x10149380], a1=[sym(_rl_keymap)], a2=0x1024ae4c, a3=a3 at entry (arg3).
  The `bne` branch at 0x10053b60 targets 0x10053ba8, is taken when at(=[sym(rl_explicit_arg)]) != 0, and falls through when at(=[sym(rl_explicit_arg)]) == 0.
  The return at 0x10053c10 has v0 = 0x0.
- `rl_vi_yank_arg` in `usr/gfx/KONA/bin/kpm` at 0x10053c20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053c20-0x10053cb4 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x10053c48 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x10053c4c loads 4 bytes from sym(rl_explicit_arg) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c5c4, including `lw` at 0x10053c6c, `lw` at 0x10053c90.
  The `jal` at 0x10053c70 calls rl_yank_nth_arg [0x1004da80] with a0=a0-1, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10053c94 calls rl_yank_nth_arg [0x1004da80] with a0=0x24, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10053c50 targets 0x10053c80, is taken when at(=[sym(rl_explicit_arg)]) == 0, and falls through when at(=[sym(rl_explicit_arg)]) != 0.
  The `beq` branch at 0x10053c78 targets 0x10053c9c and is always taken.
  The return at 0x10053cac has v0 = 0x0.
- `rl_vi_fetch_history` in `usr/gfx/KONA/bin/kpm` at 0x10053cc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053cc0-0x10053db8 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x10053ce8 loads 4 bytes from abs 0x1014c478.
  The `lw` at 0x10053d00 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x10053d04 loads 4 bytes from sym(rl_explicit_arg) +0x0.
  The `lw` at 0x10053d18 loads 4 bytes from abs 0x1014c7a8.
  The `lw` at 0x10053d1c loads 4 bytes from sym(history_base) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c594, including `lw` at 0x10053d50, `lw` at 0x10053d94.
  The `lw` at 0x10053d70 loads 4 bytes from abs 0x1014c59c.
  The `jal` at 0x10053cec calls where_history [0x1003b5e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10053d54 calls rl_beginning_of_history [0x1004c5d0] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10053d74 calls rl_get_previous_history [0x1004c8f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10053d98 calls rl_beginning_of_history [0x1004c5d0] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x10053d08 targets 0x10053d84, is taken when at(=[sym(rl_explicit_arg)]) == 0, and falls through when at(=[sym(rl_explicit_arg)]) != 0.
  The `bgtz` branch at 0x10053d38 targets 0x10053d64, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beq` branch at 0x10053d5c targets 0x10053d7c and is always taken.
  The `beq` branch at 0x10053d7c targets 0x10053da0 and is always taken.
  The return at 0x10053db0 has v0 = 0x0.
- `rl_vi_search_again` in `usr/gfx/KONA/bin/kpm` at 0x10053dc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053dc0-0x10053e6c (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0x10053e1c loads 4 bytes from abs 0x1014c6c0.
  The `lw` at 0x10053e40 loads 4 bytes from abs 0x1014c6bc.
  The `jal` at 0x10053e20 calls rl_noninc_reverse_search_again [0x1005f820] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10053e44 calls rl_noninc_forward_search_again [0x1005f770] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10053dec targets 0x10053e0c, is taken when at(=a1) == v0(=0x6e), and falls through when at(=a1) != v0(=0x6e).
  The `beq` branch at 0x10053dfc targets 0x10053e30, is taken when a0(=a1) == a1(=0x4e), and falls through when a0(=a1) != a1(=0x4e).
  The `beq` branch at 0x10053e04 targets 0x10053e54 and is always taken.
  The `beq` branch at 0x10053e28 targets 0x10053e54 and is always taken.
  The `beq` branch at 0x10053e4c targets 0x10053e54 and is always taken.
  The return at 0x10053e64 has v0 = 0x0.
- `rl_vi_search` in `usr/gfx/KONA/bin/kpm` at 0x10053e70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053e70-0x10053f38 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0x10053ecc loads 4 bytes from abs 0x1014c6b4.
  The `lw` at 0x10053ef0 loads 4 bytes from abs 0x1014c6b8.
  The `lw` at 0x10053f0c loads 4 bytes from abs 0x1014c514.
  The `jal` at 0x10053ed0 calls rl_noninc_forward_search [0x1005f650] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10053ef4 calls rl_noninc_reverse_search [0x1005f6e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10053f10 calls ding [0x100485f0] with a0=a1 at entry (arg1), a1=0x2f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10053e9c targets 0x10053ebc, is taken when at(=a1) == v0(=0x3f), and falls through when at(=a1) != v0(=0x3f).
  The `beq` branch at 0x10053eac targets 0x10053ee0, is taken when a0(=a1) == a1(=0x2f), and falls through when a0(=a1) != a1(=0x2f).
  The `beq` branch at 0x10053eb4 targets 0x10053f04 and is always taken.
  The `beq` branch at 0x10053ed8 targets 0x10053f20 and is always taken.
  The `beq` branch at 0x10053efc targets 0x10053f20 and is always taken.
  The `beq` branch at 0x10053f18 targets 0x10053f20 and is always taken.
  The return at 0x10053f30 has v0 = 0x0.
- `rl_vi_complete` in `usr/gfx/KONA/bin/kpm` at 0x10053f40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053f40-0x100541c8 (648 bytes).
  It occupies 648 bytes.
  7 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10053f68, `lw` at 0x10053f94, `lw` at 0x10053fc8.
  6 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10053f6c, `lw` at 0x10053f98, `lw` at 0x10053fcc.
  The `lw` at 0x10053f78 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x10053f7c loads 4 bytes from sym(rl_end) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10053fa4, `lw` at 0x10053fd8, `lw` at 0x10053ffc.
  4 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10053fa8, `lw` at 0x10053fdc, `lw` at 0x10054000.
  2 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10053fb0, `lbu` at 0x10053fe4.
  2 such `lbu` accesses load 1 byte from ([sym(rl_line_buffer)] + [sym(rl_point)]+1) +0x0, including `lbu` at 0x1005401c, `lbu` at 0x10054054.
  The `lw` at 0x10054074 loads 4 bytes from abs 0x1014c62c.
  The `sw` at 0x100540a0 stores 4 bytes to sym(rl_point) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c4b4, including `lw` at 0x100540c0, `lw` at 0x100540f0, `lw` at 0x10054120.
  The `lw` at 0x10054144 loads 4 bytes from abs 0x1014c4ac.
  The `lw` at 0x10054180 loads 4 bytes from abs 0x1014c7c8.
  The `lw` at 0x10054184 loads 4 bytes from sym(rl_arg_sign) +0x0.
  The `lw` at 0x10054190 loads 4 bytes from abs 0x1014c61c.
  The `lw` at 0x100541a4 loads 4 bytes from abs 0x1014c64c.
  The `jal` at 0x10054078 calls rl_vi_end_word [0x100544d0] with a0=0x1, a1=0x45, a2=[([sym(rl_line_buffer)] + [sym(rl_point)]+1)]:1, a3=0x9.
  The `jal` at 0x100540c4 calls rl_complete_internal [0x10041320] with a0=0x2a, a1=?, a2=?, a3=?.
  The `jal` at 0x100540f4 calls rl_complete_internal [0x10041320] with a0=0x3f, a1=?, a2=?, a3=?.
  The `jal` at 0x10054124 calls rl_complete_internal [0x10041320] with a0=0x9, a1=?, a2=?, a3=?.
  The `jal` at 0x10054148 calls rl_complete [0x10040bd0] with a0=0x0, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10054194 calls _rl_vi_set_last [0x10053a40] with a0=a1 at entry (arg1), a1=0x1, a2=[sym(rl_arg_sign)], a3=?.
  The `jal` at 0x100541a8 calls rl_vi_insertion_mode [0x100570f0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10053f84 targets 0x100540a4, is taken when at(=[sym(rl_point)]) >= v0(=[sym(rl_end)]) (signed), and falls through when at(=[sym(rl_point)]) < v0(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10053fb8 targets 0x100540a4, is taken when v1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a0(=0x20), and falls through when v1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a0(=0x20).
  The `beq` branch at 0x10053fec targets 0x100540a4, is taken when a0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a1(=0x9), and falls through when a0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a1(=0x9).
  The `beq` branch at 0x10054024 targets 0x10054080, is taken when a1(=[([sym(rl_line_buffer)] + [sym(rl_point)]+1)]:1) == a2(=0x20), and falls through when a1(=[([sym(rl_line_buffer)] + [sym(rl_point)]+1)]:1) != a2(=0x20).
  The `beq` branch at 0x1005405c targets 0x10054080, is taken when a2(=[([sym(rl_line_buffer)] + [sym(rl_point)]+1)]:1) == a3(=0x9), and falls through when a2(=[([sym(rl_line_buffer)] + [sym(rl_point)]+1)]:1) != a3(=0x9).
  The `bne` branch at 0x100540ac targets 0x100540d4, is taken when at(=a1) != v0(=0x2a), and falls through when at(=a1) == v0(=0x2a).
  The `beq` branch at 0x100540cc targets 0x10054150 and is always taken.
  The `bne` branch at 0x100540dc targets 0x10054104, is taken when ra(=a1) != at(=0x3d), and falls through when ra(=a1) == at(=0x3d).
  The `beq` branch at 0x100540fc targets 0x10054150 and is always taken.
  The `bne` branch at 0x1005410c targets 0x10054134, is taken when ra(=a1) != at(=0x5c), and falls through when ra(=a1) == at(=0x5c).
  The `beq` branch at 0x1005412c targets 0x10054150 and is always taken.
  The `beq` branch at 0x10054158 targets 0x10054170, is taken when ra(=a1) == at(=0x2a), and falls through when ra(=a1) != at(=0x2a).
  The `bne` branch at 0x10054168 targets 0x100541b0, is taken when v0(=a1) != v1(=0x5c), and falls through when v0(=a1) == v1(=0x5c).
  The return at 0x100541c0 has v0 = 0x0.
- `rl_vi_tilde_expand` in `usr/gfx/KONA/bin/kpm` at 0x100541d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100541d0-0x10054264 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x10054200 loads 4 bytes from abs 0x1014c4c0.
  The `lw` at 0x1005421c loads 4 bytes from abs 0x1014c7c8.
  The `lw` at 0x10054220 loads 4 bytes from sym(rl_arg_sign) +0x0.
  The `lw` at 0x1005422c loads 4 bytes from abs 0x1014c61c.
  The `lw` at 0x10054240 loads 4 bytes from abs 0x1014c64c.
  The `jal` at 0x10054204 calls rl_tilde_expand [0x100441a0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10054230 calls _rl_vi_set_last [0x10053a40] with a0=a1 at entry (arg1), a1=0x1, a2=[sym(rl_arg_sign)], a3=?.
  The `jal` at 0x10054244 calls rl_vi_insertion_mode [0x100570f0] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x1005425c has v0 = 0x0.
- `rl_vi_prev_word` in `usr/gfx/KONA/bin/kpm` at 0x10054270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10054270-0x1005438c (284 bytes).
  It occupies 284 bytes.
  The `lw` at 0x100542b0 loads 4 bytes from abs 0x1014c628.
  The `lw` at 0x100542d4 loads 4 bytes from abs 0x1014c8a4.
  The `lw` at 0x100542d8 loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x100542ec loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1005430c loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x10054310 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x10054324 loads 4 bytes from ([sym(__libc_attr)] + (a1 << 0x2)) +0x4.
  The `lw` at 0x10054340 loads 4 bytes from abs 0x1014c634.
  The `lw` at 0x10054360 loads 4 bytes from abs 0x1014c640.
  The `jal` at 0x100542b4 calls rl_vi_next_word [0x10054390] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100542f0 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(rl_point)], a3=a3 at entry (arg3).
  The `jal` at 0x10054344 calls rl_vi_bWord [0x10054910] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(rl_point)], a3=a3 at entry (arg3).
  The `jal` at 0x10054364 calls rl_vi_bword [0x10055af0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(rl_point)], a3=a3 at entry (arg3).
  The `bgez` branch at 0x10054294 targets 0x100542cc, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x100542c4 targets 0x10054374 and is always taken.
  The `bne` branch at 0x100542dc targets 0x10054304, is taken when a2(=[sym(rl_point)]) != 0, and falls through when a2(=[sym(rl_point)]) == 0.
  The `beq` branch at 0x100542fc targets 0x10054374 and is always taken.
  The `beq` branch at 0x1005432c targets 0x10054354, is taken when (ra(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) == 0, and falls through when (ra(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x1005434c targets 0x1005436c and is always taken.
  The return at 0x10054384 has v0 = one of ret(rl_vi_next_word), 0x0.
- `rl_vi_next_word` in `usr/gfx/KONA/bin/kpm` at 0x10054390 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10054390-0x100544c4 (308 bytes).
  It occupies 308 bytes.
  The `lw` at 0x100543d0 loads 4 bytes from abs 0x1014c624.
  The `lw` at 0x100543f4 loads 4 bytes from abs 0x1014c8a4.
  The `lw` at 0x100543f8 loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x10054404 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x10054408 loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x10054424 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x10054444 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x10054448 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1005445c loads 4 bytes from ([sym(__libc_attr)] + (a1 << 0x2)) +0x4.
  The `lw` at 0x10054478 loads 4 bytes from abs 0x1014c630.
  The `lw` at 0x10054498 loads 4 bytes from abs 0x1014c63c.
  The `jal` at 0x100543d4 calls rl_vi_prev_word [0x10054270] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10054428 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[sym(rl_end)]-1.
  The `jal` at 0x1005447c calls rl_vi_fWord [0x100545b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[sym(rl_end)]-1.
  The `jal` at 0x1005449c calls rl_vi_fword [0x10055310] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[sym(rl_end)]-1.
  The `bgez` branch at 0x100543b4 targets 0x100543ec, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x100543e4 targets 0x100544ac and is always taken.
  The `bne` branch at 0x10054414 targets 0x1005443c, is taken when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]-1) (signed), and falls through when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]-1) (signed).
  The `beq` branch at 0x10054434 targets 0x100544ac and is always taken.
  The `beq` branch at 0x10054464 targets 0x1005448c, is taken when (ra(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) == 0, and falls through when (ra(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x10054484 targets 0x100544a4 and is always taken.
  The return at 0x100544bc has v0 = one of ret(rl_vi_prev_word), 0x0.
- `rl_vi_end_word` in `usr/gfx/KONA/bin/kpm` at 0x100544d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100544d0-0x100545a8 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0x10054504 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x10054528 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1005452c loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x10054540 loads 4 bytes from ([sym(__libc_attr)] + (a1 << 0x2)) +0x4.
  The `lw` at 0x1005455c loads 4 bytes from abs 0x1014c638.
  The `lw` at 0x1005457c loads 4 bytes from abs 0x1014c644.
  The `jal` at 0x10054508 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10054560 calls rl_vi_eWord [0x10054d50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10054580 calls rl_vi_eword [0x10056640] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgez` branch at 0x100544f4 targets 0x10054520, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x10054518 targets 0x10054590 and is always taken.
  The `beq` branch at 0x10054548 targets 0x10054570, is taken when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) == 0, and falls through when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x10054568 targets 0x10054588 and is always taken.
  The return at 0x100545a0 has v0 = one of -0x1, 0x0.
- `rl_vi_fWord` in `usr/gfx/KONA/bin/kpm` at 0x100545b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100545b0-0x1005490c (860 bytes).
  It occupies 860 bytes.
  18 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x100545ec, `lw` at 0x1005461c, `lw` at 0x10054650.
  16 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x100545f0, `lw` at 0x10054620, `lw` at 0x10054654.
  6 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x100545fc, `lw` at 0x10054694, `lw` at 0x1005474c.
  6 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10054600, `lw` at 0x10054698, `lw` at 0x10054750.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x1005462c, `lw` at 0x10054660, `lw` at 0x100546e4.
  8 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10054630, `lw` at 0x10054664, `lw` at 0x100546e8.
  8 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10054638, `lbu` at 0x1005466c, `lbu` at 0x100546f0.
  2 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x100546c8, `sw` at 0x10054814.
  The `beq` branch at 0x100545dc targets 0x100548f8, is taken when v0(=a0-1) == v1(=-0x1), and falls through when v0(=a0-1) != v1(=-0x1).
  The `beq` branch at 0x1005460c targets 0x100548f8, is taken when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]-1) (signed), and falls through when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]-1) (signed).
  The `beq` branch at 0x10054640 targets 0x10054760, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x20), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x20).
  The `beq` branch at 0x10054674 targets 0x10054760, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x9), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x9).
  The `beq` branch at 0x100546a0 targets 0x10054760, is taken when a5(=[sym(rl_point)]) >= a6(=[sym(rl_end)]) (signed), and falls through when a5(=[sym(rl_point)]) < a6(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x100546f8 targets 0x10054760, is taken when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a7(=0x20), and falls through when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a7(=0x20).
  The `beq` branch at 0x1005472c targets 0x10054760, is taken when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t1(=0x9), and falls through when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t1(=0x9).
  The `bne` branch at 0x10054758 targets 0x100546a8, is taken when t1(=[sym(rl_point)]) < t2(=[sym(rl_end)]) (signed), and falls through when t1(=[sym(rl_point)]) >= t2(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x1005478c targets 0x100547c8, is taken when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t3(=0x20), and falls through when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t3(=0x20).
  The `bne` branch at 0x100547c0 targets 0x100548ac, is taken when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t8(=0x9), and falls through when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t8(=0x9).
  The `beq` branch at 0x100547ec targets 0x100548ac, is taken when t8(=[sym(rl_point)]) >= t9(=[sym(rl_end)]) (signed), and falls through when t8(=[sym(rl_point)]) < t9(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10054844 targets 0x10054880, is taken when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == ra(=0x20), and falls through when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != ra(=0x20).
  The `bne` branch at 0x10054878 targets 0x100548ac, is taken when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != v1(=0x9), and falls through when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == v1(=0x9).
  The `bne` branch at 0x100548a4 targets 0x100547f4, is taken when v1(=[sym(rl_point)]) < a0(=[sym(rl_end)]) (signed), and falls through when v1(=[sym(rl_point)]) >= a0(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x100548c0 targets 0x100548f8, is taken when a0(?) == a1(=-0x1), and falls through when a0(?) != a1(=-0x1).
  The `bne` branch at 0x100548f0 targets 0x10054614, is taken when a3(=[sym(rl_point)]) < a4(=[sym(rl_end)]-1) (signed), and falls through when a3(=[sym(rl_point)]) >= a4(=[sym(rl_end)]-1) (signed).
  The return at 0x10054904 has v0 = 0x0.
- `rl_vi_bWord` in `usr/gfx/KONA/bin/kpm` at 0x10054910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10054910-0x10054d48 (1080 bytes).
  It occupies 1080 bytes.
  29 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1005494c, `lw` at 0x10054964, `lw` at 0x10054998.
  24 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10054950, `lw` at 0x10054968, `lw` at 0x1005499c.
  12 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10054974, `lw` at 0x100549a8, `lw` at 0x100549cc.
  12 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10054978, `lw` at 0x100549ac, `lw` at 0x100549d0.
  10 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10054980, `lbu` at 0x100549b4, `lbu` at 0x10054a94.
  2 such `lbu` accesses load 1 byte from ([sym(rl_line_buffer)] + [sym(rl_point)]-1) +0x0, including `lbu` at 0x100549ec, `lbu` at 0x10054a24.
  5 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10054a54, `sw` at 0x10054af8, `sw` at 0x10054bb4.
  The `beq` branch at 0x1005493c targets 0x10054d34, is taken when v0(=a0-1) == v1(=-0x1), and falls through when v0(=a0-1) != v1(=-0x1).
  The `blez` branch at 0x10054954 targets 0x10054d34, is taken when a2(=[sym(rl_point)]) <= 0 (signed), and falls through when a2(=[sym(rl_point)]) > 0 (signed).
  The `beq` branch at 0x10054988 targets 0x10054a58, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x20), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x20).
  The `beq` branch at 0x100549bc targets 0x10054a58, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x9), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x9).
  The `beq` branch at 0x100549f4 targets 0x10054a34, is taken when a5(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) == a6(=0x20), and falls through when a5(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) != a6(=0x20).
  The `bne` branch at 0x10054a2c targets 0x10054a58, is taken when a6(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) != a7(=0x9), and falls through when a6(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) == a7(=0x9).
  The `blez` branch at 0x10054a68 targets 0x10054b7c, is taken when t0(=[sym(rl_point)]) <= 0 (signed), and falls through when t0(=[sym(rl_point)]) > 0 (signed).
  The `beq` branch at 0x10054a9c targets 0x10054ad8, is taken when t1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t2(=0x20), and falls through when t1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t2(=0x20).
  The `bne` branch at 0x10054ad0 targets 0x10054b7c, is taken when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t3(=0x9), and falls through when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t3(=0x9).
  The `blez` branch at 0x10054b0c targets 0x10054b7c, is taken when t3(=[sym(rl_point)]) <= 0 (signed), and falls through when t3(=[sym(rl_point)]) > 0 (signed).
  The `beq` branch at 0x10054b40 targets 0x10054ad8, is taken when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == ra(=0x20), and falls through when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != ra(=0x20).
  The `beq` branch at 0x10054b74 targets 0x10054ad8, is taken when ra(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == v0(=0x9), and falls through when ra(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != v0(=0x9).
  The `blez` branch at 0x10054b8c targets 0x10054d00, is taken when v0(=[sym(rl_point)]) <= 0 (signed), and falls through when v0(=[sym(rl_point)]) > 0 (signed).
  The `bltz` branch at 0x10054bc8 targets 0x10054cdc, is taken when v1(=[sym(rl_point)]) < 0 (signed), and falls through when v1(=[sym(rl_point)]) >= 0 (signed).
  The `beq` branch at 0x10054bfc targets 0x10054cdc, is taken when a1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a2(=0x20), and falls through when a1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a2(=0x20).
  The `beq` branch at 0x10054c30 targets 0x10054cdc, is taken when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a3(=0x9), and falls through when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a3(=0x9).
  The `bltz` branch at 0x10054c6c targets 0x10054cdc, is taken when a3(=[sym(rl_point)]) < 0 (signed), and falls through when a3(=[sym(rl_point)]) >= 0 (signed).
  The `beq` branch at 0x10054ca0 targets 0x10054cdc, is taken when a5(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a6(=0x20), and falls through when a5(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a6(=0x20).
  The `bne` branch at 0x10054cd4 targets 0x10054c38, is taken when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a7(=0x9), and falls through when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a7(=0x9).
  The `beq` branch at 0x10054d14 targets 0x10054d34, is taken when t0(?) == t1(=-0x1), and falls through when t0(?) != t1(=-0x1).
  The `bgtz` branch at 0x10054d2c targets 0x1005495c, is taken when t3(=[sym(rl_point)]) > 0 (signed), and falls through when t3(=[sym(rl_point)]) <= 0 (signed).
  The return at 0x10054d40 has v0 = 0x0.
- `rl_vi_eWord` in `usr/gfx/KONA/bin/kpm` at 0x10054d50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10054d50-0x10055310 (1472 bytes).
  It occupies 1472 bytes.
  36 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10054d8c, `lw` at 0x10054dbc, `lw` at 0x10054df0.
  30 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10054d90, `lw` at 0x10054dc0, `lw` at 0x10054df4.
  9 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10054d9c, `lw` at 0x10054e7c, `lw` at 0x10054f34.
  9 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10054da0, `lw` at 0x10054e80, `lw` at 0x10054f38.
  14 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10054dcc, `lw` at 0x10054e00, `lw` at 0x10054ea8.
  14 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10054dd0, `lw` at 0x10054e04, `lw` at 0x10054eac.
  14 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10054dd8, `lbu` at 0x10054e0c, `lbu` at 0x10054eb4.
  6 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10054e3c, `sw` at 0x10054e60, `sw` at 0x10054f18.
  The `beq` branch at 0x10054d7c targets 0x100552fc, is taken when v0(=a0-1) == v1(=-0x1), and falls through when v0(=a0-1) != v1(=-0x1).
  The `beq` branch at 0x10054dac targets 0x100552fc, is taken when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]-1) (signed), and falls through when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]-1) (signed).
  The `beq` branch at 0x10054de0 targets 0x10054e40, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x20), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x20).
  The `beq` branch at 0x10054e14 targets 0x10054e40, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x9), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x9).
  The `beq` branch at 0x10054e88 targets 0x10054fb0, is taken when a6(=[sym(rl_point)]) >= a7(=[sym(rl_end)]) (signed), and falls through when a6(=[sym(rl_point)]) < a7(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10054ebc targets 0x10054ef8, is taken when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t1(=0x20), and falls through when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t1(=0x20).
  The `bne` branch at 0x10054ef0 targets 0x10054fb0, is taken when t1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t2(=0x9), and falls through when t1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t2(=0x9).
  The `beq` branch at 0x10054f40 targets 0x10054fb0, is taken when t2(=[sym(rl_point)]) >= t3(=[sym(rl_end)]) (signed), and falls through when t2(=[sym(rl_point)]) < t3(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10054f74 targets 0x10054ef8, is taken when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t9(=0x20), and falls through when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t9(=0x20).
  The `beq` branch at 0x10054fa8 targets 0x10054ef8, is taken when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == ra(=0x9), and falls through when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != ra(=0x9).
  The `beq` branch at 0x10054fc0 targets 0x100552b0, is taken when ra(=[sym(rl_point)]) == 0, and falls through when ra(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x10054fec targets 0x100552b0, is taken when v0(=[sym(rl_point)]) >= v1(=[sym(rl_end)]) (signed), and falls through when v0(=[sym(rl_point)]) < v1(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10055018 targets 0x10055140, is taken when v1(=[sym(rl_point)]) >= a0(=[sym(rl_end)]) (signed), and falls through when v1(=[sym(rl_point)]) < a0(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x1005504c targets 0x10055088, is taken when a0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a1(=0x20), and falls through when a0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a1(=0x20).
  The `bne` branch at 0x10055080 targets 0x10055140, is taken when a1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a2(=0x9), and falls through when a1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a2(=0x9).
  The `beq` branch at 0x100550d0 targets 0x10055140, is taken when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]) (signed), and falls through when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10055104 targets 0x10055088, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x20), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x20).
  The `beq` branch at 0x10055138 targets 0x10055088, is taken when a5(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a6(=0x9), and falls through when a5(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a6(=0x9).
  The `beq` branch at 0x10055164 targets 0x1005528c, is taken when a6(=[sym(rl_point)]) >= a7(=[sym(rl_end)]) (signed), and falls through when a6(=[sym(rl_point)]) < a7(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10055198 targets 0x1005528c, is taken when a7(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t0(=0x20), and falls through when a7(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t0(=0x20).
  The `beq` branch at 0x100551cc targets 0x1005528c, is taken when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t1(=0x9), and falls through when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t1(=0x9).
  The `beq` branch at 0x1005521c targets 0x1005528c, is taken when t1(=[sym(rl_point)]) >= t2(=[sym(rl_end)]) (signed), and falls through when t1(=[sym(rl_point)]) < t2(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10055250 targets 0x1005528c, is taken when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t8(=0x20), and falls through when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t8(=0x20).
  The `bne` branch at 0x10055284 targets 0x100551d4, is taken when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t9(=0x9), and falls through when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t9(=0x9).
  The `beq` branch at 0x100552c4 targets 0x100552fc, is taken when ra(?) == v0(=-0x1), and falls through when ra(?) != v0(=-0x1).
  The `bne` branch at 0x100552f4 targets 0x10054db4, is taken when a0(=[sym(rl_point)]) < a1(=[sym(rl_end)]-1) (signed), and falls through when a0(=[sym(rl_point)]) >= a1(=[sym(rl_end)]-1) (signed).
  The return at 0x10055308 has v0 = 0x0.
- `rl_vi_fword` in `usr/gfx/KONA/bin/kpm` at 0x10055310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10055310-0x10055ae8 (2008 bytes).
  It occupies 2008 bytes.
  36 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1005534c, `lw` at 0x1005538c, `lw` at 0x100553d0.
  33 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10055350, `lw` at 0x10055390, `lw` at 0x100553d4.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x1005535c, `lw` at 0x1005549c, `lw` at 0x10055574.
  8 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10055360, `lw` at 0x100554a0, `lw` at 0x10055578.
  9 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x1005537c, `lw` at 0x10055404, `lw` at 0x100554dc.
  9 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x10055380, `lw` at 0x10055408, `lw` at 0x100554e0.
  22 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x1005539c, `lw` at 0x100553e0, `lw` at 0x10055424.
  22 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x100553a0, `lw` at 0x100553e4, `lw` at 0x10055428.
  22 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x100553a8, `lbu` at 0x100553ec, `lbu` at 0x10055430.
  9 such `lw` accesses load 4 bytes from ([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2)) +0x4, including `lw` at 0x100553b8, `lw` at 0x10055440, `lw` at 0x10055518.
  3 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x100554d0, `sw` at 0x10055774, `sw` at 0x100559f0.
  The `beq` branch at 0x1005533c targets 0x10055ad4, is taken when v0(=a0-1) == v1(=-0x1), and falls through when v0(=a0-1) != v1(=-0x1).
  The `beq` branch at 0x1005536c targets 0x10055ad4, is taken when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]-1) (signed), and falls through when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]-1) (signed).
  The `bne` branch at 0x100553c0 targets 0x100553fc, is taken when (a3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (a3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x100553f4 targets 0x10055590, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x5f), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x5f).
  The `bne` branch at 0x10055448 targets 0x10055484, is taken when (a5(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (a5(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x1005547c targets 0x10055588, is taken when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a7(=0x5f), and falls through when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a7(=0x5f).
  The `beq` branch at 0x100554a8 targets 0x10055588, is taken when a7(=[sym(rl_point)]) >= t0(=[sym(rl_end)]) (signed), and falls through when a7(=[sym(rl_point)]) < t0(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10055520 targets 0x1005555c, is taken when (t0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (t0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x10055554 targets 0x10055588, is taken when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t3(=0x5f), and falls through when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t3(=0x5f).
  The `bne` branch at 0x10055580 targets 0x100554b0, is taken when t3(=[sym(rl_point)]) < t8(=[sym(rl_end)]) (signed), and falls through when t3(=[sym(rl_point)]) >= t8(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10055588 targets 0x1005593c and is always taken.
  The `bne` branch at 0x100555dc targets 0x1005593c, is taken when (t8(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0, and falls through when (t8(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0.
  The `bne` branch at 0x10055630 targets 0x1005593c, is taken when (t9(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0, and falls through when (t9(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0.
  The `bne` branch at 0x10055684 targets 0x1005593c, is taken when (ra(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) != 0, and falls through when (ra(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) == 0.
  The `beq` branch at 0x100556b8 targets 0x1005593c, is taken when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == v1(=0x5f), and falls through when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != v1(=0x5f).
  The `beq` branch at 0x100556ec targets 0x1005593c, is taken when v1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a0(=0x20), and falls through when v1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a0(=0x20).
  The `beq` branch at 0x10055720 targets 0x1005593c, is taken when a0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a1(=0x9), and falls through when a0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a1(=0x9).
  The `beq` branch at 0x1005574c targets 0x1005593c, is taken when a1(=[sym(rl_point)]) >= a2(=[sym(rl_end)]) (signed), and falls through when a1(=[sym(rl_point)]) < a2(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x100557c4 targets 0x1005593c, is taken when (a2(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0, and falls through when (a2(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0.
  The `bne` branch at 0x10055818 targets 0x1005593c, is taken when (a4(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0, and falls through when (a4(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0.
  The `bne` branch at 0x1005586c targets 0x1005593c, is taken when (a5(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) != 0, and falls through when (a5(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) == 0.
  The `beq` branch at 0x100558a0 targets 0x1005593c, is taken when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a7(=0x5f), and falls through when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a7(=0x5f).
  The `beq` branch at 0x100558d4 targets 0x1005593c, is taken when a7(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t0(=0x20), and falls through when a7(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t0(=0x20).
  The `beq` branch at 0x10055908 targets 0x1005593c, is taken when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t1(=0x9), and falls through when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t1(=0x9).
  The `bne` branch at 0x10055934 targets 0x10055754, is taken when t1(=[sym(rl_point)]) < t2(=[sym(rl_end)]) (signed), and falls through when t1(=[sym(rl_point)]) >= t2(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10055968 targets 0x100559a4, is taken when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t3(=0x20), and falls through when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t3(=0x20).
  The `bne` branch at 0x1005599c targets 0x10055a88, is taken when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t8(=0x9), and falls through when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t8(=0x9).
  The `beq` branch at 0x100559c8 targets 0x10055a88, is taken when t8(=[sym(rl_point)]) >= t9(=[sym(rl_end)]) (signed), and falls through when t8(=[sym(rl_point)]) < t9(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10055a20 targets 0x10055a5c, is taken when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == ra(=0x20), and falls through when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != ra(=0x20).
  The `bne` branch at 0x10055a54 targets 0x10055a88, is taken when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != v1(=0x9), and falls through when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == v1(=0x9).
  The `bne` branch at 0x10055a80 targets 0x100559d0, is taken when v1(=[sym(rl_point)]) < a0(=[sym(rl_end)]) (signed), and falls through when v1(=[sym(rl_point)]) >= a0(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10055a9c targets 0x10055ad4, is taken when a0(?) == a1(=-0x1), and falls through when a0(?) != a1(=-0x1).
  The `bne` branch at 0x10055acc targets 0x10055374, is taken when a3(=[sym(rl_point)]) < a4(=[sym(rl_end)]-1) (signed), and falls through when a3(=[sym(rl_point)]) >= a4(=[sym(rl_end)]-1) (signed).
  The return at 0x10055ae0 has v0 = 0x0.
- `rl_vi_bword` in `usr/gfx/KONA/bin/kpm` at 0x10055af0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10055af0-0x10056640 (2896 bytes).
  It occupies 2896 bytes.
  59 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10055b2c, `lw` at 0x10055b44, `lw` at 0x10055b78.
  51 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10055b30, `lw` at 0x10055b48, `lw` at 0x10055b7c.
  34 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10055b54, `lw` at 0x10055b88, `lw` at 0x10055bac.
  34 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10055b58, `lw` at 0x10055b8c, `lw` at 0x10055bb0.
  30 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10055b60, `lbu` at 0x10055b94, `lbu` at 0x10055d18.
  4 such `lbu` accesses load 1 byte from ([sym(rl_line_buffer)] + [sym(rl_point)]-1) +0x0, including `lbu` at 0x10055bcc, `lbu` at 0x10055c04, `lbu` at 0x10055c70.
  8 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10055c34, `sw` at 0x10055ed4, `sw` at 0x10055f78.
  14 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x10055c40, `lw` at 0x10055cec, `lw` at 0x10055d80.
  14 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x10055c44, `lw` at 0x10055cf0, `lw` at 0x10055d84.
  The `lw` at 0x10055c80 loads 4 bytes from ([sym(__libc_attr)] + ([([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1 << 0x2)) +0x4.
  13 such `lw` accesses load 4 bytes from ([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2)) +0x4, including `lw` at 0x10055d28, `lw` at 0x10055dbc, `lw` at 0x10055e10.
  The `beq` branch at 0x10055b1c targets 0x1005662c, is taken when v0(=a0-1) == v1(=-0x1), and falls through when v0(=a0-1) != v1(=-0x1).
  The `blez` branch at 0x10055b34 targets 0x1005662c, is taken when a2(=[sym(rl_point)]) <= 0 (signed), and falls through when a2(=[sym(rl_point)]) > 0 (signed).
  The `beq` branch at 0x10055b68 targets 0x10055c38, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x20), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x20).
  The `beq` branch at 0x10055b9c targets 0x10055c38, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x9), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x9).
  The `beq` branch at 0x10055bd4 targets 0x10055c14, is taken when a5(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) == a6(=0x20), and falls through when a5(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) != a6(=0x20).
  The `bne` branch at 0x10055c0c targets 0x10055c38, is taken when a6(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) != a7(=0x9), and falls through when a6(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) == a7(=0x9).
  The `bne` branch at 0x10055c88 targets 0x10055cc8, is taken when (t0(=[([sym(__libc_attr)] + ([([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (t0(=[([sym(__libc_attr)] + ([([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x10055cc0 targets 0x10055cd8, is taken when t1(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) != t2(=0x5f), and falls through when t1(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) == t2(=0x5f).
  The `beq` branch at 0x10055cd0 targets 0x10055cdc and is always taken.
  The `bne` branch at 0x10055d30 targets 0x10055d6c, is taken when (t3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (t3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x10055d64 targets 0x10055d78, is taken when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != ra(=0x5f), and falls through when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == ra(=0x5f).
  The `beq` branch at 0x10055d70 targets 0x10055eb4, is taken when ra(=one of 0x0, 0x1) == 0, and falls through when ra(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x10055dc4 targets 0x10055ed8, is taken when (v0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0, and falls through when (v0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0.
  The `bne` branch at 0x10055e18 targets 0x10055ed8, is taken when (v1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0, and falls through when (v1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0.
  The `bne` branch at 0x10055e6c targets 0x10055ed8, is taken when (a0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) != 0, and falls through when (a0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) == 0.
  The `beq` branch at 0x10055ea0 targets 0x10055ed8, is taken when a1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a2(=0x5f), and falls through when a1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a2(=0x5f).
  The `beq` branch at 0x10055eac targets 0x10055ed8, is taken when a2(=one of 0x0, 0x1) == 0, and falls through when a2(=one of 0x0, 0x1) != 0.
  The `blez` branch at 0x10055ee8 targets 0x10055ffc, is taken when a4(=[sym(rl_point)]) <= 0 (signed), and falls through when a4(=[sym(rl_point)]) > 0 (signed).
  The `beq` branch at 0x10055f1c targets 0x10055f58, is taken when a5(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a6(=0x20), and falls through when a5(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a6(=0x20).
  The `bne` branch at 0x10055f50 targets 0x10055ffc, is taken when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a7(=0x9), and falls through when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a7(=0x9).
  The `blez` branch at 0x10055f8c targets 0x10055ffc, is taken when a7(=[sym(rl_point)]) <= 0 (signed), and falls through when a7(=[sym(rl_point)]) > 0 (signed).
  The `beq` branch at 0x10055fc0 targets 0x10055f58, is taken when t1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t2(=0x20), and falls through when t1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t2(=0x20).
  The `beq` branch at 0x10055ff4 targets 0x10055f58, is taken when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t3(=0x9), and falls through when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t3(=0x9).
  The `blez` branch at 0x1005600c targets 0x100565f8, is taken when t3(=[sym(rl_point)]) <= 0 (signed), and falls through when t3(=[sym(rl_point)]) > 0 (signed).
  The `bne` branch at 0x10056060 targets 0x1005609c, is taken when (t8(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (t8(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x10056094 targets 0x1005622c, is taken when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != ra(=0x5f), and falls through when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == ra(=0x5f).
  The `bltz` branch at 0x100560d0 targets 0x10056224, is taken when ra(=[sym(rl_point)]) < 0 (signed), and falls through when ra(=[sym(rl_point)]) >= 0 (signed).
  The `bne` branch at 0x10056124 targets 0x10056160, is taken when (v1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (v1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x10056158 targets 0x10056224, is taken when a0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a1(=0x5f), and falls through when a0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a1(=0x5f).
  The `bltz` branch at 0x10056194 targets 0x10056224, is taken when a1(=[sym(rl_point)]) < 0 (signed), and falls through when a1(=[sym(rl_point)]) >= 0 (signed).
  The `bne` branch at 0x100561e8 targets 0x10056160, is taken when (a3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (a3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `beq` branch at 0x1005621c targets 0x10056160, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x5f), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x5f).
  The `beq` branch at 0x10056224 targets 0x100565d4 and is always taken.
  The `bltz` branch at 0x10056260 targets 0x100565d4, is taken when a5(=[sym(rl_point)]) < 0 (signed), and falls through when a5(=[sym(rl_point)]) >= 0 (signed).
  The `bne` branch at 0x100562b4 targets 0x100565d4, is taken when (a7(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0, and falls through when (a7(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0.
  The `bne` branch at 0x10056308 targets 0x100565d4, is taken when (t0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0, and falls through when (t0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0.
  The `bne` branch at 0x1005635c targets 0x100565d4, is taken when (t1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) != 0, and falls through when (t1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) == 0.
  The `beq` branch at 0x10056390 targets 0x100565d4, is taken when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t3(=0x5f), and falls through when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t3(=0x5f).
  The `beq` branch at 0x100563c4 targets 0x100565d4, is taken when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t8(=0x20), and falls through when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t8(=0x20).
  The `beq` branch at 0x100563f8 targets 0x100565d4, is taken when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t9(=0x9), and falls through when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t9(=0x9).
  The `bltz` branch at 0x10056434 targets 0x100565d4, is taken when t9(=[sym(rl_point)]) < 0 (signed), and falls through when t9(=[sym(rl_point)]) >= 0 (signed).
  The `bne` branch at 0x10056488 targets 0x100565d4, is taken when (v0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0, and falls through when (v0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0.
  The `bne` branch at 0x100564dc targets 0x100565d4, is taken when (v1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0, and falls through when (v1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0.
  The `bne` branch at 0x10056530 targets 0x100565d4, is taken when (a0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) != 0, and falls through when (a0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) == 0.
  The `beq` branch at 0x10056564 targets 0x100565d4, is taken when a1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a2(=0x5f), and falls through when a1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a2(=0x5f).
  The `beq` branch at 0x10056598 targets 0x100565d4, is taken when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a3(=0x20), and falls through when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a3(=0x20).
  The `bne` branch at 0x100565cc targets 0x10056400, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x9), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x9).
  The `beq` branch at 0x1005660c targets 0x1005662c, is taken when a5(?) == a6(=-0x1), and falls through when a5(?) != a6(=-0x1).
  The `bgtz` branch at 0x10056624 targets 0x10055b3c, is taken when t0(=[sym(rl_point)]) > 0 (signed), and falls through when t0(=[sym(rl_point)]) <= 0 (signed).
  The return at 0x10056638 has v0 = 0x0.
- `rl_vi_eword` in `usr/gfx/KONA/bin/kpm` at 0x10056640 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10056640-0x10056f3c (2300 bytes).
  It occupies 2300 bytes.
  47 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1005667c, `lw` at 0x100566ac, `lw` at 0x100566e0.
  40 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10056680, `lw` at 0x100566b0, `lw` at 0x100566e4.
  9 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x1005668c, `lw` at 0x10056748, `lw` at 0x10056800.
  9 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10056690, `lw` at 0x1005674c, `lw` at 0x10056804.
  24 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x100566bc, `lw` at 0x100566f0, `lw` at 0x10056774.
  24 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x100566c0, `lw` at 0x100566f4, `lw` at 0x10056778.
  24 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x100566c8, `lbu` at 0x100566fc, `lbu` at 0x10056780.
  7 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x1005672c, `sw` at 0x100567e4, `sw` at 0x10056950.
  9 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x100568b0, `lw` at 0x10056988, `lw` at 0x10056a60.
  9 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x100568b4, `lw` at 0x1005698c, `lw` at 0x10056a64.
  9 such `lw` accesses load 4 bytes from ([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2)) +0x4, including `lw` at 0x100568ec, `lw` at 0x100569c4, `lw` at 0x10056a9c.
  The `beq` branch at 0x1005666c targets 0x10056f28, is taken when v0(=a0-1) == v1(=-0x1), and falls through when v0(=a0-1) != v1(=-0x1).
  The `beq` branch at 0x1005669c targets 0x10056f28, is taken when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]-1) (signed), and falls through when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]-1) (signed).
  The `beq` branch at 0x100566d0 targets 0x10056730, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x20), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x20).
  The `beq` branch at 0x10056704 targets 0x10056730, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x9), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x9).
  The `beq` branch at 0x10056754 targets 0x1005687c, is taken when a6(=[sym(rl_point)]) >= a7(=[sym(rl_end)]) (signed), and falls through when a6(=[sym(rl_point)]) < a7(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10056788 targets 0x100567c4, is taken when a7(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t0(=0x20), and falls through when a7(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t0(=0x20).
  The `bne` branch at 0x100567bc targets 0x1005687c, is taken when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t1(=0x9), and falls through when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t1(=0x9).
  The `beq` branch at 0x1005680c targets 0x1005687c, is taken when t1(=[sym(rl_point)]) >= t2(=[sym(rl_end)]) (signed), and falls through when t1(=[sym(rl_point)]) < t2(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10056840 targets 0x100567c4, is taken when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t8(=0x20), and falls through when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t8(=0x20).
  The `beq` branch at 0x10056874 targets 0x100567c4, is taken when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t9(=0x9), and falls through when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t9(=0x9).
  The `beq` branch at 0x100568a0 targets 0x10056eb8, is taken when t9(=[sym(rl_point)]) >= ra(=[sym(rl_end)]) (signed), and falls through when t9(=[sym(rl_point)]) < ra(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x100568f4 targets 0x10056930, is taken when (ra(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (ra(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x10056928 targets 0x10056ae8, is taken when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != v1(=0x5f), and falls through when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == v1(=0x5f).
  The `beq` branch at 0x10056978 targets 0x10056ae0, is taken when v1(=[sym(rl_point)]) >= a0(=[sym(rl_end)]) (signed), and falls through when v1(=[sym(rl_point)]) < a0(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x100569cc targets 0x10056a08, is taken when (a1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (a1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x10056a00 targets 0x10056ae0, is taken when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a3(=0x5f), and falls through when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a3(=0x5f).
  The `beq` branch at 0x10056a50 targets 0x10056ae0, is taken when a3(=[sym(rl_point)]) >= a4(=[sym(rl_end)]) (signed), and falls through when a3(=[sym(rl_point)]) < a4(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10056aa4 targets 0x10056a08, is taken when (a5(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (a5(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `beq` branch at 0x10056ad8 targets 0x10056a08, is taken when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a7(=0x5f), and falls through when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a7(=0x5f).
  The `beq` branch at 0x10056ae0 targets 0x10056eb8 and is always taken.
  The `beq` branch at 0x10056b30 targets 0x10056eb8, is taken when a7(=[sym(rl_point)]) >= t0(=[sym(rl_end)]) (signed), and falls through when a7(=[sym(rl_point)]) < t0(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10056b84 targets 0x10056eb8, is taken when (t1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0, and falls through when (t1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0.
  The `bne` branch at 0x10056bd8 targets 0x10056eb8, is taken when (t2(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0, and falls through when (t2(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0.
  The `bne` branch at 0x10056c2c targets 0x10056eb8, is taken when (t3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) != 0, and falls through when (t3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) == 0.
  The `beq` branch at 0x10056c60 targets 0x10056eb8, is taken when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t9(=0x5f), and falls through when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t9(=0x5f).
  The `beq` branch at 0x10056c94 targets 0x10056eb8, is taken when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == ra(=0x20), and falls through when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != ra(=0x20).
  The `beq` branch at 0x10056cc8 targets 0x10056eb8, is taken when ra(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == v0(=0x9), and falls through when ra(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != v0(=0x9).
  The `beq` branch at 0x10056d18 targets 0x10056eb8, is taken when v0(=[sym(rl_point)]) >= v1(=[sym(rl_end)]) (signed), and falls through when v0(=[sym(rl_point)]) < v1(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10056d6c targets 0x10056eb8, is taken when (a0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0, and falls through when (a0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0.
  The `bne` branch at 0x10056dc0 targets 0x10056eb8, is taken when (a1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0, and falls through when (a1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0.
  The `bne` branch at 0x10056e14 targets 0x10056eb8, is taken when (a2(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) != 0, and falls through when (a2(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) == 0.
  The `beq` branch at 0x10056e48 targets 0x10056eb8, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x5f), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x5f).
  The `beq` branch at 0x10056e7c targets 0x10056eb8, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x20), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x20).
  The `bne` branch at 0x10056eb0 targets 0x10056cd0, is taken when a5(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a6(=0x9), and falls through when a5(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a6(=0x9).
  The `beq` branch at 0x10056ef0 targets 0x10056f28, is taken when a6(?) == a7(=-0x1), and falls through when a6(?) != a7(=-0x1).
  The `bne` branch at 0x10056f20 targets 0x100566a4, is taken when t2(=[sym(rl_point)]) < t3(=[sym(rl_end)]-1) (signed), and falls through when t2(=[sym(rl_point)]) >= t3(=[sym(rl_end)]-1) (signed).
  The return at 0x10056f34 has v0 = 0x0.
- `rl_vi_insert_beg` in `usr/gfx/KONA/bin/kpm` at 0x10056f40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10056f40-0x10056fa0 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x10056f68 loads 4 bytes from abs 0x1014c534.
  The `lw` at 0x10056f7c loads 4 bytes from abs 0x1014c64c.
  The `jal` at 0x10056f6c calls rl_beg_of_line [0x10049190] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10056f80 calls rl_vi_insertion_mode [0x100570f0] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x10056f98 has v0 = 0x0.
- `rl_vi_append_mode` in `usr/gfx/KONA/bin/kpm` at 0x10056fa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10056fa0-0x10057034 (148 bytes).
  It occupies 148 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10056fc0, `lw` at 0x10056fec, `lw` at 0x10057000.
  2 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10056fc4, `lw` at 0x10056ff0.
  The `lw` at 0x10056fd0 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x10056fd4 loads 4 bytes from sym(rl_end) +0x0.
  The `sw` at 0x10057004 stores 4 bytes to sym(rl_point) +0x0.
  The `lw` at 0x10057010 loads 4 bytes from abs 0x1014c64c.
  The `jal` at 0x10057014 calls rl_vi_insertion_mode [0x100570f0] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10056fdc targets 0x10057008, is taken when at(=[sym(rl_point)]) >= v0(=[sym(rl_end)]) (signed), and falls through when at(=[sym(rl_point)]) < v0(=[sym(rl_end)]) (signed).
  The return at 0x1005702c has v0 = 0x0.
- `rl_vi_append_eol` in `usr/gfx/KONA/bin/kpm` at 0x10057040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10057040-0x100570a0 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x10057068 loads 4 bytes from abs 0x1014c538.
  The `lw` at 0x1005707c loads 4 bytes from abs 0x1014c648.
  The `jal` at 0x1005706c calls rl_end_of_line [0x100491c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10057080 calls rl_vi_append_mode [0x10056fa0] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x10057098 has v0 = 0x0.
- `rl_vi_eof_maybe` in `usr/gfx/KONA/bin/kpm` at 0x100570a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100570a0-0x100570f0 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x100570d0 loads 4 bytes from abs 0x1014c54c.
  The `jal` at 0x100570d4 calls rl_newline [0x1004a160] with a0=0x1, a1=0xa, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100570e8 has v0 = ret(rl_newline).
- `rl_vi_insertion_mode` in `usr/gfx/KONA/bin/kpm` at 0x100570f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100570f0-0x10057124 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10057104 loads 4 bytes from abs 0x1014c7fc.
  The `lw` at 0x10057110 loads 4 bytes from abs 0x1014c7bc.
  The `sw` at 0x10057114 stores 4 bytes to sym(_rl_keymap) +0x0.
  The return at 0x1005711c has v0 = 0x0.
- `_rl_vi_done_inserting` in `usr/gfx/KONA/bin/kpm` at 0x10057130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10057130-0x100571c4 (148 bytes).
  It occupies 148 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10057150, `lw` at 0x1005717c, `lw` at 0x10057190.
  The `lw` at 0x10057154 loads 4 bytes from abs 0x1024ae4c.
  The `lw` at 0x10057168 loads 4 bytes from abs 0x1014c578.
  The `sw` at 0x10057180 stores 4 bytes to abs 0x1024ae4c.
  2 such `sw` accesses store 4 bytes to abs 0x1024ae5c, including `sw` at 0x10057194, `sw` at 0x100571ac.
  The `jal` at 0x1005716c calls rl_end_undo_group [0x1004be10] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10057158 targets 0x100571a0, is taken when at(=[0x1024ae4c]) == 0, and falls through when at(=[0x1024ae4c]) != 0.
  The `beq` branch at 0x10057198 targets 0x100571b0 and is always taken.
  The return at 0x100571bc has v0 = one of 0xfcb90, 0x1024ae4c.
- `rl_vi_movement_mode` in `usr/gfx/KONA/bin/kpm` at 0x100571d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100571d0-0x10057268 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x100571f8 loads 4 bytes from abs 0x1014c8a4.
  The `lw` at 0x100571fc loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x10057214 loads 4 bytes from abs 0x1014c530.
  The `lw` at 0x10057228 loads 4 bytes from abs 0x1014c7f8.
  The `lw` at 0x10057234 loads 4 bytes from abs 0x1014c7bc.
  The `sw` at 0x10057238 stores 4 bytes to sym(_rl_keymap) +0x0.
  The `lw` at 0x10057244 loads 4 bytes from abs 0x1014c650.
  The `jal` at 0x10057218 calls rl_backward [0x100490a0] with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10057248 calls _rl_vi_done_inserting [0x10057130] with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x10057200 targets 0x10057220, is taken when at(=[sym(rl_point)]) <= 0 (signed), and falls through when at(=[sym(rl_point)]) > 0 (signed).
  The return at 0x10057260 has v0 = 0x0.
- `rl_vi_arg_digit` in `usr/gfx/KONA/bin/kpm` at 0x10057270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10057270-0x10057348 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0x100572a8 loads 4 bytes from abs 0x1014c7c4.
  The `lw` at 0x100572ac loads 4 bytes from sym(rl_numeric_arg) +0x0.
  The `lw` at 0x100572c4 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x100572c8 loads 4 bytes from sym(rl_explicit_arg) +0x0.
  The `lw` at 0x100572dc loads 4 bytes from abs 0x1014c534.
  The `lw` at 0x1005730c loads 4 bytes from abs 0x1014c4f0.
  The `jal` at 0x100572e0 calls rl_beg_of_line [0x10049190] with a0=[sym(rl_numeric_arg)], a1=[sym(rl_explicit_arg)], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10057310 calls rl_digit_argument [0x10047030] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x10057298 targets 0x100572fc, is taken when at(=a1) != v0(=0x30), and falls through when at(=a1) == v0(=0x30).
  The `bne` branch at 0x100572b4 targets 0x100572fc, is taken when a0(=[sym(rl_numeric_arg)]) != a1(=0x1), and falls through when a0(=[sym(rl_numeric_arg)]) == a1(=0x1).
  The `bne` branch at 0x100572cc targets 0x100572fc, is taken when a1(=[sym(rl_explicit_arg)]) != 0, and falls through when a1(=[sym(rl_explicit_arg)]) == 0.
  The `beq` branch at 0x100572f4 targets 0x10057330 and is always taken.
  The `beq` branch at 0x10057328 targets 0x10057330 and is always taken.
  The return at 0x10057340 has v0 = one of ret(rl_beg_of_line), ret(rl_digit_argument).
- `rl_vi_change_case` in `usr/gfx/KONA/bin/kpm` at 0x10057350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10057350-0x10057784 (1076 bytes).
  It occupies 1076 bytes.
  11 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1005737c, `lw` at 0x100573d0, `lw` at 0x1005740c.
  11 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10057380, `lw` at 0x100573d4, `lw` at 0x10057410.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x1005738c, `lw` at 0x100573e0, `lw` at 0x10057750.
  3 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10057390, `lw` at 0x100573e4, `lw` at 0x10057754.
  4 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x100573fc, `lw` at 0x10057450, `lw` at 0x10057530.
  4 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x10057400, `lw` at 0x10057454, `lw` at 0x10057534.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x1005741c, `lw` at 0x10057470, `lw` at 0x100574b4.
  8 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10057420, `lw` at 0x10057474, `lw` at 0x100574b8.
  8 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10057428, `lbu` at 0x1005747c, `lbu` at 0x100574c0.
  4 such `lw` accesses load 4 bytes from ([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2)) +0x4, including `lw` at 0x10057438, `lw` at 0x1005748c, `lw` at 0x1005756c.
  The `lw` at 0x100574cc loads 4 bytes from abs 0x1014c234.
  The `lw` at 0x10057600 loads 4 bytes from abs 0x1014c260.
  2 such `lw` accesses load 4 bytes from abs 0x1014c52c, including `lw` at 0x10057668, `lw` at 0x10057710.
  The `lw` at 0x10057690 loads 4 bytes from abs 0x1014c574.
  The `lw` at 0x100576ac loads 4 bytes from abs 0x1014c55c.
  The `lw` at 0x100576c8 loads 4 bytes from abs 0x1014c548.
  The `lw` at 0x100576dc loads 4 bytes from abs 0x1014c578.
  The `lw` at 0x100576f0 loads 4 bytes from abs 0x1014c658.
  The `jalr` at 0x100574d0 calls tolower with a0=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1, a1=[sym(rl_line_buffer)], a2=?, a3=?, a5=([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2), a6=[sym(rl_line_buffer)].
  The `jalr` at 0x10057604 calls toupper with a0=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1, a1=[sym(rl_line_buffer)], a2=?, a3=?, a6=([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2), a7=[sym(rl_line_buffer)].
  The `jal` at 0x1005766c calls rl_forward [0x10048f80] with a0=0x1, a1=?, a2=?, a3=?, a5=([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2), a6=[sym(rl_line_buffer)].
  The `jal` at 0x10057694 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100576b0 calls rl_delete [0x1004a550] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x100576cc calls rl_insert [0x10049c30] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x100576e0 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100576f4 calls rl_vi_check [0x10057880] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10057714 calls rl_forward [0x10048f80] with a0=0x1, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10057398 targets 0x100573ac, is taken when at(=[sym(rl_point)]) < v0(=[sym(rl_end)]) (signed), and falls through when at(=[sym(rl_point)]) >= v0(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x100573a4 targets 0x1005776c and is always taken.
  The `beq` branch at 0x100573c0 targets 0x10057764, is taken when v1(=a0-1) == a0(=-0x1), and falls through when v1(=a0-1) != a0(=-0x1).
  The `beq` branch at 0x100573ec targets 0x10057764, is taken when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]) (signed), and falls through when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10057440 targets 0x10057528, is taken when (a3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0, and falls through when (a3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x10057494 targets 0x100574ec, is taken when (a4(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0, and falls through when (a4(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x100574e4 targets 0x10057518 and is always taken.
  The `beq` branch at 0x10057520 targets 0x1005767c and is always taken.
  The `beq` branch at 0x10057574 targets 0x1005765c, is taken when (a4(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0, and falls through when (a4(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0.
  The `beq` branch at 0x100575c8 targets 0x10057620, is taken when (a5(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0, and falls through when (a5(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0.
  The `beq` branch at 0x10057618 targets 0x1005764c and is always taken.
  The `beq` branch at 0x10057654 targets 0x1005767c and is always taken.
  The `beq` branch at 0x10057674 targets 0x1005771c and is always taken.
  The `beq` branch at 0x10057680 targets 0x10057704, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x100576fc targets 0x1005771c and is always taken.
  The `beq` branch at 0x10057730 targets 0x10057764, is taken when ra(?) == at(=-0x1), and falls through when ra(?) != at(=-0x1).
  The `bne` branch at 0x1005775c targets 0x100573f4, is taken when v1(=[sym(rl_point)]) < a0(=[sym(rl_end)]) (signed), and falls through when v1(=[sym(rl_point)]) >= a0(=[sym(rl_end)]) (signed).
  The return at 0x1005777c has v0 = 0x0.
- `rl_vi_put` in `usr/gfx/KONA/bin/kpm` at 0x10057790 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10057790-0x10057878 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x100577b8 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x100577bc loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x100577d0 loads 4 bytes from ([sym(__libc_attr)] + (a1 << 0x2)) +0x4.
  The `lw` at 0x100577e8 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x100577ec loads 4 bytes from sym(rl_end) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x100577f8, `lw` at 0x10057818, `lw` at 0x1005782c.
  2 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x100577fc, `lw` at 0x1005781c.
  The `sw` at 0x10057830 stores 4 bytes to sym(rl_point) +0x0.
  The `lw` at 0x1005783c loads 4 bytes from abs 0x1014c5bc.
  The `lw` at 0x10057854 loads 4 bytes from abs 0x1014c530.
  The `jal` at 0x10057840 calls rl_yank [0x1004d6e0] with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10057858 calls rl_backward [0x100490a0] with a0=0x1, a1=?, a2=?, a3=?.
  The `bne` branch at 0x100577d8 targets 0x10057834, is taken when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) != 0, and falls through when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) == 0.
  The `bne` branch at 0x10057808 targets 0x10057834, is taken when v1(=[sym(rl_end)]) < a0(=[sym(rl_point)]+1) (signed), and falls through when v1(=[sym(rl_end)]) >= a0(=[sym(rl_point)]+1) (signed).
  The return at 0x10057870 has v0 = 0x0.
- `rl_vi_check` in `usr/gfx/KONA/bin/kpm` at 0x10057880 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10057880-0x1005790c (140 bytes).
  It occupies 140 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1005789c, `lw` at 0x100578b4, `lw` at 0x100578dc.
  3 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x100578a0, `lw` at 0x100578b8, `lw` at 0x100578e0.
  The `lw` at 0x100578c4 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x100578c8 loads 4 bytes from sym(rl_end) +0x0.
  The `sw` at 0x100578f4 stores 4 bytes to sym(rl_point) +0x0.
  The `beq` branch at 0x100578a4 targets 0x100578f8, is taken when v0(=[sym(rl_point)]) == 0, and falls through when v0(=[sym(rl_point)]) != 0.
  The `bne` branch at 0x100578cc targets 0x100578f8, is taken when a0(=[sym(rl_point)]) != a1(=[sym(rl_end)]), and falls through when a0(=[sym(rl_point)]) == a1(=[sym(rl_end)]).
  The return at 0x10057904 has v0 = 0x0.
- `rl_vi_column` in `usr/gfx/KONA/bin/kpm` at 0x10057910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10057910-0x1005799c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0x10057938 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x1005793c loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x10057958 loads 4 bytes from abs 0x1014c538.
  The `lw` at 0x1005797c loads 4 bytes from abs 0x1014c8a4.
  The `sw` at 0x10057980 stores 4 bytes to sym(rl_point) +0x0.
  The `jal` at 0x1005795c calls rl_end_of_line [0x100491c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10057948 targets 0x1005796c, is taken when at(=[sym(rl_end)]) >= v0(=a0) (signed), and falls through when at(=[sym(rl_end)]) < v0(=a0) (signed).
  The `beq` branch at 0x10057964 targets 0x10057984 and is always taken.
  The return at 0x10057994 has v0 = 0x0.
- `rl_vi_domove` in `usr/gfx/KONA/bin/kpm` at 0x100579a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100579a0-0x10058290 (2288 bytes).
  It occupies 2288 bytes.
  31 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x100579c8, `lw` at 0x10057ce0, `lw` at 0x10057d1c.
  25 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x100579cc, `lw` at 0x10057ce4, `lw` at 0x10057d30.
  11 such `lw` accesses load 4 bytes from abs 0x1014c8a8, including `lw` at 0x100579d8, `lw` at 0x10057b84, `lw` at 0x10057d3c.
  3 such `sw` accesses store 4 bytes to sym(rl_mark) +0x0, including `sw` at 0x100579dc, `sw` at 0x10057b88, `sw` at 0x10058268.
  2 such `lw` accesses load 4 bytes from abs 0x1014c4dc, including `lw` at 0x100579e8, `lw` at 0x10057b04.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x10057a04, `sw` at 0x10057b20.
  The `lw` at 0x10057a1c loads 4 bytes from abs 0x1014c048.
  The `lw` at 0x10057a20 loads 4 bytes from abs 0x1014937c.
  The `lw` at 0x10057a30 loads 4 bytes from abs 0x1014c200.
  3 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x10057a68, `lw` at 0x10057d64, `lw` at 0x10057f18.
  3 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x10057a6c, `lw` at 0x10057d68, `lw` at 0x10057f1c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10057a80, `lw` at 0x10057d7c, `lw` at 0x10057f30.
  4 such `lw` accesses load 4 bytes from abs 0x1014c7c4, including `lw` at 0x10057a98, `lw` at 0x10057ab4, `lw` at 0x10057ad8.
  2 such `lw` accesses load 4 bytes from sym(rl_numeric_arg) +0x0, including `lw` at 0x10057a9c, `lw` at 0x10057adc.
  2 such `sw` accesses store 4 bytes to sym(rl_numeric_arg) +0x0, including `sw` at 0x10057ab8, `sw` at 0x10057af8.
  The `lw` at 0x10057ac4 loads 4 bytes from abs 0x1014c050.
  12 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10057b74, `lw` at 0x10057bec, `lw` at 0x10057c00.
  10 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10057b78, `lw` at 0x10057bf0, `lw` at 0x10057c04.
  The `lw` at 0x10057b94 loads 4 bytes from abs 0x1014c534.
  2 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10057bac, `lw` at 0x10057bdc.
  2 such `sw` accesses store 4 bytes to abs 0x1024ae60, including `sw` at 0x10057bb0, `sw` at 0x10057be0.
  2 such `sw` accesses store 4 bytes to sym(rl_end) +0x0, including `sw` at 0x10057c18, `sw` at 0x10057cac.
  11 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10057c28, `lw` at 0x10057c64, `lw` at 0x10057cc8.
  11 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10057c2c, `lw` at 0x10057c68, `lw` at 0x10057ccc.
  The `sb` at 0x10057c48 stores 1 byte to ([sym(rl_line_buffer)] + [sym(rl_end)]-1) +0x0.
  2 such `sb` accesses store 1 byte to ([sym(rl_end)] + [sym(rl_line_buffer)]) +0x0, including `sb` at 0x10057c70, `sb` at 0x10057cd4.
  The `lw` at 0x10057c80 loads 4 bytes from abs 0x1014c7bc.
  The `lw` at 0x10057c84 loads 4 bytes from sym(_rl_keymap) +0x0.
  The `lw` at 0x10057c90 loads 4 bytes from abs 0x1014c4e0.
  6 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10057d20, `sw` at 0x10057eb0, `sw` at 0x10058038.
  8 such `lw` accesses load 4 bytes from sym(rl_mark) +0x0, including `lw` at 0x10057d40, `lw` at 0x10057e18, `lw` at 0x10057ee0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c260, including `lw` at 0x10057d98, `lw` at 0x10057f4c.
  8 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10057e4c, `lbu` at 0x10057e80, `lbu` at 0x10057fd4.
  The `jal` at 0x100579ec calls rl_read_key [0x10045470] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10057a34 calls strchr with a0=[0x1014937c], a1=ret(rl_read_key), a2=?, a3=?.
  The `jal` at 0x10057ac8 calls (unnamed) [0x10058290] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10057b08 calls rl_read_key [0x10045470] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10057b98 calls rl_beg_of_line [0x10049190] with a0=?, a1=a0 at entry (arg0), a2=?, a3=a0 at entry (arg0), a4=0x64.
  The `jal` at 0x10057c94 calls _rl_dispatch [0x10045630] with a0=?, a1=[sym(_rl_keymap)], a2=([sym(rl_end)] + [sym(rl_line_buffer)]), a3=[sym(rl_line_buffer)], a4=([sym(rl_line_buffer)] + [sym(rl_end)]-1), a5=[sym(rl_end)]-1, a6=sym(rl_end).
  The `jalr` at 0x10057d9c calls toupper with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10057f50 calls toupper with a0=?, a1=?, a2=?, a3=?, a6=a0 at entry (arg0), a7=0x63.
  The `beq` branch at 0x10057a0c targets 0x10057a50, is taken when v0(=ret(rl_read_key)) == 0, and falls through when v0(=ret(rl_read_key)) != 0.
  The `beq` branch at 0x10057a48 targets 0x10057a54 and is always taken.
  The `bne` branch at 0x10057a58 targets 0x10057bd0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x10057a88 targets 0x10057b2c, is taken when (a3(?) & 0x4) == 0, and falls through when (a3(?) & 0x4) != 0.
  The `beq` branch at 0x10057b24 targets 0x10057bd0 and is always taken.
  The `bne` branch at 0x10057b34 targets 0x10057bc0, is taken when a1(=a0) != a2(?), and falls through when a1(=a0) == a2(?).
  The `beq` branch at 0x10057b44 targets 0x10057b6c, is taken when a3(=a0) == a4(=0x64), and falls through when a3(=a0) != a4(=0x64).
  The `beq` branch at 0x10057b54 targets 0x10057b6c, is taken when a5(=a0) == a6(=0x79), and falls through when a5(=a0) != a6(=0x79).
  The `bne` branch at 0x10057b64 targets 0x10057bc0, is taken when a7(=a0) != t0(=0x63), and falls through when a7(=a0) == t0(=0x63).
  The `beq` branch at 0x10057bb8 targets 0x10058278 and is always taken.
  The `beq` branch at 0x10057bc8 targets 0x10058278 and is always taken.
  The `beq` branch at 0x10057cfc targets 0x10057d24, is taken when t1(=[sym(rl_end)]) >= t2(=[sym(rl_point)]) (signed), and falls through when t1(=[sym(rl_end)]) < t2(=[sym(rl_point)]) (signed).
  The `bne` branch at 0x10057d44 targets 0x10057d5c, is taken when at(=[sym(rl_point)]) != v0(=[sym(rl_mark)]), and falls through when at(=[sym(rl_point)]) == v0(=[sym(rl_mark)]).
  The `beq` branch at 0x10057d54 targets 0x10058278 and is always taken.
  The `beq` branch at 0x10057d84 targets 0x10057db8, is taken when (v1(?) & 0x2) == 0, and falls through when (v1(?) & 0x2) != 0.
  The `beq` branch at 0x10057db0 targets 0x10057dc0 and is always taken.
  The `bne` branch at 0x10057dc8 targets 0x10057eb4, is taken when v0(?) != v1(=0x57), and falls through when v0(?) == v1(=0x57).
  The `beq` branch at 0x10057df4 targets 0x10057eb4, is taken when a0(=[sym(rl_point)]) >= a1(=[sym(rl_end)]) (signed), and falls through when a0(=[sym(rl_point)]) < a1(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10057e20 targets 0x10057eb4, is taken when a1(=[sym(rl_mark)]) >= a2(=[sym(rl_point)]) (signed), and falls through when a1(=[sym(rl_mark)]) < a2(=[sym(rl_point)]) (signed).
  The `beq` branch at 0x10057e54 targets 0x10057eb4, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x20), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x20).
  The `beq` branch at 0x10057e88 targets 0x10057eb4, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x9), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x9).
  The `bne` branch at 0x10057ebc targets 0x10057f00, is taken when a6(=a0) != a7(=0x63), and falls through when a6(=a0) == a7(=0x63).
  The `bne` branch at 0x10057ee8 targets 0x10057f00, is taken when t0(=[sym(rl_point)]) < t1(=[sym(rl_mark)]) (signed), and falls through when t0(=[sym(rl_point)]) >= t1(=[sym(rl_mark)]) (signed).
  The `beq` branch at 0x10057ef8 targets 0x10057f04 and is always taken.
  The `beq` branch at 0x10057f08 targets 0x100581f8, is taken when t2(=one of 0x0, 0x1) == 0, and falls through when t2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10057f38 targets 0x10057f6c, is taken when (t3(?) & 0x2) == 0, and falls through when (t3(?) & 0x2) != 0.
  The `beq` branch at 0x10057f64 targets 0x10057f74 and is always taken.
  The `bne` branch at 0x10057f7c targets 0x100581f8, is taken when v0(?) != v1(=0x57), and falls through when v0(?) == v1(=0x57).
  The `beq` branch at 0x10057fa8 targets 0x100580d0, is taken when a0(=[sym(rl_mark)]) >= a1(=[sym(rl_point)]) (signed), and falls through when a0(=[sym(rl_mark)]) < a1(=[sym(rl_point)]) (signed).
  The `beq` branch at 0x10057fdc targets 0x10058018, is taken when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a3(=0x20), and falls through when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a3(=0x20).
  The `bne` branch at 0x10058010 targets 0x100580d0, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x9), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x9).
  The `beq` branch at 0x10058060 targets 0x100580d0, is taken when a4(=[sym(rl_mark)]) >= a5(=[sym(rl_point)]) (signed), and falls through when a4(=[sym(rl_mark)]) < a5(=[sym(rl_point)]) (signed).
  The `beq` branch at 0x10058094 targets 0x10058018, is taken when a7(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t0(=0x20), and falls through when a7(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t0(=0x20).
  The `beq` branch at 0x100580c8 targets 0x10058018, is taken when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t1(=0x9), and falls through when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t1(=0x9).
  The `bne` branch at 0x100580f0 targets 0x10058124, is taken when t1(=[sym(rl_point)]) != t2(=[sym(rl_mark)]), and falls through when t1(=[sym(rl_point)]) == t2(=[sym(rl_mark)]).
  The `beq` branch at 0x1005811c targets 0x100581f8 and is always taken.
  The `bltz` branch at 0x10058134 targets 0x100581f8, is taken when t3(=[sym(rl_point)]) < 0 (signed), and falls through when t3(=[sym(rl_point)]) >= 0 (signed).
  The `beq` branch at 0x10058164 targets 0x100581f8, is taken when t8(=[sym(rl_point)]) >= t9(=[sym(rl_end)]-1) (signed), and falls through when t8(=[sym(rl_point)]) < t9(=[sym(rl_end)]-1) (signed).
  The `beq` branch at 0x10058198 targets 0x100581f8, is taken when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == ra(=0x20), and falls through when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != ra(=0x20).
  The `beq` branch at 0x100581cc targets 0x100581f8, is taken when ra(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == at(=0x9), and falls through when ra(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != at(=0x9).
  The `beq` branch at 0x1005821c targets 0x10058270, is taken when v0(=[sym(rl_mark)]) >= v1(=[sym(rl_point)]) (signed), and falls through when v0(=[sym(rl_mark)]) < v1(=[sym(rl_point)]) (signed).
  The return at 0x10058288 has v0 = one of -0x1, 0x0.
- `rl_vi_delete_to` in `usr/gfx/KONA/bin/kpm` at 0x100584c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100584c0-0x10058690 (464 bytes).
  It occupies 464 bytes.
  The `lw` at 0x100584e8 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x100584ec loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x10058500 loads 4 bytes from ([sym(__libc_attr)] + (a1 << 0x2)) +0x4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c4c8, including `lw` at 0x1005851c, `lw` at 0x10058560.
  2 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10058538, `lw` at 0x10058550.
  The `lw` at 0x1005853c loads 4 bytes from abs 0x1024ae6c.
  The `lw` at 0x10058554 loads 4 bytes from abs 0x1024ae60.
  The `lw` at 0x1005857c loads 4 bytes from abs 0x1014c65c.
  The `lw` at 0x1005859c loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x100585c0 loads 4 bytes from abs 0x1014c054.
  The `lw` at 0x100585d4 loads 4 bytes from abs 0x1014c200.
  The `lw` at 0x100585f4 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x100585f8 loads 4 bytes from sym(rl_end) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a8, including `lw` at 0x10058604, `lw` at 0x10058620, `lw` at 0x10058634.
  3 such `lw` accesses load 4 bytes from sym(rl_mark) +0x0, including `lw` at 0x10058608, `lw` at 0x10058624, `lw` at 0x10058658.
  The `sw` at 0x10058638 stores 4 bytes to sym(rl_mark) +0x0.
  The `lw` at 0x10058644 loads 4 bytes from abs 0x1014c8a4.
  The `lw` at 0x10058648 loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x10058664 loads 4 bytes from abs 0x1014c5a8.
  The `jal` at 0x10058520 calls rl_stuff_char [0x10044e20] with a0=0x24, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058564 calls rl_stuff_char [0x10044e20] with a0=[0x1024ae60], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058580 calls rl_vi_domove [0x100579a0] with a0=a1 at entry (arg1), a1=sp-64, a2=?, a3=?.
  The `jal` at 0x100585a0 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100585d8 calls strchr with a0=0x10093350, a1=?, a2=?, a3=?.
  The `jal` at 0x10058668 calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=[sym(rl_mark)], a2=?, a3=?.
  The `beq` branch at 0x10058508 targets 0x10058530, is taken when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) == 0, and falls through when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x10058528 targets 0x1005856c and is always taken.
  The `beq` branch at 0x10058540 targets 0x1005856c, is taken when ra(=[0x1024ae6c]) == 0, and falls through when ra(=[0x1024ae6c]) != 0.
  The `beq` branch at 0x1005858c targets 0x100585b8, is taken when v0(=ret(rl_vi_domove)) == 0, and falls through when v0(=ret(rl_vi_domove)) != 0.
  The `beq` branch at 0x100585b0 targets 0x10058678 and is always taken.
  The `bne` branch at 0x100585e4 targets 0x1005863c, is taken when v0(=ret(strchr)) != 0, and falls through when v0(=ret(strchr)) == 0.
  The `beq` branch at 0x10058610 targets 0x1005863c, is taken when a1(=[sym(rl_mark)]) >= a2(=[sym(rl_end)]) (signed), and falls through when a1(=[sym(rl_mark)]) < a2(=[sym(rl_end)]) (signed).
  The return at 0x10058688 has v0 = one of -0x1, 0x0.
- `rl_vi_change_to` in `usr/gfx/KONA/bin/kpm` at 0x10058690 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10058690-0x10058984 (756 bytes).
  It occupies 756 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x100586b8, `lw` at 0x10058828.
  2 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x100586bc, `lw` at 0x1005882c.
  The `lw` at 0x100586d0 loads 4 bytes from ([sym(__libc_attr)] + (a1 << 0x2)) +0x4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c4c8, including `lw` at 0x100586ec, `lw` at 0x10058730.
  3 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10058708, `lw` at 0x10058720, `lw` at 0x1005891c.
  The `lw` at 0x1005870c loads 4 bytes from abs 0x1024ae6c.
  The `lw` at 0x10058724 loads 4 bytes from abs 0x1024ae60.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10058744, `lw` at 0x1005889c, `lw` at 0x100588c0.
  3 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10058748, `lw` at 0x100588a0, `lw` at 0x100588d4.
  The `lw` at 0x10058760 loads 4 bytes from abs 0x1014c65c.
  The `lw` at 0x10058780 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x100587a4 loads 4 bytes from abs 0x1014c054.
  The `lw` at 0x100587b8 loads 4 bytes from abs 0x1014c200.
  The `lw` at 0x100587d8 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x100587dc loads 4 bytes from sym(rl_end) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a8, including `lw` at 0x100587e8, `lw` at 0x10058804, `lw` at 0x10058818.
  3 such `lw` accesses load 4 bytes from sym(rl_mark) +0x0, including `lw` at 0x100587ec, `lw` at 0x10058808, `lw` at 0x100588e4.
  The `sw` at 0x1005881c stores 4 bytes to sym(rl_mark) +0x0.
  The `lw` at 0x10058840 loads 4 bytes from ?.
  The `lw` at 0x1005885c loads 4 bytes from abs 0x1014c260.
  The `sw` at 0x100588c4 stores 4 bytes to sym(rl_point) +0x0.
  The `lw` at 0x100588f0 loads 4 bytes from abs 0x1014c5a8.
  The `lw` at 0x10058904 loads 4 bytes from abs 0x1014c574.
  The `sw` at 0x10058920 stores 4 bytes to abs 0x1024ae4c.
  The `lw` at 0x10058934 loads 4 bytes from abs 0x1014c7c8.
  The `lw` at 0x10058938 loads 4 bytes from sym(rl_arg_sign) +0x0.
  The `lw` at 0x10058944 loads 4 bytes from abs 0x1014c61c.
  The `lw` at 0x10058958 loads 4 bytes from abs 0x1014c64c.
  The `jal` at 0x100586f0 calls rl_stuff_char [0x10044e20] with a0=0x24, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058734 calls rl_stuff_char [0x10044e20] with a0=[0x1024ae60], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058764 calls rl_vi_domove [0x100579a0] with a0=a1 at entry (arg1), a1=sp-60, a2=?, a3=?.
  The `jal` at 0x10058784 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100587bc calls strchr with a0=0x10093360, a1=?, a2=?, a3=?.
  The `jalr` at 0x10058860 calls toupper with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100588f4 calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=[sym(rl_mark)], a2=?, a3=?.
  The `jal` at 0x10058908 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10058948 calls _rl_vi_set_last [0x10053a40] with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=[sym(rl_arg_sign)], a3=0x1, a4=0x1024ae4c.
  The `jal` at 0x1005895c calls rl_vi_insertion_mode [0x100570f0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100586d8 targets 0x10058700, is taken when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) == 0, and falls through when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x100586f8 targets 0x1005873c and is always taken.
  The `beq` branch at 0x10058710 targets 0x1005873c, is taken when ra(=[0x1024ae6c]) == 0, and falls through when ra(=[0x1024ae6c]) != 0.
  The `beq` branch at 0x10058770 targets 0x1005879c, is taken when v0(=ret(rl_vi_domove)) == 0, and falls through when v0(=ret(rl_vi_domove)) != 0.
  The `beq` branch at 0x10058794 targets 0x1005896c and is always taken.
  The `bne` branch at 0x100587c8 targets 0x10058820, is taken when v0(=ret(strchr)) != 0, and falls through when v0(=ret(strchr)) == 0.
  The `beq` branch at 0x100587f4 targets 0x10058820, is taken when a1(=[sym(rl_mark)]) >= a2(=[sym(rl_end)]) (signed), and falls through when a1(=[sym(rl_mark)]) < a2(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10058848 targets 0x1005887c, is taken when (a4(?) & 0x2) == 0, and falls through when (a4(?) & 0x2) != 0.
  The `beq` branch at 0x10058874 targets 0x10058884 and is always taken.
  The `bne` branch at 0x1005888c targets 0x100588c8, is taken when v0(?) != v1(=0x57), and falls through when v0(?) == v1(=0x57).
  The `beq` branch at 0x100588ac targets 0x100588c8, is taken when a0(=[sym(rl_point)]) >= a1(?) (signed), and falls through when a0(=[sym(rl_point)]) < a1(?) (signed).
  The return at 0x1005897c has v0 = one of -0x1, 0x0.
- `rl_vi_yank_to` in `usr/gfx/KONA/bin/kpm` at 0x10058990 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10058990-0x10058b80 (496 bytes).
  It occupies 496 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x100589b8, `lw` at 0x10058af8, `lw` at 0x10058b58.
  2 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x100589bc, `lw` at 0x10058afc.
  The `lw` at 0x100589cc loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x100589d0 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x100589e4 loads 4 bytes from ([sym(__libc_attr)] + (a1 << 0x2)) +0x4.
  The `lw` at 0x10058a00 loads 4 bytes from abs 0x1014c4c8.
  The `lw` at 0x10058a1c loads 4 bytes from abs 0x1014c65c.
  The `lw` at 0x10058a3c loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x10058a60 loads 4 bytes from abs 0x1014c054.
  The `lw` at 0x10058a74 loads 4 bytes from abs 0x1014c200.
  The `lw` at 0x10058a94 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x10058a98 loads 4 bytes from sym(rl_end) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a8, including `lw` at 0x10058aa4, `lw` at 0x10058ac0, `lw` at 0x10058ad4.
  3 such `lw` accesses load 4 bytes from sym(rl_mark) +0x0, including `lw` at 0x10058aa8, `lw` at 0x10058ac4, `lw` at 0x10058b0c.
  The `sw` at 0x10058ad8 stores 4 bytes to sym(rl_mark) +0x0.
  The `lw` at 0x10058ae4 loads 4 bytes from abs 0x1014c574.
  The `lw` at 0x10058b18 loads 4 bytes from abs 0x1014c5a8.
  The `lw` at 0x10058b2c loads 4 bytes from abs 0x1014c578.
  The `lw` at 0x10058b40 loads 4 bytes from abs 0x1014c570.
  The `sw` at 0x10058b5c stores 4 bytes to sym(rl_point) +0x0.
  The `jal` at 0x10058a04 calls rl_stuff_char [0x10044e20] with a0=0x24, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058a20 calls rl_vi_domove [0x100579a0] with a0=a1 at entry (arg1), a1=sp-60, a2=?, a3=?.
  The `jal` at 0x10058a40 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10058a78 calls strchr with a0=0x10093350, a1=?, a2=?, a3=?.
  The `jal` at 0x10058ae8 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10058b1c calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=[sym(rl_mark)], a2=?, a3=?.
  The `jal` at 0x10058b30 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10058b44 calls rl_do_undo [0x1004bb40] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100589ec targets 0x10058a0c, is taken when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) == 0, and falls through when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x10058a2c targets 0x10058a58, is taken when v0(=ret(rl_vi_domove)) == 0, and falls through when v0(=ret(rl_vi_domove)) != 0.
  The `beq` branch at 0x10058a50 targets 0x10058b68 and is always taken.
  The `bne` branch at 0x10058a84 targets 0x10058adc, is taken when v0(=ret(strchr)) != 0, and falls through when v0(=ret(strchr)) == 0.
  The `beq` branch at 0x10058ab0 targets 0x10058adc, is taken when a1(=[sym(rl_mark)]) >= a2(=[sym(rl_end)]) (signed), and falls through when a1(=[sym(rl_mark)]) < a2(=[sym(rl_end)]) (signed).
  The return at 0x10058b78 has v0 = one of -0x1, 0x0.
- `rl_vi_delete` in `usr/gfx/KONA/bin/kpm` at 0x10058b80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10058b80-0x10058ccc (332 bytes).
  It occupies 332 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10058ba8, `lw` at 0x10058c00, `lw` at 0x10058c20.
  4 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10058bac, `lw` at 0x10058c04, `lw` at 0x10058c24.
  The `lw` at 0x10058bc0 loads 4 bytes from abs 0x1014c514.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10058be4, `lw` at 0x10058c34, `lw` at 0x10058c5c.
  4 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10058be8, `lw` at 0x10058c38, `lw` at 0x10058c60.
  The `lw` at 0x10058c48 loads 4 bytes from abs 0x1014c5a8.
  The `lw` at 0x10058ca0 loads 4 bytes from abs 0x1014c530.
  The `jal` at 0x10058bc4 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058c4c calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058ca4 calls rl_backward [0x100490a0] with a0=0x1, a1=[sym(rl_point)], a2=[sym(rl_point)], a3=[sym(rl_end)].
  The `bne` branch at 0x10058bb0 targets 0x10058bdc, is taken when at(=[sym(rl_end)]) != 0, and falls through when at(=[sym(rl_end)]) == 0.
  The `beq` branch at 0x10058bd4 targets 0x10058cb4 and is always taken.
  The `bne` branch at 0x10058c10 targets 0x10058c2c, is taken when at(=([sym(rl_point)] + a0)) < v0(=[sym(rl_end)]) (signed), and falls through when at(=([sym(rl_point)] + a0)) >= v0(=[sym(rl_end)]) (signed).
  The `blez` branch at 0x10058c64 targets 0x10058cac, is taken when a1(=[sym(rl_point)]) <= 0 (signed), and falls through when a1(=[sym(rl_point)]) > 0 (signed).
  The `bne` branch at 0x10058c8c targets 0x10058cac, is taken when a2(=[sym(rl_point)]) != a3(=[sym(rl_end)]), and falls through when a2(=[sym(rl_point)]) == a3(=[sym(rl_end)]).
  The return at 0x10058cc4 has v0 = one of -0x1, 0x0.
- `rl_vi_comment` in `usr/gfx/KONA/bin/kpm` at 0x10058cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10058cd0-0x10058db4 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0x10058cf8 loads 4 bytes from abs 0x1014c534.
  2 such `lw` accesses load 4 bytes from abs 0x1014c9a0, including `lw` at 0x10058d0c, `lw` at 0x10058d24.
  2 such `lw` accesses load 4 bytes from sym(rl_vi_comment_begin) +0x0, including `lw` at 0x10058d10, `lw` at 0x10058d28.
  2 such `lw` accesses load 4 bytes from abs 0x1014c524, including `lw` at 0x10058d34, `lw` at 0x10058d60.
  The `lw` at 0x10058d50 loads 4 bytes from abs 0x1014c054.
  The `lw` at 0x10058d74 loads 4 bytes from abs 0x1014c5d0.
  The `lw` at 0x10058d90 loads 4 bytes from abs 0x1014c54c.
  The `jal` at 0x10058cfc calls rl_beg_of_line [0x10049190] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058d38 calls rl_insert_text [0x10048a40] with a0=[sym(rl_vi_comment_begin)], a1=?, a2=?, a3=?.
  The `jal` at 0x10058d64 calls rl_insert_text [0x10048a40] with a0=0x10093370, a1=?, a2=?, a3=?.
  The `jal` at 0x10058d78 calls rl_redisplay [0x1004e7b0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10058d94 calls rl_newline [0x1004a160] with a0=0x1, a1=0x8, a2=?, a3=?.
  The `beq` branch at 0x10058d14 targets 0x10058d48, is taken when at(=[sym(rl_vi_comment_begin)]) == 0, and falls through when at(=[sym(rl_vi_comment_begin)]) != 0.
  The `beq` branch at 0x10058d40 targets 0x10058d6c and is always taken.
  The return at 0x10058dac has v0 = 0x0.
- `rl_vi_first_print` in `usr/gfx/KONA/bin/kpm` at 0x10058dc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10058dc0-0x10058e08 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0x10058de8 loads 4 bytes from abs 0x1014c660.
  The `jal` at 0x10058dec calls rl_back_to_indent [0x10058e10] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10058e00 has v0 = ret(rl_back_to_indent).
- `rl_back_to_indent` in `usr/gfx/KONA/bin/kpm` at 0x10058e10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10058e10-0x10058fa8 (408 bytes).
  It occupies 408 bytes.
  The `lw` at 0x10058e38 loads 4 bytes from abs 0x1014c534.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10058e4c, `lw` at 0x10058e78, `lw` at 0x10058eac.
  7 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10058e50, `lw` at 0x10058e7c, `lw` at 0x10058eb0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10058e5c, `lw` at 0x10058f14.
  2 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10058e60, `lw` at 0x10058f18.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10058e88, `lw` at 0x10058ebc, `lw` at 0x10058f40.
  4 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10058e8c, `lw` at 0x10058ec0, `lw` at 0x10058f44.
  4 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10058e94, `lbu` at 0x10058ec8, `lbu` at 0x10058f4c.
  The `sw` at 0x10058ef8 stores 4 bytes to sym(rl_point) +0x0.
  The `jal` at 0x10058e3c calls rl_beg_of_line [0x10049190] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10058e68 targets 0x10058f90, is taken when at(=[sym(rl_point)]) >= v0(=[sym(rl_end)]) (signed), and falls through when at(=[sym(rl_point)]) < v0(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10058e9c targets 0x10058ed8, is taken when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == v1(=0x20), and falls through when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != v1(=0x20).
  The `bne` branch at 0x10058ed0 targets 0x10058f90, is taken when v1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a0(=0x9), and falls through when v1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a0(=0x9).
  The `beq` branch at 0x10058f20 targets 0x10058f90, is taken when a0(=[sym(rl_point)]) >= a1(=[sym(rl_end)]) (signed), and falls through when a0(=[sym(rl_point)]) < a1(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10058f54 targets 0x10058ed8, is taken when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a3(=0x20), and falls through when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a3(=0x20).
  The `beq` branch at 0x10058f88 targets 0x10058ed8, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x9), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x9).
  The return at 0x10058fa0 has v0 = 0x0.
- `rl_vi_char_search` in `usr/gfx/KONA/bin/kpm` at 0x10058fb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10058fb0-0x100594d8 (1320 bytes).
  It occupies 1320 bytes.
  21 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10059008, `lw` at 0x10059024, `lw` at 0x1005903c.
  2 such `lw` accesses load 4 bytes from abs 0x1024ae74, including `lw` at 0x1005900c, `lw` at 0x10059028.
  5 such `sw` accesses store 4 bytes to abs 0x1024ae78, including `sw` at 0x10059044, `sw` at 0x1005913c, `sw` at 0x1005916c.
  The `lw` at 0x1005905c loads 4 bytes from abs 0x1024ae6c.
  The `lw` at 0x10059074 loads 4 bytes from abs 0x1024ae64.
  2 such `sb` accesses store 1 byte to abs 0x1024ae70, including `sb` at 0x10059084, `sb` at 0x100590c8.
  The `lw` at 0x10059098 loads 4 bytes from abs 0x1014c8b8.
  The `lw` at 0x1005909c loads 4 bytes from sym(rl_instream) +0x0.
  The `lw` at 0x100590a8 loads 4 bytes from abs 0x1014c5c8.
  The `sw` at 0x100590d8 stores 4 bytes to abs 0x1024ae64.
  4 such `sw` accesses store 4 bytes to abs 0x1024ae74, including `sw` at 0x1005914c, `sw` at 0x1005917c, `sw` at 0x100591ac.
  5 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x100591f0, `lw` at 0x100592cc, `lw` at 0x100592e8.
  The `lw` at 0x100591f4 loads 4 bytes from sym(rl_point) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1024ae78, including `lw` at 0x10059224, `lw` at 0x100592ac, `lw` at 0x100593dc.
  4 such `lw` accesses load 4 bytes from abs 0x1014c514, including `lw` at 0x10059244, `lw` at 0x10059328, `lw` at 0x10059374.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10059278, `lw` at 0x100593a8.
  2 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x1005927c, `lw` at 0x100593ac.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10059284, `lbu` at 0x100593b4.
  2 such `lbu` accesses load 1 byte from abs 0x1024ae70, including `lbu` at 0x10059294, `lbu` at 0x100593c4.
  4 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x100592d0, `sw` at 0x100592ec, `sw` at 0x10059400.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10059354, `lw` at 0x1005943c, `lw` at 0x10059460.
  3 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10059358, `lw` at 0x10059440, `lw` at 0x10059464.
  The `jal` at 0x100590ac calls rl_getc [0x1004ddc0] with a0=[sym(rl_instream)], a1=0x2c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10059248 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005932c calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10059378 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10059484 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10058fd8 targets 0x10058ff0, is taken when at(=a1) == v0(=0x3b), and falls through when at(=a1) != v0(=0x3b).
  The `bne` branch at 0x10058fe8 targets 0x10059050, is taken when a0(=a1) != a1(=0x2c), and falls through when a0(=a1) == a1(=0x2c).
  The `bne` branch at 0x10058ff8 targets 0x1005901c, is taken when a2(=a1) != a3(=0x3b), and falls through when a2(=a1) == a3(=0x3b).
  The `beq` branch at 0x10059014 targets 0x10059034 and is always taken.
  The `beq` branch at 0x10059048 targets 0x100591e8 and is always taken.
  The `beq` branch at 0x10059060 targets 0x10059090, is taken when t0(=[0x1024ae6c]) == 0, and falls through when t0(=[0x1024ae6c]) != 0.
  The `beq` branch at 0x10059088 targets 0x100590dc and is always taken.
  The `beq` branch at 0x100590e8 targets 0x10059128, is taken when a4(=a1) == a5(=0x74), and falls through when a4(=a1) != a5(=0x74).
  The `beq` branch at 0x100590f8 targets 0x10059158, is taken when a6(=a1) == a7(=0x54), and falls through when a6(=a1) != a7(=0x54).
  The `beq` branch at 0x10059108 targets 0x10059188, is taken when t0(=a1) == t1(=0x66), and falls through when t0(=a1) != t1(=0x66).
  The `beq` branch at 0x10059118 targets 0x100591b8, is taken when t2(=a1) == t3(=0x46), and falls through when t2(=a1) != t3(=0x46).
  The `beq` branch at 0x10059120 targets 0x100591e8 and is always taken.
  The `beq` branch at 0x10059150 targets 0x100591e8 and is always taken.
  The `beq` branch at 0x10059180 targets 0x100591e8 and is always taken.
  The `beq` branch at 0x100591b0 targets 0x100591e8 and is always taken.
  The `beq` branch at 0x100591e0 targets 0x100591e8 and is always taken.
  The `beq` branch at 0x10059210 targets 0x100594b8, is taken when a6(=a0-1) == a7(=-0x1), and falls through when a6(=a0-1) != a7(=-0x1).
  The `bgez` branch at 0x10059228 targets 0x1005934c, is taken when t2(=[0x1024ae78]) >= 0 (signed), and falls through when t2(=[0x1024ae78]) < 0 (signed).
  The `bne` branch at 0x10059234 targets 0x10059260, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x10059258 targets 0x100594c0 and is always taken.
  The `bne` branch at 0x10059298 targets 0x100592f8, is taken when v0(?) != v1(=[0x1024ae70]:1), and falls through when v0(?) == v1(=[0x1024ae70]:1).
  The `bne` branch at 0x100592b4 targets 0x100592dc, is taken when a0(=[0x1024ae78]) != a1(=-0x1), and falls through when a0(=[0x1024ae78]) == a1(=-0x1).
  The `beq` branch at 0x100592d4 targets 0x100592f0 and is always taken.
  The `beq` branch at 0x100592f0 targets 0x10059314 and is always taken.
  The `bne` branch at 0x1005930c targets 0x1005926c, is taken when a4(?) != a5(=-0x1), and falls through when a4(?) == a5(=-0x1).
  The `bgez` branch at 0x10059318 targets 0x10059344, is taken when a7(?) >= 0 (signed), and falls through when a7(?) < 0 (signed).
  The `beq` branch at 0x1005933c targets 0x100594c0 and is always taken.
  The `beq` branch at 0x10059344 targets 0x1005949c and is always taken.
  The `bne` branch at 0x10059364 targets 0x10059390, is taken when at(?) < v0(=[sym(rl_end)]) (signed), and falls through when at(?) >= v0(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10059388 targets 0x100594c0 and is always taken.
  The `bne` branch at 0x100593c8 targets 0x10059428, is taken when v0(?) != v1(=[0x1024ae70]:1), and falls through when v0(?) == v1(=[0x1024ae70]:1).
  The `bne` branch at 0x100593e4 targets 0x1005940c, is taken when a0(=[0x1024ae78]) != a1(=0x1), and falls through when a0(=[0x1024ae78]) == a1(=0x1).
  The `beq` branch at 0x10059404 targets 0x10059420 and is always taken.
  The `beq` branch at 0x10059420 targets 0x10059454 and is always taken.
  The `bne` branch at 0x1005944c targets 0x1005939c, is taken when a4(?) < a5(=[sym(rl_end)]) (signed), and falls through when a4(?) >= a5(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10059470 targets 0x1005949c, is taken when a7(?) < t0(=[sym(rl_end)]-1) (signed), and falls through when a7(?) >= t0(=[sym(rl_end)]-1) (signed).
  The `beq` branch at 0x10059494 targets 0x100594c0 and is always taken.
  The `bne` branch at 0x100594b0 targets 0x10059218, is taken when at(?) != v0(=-0x1), and falls through when at(?) == v0(=-0x1).
  The return at 0x100594d0 has v0 = one of -0x1, 0x0.
- `rl_vi_match` in `usr/gfx/KONA/bin/kpm` at 0x100594e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100594e0-0x100598f4 (1044 bytes).
  It occupies 1044 bytes.
  9 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10059510, `lw` at 0x10059524, `lw` at 0x10059578.
  7 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10059514, `lw` at 0x10059528, `lw` at 0x1005957c.
  5 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10059534, `lw` at 0x10059588, `lw` at 0x10059624.
  5 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10059538, `lw` at 0x1005958c, `lw` at 0x10059628.
  3 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10059540, `lbu` at 0x10059594, `lbu` at 0x10059630.
  5 such `lw` accesses load 4 bytes from abs 0x1014c664, including `lw` at 0x1005954c, `lw` at 0x100595a0, `lw` at 0x1005963c.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x100595dc, `lw` at 0x10059678, `lw` at 0x100597f4.
  3 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x100595e0, `lw` at 0x1005967c, `lw` at 0x100597f8.
  The `lw` at 0x10059600 loads 4 bytes from abs 0x1014c52c.
  2 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x100596ac, `sw` at 0x100598d0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c514, including `lw` at 0x100596b8, `lw` at 0x100597a4, `lw` at 0x10059898.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10059730, `lbu` at 0x10059824.
  The `jal` at 0x10059550 calls rl_vi_bracktype [0x10059900] with a0=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1, a1=[sym(rl_line_buffer)], a2=0x1, a3=0xfa7e0.
  The `jal` at 0x100595a4 calls rl_vi_bracktype [0x10059900] with a0=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1, a1=[sym(rl_line_buffer)], a2=?, a3=?, a4=ret(rl_vi_bracktype).
  The `jal` at 0x10059604 calls rl_forward [0x10048f80] with a0=0x1, a1=ret(rl_vi_bracktype), a2=?, a3=[sym(rl_end)]-1.
  The `jal` at 0x10059640 calls rl_vi_bracktype [0x10059900] with a0=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1, a1=[sym(rl_line_buffer)], a2=?, a3=?.
  The `jal` at 0x100596bc calls ding [0x100485f0] with a0=?, a1=ret(rl_vi_bracktype), a2=?, a3=ret(rl_vi_bracktype).
  The `jal` at 0x10059740 calls rl_vi_bracktype [0x10059900] with a0=?, a1=[sym(rl_line_buffer)], a2=?, a3=?.
  The `jal` at 0x100597a8 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10059834 calls rl_vi_bracktype [0x10059900] with a0=?, a1=[sym(rl_line_buffer)], a2=?, a3=?.
  The `jal` at 0x1005989c calls ding [0x100485f0] with a0=[sym(rl_end)], a1=?, a2=?, a3=?.
  The `bne` branch at 0x10059568 targets 0x100596d4, is taken when a4(=ret(rl_vi_bracktype)) != 0, and falls through when a4(=ret(rl_vi_bracktype)) == 0.
  The `bne` branch at 0x100595bc targets 0x10059690, is taken when a1(=ret(rl_vi_bracktype)) != 0, and falls through when a1(=ret(rl_vi_bracktype)) == 0.
  The `beq` branch at 0x100595ec targets 0x10059690, is taken when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]-1) (signed), and falls through when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]-1) (signed).
  The `bne` branch at 0x10059658 targets 0x10059690, is taken when a1(=ret(rl_vi_bracktype)) != 0, and falls through when a1(=ret(rl_vi_bracktype)) == 0.
  The `bne` branch at 0x10059688 targets 0x100595f4, is taken when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]-1) (signed), and falls through when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]-1) (signed).
  The `bgtz` branch at 0x10059694 targets 0x100596d4, is taken when a3(=ret(rl_vi_bracktype)) > 0 (signed), and falls through when a3(=ret(rl_vi_bracktype)) <= 0 (signed).
  The `beq` branch at 0x100596cc targets 0x100598dc and is always taken.
  The `bgez` branch at 0x100596ec targets 0x100597d4, is taken when v1(=ret(rl_vi_bracktype)) >= 0 (signed), and falls through when v1(=ret(rl_vi_bracktype)) < 0 (signed).
  The `beq` branch at 0x100596f8 targets 0x100597cc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bltz` branch at 0x10059710 targets 0x1005979c, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bne` branch at 0x1005975c targets 0x10059778, is taken when a2(=ret(rl_vi_bracktype)) != a3(?), and falls through when a2(=ret(rl_vi_bracktype)) == a3(?).
  The `beq` branch at 0x10059770 targets 0x10059794 and is always taken.
  The `bne` branch at 0x10059780 targets 0x10059794, is taken when a5(?) != a6(=ret(rl_vi_bracktype)), and falls through when a5(?) == a6(=ret(rl_vi_bracktype)).
  The `beq` branch at 0x10059794 targets 0x100597c0 and is always taken.
  The `beq` branch at 0x100597b8 targets 0x100598dc and is always taken.
  The `bne` branch at 0x100597c4 targets 0x10059700, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x100597cc targets 0x100598c0 and is always taken.
  The `beq` branch at 0x100597d8 targets 0x100598c0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10059804 targets 0x10059890, is taken when v1(?) >= a0(=[sym(rl_end)]) (signed), and falls through when v1(?) < a0(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10059850 targets 0x1005986c, is taken when a2(=ret(rl_vi_bracktype)) != a3(?), and falls through when a2(=ret(rl_vi_bracktype)) == a3(?).
  The `beq` branch at 0x10059864 targets 0x10059888 and is always taken.
  The `bne` branch at 0x10059874 targets 0x10059888, is taken when a5(?) != a6(=ret(rl_vi_bracktype)), and falls through when a5(?) == a6(=ret(rl_vi_bracktype)).
  The `beq` branch at 0x10059888 targets 0x100598b4 and is always taken.
  The `beq` branch at 0x100598ac targets 0x100598dc and is always taken.
  The `bne` branch at 0x100598b8 targets 0x100597e0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The return at 0x100598ec has v0 = one of -0x1, 0x0.
- `rl_vi_bracktype` in `usr/gfx/KONA/bin/kpm` at 0x10059900 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10059900-0x100599fc (252 bytes).
  It occupies 252 bytes.
  The `beq` branch at 0x10059918 targets 0x10059978, is taken when at(=a0) == v0(=0x28), and falls through when at(=a0) != v0(=0x28).
  The `beq` branch at 0x10059928 targets 0x10059988, is taken when v1(=a0) == a0(=0x29), and falls through when v1(=a0) != a0(=0x29).
  The `beq` branch at 0x10059938 targets 0x10059998, is taken when a1(=a0) == a2(=0x5b), and falls through when a1(=a0) != a2(=0x5b).
  The `beq` branch at 0x10059948 targets 0x100599a8, is taken when a3(=a0) == a4(=0x5d), and falls through when a3(=a0) != a4(=0x5d).
  The `beq` branch at 0x10059958 targets 0x100599b8, is taken when a5(=a0) == a6(=0x7b), and falls through when a5(=a0) != a6(=0x7b).
  The `beq` branch at 0x10059968 targets 0x100599c8, is taken when a7(=a0) == t0(=0x7d), and falls through when a7(=a0) != t0(=0x7d).
  The `beq` branch at 0x10059970 targets 0x100599d8 and is always taken.
  The `beq` branch at 0x10059980 targets 0x100599e8 and is always taken.
  The `beq` branch at 0x10059990 targets 0x100599e8 and is always taken.
  The `beq` branch at 0x100599a0 targets 0x100599e8 and is always taken.
  The `beq` branch at 0x100599b0 targets 0x100599e8 and is always taken.
  The `beq` branch at 0x100599c0 targets 0x100599e8 and is always taken.
  The `beq` branch at 0x100599d0 targets 0x100599e8 and is always taken.
  The `beq` branch at 0x100599e0 targets 0x100599e8 and is always taken.
  The return at 0x100599f4 has v0 = one of 0x1, -0x1, 0x2, -0x2, 0x3, -0x3, 0x0.
- `rl_vi_change_char` in `usr/gfx/KONA/bin/kpm` at 0x10059a00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10059a00-0x10059bf4 (500 bytes).
  It occupies 500 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10059a28, `lw` at 0x10059a40, `lw` at 0x10059a88.
  The `lw` at 0x10059a2c loads 4 bytes from abs 0x1024ae6c.
  The `lw` at 0x10059a44 loads 4 bytes from abs 0x1024ae68.
  The `lw` at 0x10059a5c loads 4 bytes from abs 0x1014c8b8.
  The `lw` at 0x10059a60 loads 4 bytes from sym(rl_instream) +0x0.
  The `lw` at 0x10059a6c loads 4 bytes from abs 0x1014c5c8.
  The `sw` at 0x10059a8c stores 4 bytes to abs 0x1024ae68.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10059ae4, `lw` at 0x10059bb0.
  2 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10059ae8, `lw` at 0x10059bb4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10059af4, `lw` at 0x10059bc0.
  2 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10059af8, `lw` at 0x10059bc4.
  The `lw` at 0x10059b10 loads 4 bytes from abs 0x1014c574.
  The `lw` at 0x10059b2c loads 4 bytes from abs 0x1014c55c.
  The `lw` at 0x10059b48 loads 4 bytes from abs 0x1014c548.
  The `lw` at 0x10059b6c loads 4 bytes from abs 0x1014c530.
  The `lw` at 0x10059b80 loads 4 bytes from abs 0x1014c578.
  The `jal` at 0x10059a70 calls rl_getc [0x1004ddc0] with a0=[sym(rl_instream)], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10059b14 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10059b30 calls rl_delete [0x1004a550] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10059b4c calls rl_insert [0x10049c30] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10059b70 calls rl_backward [0x100490a0] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10059b84 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10059a30 targets 0x10059a54, is taken when at(=[0x1024ae6c]) == 0, and falls through when at(=[0x1024ae6c]) != 0.
  The `beq` branch at 0x10059a4c targets 0x10059a90 and is always taken.
  The `beq` branch at 0x10059a98 targets 0x10059ab0, is taken when a3(?) == a4(=0x1b), and falls through when a3(?) != a4(=0x1b).
  The `bne` branch at 0x10059aa8 targets 0x10059ac0, is taken when a5(?) != a6(=0x3), and falls through when a5(?) == a6(=0x3).
  The `beq` branch at 0x10059ab8 targets 0x10059bdc and is always taken.
  The `beq` branch at 0x10059ad4 targets 0x10059bd4, is taken when t0(=a0-1) == t1(=-0x1), and falls through when t0(=a0-1) != t1(=-0x1).
  The `beq` branch at 0x10059b00 targets 0x10059bd4, is taken when t3(=[sym(rl_point)]) >= t8(=[sym(rl_end)]) (signed), and falls through when t3(=[sym(rl_point)]) < t8(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10059b58 targets 0x10059b78, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x10059ba0 targets 0x10059bd4, is taken when ra(?) == at(=-0x1), and falls through when ra(?) != at(=-0x1).
  The `bne` branch at 0x10059bcc targets 0x10059b08, is taken when v1(=[sym(rl_point)]) < a0(=[sym(rl_end)]) (signed), and falls through when v1(=[sym(rl_point)]) >= a0(=[sym(rl_end)]) (signed).
  The return at 0x10059bec has v0 = one of -0x1, 0x0.
- `rl_vi_subst` in `usr/gfx/KONA/bin/kpm` at 0x10059c00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10059c00-0x10059d48 (328 bytes).
  It occupies 328 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c574, including `lw` at 0x10059c28, `lw` at 0x10059cfc.
  The `lw` at 0x10059c3c loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x10059c40 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x10059c54 loads 4 bytes from ([sym(__libc_attr)] + (a1 << 0x2)) +0x4.
  The `lw` at 0x10059c6c loads 4 bytes from abs 0x1014c534.
  The `lw` at 0x10059c84 loads 4 bytes from abs 0x1014c5b4.
  The `lw` at 0x10059ca8 loads 4 bytes from abs 0x1014c55c.
  The `lw` at 0x10059cbc loads 4 bytes from abs 0x1014c578.
  The `lw` at 0x10059cd8 loads 4 bytes from abs 0x1014c7c8.
  The `lw` at 0x10059cdc loads 4 bytes from sym(rl_arg_sign) +0x0.
  The `lw` at 0x10059ce8 loads 4 bytes from abs 0x1014c61c.
  The `lw` at 0x10059d14 loads 4 bytes from abs 0x1014c04c.
  The `sw` at 0x10059d18 stores 4 bytes to abs 0x1024ae4c.
  The `lw` at 0x10059d24 loads 4 bytes from abs 0x1014c64c.
  The `jal` at 0x10059c2c calls rl_begin_undo_group [0x1004bdb0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10059c70 calls rl_beg_of_line [0x10049190] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10059c88 calls rl_kill_line [0x1004d430] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10059cac calls rl_delete [0x1004a550] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10059cc0 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10059cec calls _rl_vi_set_last [0x10053a40] with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=[sym(rl_arg_sign)], a3=?.
  The `jal` at 0x10059d00 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10059d28 calls rl_vi_insertion_mode [0x100570f0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10059c5c targets 0x10059c98, is taken when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) == 0, and falls through when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x10059c90 targets 0x10059cb4 and is always taken.
  The return at 0x10059d40 has v0 = 0x0.
- `rl_vi_overstrike` in `usr/gfx/KONA/bin/kpm` at 0x10059d50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10059d50-0x10059ed4 (388 bytes).
  It occupies 388 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10059d78, `lw` at 0x10059d94, `lw` at 0x10059dd0.
  The `lw` at 0x10059d7c loads 4 bytes from abs 0x1024ae4c.
  The `sw` at 0x10059d98 stores 4 bytes to abs 0x1024ae4c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c574, including `lw` at 0x10059da4, `lw` at 0x10059df4.
  The `lw` at 0x10059dd4 loads 4 bytes from abs 0x1024ae58.
  The `sw` at 0x10059de8 stores 4 bytes to abs 0x1024ae58.
  The `lw` at 0x10059e08 loads 4 bytes from abs 0x1014c8a4.
  The `lw` at 0x10059e0c loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x10059e18 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x10059e1c loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x10059e3c loads 4 bytes from abs 0x1014c55c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c548, including `lw` at 0x10059e58, `lw` at 0x10059e7c.
  The `lw` at 0x10059e90 loads 4 bytes from abs 0x1014c578.
  The `jal` at 0x10059da8 calls rl_begin_undo_group [0x1004bdb0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10059df8 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10059e40 calls rl_delete [0x1004a550] with a0=0x1, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10059e5c calls rl_insert [0x10049c30] with a0=0x1, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10059e80 calls rl_insert [0x10049c30] with a0=0x1, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10059e94 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10059d80 targets 0x10059db0, is taken when at(=[0x1024ae4c]) != 0, and falls through when at(=[0x1024ae4c]) == 0.
  The `beq` branch at 0x10059dc0 targets 0x10059ebc, is taken when v0(=0x0) >= v1(=a0) (signed), and falls through when v0(=0x0) < v1(=a0) (signed).
  The `beq` branch at 0x10059e24 targets 0x10059e6c, is taken when at(=[sym(rl_point)]) >= v0(=[sym(rl_end)]) (signed), and falls through when at(=[sym(rl_point)]) < v0(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10059e64 targets 0x10059e88 and is always taken.
  The `bne` branch at 0x10059eb4 targets 0x10059dc8, is taken when ra(?) < at(=a0) (signed), and falls through when ra(?) >= at(=a0) (signed).
  The return at 0x10059ecc has v0 = 0x0.
- `rl_vi_overstrike_delete` in `usr/gfx/KONA/bin/kpm` at 0x10059ee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10059ee0-0x1005a070 (400 bytes).
  It occupies 400 bytes.
  6 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10059f1c, `lw` at 0x10059f80, `lw` at 0x10059f94.
  3 such `lw` accesses load 4 bytes from abs 0x1024ae58, including `lw` at 0x10059f20, `lw` at 0x10059f84, `lw` at 0x10059ffc.
  The `lw` at 0x10059f34 loads 4 bytes from abs 0x1014c514.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10059f50, `lw` at 0x10059fa4.
  2 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10059f54, `lw` at 0x10059fa8.
  2 such `lw` accesses load 4 bytes from abs 0x1014c570, including `lw` at 0x10059f64, `lw` at 0x1005a03c.
  The `sw` at 0x10059f98 stores 4 bytes to abs 0x1024ae58.
  The `lw` at 0x10059fc4 loads 4 bytes from abs 0x1014c530.
  The `lw` at 0x1005a014 loads 4 bytes from abs 0x1024ae4c.
  The `lw` at 0x1005a028 loads 4 bytes from abs 0x1014c578.
  The `sw` at 0x1005a054 stores 4 bytes to abs 0x1024ae4c.
  The `jal` at 0x10059f38 calls ding [0x100485f0] with a0=[0x1024ae58], a1=?, a2=?, a3=?.
  The `jal` at 0x10059f68 calls rl_do_undo [0x1004bb40] with a0=[0x1024ae58], a1=?, a2=?, a3=?.
  The `jal` at 0x10059fc8 calls rl_backward [0x100490a0] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1005a02c calls rl_end_undo_group [0x1004be10] with a0=[0x1024ae4c], a1=?, a2=?, a3=?.
  The `jal` at 0x1005a040 calls rl_do_undo [0x1004bb40] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10059f0c targets 0x10059ff0, is taken when at(=0x0) >= v0(=a0) (signed), and falls through when at(=0x0) < v0(=a0) (signed).
  The `bne` branch at 0x10059f24 targets 0x10059f48, is taken when a0(=[0x1024ae58]) != 0, and falls through when a0(=[0x1024ae58]) == 0.
  The `beq` branch at 0x10059f40 targets 0x10059ff0 and is always taken.
  The `beq` branch at 0x10059f70 targets 0x10059f9c, is taken when v0(=ret(rl_do_undo)) == 0, and falls through when v0(=ret(rl_do_undo)) != 0.
  The `bne` branch at 0x10059fb0 targets 0x10059fd0, is taken when v0(=[sym(rl_point)]) != v1(?), and falls through when v0(=[sym(rl_point)]) == v1(?).
  The `bne` branch at 0x10059fe8 targets 0x10059f14, is taken when ra(?) < at(=a0) (signed), and falls through when ra(?) >= at(=a0) (signed).
  The `bne` branch at 0x1005a000 targets 0x1005a058, is taken when v1(=[0x1024ae58]) != 0, and falls through when v1(=[0x1024ae58]) == 0.
  The `beq` branch at 0x1005a018 targets 0x1005a058, is taken when a0(=[0x1024ae4c]) == 0, and falls through when a0(=[0x1024ae4c]) != 0.
  The return at 0x1005a068 has v0 = 0x0.
- `rl_vi_replace` in `usr/gfx/KONA/bin/kpm` at 0x1005a070 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a070-0x1005a264 (500 bytes).
  It occupies 500 bytes.
  10 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x1005a098, `lw` at 0x1005a0a8, `lw` at 0x1005a0d4.
  The `sw` at 0x1005a09c stores 4 bytes to abs 0x1024ae58.
  8 such `lw` accesses load 4 bytes from abs 0x1024ae54, including `lw` at 0x1005a0ac, `lw` at 0x1005a10c, `lw` at 0x1005a154.
  The `lw` at 0x1005a0c0 loads 4 bytes from abs 0x1014c6d4.
  The `sw` at 0x1005a0d8 stores 4 bytes to abs 0x1024ae54.
  The `lw` at 0x1005a0fc loads 4 bytes from abs 0x1014c668.
  The `sw` at 0x1005a11c stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from abs 0x1014c66c, including `lw` at 0x1005a144, `lw` at 0x1005a210.
  The `sw` at 0x1005a15c stores 4 bytes to [0x1024ae54] +0x3fc.
  The `lw` at 0x1005a168 loads 4 bytes from abs 0x1014c654.
  The `sw` at 0x1005a180 stores 4 bytes to [0x1024ae54] +0xdc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c54c, including `lw` at 0x1005a18c, `lw` at 0x1005a1b0.
  The `sw` at 0x1005a1a4 stores 4 bytes to [0x1024ae54] +0x6c.
  The `sw` at 0x1005a1c8 stores 4 bytes to [0x1024ae54] +0x54.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7fc, including `lw` at 0x1005a1d4, `lw` at 0x1005a1ec.
  The `lbu` at 0x1005a1d8 loads 1 byte from sym(vi_insertion_keymap) +0x40.
  The `lw` at 0x1005a1f0 loads 4 bytes from sym(vi_insertion_keymap) +0x44.
  The `lw` at 0x1005a1fc loads 4 bytes from abs 0x1014c558.
  The `sw` at 0x1005a228 stores 4 bytes to [0x1024ae54] +0x44.
  The `lw` at 0x1005a244 loads 4 bytes from abs 0x1014c7bc.
  The `sw` at 0x1005a248 stores 4 bytes to sym(_rl_keymap) +0x0.
  The `jal` at 0x1005a0c4 calls rl_make_bare_keymap [0x10060ce0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1005a0b0 targets 0x1005a22c, is taken when at(=[0x1024ae54]) != 0, and falls through when at(=[0x1024ae54]) == 0.
  The `beq` branch at 0x1005a0ec targets 0x1005a13c and is never taken: its operands are equal constants, so execution always falls through.
  The `bne` branch at 0x1005a134 targets 0x1005a0f4, is taken when a0(?) < 0x7f (signed), and falls through when a0(?) >= 0x7f (signed).
  The `bne` branch at 0x1005a1dc targets 0x1005a22c, is taken when a3(=[sym(vi_insertion_keymap)+64]:1) != 0, and falls through when a3(=[sym(vi_insertion_keymap)+64]:1) == 0.
  The `bne` branch at 0x1005a200 targets 0x1005a22c, is taken when t0(=[sym(vi_insertion_keymap)+68]) != t1(=sym(rl_rubout)), and falls through when t0(=[sym(vi_insertion_keymap)+68]) == t1(=sym(rl_rubout)).
  The return at 0x1005a25c has v0 = 0x0.
- `rl_add_defun` in `usr/gfx/KONA/bin/kpm` at 0x1005a280 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a280-0x1005a304 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x1005a2c4 loads 4 bytes from abs 0x1014c670.
  The `lw` at 0x1005a2e0 loads 4 bytes from abs 0x1014c60c.
  The `jal` at 0x1005a2c8 calls rl_bind_key [0x1005a310] with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005a2e4 calls rl_add_funmap_entry [0x10053420] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x1005a2ac targets 0x1005a2d0, is taken when at(=a2) == v0(=-0x1), and falls through when at(=a2) != v0(=-0x1).
  The return at 0x1005a2fc has v0 = 0x0.
- `rl_bind_key` in `usr/gfx/KONA/bin/kpm` at 0x1005a310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a310-0x1005a478 (360 bytes).
  It occupies 360 bytes.
  The `lw` at 0x1005a370 loads 4 bytes from abs 0x1014c7d8.
  The `lw` at 0x1005a374 loads 4 bytes from sym(_rl_convert_meta_chars_to_ascii) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014c7bc, including `lw` at 0x1005a388, `lw` at 0x1005a3ac, `lw` at 0x1005a420.
  4 such `lw` accesses load 4 bytes from sym(_rl_keymap) +0x0, including `lw` at 0x1005a38c, `lw` at 0x1005a3b0, `lw` at 0x1005a424.
  The `lbu` at 0x1005a394 loads 1 byte from [sym(_rl_keymap)] +0xd8.
  The `lw` at 0x1005a3b8 loads 4 bytes from [sym(_rl_keymap)] +0xdc.
  The `sb` at 0x1005a3e0 stores 1 byte to ?.
  The `sw` at 0x1005a3f8 stores 4 bytes to ?.
  The `sb` at 0x1005a434 stores 1 byte to ([sym(_rl_keymap)] + (a0 << 0x3)) +0x0.
  The `sw` at 0x1005a458 stores 4 bytes to ([sym(_rl_keymap)] + (a0 << 0x3)) +0x4.
  The `bgez` branch at 0x1005a330 targets 0x1005a348, is taken when v0(=a0) >= 0 (signed), and falls through when v0(=a0) < 0 (signed).
  The `beq` branch at 0x1005a340 targets 0x1005a464 and is always taken.
  The `bne` branch at 0x1005a350 targets 0x1005a418, is taken when a1(=a0) < 0x80 (signed), and falls through when a1(=a0) >= 0x80 (signed).
  The `beq` branch at 0x1005a360 targets 0x1005a418, is taken when a2(=a0) >= 0x100 (signed), and falls through when a2(=a0) < 0x100 (signed).
  The `beq` branch at 0x1005a378 targets 0x1005a418, is taken when a3(=[sym(_rl_convert_meta_chars_to_ascii)]) == 0, and falls through when a3(=[sym(_rl_convert_meta_chars_to_ascii)]) != 0.
  The `bne` branch at 0x1005a39c targets 0x1005a408, is taken when a4(=[[sym(_rl_keymap)]+216]:1) != a5(=0x1), and falls through when a4(=[[sym(_rl_keymap)]+216]:1) == a5(=0x1).
  The `beq` branch at 0x1005a400 targets 0x1005a464 and is always taken.
  The `beq` branch at 0x1005a410 targets 0x1005a464 and is always taken.
  The return at 0x1005a470 has v0 = one of a0, 0x0.
- `rl_bind_key_in_map` in `usr/gfx/KONA/bin/kpm` at 0x1005a480 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a480-0x1005a518 (152 bytes).
  It occupies 152 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c7bc, including `lw` at 0x1005a4ac, `lw` at 0x1005a4c4, `lw` at 0x1005a4f8.
  The `lw` at 0x1005a4b0 loads 4 bytes from sym(_rl_keymap) +0x0.
  2 such `sw` accesses store 4 bytes to sym(_rl_keymap) +0x0, including `sw` at 0x1005a4c8, `sw` at 0x1005a4fc.
  The `lw` at 0x1005a4dc loads 4 bytes from abs 0x1014c670.
  The `jal` at 0x1005a4e0 calls rl_bind_key [0x1005a310] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1005a510 has v0 = ret(rl_bind_key).
- `rl_unbind_key` in `usr/gfx/KONA/bin/kpm` at 0x1005a520 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a520-0x1005a56c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x1005a54c loads 4 bytes from abs 0x1014c670.
  The `jal` at 0x1005a550 calls rl_bind_key [0x1005a310] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1005a564 has v0 = ret(rl_bind_key).
- `rl_unbind_key_in_map` in `usr/gfx/KONA/bin/kpm` at 0x1005a570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a570-0x1005a5c4 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x1005a5a4 loads 4 bytes from abs 0x1014c674.
  The `jal` at 0x1005a5a8 calls rl_bind_key_in_map [0x1005a480] with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0x1005a5bc has v0 = ret(rl_bind_key_in_map).
- `rl_set_key` in `usr/gfx/KONA/bin/kpm` at 0x1005a5d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a5d0-0x1005a62c (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x1005a60c loads 4 bytes from abs 0x1014c680.
  The `jal` at 0x1005a610 calls rl_generic_bind [0x1005a730] with a0=0x0, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0x1005a624 has v0 = ret(rl_generic_bind).
- `rl_macro_bind` in `usr/gfx/KONA/bin/kpm` at 0x1005a630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a630-0x1005a728 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x1005a660 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1005a680 loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x1005a6a4 loads 4 bytes from abs 0x1014c684.
  The `lw` at 0x1005a6c8 loads 4 bytes from abs 0x1014c114.
  The `lw` at 0x1005a6fc loads 4 bytes from abs 0x1014c680.
  The `jalr` at 0x1005a664 calls strlen with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005a684 calls xmalloc [0x10061950] with a0=(ret(strlen) + ret(strlen))+1, a1=?, a2=?, a3=?.
  The `jal` at 0x1005a6a8 calls rl_translate_keyseq [0x1005aa90] with a0=a1 at entry (arg1), a1=ret(xmalloc), a2=sp-76, a3=?.
  The `jalr` at 0x1005a6cc calls free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005a700 calls rl_generic_bind [0x1005a730] with a0=0x2, a1=a0 at entry (arg0), a2=?, a3=a2 at entry (arg2).
  The `beq` branch at 0x1005a6b4 targets 0x1005a6e4, is taken when v0(=ret(rl_translate_keyseq)) == 0, and falls through when v0(=ret(rl_translate_keyseq)) != 0.
  The `beq` branch at 0x1005a6dc targets 0x1005a710 and is always taken.
  The return at 0x1005a720 has v0 = one of -0x1, 0x0.
- `rl_generic_bind` in `usr/gfx/KONA/bin/kpm` at 0x1005a730 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a730-0x1005aa8c (860 bytes).
  It occupies 860 bytes.
  The `lbu` at 0x1005a768 loads 1 byte from a1 (arg1 at entry) +0x0.
  5 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1005a790, `lw` at 0x1005a820, `lw` at 0x1005a94c.
  The `lw` at 0x1005a7b8 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1005a7d8 loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x1005a7fc loads 4 bytes from abs 0x1014c684.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1005a860, `lbu` at 0x1005a8b8, `lbu` at 0x1005a900.
  The `lw` at 0x1005a870 loads 4 bytes from abs 0x1014c7d8.
  The `lw` at 0x1005a874 loads 4 bytes from sym(_rl_convert_meta_chars_to_ascii) +0x0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005a8d0, `lw` at 0x1005a940, `lw` at 0x1005a9ac.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x1005a96c, `sb` at 0x1005aa30.
  The `lw` at 0x1005a978 loads 4 bytes from abs 0x1014c6d4.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1005a998, `sw` at 0x1005aa18.
  The `jalr` at 0x1005a794 calls free with a0=a2 at entry (arg2), a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1005a7bc calls strlen with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005a7dc calls xmalloc [0x10061950] with a0=(ret(strlen) + ret(strlen))+1, a1=?, a2=?, a3=?.
  The `jal` at 0x1005a800 calls rl_translate_keyseq [0x1005aa90] with a0=a1 at entry (arg1), a1=ret(xmalloc), a2=sp-76, a3=?.
  The `jalr` at 0x1005a824 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005a950 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005a97c calls rl_make_bare_keymap [0x10060ce0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005a9fc calls free with a0=?, a1=?, a2=?, a3=?, a4=0x2.
  The `jalr` at 0x1005aa64 calls free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005a75c targets 0x1005a774, is taken when at(=a1) == 0, and falls through when at(=a1) != 0.
  The `bne` branch at 0x1005a76c targets 0x1005a7ac, is taken when v1(=[a1]:1) != 0, and falls through when v1(=[a1]:1) == 0.
  The `bne` branch at 0x1005a77c targets 0x1005a79c, is taken when a0 != a1(=0x2), and falls through when a0 == a1(=0x2).
  The `beq` branch at 0x1005a7a4 targets 0x1005aa74 and is always taken.
  The `beq` branch at 0x1005a80c targets 0x1005a83c, is taken when v0(=ret(rl_translate_keyseq)) == 0, and falls through when v0(=ret(rl_translate_keyseq)) != 0.
  The `beq` branch at 0x1005a834 targets 0x1005aa74 and is always taken.
  The `beq` branch at 0x1005a84c targets 0x1005aa54, is taken when at(=0x0) >= v0(?) (signed), and falls through when at(=0x0) < v0(?) (signed).
  The `beq` branch at 0x1005a878 targets 0x1005a8d8, is taken when v1(=[sym(_rl_convert_meta_chars_to_ascii)]) == 0, and falls through when v1(=[sym(_rl_convert_meta_chars_to_ascii)]) != 0.
  The `bne` branch at 0x1005a888 targets 0x1005a8d8, is taken when a2(?) < 0x80 (signed), and falls through when a2(?) >= 0x80 (signed).
  The `beq` branch at 0x1005a898 targets 0x1005a8d8, is taken when a3(?) >= 0x100 (signed), and falls through when a3(?) < 0x100 (signed).
  The `bne` branch at 0x1005a8c0 targets 0x1005a8d8, is taken when a4(?) != a5(=0x1), and falls through when a4(?) == a5(=0x1).
  The `beq` branch at 0x1005a8e8 targets 0x1005a9bc, is taken when t0(?) >= t1(?) (signed), and falls through when t0(?) < t1(?) (signed).
  The `beq` branch at 0x1005a908 targets 0x1005a99c, is taken when t1(?) == t2(=0x1), and falls through when t1(?) != t2(=0x1).
  The `bne` branch at 0x1005a928 targets 0x1005a958, is taken when t3(?) != t8(=0x2), and falls through when t3(?) == t8(=0x2).
  The `beq` branch at 0x1005a9b4 targets 0x1005aa34 and is always taken.
  The `bne` branch at 0x1005a9d4 targets 0x1005aa04, is taken when a3(?) != a4(=0x2), and falls through when a3(?) == a4(=0x2).
  The `bne` branch at 0x1005aa4c targets 0x1005a854, is taken when t0(?) < t1(?) (signed), and falls through when t0(?) >= t1(?) (signed).
  The return at 0x1005aa84 has v0 = one of -0x1, 0x0.
- `rl_translate_keyseq` in `usr/gfx/KONA/bin/kpm` at 0x1005aa90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005aa90-0x1005aee8 (1112 bytes).
  It occupies 1112 bytes.
  The `lbu` at 0x1005aac8 loads 1 byte from a0 (arg0 at entry) +0x0.
  11 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1005ab04, `lbu` at 0x1005ab48, `lbu` at 0x1005abfc.
  The `lw` at 0x1005ab7c loads 4 bytes from abs 0x1014c058.
  The `lw` at 0x1005ab8c loads 4 bytes from abs 0x1014c170.
  8 such `sb` accesses store 1 byte to ?, including `sb` at 0x1005abc4, `sb` at 0x1005ac80, `sb` at 0x1005ad18.
  2 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x1005abe8, `lw` at 0x1005ad8c.
  2 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x1005abec, `lw` at 0x1005ad90.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005ac0c, `lw` at 0x1005adb0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c260, including `lw` at 0x1005ac34, `lw` at 0x1005add8.
  The `sw` at 0x1005aebc stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0x1005ab90 calls strncmp with a0=?, a1=0x100933a8, a2=0x5, a3=?, a4=a0 at entry (arg0), a7=0x43.
  The `jalr` at 0x1005ac38 calls toupper with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a4=a0 at entry (arg0), a5=0x1b.
  The `jalr` at 0x1005addc calls toupper with a0=?, a1=a0 at entry (arg0), a2=?, a3=0x3f.
  The `beq` branch at 0x1005aad4 targets 0x1005aeb4, is taken when at(=[a0]:1) == 0, and falls through when at(=[a0]:1) != 0.
  The `bne` branch at 0x1005aae4 targets 0x1005ae64, is taken when a0(?) != a1(=0x5c), and falls through when a0(?) == a1(=0x5c).
  The `beq` branch at 0x1005ab10 targets 0x1005aeb4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1005ab20 targets 0x1005ab38, is taken when a6(?) == a7(=0x43), and falls through when a6(?) != a7(=0x43).
  The `bne` branch at 0x1005ab30 targets 0x1005ab58, is taken when t0(?) != t1(=0x4d), and falls through when t0(?) == t1(=0x4d).
  The `beq` branch at 0x1005ab50 targets 0x1005ab68, is taken when t2(?) == t3(=0x2d), and falls through when t2(?) != t3(=0x2d).
  The `bne` branch at 0x1005ab60 targets 0x1005ae64, is taken when t8(?) != t9(=0x65), and falls through when t8(?) == t9(=0x65).
  The `bne` branch at 0x1005ab9c targets 0x1005acb0, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x1005ac14 targets 0x1005ac54, is taken when (a2(?) & 0x2) == 0, and falls through when (a2(?) & 0x2) != 0.
  The `beq` branch at 0x1005ac4c targets 0x1005ac68 and is always taken.
  The `bne` branch at 0x1005ac94 targets 0x1005aca8, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x1005aca8 targets 0x1005ae88 and is always taken.
  The `beq` branch at 0x1005acbc targets 0x1005acec, is taken when t1(?) == t2(=0x4d), and falls through when t1(?) != t2(=0x4d).
  The `beq` branch at 0x1005accc targets 0x1005ad24, is taken when t3(?) == t8(=0x43), and falls through when t3(?) != t8(=0x43).
  The `beq` branch at 0x1005acdc targets 0x1005ae30, is taken when t9(?) == ra(=0x65), and falls through when t9(?) != ra(=0x65).
  The `beq` branch at 0x1005ace4 targets 0x1005ae5c and is always taken.
  The `beq` branch at 0x1005ad1c targets 0x1005ae5c and is always taken.
  The `bne` branch at 0x1005ad44 targets 0x1005ad78, is taken when a2(?) != a3(=0x3f), and falls through when a2(?) == a3(=0x3f).
  The `beq` branch at 0x1005ad70 targets 0x1005ae28 and is always taken.
  The `beq` branch at 0x1005adb8 targets 0x1005adf8, is taken when (t1(?) & 0x2) == 0, and falls through when (t1(?) & 0x2) != 0.
  The `beq` branch at 0x1005adf0 targets 0x1005ae0c and is always taken.
  The `beq` branch at 0x1005ae28 targets 0x1005ae5c and is always taken.
  The `beq` branch at 0x1005ae54 targets 0x1005ae5c and is always taken.
  The `beq` branch at 0x1005ae5c targets 0x1005ae88 and is always taken.
  The `bne` branch at 0x1005aeac targets 0x1005aadc, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The return at 0x1005aee0 has v0 = 0x0.
- `rl_named_function` in `usr/gfx/KONA/bin/kpm` at 0x1005aef0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005aef0-0x1005b014 (292 bytes).
  It occupies 292 bytes.
  The `lw` at 0x1005af14 loads 4 bytes from abs 0x1014c610.
  4 such `lw` accesses load 4 bytes from abs 0x1014c998, including `lw` at 0x1005af2c, `lw` at 0x1005af54, `lw` at 0x1005af98.
  4 such `lw` accesses load 4 bytes from sym(funmap) +0x0, including `lw` at 0x1005af30, `lw` at 0x1005af58, `lw` at 0x1005af9c.
  The `lw` at 0x1005af40 loads 4 bytes from [sym(funmap)] +0x0.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005af68, `lw` at 0x1005af6c, `lw` at 0x1005afac.
  The `lw` at 0x1005af7c loads 4 bytes from abs 0x1014c274.
  The `jal` at 0x1005af18 calls rl_initialize_funmap [0x10053670] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1005af80 calls strcasecmp with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x1005af44 targets 0x1005aff4, is taken when at(=[[sym(funmap)]]) == 0, and falls through when at(=[[sym(funmap)]]) != 0.
  The `bne` branch at 0x1005af88 targets 0x1005afc0, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005afb8 targets 0x1005affc and is always taken.
  The `bne` branch at 0x1005afec targets 0x1005af4c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The return at 0x1005b00c has v0 = one of ?, 0x0.
- `rl_function_of_keyseq` in `usr/gfx/KONA/bin/kpm` at 0x1005b020 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005b020-0x1005b26c (588 bytes).
  It occupies 588 bytes.
  The `lw` at 0x1005b054 loads 4 bytes from abs 0x1014c7bc.
  The `lw` at 0x1005b058 loads 4 bytes from sym(_rl_keymap) +0x0.
  The `lbu` at 0x1005b07c loads 1 byte from a0 (arg0 at entry) +0x0.
  7 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1005b094, `lbu` at 0x1005b0dc, `lbu` at 0x1005b100.
  The `lw` at 0x1005b0c4 loads 4 bytes from abs 0x1014c7d8.
  The `lw` at 0x1005b0c8 loads 4 bytes from sym(_rl_convert_meta_chars_to_ascii) +0x0.
  3 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x1005b108, `sw` at 0x1005b194, `sw` at 0x1005b1fc.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005b114, `lw` at 0x1005b12c, `lw` at 0x1005b1a8.
  The `bne` branch at 0x1005b044 targets 0x1005b060, is taken when v0(=a1) != 0, and falls through when v0(=a1) == 0.
  The `beq` branch at 0x1005b068 targets 0x1005b250, is taken when a1(=a0) == 0, and falls through when a1(=a0) != 0.
  The `beq` branch at 0x1005b080 targets 0x1005b250, is taken when a2(=[a0]:1) == 0, and falls through when a2(=[a0]:1) != 0.
  The `bne` branch at 0x1005b0a4 targets 0x1005b144, is taken when a4(?) < 0x80 (signed), and falls through when a4(?) >= 0x80 (signed).
  The `beq` branch at 0x1005b0b4 targets 0x1005b144, is taken when a7(?) >= 0x100 (signed), and falls through when a7(?) < 0x100 (signed).
  The `beq` branch at 0x1005b0cc targets 0x1005b144, is taken when t0(=[sym(_rl_convert_meta_chars_to_ascii)]) == 0, and falls through when t0(=[sym(_rl_convert_meta_chars_to_ascii)]) != 0.
  The `beq` branch at 0x1005b0e4 targets 0x1005b124, is taken when t1(?) == t2(=0x1), and falls through when t1(?) != t2(=0x1).
  The `beq` branch at 0x1005b0f0 targets 0x1005b10c, is taken when t2(=a2) == 0, and falls through when t2(=a2) != 0.
  The `beq` branch at 0x1005b11c targets 0x1005b258 and is always taken.
  The `bne` branch at 0x1005b15c targets 0x1005b1d8, is taken when v1(?) != a0(=0x1), and falls through when v1(?) == a0(=0x1).
  The `bne` branch at 0x1005b178 targets 0x1005b1b8, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x1005b184 targets 0x1005b198, is taken when a3(=a2) == 0, and falls through when a3(=a2) != 0.
  The `beq` branch at 0x1005b1b0 targets 0x1005b258 and is always taken.
  The `beq` branch at 0x1005b1d0 targets 0x1005b220 and is always taken.
  The `beq` branch at 0x1005b1dc targets 0x1005b200, is taken when t2(=a2) == 0, and falls through when t2(=a2) != 0.
  The `beq` branch at 0x1005b218 targets 0x1005b258 and is always taken.
  The `beq` branch at 0x1005b230 targets 0x1005b250, is taken when v0(=a0) == 0, and falls through when v0(=a0) != 0.
  The `bne` branch at 0x1005b248 targets 0x1005b088, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The return at 0x1005b264 has v0 = one of ?, 0x0.
- `rl_parse_and_bind` in `usr/gfx/KONA/bin/kpm` at 0x1005c250 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005c250-0x1005cfac (3420 bytes).
  It occupies 3420 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0x1005c27c, `lbu` at 0x1005c290.
  61 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1005c2bc, `lbu` at 0x1005c2d0, `lbu` at 0x1005c2f0.
  The `lw` at 0x1005c340 loads 4 bytes from abs 0x1014c064.
  The `lw` at 0x1005c360 loads 4 bytes from abs 0x1014c8f8.
  The `lbu` at 0x1005c364 loads 1 byte from sym(_rl_parsing_conditionalized_out) +0x0.
  2 such `lbu` accesses load 1 byte from table(0x1) +0x0, including `lbu` at 0x1005c3ac, `lbu` at 0x1005ca94.
  9 such `sb` accesses store 1 byte to ?, including `sb` at 0x1005c564, `sb` at 0x1005c590, `sb` at 0x1005c6f8.
  2 such `lw` accesses load 4 bytes from abs 0x1014c058, including `lw` at 0x1005c5a0, `lw` at 0x1005cee0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c274, including `lw` at 0x1005c5b0, `lw` at 0x1005cef0.
  The `lw` at 0x1005c788 loads 4 bytes from abs 0x1014c698.
  3 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x1005ca4c, `lw` at 0x1005cbc0, `lw` at 0x1005ce38.
  The `lw` at 0x1005ca68 loads 4 bytes from abs 0x1014c6e4.
  4 such `lw` accesses load 4 bytes from abs 0x1014c7bc, including `lw` at 0x1005cc2c, `lw` at 0x1005cc7c, `lw` at 0x1005ceb0.
  4 such `lw` accesses load 4 bytes from sym(_rl_keymap) +0x0, including `lw` at 0x1005cc30, `lw` at 0x1005cc80, `lw` at 0x1005ceb4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c67c, including `lw` at 0x1005cc3c, `lw` at 0x1005cec0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c688, including `lw` at 0x1005cc5c, `lw` at 0x1005cf60.
  The `lw` at 0x1005cc8c loads 4 bytes from abs 0x1014c678.
  The `lw` at 0x1005cca4 loads 4 bytes from abs 0x1014c114.
  The `lw` at 0x1005cccc loads 4 bytes from abs 0x1014c1e4.
  The `lw` at 0x1005cd14 loads 4 bytes from abs 0x1014c068.
  The `lw` at 0x1005cd34 loads 4 bytes from abs 0x1014c7e4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c06c, including `lw` at 0x1005cd40, `lw` at 0x1005cde0.
  The `lw` at 0x1005cd60 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1005cd64 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1005cd78 loads 4 bytes from ?.
  The `lw` at 0x1005cd94 loads 4 bytes from abs 0x1014c260.
  The `lw` at 0x1005cdd4 loads 4 bytes from abs 0x1014c7e8.
  The `lw` at 0x1005cf24 loads 4 bytes from abs 0x1014c7f4.
  The `lw` at 0x1005cf40 loads 4 bytes from abs 0x1014c680.
  The `lw` at 0x1005cf80 loads 4 bytes from abs 0x1014c670.
  The `jal` at 0x1005c344 calls (unnamed) [0x1005bf10] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005c5b4 calls strcasecmp with a0=?, a1=0x100933e4, a2=?, a3=one of 0x0, 0x1, a7=one of 0x0, 0x1.
  The `jal` at 0x1005c78c calls rl_variable_bind [0x1005cfb0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005ca50 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005ca6c calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005cbc4 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005cc40 calls rl_macro_bind [0x1005a630] with a0=?, a1=?, a2=[sym(_rl_keymap)], a3=?.
  The `jal` at 0x1005cc60 calls rl_named_function [0x1005aef0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005cc90 calls rl_set_key [0x1005a5d0] with a0=?, a1=ret(rl_named_function), a2=[sym(_rl_keymap)], a3=?.
  The `jalr` at 0x1005cca8 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005ccd0 calls strrchr with a0=?, a1=0x2d, a2=?, a3=?.
  The `jal` at 0x1005cd18 calls (unnamed) [0x1005d740] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005cd44 calls (unnamed) [0x1005eae0] with a0=?, a1=sym(possible_control_prefixes), a2=?, a3=?.
  The `jalr` at 0x1005cd98 calls toupper with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005cde4 calls (unnamed) [0x1005eae0] with a0=?, a1=sym(possible_meta_prefixes), a2=?, a3=?.
  The `jalr` at 0x1005ce3c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005cec4 calls rl_macro_bind [0x1005a630] with a0=sp-80, a1=?, a2=[sym(_rl_keymap)], a3=?.
  The `jalr` at 0x1005cef4 calls strcasecmp with a0=?, a1=0x100933e8, a2=?, a3=?, a5=0x22.
  The `jal` at 0x1005cf44 calls rl_generic_bind [0x1005a730] with a0=0x1, a1=sp-78, a2=sym(emacs_meta_keymap), a3=[sym(_rl_keymap)].
  The `jal` at 0x1005cf64 calls rl_named_function [0x1005aef0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005cf84 calls rl_bind_key [0x1005a310] with a0=?, a1=ret(rl_named_function), a2=?, a3=?.
  The `beq` branch at 0x1005c270 targets 0x1005c2e0, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1005c284 targets 0x1005c2a0, is taken when v1(=[a0]:1) == a0(=0x20), and falls through when v1(=[a0]:1) != a0(=0x20).
  The `bne` branch at 0x1005c298 targets 0x1005c2e0, is taken when a0(=[a0]:1) != a1(=0x9), and falls through when a0(=[a0]:1) == a1(=0x9).
  The `beq` branch at 0x1005c2b0 targets 0x1005c2e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1005c2c4 targets 0x1005c2a0, is taken when a3(?) == a4(=0x20), and falls through when a3(?) != a4(=0x20).
  The `beq` branch at 0x1005c2d8 targets 0x1005c2a0, is taken when a4(?) == a5(=0x9), and falls through when a4(?) != a5(=0x9).
  The `beq` branch at 0x1005c2e4 targets 0x1005c310, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1005c2f4 targets 0x1005c310, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1005c308 targets 0x1005c31c, is taken when a7(?) != t0(=0x23), and falls through when a7(?) == t0(=0x23).
  The `beq` branch at 0x1005c314 targets 0x1005cf94 and is always taken.
  The `bne` branch at 0x1005c328 targets 0x1005c358, is taken when t0(?) != t1(=0x24), and falls through when t0(?) == t1(=0x24).
  The `beq` branch at 0x1005c350 targets 0x1005cf94 and is always taken.
  The `beq` branch at 0x1005c368 targets 0x1005c37c, is taken when a1(=[sym(_rl_parsing_conditionalized_out)]:1) == 0, and falls through when a1(=[sym(_rl_parsing_conditionalized_out)]:1) != 0.
  The `beq` branch at 0x1005c374 targets 0x1005cf94 and is always taken.
  The `bne` branch at 0x1005c38c targets 0x1005c438, is taken when a2(?) != a3(=0x22), and falls through when a2(?) == a3(=0x22).
  The `beq` branch at 0x1005c3b8 targets 0x1005c438, is taken when a3(=entry(0x1)) == 0, and falls through when a3(=entry(0x1)) != 0.
  The `beq` branch at 0x1005c3c4 targets 0x1005c3d8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1005c3d0 targets 0x1005c40c and is always taken.
  The `bne` branch at 0x1005c3e0 targets 0x1005c3fc, is taken when a7(?) != t0(=0x5c), and falls through when a7(?) == t0(=0x5c).
  The `beq` branch at 0x1005c3f4 targets 0x1005c40c and is always taken.
  The `beq` branch at 0x1005c404 targets 0x1005c438, is taken when t2(?) == t3(=0x22), and falls through when t2(?) != t3(=0x22).
  The `bne` branch at 0x1005c430 targets 0x1005c3c0, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x1005c450 targets 0x1005c4e4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1005c460 targets 0x1005c4e4, is taken when v1(?) == a0(=0x3a), and falls through when v1(?) != a0(=0x3a).
  The `beq` branch at 0x1005c470 targets 0x1005c4e4, is taken when a1(?) == a2(=0x20), and falls through when a1(?) != a2(=0x20).
  The `beq` branch at 0x1005c480 targets 0x1005c4e4, is taken when a3(?) == a4(=0x9), and falls through when a3(?) != a4(=0x9).
  The `beq` branch at 0x1005c4ac targets 0x1005c4e4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1005c4bc targets 0x1005c4e4, is taken when t0(?) == t1(=0x3a), and falls through when t0(?) != t1(=0x3a).
  The `beq` branch at 0x1005c4cc targets 0x1005c4e4, is taken when t2(?) == t3(=0x20), and falls through when t2(?) != t3(=0x20).
  The `bne` branch at 0x1005c4dc targets 0x1005c488, is taken when t8(?) != t9(=0x9), and falls through when t8(?) == t9(=0x9).
  The `bne` branch at 0x1005c4ec targets 0x1005c524, is taken when ra(?) != at(=0x3a), and falls through when ra(?) == at(=0x3a).
  The `bne` branch at 0x1005c50c targets 0x1005c524, is taken when v0(?) != v1(=0x3d), and falls through when v0(?) == v1(=0x3d).
  The `beq` branch at 0x1005c51c targets 0x1005c528 and is always taken.
  The `beq` branch at 0x1005c540 targets 0x1005c568, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1005c56c targets 0x1005c594, is taken when a7(=one of 0x0, 0x1) == 0, and falls through when a7(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x1005c5c0 targets 0x1005c7a0, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005c5e0 targets 0x1005c654, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1005c5f4 targets 0x1005c610, is taken when a5(?) == a6(=0x20), and falls through when a5(?) != a6(=0x20).
  The `bne` branch at 0x1005c608 targets 0x1005c654, is taken when a6(?) != a7(=0x9), and falls through when a6(?) == a7(=0x9).
  The `beq` branch at 0x1005c624 targets 0x1005c654, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1005c638 targets 0x1005c610, is taken when t1(?) == t2(=0x20), and falls through when t1(?) != t2(=0x20).
  The `beq` branch at 0x1005c64c targets 0x1005c610, is taken when t2(?) == t3(=0x9), and falls through when t2(?) != t3(=0x9).
  The `beq` branch at 0x1005c664 targets 0x1005c6d8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x1005c678 targets 0x1005c6d8, is taken when t9(?) == ra(=0x20), and falls through when t9(?) != ra(=0x20).
  The `beq` branch at 0x1005c68c targets 0x1005c6d8, is taken when ra(?) == at(=0x9), and falls through when ra(?) != at(=0x9).
  The `beq` branch at 0x1005c6a8 targets 0x1005c6d8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1005c6bc targets 0x1005c6d8, is taken when v1(?) == a0(=0x20), and falls through when v1(?) != a0(=0x20).
  The `bne` branch at 0x1005c6d0 targets 0x1005c694, is taken when a0(?) != a1(=0x9), and falls through when a0(?) == a1(=0x9).
  The `beq` branch at 0x1005c6e0 targets 0x1005c6fc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1005c704 targets 0x1005c778, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1005c718 targets 0x1005c734, is taken when a5(?) == a6(=0x20), and falls through when a5(?) != a6(=0x20).
  The `bne` branch at 0x1005c72c targets 0x1005c778, is taken when a6(?) != a7(=0x9), and falls through when a6(?) == a7(=0x9).
  The `beq` branch at 0x1005c748 targets 0x1005c778, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1005c75c targets 0x1005c734, is taken when t1(?) == t2(=0x20), and falls through when t1(?) != t2(=0x20).
  The `beq` branch at 0x1005c770 targets 0x1005c734, is taken when t2(?) == t3(=0x9), and falls through when t2(?) != t3(=0x9).
  The `beq` branch at 0x1005c798 targets 0x1005cf94 and is always taken.
  The `beq` branch at 0x1005c7b0 targets 0x1005c84c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x1005c7cc targets 0x1005c7f0, is taken when v0(?) == v1(=0x20), and falls through when v0(?) != v1(=0x20).
  The `bne` branch at 0x1005c7e8 targets 0x1005c84c, is taken when a0(?) != a1(=0x9), and falls through when a0(?) == a1(=0x9).
  The `beq` branch at 0x1005c80c targets 0x1005c84c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1005c828 targets 0x1005c7f0, is taken when a5(?) == a6(=0x20), and falls through when a5(?) != a6(=0x20).
  The `beq` branch at 0x1005c844 targets 0x1005c7f0, is taken when a7(?) == t0(=0x9), and falls through when a7(?) != t0(=0x9).
  The `beq` branch at 0x1005c868 targets 0x1005c884, is taken when t1(?) == t2(=0x27), and falls through when t1(?) != t2(=0x27).
  The `bne` branch at 0x1005c87c targets 0x1005c958, is taken when t8(?) != t9(=0x22), and falls through when t8(?) == t9(=0x22).
  The `beq` branch at 0x1005c8c4 targets 0x1005c940, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x1005c8d0 targets 0x1005c8e4, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1005c8dc targets 0x1005c914 and is always taken.
  The `bne` branch at 0x1005c8ec targets 0x1005c904, is taken when a1(?) != a2(=0x5c), and falls through when a1(?) == a2(=0x5c).
  The `beq` branch at 0x1005c8fc targets 0x1005c914 and is always taken.
  The `beq` branch at 0x1005c90c targets 0x1005c940, is taken when a4(?) == a5(?), and falls through when a4(?) != a5(?).
  The `bne` branch at 0x1005c938 targets 0x1005c8cc, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1005c944 targets 0x1005c958, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1005c968 targets 0x1005ca04, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x1005c984 targets 0x1005ca04, is taken when t9(?) == ra(=0x20), and falls through when t9(?) != ra(=0x20).
  The `beq` branch at 0x1005c9a0 targets 0x1005ca04, is taken when at(?) == v0(=0x9), and falls through when at(?) != v0(=0x9).
  The `beq` branch at 0x1005c9c4 targets 0x1005ca04, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1005c9e0 targets 0x1005ca04, is taken when a2(?) == a3(=0x20), and falls through when a2(?) != a3(=0x20).
  The `bne` branch at 0x1005c9fc targets 0x1005c9a8, is taken when a4(?) != a5(=0x9), and falls through when a4(?) == a5(=0x9).
  The `beq` branch at 0x1005ca18 targets 0x1005ca2c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1005ca24 targets 0x1005cf94 and is always taken.
  The `bne` branch at 0x1005ca38 targets 0x1005ccbc, is taken when t1(?) != t2(=0x22), and falls through when t1(?) == t2(=0x22).
  The `beq` branch at 0x1005ca98 targets 0x1005cb7c, is taken when ra(=entry(0x1)) == 0, and falls through when ra(=entry(0x1)) != 0.
  The `bne` branch at 0x1005caa4 targets 0x1005cac8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x1005cac0 targets 0x1005cb0c, is taken when a0(?) != a1(=0x5c), and falls through when a0(?) == a1(=0x5c).
  The `beq` branch at 0x1005cb04 targets 0x1005cb58 and is always taken.
  The `beq` branch at 0x1005cb20 targets 0x1005cb7c, is taken when a6(?) == a7(=0x22), and falls through when a6(?) != a7(=0x22).
  The `bne` branch at 0x1005cb74 targets 0x1005caa0, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x1005cb98 targets 0x1005cbb4, is taken when ra(?) == at(=0x27), and falls through when ra(?) != at(=0x27).
  The `bne` branch at 0x1005cbac targets 0x1005cc50, is taken when v1(?) != a0(=0x22), and falls through when v1(?) == a0(=0x22).
  The `beq` branch at 0x1005cbd8 targets 0x1005cc18, is taken when ra(=ret(strlen)) == 0, and falls through when ra(=ret(strlen)) != 0.
  The `bne` branch at 0x1005cbfc targets 0x1005cc18, is taken when at(?) != v0(?), and falls through when at(?) == v0(?).
  The `beq` branch at 0x1005cc48 targets 0x1005cc98 and is always taken.
  The `beq` branch at 0x1005ccb4 targets 0x1005cf94 and is always taken.
  The `bne` branch at 0x1005cce4 targets 0x1005ccfc, is taken when ra(=ret(strrchr)) != 0, and falls through when ra(=ret(strrchr)) == 0.
  The `beq` branch at 0x1005ccf4 targets 0x1005cd08 and is always taken.
  The `beq` branch at 0x1005cd50 targets 0x1005cdc8, is taken when v0(=ret(0x1005eae0)) == 0, and falls through when v0(=ret(0x1005eae0)) != 0.
  The `beq` branch at 0x1005cd80 targets 0x1005cdb4, is taken when (a2(?) & 0x2) == 0, and falls through when (a2(?) & 0x2) != 0.
  The `beq` branch at 0x1005cdac targets 0x1005cdbc and is always taken.
  The `beq` branch at 0x1005cdf0 targets 0x1005ce04, is taken when v0(=ret(0x1005eae0)) == 0, and falls through when v0(=ret(0x1005eae0)) != 0.
  The `beq` branch at 0x1005ce10 targets 0x1005ce2c, is taken when a3(?) == a4(=0x27), and falls through when a3(?) != a4(=0x27).
  The `bne` branch at 0x1005ce24 targets 0x1005ced4, is taken when a4(?) != a5(=0x22), and falls through when a4(?) == a5(=0x22).
  The `beq` branch at 0x1005ce5c targets 0x1005ce9c, is taken when ra(=ret(strlen)) == 0, and falls through when ra(=ret(strlen)) != 0.
  The `bne` branch at 0x1005ce80 targets 0x1005ce9c, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x1005cecc targets 0x1005cf8c and is always taken.
  The `bne` branch at 0x1005cf00 targets 0x1005cf54, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005cf4c targets 0x1005cf8c and is always taken.
  The return at 0x1005cfa4 has v0 = 0x0.
- `rl_variable_bind` in `usr/gfx/KONA/bin/kpm` at 0x1005cfb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005cfb0-0x1005d740 (1936 bytes).
  It occupies 1936 bytes.
  5 such `lw` accesses load 4 bytes from abs 0x1014c060, including `lw` at 0x1005cfdc, `lw` at 0x1005d008, `lw` at 0x1005d0e0.
  The `lw` at 0x1005cff0 loads 4 bytes from abs 0x101493b8.
  The `lw` at 0x1005d01c loads 4 bytes from ?.
  14 such `lw` accesses load 4 bytes from abs 0x1014c274, including `lw` at 0x1005d028, `lw` at 0x1005d06c, `lw` at 0x1005d184.
  7 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x0, including `lbu` at 0x1005d044, `lbu` at 0x1005d090, `lbu` at 0x1005d2b0.
  15 such `lw` accesses load 4 bytes from abs 0x1014c058, including `lw` at 0x1005d05c, `lw` at 0x1005d174, `lw` at 0x1005d1a8.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x1, including `lbu` at 0x1005d0a8, `lbu` at 0x1005d6c4.
  2 such `lw` accesses load 4 bytes from table(0x101493bc) +0x0, including `lw` at 0x1005d0f4, `lw` at 0x1005d120.
  2 such `sw` accesses store 4 bytes to entry(0x101493bc) +0x0, including `sw` at 0x1005d0f8, `sw` at 0x1005d124.
  The `lw` at 0x1005d15c loads 4 bytes from table(0x101493b8) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c278, including `lw` at 0x1005d1bc, `lw` at 0x1005d228.
  The `lw` at 0x1005d1dc loads 4 bytes from abs 0x1014c7fc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7bc, including `lw` at 0x1005d1e8, `lw` at 0x1005d254.
  2 such `sw` accesses store 4 bytes to sym(_rl_keymap) +0x0, including `sw` at 0x1005d1ec, `sw` at 0x1005d258.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7c0, including `lw` at 0x1005d1f8, `lw` at 0x1005d268.
  2 such `sw` accesses store 4 bytes to sym(rl_editing_mode) +0x0, including `sw` at 0x1005d1fc, `sw` at 0x1005d26c.
  The `lw` at 0x1005d248 loads 4 bytes from abs 0x1014c7f0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c9a0, including `lw` at 0x1005d2c4, `lw` at 0x1005d2dc, `lw` at 0x1005d354.
  2 such `lw` accesses load 4 bytes from sym(rl_vi_comment_begin) +0x0, including `lw` at 0x1005d2c8, `lw` at 0x1005d2e0.
  The `lw` at 0x1005d2ec loads 4 bytes from abs 0x1014c114.
  The `lw` at 0x1005d304 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1005d320 loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x1005d340 loads 4 bytes from abs 0x1014c0f8.
  The `sw` at 0x1005d358 stores 4 bytes to sym(rl_vi_comment_begin) +0x0.
  The `lw` at 0x1005d3bc loads 4 bytes from abs 0x1014c0e4.
  The `lw` at 0x1005d3ec loads 4 bytes from abs 0x1014c7ac.
  The `sw` at 0x1005d3f0 stores 4 bytes to sym(rl_completion_query_items) +0x0.
  The `lw` at 0x1005d43c loads 4 bytes from abs 0x1014c69c.
  The `lw` at 0x1005d468 loads 4 bytes from abs 0x1014c6a0.
  6 such `lw` accesses load 4 bytes from abs 0x1014c7d4, including `lw` at 0x1005d4cc, `lw` at 0x1005d54c, `lw` at 0x1005d5d0.
  6 such `sw` accesses store 4 bytes to sym(_rl_bell_preference) +0x0, including `sw` at 0x1005d4d0, `sw` at 0x1005d550, `sw` at 0x1005d5d4.
  The `jalr` at 0x1005d02c calls strcasecmp with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1005d070 calls strcasecmp with a0=a1 at entry (arg1), a1=0x100933f8, a2=[a1]:1, a3=?.
  The `jalr` at 0x1005d188 calls strcasecmp with a0=a0 at entry (arg0), a1=0x10093400, a2=?, a3=?.
  The `jalr` at 0x1005d1c0 calls strncasecmp with a0=a1 at entry (arg1), a1=0x100933e0, a2=0x2, a3=?.
  The `jalr` at 0x1005d22c calls strncasecmp with a0=a1 at entry (arg1), a1=0x100933d8, a2=0x5, a3=?.
  The `jalr` at 0x1005d298 calls strcasecmp with a0=a0 at entry (arg0), a1=0x10093410, a2=?, a3=?.
  The `jalr` at 0x1005d2f0 calls free with a0=[sym(rl_vi_comment_begin)], a1=?, a2=[a1]:1, a3=[sym(rl_vi_comment_begin)].
  The `jalr` at 0x1005d308 calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1005d324 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005d344 calls strcpy with a0=ret(xmalloc), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1005d384 calls strcasecmp with a0=a0 at entry (arg0), a1=0x10093420, a2=?, a3=?.
  The `jalr` at 0x1005d3c0 calls atoi with a0=a1 at entry (arg1), a1=?, a2=[a1]:1, a3=0x64.
  The `jalr` at 0x1005d41c calls strcasecmp with a0=a0 at entry (arg0), a1=0x10093438, a2=?, a3=?.
  The `jal` at 0x1005d440 calls rl_get_keymap_by_name [0x1005d840] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1005d46c calls rl_set_keymap [0x1005d950] with a0=ret(rl_get_keymap_by_name), a1=?, a2=?, a3=?.
  The `jalr` at 0x1005d49c calls strcasecmp with a0=a0 at entry (arg0), a1=0x10093440, a2=?, a3=?.
  The `jalr` at 0x1005d4fc calls strcasecmp with a0=a1 at entry (arg1), a1=0x10093450, a2=[a1]:1, a3=?.
  The `jalr` at 0x1005d530 calls strcasecmp with a0=a1 at entry (arg1), a1=0x10093458, a2=?, a3=?.
  The `jalr` at 0x1005d57c calls strcasecmp with a0=a1 at entry (arg1), a1=0x10093460, a2=?, a3=?.
  The `jalr` at 0x1005d5b0 calls strcasecmp with a0=a1 at entry (arg1), a1=0x10093468, a2=?, a3=?.
  The `jalr` at 0x1005d600 calls strcasecmp with a0=a1 at entry (arg1), a1=0x10093470, a2=?, a3=?.
  The `jalr` at 0x1005d650 calls strcasecmp with a0=a0 at entry (arg0), a1=0x10093478, a2=?, a3=?.
  The `jalr` at 0x1005d694 calls strcasecmp with a0=a1 at entry (arg1), a1=0x10093468, a2=[a1]:1, a3=?.
  The `beq` branch at 0x1005cff4 targets 0x1005d168, is taken when at(=[0x101493b8]) == 0, and falls through when at(=[0x101493b8]) != 0.
  The `bne` branch at 0x1005d038 targets 0x1005d134, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d048 targets 0x1005d0d4, is taken when a2(=[a1]:1) == 0, and falls through when a2(=[a1]:1) != 0.
  The `bne` branch at 0x1005d07c targets 0x1005d08c, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d084 targets 0x1005d0d4 and is always taken.
  The `bne` branch at 0x1005d098 targets 0x1005d0c4, is taken when a2(=[a1]:1) != a3(=0x31), and falls through when a2(=[a1]:1) == a3(=0x31).
  The `bne` branch at 0x1005d0ac targets 0x1005d0c4, is taken when a3(=[a1+1]:1) != 0, and falls through when a3(=[a1+1]:1) == 0.
  The `beq` branch at 0x1005d0bc targets 0x1005d0c8 and is always taken.
  The `beq` branch at 0x1005d0cc targets 0x1005d104, is taken when a5(=one of 0x0, 0x1) == 0, and falls through when a5(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1005d0fc targets 0x1005d128 and is always taken.
  The `beq` branch at 0x1005d12c targets 0x1005d728 and is always taken.
  The `bne` branch at 0x1005d160 targets 0x1005cffc, is taken when t1(=entry(0x101493b8)) != 0, and falls through when t1(=entry(0x101493b8)) == 0.
  The `bne` branch at 0x1005d194 targets 0x1005d278, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `bne` branch at 0x1005d1cc targets 0x1005d208, is taken when v0(=ret(strncasecmp)) != 0, and falls through when v0(=ret(strncasecmp)) == 0.
  The `beq` branch at 0x1005d200 targets 0x1005d270 and is always taken.
  The `bne` branch at 0x1005d238 targets 0x1005d270, is taken when v0(=ret(strncasecmp)) != 0, and falls through when v0(=ret(strncasecmp)) == 0.
  The `beq` branch at 0x1005d270 targets 0x1005d720 and is always taken.
  The `bne` branch at 0x1005d2a4 targets 0x1005d364, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d2b4 targets 0x1005d35c, is taken when a2(=[a1]:1) == 0, and falls through when a2(=[a1]:1) != 0.
  The `beq` branch at 0x1005d2cc targets 0x1005d2f8, is taken when a3(=[sym(rl_vi_comment_begin)]) == 0, and falls through when a3(=[sym(rl_vi_comment_begin)]) != 0.
  The `beq` branch at 0x1005d35c targets 0x1005d720 and is always taken.
  The `bne` branch at 0x1005d390 targets 0x1005d3fc, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d3a8 targets 0x1005d3e0, is taken when a2(=[a1]:1) == 0, and falls through when a2(=[a1]:1) != 0.
  The `bgez` branch at 0x1005d3d4 targets 0x1005d3e0, is taken when ra(=ret(atoi)) >= 0 (signed), and falls through when ra(=ret(atoi)) < 0 (signed).
  The `beq` branch at 0x1005d3f4 targets 0x1005d720 and is always taken.
  The `bne` branch at 0x1005d428 targets 0x1005d47c, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d454 targets 0x1005d474, is taken when ra(=ret(rl_get_keymap_by_name)) == 0, and falls through when ra(=ret(rl_get_keymap_by_name)) != 0.
  The `beq` branch at 0x1005d474 targets 0x1005d720 and is always taken.
  The `bne` branch at 0x1005d4a8 targets 0x1005d630, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `bne` branch at 0x1005d4b8 targets 0x1005d4dc, is taken when a2(=[a1]:1) != 0, and falls through when a2(=[a1]:1) == 0.
  The `beq` branch at 0x1005d4d4 targets 0x1005d628 and is always taken.
  The `beq` branch at 0x1005d508 targets 0x1005d544, is taken when v0(=ret(strcasecmp)) == 0, and falls through when v0(=ret(strcasecmp)) != 0.
  The `bne` branch at 0x1005d53c targets 0x1005d55c, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d554 targets 0x1005d628 and is always taken.
  The `beq` branch at 0x1005d588 targets 0x1005d5c4, is taken when v0(=ret(strcasecmp)) == 0, and falls through when v0(=ret(strcasecmp)) != 0.
  The `bne` branch at 0x1005d5bc targets 0x1005d5e0, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d5d8 targets 0x1005d628 and is always taken.
  The `bne` branch at 0x1005d60c targets 0x1005d628, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d628 targets 0x1005d720 and is always taken.
  The `bne` branch at 0x1005d65c targets 0x1005d720, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d66c targets 0x1005d70c, is taken when a2(=[a1]:1) == 0, and falls through when a2(=[a1]:1) != 0.
  The `beq` branch at 0x1005d6a0 targets 0x1005d6d0, is taken when v0(=ret(strcasecmp)) == 0, and falls through when v0(=ret(strcasecmp)) != 0.
  The `bne` branch at 0x1005d6b4 targets 0x1005d6e0, is taken when a2(=[a1]:1) != a3(=0x31), and falls through when a2(=[a1]:1) == a3(=0x31).
  The `bne` branch at 0x1005d6c8 targets 0x1005d6e0, is taken when a3(=[a1+1]:1) != 0, and falls through when a3(=[a1+1]:1) == 0.
  The `beq` branch at 0x1005d6d8 targets 0x1005d6e4 and is always taken.
  The `beq` branch at 0x1005d6e8 targets 0x1005d70c, is taken when a5(=one of 0x0, 0x1) == 0, and falls through when a5(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1005d704 targets 0x1005d720 and is always taken.
  The return at 0x1005d738 has v0 = 0x0.
- `rl_get_keymap_by_name` in `usr/gfx/KONA/bin/kpm` at 0x1005d840 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005d840-0x1005d948 (264 bytes).
  It occupies 264 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c060, including `lw` at 0x1005d868, `lw` at 0x1005d894, `lw` at 0x1005d8d0.
  The `lw` at 0x1005d87c loads 4 bytes from abs 0x10149460.
  The `lw` at 0x1005d8a8 loads 4 bytes from ?.
  The `lw` at 0x1005d8b4 loads 4 bytes from abs 0x1014c150.
  The `lw` at 0x1005d8e4 loads 4 bytes from table(0x10149464) +0x0.
  The `lw` at 0x1005d91c loads 4 bytes from table(0x10149460) +0x0.
  The `jalr` at 0x1005d8b8 calls strcmp with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005d880 targets 0x1005d928, is taken when at(=[0x10149460]) == 0, and falls through when at(=[0x10149460]) != 0.
  The `bne` branch at 0x1005d8c0 targets 0x1005d8f4, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x1005d8ec targets 0x1005d930 and is always taken.
  The `bne` branch at 0x1005d920 targets 0x1005d888, is taken when a3(=entry(0x10149460)) != 0, and falls through when a3(=entry(0x10149460)) == 0.
  The return at 0x1005d940 has v0 = one of entry(0x10149464), 0x0.
- `rl_set_keymap` in `usr/gfx/KONA/bin/kpm` at 0x1005d950 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005d950-0x1005d998 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0x1005d980 loads 4 bytes from abs 0x1014c7bc.
  The `sw` at 0x1005d984 stores 4 bytes to sym(_rl_keymap) +0x0.
  The `beq` branch at 0x1005d96c targets 0x1005d988, is taken when v0(=a0) == 0, and falls through when v0(=a0) != 0.
  The return at 0x1005d990 has v0 = a0.
- `rl_get_keymap` in `usr/gfx/KONA/bin/kpm` at 0x1005d9a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005d9a0-0x1005d9c4 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x1005d9b4 loads 4 bytes from abs 0x1014c7bc.
  The `lw` at 0x1005d9b8 loads 4 bytes from sym(_rl_keymap) +0x0.
  The return at 0x1005d9bc has v0 = [sym(_rl_keymap)].
- `rl_set_keymap_from_edit_mode` in `usr/gfx/KONA/bin/kpm` at 0x1005d9d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005d9d0-0x1005da68 (152 bytes).
  It occupies 152 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7c0, including `lw` at 0x1005d9ec, `lw` at 0x1005da2c.
  2 such `lw` accesses load 4 bytes from sym(rl_editing_mode) +0x0, including `lw` at 0x1005d9f0, `lw` at 0x1005da30.
  The `lw` at 0x1005da08 loads 4 bytes from abs 0x1014c7f0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7bc, including `lw` at 0x1005da14, `lw` at 0x1005da50.
  2 such `sw` accesses store 4 bytes to sym(_rl_keymap) +0x0, including `sw` at 0x1005da18, `sw` at 0x1005da54.
  The `lw` at 0x1005da44 loads 4 bytes from abs 0x1014c7fc.
  The `bne` branch at 0x1005d9f8 targets 0x1005da24, is taken when v0(=[sym(rl_editing_mode)]) != v1(=0x1), and falls through when v0(=[sym(rl_editing_mode)]) == v1(=0x1).
  The `beq` branch at 0x1005da1c targets 0x1005da58 and is always taken.
  The `bne` branch at 0x1005da34 targets 0x1005da58, is taken when a1(=[sym(rl_editing_mode)]) != 0, and falls through when a1(=[sym(rl_editing_mode)]) == 0.
  The return at 0x1005da60 has v0 = [sym(rl_editing_mode)].
- `rl_list_funmap_names` in `usr/gfx/KONA/bin/kpm` at 0x1005da70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005da70-0x1005db78 (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0x1005da98 loads 4 bytes from abs 0x1014c614.
  The `lw` at 0x1005dad0 loads 4 bytes from ret(rl_funmap_names) +0x0.
  The `lw` at 0x1005dae4 loads 4 bytes from abs 0x1014c8bc.
  The `lw` at 0x1005dae8 loads 4 bytes from sym(rl_outstream) +0x0.
  The `lw` at 0x1005daf4 loads 4 bytes from abs 0x1014c058.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005db0c, `lw` at 0x1005db40.
  The `lw` at 0x1005db18 loads 4 bytes from abs 0x1014c128.
  The `lw` at 0x1005db58 loads 4 bytes from abs 0x1014c114.
  The `jal` at 0x1005da9c calls rl_funmap_names [0x10053790] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1005db1c calls fprintf with a0=[sym(rl_outstream)], a1=0x10093490, a2=?, a3=?.
  The `jalr` at 0x1005db5c calls free with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1005daac targets 0x1005dabc, is taken when at(=ret(rl_funmap_names)) != 0, and falls through when at(=ret(rl_funmap_names)) == 0.
  The `beq` branch at 0x1005dab4 targets 0x1005db64 and is always taken.
  The `beq` branch at 0x1005dad4 targets 0x1005db4c, is taken when v0(=[ret(rl_funmap_names)]) == 0, and falls through when v0(=[ret(rl_funmap_names)]) != 0.
  The `bne` branch at 0x1005db44 targets 0x1005dadc, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The return at 0x1005db70 has v0 = one of ret(rl_funmap_names), ret(free).
- `rl_invoking_keyseqs_in_map` in `usr/gfx/KONA/bin/kpm` at 0x1005db80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005db80-0x1005e480 (2304 bytes).
  It occupies 2304 bytes.
  The `lbu` at 0x1005dbd4 loads 1 byte from ?.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005dc1c, `lw` at 0x1005dc80, `lw` at 0x1005dcec.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x1005dc38, `lw` at 0x1005e034.
  8 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x1005dc64, `lw` at 0x1005dcd4, `lw` at 0x1005dd04.
  8 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x1005dc68, `lw` at 0x1005dcd8, `lw` at 0x1005dd08.
  6 such `lw` accesses load 4 bytes from abs 0x1014c260, including `lw` at 0x1005dca0, `lw` at 0x1005dd40, `lw` at 0x1005dddc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c234, including `lw` at 0x1005dd78, `lw` at 0x1005e1b4.
  5 such `lw` accesses load 4 bytes from abs 0x1014c058, including `lw` at 0x1005de1c, `lw` at 0x1005de60, `lw` at 0x1005e064.
  5 such `lw` accesses load 4 bytes from abs 0x1014c100, including `lw` at 0x1005de30, `lw` at 0x1005de70, `lw` at 0x1005e074.
  4 such `sb` accesses store 1 byte to ret(xmalloc) +0x0, including `sb` at 0x1005deac, `sb` at 0x1005dedc, `sb` at 0x1005e2e8.
  4 such `sb` accesses store 1 byte to ret(xmalloc) +0x1, including `sb` at 0x1005debc, `sb` at 0x1005dee8, `sb` at 0x1005e2f8.
  2 such `sb` accesses store 1 byte to ret(xmalloc) +0x2, including `sb` at 0x1005dec8, `sb` at 0x1005e304.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e8, including `lw` at 0x1005df24, `lw` at 0x1005e3b4.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1005df5c, `sw` at 0x1005df70, `sw` at 0x1005e3ec.
  The `lw` at 0x1005dfbc loads 4 bytes from abs 0x1014c6a8.
  The `lw` at 0x1005dff0 loads 4 bytes from table(0x0) +0x0.
  The `lw` at 0x1005e018 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1005e348 loads 4 bytes from abs 0x1014c0ec.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1005e370, `lw` at 0x1005e438.
  The `jal` at 0x1005dc3c calls xmalloc [0x10061950] with a0=0x5, a1=?, a2=?, a3=?, a6=a0 at entry (arg0).
  The `jalr` at 0x1005dca4 calls toupper with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005dd44 calls toupper with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005dd7c calls tolower with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005dde0 calls toupper with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005de34 calls sprintf with a0=?, a1=0x10093498, a2=?, a3=?.
  The `jalr` at 0x1005de74 calls sprintf with a0=ret(xmalloc), a1=0x100934a0, a2=?, a3=0x7f.
  The `jal` at 0x1005df28 calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005dfc0 calls rl_invoking_keyseqs_in_map [0x1005db80] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=0x1.
  The `jalr` at 0x1005e01c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005e038 calls xmalloc [0x10061950] with a0=ret(strlen)+6, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e078 calls sprintf with a0=ret(xmalloc), a1=0x100934a8, a2=?, a3=?.
  The `jalr` at 0x1005e0e0 calls toupper with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e180 calls toupper with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e1b8 calls tolower with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e21c calls toupper with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e270 calls sprintf with a0=?, a1=0x10093498, a2=?, a3=?.
  The `jalr` at 0x1005e2b0 calls sprintf with a0=ret(xmalloc), a1=0x100934a0, a2=?, a3=0x7f.
  The `jalr` at 0x1005e34c calls strcat with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e374 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005e3b8 calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e43c calls free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005dbbc targets 0x1005e468 and is never taken: its operands are equal constants, so execution always falls through.
  The `beq` branch at 0x1005dbdc targets 0x1005dc0c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1005dbec targets 0x1005dc0c, is taken when a1(?) == a2(=0x2), and falls through when a1(?) != a2(=0x2).
  The `beq` branch at 0x1005dbfc targets 0x1005df7c, is taken when a3(?) == a4(=0x1), and falls through when a3(?) != a4(=0x1).
  The `beq` branch at 0x1005dc04 targets 0x1005e44c and is always taken.
  The `bne` branch at 0x1005dc24 targets 0x1005df74, is taken when a5(?) != a6(=a0), and falls through when a5(?) == a6(=a0).
  The `beq` branch at 0x1005dc54 targets 0x1005de44, is taken when ra(?) >= 0x20 (signed), and falls through when ra(?) < 0x20 (signed).
  The `beq` branch at 0x1005dc88 targets 0x1005dcc0, is taken when (at(?) & 0x2) == 0, and falls through when (at(?) & 0x2) != 0.
  The `beq` branch at 0x1005dcb8 targets 0x1005dccc and is always taken.
  The `beq` branch at 0x1005dcf4 targets 0x1005dd98, is taken when (a3(?) & 0x1) == 0, and falls through when (a3(?) & 0x1) != 0.
  The `beq` branch at 0x1005dd28 targets 0x1005dd60, is taken when (a4(?) & 0x2) == 0, and falls through when (a4(?) & 0x2) != 0.
  The `beq` branch at 0x1005dd58 targets 0x1005dd6c and is always taken.
  The `beq` branch at 0x1005dd90 targets 0x1005de10 and is always taken.
  The `beq` branch at 0x1005ddc4 targets 0x1005ddfc, is taken when (at(?) & 0x2) == 0, and falls through when (at(?) & 0x2) != 0.
  The `beq` branch at 0x1005ddf4 targets 0x1005de08 and is always taken.
  The `beq` branch at 0x1005de3c targets 0x1005deec and is always taken.
  The `bne` branch at 0x1005de4c targets 0x1005de84, is taken when a2(?) != a3(=0x7f), and falls through when a2(?) == a3(=0x7f).
  The `beq` branch at 0x1005de7c targets 0x1005deec and is always taken.
  The `beq` branch at 0x1005de8c targets 0x1005dea4, is taken when a2(?) == a3(=0x5c), and falls through when a2(?) != a3(=0x5c).
  The `bne` branch at 0x1005de9c targets 0x1005ded4, is taken when a4(?) != a5(=0x22), and falls through when a4(?) == a5(=0x22).
  The `beq` branch at 0x1005decc targets 0x1005deec and is always taken.
  The `beq` branch at 0x1005defc targets 0x1005df38, is taken when ra(?) >= at(?) (signed), and falls through when ra(?) < at(?) (signed).
  The `beq` branch at 0x1005df74 targets 0x1005e44c and is always taken.
  The `beq` branch at 0x1005df94 targets 0x1005dfd0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1005dfd4 targets 0x1005e444, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1005dff4 targets 0x1005e42c, is taken when a4(=entry(0x0)) == 0, and falls through when a4(=entry(0x0)) != 0.
  The `bne` branch at 0x1005e050 targets 0x1005e088, is taken when ra(?) != at(=0x1b), and falls through when ra(?) == at(=0x1b).
  The `beq` branch at 0x1005e080 targets 0x1005e328 and is always taken.
  The `beq` branch at 0x1005e090 targets 0x1005e280, is taken when a2(?) >= 0x20 (signed), and falls through when a2(?) < 0x20 (signed).
  The `beq` branch at 0x1005e0c4 targets 0x1005e0fc, is taken when (a3(?) & 0x2) == 0, and falls through when (a3(?) & 0x2) != 0.
  The `beq` branch at 0x1005e0f4 targets 0x1005e108 and is always taken.
  The `beq` branch at 0x1005e130 targets 0x1005e1d4, is taken when (a3(?) & 0x1) == 0, and falls through when (a3(?) & 0x1) != 0.
  The `beq` branch at 0x1005e164 targets 0x1005e19c, is taken when (a4(?) & 0x2) == 0, and falls through when (a4(?) & 0x2) != 0.
  The `beq` branch at 0x1005e194 targets 0x1005e1a8 and is always taken.
  The `beq` branch at 0x1005e1cc targets 0x1005e24c and is always taken.
  The `beq` branch at 0x1005e200 targets 0x1005e238, is taken when (at(?) & 0x2) == 0, and falls through when (at(?) & 0x2) != 0.
  The `beq` branch at 0x1005e230 targets 0x1005e244 and is always taken.
  The `beq` branch at 0x1005e278 targets 0x1005e328 and is always taken.
  The `bne` branch at 0x1005e288 targets 0x1005e2c0, is taken when a2(?) != a3(=0x7f), and falls through when a2(?) == a3(=0x7f).
  The `beq` branch at 0x1005e2b8 targets 0x1005e328 and is always taken.
  The `beq` branch at 0x1005e2c8 targets 0x1005e2e0, is taken when a2(?) == a3(=0x5c), and falls through when a2(?) != a3(=0x5c).
  The `bne` branch at 0x1005e2d8 targets 0x1005e310, is taken when a4(?) != a5(=0x22), and falls through when a4(?) == a5(=0x22).
  The `beq` branch at 0x1005e308 targets 0x1005e328 and is always taken.
  The `beq` branch at 0x1005e38c targets 0x1005e3c8, is taken when a2(?) >= a3(?) (signed), and falls through when a2(?) < a3(?) (signed).
  The `bne` branch at 0x1005e424 targets 0x1005dffc, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x1005e444 targets 0x1005e44c and is always taken.
  The `bne` branch at 0x1005e460 targets 0x1005dbc4, is taken when ra(?) < 0x80 (signed), and falls through when ra(?) >= 0x80 (signed).
  The return at 0x1005e478 has v0 = ?.
- `rl_invoking_keyseqs` in `usr/gfx/KONA/bin/kpm` at 0x1005e480 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005e480-0x1005e4d8 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x1005e4a8 loads 4 bytes from abs 0x1014c7bc.
  The `lw` at 0x1005e4ac loads 4 bytes from sym(_rl_keymap) +0x0.
  The `lw` at 0x1005e4b8 loads 4 bytes from abs 0x1014c6a8.
  The `jal` at 0x1005e4bc calls rl_invoking_keyseqs_in_map [0x1005db80] with a0=a0 at entry (arg0), a1=[sym(_rl_keymap)], a2=0xf5840, a3=a3 at entry (arg3).
  The return at 0x1005e4d0 has v0 = ret(rl_invoking_keyseqs_in_map).
- `rl_dump_functions` in `usr/gfx/KONA/bin/kpm` at 0x1005e4e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005e4e0-0x1005e550 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1005e508 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x1005e50c loads 4 bytes from sym(rl_explicit_arg) +0x0.
  The `lw` at 0x1005e518 loads 4 bytes from abs 0x1014c6ac.
  The `lw` at 0x1005e52c loads 4 bytes from abs 0x1014c5d4.
  The `jal` at 0x1005e51c calls rl_function_dumper [0x1005e550] with a0=[sym(rl_explicit_arg)], a1=a1 at entry (arg1), a2=0xf57e0, a3=a3 at entry (arg3).
  The `jal` at 0x1005e530 calls rl_on_new_line [0x10050d10] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x1005e548 has v0 = 0x0.
- `rl_function_dumper` in `usr/gfx/KONA/bin/kpm` at 0x1005e550 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005e550-0x1005ea1c (1228 bytes).
  It occupies 1228 bytes.
  The `lw` at 0x1005e574 loads 4 bytes from abs 0x1014c614.
  7 such `lw` accesses load 4 bytes from abs 0x1014c8bc, including `lw` at 0x1005e590, `lw` at 0x1005e654, `lw` at 0x1005e6b4.
  7 such `lw` accesses load 4 bytes from sym(rl_outstream) +0x0, including `lw` at 0x1005e594, `lw` at 0x1005e658, `lw` at 0x1005e6b8.
  9 such `lw` accesses load 4 bytes from abs 0x1014c058, including `lw` at 0x1005e5a0, `lw` at 0x1005e664, `lw` at 0x1005e6c4.
  7 such `lw` accesses load 4 bytes from abs 0x1014c128, including `lw` at 0x1005e5b0, `lw` at 0x1005e678, `lw` at 0x1005e6ec.
  3 such `lw` accesses load 4 bytes from table(0x0) +0x0, including `lw` at 0x1005e5d0, `lw` at 0x1005e800, `lw` at 0x1005e964.
  The `lw` at 0x1005e5f0 loads 4 bytes from abs 0x1014c688.
  The `lw` at 0x1005e610 loads 4 bytes from abs 0x1014c7bc.
  The `lw` at 0x1005e614 loads 4 bytes from sym(_rl_keymap) +0x0.
  The `lw` at 0x1005e620 loads 4 bytes from abs 0x1014c6a8.
  The `lw` at 0x1005e6a0 loads 4 bytes from ret(rl_invoking_keyseqs_in_map) +0x0.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005e6dc, `lw` at 0x1005e708, `lw` at 0x1005e73c.
  4 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1005e714, `lw` at 0x1005e754, `lw` at 0x1005e98c.
  The `jal` at 0x1005e578 calls rl_funmap_names [0x10053790] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1005e5b4 calls fprintf with a0=[sym(rl_outstream)], a1=0x100934ac, a2=?, a3=?.
  The `jal` at 0x1005e5f4 calls rl_named_function [0x1005aef0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005e624 calls rl_invoking_keyseqs_in_map [0x1005db80] with a0=ret(rl_named_function), a1=[sym(_rl_keymap)], a2=?, a3=?.
  The `jalr` at 0x1005e67c calls fprintf with a0=[sym(rl_outstream)], a1=0x100934b0, a2=?, a3=ret(rl_invoking_keyseqs_in_map).
  The `jalr` at 0x1005e6f0 calls fprintf with a0=[sym(rl_outstream)], a1=0x100934c8, a2=?, a3=?.
  The `jalr` at 0x1005e718 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e758 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e7a4 calls fprintf with a0=[sym(rl_outstream)], a1=0x100934d8, a2=?, a3=?.
  The `jalr` at 0x1005e7e4 calls fprintf with a0=[sym(rl_outstream)], a1=0x100934f8, a2=?, a3=?.
  The `jalr` at 0x1005e8b0 calls fprintf with a0=[sym(rl_outstream)], a1=0x10093518, a2=?, a3=one of 0x10093510, 0x10093514.
  The `jalr` at 0x1005e948 calls fprintf with a0=[sym(rl_outstream)], a1=0x10093520, a2=?, a3=?, a6=0x5.
  The `jalr` at 0x1005e990 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e9d0 calls free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005e5dc targets 0x1005ea08, is taken when a1(=entry(0x0)) == 0, and falls through when a1(=entry(0x0)) != 0.
  The `beq` branch at 0x1005e638 targets 0x1005e768, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0.
  The `bne` branch at 0x1005e644 targets 0x1005e68c, is taken when a3(=ret(rl_invoking_keyseqs_in_map)) != 0, and falls through when a3(=ret(rl_invoking_keyseqs_in_map)) == 0.
  The `beq` branch at 0x1005e684 targets 0x1005e760 and is always taken.
  The `beq` branch at 0x1005e6a4 targets 0x1005e748, is taken when a1(=[ret(rl_invoking_keyseqs_in_map)]) == 0, and falls through when a1(=[ret(rl_invoking_keyseqs_in_map)]) != 0.
  The `bne` branch at 0x1005e740 targets 0x1005e6ac, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1005e760 targets 0x1005e9d8 and is always taken.
  The `bne` branch at 0x1005e76c targets 0x1005e7b4, is taken when ra(=ret(rl_invoking_keyseqs_in_map)) != 0, and falls through when ra(=ret(rl_invoking_keyseqs_in_map)) == 0.
  The `beq` branch at 0x1005e7ac targets 0x1005e9d8 and is always taken.
  The `beq` branch at 0x1005e804 targets 0x1005e8f0, is taken when a1(=entry(0x0)) == 0, and falls through when a1(=entry(0x0)) != 0.
  The `beq` branch at 0x1005e814 targets 0x1005e8f0 and is never taken: its operands are equal constants, so execution always falls through.
  The `beq` branch at 0x1005e834 targets 0x1005e858, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1005e850 targets 0x1005e86c and is always taken.
  The `beq` branch at 0x1005e8d8 targets 0x1005e8f0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x1005e8e8 targets 0x1005e81c, is taken when a4(?) < 0x5 (signed), and falls through when a4(?) >= 0x5 (signed).
  The `bne` branch at 0x1005e8f8 targets 0x1005e950, is taken when a5(?) != a6(=0x5), and falls through when a5(?) == a6(=0x5).
  The `beq` branch at 0x1005e914 targets 0x1005e950, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1005e968 targets 0x1005e9c0, is taken when a1(=entry(0x0)) == 0, and falls through when a1(=entry(0x0)) != 0.
  The `bne` branch at 0x1005e9b8 targets 0x1005e970, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x1005ea00 targets 0x1005e5e4, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The return at 0x1005ea14 has v0 = one of ret(fprintf), ?.
- `_rl_bind_if_unbound` in `usr/gfx/KONA/bin/kpm` at 0x1005ea20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005ea20-0x1005eae0 (192 bytes).
  It occupies 192 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7bc, including `lw` at 0x1005ea58, `lw` at 0x1005eab0.
  2 such `lw` accesses load 4 bytes from sym(_rl_keymap) +0x0, including `lw` at 0x1005ea5c, `lw` at 0x1005eab4.
  The `lw` at 0x1005ea6c loads 4 bytes from abs 0x1014c68c.
  The `lw` at 0x1005ea94 loads 4 bytes from abs 0x1014c554.
  The `lw` at 0x1005eac0 loads 4 bytes from abs 0x1014c678.
  The `jal` at 0x1005ea70 calls rl_function_of_keyseq [0x1005b020] with a0=a0 at entry (arg0), a1=[sym(_rl_keymap)], a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x1005eac4 calls rl_set_key [0x1005a5d0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(_rl_keymap)], a3=?.
  The `beq` branch at 0x1005ea44 targets 0x1005eacc, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1005ea80 targets 0x1005eaa0, is taken when a2(=ret(rl_function_of_keyseq)) == 0, and falls through when a2(=ret(rl_function_of_keyseq)) != 0.
  The `bne` branch at 0x1005ea98 targets 0x1005eacc, is taken when a3(=ret(rl_function_of_keyseq)) != a4(=sym(rl_do_lowercase_version)), and falls through when a3(=ret(rl_function_of_keyseq)) == a4(=sym(rl_do_lowercase_version)).
  The return at 0x1005ead8 has v0 = one of 0xf52a0, ret(rl_function_of_keyseq), ret(rl_set_key).
- `rl_noninc_forward_search` in `usr/gfx/KONA/bin/kpm` at 0x1005f650 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005f650-0x1005f6d8 (136 bytes).
  It occupies 136 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c080, including `lw` at 0x1005f690, `lw` at 0x1005f6b4.
  The `jal` at 0x1005f694 calls (unnamed) [0x1005f070] with a0=0x1, a1=0x3f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005f6b8 calls (unnamed) [0x1005f070] with a0=0x1, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1005f678 targets 0x1005f6a4, is taken when at(=a1) != v0(=0x3f), and falls through when at(=a1) == v0(=0x3f).
  The `beq` branch at 0x1005f69c targets 0x1005f6c0 and is always taken.
  The return at 0x1005f6d0 has v0 = 0x0.
- `rl_noninc_reverse_search` in `usr/gfx/KONA/bin/kpm` at 0x1005f6e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005f6e0-0x1005f768 (136 bytes).
  It occupies 136 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c080, including `lw` at 0x1005f720, `lw` at 0x1005f744.
  The `jal` at 0x1005f724 calls (unnamed) [0x1005f070] with a0=-0x1, a1=0x2f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005f748 calls (unnamed) [0x1005f070] with a0=-0x1, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1005f708 targets 0x1005f734, is taken when at(=a1) != v0(=0x2f), and falls through when at(=a1) == v0(=0x2f).
  The `beq` branch at 0x1005f72c targets 0x1005f750 and is always taken.
  The return at 0x1005f760 has v0 = 0x0.
- `rl_noninc_forward_search_again` in `usr/gfx/KONA/bin/kpm` at 0x1005f770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005f770-0x1005f814 (164 bytes).
  It occupies 164 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c074, including `lw` at 0x1005f798, `lw` at 0x1005f7d4.
  2 such `lw` accesses load 4 bytes from abs 0x1024ae8c, including `lw` at 0x1005f79c, `lw` at 0x1005f7d8.
  The `lw` at 0x1005f7b0 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1005f7e8 loads 4 bytes from abs 0x1014c07c.
  The `jal` at 0x1005f7b4 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005f7ec calls (unnamed) [0x1005ed90] with a0=[0x1024ae8c], a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1005f7a0 targets 0x1005f7cc, is taken when at(=[0x1024ae8c]) != 0, and falls through when at(=[0x1024ae8c]) == 0.
  The `beq` branch at 0x1005f7c4 targets 0x1005f7fc and is always taken.
  The return at 0x1005f80c has v0 = one of -0x1, 0x0.
- `rl_noninc_reverse_search_again` in `usr/gfx/KONA/bin/kpm` at 0x1005f820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005f820-0x1005f8c4 (164 bytes).
  It occupies 164 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c074, including `lw` at 0x1005f848, `lw` at 0x1005f884.
  2 such `lw` accesses load 4 bytes from abs 0x1024ae8c, including `lw` at 0x1005f84c, `lw` at 0x1005f888.
  The `lw` at 0x1005f860 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1005f898 loads 4 bytes from abs 0x1014c07c.
  The `jal` at 0x1005f864 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005f89c calls (unnamed) [0x1005ed90] with a0=[0x1024ae8c], a1=-0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1005f850 targets 0x1005f87c, is taken when at(=[0x1024ae8c]) != 0, and falls through when at(=[0x1024ae8c]) == 0.
  The `beq` branch at 0x1005f874 targets 0x1005f8ac and is always taken.
  The return at 0x1005f8bc has v0 = one of -0x1, 0x0.
- `rl_history_search_forward` in `usr/gfx/KONA/bin/kpm` at 0x1005fbe0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005fbe0-0x1005fcd8 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x1005fc20 loads 4 bytes from abs 0x1014c8b4.
  The `lw` at 0x1005fc24 loads 4 bytes from sym(rl_last_func) +0x0.
  The `lw` at 0x1005fc30 loads 4 bytes from abs 0x1014c6c4.
  The `lw` at 0x1005fc44 loads 4 bytes from abs 0x1014c074.
  The `sw` at 0x1005fc48 stores 4 bytes to abs 0x1024ae94.
  The `lw` at 0x1005fca8 loads 4 bytes from abs 0x1014c084.
  The `jal` at 0x1005fcac calls (unnamed) [0x1005f8d0] with a0=?, a1=one of -0x1, 0x1, a2=?, a3=?, a4=a0 at entry (arg0).
  The `bne` branch at 0x1005fc04 targets 0x1005fc18, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `beq` branch at 0x1005fc10 targets 0x1005fcc0 and is always taken.
  The `beq` branch at 0x1005fc34 targets 0x1005fc4c, is taken when v1(=[sym(rl_last_func)]) == a0(=sym(rl_history_search_forward)), and falls through when v1(=[sym(rl_last_func)]) != a0(=sym(rl_history_search_forward)).
  The `blez` branch at 0x1005fc50 targets 0x1005fc68, is taken when a1(=a0) <= 0 (signed), and falls through when a1(=a0) > 0 (signed).
  The `beq` branch at 0x1005fc60 targets 0x1005fc74 and is always taken.
  The `blez` branch at 0x1005fc78 targets 0x1005fc90, is taken when a4(=a0) <= 0 (signed), and falls through when a4(=a0) > 0 (signed).
  The `beq` branch at 0x1005fc88 targets 0x1005fc98 and is always taken.
  The return at 0x1005fcd0 has v0 = one of 0x0, ret(0x1005f8d0).
- `rl_history_search_backward` in `usr/gfx/KONA/bin/kpm` at 0x1005fce0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005fce0-0x1005fdd8 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x1005fd20 loads 4 bytes from abs 0x1014c8b4.
  The `lw` at 0x1005fd24 loads 4 bytes from sym(rl_last_func) +0x0.
  The `lw` at 0x1005fd30 loads 4 bytes from abs 0x1014c6c8.
  The `lw` at 0x1005fd44 loads 4 bytes from abs 0x1014c074.
  The `sw` at 0x1005fd48 stores 4 bytes to abs 0x1024ae94.
  The `lw` at 0x1005fda8 loads 4 bytes from abs 0x1014c084.
  The `jal` at 0x1005fdac calls (unnamed) [0x1005f8d0] with a0=?, a1=one of -0x1, 0x1, a2=?, a3=?, a4=a0 at entry (arg0).
  The `bne` branch at 0x1005fd04 targets 0x1005fd18, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `beq` branch at 0x1005fd10 targets 0x1005fdc0 and is always taken.
  The `beq` branch at 0x1005fd34 targets 0x1005fd4c, is taken when v1(=[sym(rl_last_func)]) == a0(=sym(rl_history_search_backward)), and falls through when v1(=[sym(rl_last_func)]) != a0(=sym(rl_history_search_backward)).
  The `blez` branch at 0x1005fd50 targets 0x1005fd68, is taken when a1(=a0) <= 0 (signed), and falls through when a1(=a0) > 0 (signed).
  The `beq` branch at 0x1005fd60 targets 0x1005fd74 and is always taken.
  The `blez` branch at 0x1005fd78 targets 0x1005fd90, is taken when a4(=a0) <= 0 (signed), and falls through when a4(=a0) > 0 (signed).
  The `beq` branch at 0x1005fd88 targets 0x1005fd98 and is always taken.
  The return at 0x1005fdd0 has v0 = one of 0x0, ret(0x1005f8d0).
- `rl_reverse_search_history` in `usr/gfx/KONA/bin/kpm` at 0x1005fde0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005fde0-0x1005fe34 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x1005fe14 loads 4 bytes from abs 0x1014c088.
  The `jal` at 0x1005fe18 calls (unnamed) [0x10060040] with a0=?, a1=a1 at entry (arg1), a2=0xf3ee0, a3=a3 at entry (arg3).
  The return at 0x1005fe2c has v0 = ret(0x10060040).
- `rl_forward_search_history` in `usr/gfx/KONA/bin/kpm` at 0x1005fe40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005fe40-0x1005fe90 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1005fe70 loads 4 bytes from abs 0x1014c088.
  The `jal` at 0x1005fe74 calls (unnamed) [0x10060040] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1005fe88 has v0 = ret(0x10060040).
- `rl_make_bare_keymap` in `usr/gfx/KONA/bin/kpm` at 0x10060ce0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10060ce0-0x10060dec (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0x10060d04 loads 4 bytes from abs 0x1014c6e4.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x10060d38, `sb` at 0x10060d94.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10060d4c, `sw` at 0x10060db4.
  The `lw` at 0x10060da0 loads 4 bytes from abs 0x1014c554.
  The `jal` at 0x10060d08 calls xmalloc [0x10061950] with a0=0x800, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10060d20 targets 0x10060d6c and is never taken: its operands are equal constants, so execution always falls through.
  The `bne` branch at 0x10060d64 targets 0x10060d28, is taken when v0(?) < 0x100 (signed), and falls through when v0(?) >= 0x100 (signed).
  The `beq` branch at 0x10060d7c targets 0x10060dd4 and is never taken: its operands are equal constants, so execution always falls through.
  The `bne` branch at 0x10060dcc targets 0x10060d84, is taken when a6(?) < 0x5b (signed), and falls through when a6(?) >= 0x5b (signed).
  The return at 0x10060de4 has v0 = ret(xmalloc).
- `rl_copy_keymap` in `usr/gfx/KONA/bin/kpm` at 0x10060df0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10060df0-0x10060ebc (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0x10060e14 loads 4 bytes from abs 0x1014c6d4.
  The `lbu` at 0x10060e48 loads 1 byte from ?.
  The `sb` at 0x10060e5c stores 1 byte to ?.
  The `lw` at 0x10060e70 loads 4 bytes from ?.
  The `sw` at 0x10060e84 stores 4 bytes to ?.
  The `jal` at 0x10060e18 calls rl_make_bare_keymap [0x10060ce0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10060e30 targets 0x10060ea4 and is never taken: its operands are equal constants, so execution always falls through.
  The `bne` branch at 0x10060e9c targets 0x10060e38, is taken when v0(?) < 0x100 (signed), and falls through when v0(?) >= 0x100 (signed).
  The return at 0x10060eb4 has v0 = ret(rl_make_bare_keymap).
- `rl_make_keymap` in `usr/gfx/KONA/bin/kpm` at 0x10060ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10060ec0-0x1006104c (396 bytes).
  It occupies 396 bytes.
  The `lw` at 0x10060ee0 loads 4 bytes from abs 0x1014c6d4.
  4 such `lw` accesses load 4 bytes from abs 0x1014c548, including `lw` at 0x10060f10, `lw` at 0x10060f4c, `lw` at 0x10060fac.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10060f24, `sw` at 0x10060fc0, `sw` at 0x10061014.
  The `sw` at 0x10060f58 stores 4 bytes to ret(rl_make_bare_keymap) +0x4c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c558, including `lw` at 0x10060f64, `lw` at 0x10060f7c.
  The `sw` at 0x10060f70 stores 4 bytes to ret(rl_make_bare_keymap) +0x3fc.
  The `sw` at 0x10060f88 stores 4 bytes to ret(rl_make_bare_keymap) +0x44.
  The `jal` at 0x10060ee4 calls rl_make_bare_keymap [0x10060ce0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10060f00 targets 0x10060f44 and is never taken: its operands are equal constants, so execution always falls through.
  The `bne` branch at 0x10060f3c targets 0x10060f08, is taken when v1(?) < 0x7e (signed), and falls through when v1(?) >= 0x7e (signed).
  The `beq` branch at 0x10060f9c targets 0x10060fe0 and is never taken: its operands are equal constants, so execution always falls through.
  The `bne` branch at 0x10060fd8 targets 0x10060fa4, is taken when a7(?) < 0xa0 (signed), and falls through when a7(?) >= 0xa0 (signed).
  The `beq` branch at 0x10060ff0 targets 0x10061034 and is never taken: its operands are equal constants, so execution always falls through.
  The `bne` branch at 0x1006102c targets 0x10060ff8, is taken when t8(?) < 0x100 (signed), and falls through when t8(?) >= 0x100 (signed).
  The return at 0x10061044 has v0 = ret(rl_make_bare_keymap).
- `rl_discard_keymap` in `usr/gfx/KONA/bin/kpm` at 0x10061050 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10061050-0x10061174 (292 bytes).
  It occupies 292 bytes.
  The `lbu` at 0x100610a4 loads 1 byte from ?.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100610f4, `lw` at 0x10061124.
  The `lw` at 0x10061100 loads 4 bytes from abs 0x1014c6d8.
  The `lw` at 0x10061130 loads 4 bytes from abs 0x1014c114.
  The `jal` at 0x10061104 calls rl_discard_keymap [0x10061050] with a0=?, a1=?, a2=?, a3=0x1.
  The `jalr` at 0x10061134 calls free with a0=?, a1=?, a2=?, a3=0x1, a5=0x2.
  The `bne` branch at 0x10061070 targets 0x10061080, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `beq` branch at 0x10061078 targets 0x10061160 and is always taken.
  The `beq` branch at 0x1006108c targets 0x10061160 and is never taken: its operands are equal constants, so execution always falls through.
  The `beq` branch at 0x100610ac targets 0x100610dc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x100610bc targets 0x100610e4, is taken when a2(?) == a3(=0x1), and falls through when a2(?) != a3(=0x1).
  The `beq` branch at 0x100610cc targets 0x10061114, is taken when a4(?) == a5(=0x2), and falls through when a4(?) != a5(=0x2).
  The `beq` branch at 0x100610d4 targets 0x10061144 and is always taken.
  The `beq` branch at 0x100610dc targets 0x10061144 and is always taken.
  The `beq` branch at 0x1006110c targets 0x10061144 and is always taken.
  The `beq` branch at 0x1006113c targets 0x10061144 and is always taken.
  The `bne` branch at 0x10061158 targets 0x10061094, is taken when a2(?) < 0x100 (signed), and falls through when a2(?) >= 0x100 (signed).
  The return at 0x1006116c has v0 = one of 0xf2c70, ?.
- `rl_set_signals` in `usr/gfx/KONA/bin/kpm` at 0x10061540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10061540-0x100617bc (636 bytes).
  It occupies 636 bytes.
  5 such `lw` accesses load 4 bytes from abs 0x1014c0a0, including `lw` at 0x10061564, `lw` at 0x100615d4, `lw` at 0x10061644.
  6 such `lw` accesses load 4 bytes from abs 0x1014c0a4, including `lw` at 0x10061570, `lw` at 0x100615e0, `lw` at 0x10061650.
  10 such `lw` accesses load 4 bytes from abs 0x1014c09c, including `lw` at 0x10061588, `lw` at 0x10061598, `lw` at 0x100615f8.
  The `sw` at 0x1006158c stores 4 bytes to abs 0x1024aea0.
  The `lw` at 0x1006159c loads 4 bytes from abs 0x1024aea0.
  5 such `lw` accesses load 4 bytes from abs 0x1014c168, including `lw` at 0x100615bc, `lw` at 0x1006162c, `lw` at 0x1006169c.
  The `sw` at 0x100615fc stores 4 bytes to abs 0x1024aea4.
  The `lw` at 0x1006160c loads 4 bytes from abs 0x1024aea4.
  The `sw` at 0x1006166c stores 4 bytes to abs 0x1024aea8.
  2 such `lw` accesses load 4 bytes from abs 0x1024aea8, including `lw` at 0x1006167c, `lw` at 0x10061724.
  The `sw` at 0x100616dc stores 4 bytes to abs 0x1024aeac.
  The `sw` at 0x10061714 stores 4 bytes to abs 0x1024aeb0.
  The `lw` at 0x10061778 loads 4 bytes from abs 0x1014c0a8.
  The `sw` at 0x100617a0 stores 4 bytes to abs 0x1024ae9c.
  The `jal` at 0x10061574 calls (unnamed) [0x100614c0] with a0=0x2, a1=0x10061290, a2=0xf2780, a3=a3 at entry (arg3).
  The `jalr` at 0x100615c0 calls signal with a0=0x2, a1=0x1, a2=?, a3=[0x1024aea0], a4=0x1.
  The `jal` at 0x100615e4 calls (unnamed) [0x100614c0] with a0=0xe, a1=0x10061290, a2=?, a3=?.
  The `jalr` at 0x10061630 calls signal with a0=0xe, a1=0x1, a2=[0x1024aea4], a3=0x1.
  The `jal` at 0x10061654 calls (unnamed) [0x100614c0] with a0=0x18, a1=0x10061290, a2=?, a3=?.
  The `jalr` at 0x100616a0 calls signal with a0=0x18, a1=0x1, a2=[0x1024aea8], a3=0x1.
  The `jal` at 0x100616c4 calls (unnamed) [0x100614c0] with a0=0x1b, a1=0x10061290, a2=?, a3=?.
  The `jal` at 0x100616fc calls (unnamed) [0x100614c0] with a0=0x1a, a1=0x10061290, a2=0x1024ae9c, a3=?.
  The `jalr` at 0x10061748 calls signal with a0=0x1b, a1=0x1, a2=?, a3=[0x1024aea8], a4=0x1.
  The `jalr` at 0x10061764 calls signal with a0=0x1a, a1=0x1, a2=?, a3=?.
  The `jal` at 0x10061788 calls (unnamed) [0x100614c0] with a0=0x14, a1=0x10061180, a2=?, a3=?.
  The `bne` branch at 0x100615a4 targets 0x100615c8, is taken when a3(=[0x1024aea0]) != a4(=0x1), and falls through when a3(=[0x1024aea0]) == a4(=0x1).
  The `bne` branch at 0x10061614 targets 0x10061638, is taken when a2(=[0x1024aea4]) != a3(=0x1), and falls through when a2(=[0x1024aea4]) == a3(=0x1).
  The `bne` branch at 0x10061684 targets 0x100616a8, is taken when a2(=[0x1024aea8]) != a3(=0x1), and falls through when a2(=[0x1024aea8]) == a3(=0x1).
  The `bne` branch at 0x1006172c targets 0x1006176c, is taken when a3(=[0x1024aea8]) != a4(=0x1), and falls through when a3(=[0x1024aea8]) == a4(=0x1).
  The return at 0x100617b4 has v0 = 0x0.
- `rl_clear_signals` in `usr/gfx/KONA/bin/kpm` at 0x100617c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100617c0-0x100618e0 (288 bytes).
  It occupies 288 bytes.
  6 such `lw` accesses load 4 bytes from abs 0x1014c09c, including `lw` at 0x100617e4, `lw` at 0x1006180c, `lw` at 0x10061834.
  The `lw` at 0x100617e8 loads 4 bytes from abs 0x1024aea0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c0a4, including `lw` at 0x100617f4, `lw` at 0x1006181c.
  The `lw` at 0x10061810 loads 4 bytes from abs 0x1024aea4.
  The `lw` at 0x10061838 loads 4 bytes from abs 0x1024aea8.
  4 such `lw` accesses load 4 bytes from abs 0x1014c168, including `lw` at 0x10061844, `lw` at 0x1006186c, `lw` at 0x10061894.
  The `lw` at 0x10061860 loads 4 bytes from abs 0x1024aeac.
  The `lw` at 0x10061888 loads 4 bytes from abs 0x1024aeb0.
  The `lw` at 0x100618b0 loads 4 bytes from abs 0x1024ae9c.
  The `jal` at 0x100617f8 calls (unnamed) [0x100614c0] with a0=0x2, a1=[0x1024aea0], a2=0xf2500, a3=a3 at entry (arg3).
  The `jal` at 0x10061820 calls (unnamed) [0x100614c0] with a0=0xe, a1=[0x1024aea4], a2=?, a3=?.
  The `jalr` at 0x10061848 calls signal with a0=0x18, a1=[0x1024aea8], a2=?, a3=?.
  The `jalr` at 0x10061870 calls signal with a0=0x1b, a1=[0x1024aeac], a2=?, a3=?.
  The `jalr` at 0x10061898 calls signal with a0=0x1a, a1=[0x1024aeb0], a2=?, a3=?.
  The `jalr` at 0x100618c0 calls signal with a0=0x14, a1=[0x1024ae9c], a2=?, a3=?.
  The return at 0x100618d8 has v0 = 0x0.
- `xmalloc` in `usr/gfx/KONA/bin/kpm` at 0x10061950 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10061950-0x100619cc (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x10061978 loads 4 bytes from abs 0x1014c0cc.
  The `lw` at 0x1006199c loads 4 bytes from abs 0x1014c0ac.
  The `lw` at 0x100619a8 loads 4 bytes from abs 0x1014c0b0.
  The `jalr` at 0x1006197c calls malloc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100619ac calls (unnamed) [0x10061a90] with a0=0x100936b8, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1006198c targets 0x100619b4, is taken when at(=ret(malloc)) != 0, and falls through when at(=ret(malloc)) == 0.
  The return at 0x100619c4 has v0 = one of ret(malloc), ?.
- `xrealloc` in `usr/gfx/KONA/bin/kpm` at 0x100619d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100619d0-0x10061a90 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x10061a08 loads 4 bytes from abs 0x1014c0cc.
  The `lw` at 0x10061a34 loads 4 bytes from abs 0x1014c17c.
  The `lw` at 0x10061a5c loads 4 bytes from abs 0x1014c0ac.
  The `lw` at 0x10061a6c loads 4 bytes from abs 0x1014c0b0.
  The `jalr` at 0x10061a0c calls malloc with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10061a38 calls realloc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10061a70 calls (unnamed) [0x10061a90] with a0=0x100936c0, a1=?, a2=?, a3=?.
  The `bne` branch at 0x100619f4 targets 0x10061a24, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `beq` branch at 0x10061a1c targets 0x10061a48 and is always taken.
  The `bne` branch at 0x10061a4c targets 0x10061a78, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The return at 0x10061a88 has v0 = ?.
- `tilde_expand` in `usr/gfx/KONA/bin/kpm` at 0x10061ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10061ec0-0x100621b0 (752 bytes).
  It occupies 752 bytes.
  The `lw` at 0x10061f08 loads 4 bytes from abs 0x1014c0b4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e8, including `lw` at 0x10061f64, `lw` at 0x1006211c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c20c, including `lw` at 0x10061f94, `lw` at 0x10062050.
  The `lw` at 0x10061fcc loads 4 bytes from abs 0x1014c0b8.
  The `lw` at 0x10062028 loads 4 bytes from abs 0x1014c6e4.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x10062068, `sb` at 0x10062194.
  The `lw` at 0x10062088 loads 4 bytes from abs 0x1014c6f0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x100620a8, `lw` at 0x10062170.
  The `lw` at 0x100620c0 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x10062148 loads 4 bytes from abs 0x1014c0f8.
  The `jal` at 0x10061f0c calls (unnamed) [0x10061b00] with a0=?, a1=sp-68, a2=?, a3=?.
  The `jal` at 0x10061f68 calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=ret(0x10061b00).
  The `jalr` at 0x10061f98 calls strncpy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10061fd0 calls (unnamed) [0x10061cf0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1006202c calls xmalloc [0x10061950] with a0=ret(0x10061cf0)+1, a1=?, a2=?, a3=one of 0x0, 0x1.
  The `jalr` at 0x10062054 calls strncpy with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jal` at 0x1006208c calls tilde_expand_word [0x100621b0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100620ac calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100620c4 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10062120 calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=ret(strlen).
  The `jalr` at 0x1006214c calls strcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10062174 calls free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10061ef0 targets 0x10062188 and is never taken: its operands are equal constants, so execution always falls through.
  The `beq` branch at 0x10061f34 targets 0x10061f78, is taken when ra(?) >= at(?) (signed), and falls through when ra(?) < at(?) (signed).
  The `bne` branch at 0x10061fe4 targets 0x10062008, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0x10061ff0 targets 0x10062008, is taken when a1(=ret(0x10061cf0)) != 0, and falls through when a1(=ret(0x10061cf0)) == 0.
  The `beq` branch at 0x10062000 targets 0x1006200c and is always taken.
  The `bne` branch at 0x10062010 targets 0x10062188, is taken when a3(=one of 0x0, 0x1) != 0, and falls through when a3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x100620ec targets 0x10062130, is taken when ra(?) >= at(?) (signed), and falls through when ra(?) < at(?) (signed).
  The `bne` branch at 0x10062180 targets 0x10061ef8 and is always taken.
  The return at 0x100621a8 has v0 = ?.
- `tilde_expand_word` in `usr/gfx/KONA/bin/kpm` at 0x100621b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100621b0-0x10062714 (1380 bytes).
  It occupies 1380 bytes.
  7 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x100621e4, `lw` at 0x1006232c, `lw` at 0x10062354.
  4 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x10062200, `lw` at 0x10062390, `lw` at 0x10062584.
  4 such `lw` accesses load 4 bytes from abs 0x1014c0f8, including `lw` at 0x10062220, `lw` at 0x100623c8, `lw` at 0x100625a8.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1006225c, `lbu` at 0x10062274, `lbu` at 0x10062288.
  The `lw` at 0x100622a0 loads 4 bytes from abs 0x1014c0bc.
  The `lw` at 0x100622ac loads 4 bytes from abs 0x1014c19c.
  The `lw` at 0x100622d4 loads 4 bytes from abs 0x1014c1a8.
  The `lw` at 0x100622f0 loads 4 bytes from abs 0x1014c28c.
  The `lw` at 0x10062314 loads 4 bytes from ret(getpwuid) +0x1c.
  The `sb` at 0x100623a8 stores 1 byte to ret(xmalloc) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c0ec, including `lw` at 0x100623e8, `lw` at 0x100625cc, `lw` at 0x100626bc.
  4 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x10062400, `lw` at 0x100625e4, `lw` at 0x100625fc.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x10062478, `sb` at 0x100624b8.
  The `lw` at 0x100624c8 loads 4 bytes from abs 0x1014c290.
  2 such `lw` accesses load 4 bytes from abs 0x1014c9a4, including `lw` at 0x100624f0, `lw` at 0x1006250c.
  2 such `lw` accesses load 4 bytes from sym(tilde_expansion_failure_hook) +0x0, including `lw` at 0x100624f4, `lw` at 0x10062510.
  The `lw` at 0x1006261c loads 4 bytes from ret(getpwnam) +0x1c.
  The `lw` at 0x1006268c loads 4 bytes from ?.
  The `lw` at 0x100626f0 loads 4 bytes from abs 0x1014c230.
  The `jalr` at 0x100621e8 calls strlen with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10062204 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10062224 calls strcpy with a0=ret(xmalloc), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x100622b0 calls getenv with a0=0x100936f0, a1=?, a2=?, a3=?.
  The `jalr` at 0x100622d8 calls getuid with a0=?, a1=ret(getenv), a2=?, a3=?.
  The `jalr` at 0x100622f4 calls getpwuid with a0=ret(getuid), a1=?, a2=?, a3=?.
  The `jalr` at 0x10062330 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10062358 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10062394 calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100623cc calls strcpy with a0=ret(xmalloc), a1=?, a2=?, a3=ret(xmalloc).
  The `jalr` at 0x100623ec calls strcat with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10062404 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100624cc calls getpwnam with a0=sp-360, a1=?, a2=0x2f, a3=?.
  The `jalr` at 0x10062514 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10062540 calls strlen with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0x10062564 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10062588 calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100625ac calls strcpy with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100625d0 calls strcat with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100625e8 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10062600 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006262c calls strlen with a0=[ret(getpwnam)+28], a1=?, a2=?, a3=?.
  The `jalr` at 0x10062650 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10062674 calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006269c calls strcpy with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100626c0 calls strcat with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100626d8 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100626f4 calls endpwent with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100621d0 targets 0x10062240, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10062238 targets 0x10062244 and is always taken.
  The `beq` branch at 0x10062250 targets 0x100626fc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x10062264 targets 0x100626fc, is taken when v1(?) != a0(=0x7e), and falls through when v1(?) == a0(=0x7e).
  The `beq` branch at 0x10062278 targets 0x10062298, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x10062290 targets 0x1006241c, is taken when a1(?) != a2(=0x2f), and falls through when a1(?) == a2(=0x2f).
  The `bne` branch at 0x100622c4 targets 0x1006231c, is taken when a1(=ret(getenv)) != 0, and falls through when a1(=ret(getenv)) == 0.
  The `beq` branch at 0x10062308 targets 0x1006231c, is taken when ra(=ret(getpwuid)) == 0, and falls through when ra(=ret(getpwuid)) != 0.
  The `beq` branch at 0x10062340 targets 0x10062374, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1006236c targets 0x10062378 and is always taken.
  The `beq` branch at 0x100623b0 targets 0x100623d4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10062414 targets 0x100626fc and is always taken.
  The `beq` branch at 0x10062444 targets 0x100624a8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x10062454 targets 0x10062464, is taken when a1(?) != a2(=0x2f), and falls through when a1(?) == a2(=0x2f).
  The `beq` branch at 0x1006245c targets 0x100624a8 and is always taken.
  The `bne` branch at 0x100624a0 targets 0x1006244c, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x100624e0 targets 0x10062618, is taken when v0(=ret(getpwnam)) != 0, and falls through when v0(=ret(getpwnam)) == 0.
  The `beq` branch at 0x100624f8 targets 0x10062610, is taken when v1(=[sym(tilde_expansion_failure_hook)]) == 0, and falls through when v1(=[sym(tilde_expansion_failure_hook)]) != 0.
  The `beq` branch at 0x10062528 targets 0x10062610, is taken when ra(=ret(?)) == 0, and falls through when ra(=ret(?)) != 0.
  The `beq` branch at 0x10062610 targets 0x100626e8 and is always taken.
  The return at 0x1006270c has v0 = ?.
- `XkbInitNames..FBF` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1005f7c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1005f7c0-0x1005fa40 (640 bytes).
  It occupies 640 bytes.
  The `lw` at 0x1005f7c4 loads 4 bytes from a0 (arg0 at entry) +0x24.
  16 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005f814, `lw` at 0x1005f818, `lw` at 0x1005f824.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x1005f864, `lw` at 0x1005f8d4.
  15 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1005f894, `sw` at 0x1005f8dc, `sw` at 0x1005f8e8.
  The `jal` at 0x1005f7dc calls SrvXkbAllocNames [0x100fe690] with a0=[a0+36], a1=0x3fff, a2=0x0, a3=0x0.
  The `jal` at 0x1005f808 calls MakeAtom [0x10238200] with a0=0x1029ae78, a1=0x7, a2=0x1, a3=ret(SrvXkbAllocNames).
  The `jal` at 0x1005f918 calls initIndicatorNames..ABF [0x1023bb10] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005f960 calls MakeAtom [0x10238200] with a0=0x1028fed0, a1=0x7, a2=0x1, a3=?.
  The `jal` at 0x1005f984 calls MakeAtom [0x10238200] with a0=0x1029ae80, a1=0x7, a2=0x1, a3=?, a4=[a1+12].
  The `jal` at 0x1005f9a8 calls MakeAtom [0x10238200] with a0=0x1029adc0, a1=0x3, a2=0x1, a3=?.
  The `jal` at 0x1005f9cc calls MakeAtom [0x10238200] with a0=0x1029ae88, a1=0xa, a2=0x1, a3=?.
  The `jal` at 0x1005f9ec calls MakeAtom [0x10238200] with a0=0x1029ae20, a1=0x9, a2=0x1, a3=?.
  The `jal` at 0x1005fa0c calls MakeAtom [0x10238200] with a0=0x1029ae30, a1=0x8, a2=0x1, a3=?.
  The `jal` at 0x1005fa2c calls MakeAtom [0x10238200] with a0=0x1029ae60, a1=0xb, a2=0x1, a3=?.
  The `beq` branch at 0x1005f7e4 targets 0x1005f7f8, is taken when v0(=ret(SrvXkbAllocNames)) == 0, and falls through when v0(=ret(SrvXkbAllocNames)) != 0.
  The `beq` branch at 0x1005f81c targets 0x1005f8e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1005f828 targets 0x1005f8ec, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1005f834 targets 0x1005f8f4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1005f840 targets 0x1005f8fc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1005f84c targets 0x1005f904, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1005f858 targets 0x1005f90c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1005f86c targets 0x1005f8a8, is taken when (a4(=[a1+12]) & 0x40) == 0, and falls through when (a4(=[a1+12]) & 0x40) != 0.
  The `beq` branch at 0x1005f874 targets 0x1005f914, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1005f87c targets 0x1005f914, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1005f888 targets 0x1005f8d8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1005f8ac targets 0x1005f974, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1005f8b8 targets 0x1005f998, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1005f8c4 targets 0x1005f9bc, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1005f8d0 targets 0x1005f870 and is always taken.
  The `beq` branch at 0x1005f8d8 targets 0x1005f898 and is always taken.
  The `beq` branch at 0x1005f8e4 targets 0x1005f824 and is always taken.
  The `beq` branch at 0x1005f8ec targets 0x1005f830 and is always taken.
  The `beq` branch at 0x1005f8f4 targets 0x1005f83c and is always taken.
  The `beq` branch at 0x1005f8fc targets 0x1005f848 and is always taken.
  The `beq` branch at 0x1005f904 targets 0x1005f854 and is always taken.
  The `beq` branch at 0x1005f90c targets 0x1005f860 and is always taken.
  The `beq` branch at 0x1005f928 targets 0x1005f9e0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x1005f934 targets 0x1005fa00, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x1005f940 targets 0x1005fa20, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x1005f94c targets 0x1005f880, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x1005f96c targets 0x1005f880 and is always taken.
  The `beq` branch at 0x1005f990 targets 0x1005f8b4 and is always taken.
  The `beq` branch at 0x1005f9b4 targets 0x1005f8c0 and is always taken.
  The `beq` branch at 0x1005f9d8 targets 0x1005f8cc and is always taken.
  The `beq` branch at 0x1005f9f8 targets 0x1005f930 and is always taken.
  The `beq` branch at 0x1005fa18 targets 0x1005f93c and is always taken.
  The `beq` branch at 0x1005fa38 targets 0x1005f948 and is always taken.
  The return at 0x1005f7f0 has v0 = ret(SrvXkbAllocNames).
  The return at 0x1005f8a0 has v0 = 0x0.
- `ProcXineramaDestroyWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1005fa40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1005fa40-0x1005fbac (364 bytes).
  It occupies 364 bytes.
  The `lw` at 0x1005fa48 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1005fa60 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1005fa94 loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x1005fab0 loads 4 bytes from sym(XRT_WINDOW) +0x0.
  2 such `sw` accesses store 4 bytes to sym(panoramiXMode) +0x0, including `sw` at 0x1005fad0, `sw` at 0x1005fb8c.
  The `lw` at 0x1005fb10 loads 4 bytes from sym(ProcVector) +0x10.
  3 such `sw` accesses store 4 bytes to sym(panoramiXScreen0) +0x0, including `sw` at 0x1005fb20, `sw` at 0x1005fb44, `sw` at 0x1005fb48.
  The `lw` at 0x1005fb34 loads 4 bytes from ?.
  The `sw` at 0x1005fb3c stores 4 bytes to [a0+8] +0x4.
  The `jal` at 0x1005faac calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x4.
  The `jalr` at 0x1005fb14 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1005fb4c calls XineramaDeliverVisibilityNotify [0x10197300] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005fb6c calls XineramaDeliverExpose [0x100e7410] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005fa68 targets 0x1005fa94, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `beq` branch at 0x1005fac0 targets 0x1005fb90, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `blez` branch at 0x1005faec targets 0x1005fba4, is taken when a3(=[0x102c5f1c]) <= 0 (signed), and falls through when a3(=[0x102c5f1c]) > 0 (signed).
  The `beq` branch at 0x1005fb00 targets 0x1005fb30 and is always taken.
  The `bne` branch at 0x1005fb24 targets 0x1005fb4c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x1005fb2c targets 0x1005fb48, is taken when s0(?) == s6(=ret(SecurityLookupIDByType)-8), and falls through when s0(?) != s6(=ret(SecurityLookupIDByType)-8).
  The `bne` branch at 0x1005fb38 targets 0x1005fb10, is taken when s4(=ret(SecurityLookupIDByType)) != s0(?), and falls through when s4(=ret(SecurityLookupIDByType)) == s0(?).
  The `beq` branch at 0x1005fb40 targets 0x1005fb10 and is always taken.
  The `beq` branch at 0x1005fb88 targets 0x1005fa84 and is always taken.
  The `beq` branch at 0x1005fb9c targets 0x1005fa84 and is always taken.
  The `beq` branch at 0x1005fba4 targets 0x1005fb4c and is always taken.
  The return at 0x1005fa7c has v0 = 0x10.
  The return at 0x1005fa8c has v0 = one of ?, 0x3.
  The instructions from 0x1005fb08 to 0x1005fb0c are not reached by any path from the entry, and their branches are not listed.
- `ProcXkbSetIndicatorMap` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1005fbb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1005fbb0-0x1006007c (1228 bytes).
  It occupies 1228 bytes.
  The `lw` at 0x1005fbb0 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1005fbcc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lhu` at 0x1005fbd0 loads 2 bytes from a0 (arg0 at entry) +0x5c.
  The `lhu` at 0x1005fbe0 loads 2 bytes from [a0+8] +0x4.
  The `lw` at 0x1005fbf0 loads 4 bytes from sym(inputInfo) +0xc.
  The `lbu` at 0x1005fbf4 loads 1 byte from [sym(inputInfo)+12] +0x4c.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005fc08, `lw` at 0x1005fc14, `lw` at 0x1005fd98.
  4 such `lw` accesses load 4 bytes from [a0+8] +0x8, including `lw` at 0x1005fc20, `lw` at 0x1005fd8c, `lw` at 0x1005fdc0.
  The `lhu` at 0x1005fc84 loads 2 bytes from [a0+8] +0x2.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x1005fcdc, `sw` at 0x1005fe54, `sw` at 0x10060044.
  The `lw` at 0x1005fcfc loads 4 bytes from sym(inputInfo) +0x10.
  The `lw` at 0x1005fd04 loads 4 bytes from sym(inputInfo) +0x4.
  The `lbu` at 0x1005fd10 loads 1 byte from [sym(inputInfo)+16] +0x4c.
  The `lbu` at 0x1005fd4c loads 1 byte from [sym(inputInfo)+4] +0x4c.
  2 such `lw` accesses load 4 bytes from sym(inputInfo) +0x8, including `lw` at 0x1005fda0, `lw` at 0x1005fe68.
  19 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1005fda4, `lbu` at 0x1005fde8, `lbu` at 0x1005fdec.
  The `lw` at 0x1005fddc loads 4 bytes from a0 (arg0 at entry) +0x10.
  13 such `sb` accesses store 1 byte to ?, including `sb` at 0x1005fe00, `sb` at 0x1005fe04, `sb` at 0x1005fe08.
  The `lbu` at 0x1005fe7c loads 1 byte from [sym(inputInfo)+8] +0x4c.
  9 such `lw` accesses load 4 bytes from ret(XkbFindSrvLedInfo) +0x24, including `lw` at 0x1005feb4, `lw` at 0x1005ff38, `lw` at 0x1005ff48.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x1005ff9c, `lhu` at 0x1005ffb8.
  The `sh` at 0x1005ffa4 stores 2 bytes to ?.
  The `sw` at 0x1005ffb4 stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x10060020, `lw` at 0x10060058.
  The `jal` at 0x1005fd60 calls XkbFindSrvLedInfo [0x10242bc0] with a0=?, a1=0x300, a2=0x400, a3=0x8.
  The `jal` at 0x1006000c calls XkbApplyLedMapChanges [0x101123b0] with a0=?, a1=ret(XkbFindSrvLedInfo), a2=[[a0+8]+8], a3=0x0, a4=0x0, a5=sp-72, a6=[0x102cb278], a7=0xe.
  The `bne` branch at 0x1005fbc8 targets 0x1005fd24, is taken when at(=[a0+72]) < 0x3 (unsigned), and falls through when at(=[a0+72]) >= 0x3 (unsigned).
  The `beq` branch at 0x1005fbd8 targets 0x1005fe58, is taken when (v0(=[a0+92]:2) & 0x8000) == 0, and falls through when (v0(=[a0+92]:2) & 0x8000) != 0.
  The `beq` branch at 0x1005fbec targets 0x1005fc00, is taken when a1(=[[a0+8]+4]:2) == v1(=0x100), and falls through when a1(=[[a0+8]+4]:2) != v1(=0x100).
  The `bne` branch at 0x1005fbf8 targets 0x1005fcfc, is taken when a2(=[[sym(inputInfo)+12]+76]:1) != a1(=[[a0+8]+4]:2), and falls through when a2(=[[sym(inputInfo)+12]+76]:1) == a1(=[[a0+8]+4]:2).
  The `beq` branch at 0x1005fc00 targets 0x1005fcbc, is taken when a0(=[sym(inputInfo)+12]) == 0, and falls through when a0(=[sym(inputInfo)+12]) != 0.
  The `beq` branch at 0x1005fc0c targets 0x1005fd38, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1005fc18 targets 0x1005fd38, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1005fc24 targets 0x10060054, is taken when a2(=[[a0+8]+8]) == 0, and falls through when a2(=[[a0+8]+8]) != 0.
  The `beq` branch at 0x1005fc4c targets 0x1005fc58, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1005fc58 targets 0x1005fc68, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x1005fc68 targets 0x1005fc40, is taken when a5(?) != s0(=0x20), and falls through when a5(?) == s0(=0x20).
  The `beq` branch at 0x1005fc90 targets 0x1005fd50, is taken when t2(=[[a0+8]+2]:2) == t3(?), and falls through when t2(=[[a0+8]+2]:2) != t3(?).
  The `bne` branch at 0x1005fcb8 targets 0x1005fc08, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x1005fd08 targets 0x1005fd18, is taken when a1(=[[a0+8]+4]:2) == at(=0x200), and falls through when a1(=[[a0+8]+4]:2) != at(=0x200).
  The `bne` branch at 0x1005fd14 targets 0x1005fd40, is taken when v1(=[[sym(inputInfo)+16]+76]:1) != a1(=[[a0+8]+4]:2), and falls through when v1(=[[sym(inputInfo)+16]+76]:1) == a1(=[[a0+8]+4]:2).
  The `beq` branch at 0x1005fd1c targets 0x1005fcb8 and is always taken.
  The `beq` branch at 0x1005fd38 targets 0x1005fcc0 and is always taken.
  The `beq` branch at 0x1005fd40 targets 0x1005fe68, is taken when a2(=[sym(inputInfo)+4]) == 0, and falls through when a2(=[sym(inputInfo)+4]) != 0.
  The `beq` branch at 0x1005fd48 targets 0x1005fda8 and is always taken.
  The `beq` branch at 0x1005fd6c targets 0x10060048, is taken when v0(=ret(XkbFindSrvLedInfo)) == 0, and falls through when v0(=ret(XkbFindSrvLedInfo)) != 0.
  The `beq` branch at 0x1005fd90 targets 0x1006005c and is always taken.
  The `beq` branch at 0x1005fd9c targets 0x1005fe6c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x1005fda8 targets 0x1005fd98, is taken when a2(?) != v0(?), and falls through when a2(?) == v0(?).
  The `bne` branch at 0x1005fdb0 targets 0x1005fcb8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x1005fdb8 targets 0x1005fcb4 and is always taken.
  The `beq` branch at 0x1005fdcc targets 0x1005fea0, is taken when a7(?) == s0(=0x20), and falls through when a7(?) != s0(=0x20).
  The `beq` branch at 0x1005fdd4 targets 0x1005fdc4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1005fde0 targets 0x1005fe18, is taken when a4(=[a0+16]) == 0, and falls through when a4(=[a0+16]) != 0.
  The `bne` branch at 0x1005fe28 targets 0x10060024, is taken when (t3(=-0xf) & t0(?)) != 0, and falls through when (t3(=-0xf) & t0(?)) == 0.
  The `beq` branch at 0x1005fe30 targets 0x1005fdc0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1005fe50 targets 0x1005fcec and is always taken.
  The `beq` branch at 0x1005fe6c targets 0x1005fcac, is taken when a7(=[sym(inputInfo)+8]) == 0, and falls through when a7(=[sym(inputInfo)+8]) != 0.
  The `beq` branch at 0x1005fe78 targets 0x1005fe90 and is always taken.
  The `beq` branch at 0x1005fe84 targets 0x1005fcac, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x1005fe90 targets 0x1005fe80, is taken when t0(?) != v0(?), and falls through when t0(?) == v0(?).
  The `beq` branch at 0x1005fe98 targets 0x1005fdb0 and is always taken.
  The `beq` branch at 0x1005fea4 targets 0x1006006c and is always taken.
  The `beq` branch at 0x1005fec0 targets 0x1005fed8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1005fed8 targets 0x1005fef0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x1005ff00 targets 0x1005fec0, is taken when a2(?) != t2(=0x10), and falls through when a2(?) == t2(=0x10).
  The `beq` branch at 0x1005ff24 targets 0x1005ffe0, is taken when t8(?) == s0(=0x20), and falls through when t8(?) != s0(=0x20).
  The `beq` branch at 0x1005ff30 targets 0x1005ff1c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x1005ffd0 targets 0x1005feac, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x1005ffd8 targets 0x1005ff18 and is always taken.
  The `beq` branch at 0x1006001c targets 0x1005fcec and is always taken.
  The `beq` branch at 0x10060040 targets 0x1005fcec and is always taken.
  The `beq` branch at 0x1006004c targets 0x1005fcec and is always taken.
  The `beq` branch at 0x10060054 targets 0x1005fcec and is always taken.
  The `beq` branch at 0x10060064 targets 0x1005fdd4 and is always taken.
  The `beq` branch at 0x10060074 targets 0x1005ff30 and is always taken.
  The return at 0x1005fca4 has v0 = 0x10.
  The return at 0x1005fce4 has v0 = [0x102cb28c].
  The return at 0x1005fcf4 has v0 = one of 0x2, [a0+40], 0xb.
  The return at 0x1005fd30 has v0 = 0x10.
  The return at 0x1005fe60 has v0 = 0xa.
- `QueryColors` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060080-0x100605f4 (1396 bytes).
  It occupies 1396 bytes.
  The `lh` at 0x10060088 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x100600a4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  4 such `lhu` accesses load 2 bytes from [a0] +0x8, including `lhu` at 0x100600c4, `lhu` at 0x10060130, `lhu` at 0x10060184.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x100600c8, `lw` at 0x100602b8.
  15 such `sw` accesses store 4 bytes to abs 0x102c60e8 (clientErrorValue), including `sw` at 0x100600e4, `sw` at 0x100601a0, `sw` at 0x10060200.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x100600e8, `lw` at 0x10060140, `lw` at 0x100601a4.
  The `lw` at 0x100600f8 loads 4 bytes from ([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2)) +0x10.
  The `lw` at 0x10060100 loads 4 bytes from ([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2)) +0x0.
  The `lhu` at 0x10060104 loads 2 bytes from [([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2))] +0x0.
  3 such `sh` accesses store 2 bytes to a3 (arg3 at entry) +0x0, including `sh` at 0x10060108, `sh` at 0x100604ec, `sh` at 0x1006054c.
  The `lw` at 0x1006010c loads 4 bytes from ([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2)) +0x4.
  The `lhu` at 0x10060110 loads 2 bytes from [([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2))+4] +0x0.
  3 such `sh` accesses store 2 bytes to a3 (arg3 at entry) +0x2, including `sh` at 0x10060114, `sh` at 0x100604f4, `sh` at 0x100605a0.
  The `lw` at 0x10060118 loads 4 bytes from ([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2)) +0x8.
  The `lhu` at 0x1006011c loads 2 bytes from [([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2))+8] +0x0.
  3 such `sh` accesses store 2 bytes to a3 (arg3 at entry) +0x4, including `sh` at 0x10060120, `sh` at 0x10060500, `sh` at 0x100605f0.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10060150, `lw` at 0x10060158, `lw` at 0x10060164.
  21 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x1006015c, `lhu` at 0x10060168, `lhu` at 0x10060174.
  18 such `sh` accesses store 2 bytes to ?, including `sh` at 0x10060160, `sh` at 0x1006016c, `sh` at 0x10060178.
  3 such `lw` accesses load 4 bytes from [a0] +0xc, including `lw` at 0x10060240, `lw` at 0x10060328, `lw` at 0x10060350.
  4 such `lw` accesses load 4 bytes from [a0] +0x1c, including `lw` at 0x10060248, `lw` at 0x10060394, `lw` at 0x100603e0.
  4 such `lw` accesses load 4 bytes from [a0] +0x10, including `lw` at 0x10060254, `lw` at 0x10060390, `lw` at 0x100603dc.
  3 such `lw` accesses load 4 bytes from [a0] +0x18, including `lw` at 0x10060258, `lw` at 0x1006032c, `lw` at 0x10060354.
  4 such `lw` accesses load 4 bytes from [a0] +0x20, including `lw` at 0x1006025c, `lw` at 0x10060430, `lw` at 0x10060480.
  4 such `lw` accesses load 4 bytes from [a0] +0x14, including `lw` at 0x10060268, `lw` at 0x1006042c, `lw` at 0x1006047c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x100603a0, `lw` at 0x100603ec, `lw` at 0x1006058c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x10060444, `lw` at 0x10060494, `lw` at 0x100605d4.
  The `lhu` at 0x100604e8 loads 2 bytes from ([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2)) +0x0.
  The `lhu` at 0x100604f0 loads 2 bytes from ([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2)) +0x2.
  The `lhu` at 0x100604f8 loads 2 bytes from ([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2)) +0x4.
  The `beq` branch at 0x100600a8 targets 0x1006023c, is taken when a4(=([a0+4]:2 | 0x1)) == a5(=0x5), and falls through when a4(=([a0+4]:2 | 0x1)) != a5(=0x5).
  The `bne` branch at 0x100600b0 targets 0x10060504, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x100600bc targets 0x10060128, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x100600d4 targets 0x100600e8, is taken when t0(=[a2]) < a5(=[[a0]+8]:2) (unsigned), and falls through when t0(=[a2]) >= a5(=[[a0]+8]:2) (unsigned).
  The `beq` branch at 0x100600e0 targets 0x10060124 and is always taken.
  The `beq` branch at 0x100600fc targets 0x100604e8, is taken when a6(=[([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2))+16]) == 0, and falls through when a6(=[([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2))+16]) != 0.
  The `bnel` branch at 0x1006012c targets 0x10060188, is taken when t3(?) != 0, and falls through when t3(?) == 0; its branch-likely delay slot `lhu t3,8(t1)` at 0x10060130 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x10060154 targets 0x10060204, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x1006017c targets 0x10060134, is taken when a7(?) == t2(=((a1 << 0x2) + a2)), and falls through when a7(?) != t2(=((a1 << 0x2) + a2)).
  The `bne` branch at 0x10060190 targets 0x100601a4, is taken when t0(?) < t3(=[[a0]+8]:2) (unsigned), and falls through when t0(?) >= t3(=[[a0]+8]:2) (unsigned).
  The `beq` branch at 0x1006019c targets 0x100601e0 and is always taken.
  The `beq` branch at 0x100601b8 targets 0x10060220, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x100601f0 targets 0x10060140, is taken when t0(?) < t3(=[[a0]+8]:2) (unsigned), and falls through when t0(?) >= t3(=[[a0]+8]:2) (unsigned).
  The `beq` branch at 0x100601fc targets 0x1006017c and is always taken.
  The `beq` branch at 0x10060218 targets 0x1006017c and is always taken.
  The `beq` branch at 0x10060234 targets 0x100601e0 and is always taken.
  The `bne` branch at 0x1006028c targets 0x10060580, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x100602ac targets 0x100602d8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x100602c4 targets 0x1006050c, is taken when (t8(?) & a7(=[a2])) == 0, and falls through when (t8(?) & a7(=[a2])) != 0.
  The `bne` branch at 0x100602dc targets 0x10060300, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x100602e4 targets 0x10060134 and is always taken.
  The `beq` branch at 0x100602f8 targets 0x100602e4, is taken when t0(?) == t2(=((a1 << 0x2) + a2)), and falls through when t0(?) != t2(=((a1 << 0x2) + a2)).
  The `beq` branch at 0x10060308 targets 0x10060350, is taken when (t8(?) & a7(?)) == 0, and falls through when (t8(?) & a7(?)) != 0.
  The `bne` branch at 0x10060320 targets 0x100602f0, is taken when (t8(?) & a7(?)) != 0, and falls through when (t8(?) & a7(?)) == 0.
  The `bne` branch at 0x1006033c targets 0x100603c4, is taken when a2(?) < t9(?) (unsigned), and falls through when a2(?) >= t9(?) (unsigned).
  The `beq` branch at 0x10060348 targets 0x100602f8 and is always taken.
  The `bne` branch at 0x10060364 targets 0x10060378, is taken when a2(?) < t9(?) (unsigned), and falls through when a2(?) >= t9(?) (unsigned).
  The `beq` branch at 0x10060370 targets 0x10060318 and is always taken.
  The `bne` branch at 0x100603b0 targets 0x10060410, is taken when ra(?) < a3(?) (unsigned), and falls through when ra(?) >= a3(?) (unsigned).
  The `beq` branch at 0x100603bc targets 0x10060318 and is always taken.
  The `bne` branch at 0x100603fc targets 0x10060460, is taken when ra(?) < a3(?) (unsigned), and falls through when ra(?) >= a3(?) (unsigned).
  The `beq` branch at 0x10060408 targets 0x100602f8 and is always taken.
  The `bne` branch at 0x1006044c targets 0x100604b0, is taken when a2(?) < a5(?) (unsigned), and falls through when a2(?) >= a5(?) (unsigned).
  The `beq` branch at 0x10060458 targets 0x10060318 and is always taken.
  The `bne` branch at 0x1006049c targets 0x100604cc, is taken when a2(?) < a6(?) (unsigned), and falls through when a2(?) >= a6(?) (unsigned).
  The `beq` branch at 0x100604a8 targets 0x100602f8 and is always taken.
  The `beq` branch at 0x100604c4 targets 0x10060318 and is always taken.
  The `beq` branch at 0x100604e0 targets 0x100602f8 and is always taken.
  The `beq` branch at 0x100604fc targets 0x10060124 and is always taken.
  The `bne` branch at 0x10060520 targets 0x10060534, is taken when a2(?) < t9(?) (unsigned), and falls through when a2(?) >= t9(?) (unsigned).
  The `beq` branch at 0x1006052c targets 0x100602d4 and is always taken.
  The `bne` branch at 0x10060568 targets 0x1006058c, is taken when ra(?) < a4(?) (unsigned), and falls through when ra(?) >= a4(?) (unsigned).
  The `beq` branch at 0x10060578 targets 0x100602d4 and is always taken.
  The `bne` branch at 0x100605bc targets 0x100605d0, is taken when a2(?) < a5(?) (unsigned), and falls through when a2(?) >= a5(?) (unsigned).
  The `beq` branch at 0x100605c8 targets 0x100602d4 and is always taken.
  The `beq` branch at 0x100605ec targets 0x100602d4 and is always taken.
  The return at 0x10060134 has v0 = one of 0x0, 0x2.
  The return at 0x10060504 has v0 = 0x0.
  The return at 0x10060584 has v0 = 0x0.
  The instructions from 0x1006013c to 0x1006013c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100602ec to 0x100602ec are not reached by any path from the entry, and their branches are not listed.
- `XETSwChangePointerControl` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060600 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060600-0x10060644 (68 bytes).
  It occupies 68 bytes.
  The `lbu` at 0x10060600 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `lbu` at 0x10060604 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `lbu` at 0x10060608 loads 1 byte from a0 (arg0 at entry) +0x5.
  The `lbu` at 0x1006060c loads 1 byte from a0 (arg0 at entry) +0x4.
  The `lbu` at 0x10060610 loads 1 byte from a0 (arg0 at entry) +0x7.
  The `lbu` at 0x10060614 loads 1 byte from a0 (arg0 at entry) +0x6.
  The `lbu` at 0x10060618 loads 1 byte from a0 (arg0 at entry) +0x9.
  The `lbu` at 0x1006061c loads 1 byte from a0 (arg0 at entry) +0x8.
  The `sb` at 0x10060620 stores 1 byte to a0 (arg0 at entry) +0x9.
  The `sb` at 0x10060624 stores 1 byte to a0 (arg0 at entry) +0x8.
  The `sb` at 0x10060628 stores 1 byte to a0 (arg0 at entry) +0x7.
  The `sb` at 0x1006062c stores 1 byte to a0 (arg0 at entry) +0x6.
  The `sb` at 0x10060630 stores 1 byte to a0 (arg0 at entry) +0x5.
  The `sb` at 0x10060634 stores 1 byte to a0 (arg0 at entry) +0x4.
  The `sb` at 0x10060638 stores 1 byte to a0 (arg0 at entry) +0x3.
  The `sb` at 0x10060640 stores 1 byte to a0 (arg0 at entry) +0x2.
  The return at 0x1006063c has v0 = [a0+2]:1.
- `processShmiq..FFC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060650 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060650-0x10060720 (208 bytes).
  It occupies 208 bytes.
  The `lbu` at 0x10060654 loads 1 byte from a0 (arg0 at entry) +0x6.
  The `lw` at 0x100606a0 loads 4 bytes from a1 (arg1 at entry) +0x64.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x100606ac, `lw` at 0x10060700.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x5, including `lbu` at 0x100606bc, `lbu` at 0x10060710.
  The `lw` at 0x100606d0 loads 4 bytes from ?.
  The `lw` at 0x100606f4 loads 4 bytes from a1 (arg1 at entry) +0x60.
  The `jal` at 0x10060690 calls ErrorF [0x10094ec0] with a0=0x102974b8, a1=[a0+6]:1, a2=a2 at entry (arg2), a3=a1+88, a4=[a0+6]:1, a5=0x2, a6=0x1.
  The `jalr` at 0x100606dc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=0x1.
  The `beq` branch at 0x10060670 targets 0x100606c8, is taken when a4(=[a0+6]:1) == 0, and falls through when a4(=[a0+6]:1) != 0.
  The `beq` branch at 0x10060678 targets 0x100606f4, is taken when a4(=[a0+6]:1) == a5(=0x2), and falls through when a4(=[a0+6]:1) != a5(=0x2).
  The `beq` branch at 0x10060680 targets 0x100606a0, is taken when a4(=[a0+6]:1) == a6(=0x1), and falls through when a4(=[a0+6]:1) != a6(=0x1).
  The `beq` branch at 0x10060698 targets 0x100606e8 and is always taken.
  The `beq` branch at 0x100606a4 targets 0x100606e4, is taken when a4(=[a1+100]) == 0, and falls through when a4(=[a1+100]) != 0.
  The `beq` branch at 0x100606b4 targets 0x100606c8, is taken when (a2(=[a1]) & 0x20) == 0, and falls through when (a2(=[a1]) & 0x20) != 0.
  The `beq` branch at 0x100606c8 targets 0x100606e8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x100606d4 targets 0x100606e8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x100606f8 targets 0x100606e4, is taken when a4(=[a1+96]) == 0, and falls through when a4(=[a1+96]) != 0.
  The `beq` branch at 0x10060708 targets 0x100606c8, is taken when (a5(=[a1]) & 0x10) == 0, and falls through when (a5(=[a1]) & 0x10) != 0.
  The `beq` branch at 0x10060718 targets 0x100606c8 and is always taken.
  The return at 0x100606ec has v0 = one of ret(ErrorF), ?.
- `XvdiPutVideo` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060720-0x10060870 (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0x10060764 loads 4 bytes from a2 (arg2 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0x1006076c, `lw` at 0x100607d0.
  The `lw` at 0x100607a8 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lw` at 0x100607b0 loads 4 bytes from [a2+4] +0x30.
  The `lw` at 0x100607f4 loads 4 bytes from sym(currentTime) +0x0.
  The `lw` at 0x100607f8 loads 4 bytes from sym(currentTime) +0x4.
  The `sw` at 0x100607fc stores 4 bytes to a2 (arg2 at entry) +0x20.
  The `sw` at 0x10060804 stores 4 bytes to a2 (arg2 at entry) +0x24.
  The `sw` at 0x10060830 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `jal` at 0x1006075c calls UpdateCurrentTime [0x10064a10] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100607c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1006081c calls XvdiSendVideoNotify [0x101a7330] with a0=a2 at entry (arg2), a1=[a2+12], a2=0x3, a3=a3 at entry (arg3).
  The `jal` at 0x10060834 calls XvdiSendVideoNotify [0x101a7330] with a0=a2 at entry (arg2), a1=[a2+12], a2=0x0, a3=?.
  The `jal` at 0x1006084c calls XvdiSendVideoNotify [0x101a7330] with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=0x2, a3=?.
  The `beq` branch at 0x10060768 targets 0x10060778, is taken when a0(=[a2+24]) == 0, and falls through when a0(=[a2+24]) != 0.
  The `bne` branch at 0x10060770 targets 0x10060844, is taken when a0(=[a2+24]) != s3(=a0), and falls through when a0(=[a2+24]) == s3(=a0).
  The `beq` branch at 0x10060778 targets 0x10060788, is taken when s1(=[a2+12]) == 0, and falls through when s1(=[a2+12]) != 0.
  The `bne` branch at 0x10060780 targets 0x10060814, is taken when s1(=[a2+12]) != s2(=a1), and falls through when s1(=[a2+12]) == s2(=a1).
  The `beq` branch at 0x100607d4 targets 0x100607e0, is taken when a1(=[a2+12]) == 0, and falls through when a1(=[a2+12]) != 0.
  The `bne` branch at 0x100607dc targets 0x1006082c, is taken when s1(=[a2+12]) != s2(=a1), and falls through when s1(=[a2+12]) == s2(=a1).
  The `beq` branch at 0x10060824 targets 0x10060788 and is always taken.
  The `beq` branch at 0x1006083c targets 0x100607e4 and is always taken.
  The return at 0x1006080c has v0 = 0x0.
  The return at 0x10060868 has v0 = 0x0.
- `SProcCreatePixmap` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060870-0x10060934 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0x10060870 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x10060874 loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x10060878 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x1006087c stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x10060880 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x10060884 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x100608b0 loads 1 byte from [a0+8] +0x7.
  The `lbu` at 0x100608b4 loads 1 byte from [a0+8] +0x4.
  The `lbu` at 0x100608b8 loads 1 byte from [a0+8] +0x6.
  The `lbu` at 0x100608bc loads 1 byte from [a0+8] +0x5.
  The `lbu` at 0x100608c0 loads 1 byte from [a0+8] +0xb.
  The `lbu` at 0x100608c4 loads 1 byte from [a0+8] +0x8.
  The `lbu` at 0x100608c8 loads 1 byte from [a0+8] +0xa.
  The `lbu` at 0x100608cc loads 1 byte from [a0+8] +0x9.
  The `lbu` at 0x100608d0 loads 1 byte from [a0+8] +0xd.
  The `lbu` at 0x100608d4 loads 1 byte from [a0+8] +0xc.
  The `lbu` at 0x100608d8 loads 1 byte from [a0+8] +0xf.
  The `lbu` at 0x100608e0 loads 1 byte from [a0+8] +0xe.
  The `sb` at 0x100608e4 stores 1 byte to [a0+8] +0xf.
  The `sb` at 0x100608e8 stores 1 byte to [a0+8] +0xe.
  The `sb` at 0x100608ec stores 1 byte to [a0+8] +0xd.
  The `sb` at 0x100608f0 stores 1 byte to [a0+8] +0xc.
  The `sb` at 0x100608f4 stores 1 byte to [a0+8] +0xa.
  The `sb` at 0x100608f8 stores 1 byte to [a0+8] +0x9.
  The `sb` at 0x100608fc stores 1 byte to [a0+8] +0xb.
  The `sb` at 0x10060900 stores 1 byte to [a0+8] +0x8.
  The `sb` at 0x10060904 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x10060908 stores 1 byte to [a0+8] +0x5.
  The `sb` at 0x1006090c stores 1 byte to [a0+8] +0x7.
  The `sb` at 0x10060914 stores 1 byte to [a0+8] +0x4.
  The `lw` at 0x10060918 loads 4 bytes from sym(ProcVector) +0xd4.
  The `jalr` at 0x1006091c calls (unknown callee) with a0=a0 at entry (arg0), a1=[[a0+8]+9]:1, a2=[[a0+8]+10]:1, a3=[a0+8], a4=[[a0+8]+8]:1, a5=[[a0+8]+11]:1, a6=[[a0+8]+5]:1, a7=[[a0+8]+6]:1.
  The `beq` branch at 0x1006089c targets 0x100608b0, is taken when v1(=[a0+72]) == a1(=0x4), and falls through when v1(=[a0+72]) != a1(=0x4).
  The return at 0x100608a8 has v0 = 0x10.
  The return at 0x1006092c has v0 = ret(?).
- `ProcXineramaUnmapSubwindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060940-0x10060a90 (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0x10060940 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10060948 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1006099c loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x100609a8 loads 4 bytes from sym(XRT_WINDOW) +0x0.
  2 such `sw` accesses store 4 bytes to sym(panoramiXMode) +0x0, including `sw` at 0x100609d0, `sw` at 0x10060a6c.
  The `lw` at 0x10060a00 loads 4 bytes from ?.
  The `sw` at 0x10060a0c stores 4 bytes to ?.
  3 such `sw` accesses store 4 bytes to sym(panoramiXScreen0) +0x0, including `sw` at 0x10060a10, `sw` at 0x10060a3c, `sw` at 0x10060a80.
  The `lw` at 0x10060a18 loads 4 bytes from sym(ProcVector) +0x2c.
  The `jal` at 0x100609a4 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x1.
  The `jalr` at 0x10060a1c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=sym(panoramiXScreen0).
  The `jal` at 0x10060a48 calls XineramaDeliverVisibilityNotify [0x10197300] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10060a50 calls XineramaDeliverExpose [0x100e7410] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10060964 targets 0x10060988, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `beq` branch at 0x100609bc targets 0x10060a70, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `blez` branch at 0x100609cc targets 0x10060a84, is taken when a5(=[0x102c5f1c]) <= 0 (signed), and falls through when a5(=[0x102c5f1c]) > 0 (signed).
  The `beq` branch at 0x100609d8 targets 0x100609f0 and is always taken.
  The `beq` branch at 0x100609e8 targets 0x10060a7c, is taken when a4(?) >= a2(=[0x102c5f1c]) (signed), and falls through when a4(?) < a2(=[0x102c5f1c]) (signed).
  The `bne` branch at 0x10060a08 targets 0x10060a14, is taken when a6(?) != a5(?), and falls through when a6(?) == a5(?).
  The `beq` branch at 0x10060a40 targets 0x100609e0, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10060a68 targets 0x10060978 and is always taken.
  The `beq` branch at 0x10060a74 targets 0x1006097c and is always taken.
  The `beq` branch at 0x10060a7c targets 0x10060a48 and is always taken.
  The `beq` branch at 0x10060a88 targets 0x10060a48 and is always taken.
  The return at 0x10060970 has v0 = 0x10.
  The return at 0x10060980 has v0 = one of ?, 0x3.
- `ProcPanoramiXShmGetImage..PEE` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060fc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060fc0-0x10062088 (4296 bytes).
  It occupies 4296 bytes.
  The `lw` at 0x10060fc0 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10060fd0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x10060ff0 loads 1 byte from [a0+8] +0x14.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x10061028, `sw` at 0x100612b0, `sw` at 0x100612dc.
  The `lw` at 0x1006103c loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x10061048 loads 4 bytes from sym(XRC_DRAWABLE) +0x0.
  The `lw` at 0x10061058 loads 4 bytes from sym(XRT_PIXMAP) +0x0.
  The `lw` at 0x1006105c loads 4 bytes from ret(SecurityLookupIDByClass) +0x80.
  55 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1006106c, `lw` at 0x100610dc, `lw` at 0x100610ec.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x10061070, `lw` at 0x100611fc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x10061080, `lw` at 0x10061208.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x1006108c, `lw` at 0x1006200c.
  The `lbu` at 0x100610b4 loads 1 byte from ret(SecurityLookupIDByClass) +0x0.
  The `lw` at 0x100610fc loads 4 bytes from ret(SecurityLookupIDByType) +0x14.
  The `lw` at 0x1006110c loads 4 bytes from ret(SecurityLookupIDByType) +0x10.
  21 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10061118, `lbu` at 0x10061484, `lbu` at 0x10061524.
  5 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x10061124, `lhu` at 0x10061130, `lhu` at 0x10061350.
  18 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1006112c, `lh` at 0x10061134, `lh` at 0x100612ec.
  The `lw` at 0x10061144 loads 4 bytes from sym(XRT_WINDOW) +0x0.
  The `lw` at 0x10061160 loads 4 bytes from sym(WindowTable) +0x0.
  The `lw` at 0x10061168 loads 4 bytes from [sym(WindowTable)] +0x0.
  The `lw` at 0x10061170 loads 4 bytes from [[sym(WindowTable)]] +0x4.
  4 such `lw` accesses load 4 bytes from sym(panoramiXdataPtr) +0x0, including `lw` at 0x100612e8, `lw` at 0x10061754, `lw` at 0x10061a40.
  2 such `lw` accesses load 4 bytes from [sym(panoramiXdataPtr)] +0x10, including `lw` at 0x100612f0, `lw` at 0x10061e50.
  2 such `lw` accesses load 4 bytes from [sym(panoramiXdataPtr)] +0x14, including `lw` at 0x10061320, `lw` at 0x10061e64.
  The `lw` at 0x10061430 loads 4 bytes from a0 (arg0 at entry) +0x78.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10061480, `sw` at 0x10062014.
  The `lw` at 0x1006151c loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `ld` at 0x10061560 loads 8 bytes from abs 0x1028cdf0.
  The `lw` at 0x10061568 loads 4 bytes from sym(PixmapWidthPaddingInfo) +0xc.
  The `lw` at 0x10061574 loads 4 bytes from sym(PixmapWidthPaddingInfo) +0x10.
  The `lw` at 0x10061578 loads 4 bytes from sym(PixmapWidthPaddingInfo) +0x14.
  The `ld` at 0x100615b4 loads 8 bytes from abs 0x1028cdf8.
  2 such `lw` accesses load 4 bytes from sym(__us_rsthread_malloc) +0x0, including `lw` at 0x100619ec, `lw` at 0x10061ba0.
  The `lw` at 0x10061bc0 loads 4 bytes from sym(Must_have_memory) +0x0.
  10 such `sb` accesses store 1 byte to ?, including `sb` at 0x10061c44, `sb` at 0x10061c6c, `sb` at 0x10061c7c.
  The `lw` at 0x10061ef0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x10061fb4 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x10061044 calls SecurityLookupIDByClass [0x10236190] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRC_DRAWABLE)], a3=0x2.
  The `jal` at 0x100610a4 calls SecurityLookupIDByClass [0x10236190] with a0=a0 at entry (arg0), a1=?, a2=0x40000000, a3=0x0.
  The `jal` at 0x100610d8 calls SecurityLookupIDByType [0x100d6140] with a0=0x0, a1=?, a2=[0x102ca988], a3=0x0.
  The `jal` at 0x100613e4 calls ProcShmGetImage..BFE [0x101925c0] with a0=a0 at entry (arg0), a1=?, a2=[sym(XRT_PIXMAP)], a3=[ret(SecurityLookupIDByClass)+128].
  The `jalr` at 0x10061450 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0, a5=0x3fffff, a6=sym(clientTable).
  The `jalr` at 0x10061780 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10061794 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100617a4 calls (unknown callee) with a0=sp-432, a1=?, a2=?, a3=?.
  The `jalr` at 0x100617b4 calls (unknown callee) with a0=sp-416, a1=?, a2=?, a3=?.
  The `jalr` at 0x10061858 calls (unknown callee) with a0=sp-432, a1=sp-440, a2=0x1, a3=?.
  The `jalr` at 0x10061870 calls (unknown callee) with a0=sp-416, a1=0x0, a2=0x1, a3=?.
  The `jalr` at 0x100618ec calls (unknown callee) with a0=sp-432, a1=sp-432, a2=sp-416, a3=?.
  The `jalr` at 0x100618fc calls (unknown callee) with a0=sp-432, a1=?, a2=?, a3=?.
  The `jalr` at 0x10061960 calls (unknown callee) with a0=?, a1=sp-440, a2=?, a3=?.
  The `jalr` at 0x1006198c calls (unknown callee) with a0=sp-416, a1=sp-432, a2=?, a3=?.
  The `jalr` at 0x100619d8 calls __libc_lockmalloc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100619e4 calls __malloc..ML [0x101e7680] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100619fc calls __libc_unlockmalloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10061a80 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10061b0c calls memcpy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10061bac calls realloc [0x101a0420] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10061bcc calls FatalError [0x10094f20] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10061dcc calls memcpy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10061e24 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10061eac calls XineramaGetImageData [0x10108270] with a0=sp-544, a1=?, a2=?, a3=?.
  The `jal` at 0x10061fa4 calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=0x20, a2=sp-480, a3=?.
  The `beq` branch at 0x10060fcc targets 0x10060ff0, is taken when at(=0x8) == v0(=[a0+72]), and falls through when at(=0x8) != v0(=[a0+72]).
  The `beq` branch at 0x10061000 targets 0x1006102c, is taken when v1(=0x1) == a1(=[[a0+8]+20]:1), and falls through when v1(=0x1) != a1(=[[a0+8]+20]:1).
  The `beq` branch at 0x1006100c targets 0x10061030, is taken when a1(=[[a0+8]+20]:1) == a0(=0x2), and falls through when a1(=[[a0+8]+20]:1) != a0(=0x2).
  The `beq` branch at 0x1006104c targets 0x100612b4, is taken when v0(=ret(SecurityLookupIDByClass)) == 0, and falls through when v0(=ret(SecurityLookupIDByClass)) != 0.
  The `beq` branch at 0x10061060 targets 0x100613e4, is taken when a2(=[sym(XRT_PIXMAP)]) == a3(=[ret(SecurityLookupIDByClass)+128]), and falls through when a2(=[sym(XRT_PIXMAP)]) != a3(=[ret(SecurityLookupIDByClass)+128]).
  The `bne` branch at 0x10061074 targets 0x10061098, is taken when a3(=[a0+48]) != a1(?), and falls through when a3(=[a0+48]) == a1(?).
  The `bne` branch at 0x10061084 targets 0x10061098, is taken when a4(=[a0+116]) != 0, and falls through when a4(=[a0+116]) == 0.
  The `beq` branch at 0x10061090 targets 0x100610c4 and is always taken.
  The `beq` branch at 0x100610ac targets 0x100613bc, is taken when v0(=ret(SecurityLookupIDByClass)) == 0, and falls through when v0(=ret(SecurityLookupIDByClass)) != 0.
  The `beq` branch at 0x100610bc targets 0x100613dc, is taken when a6(=[ret(SecurityLookupIDByClass)]:1) == a7(=0x2), and falls through when a6(=[ret(SecurityLookupIDByClass)]:1) != a7(=0x2).
  The `beq` branch at 0x100610e0 targets 0x100612c0, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `bne` branch at 0x100610f4 targets 0x100612a0, is taken when (t3(?) & 0x3) != 0, and falls through when (t3(?) & 0x3) == 0.
  The `bne` branch at 0x10061104 targets 0x100612a0, is taken when t8(=[ret(SecurityLookupIDByType)+20]) < t3(?) (unsigned), and falls through when t8(=[ret(SecurityLookupIDByType)+20]) >= t3(?) (unsigned).
  The `beq` branch at 0x10061110 targets 0x100614cc, is taken when t9(=[ret(SecurityLookupIDByType)+16]) == 0, and falls through when t9(=[ret(SecurityLookupIDByType)+16]) != 0.
  The `bne` branch at 0x10061154 targets 0x100612e0, is taken when ra(=[sym(XRT_WINDOW)]) != at(?), and falls through when ra(=[sym(XRT_WINDOW)]) == at(?).
  The `bne` branch at 0x10061174 targets 0x100612e0, is taken when a1(=[[[sym(WindowTable)]]+4]) != a2(?), and falls through when a1(=[[[sym(WindowTable)]]+4]) == a2(?).
  The `bltz` branch at 0x10061180 targets 0x100614c4, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bne` branch at 0x1006119c targets 0x100614c4, is taken when a4(=[0x102c5f60]) < a5(?) (signed), and falls through when a4(=[0x102c5f60]) >= a5(?) (signed).
  The `bltz` branch at 0x100611a4 targets 0x100614c4, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bne` branch at 0x100611bc targets 0x100614c4, is taken when t0(=[0x102c5f64]) < t1(?) (signed), and falls through when t0(=[0x102c5f64]) >= t1(?) (signed).
  The `bne` branch at 0x100611d0 targets 0x100614d4, is taken when a7(=[0x102c5f1c]) < 0x2 (signed), and falls through when a7(=[0x102c5f1c]) >= 0x2 (signed).
  The `bne` branch at 0x10061200 targets 0x10061214, is taken when t0(=[a0+48]) != a1(?), and falls through when t0(=[a0+48]) == a1(?).
  The `beq` branch at 0x1006120c targets 0x1006200c, is taken when t1(=[a0+116]) == 0, and falls through when t1(=[a0+116]) != 0.
  The `beq` branch at 0x10061220 targets 0x100614b4, is taken when a7(?) >= 0x100 (signed), and falls through when a7(?) < 0x100 (signed).
  The `beq` branch at 0x10061238 targets 0x100614b4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x10061248 targets 0x100616ec, is taken when a7(?) == t9(=0x6), and falls through when a7(?) != t9(=0x6).
  The `beq` branch at 0x10061254 targets 0x1006170c, is taken when a7(?) == at(=0x7), and falls through when a7(?) != at(=0x7).
  The `beq` branch at 0x1006125c targets 0x10061fb8, is taken when a7(?) == v0(=0x8), and falls through when a7(?) != v0(=0x8).
  The `beq` branch at 0x10061264 targets 0x10061fdc, is taken when a7(?) == v1(=0x9), and falls through when a7(?) != v1(=0x9).
  The `beq` branch at 0x1006126c targets 0x10061ff4, is taken when a7(?) == a2(=0xa), and falls through when a7(?) != a2(=0xa).
  The `beq` branch at 0x10061274 targets 0x10062018, is taken when a7(?) == a4(=0xb), and falls through when a7(?) != a4(=0xb).
  The `beq` branch at 0x1006128c targets 0x100614b4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x10061294 targets 0x10061404 and is always taken.
  The `bltz` branch at 0x10061300 targets 0x100613b4, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bne` branch at 0x10061318 targets 0x100613b4, is taken when t8(=[0x102c5f60]) < t9(?) (signed), and falls through when t8(=[0x102c5f60]) >= t9(?) (signed).
  The `bltz` branch at 0x10061334 targets 0x100613b4, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bne` branch at 0x10061348 targets 0x100613b4, is taken when t1(=[0x102c5f64]) < t3(?) (signed), and falls through when t1(=[0x102c5f64]) >= t3(?) (signed).
  The `bne` branch at 0x10061360 targets 0x100613b4, is taken when t8(?) < t3(?) (signed), and falls through when t8(?) >= t3(?) (signed).
  The `bne` branch at 0x10061380 targets 0x100613b4, is taken when t0(?) < t1(?) (signed), and falls through when t0(?) >= t1(?) (signed).
  The `bne` branch at 0x1006138c targets 0x100613b4, is taken when t1(?) < t3(?) (signed), and falls through when t1(?) >= t3(?) (signed).
  The `beq` branch at 0x100613ac targets 0x100611c8, is taken when t3(?) >= t8(?) (signed), and falls through when t3(?) < t8(?) (signed).
  The `beq` branch at 0x100613b4 targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x100613dc targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x100613ec targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x100613f8 targets 0x100614b4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x10061404 targets 0x100613f4, is taken when t9(?) != a1(?), and falls through when t9(?) == a1(?).
  The `beql` branch at 0x10061414 targets 0x100613f8, is taken when (a3(=0x40000000) & a2(?)) == 0, and falls through when (a3(=0x40000000) & a2(?)) != 0; its branch-likely delay slot `lw a7,0(a7)` at 0x10061418 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x10061420 targets 0x1006147c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10061428 targets 0x1006147c, is taken when v0(=a0) == 0, and falls through when v0(=a0) != 0.
  The `beq` branch at 0x10061434 targets 0x1006147c, is taken when t9(=[a0+120]) == 0, and falls through when t9(=[a0+120]) != 0.
  The `beq` branch at 0x1006147c targets 0x100614b0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1006148c targets 0x10062074, is taken when a7(=0x2) == t0(?), and falls through when a7(=0x2) != t0(?).
  The `bne` branch at 0x100614a0 targets 0x100611f4, is taken when a0(?) < a7(=[0x102c5f1c]) (signed), and falls through when a0(?) >= a7(=[0x102c5f1c]) (signed).
  The `beq` branch at 0x100614a8 targets 0x100614d8 and is always taken.
  The `beq` branch at 0x100614bc targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x100614c4 targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x100614cc targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x100614dc targets 0x100614ec, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x100614e4 targets 0x10061504 and is always taken.
  The `beq` branch at 0x100614f8 targets 0x100614f0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x10061538 targets 0x10062030, is taken when t0(?) == t1(=0x2), and falls through when t0(?) != t1(=0x2).
  The `beq` branch at 0x10061630 targets 0x10061644, is taken when at(?) >= v1(?) (unsigned), and falls through when at(?) < v1(?) (unsigned).
  The `beq` branch at 0x1006163c targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x10061664 targets 0x10061ed4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10061678 targets 0x10061e80, is taken when t8(?) == t9(=0x2), and falls through when t8(?) != t9(=0x2).
  The `beq` branch at 0x100616a8 targets 0x10061ed4, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x100616e4 targets 0x100617dc and is always taken.
  The `beq` branch at 0x10061704 targets 0x1006127c and is always taken.
  The `beq` branch at 0x10061728 targets 0x1006127c and is always taken.
  The `beq` branch at 0x1006178c targets 0x1006179c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x100617d4 targets 0x10061ed4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100617e8 targets 0x100617d0, is taken when (v1(?) & a0(?)) == 0, and falls through when (v1(?) & a0(?)) != 0.
  The `beq` branch at 0x10061828 targets 0x10061e44, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10061880 targets 0x10061e3c, is taken when ra(?) == at(=0x1), and falls through when ra(?) != at(=0x1).
  The `blez` branch at 0x10061894 targets 0x1006179c, is taken when v1(=[0x102c5f1c]) <= 0 (signed), and falls through when v1(=[0x102c5f1c]) > 0 (signed).
  The `beq` branch at 0x100618d0 targets 0x10061948 and is always taken.
  The `beq` branch at 0x10061904 targets 0x1006178c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10061940 targets 0x10061788, is taken when ra(?) >= at(=[0x102c5f1c]) (signed), and falls through when ra(?) < at(=[0x102c5f1c]) (signed).
  The `beq` branch at 0x1006196c targets 0x10061730, is taken when v0(=ret(?)) == ra(=0x1), and falls through when v0(=ret(?)) != ra(=0x1).
  The `beq` branch at 0x10061974 targets 0x10061910, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10061998 targets 0x10061e34, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x100619a4 targets 0x10061910, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x100619bc targets 0x1006207c and is always taken.
  The `beq` branch at 0x100619d0 targets 0x100619e4, is taken when v0(=[sym(__us_rsthread_malloc)]) == 0, and falls through when v0(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100619f0 targets 0x10061a04, is taken when v1(=[sym(__us_rsthread_malloc)]) == 0, and falls through when v1(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10061a04 targets 0x10061bc0, is taken when s1(=ret(__malloc..ML)) == 0, and falls through when s1(=ret(__malloc..ML)) != 0.
  The `beq` branch at 0x10061a10 targets 0x100618d8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x10061ab4 targets 0x10061bdc, is taken when t0(?) == s0(=0x1), and falls through when t0(?) != s0(=0x1).
  The `blez` branch at 0x10061adc targets 0x10061b28, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0x10061b1c targets 0x10061b00, is taken when s2(?) != s6(?), and falls through when s2(?) == s6(?).
  The `beq` branch at 0x10061b34 targets 0x100618dc, is taken when t8(?) == t9(?), and falls through when t8(?) != t9(?).
  The `beq` branch at 0x10061b88 targets 0x10061a28, is taken when ra(?) >= s0(?) (signed), and falls through when ra(?) < s0(?) (signed).
  The `blez` branch at 0x10061b94 targets 0x10061e0c, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x10061b9c targets 0x100619d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x10061bb4 targets 0x10061a10, is taken when v0(=ret(realloc)) != 0, and falls through when v0(=ret(realloc)) == 0.
  The `beq` branch at 0x10061bc4 targets 0x10061bd4, is taken when ra(=[sym(Must_have_memory)]) == 0, and falls through when ra(=[sym(Must_have_memory)]) != 0.
  The `beq` branch at 0x10061bd4 targets 0x10061a10 and is always taken.
  The `beq` branch at 0x10061c08 targets 0x10061ca8, is taken when (s3(?) & 0x7) == 0, and falls through when (s3(?) & 0x7) != 0.
  The `blez` branch at 0x10061c10 targets 0x10061b28, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x10061c2c targets 0x10061c50, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `bne` branch at 0x10061c48 targets 0x10061c34, is taken when s8(?) != 0, and falls through when s8(?) == 0.
  The `beq` branch at 0x10061c50 targets 0x10061ca8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x10061ca0 targets 0x10061c60, is taken when t8(?) != a0(?), and falls through when t8(?) == a0(?).
  The `blez` branch at 0x10061cac targets 0x10061b24, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x10061cdc targets 0x10061d50 and is always taken.
  The `bltz` branch at 0x10061cf0 targets 0x10061d34, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bne` branch at 0x10061d2c targets 0x10061d00, is taken when t3(?) != s2(?), and falls through when t3(?) == s2(?).
  The `beq` branch at 0x10061d48 targets 0x10061e04, is taken when v0(?) == a0(?), and falls through when v0(?) != a0(?).
  The `beq` branch at 0x10061d50 targets 0x10061dac, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x10061d58 targets 0x10061cf0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x10061d64 targets 0x10061d34, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x10061d9c targets 0x10061d70, is taken when t2(?) != s3(?), and falls through when t2(?) == s3(?).
  The `beq` branch at 0x10061da4 targets 0x10061d38 and is always taken.
  The `beq` branch at 0x10061dac targets 0x10061de4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10061de4 targets 0x10061d34, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10061dfc targets 0x10061d34 and is always taken.
  The `beq` branch at 0x10061e04 targets 0x10061b28 and is always taken.
  The `beq` branch at 0x10061e0c targets 0x10061e1c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x10061e14 targets 0x10061e24, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x10061e1c targets 0x10061a10 and is always taken.
  The `beq` branch at 0x10061e2c targets 0x10061e1c and is always taken.
  The `beq` branch at 0x10061e34 targets 0x100619b0 and is always taken.
  The `beq` branch at 0x10061e3c targets 0x10061890 and is always taken.
  The `beq` branch at 0x10061e78 targets 0x10061830 and is always taken.
  The `beq` branch at 0x10061efc targets 0x10061f98, is taken when t1(=[a0+16]) == 0, and falls through when t1(=[a0+16]) != 0.
  The `beq` branch at 0x10061fb0 targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x10061fd4 targets 0x1006127c and is always taken.
  The `beq` branch at 0x10061fec targets 0x1006127c and is always taken.
  The `beq` branch at 0x10062004 targets 0x1006127c and is always taken.
  The `beq` branch at 0x10062010 targets 0x10061494 and is always taken.
  The `beq` branch at 0x10062028 targets 0x1006127c and is always taken.
  The `beq` branch at 0x1006206c targets 0x1006161c and is always taken.
  The `beq` branch at 0x10062074 targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x10062080 targets 0x10061b40 and is always taken.
  The return at 0x10060fd8 has v0 = 0x10.
  The return at 0x10060fe8 has v0 = one of 0x8, ret(ProcShmGetImage..BFE), 0x9, 0xa, [a0+40].
  The return at 0x10061024 has v0 = 0x2.
  The return at 0x100612ac has v0 = 0x2.
  The return at 0x100612b8 has v0 = 0x9.
  The return at 0x100612d8 has v0 = [0x102ca98c].
  The return at 0x100613d4 has v0 = 0x9.
  The instructions from 0x1006129c to 0x1006129c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100619c4 to 0x100619cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10061ce4 to 0x10061cec are not reached by any path from the entry, and their branches are not listed.
- `sp_begin_sub_char_out` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10062090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10062090-0x100620ec (92 bytes).
  It occupies 92 bytes.
  The `lbu` at 0x10062098 loads 1 byte from abs 0x102d79b5 (sp_globals+53).
  The `lh` at 0x100620a4 loads 2 bytes from abs 0x102d8d54 (sp_globals+5076).
  The `sh` at 0x100620ac stores 2 bytes to abs 0x102d8d52 (sp_globals+5074).
  The `sb` at 0x100620bc stores 1 byte to abs 0x102d79b5 (sp_globals+53).
  The `sh` at 0x100620cc stores 2 bytes to abs 0x102d8d48 (sp_globals+5064).
  The `sh` at 0x100620d8 stores 2 bytes to abs 0x102d8d4a (sp_globals+5066).
  The `sh` at 0x100620e0 stores 2 bytes to abs 0x102d8d4c (sp_globals+5068).
  The `sh` at 0x100620e8 stores 2 bytes to abs 0x102d8d4e (sp_globals+5070).
  The `beq` branch at 0x100620a8 targets 0x100620b8, is taken when v1(=[0x102d79b5]:1) == 0, and falls through when v1(=[0x102d79b5]:1) != 0.
  The return at 0x100620b0 has v0 = 0x102e0000.
  The return at 0x100620e4 has v0 = 0x102e0000.
- `glxScreenInit` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100620f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100620f0-0x100622b8 (456 bytes).
  It occupies 456 bytes.
  The `lw` at 0x10062184 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `sw` at 0x10062190 stores 4 bytes to ret(Xalloc) +0x0.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100621ac, `lw` at 0x100621bc, `lw` at 0x100621cc.
  8 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100621b0, `sw` at 0x100621c0, `sw` at 0x100621d0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10062258, `lw` at 0x10062290.
  2 such `sw` accesses store 4 bytes to table(0x102ca938) +0x0, including `sw` at 0x10062278, `sw` at 0x100622b4.
  The `jal` at 0x10062118 calls Xalloc [0x1020aeb0] with a0=0x84, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10062120 targets 0x10062288, is taken when v0(=ret(Xalloc)) == 0, and falls through when v0(=ret(Xalloc)) != 0.
  The `bgtz` branch at 0x10062234 targets 0x100621a8, is taken when s0(?) > 0 (signed), and falls through when s0(?) <= 0 (signed).
  The return at 0x10062280 has v0 = 0x1.
  The return at 0x100622b0 has v0 = 0x0.
- `AwareModeProcPanoramiXGetScreenCount` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100622c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100622c0-0x10062380 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x100622c0 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x100622e4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x100622f4 loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x10062310 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0x1006231c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x10062368 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x100622f0 calls SecurityLookupWindow [0x1006ce40] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x10062358 calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=0x20, a2=sp-48, a3=?, a4=0x1.
  The `beq` branch at 0x100622d0 targets 0x100622e0, is taken when at(=[a0+72]) == v0(=0x2), and falls through when at(=[a0+72]) != v0(=0x2).
  The `beq` branch at 0x100622f8 targets 0x10062374, is taken when v0(=ret(SecurityLookupWindow)) == 0, and falls through when v0(=ret(SecurityLookupWindow)) != 0.
  The `beq` branch at 0x10062324 targets 0x1006234c, is taken when a1(=[a0+16]) == 0, and falls through when a1(=[a0+16]) != 0.
  The return at 0x100622d8 has v0 = 0x10.
  The return at 0x1006236c has v0 = [a0+40].
  The return at 0x10062378 has v0 = 0x3.
- `XkbFindKeycodeByName` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10062380 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10062380-0x100625bc (572 bytes).
  It occupies 572 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0x1006239c, `lw` at 0x100623e0, `lw` at 0x10062498.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x9, including `lbu` at 0x100623a0, `lbu` at 0x10062404.
  The `lbu` at 0x100623a8 loads 1 byte from a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from [a0+28] +0xe4, including `lw` at 0x100623ac, `lw` at 0x100623e8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x10062428, `lw` at 0x1006247c.
  The `lw` at 0x10062434 loads 4 bytes from [a0+36] +0x40.
  2 such `lhu` accesses load 2 bytes from [a0+36] +0x2a, including `lhu` at 0x10062438, `lhu` at 0x10062480.
  The `lw` at 0x100624a4 loads 4 bytes from [a0+28] +0xe8.
  2 such `lbu` accesses load 1 byte from [a0+28] +0xf5, including `lbu` at 0x100624a8, `lbu` at 0x100624e0.
  The `jalr` at 0x100623f4 calls strncmp with a0=?, a1=?, a2=0x4, a3=?.
  The `jalr` at 0x1006246c calls strncmp with a0=?, a1=?, a2=0x4, a3=?.
  The `jalr` at 0x100624cc calls strncmp with a0=?, a1=?, a2=0x4, a3=?.
  The `beq` branch at 0x10062394 targets 0x10062520, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100623a4 targets 0x10062520, is taken when a0(=[a0+28]) == 0, and falls through when a0(=[a0+28]) != 0.
  The `beq` branch at 0x100623b4 targets 0x10062520, is taken when at(=[[a0+28]+228]) == 0, and falls through when at(=[[a0+28]+228]) != 0.
  The `bne` branch at 0x100623c8 targets 0x10062418, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x100623fc targets 0x1006255c, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x10062414 targets 0x100623e0, is taken when a1(=[a0+9]:1) >= s3(?) (signed), and falls through when a1(=[a0+9]:1) < s3(?) (signed).
  The `beq` branch at 0x10062420 targets 0x10062538, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1006242c targets 0x10062498, is taken when v0(=[a0+36]) == 0, and falls through when v0(=[a0+36]) != 0.
  The `beq` branch at 0x10062440 targets 0x10062498, is taken when a1(=[[a0+36]+64]) == 0, and falls through when a1(=[[a0+36]+64]) != 0.
  The `blez` branch at 0x10062448 targets 0x10062498, is taken when a0(=[[a0+36]+42]:2) <= 0 (signed), and falls through when a0(=[[a0+36]+42]:2) > 0 (signed).
  The `beq` branch at 0x10062474 targets 0x10062590, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bne` branch at 0x10062490 targets 0x10062460, is taken when s3(?) < a4(=[[a0+36]+42]:2) (signed), and falls through when s3(?) >= a4(=[[a0+36]+42]:2) (signed).
  The `beq` branch at 0x1006249c targets 0x100624f8, is taken when a0(=[a0+28]) == 0, and falls through when a0(=[a0+28]) != 0.
  The `beq` branch at 0x100624ac targets 0x100624f8, is taken when s4(=[[a0+28]+232]) == 0, and falls through when s4(=[[a0+28]+232]) != 0.
  The `blez` branch at 0x100624b4 targets 0x100624fc, is taken when v0(=[[a0+28]+245]:1) <= 0 (signed), and falls through when v0(=[[a0+28]+245]:1) > 0 (signed).
  The `beq` branch at 0x100624d4 targets 0x10062564, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bne` branch at 0x100624f0 targets 0x100624c0, is taken when s3(?) < a5(=[[a0+28]+245]:1) (signed), and falls through when s3(?) >= a5(=[[a0+28]+245]:1) (signed).
  The `beq` branch at 0x1006255c targets 0x10062500 and is always taken.
  The return at 0x10062518 has v0 = one of 0x0, ?.
  The return at 0x10062530 has v0 = 0x0.
  The return at 0x10062554 has v0 = 0x0.
- `InitEvents` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100626b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100626b0-0x100628fc (588 bytes).
  It occupies 588 bytes.
  The `sw` at 0x100626d8 stores 4 bytes to sym(inputInfo) +0x0.
  The `sw` at 0x100626dc stores 4 bytes to sym(inputInfo) +0x4.
  The `sw` at 0x100626e4 stores 4 bytes to sym(inputInfo) +0x8.
  The `sw` at 0x100626e8 stores 4 bytes to sym(inputInfo) +0xc.
  The `sw` at 0x100626f0 stores 4 bytes to sym(inputInfo) +0x10.
  3 such `lw` accesses load 4 bytes from sym(__us_rsthread_malloc) +0x0, including `lw` at 0x10062768, `lw` at 0x100627a4, `lw` at 0x100628b4.
  The `lw` at 0x10062774 loads 4 bytes from ?.
  2 such `lw` accesses load 4 bytes from table(0x102c71c0) +0x0, including `lw` at 0x10062780, `lw` at 0x100628a4.
  2 such `sw` accesses store 4 bytes to table(0x102c71c0) +0x0, including `sw` at 0x100627a8, `sw` at 0x100627c8.
  The `sw` at 0x10062814 stores 4 bytes to sym(currentTime) +0x0.
  The `sw` at 0x10062838 stores 4 bytes to sym(currentTime) +0x4.
  The `lw` at 0x1006283c loads 4 bytes from sym(currentTime) +0x0.
  The `sw` at 0x10062848 stores 4 bytes to abs 0x102c5fb4.
  The `sw` at 0x1006284c stores 4 bytes to sym(DontPropagateMasks) +0x1c.
  The `sw` at 0x10062850 stores 4 bytes to abs 0x102c5fb0.
  The `sw` at 0x10062854 stores 4 bytes to sym(DontPropagateMasks) +0x18.
  The `sw` at 0x10062858 stores 4 bytes to abs 0x102c5fac.
  The `sw` at 0x1006285c stores 4 bytes to sym(DontPropagateMasks) +0x14.
  The `sw` at 0x10062860 stores 4 bytes to abs 0x102c5fa8.
  The `sw` at 0x10062864 stores 4 bytes to sym(DontPropagateMasks) +0x10.
  The `sw` at 0x10062868 stores 4 bytes to abs 0x102c5fa4.
  The `sw` at 0x1006286c stores 4 bytes to sym(DontPropagateMasks) +0xc.
  The `sw` at 0x10062870 stores 4 bytes to abs 0x102c5fa0.
  The `sw` at 0x10062874 stores 4 bytes to sym(DontPropagateMasks) +0x8.
  The `sw` at 0x10062878 stores 4 bytes to abs 0x102c5f9c.
  The `sw` at 0x1006287c stores 4 bytes to sym(DontPropagateMasks) +0x4.
  The `sw` at 0x10062880 stores 4 bytes to abs 0x102c5f98.
  The `sw` at 0x10062884 stores 4 bytes to sym(DontPropagateMasks) +0x0.
  The `jalr` at 0x10062744 calls __libc_unlockmalloc with a0=?, a1=?, a2=[0x102c7240], a3=table(0x102c5d40), a5=[sym(__us_rsthread_malloc)].
  The `jal` at 0x10062790 calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=?, a2=?, a3=table(0x102c5d40).
  The `jalr` at 0x10062810 calls times with a0=sp-64, a1=?, a2=?, a3=sym(currentTime), a4=0x102c5fb8.
  The `jalr` at 0x10062890 calls __libc_lockmalloc with a0=?, a1=?, a2=?, a3=?, a5=[sym(__us_rsthread_malloc)].
  The `jal` at 0x100628c4 calls Xalloc [0x1020aeb0] with a0=0x80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x20.
  The `jal` at 0x100628dc calls FatalError [0x10094f20] with a0=0x1028f350, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100626ec targets 0x100628b8, is taken when at(=[0x102c5fdc]) == 0, and falls through when at(=[0x102c5fdc]) != 0.
  The `beq` branch at 0x10062730 targets 0x100627e0, is taken when a4(=[0x102c5fb8]) == 0, and falls through when a4(=[0x102c5fb8]) != 0.
  The `beq` branch at 0x10062738 targets 0x100628ec and is always taken.
  The `beq` branch at 0x1006275c targets 0x100627dc, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x10062770 targets 0x10062890, is taken when a5(=[sym(__us_rsthread_malloc)]) != 0, and falls through when a5(=[sym(__us_rsthread_malloc)]) == 0.
  The `beq` branch at 0x10062788 targets 0x100627c4, is taken when a0(=entry(0x102c71c0)) == 0, and falls through when a0(=entry(0x102c71c0)) != 0.
  The `bne` branch at 0x100627b4 targets 0x10062740, is taken when a5(=[sym(__us_rsthread_malloc)]) != 0, and falls through when a5(=[sym(__us_rsthread_malloc)]) == 0.
  The `beq` branch at 0x100627bc targets 0x1006274c and is always taken.
  The `bne` branch at 0x100627d4 targets 0x1006276c, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `bne` branch at 0x100628a8 targets 0x10062790, is taken when a0(=entry(0x102c71c0)) != 0, and falls through when a0(=entry(0x102c71c0)) == 0.
  The `beq` branch at 0x100628b0 targets 0x100627a8 and is always taken.
  The `bne` branch at 0x100628cc targets 0x100626f4, is taken when v0(=ret(Xalloc)) != 0, and falls through when v0(=ret(Xalloc)) == 0.
  The `beq` branch at 0x100628e4 targets 0x100626f8 and is always taken.
  The `beq` branch at 0x100628f4 targets 0x10062768 and is always taken.
  The return at 0x10062888 has v0 = ret(times).
- `ProcXineramaFreeGC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10062900 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10062900-0x10062a04 (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0x10062908 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10062920 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10062948 loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x1006298c loads 4 bytes from (ret(SecurityLookupIDByType) + ([0x102c5f1c]-1 << 0x3)) +0x0.
  The `sw` at 0x10062990 stores 4 bytes to [a0+8] +0x4.
  The `lw` at 0x10062994 loads 4 bytes from sym(ProcVector) +0xf0.
  The `lw` at 0x100629b0 loads 4 bytes from ?.
  The `jal` at 0x10062954 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[0x102ca81c], a3=0x4.
  The `jalr` at 0x10062998 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10062928 targets 0x10062944, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `beq` branch at 0x1006295c targets 0x100629e8, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `blez` branch at 0x10062978 targets 0x100629bc, is taken when a0(=[0x102c5f1c]) <= 0 (signed), and falls through when a0(=[0x102c5f1c]) > 0 (signed).
  The `bne` branch at 0x100629a4 targets 0x100629c0, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `bnel` branch at 0x100629ac targets 0x10062990, is taken when s0(?) != s3(=ret(SecurityLookupIDByType)-8), and falls through when s0(?) == s3(=ret(SecurityLookupIDByType)-8); its branch-likely delay slot `lw t8,0(s0)` at 0x100629b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x100629b4 targets 0x100629c4 and is always taken.
  The return at 0x1006293c has v0 = 0x10.
  The return at 0x100629e0 has v0 = one of ret(?), ?.
  The return at 0x100629fc has v0 = 0xd.
- `SProcLbxGetProperty..BAG` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10062a10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10062a10-0x10062af8 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x10062a10 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x10062a14 loads 1 byte from [a0+8] +0x8.
  The `lbu` at 0x10062a18 loads 1 byte from [a0+8] +0xa.
  The `lbu` at 0x10062a1c loads 1 byte from [a0+8] +0x9.
  The `lbu` at 0x10062a20 loads 1 byte from [a0+8] +0xf.
  The `lbu` at 0x10062a24 loads 1 byte from [a0+8] +0xc.
  The `lbu` at 0x10062a28 loads 1 byte from [a0+8] +0xe.
  The `lbu` at 0x10062a2c loads 1 byte from [a0+8] +0xd.
  The `lbu` at 0x10062a30 loads 1 byte from [a0+8] +0x17.
  The `lbu` at 0x10062a34 loads 1 byte from [a0+8] +0x2.
  The `lbu` at 0x10062a38 loads 1 byte from [a0+8] +0x3.
  The `sb` at 0x10062a3c stores 1 byte to [a0+8] +0x2.
  The `lbu` at 0x10062a40 loads 1 byte from [a0+8] +0x14.
  The `sb` at 0x10062a44 stores 1 byte to [a0+8] +0x14.
  The `sb` at 0x10062a48 stores 1 byte to [a0+8] +0xe.
  The `sb` at 0x10062a4c stores 1 byte to [a0+8] +0xd.
  The `sb` at 0x10062a50 stores 1 byte to [a0+8] +0xf.
  The `sb` at 0x10062a54 stores 1 byte to [a0+8] +0xc.
  The `sb` at 0x10062a58 stores 1 byte to [a0+8] +0xa.
  The `lbu` at 0x10062a5c loads 1 byte from [a0+8] +0xb.
  The `sb` at 0x10062a60 stores 1 byte to [a0+8] +0xb.
  The `sb` at 0x10062a64 stores 1 byte to [a0+8] +0x9.
  The `lbu` at 0x10062a68 loads 1 byte from [a0+8] +0x5.
  The `lbu` at 0x10062a6c loads 1 byte from [a0+8] +0x6.
  The `lbu` at 0x10062a70 loads 1 byte from [a0+8] +0x4.
  The `lbu` at 0x10062a74 loads 1 byte from [a0+8] +0x7.
  The `sb` at 0x10062a78 stores 1 byte to [a0+8] +0x3.
  The `lbu` at 0x10062a7c loads 1 byte from [a0+8] +0x16.
  The `sb` at 0x10062a80 stores 1 byte to [a0+8] +0x4.
  The `lbu` at 0x10062a84 loads 1 byte from [a0+8] +0x15.
  The `sb` at 0x10062a88 stores 1 byte to [a0+8] +0x7.
  The `lbu` at 0x10062a8c loads 1 byte from [a0+8] +0x1b.
  The `sb` at 0x10062a90 stores 1 byte to [a0+8] +0x5.
  The `lbu` at 0x10062a94 loads 1 byte from [a0+8] +0x18.
  The `sb` at 0x10062a98 stores 1 byte to [a0+8] +0x6.
  The `lbu` at 0x10062a9c loads 1 byte from [a0+8] +0x1a.
  The `sb` at 0x10062aa0 stores 1 byte to [a0+8] +0x8.
  The `lbu` at 0x10062aa4 loads 1 byte from [a0+8] +0x19.
  The `sb` at 0x10062aa8 stores 1 byte to [a0+8] +0x1a.
  The `sb` at 0x10062aac stores 1 byte to [a0+8] +0x19.
  The `sb` at 0x10062ab0 stores 1 byte to [a0+8] +0x1b.
  The `sb` at 0x10062ab4 stores 1 byte to [a0+8] +0x18.
  The `sb` at 0x10062ab8 stores 1 byte to [a0+8] +0x16.
  The `sb` at 0x10062abc stores 1 byte to [a0+8] +0x15.
  The `sb` at 0x10062ac0 stores 1 byte to [a0+8] +0x17.
  The `lw` at 0x10062ac4 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `jal` at 0x10062ae4 calls LbxGetProperty [0x1006ff60] with a0=a0 at entry (arg0), a1=[a0+8], a2=[[a0+8]+26]:1, a3=[[a0+8]+24]:1, a4=[[a0+8]+27]:1, a5=[[a0+8]+21]:1, a6=[[a0+8]+22]:1, a7=[[a0+8]+20]:1.
  The `beq` branch at 0x10062ad0 targets 0x10062ae0, is taken when at(=[a0+72]) == v0(=0x7), and falls through when at(=[a0+72]) != v0(=0x7).
  The return at 0x10062ad8 has v0 = 0x10.
  The return at 0x10062af0 has v0 = ret(LbxGetProperty).
- `XdmcpAllocARRAY8` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10062b00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10062b00-0x10062b6c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10062b5c stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sh` at 0x10062b68 stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x10062b24 calls Xalloc [0x1020aeb0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x10062b30 targets 0x10062b48, is taken when v0(=ret(Xalloc)) != 0, and falls through when v0(=ret(Xalloc)) == 0.
  The return at 0x10062b40 has v0 = 0x0.
  The return at 0x10062b64 has v0 = 0x1.
- `sgiCloseDevice` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10062b70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10062b70-0x10062c80 (272 bytes).
  It occupies 272 bytes.
  The `lw` at 0x10062b80 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x10062b8c loads 4 bytes from a0 (arg0 at entry) +0x74.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x70, including `lh` at 0x10062b90, `lh` at 0x10062bd8.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10062bc0, `lw` at 0x10062bcc.
  The `lw` at 0x10062bf0 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0x10062c1c loads 4 bytes from table(0x102ca580) +0x0.
  The `sdl` at 0x10062c44 stores 8 bytes to ?.
  The `sdr` at 0x10062c48 stores 8 bytes to ?.
  The `swl` at 0x10062c4c stores 4 bytes to ?.
  The `swr` at 0x10062c50 stores 4 bytes to ?.
  The `sw` at 0x10062c58 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sw` at 0x10062c60 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x10062c64 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `jalr` at 0x10062bd0 calls (unknown callee) with a0=0x2, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10062c18 calls ioctl with a0=[0x102cc0e8], a1=0x530d, a2=entry(0x102ca580), a3=?.
  The `jal` at 0x10062c30 calls ErrorF [0x10094ec0] with a0=0x102972e0, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10062b78 targets 0x10062c74, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0x10062b84 targets 0x10062c74, is taken when at(=[a0+24]) <= 0 (signed), and falls through when at(=[a0+24]) > 0 (signed).
  The `beq` branch at 0x10062bac targets 0x10062bf0, is taken when a1(=[a0+116]) == 0, and falls through when a1(=[a0+116]) != 0.
  The `blez` branch at 0x10062bb4 targets 0x10062bf0, is taken when a0(=[a0+112]:2) <= 0 (signed), and falls through when a0(=[a0+112]:2) > 0 (signed).
  The `bne` branch at 0x10062be8 targets 0x10062bc0, is taken when s3(?) < v0(=[a0+112]:2) (signed), and falls through when s3(?) >= v0(=[a0+112]:2) (signed).
  The `beq` branch at 0x10062c20 targets 0x10062c38, is taken when v0(=ret(ioctl)) == 0, and falls through when v0(=ret(ioctl)) != 0.
  The return at 0x10062c6c has v0 = one of ret(ioctl), ret(ErrorF).
  The return at 0x10062c78 has v0 = ?.
- `XkbEnableDisableControls` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10062c80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10062c80-0x10062de8 (360 bytes).
  It occupies 360 bytes.
  The `lw` at 0x10062c80 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x10062c84 loads 4 bytes from [a0+36] +0xc.
  3 such `lw` accesses load 4 bytes from [[a0+36]+12] +0xc, including `lw` at 0x10062c88, `lw` at 0x10062d98, `lw` at 0x10062da0.
  The `sw` at 0x10062cb4 stores 4 bytes to [[a0+36]+12] +0xc.
  The `lw` at 0x10062cc8 loads 4 bytes from abs 0x20.
  The `lw` at 0x10062ccc loads 4 bytes from abs 0x1c.
  The `sw` at 0x10062cd4 stores 4 bytes to abs 0x20.
  2 such `sw` accesses store 4 bytes to abs 0x1c, including `sw` at 0x10062ce0, `sw` at 0x10062de4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x10062cf0, `lw` at 0x10062cfc, `lw` at 0x10062dc4.
  The `lw` at 0x10062d00 loads 4 bytes from ret(XkbFindSrvLedInfo) +0x40.
  The `lbu` at 0x10062d74 loads 1 byte from a3 (arg3 at entry) +0x1.
  The `lbu` at 0x10062d78 loads 1 byte from a3 (arg3 at entry) +0x0.
  The `lbu` at 0x10062d7c loads 1 byte from a3 (arg3 at entry) +0x2.
  The `lbu` at 0x10062d80 loads 1 byte from a3 (arg3 at entry) +0x3.
  The `lbu` at 0x10062d84 loads 1 byte from [[a0+36]+12] +0x1.
  The `jal` at 0x10062cf4 calls XkbFindSrvLedInfo [0x10242bc0] with a0=[a0+40], a1=0x300, a2=0x400, a3=0x0.
  The `jal` at 0x10062d14 calls XkbFindSrvLedInfo [0x10242bc0] with a0=[a0+40], a1=0x300, a2=0x400, a3=0x0.
  The `jal` at 0x10062d30 calls XkbUpdateLedAutoState [0x1013e4b0] with a0=?, a1=ret(XkbFindSrvLedInfo), a2=?, a3=0x0, a4=0x0, a5=a3 at entry (arg3).
  The `jal` at 0x10062d3c calls XkbUpdateAllDeviceIndicators [0x10183c30] with a0=0x0, a1=a3 at entry (arg3), a2=?, a3=?.
  The `jal` at 0x10062dc0 calls XkbSendControlsNotify [0x101ba680] with a0=[a0+40], a1=sp-80, a2=[[[a0+36]+12]+1]:1, a3=a3 at entry (arg3), a5=[[[a0+36]+12]+12], a6=0xffffffff80000000.
  The `beq` branch at 0x10062cb8 targets 0x10062d5c, is taken when a7(?) == a5(=[[[a0+36]+12]+12]), and falls through when a7(?) != a5(=[[[a0+36]+12]+12]).
  The `bne` branch at 0x10062cc0 targets 0x10062d70, is taken when a3 != 0, and falls through when a3 == 0.
  The `beq` branch at 0x10062cd8 targets 0x10062dd0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x10062dc8 targets 0x10062cec and is always taken.
  The `beq` branch at 0x10062de0 targets 0x10062ce8 and is always taken.
  The return at 0x10062d54 has v0 = 0x1.
  The return at 0x10062d68 has v0 = 0x0.
- `ProcConvertSelection` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10062f00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10062f00-0x10063188 (648 bytes).
  It occupies 648 bytes.
  The `lw` at 0x10062f08 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10062f18 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10062f4c loads 4 bytes from [a0+8] +0x4.
  19 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10062f60, `lw` at 0x10062f68, `lw` at 0x10062fa0.
  The `lw` at 0x10062fd0 loads 4 bytes from [0x102c609c] +0x0.
  The `lw` at 0x10063040 loads 4 bytes from a0 (arg0 at entry) +0x78.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x100630e4, `lw` at 0x1006314c.
  The `lw` at 0x10063160 loads 4 bytes from [0x102c609c] +0xc.
  The `sw` at 0x10063184 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `jal` at 0x10062f48 calls SecurityLookupWindow [0x1006ce40] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x1, a3=a3 at entry (arg3).
  The `jalr` at 0x10063060 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=0xffffffffc0000001, a3=0x1, a6=[0x102c60a0], a7=[0x102c609c].
  The `jal` at 0x100630cc calls TryClientEvents [0x10136730] with a0=?, a1=sp-80, a2=0x1, a3=0x0, a4=0x0, a5=0x0, a6=0x1e.
  The `jal` at 0x10063138 calls TryClientEvents [0x10136730] with a0=a0 at entry (arg0), a1=sp-80, a2=0x1, a3=0x0, a4=0x0, a5=0x0.
  The `beq` branch at 0x10062f20 targets 0x10062f38, is taken when v0(=[a0+72]) == v1(=0x6), and falls through when v0(=[a0+72]) != v1(=0x6).
  The `beq` branch at 0x10062f54 targets 0x10063158, is taken when v0(=ret(SecurityLookupWindow)) == 0, and falls through when v0(=ret(SecurityLookupWindow)) != 0.
  The `beq` branch at 0x10062f6c targets 0x10062f98, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x10062f78 targets 0x10062f98, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x10062f80 targets 0x10062f9c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10062f88 targets 0x10062f9c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x10062f90 targets 0x10062f9c and is always taken.
  The `beq` branch at 0x10062fa4 targets 0x10062fbc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x10062fac targets 0x10062fb8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x10062fbc targets 0x10063178, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `blez` branch at 0x10062fc4 targets 0x100630f0, is taken when a6(=[0x102c60a0]) <= 0 (signed), and falls through when a6(=[0x102c60a0]) > 0 (signed).
  The `beq` branch at 0x10062fd4 targets 0x10063160, is taken when t0(=[[0x102c609c]]) == a5(?), and falls through when t0(=[[0x102c609c]]) != a5(?).
  The `beq` branch at 0x10062fdc targets 0x10062ff0 and is always taken.
  The `beq` branch at 0x10062fe8 targets 0x1006301c, is taken when t1(?) == a5(?), and falls through when t1(?) != a5(?).
  The `beq` branch at 0x10062ff8 targets 0x1006301c, is taken when a4(?) >= a6(=[0x102c60a0]) (signed), and falls through when a4(?) < a6(=[0x102c60a0]) (signed).
  The `beq` branch at 0x10063004 targets 0x10063018, is taken when t3(?) == a5(?), and falls through when t3(?) != a5(?).
  The `bne` branch at 0x10063014 targets 0x10062fe4, is taken when a4(?) < a6(=[0x102c60a0]) (signed), and falls through when a4(?) >= a6(=[0x102c60a0]) (signed).
  The `beq` branch at 0x10063020 targets 0x100630f0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x10063034 targets 0x100630f4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x10063044 targets 0x10063078, is taken when t9(=[a0+120]) == 0, and falls through when t9(=[a0+120]) != 0.
  The `beq` branch at 0x10063068 targets 0x100630f0, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x100630d4 targets 0x100630f0, is taken when v0(=ret(TryClientEvents)) == 0, and falls through when v0(=ret(TryClientEvents)) != 0.
  The `beq` branch at 0x10063158 targets 0x10062f2c and is always taken.
  The `beq` branch at 0x10063168 targets 0x100630f0, is taken when v1(=[[0x102c609c]+12]) == 0, and falls through when v1(=[[0x102c609c]+12]) != 0.
  The `beq` branch at 0x10063170 targets 0x10063040 and is always taken.
  The `beq` branch at 0x10063180 targets 0x10062f2c and is always taken.
  The return at 0x10062f30 has v0 = one of 0x3, 0x5, 0x10.
  The return at 0x100630e8 has v0 = [a0+40].
  The return at 0x10063150 has v0 = [a0+40].
- `ProcGetBufferInfo..HKC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10063190 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10063190-0x10063a00 (2160 bytes).
  It occupies 2160 bytes.
  The `lw` at 0x100631ac loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x100631bc loads 4 bytes from [a0+8] +0x4.
  2 such `lw` accesses load 4 bytes from sym(panoramiXDisabled) +0x0, including `lw` at 0x100631d0, `lw` at 0x100634b8.
  The `lw` at 0x100631d4 loads 4 bytes from ret(SecurityLookupDrawable) +0x10.
  2 such `lh` accesses load 2 bytes from [ret(SecurityLookupDrawable)+16] +0x10, including `lh` at 0x100631e4, `lh` at 0x10063438.
  The `lw` at 0x100631f8 loads 4 bytes from [ret(SecurityLookupDrawable)+16] +0x14.
  85 such `lh` accesses load 2 bytes from ?, including `lh` at 0x10063210, `lh` at 0x10063238, `lh` at 0x1006323c.
  The `lw` at 0x100633c8 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x100633d4, `lw` at 0x1006354c.
  9 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100634c8, `lw` at 0x10063528, `lw` at 0x10063530.
  2 such `lw` accesses load 4 bytes from ret(nmbxLookupCapability) +0x8, including `lw` at 0x10063518, `lw` at 0x10063538.
  The `sw` at 0x10063534 stores 4 bytes to ?.
  The `sh` at 0x10063540 stores 2 bytes to ?.
  The `lbu` at 0x10063544 loads 1 byte from ?.
  7 such `sb` accesses store 1 byte to ?, including `sb` at 0x10063548, `sb` at 0x10063578, `sb` at 0x1006357c.
  The `lw` at 0x100635bc loads 4 bytes from sym(screenInfo) +0x44.
  The `lw` at 0x100636ac loads 4 bytes from a0 (arg0 at entry) +0x28.
  2 such `lw` accesses load 4 bytes from sym(PanoramiXNumDepths) +0x0, including `lw` at 0x10063730, `lw` at 0x100638f0.
  The `lw` at 0x10063738 loads 4 bytes from [ret(SecurityLookupDrawable)+16] +0x0.
  The `lw` at 0x10063754 loads 4 bytes from (([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths)) +0x0.
  The `jal` at 0x100631b8 calls SecurityLookupDrawable [0x101e03e0] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x10063504 calls nmbxLookupCapability [0x101ffee0] with a0=?, a1=?, a2=[0x102ca7e0], a3=?.
  The `jal` at 0x10063684 calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=0x20, a2=sp-64, a3=?.
  The `jal` at 0x10063698 calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100631c4 targets 0x100636ec, is taken when v0(=ret(SecurityLookupDrawable)) == 0, and falls through when v0(=ret(SecurityLookupDrawable)) != 0.
  The `beq` branch at 0x100631d8 targets 0x10063728, is taken when t8(=[sym(panoramiXDisabled)]) == 0, and falls through when t8(=[sym(panoramiXDisabled)]) != 0.
  The `blez` branch at 0x100631e8 targets 0x10063934, is taken when a4(=[[ret(SecurityLookupDrawable)+16]+16]:2) <= 0 (signed), and falls through when a4(=[[ret(SecurityLookupDrawable)+16]+16]:2) > 0 (signed).
  The `beq` branch at 0x10063204 targets 0x10063220, is taken when (a4(=[[ret(SecurityLookupDrawable)+16]+16]:2) & 0x7) == 0, and falls through when (a4(=[[ret(SecurityLookupDrawable)+16]+16]:2) & 0x7) != 0.
  The `bne` branch at 0x10063218 targets 0x1006320c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x10063224 targets 0x1006339c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x1006322c targets 0x100639b0, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x100632c0 targets 0x100636bc, is taken when t9(?) == t0(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))-128), and falls through when t9(?) != t0(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))-128).
  The `bne` branch at 0x10063308 targets 0x10063280, is taken when t8(?) != t0(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))-128), and falls through when t8(?) == t0(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))-128).
  The `beq` branch at 0x100633b4 targets 0x10063708, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `beq` branch at 0x100633d8 targets 0x1006342c, is taken when t1(=[a0+16]) == 0, and falls through when t1(=[a0+16]) != 0.
  The `beq` branch at 0x1006342c targets 0x100638ec, is taken when t8(=[sym(panoramiXDisabled)]) == 0, and falls through when t8(=[sym(panoramiXDisabled)]) != 0.
  The `blez` branch at 0x1006343c targets 0x1006393c, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0x10063494 targets 0x100634b4 and is always taken.
  The `beq` branch at 0x100634ac targets 0x10063648, is taken when a6(?) == a7(?), and falls through when a6(?) != a7(?).
  The `beq` branch at 0x100634bc targets 0x10063634, is taken when t0(=[sym(panoramiXDisabled)]) == 0, and falls through when t0(=[sym(panoramiXDisabled)]) != 0.
  The `blez` branch at 0x100634d4 targets 0x100634a0, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x100634dc targets 0x100635bc and is always taken.
  The `beq` branch at 0x10063510 targets 0x100635a8, is taken when v0(=ret(nmbxLookupCapability)) == 0, and falls through when v0(=ret(nmbxLookupCapability)) != 0.
  The `bne` branch at 0x10063520 targets 0x100635a8, is taken when t9(=[ret(nmbxLookupCapability)+8]) < 0x2 (unsigned), and falls through when t9(=[ret(nmbxLookupCapability)+8]) >= 0x2 (unsigned).
  The `beq` branch at 0x1006356c targets 0x100635a4, is taken when ra(=[a0+16]) == 0, and falls through when ra(=[a0+16]) != 0.
  The `beq` branch at 0x100635b4 targets 0x100634a0, is taken when s2(?) >= t8(?) (signed), and falls through when s2(?) < t8(?) (signed).
  The `beq` branch at 0x100635cc targets 0x100634f8, is taken when t1(=[0x102cabb8]) >= a3(=[sym(screenInfo)+68]) (signed), and falls through when t1(=[0x102cabb8]) < a3(=[sym(screenInfo)+68]) (signed).
  The `blez` branch at 0x100635f8 targets 0x10063624, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x10063614 targets 0x100634f0, is taken when t0(?) == a5(?), and falls through when t0(?) != a5(?).
  The `bne` branch at 0x1006361c targets 0x10063610, is taken when a3(?) != a6(?), and falls through when a3(?) == a6(?).
  The `bne` branch at 0x10063624 targets 0x100635e8, is taken when a7(?) != t8(=(([sym(screenInfo)+68] << 0x2) + sym(screenInfo))), and falls through when a7(?) == t8(=(([sym(screenInfo)+68] << 0x2) + sym(screenInfo))).
  The `beq` branch at 0x1006362c targets 0x100634fc and is always taken.
  The `beq` branch at 0x10063640 targets 0x100634d0 and is always taken.
  The `beq` branch at 0x100636e4 targets 0x10063348 and is always taken.
  The `blez` branch at 0x1006373c targets 0x1006394c, is taken when a4(=[sym(PanoramiXNumDepths)]) <= 0 (signed), and falls through when a4(=[sym(PanoramiXNumDepths)]) > 0 (signed).
  The `beq` branch at 0x10063760 targets 0x1006377c, is taken when (a4(=[sym(PanoramiXNumDepths)]) & 0x7) == 0, and falls through when (a4(=[sym(PanoramiXNumDepths)]) & 0x7) != 0.
  The `bne` branch at 0x10063774 targets 0x10063768, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x10063780 targets 0x100638e4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x10063788 targets 0x10063958, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1006380c targets 0x100638f4, is taken when t9(?) == t0(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])-128), and falls through when t9(?) != t0(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])-128).
  The `bne` branch at 0x10063854 targets 0x100637cc, is taken when t8(?) != t0(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])-128), and falls through when t8(?) == t0(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])-128).
  The `beq` branch at 0x100638e4 targets 0x100633a4 and is always taken.
  The `beq` branch at 0x100638ec targets 0x1006343c and is always taken.
  The `beq` branch at 0x1006392c targets 0x10063890 and is always taken.
  The `beq` branch at 0x10063934 targets 0x1006339c and is always taken.
  The `beq` branch at 0x10063944 targets 0x10063660 and is always taken.
  The `beq` branch at 0x10063950 targets 0x100633a0 and is always taken.
  The `bne` branch at 0x1006399c targets 0x1006395c, is taken when a2(?) != t2(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])), and falls through when a2(?) == t2(=(([sym(PanoramiXNumDepths)] << 0x3) + [(([[ret(SecurityLookupDrawable)+16]] << 0x2) + sym(PanoramiXDepths))])).
  The `beq` branch at 0x100639a8 targets 0x100638e4 and is always taken.
  The `beq` branch at 0x100639f0 targets 0x1006339c, is taken when a2(?) == a5(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))), and falls through when a2(?) != a5(=([[ret(SecurityLookupDrawable)+16]+20] + ([[ret(SecurityLookupDrawable)+16]+16]:2 << 0x3))).
  The `beq` branch at 0x100639f8 targets 0x100639b0 and is always taken.
  The return at 0x100636b4 has v0 = [a0+40].
  The return at 0x10063700 has v0 = 0x9.
  The return at 0x10063720 has v0 = 0xb.
  The instructions from 0x1006349c to 0x1006349c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100634e4 to 0x100634ec are not reached by any path from the entry, and their branches are not listed.
- `XETSwCopyArea` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10063a00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10063a00-0x10063ad4 (212 bytes).
  It occupies 212 bytes.
  The `lbu` at 0x10063a00 loads 1 byte from a0 (arg0 at entry) +0xf.
  The `lbu` at 0x10063a04 loads 1 byte from a0 (arg0 at entry) +0xc.
  The `lbu` at 0x10063a08 loads 1 byte from a0 (arg0 at entry) +0xe.
  The `lbu` at 0x10063a0c loads 1 byte from a0 (arg0 at entry) +0xd.
  The `lbu` at 0x10063a10 loads 1 byte from a0 (arg0 at entry) +0x11.
  The `lbu` at 0x10063a14 loads 1 byte from a0 (arg0 at entry) +0x10.
  The `sb` at 0x10063a18 stores 1 byte to a0 (arg0 at entry) +0x11.
  The `sb` at 0x10063a1c stores 1 byte to a0 (arg0 at entry) +0x10.
  The `sb` at 0x10063a20 stores 1 byte to a0 (arg0 at entry) +0xe.
  The `sb` at 0x10063a24 stores 1 byte to a0 (arg0 at entry) +0xd.
  The `sb` at 0x10063a28 stores 1 byte to a0 (arg0 at entry) +0xf.
  The `sb` at 0x10063a2c stores 1 byte to a0 (arg0 at entry) +0xc.
  The `lbu` at 0x10063a30 loads 1 byte from a0 (arg0 at entry) +0x1a.
  The `lbu` at 0x10063a34 loads 1 byte from a0 (arg0 at entry) +0x1b.
  The `lbu` at 0x10063a38 loads 1 byte from a0 (arg0 at entry) +0x18.
  The `lbu` at 0x10063a3c loads 1 byte from a0 (arg0 at entry) +0x19.
  The `lbu` at 0x10063a40 loads 1 byte from a0 (arg0 at entry) +0x16.
  The `lbu` at 0x10063a44 loads 1 byte from a0 (arg0 at entry) +0x17.
  The `lbu` at 0x10063a48 loads 1 byte from a0 (arg0 at entry) +0x14.
  The `lbu` at 0x10063a4c loads 1 byte from a0 (arg0 at entry) +0x15.
  The `lbu` at 0x10063a50 loads 1 byte from a0 (arg0 at entry) +0x12.
  The `lbu` at 0x10063a54 loads 1 byte from a0 (arg0 at entry) +0x13.
  The `sb` at 0x10063a58 stores 1 byte to a0 (arg0 at entry) +0x12.
  The `lbu` at 0x10063a5c loads 1 byte from a0 (arg0 at entry) +0x3.
  The `sb` at 0x10063a60 stores 1 byte to a0 (arg0 at entry) +0x13.
  The `lbu` at 0x10063a64 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0x10063a68 stores 1 byte to a0 (arg0 at entry) +0x14.
  The `lbu` at 0x10063a6c loads 1 byte from a0 (arg0 at entry) +0x7.
  The `sb` at 0x10063a70 stores 1 byte to a0 (arg0 at entry) +0x15.
  The `lbu` at 0x10063a74 loads 1 byte from a0 (arg0 at entry) +0x4.
  The `sb` at 0x10063a78 stores 1 byte to a0 (arg0 at entry) +0x16.
  The `lbu` at 0x10063a7c loads 1 byte from a0 (arg0 at entry) +0x6.
  The `sb` at 0x10063a80 stores 1 byte to a0 (arg0 at entry) +0x17.
  The `lbu` at 0x10063a84 loads 1 byte from a0 (arg0 at entry) +0x5.
  The `sb` at 0x10063a88 stores 1 byte to a0 (arg0 at entry) +0x18.
  The `lbu` at 0x10063a8c loads 1 byte from a0 (arg0 at entry) +0xb.
  The `sb` at 0x10063a90 stores 1 byte to a0 (arg0 at entry) +0x19.
  The `lbu` at 0x10063a94 loads 1 byte from a0 (arg0 at entry) +0x8.
  The `sb` at 0x10063a98 stores 1 byte to a0 (arg0 at entry) +0x1a.
  The `lbu` at 0x10063a9c loads 1 byte from a0 (arg0 at entry) +0xa.
  The `sb` at 0x10063aa0 stores 1 byte to a0 (arg0 at entry) +0x1b.
  The `lbu` at 0x10063aa4 loads 1 byte from a0 (arg0 at entry) +0x9.
  The `sb` at 0x10063aa8 stores 1 byte to a0 (arg0 at entry) +0xa.
  The `sb` at 0x10063aac stores 1 byte to a0 (arg0 at entry) +0x9.
  The `sb` at 0x10063ab0 stores 1 byte to a0 (arg0 at entry) +0xb.
  The `sb` at 0x10063ab4 stores 1 byte to a0 (arg0 at entry) +0x8.
  The `sb` at 0x10063ab8 stores 1 byte to a0 (arg0 at entry) +0x6.
  The `sb` at 0x10063abc stores 1 byte to a0 (arg0 at entry) +0x5.
  The `sb` at 0x10063ac0 stores 1 byte to a0 (arg0 at entry) +0x7.
  The `sb` at 0x10063ac4 stores 1 byte to a0 (arg0 at entry) +0x4.
  The `sb` at 0x10063ac8 stores 1 byte to a0 (arg0 at entry) +0x3.
  The `sb` at 0x10063ad0 stores 1 byte to a0 (arg0 at entry) +0x2.
  The return at 0x10063acc has v0 = [a0+2]:1.
- `GetTimeInMillis` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10063bd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10063bd0-0x10063c0c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0x10063be8 calls times with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10063c04 has v0 = (((ret(times) << 0x2) + ret(times)) << 0x1).
- `SProcSGIvcQueryGammaColors..GHG` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10063c10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10063c10-0x10063ca0 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0x10063c10 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x10063c14 loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x10063c18 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x10063c1c stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x10063c20 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x10063c24 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x10063c3c loads 1 byte from [a0+8] +0xd.
  The `lbu` at 0x10063c40 loads 1 byte from [a0+8] +0xe.
  The `lbu` at 0x10063c44 loads 1 byte from [a0+8] +0xc.
  The `lbu` at 0x10063c48 loads 1 byte from [a0+8] +0xf.
  The `lbu` at 0x10063c4c loads 1 byte from [a0+8] +0x9.
  The `lbu` at 0x10063c50 loads 1 byte from [a0+8] +0xa.
  The `lbu` at 0x10063c54 loads 1 byte from [a0+8] +0x8.
  The `lbu` at 0x10063c58 loads 1 byte from [a0+8] +0xb.
  The `lbu` at 0x10063c5c loads 1 byte from [a0+8] +0x5.
  The `lbu` at 0x10063c60 loads 1 byte from [a0+8] +0x6.
  The `lbu` at 0x10063c64 loads 1 byte from [a0+8] +0x4.
  The `lbu` at 0x10063c68 loads 1 byte from [a0+8] +0x7.
  The `sb` at 0x10063c6c stores 1 byte to [a0+8] +0x4.
  The `sb` at 0x10063c70 stores 1 byte to [a0+8] +0x7.
  The `sb` at 0x10063c74 stores 1 byte to [a0+8] +0x5.
  The `sb` at 0x10063c78 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x10063c7c stores 1 byte to [a0+8] +0x8.
  The `sb` at 0x10063c80 stores 1 byte to [a0+8] +0xb.
  The `sb` at 0x10063c84 stores 1 byte to [a0+8] +0x9.
  The `sb` at 0x10063c88 stores 1 byte to [a0+8] +0xa.
  The `sb` at 0x10063c8c stores 1 byte to [a0+8] +0xc.
  The `sb` at 0x10063c90 stores 1 byte to [a0+8] +0xf.
  The `sb` at 0x10063c94 stores 1 byte to [a0+8] +0xd.
  The `sb` at 0x10063c9c stores 1 byte to [a0+8] +0xe.
  Calls ProcSGIvcQueryGammaColors [0x101fa360] via direct with a0=a0 at entry (arg0), a1=[[a0+8]+3]:1, a2=[a0+8], a3=[[a0+8]+13]:1, a4=[[a0+8]+14]:1, a5=[[a0+8]+12]:1, a6=[[a0+8]+15]:1, a7=[[a0+8]+9]:1 (`j` at 0x10063c98).
  The `beq` branch at 0x10063c2c targets 0x10063c3c, is taken when at(=[a0+72]) == v0(=0x4), and falls through when at(=[a0+72]) != v0(=0x4).
  The return at 0x10063c34 has v0 = 0x10.
- `sgiCapCloseScreen..JAE` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10063ca0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10063ca0-0x10063d84 (228 bytes).
  It occupies 228 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x1b4, including `lw` at 0x10063cb4, `lw` at 0x10063d50.
  The `lw` at 0x10063cc0 loads 4 bytes from ([a1+436] + ([0x102cf2c4] << 0x2)) +0x0.
  The `lw` at 0x10063cc4 loads 4 bytes from [([a1+436] + ([0x102cf2c4] << 0x2))] +0x0.
  The `sw` at 0x10063cc8 stores 4 bytes to a1 (arg1 at entry) +0x98.
  The `lw` at 0x10063ccc loads 4 bytes from [([a1+436] + ([0x102cf2c4] << 0x2))] +0x4.
  The `sw` at 0x10063cd0 stores 4 bytes to a1 (arg1 at entry) +0x130.
  The `lw` at 0x10063cd4 loads 4 bytes from [([a1+436] + ([0x102cf2c4] << 0x2))] +0x8.
  The `sw` at 0x10063cd8 stores 4 bytes to a1 (arg1 at entry) +0x13c.
  The `lw` at 0x10063cdc loads 4 bytes from [([a1+436] + ([0x102cf2c4] << 0x2))] +0xc.
  The `sw` at 0x10063ce0 stores 4 bytes to a1 (arg1 at entry) +0x148.
  The `lw` at 0x10063ce4 loads 4 bytes from [([a1+436] + ([0x102cf2c4] << 0x2))] +0x10.
  The `sw` at 0x10063ce8 stores 4 bytes to a1 (arg1 at entry) +0xcc.
  The `lw` at 0x10063cec loads 4 bytes from [([a1+436] + ([0x102cf2c4] << 0x2))] +0x14.
  The `sw` at 0x10063cf0 stores 4 bytes to a1 (arg1 at entry) +0xd8.
  The `lw` at 0x10063cf4 loads 4 bytes from [([a1+436] + ([0x102cf2c4] << 0x2))] +0x18.
  The `sw` at 0x10063cf8 stores 4 bytes to a1 (arg1 at entry) +0xdc.
  The `lw` at 0x10063cfc loads 4 bytes from [([a1+436] + ([0x102cf2c4] << 0x2))] +0x1c.
  The `sw` at 0x10063d00 stores 4 bytes to a1 (arg1 at entry) +0xe0.
  The `lw` at 0x10063d04 loads 4 bytes from [([a1+436] + ([0x102cf2c4] << 0x2))] +0x20.
  The `sw` at 0x10063d08 stores 4 bytes to a1 (arg1 at entry) +0xe4.
  The `lw` at 0x10063d0c loads 4 bytes from [([a1+436] + ([0x102cf2c4] << 0x2))] +0x24.
  The `sw` at 0x10063d10 stores 4 bytes to a1 (arg1 at entry) +0xf8.
  The `lw` at 0x10063d14 loads 4 bytes from [([a1+436] + ([0x102cf2c4] << 0x2))] +0x38.
  The `lw` at 0x10063d2c loads 4 bytes from a1 (arg1 at entry) +0x15c.
  The `sw` at 0x10063d5c stores 4 bytes to ([a1+436] + ([0x102cf2c4] << 0x2)) +0x0.
  The `lw` at 0x10063d60 loads 4 bytes from a1 (arg1 at entry) +0x98.
  The `jalr` at 0x10063d34 calls (unknown callee) with a0=[[([a1+436] + ([0x102cf2c4] << 0x2))]+56], a1=a1 at entry (arg1), a2=[[([a1+436] + ([0x102cf2c4] << 0x2))]+24], a3=[[([a1+436] + ([0x102cf2c4] << 0x2))]+56], a4=[([a1+436] + ([0x102cf2c4] << 0x2))], a5=[[([a1+436] + ([0x102cf2c4] << 0x2))]+16], a6=[[([a1+436] + ([0x102cf2c4] << 0x2))]+12], a7=[[([a1+436] + ([0x102cf2c4] << 0x2))]+8].
  The `jal` at 0x10063d44 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10063d68 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a7=([a1+436] + ([0x102cf2c4] << 0x2)).
  The `beq` branch at 0x10063d24 targets 0x10063d40, is taken when a3(=[[([a1+436] + ([0x102cf2c4] << 0x2))]+56]) == 0, and falls through when a3(=[[([a1+436] + ([0x102cf2c4] << 0x2))]+56]) != 0.
  The return at 0x10063d7c has v0 = ret(?).
- `ShmRegisterFuncs` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10063d90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10063d90-0x10063db0 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0x10063d90 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x10063dac stores 4 bytes to table(0x102caa00) +0x0.
  The return at 0x10063da8 has v0 = table(0x102c5d40).
- `LbxFreeOsBuffers` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10063db0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10063db0-0x10063f24 (372 bytes).
  It occupies 372 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x45c, including `lw` at 0x10063db8, `lw` at 0x10063ea8.
  2 such `lw` accesses load 4 bytes from table(0x102c71c0) +0x0, including `lw` at 0x10063df8, `lw` at 0x10063e60.
  6 such `lw` accesses load 4 bytes from sym(__us_rsthread_malloc) +0x0, including `lw` at 0x10063e00, `lw` at 0x10063e18, `lw` at 0x10063e40.
  2 such `sw` accesses store 4 bytes to table(0x102c71c0) +0x0, including `sw` at 0x10063e1c, `sw` at 0x10063e84.
  2 such `lw` accesses load 4 bytes from [a0+1116] +0x0, including `lw` at 0x10063ec0, `lw` at 0x10063f20.
  The `sw` at 0x10063ec4 stores 4 bytes to a0 (arg0 at entry) +0x45c.
  The `lw` at 0x10063ec8 loads 4 bytes from [a0+1116] +0x8.
  The `jalr` at 0x10063de4 calls __libc_lockmalloc with a0=?, a1=?, a2=[sym(__us_rsthread_malloc)], a3=?, a5=[[a0+1116]].
  The `jal` at 0x10063e04 calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x10063e38 calls __libc_unlockmalloc with a0=?, a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x10063e4c calls __libc_lockmalloc with a0=?, a1=?, a2=?, a3=?, a5=[sym(__us_rsthread_malloc)].
  The `jal` at 0x10063e6c calls realfree..NL [0x1025db70] with a0=entry(0x102c71c0), a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)].
  The `jalr` at 0x10063ea0 calls __libc_unlockmalloc with a0=?, a1=?, a2=table(0x102c5d40), a3=[0x102c7240], a5=[sym(__us_rsthread_malloc)].
  The `beq` branch at 0x10063dc0 targets 0x10063efc, is taken when s0(=[a0+1116]) == 0, and falls through when s0(=[a0+1116]) != 0.
  The `beq` branch at 0x10063ddc targets 0x10063f0c and is always taken.
  The `beq` branch at 0x10063dfc targets 0x10063e1c, is taken when a0(=entry(0x102c71c0)) == 0, and falls through when a0(=entry(0x102c71c0)) != 0.
  The `beq` branch at 0x10063e2c targets 0x10063e40, is taken when a5(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10063e44 targets 0x10063e54, is taken when a5(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10063e64 targets 0x10063e84, is taken when a0(=entry(0x102c71c0)) == 0, and falls through when a0(=entry(0x102c71c0)) != 0.
  The `beq` branch at 0x10063e94 targets 0x10063ea8, is taken when a5(=[sym(__us_rsthread_malloc)]) == 0, and falls through when a5(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10063eb8 targets 0x10063ee4, is taken when s0(=[a0+1116]) == 0, and falls through when s0(=[a0+1116]) != 0.
  The `beq` branch at 0x10063ecc targets 0x10063e40, is taken when s2(=[[a0+1116]+8]) == 0, and falls through when s2(=[[a0+1116]+8]) != 0.
  The `bne` branch at 0x10063ed4 targets 0x10063de4, is taken when a2(=[sym(__us_rsthread_malloc)]) != 0, and falls through when a2(=[sym(__us_rsthread_malloc)]) == 0.
  The `beq` branch at 0x10063edc targets 0x10063df0 and is always taken.
  The `beq` branch at 0x10063f1c targets 0x10063ec4 and is always taken.
  The return at 0x10063f04 has v0 = ?.
- `SProcXineramaCreateWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100640a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100640a0-0x1006499c (2300 bytes).
  It occupies 2300 bytes.
  The `lw` at 0x100640a0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x100640a4 loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x100640a8 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x100640ac stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x100640b0 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x100640b4 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x100640d4 loads 1 byte from [a0+8] +0x12.
  The `lbu` at 0x100640f8 loads 1 byte from [a0+8] +0x7.
  The `lbu` at 0x100640fc loads 1 byte from [a0+8] +0x4.
  The `sb` at 0x10064100 stores 1 byte to [a0+8] +0x7.
  The `lbu` at 0x10064104 loads 1 byte from [a0+8] +0x13.
  The `sb` at 0x10064108 stores 1 byte to [a0+8] +0x13.
  The `sb` at 0x1006410c stores 1 byte to [a0+8] +0x4.
  The `lbu` at 0x10064110 loads 1 byte from [a0+8] +0x1e.
  The `lbu` at 0x10064114 loads 1 byte from [a0+8] +0x1d.
  The `lbu` at 0x10064118 loads 1 byte from [a0+8] +0x1c.
  The `lbu` at 0x1006411c loads 1 byte from [a0+8] +0x1f.
  The `lbu` at 0x10064120 loads 1 byte from [a0+8] +0x18.
  The `lbu` at 0x10064124 loads 1 byte from [a0+8] +0x1b.
  The `sb` at 0x10064128 stores 1 byte to [a0+8] +0x18.
  The `lbu` at 0x1006412c loads 1 byte from [a0+8] +0xa.
  The `sb` at 0x10064130 stores 1 byte to [a0+8] +0x1b.
  The `lbu` at 0x10064134 loads 1 byte from [a0+8] +0x9.
  The `sb` at 0x10064138 stores 1 byte to [a0+8] +0x1c.
  The `lbu` at 0x1006413c loads 1 byte from [a0+8] +0xf.
  The `sb` at 0x10064140 stores 1 byte to [a0+8] +0x1f.
  The `lbu` at 0x10064144 loads 1 byte from [a0+8] +0xe.
  The `sb` at 0x10064148 stores 1 byte to [a0+8] +0x1e.
  The `lbu` at 0x1006414c loads 1 byte from [a0+8] +0x10.
  The `sb` at 0x10064150 stores 1 byte to [a0+8] +0x1d.
  The `lbu` at 0x10064154 loads 1 byte from [a0+8] +0x11.
  The `sb` at 0x10064158 stores 1 byte to [a0+8] +0x10.
  The `sb` at 0x1006415c stores 1 byte to [a0+8] +0xf.
  The `lbu` at 0x10064160 loads 1 byte from [a0+8] +0x1a.
  The `lbu` at 0x10064164 loads 1 byte from [a0+8] +0x19.
  The `sb` at 0x10064168 stores 1 byte to [a0+8] +0x19.
  The `lbu` at 0x1006416c loads 1 byte from [a0+8] +0xd.
  The `sb` at 0x10064170 stores 1 byte to [a0+8] +0x1a.
  The `lbu` at 0x10064174 loads 1 byte from [a0+8] +0xc.
  The `sb` at 0x10064178 stores 1 byte to [a0+8] +0xc.
  The `sb` at 0x1006417c stores 1 byte to [a0+8] +0xa.
  The `sb` at 0x10064180 stores 1 byte to [a0+8] +0x9.
  The `lbu` at 0x10064184 loads 1 byte from [a0+8] +0x16.
  The `lbu` at 0x10064188 loads 1 byte from [a0+8] +0x17.
  The `sb` at 0x1006418c stores 1 byte to [a0+8] +0x17.
  The `lbu` at 0x10064190 loads 1 byte from [a0+8] +0x8.
  The `sb` at 0x10064194 stores 1 byte to [a0+8] +0x16.
  The `lbu` at 0x10064198 loads 1 byte from [a0+8] +0xb.
  The `sb` at 0x1006419c stores 1 byte to [a0+8] +0xb.
  The `sb` at 0x100641a0 stores 1 byte to [a0+8] +0x11.
  The `sb` at 0x100641a4 stores 1 byte to [a0+8] +0xe.
  The `lbu` at 0x100641a8 loads 1 byte from [a0+8] +0x14.
  The `lbu` at 0x100641ac loads 1 byte from [a0+8] +0x15.
  The `sb` at 0x100641b0 stores 1 byte to [a0+8] +0x15.
  The `lbu` at 0x100641b4 loads 1 byte from [a0+8] +0x5.
  The `sb` at 0x100641b8 stores 1 byte to [a0+8] +0x8.
  The `sb` at 0x100641bc stores 1 byte to [a0+8] +0x14.
  The `lhu` at 0x100641c0 loads 2 bytes from [a0+8] +0x2.
  The `lbu` at 0x100641c4 loads 1 byte from [a0+8] +0x6.
  The `sb` at 0x100641cc stores 1 byte to [a0+8] +0xd.
  The `sb` at 0x100641d4 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x100641e4 stores 1 byte to [a0+8] +0x12.
  The `sb` at 0x100641ec stores 1 byte to [a0+8] +0x5.
  The `lbu` at 0x10064208 loads 1 byte from [a0+8] +0x43.
  The `lbu` at 0x1006420c loads 1 byte from [a0+8] +0x3d.
  The `lbu` at 0x10064210 loads 1 byte from [a0+8] +0x23.
  The `lbu` at 0x10064214 loads 1 byte from [a0+8] +0x20.
  The `sb` at 0x1006421c stores 1 byte to [a0+8] +0x23.
  The `sb` at 0x10064224 stores 1 byte to [a0+8] +0x20.
  204 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10064230, `lbu` at 0x1006423c, `lbu` at 0x10064240.
  206 such `sb` accesses store 1 byte to ?, including `sb` at 0x10064234, `sb` at 0x10064238, `sb` at 0x10064244.
  The `lw` at 0x10064820 loads 4 bytes from sym(ProcXineramaVector) +0x4.
  The `jalr` at 0x10064824 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100640d8 targets 0x100640f4, is taken when v0(=[a0+72]) >= 0x8 (unsigned), and falls through when v0(=[a0+72]) < 0x8 (unsigned).
  The `bne` branch at 0x100641f0 targets 0x10064760, is taken when t3(=[[a0+8]+2]:2-8) < 0x8 (unsigned), and falls through when t3(=[[a0+8]+2]:2-8) >= 0x8 (unsigned).
  The `bne` branch at 0x100641f8 targets 0x1006485c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x10064200 targets 0x1006485c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x1006433c targets 0x10064854, is taken when a1(?) < 0x8 (unsigned), and falls through when a1(?) >= 0x8 (unsigned).
  The `bne` branch at 0x10064450 targets 0x10064844, is taken when a1(?) < 0x8 (unsigned), and falls through when a1(?) >= 0x8 (unsigned).
  The `beq` branch at 0x10064564 targets 0x10064230, is taken when a1(?) >= 0x8 (unsigned), and falls through when a1(?) < 0x8 (unsigned).
  The `beq` branch at 0x10064774 targets 0x1006481c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x1006477c targets 0x10064788, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x10064794 targets 0x10064978, is taken when t2(?) < 0x2 (signed), and falls through when t2(?) >= 0x2 (signed).
  The `beq` branch at 0x100647e4 targets 0x1006483c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x10064810 targets 0x100647c0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x1006483c targets 0x10064818 and is always taken.
  The `beq` branch at 0x1006484c targets 0x10064570 and is always taken.
  The `beq` branch at 0x10064854 targets 0x10064570 and is always taken.
  The `bne` branch at 0x10064968 targets 0x10064760, is taken when t3(?) < 0x8 (unsigned), and falls through when t3(?) >= 0x8 (unsigned).
  The `beq` branch at 0x10064970 targets 0x1006485c and is always taken.
  The `beq` branch at 0x10064994 targets 0x1006481c and is always taken.
  The return at 0x100640ec has v0 = 0x10.
  The return at 0x10064834 has v0 = ret(?).
- `SGetPointerControlReply` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100649a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100649a0-0x10064a0c (108 bytes).
  It occupies 108 bytes.
  The `lbu` at 0x100649a0 loads 1 byte from a2 (arg2 at entry) +0xc.
  The `lbu` at 0x100649a4 loads 1 byte from a2 (arg2 at entry) +0xd.
  The `lbu` at 0x100649a8 loads 1 byte from a2 (arg2 at entry) +0xa.
  The `lbu` at 0x100649ac loads 1 byte from a2 (arg2 at entry) +0xb.
  The `lbu` at 0x100649b0 loads 1 byte from a2 (arg2 at entry) +0x8.
  The `lbu` at 0x100649b4 loads 1 byte from a2 (arg2 at entry) +0x9.
  The `lbu` at 0x100649b8 loads 1 byte from a2 (arg2 at entry) +0x2.
  The `lbu` at 0x100649bc loads 1 byte from a2 (arg2 at entry) +0x3.
  The `sb` at 0x100649c0 stores 1 byte to a2 (arg2 at entry) +0x2.
  The `sb` at 0x100649c4 stores 1 byte to a2 (arg2 at entry) +0x3.
  The `sb` at 0x100649c8 stores 1 byte to a2 (arg2 at entry) +0x8.
  The `sb` at 0x100649cc stores 1 byte to a2 (arg2 at entry) +0x9.
  The `sb` at 0x100649d0 stores 1 byte to a2 (arg2 at entry) +0xa.
  The `sb` at 0x100649d4 stores 1 byte to a2 (arg2 at entry) +0xb.
  The `sb` at 0x100649ec stores 1 byte to a2 (arg2 at entry) +0xc.
  The `sb` at 0x100649f8 stores 1 byte to a2 (arg2 at entry) +0xd.
  The `jal` at 0x100649f4 calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a2+13]:1, a4=[a2+10]:1, a5=[a2+11]:1, a6=[a2+8]:1, a7=[a2+9]:1.
  The return at 0x10064a04 has v0 = ret(WriteToClient).
- `UpdateCurrentTime` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10064a10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10064a10-0x10064b04 (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0x10064a20 loads 4 bytes from sym(currentTime) +0x0.
  The `lw` at 0x10064a50 loads 4 bytes from sym(currentTime) +0x4.
  The `lw` at 0x10064a54 loads 4 bytes from sym(checkForInput) +0x0.
  The `lw` at 0x10064a58 loads 4 bytes from sym(checkForInput) +0x4.
  The `lw` at 0x10064a60 loads 4 bytes from [sym(checkForInput)] +0x0.
  The `lw` at 0x10064a6c loads 4 bytes from [sym(checkForInput)+4] +0x0.
  The `ld` at 0x10064a7c loads 8 bytes from sym(currentTime) +0x0.
  The `sw` at 0x10064acc stores 4 bytes to sym(currentTime) +0x4.
  The `sw` at 0x10064adc stores 4 bytes to sym(currentTime) +0x0.
  The `jalr` at 0x10064a2c calls times with a0=sp-56, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10064af0 calls ProcessInputEvents [0x100e9680] with a0=?, a1=?, a2=[sym(checkForInput)], a3=[sym(checkForInput)+4], a4=sym(currentTime), a5=(((ret(times) << 0x2) + ret(times)) << 0x1), a6=[sym(currentTime)]:8.
  The `beq` branch at 0x10064a68 targets 0x10064a78, is taken when a5(=(((ret(times) << 0x2) + ret(times)) << 0x1)) >= v0(=[sym(currentTime)+4]) (unsigned), and falls through when a5(=(((ret(times) << 0x2) + ret(times)) << 0x1)) < v0(=[sym(currentTime)+4]) (unsigned).
  The `bne` branch at 0x10064a78 targets 0x10064aec, is taken when t0(=[[sym(checkForInput)]]) != t1(=[[sym(checkForInput)+4]]), and falls through when t0(=[[sym(checkForInput)]]) == t1(=[[sym(checkForInput)+4]]).
  The `bne` branch at 0x10064aa8 targets 0x10064ae0, is taken when t1(?) < a1(?) (unsigned), and falls through when t1(?) >= a1(?) (unsigned).
  The `bne` branch at 0x10064ab0 targets 0x10064acc, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x10064abc targets 0x10064ae0, is taken when a3(?) < a1(?) (unsigned), and falls through when a3(?) >= a1(?) (unsigned).
  The `beq` branch at 0x10064ac4 targets 0x10064ae0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10064afc targets 0x10064a7c and is always taken.
  The return at 0x10064ad8 has v0 = ?.
  The return at 0x10064ae4 has v0 = ?.
- `_CallCallbacks..DF` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10064b10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10064b10-0x10064c68 (344 bytes).
  It occupies 344 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10064b24, `lw` at 0x10064b98.
  3 such `lw` accesses load 4 bytes from [a0] +0x1c, including `lw` at 0x10064b2c, `lw` at 0x10064bdc, `lw` at 0x10064c3c.
  2 such `lw` accesses load 4 bytes from [a0] +0x10, including `lw` at 0x10064b38, `lw` at 0x10064b74.
  2 such `sw` accesses store 4 bytes to [a0] +0x10, including `sw` at 0x10064b50, `sw` at 0x10064b7c.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10064b54, `lw` at 0x10064b5c, `lw` at 0x10064b68.
  The `lw` at 0x10064b84 loads 4 bytes from [a0] +0x14.
  The `lw` at 0x10064ba4 loads 4 bytes from [a0] +0xc.
  2 such `lw` accesses load 4 bytes from [a0] +0x18, including `lw` at 0x10064bd0, `lw` at 0x10064c04.
  The `lw` at 0x10064bec loads 4 bytes from [[a0]+28] +0x8.
  The `sw` at 0x10064c00 stores 4 bytes to ?.
  The `sw` at 0x10064c10 stores 4 bytes to [a0] +0x18.
  The `sw` at 0x10064c44 stores 4 bytes to [a0] +0x1c.
  The `jalr` at 0x10064b60 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x10064ba8 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0], a2=?, a3=?.
  The `jal` at 0x10064bf8 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10064c38 calls Xfree [0x101fc9c0] with a0=[[a0]+28], a1=?, a2=?, a3=?.
  The `beq` branch at 0x10064b4c targets 0x10064b78, is taken when s0(=[[a0]+28]) == 0, and falls through when s0(=[[a0]+28]) != 0.
  The `bne` branch at 0x10064b6c targets 0x10064b54, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bne` branch at 0x10064b80 targets 0x10064bb0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x10064b88 targets 0x10064bd0, is taken when a0(=[[a0]+20]) == 0, and falls through when a0(=[[a0]+20]) != 0.
  The `beq` branch at 0x10064b90 targets 0x10064bb4, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0x10064b9c targets 0x10064bb4, is taken when a1(=[a0]) == 0, and falls through when a1(=[a0]) != 0.
  The `beq` branch at 0x10064bd8 targets 0x10064bb0, is taken when a0(=[[a0]+24]) == 0, and falls through when a0(=[[a0]+24]) != 0.
  The `beq` branch at 0x10064be0 targets 0x10064bb0, is taken when s0(=[[a0]+28]) == 0, and falls through when s0(=[[a0]+28]) != 0.
  The `beq` branch at 0x10064be8 targets 0x10064c20 and is always taken.
  The `beq` branch at 0x10064c0c targets 0x10064bb0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x10064c14 targets 0x10064bb0, is taken when a0(=[[a0]+24]-1) == 0, and falls through when a0(=[[a0]+24]-1) != 0.
  The `beq` branch at 0x10064c20 targets 0x10064c48, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x10064c28 targets 0x10064bf0, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x10064c40 targets 0x10064c04 and is always taken.
  The `beq` branch at 0x10064c50 targets 0x10064bb0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x10064c58 targets 0x10064c1c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x10064c60 targets 0x10064bb4 and is always taken.
  The return at 0x10064bc8 has v0 = ?.
- `AccessClearToBackground` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10064c70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10064c70-0x10064db8 (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0x10064c70 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10064c78 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10064ccc loads 4 bytes from [a0+8] +0x4.
  The `lbu` at 0x10064ce0 loads 1 byte from ret(SecurityLookupWindow) +0x1.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10064cf0, `lbu` at 0x10064d7c.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x10064d1c, `sw` at 0x10064d34, `sw` at 0x10064d68.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10064d28, `lw` at 0x10064d5c, `lw` at 0x10064d8c.
  The `lw` at 0x10064d78 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x10064d80 loads 4 bytes from [a0+88] +0x0.
  The `jal` at 0x10064cc8 calls SecurityLookupWindow [0x1006ce40] with a0=[[a0+8]+4], a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x10064d44 calls CheckWindowAccess [0x1018ed00] with a0=0x3, a1=a0 at entry (arg0), a2=ret(SecurityLookupWindow), a3=0x0, a4=0x1.
  The `jalr` at 0x10064d90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10064c94 targets 0x10064cb8, is taken when v1(=[a0+72]) == a1(=0x4), and falls through when v1(=[a0+72]) != a1(=0x4).
  The `beq` branch at 0x10064cd4 targets 0x10064d20, is taken when v0(=ret(SecurityLookupWindow)) == 0, and falls through when v0(=ret(SecurityLookupWindow)) != 0.
  The `beq` branch at 0x10064ce4 targets 0x10064da4, is taken when a1(=[ret(SecurityLookupWindow)+1]:1) == a3(=0x2), and falls through when a1(=[ret(SecurityLookupWindow)+1]:1) != a3(=0x2).
  The `beq` branch at 0x10064cf8 targets 0x10064d3c, is taken when a5(?) == a4(=0x1), and falls through when a5(?) != a4(=0x1).
  The `beq` branch at 0x10064d00 targets 0x10064d3c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x10064d30 targets 0x10064ca8 and is always taken.
  The `bne` branch at 0x10064d4c targets 0x10064d6c, is taken when v0(=ret(CheckWindowAccess)) != 0, and falls through when v0(=ret(CheckWindowAccess)) == 0.
  The `beq` branch at 0x10064d64 targets 0x10064ca8 and is always taken.
  The `beq` branch at 0x10064d9c targets 0x10064ca8 and is always taken.
  The `beq` branch at 0x10064db0 targets 0x10064ca8 and is always taken.
  The return at 0x10064ca0 has v0 = 0x10.
  The return at 0x10064cb0 has v0 = one of 0x3, ret(?), 0x8.
  The return at 0x10064d18 has v0 = 0x2.
  The instructions from 0x10064d38 to 0x10064d38 are not reached by any path from the entry, and their branches are not listed.
- `SProcPutImage` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10064dd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10064dd0-0x10064eb4 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0x10064dd0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x10064dd4 loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x10064dd8 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x10064ddc stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x10064de0 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x10064de4 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x10064e10 loads 1 byte from [a0+8] +0x6.
  The `lbu` at 0x10064e14 loads 1 byte from [a0+8] +0x5.
  The `lbu` at 0x10064e18 loads 1 byte from [a0+8] +0xb.
  The `lbu` at 0x10064e1c loads 1 byte from [a0+8] +0x8.
  The `lbu` at 0x10064e20 loads 1 byte from [a0+8] +0xa.
  The `lbu` at 0x10064e24 loads 1 byte from [a0+8] +0x9.
  The `lbu` at 0x10064e28 loads 1 byte from [a0+8] +0xd.
  The `lbu` at 0x10064e2c loads 1 byte from [a0+8] +0xc.
  The `lbu` at 0x10064e30 loads 1 byte from [a0+8] +0xf.
  The `lbu` at 0x10064e34 loads 1 byte from [a0+8] +0xe.
  The `lbu` at 0x10064e38 loads 1 byte from [a0+8] +0x11.
  The `lbu` at 0x10064e3c loads 1 byte from [a0+8] +0x10.
  The `lbu` at 0x10064e40 loads 1 byte from [a0+8] +0x13.
  The `lbu` at 0x10064e44 loads 1 byte from [a0+8] +0x4.
  The `lbu` at 0x10064e4c loads 1 byte from [a0+8] +0x7.
  The `sb` at 0x10064e50 stores 1 byte to [a0+8] +0x4.
  The `lbu` at 0x10064e54 loads 1 byte from [a0+8] +0x12.
  The `sb` at 0x10064e58 stores 1 byte to [a0+8] +0x12.
  The `sb` at 0x10064e5c stores 1 byte to [a0+8] +0x11.
  The `sb` at 0x10064e60 stores 1 byte to [a0+8] +0x10.
  The `sb` at 0x10064e64 stores 1 byte to [a0+8] +0xf.
  The `sb` at 0x10064e68 stores 1 byte to [a0+8] +0xe.
  The `sb` at 0x10064e6c stores 1 byte to [a0+8] +0xd.
  The `sb` at 0x10064e70 stores 1 byte to [a0+8] +0xc.
  The `sb` at 0x10064e74 stores 1 byte to [a0+8] +0xa.
  The `sb` at 0x10064e78 stores 1 byte to [a0+8] +0x9.
  The `sb` at 0x10064e7c stores 1 byte to [a0+8] +0xb.
  The `sb` at 0x10064e80 stores 1 byte to [a0+8] +0x8.
  The `sb` at 0x10064e84 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x10064e88 stores 1 byte to [a0+8] +0x5.
  The `sb` at 0x10064e8c stores 1 byte to [a0+8] +0x7.
  The `sb` at 0x10064e94 stores 1 byte to [a0+8] +0x13.
  The `lw` at 0x10064e98 loads 4 bytes from sym(ProcVector) +0x120.
  The `jalr` at 0x10064e9c calls (unknown callee) with a0=a0 at entry (arg0), a1=[[a0+8]+14]:1, a2=[[a0+8]+15]:1, a3=[a0+8], a4=[[a0+8]+12]:1, a5=[[a0+8]+13]:1, a6=[[a0+8]+9]:1, a7=[[a0+8]+10]:1.
  The `beq` branch at 0x10064dfc targets 0x10064e10, is taken when v1(=[a0+72]) >= 0x6 (unsigned), and falls through when v1(=[a0+72]) < 0x6 (unsigned).
  The return at 0x10064e08 has v0 = 0x10.
  The return at 0x10064eac has v0 = ret(?).
- `SProcAllocColor` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10064ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10064ec0-0x10064f74 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0x10064ec0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x10064ec4 loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x10064ec8 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x10064ecc stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x10064ed0 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x10064ed4 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x10064f00 loads 1 byte from [a0+8] +0x7.
  The `lbu` at 0x10064f04 loads 1 byte from [a0+8] +0x4.
  The `lbu` at 0x10064f08 loads 1 byte from [a0+8] +0x6.
  The `lbu` at 0x10064f0c loads 1 byte from [a0+8] +0x5.
  The `lbu` at 0x10064f10 loads 1 byte from [a0+8] +0x9.
  The `lbu` at 0x10064f14 loads 1 byte from [a0+8] +0x8.
  The `lbu` at 0x10064f18 loads 1 byte from [a0+8] +0xb.
  The `lbu` at 0x10064f1c loads 1 byte from [a0+8] +0xa.
  The `lbu` at 0x10064f20 loads 1 byte from [a0+8] +0xd.
  The `lbu` at 0x10064f28 loads 1 byte from [a0+8] +0xc.
  The `sb` at 0x10064f2c stores 1 byte to [a0+8] +0xd.
  The `sb` at 0x10064f30 stores 1 byte to [a0+8] +0xc.
  The `sb` at 0x10064f34 stores 1 byte to [a0+8] +0xb.
  The `sb` at 0x10064f38 stores 1 byte to [a0+8] +0xa.
  The `sb` at 0x10064f3c stores 1 byte to [a0+8] +0x9.
  The `sb` at 0x10064f40 stores 1 byte to [a0+8] +0x8.
  The `sb` at 0x10064f44 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x10064f48 stores 1 byte to [a0+8] +0x5.
  The `sb` at 0x10064f4c stores 1 byte to [a0+8] +0x7.
  The `sb` at 0x10064f54 stores 1 byte to [a0+8] +0x4.
  The `lw` at 0x10064f58 loads 4 bytes from sym(ProcVector) +0x150.
  The `jalr` at 0x10064f5c calls (unknown callee) with a0=a0 at entry (arg0), a1=[[a0+8]+8]:1, a2=[[a0+8]+9]:1, a3=[a0+8], a4=[[a0+8]+5]:1, a5=[[a0+8]+6]:1, a6=[[a0+8]+4]:1, a7=[[a0+8]+7]:1.
  The `beq` branch at 0x10064eec targets 0x10064f00, is taken when v1(=[a0+72]) == a1(=0x4), and falls through when v1(=[a0+72]) != a1(=0x4).
  The return at 0x10064ef8 has v0 = 0x10.
  The return at 0x10064f6c has v0 = ret(?).
- `DeliverEvents` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10064f80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10064f80-0x10065148 (456 bytes).
  It occupies 456 bytes.
  2 such `lw` accesses load 4 bytes from sym(panoramiXMode) +0x0, including `lw` at 0x10064f9c, `lw` at 0x10064fdc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x10064fbc, `lw` at 0x10065048.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x10064fc0, `lw` at 0x10064ff0.
  2 such `lw` accesses load 4 bytes from [a0+16] +0x0, including `lw` at 0x10064fcc, `lw` at 0x10064ff4.
  The `lw` at 0x10064fd4 loads 4 bytes from sym(XRT_WINDOW) +0x0.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x0, including `lbu` at 0x10065024, `lbu` at 0x100650a4.
  The `lw` at 0x10065030 loads 4 bytes from table(0x102cc160) +0x0.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x4, including `sw` at 0x1006504c, `sw` at 0x10065094, `sw` at 0x10065130.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0x10065070, `lw` at 0x100650a0.
  The `lw` at 0x10065088 loads 4 bytes from [a0+24] +0x4.
  The `lw` at 0x1006512c loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `jal` at 0x10064fd0 calls PanoramiXFindIDByScrnum [0x100fd550] with a0=[sym(XRT_WINDOW)], a1=[a0+4], a2=[[a0+16]], a3=a3 at entry (arg3).
  The `jal` at 0x10065068 calls DeliverEventsToWindow [0x10184890] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x20000, a4=0x0, a5=0x0, a6=0x102cc0d0.
  The `jal` at 0x1006509c calls DeliverEventsToWindow [0x10184890] with a0=[a0+24], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x80000, a4=0x0, a5=0x0, a6=[[a0+24]+4].
  The `jal` at 0x100650ec calls DeliverEventsToWindow [0x10184890] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=entry(0x102cc160), a4=0x0, a5=0x0, a6=0x102cc0d0.
  The `jal` at 0x10065134 calls DeliverEventsToWindow [0x10184890] with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x80000, a4=0x0, a5=0x0.
  The `beq` branch at 0x10064fb4 targets 0x10065018, is taken when at(=[sym(panoramiXMode)]) == 0, and falls through when at(=[sym(panoramiXMode)]) != 0.
  The `beq` branch at 0x10064fe0 targets 0x10065018, is taken when a3(=[sym(panoramiXMode)]) == 0, and falls through when a3(=[sym(panoramiXMode)]) != 0.
  The `beq` branch at 0x10064fe8 targets 0x10065018, is taken when v0(=ret(PanoramiXFindIDByScrnum)) == 0, and falls through when v0(=ret(PanoramiXFindIDByScrnum)) != 0.
  The `beq` branch at 0x10064ff8 targets 0x10065018, is taken when a4(=[[a0+16]]) == 0, and falls through when a4(=[[a0+16]]) != 0.
  The `beq` branch at 0x10065018 targets 0x10065104, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `bgez` branch at 0x10065038 targets 0x10065050, is taken when a5(=(entry(0x102cc160) << 0x2c)) >= 0 (signed), and falls through when a5(=(entry(0x102cc160) << 0x2c)) < 0 (signed).
  The `beq` branch at 0x10065040 targets 0x10065050, is taken when a1(=[a1]:1) == a4(=0x10), and falls through when a1(=[a1]:1) != a4(=0x10).
  The `bne` branch at 0x10065050 targets 0x100650dc, is taken when a3(=entry(0x102cc160)) != v0(=0xa0000), and falls through when a3(=entry(0x102cc160)) == v0(=0xa0000).
  The `beq` branch at 0x10065078 targets 0x100650b8, is taken when t0(=[a0+24]) == 0, and falls through when t0(=[a0+24]) != 0.
  The `beq` branch at 0x100650b0 targets 0x10065114, is taken when a2(=[a1]:1) == a3(=0x15), and falls through when a2(=[a1]:1) != a3(=0x15).
  The `beq` branch at 0x100650fc targets 0x100650c4 and is always taken.
  The `beq` branch at 0x1006510c targets 0x100650c4 and is always taken.
  The `beq` branch at 0x10065140 targets 0x100650b8 and is always taken.
  The return at 0x10065010 has v0 = a2.
  The return at 0x100650d4 has v0 = one of ?, ret(DeliverEventsToWindow), 0x0.
- `ProcDPMSDispatch..CLD` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10065150 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10065150-0x100653ec (668 bytes).
  It occupies 668 bytes.
  The `lw` at 0x10065150 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x10065158 loads 1 byte from [a0+8] +0x1.
  The `lw` at 0x10065180 loads 4 bytes from table(0x1028ce90) +0x0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x100651bc, `lw` at 0x100651f0, `lw` at 0x10065208.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x10065298, `lw` at 0x10065330, `lw` at 0x10065334.
  The `lhu` at 0x1006529c loads 2 bytes from [a0+8] +0x8.
  The `lhu` at 0x100652a4 loads 2 bytes from [a0+8] +0x6.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x100652b8, `sw` at 0x10065358.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0x100652c4, `lw` at 0x100653c4.
  The `lw` at 0x100652d8 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lhu` at 0x10065344 loads 2 bytes from [a0+8] +0x4.
  The `jal` at 0x100651a8 calls ProcDPMSGetVersion..KKD [0x10275b40] with a0=a0 at entry (arg0), a1=?, a2=entry(0x1028ce90), a3=[a0+8].
  The `jal` at 0x100651dc calls ProcDPMSForceLevel..ALD [0x1013a090] with a0=a0 at entry (arg0), a1=?, a2=entry(0x1028ce90), a3=[a0+8].
  The `jal` at 0x10065248 calls ProcDPMSGetTimeouts..MKD [0x100d5dd0] with a0=a0 at entry (arg0), a1=?, a2=entry(0x1028ce90), a3=[a0+8].
  The `jal` at 0x1006531c calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=0x20, a2=sp-96, a3=[a0+72], a5=0x1.
  The `jal` at 0x100653d4 calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=0x20, a2=sp-64, a3=0x10, a4=[a0+28], a5=0x1, a6=[0x102c5d8d]:1.
  The `beq` branch at 0x10065178 targets 0x1006518c, is taken when v1(=[[a0+8]+1]:1) >= 0x8 (unsigned), and falls through when v1(=[[a0+8]+1]:1) < 0x8 (unsigned).
  The `beq` branch at 0x100651b4 targets 0x10065190 and is always taken.
  The `beq` branch at 0x100651c4 targets 0x100652bc, is taken when a5(=0x1) == a3(=[a0+72]), and falls through when a5(=0x1) != a3(=[a0+72]).
  The `beq` branch at 0x100651cc targets 0x10065190 and is always taken.
  The `beq` branch at 0x100651e8 targets 0x10065190 and is always taken.
  The `beq` branch at 0x100651f8 targets 0x10065334, is taken when a4(=[a0+72]) == a5(=0x1), and falls through when a4(=[a0+72]) != a5(=0x1).
  The `beq` branch at 0x10065200 targets 0x10065190 and is always taken.
  The `beq` branch at 0x10065210 targets 0x10065284, is taken when a5(=0x1) == a6(=[a0+72]), and falls through when a5(=0x1) != a6(=[a0+72]).
  The `beq` branch at 0x10065218 targets 0x10065190 and is always taken.
  The `beq` branch at 0x10065228 targets 0x1006529c, is taken when a7(=[a0+72]) == t0(=0x3), and falls through when a7(=[a0+72]) != t0(=0x3).
  The `beq` branch at 0x1006526c targets 0x100653ac, is taken when a5(=0x1) == t1(=[a0+72]), and falls through when a5(=0x1) != t1(=[a0+72]).
  The `beq` branch at 0x10065288 targets 0x10065294, is taken when t2(=[0x102c5d8d]:1) == 0, and falls through when t2(=[0x102c5d8d]:1) != 0.
  The `beq` branch at 0x10065294 targets 0x10065218 and is always taken.
  The `beq` branch at 0x100652a0 targets 0x10065340, is taken when a5(=[[a0+8]+8]:2) == 0, and falls through when a5(=[[a0+8]+8]:2) != 0.
  The `beq` branch at 0x100652ac targets 0x10065340, is taken when a5(=[[a0+8]+8]:2) >= v0(=[[a0+8]+6]:2) (signed), and falls through when a5(=[[a0+8]+8]:2) < v0(=[[a0+8]+6]:2) (signed).
  The `beq` branch at 0x100652b4 targets 0x10065230 and is always taken.
  The `beq` branch at 0x100652dc targets 0x1006530c, is taken when t8(=[a0+16]) == 0, and falls through when t8(=[a0+16]) != 0.
  The `beq` branch at 0x1006532c targets 0x100651cc and is always taken.
  The `beq` branch at 0x10065338 targets 0x10065200 and is always taken.
  The `beq` branch at 0x10065340 targets 0x1006535c, is taken when v0(=[[a0+8]+6]:2) == 0, and falls through when v0(=[[a0+8]+6]:2) != 0.
  The `beq` branch at 0x1006534c targets 0x1006535c, is taken when v0(=[[a0+8]+6]:2) >= a6(=[[a0+8]+4]:2) (signed), and falls through when v0(=[[a0+8]+6]:2) < a6(=[[a0+8]+4]:2) (signed).
  The `beq` branch at 0x10065354 targets 0x10065230 and is always taken.
  The `beq` branch at 0x100653a4 targets 0x10065230 and is always taken.
  The `beq` branch at 0x100653e4 targets 0x10065274 and is always taken.
  The return at 0x10065198 has v0 = one of 0x1, ret(ProcDPMSGetVersion..KKD), ?, ret(ProcDPMSForceLevel..ALD).
  The return at 0x10065238 has v0 = one of 0x10, 0x2, [a0+40].
  The return at 0x10065258 has v0 = ret(ProcDPMSGetTimeouts..MKD).
  The return at 0x1006527c has v0 = one of 0x10, [a0+40].
  The indirect jump at 0x10065184 uses the jump table at 0x1028ce90 with targets 0x100651a0, 0x10065260, 0x10065240, 0x10065220, 0x10065208, 0x100651f0, 0x100651d4, 0x100651bc.
- `EstablishNewConnections` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100653f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100653f0-0x10066cbc (6348 bytes).
  It occupies 6348 bytes.
  The `ld` at 0x100653f0 loads 8 bytes from a1 (arg1 at entry) +0x0.
  110 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100654b4, `lw` at 0x100654d8, `lw` at 0x100654e8.
  9 such `lw` accesses load 4 bytes from sym(clients) +0x0, including `lw` at 0x100654d0, `lw` at 0x1006566c, `lw` at 0x1006568c.
  86 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10065568, `sw` at 0x100655f0, `sw` at 0x100655f4.
  6 such `lw` accesses load 4 bytes from [0x102c60dc] +0x8, including `lw` at 0x10065588, `lw` at 0x10065c50, `lw` at 0x10065eec.
  3 such `lw` accesses load 4 bytes from [0x102c60e4] +0x8, including `lw` at 0x100655b8, `lw` at 0x10065c84, `lw` at 0x10065fb8.
  3 such `sw` accesses store 4 bytes to abs 0x102d20e4 (redirectedEvents+4), including `sw` at 0x100655e8, `sw` at 0x10065cb0, `sw` at 0x10065fe8.
  3 such `sw` accesses store 4 bytes to abs 0x102d20e0 (redirectedEvents), including `sw` at 0x100655ec, `sw` at 0x10065cb4, `sw` at 0x10065fec.
  3 such `lw` accesses load 4 bytes from ([sym(clients)] + ([0x102c5d70] << 0x2)) -0x4, including `lw` at 0x10065698, `lw` at 0x10065d64, `lw` at 0x10066094.
  3 such `lw` accesses load 4 bytes from table(0x102c60b0) +0x0, including `lw` at 0x10065730, `lw` at 0x100663a8, `lw` at 0x10066868.
  3 such `sw` accesses store 4 bytes to table(0x102c60b0) +0x0, including `sw` at 0x1006574c, `sw` at 0x100663c4, `sw` at 0x1006687c.
  3 such `lw` accesses load 4 bytes from [0x102c609c] +0x14, including `lw` at 0x10065768, `lw` at 0x100663e4, `lw` at 0x100668a4.
  3 such `sw` accesses store 4 bytes to [0x102c609c] +0x14, including `sw` at 0x10065774, `sw` at 0x100663f0, `sw` at 0x100668b0.
  3 such `sw` accesses store 4 bytes to [0x102c609c] +0xc, including `sw` at 0x10065778, `sw` at 0x100663f4, `sw` at 0x100668b4.
  3 such `sw` accesses store 4 bytes to [0x102c609c] +0x10, including `sw` at 0x1006577c, `sw` at 0x100663f8, `sw` at 0x100668b8.
  6 such `lw` accesses load 4 bytes from sym(inputInfo) +0x4, including `lw` at 0x10065794, `lw` at 0x100657f4, `lw` at 0x1006640c.
  3 such `lw` accesses load 4 bytes from [0x102cb558] +0x4, including `lw` at 0x100658d0, `lw` at 0x10066548, `lw` at 0x10066a08.
  The `sw` at 0x10065b6c stores 4 bytes to ret(?) +0x0.
  4 such `lw` accesses load 4 bytes from ret(?) +0x10, including `lw` at 0x10065b78, `lw` at 0x10065db0, `lw` at 0x10066124.
  2 such `lw` accesses load 4 bytes from [0x102c619c] +0x8, including `lw` at 0x10065b90, `lw` at 0x10066774.
  15 such `lw` accesses load 4 bytes from ret(?) +0x0, including `lw` at 0x10065ba0, `lw` at 0x10065e70, `lw` at 0x10065ea0.
  The `lw` at 0x10065bb4 loads 4 bytes from ret(?) +0x2c.
  2 such `lw` accesses load 4 bytes from table(0x102c6828) +0x0, including `lw` at 0x10065be8, `lw` at 0x10065f20.
  2 such `lw` accesses load 4 bytes from ([sym(clients)] + (entry(0x102c6828) << 0x2)) +0x0, including `lw` at 0x10065bfc, `lw` at 0x10065f34.
  2 such `lw` accesses load 4 bytes from [([sym(clients)] + (entry(0x102c6828) << 0x2))] +0x24, including `lw` at 0x10065c08, `lw` at 0x10065f40.
  2 such `lw` accesses load 4 bytes from [([sym(clients)] + (entry(0x102c6828) << 0x2))] +0x20, including `lw` at 0x10065c10, `lw` at 0x10066828.
  4 such `lw` accesses load 4 bytes from [([sym(clients)] + (entry(0x102c6828) << 0x2))] +0x54, including `lw` at 0x10065c20, `lw` at 0x10065f54, `lw` at 0x10066650.
  4 such `sw` accesses store 4 bytes to [([sym(clients)] + (entry(0x102c6828) << 0x2))] +0x54, including `sw` at 0x10065c30, `sw` at 0x10065f64, `sw` at 0x10066bf0.
  8 such `lw` accesses load 4 bytes from [([sym(clients)] + (entry(0x102c6828) << 0x2))] +0x0, including `lw` at 0x10065c78, `lw` at 0x10065d20, `lw` at 0x10065fac.
  2 such `sw` accesses store 4 bytes to ([sym(clients)] + ([[([sym(clients)] + (entry(0x102c6828) << 0x2))]] << 0x2)) +0x0, including `sw` at 0x10065d48, `sw` at 0x10066078.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10065e54, `lbu` at 0x100661c8.
  2 such `lw` accesses load 4 bytes from [ret(?)] +0x24, including `lw` at 0x10065e74, `lw` at 0x100661e8.
  2 such `lw` accesses load 4 bytes from [ret(?)] +0x38, including `lw` at 0x10065ea4, `lw` at 0x10066218.
  The `lw` at 0x100660e0 loads 4 bytes from [ret(?)] +0x10.
  2 such `lw` accesses load 4 bytes from [ret(?)] +0x4, including `lw` at 0x10066114, `lw` at 0x100667e0.
  2 such `lw` accesses load 4 bytes from [ret(?)] +0x40, including `lw` at 0x10066128, `lw` at 0x100667f0.
  2 such `lw` accesses load 4 bytes from [ret(?)] +0x30, including `lw` at 0x100662b0, `lw` at 0x10066350.
  2 such `lw` accesses load 4 bytes from [([sym(clients)] + (entry(0x102c6828) << 0x2))] +0x4, including `lw` at 0x1006646c, `lw` at 0x1006692c.
  2 such `sw` accesses store 4 bytes to [([sym(clients)] + (entry(0x102c6828) << 0x2))] +0x24, including `sw` at 0x10066508, `sw` at 0x100669c8.
  The `sw` at 0x100666e4 stores 4 bytes to ret(Xalloc) +0x1c.
  The `sw` at 0x100666e8 stores 4 bytes to ret(Xalloc) +0x18.
  The `sw` at 0x100666ec stores 4 bytes to ret(Xalloc) +0xc.
  The `sw` at 0x100666f0 stores 4 bytes to ret(Xalloc) +0x8.
  The `sw` at 0x100666f4 stores 4 bytes to ret(Xalloc) +0x4.
  The `sw` at 0x100666f8 stores 4 bytes to ret(Xalloc) +0x0.
  The `sw` at 0x100666fc stores 4 bytes to ret(Xalloc) +0x14.
  The `sw` at 0x10066714 stores 4 bytes to ret(Xalloc) +0x20.
  The `sw` at 0x1006671c stores 4 bytes to ret(Xalloc) +0x24.
  The `sw` at 0x10066720 stores 4 bytes to ret(Xalloc) +0x10.
  The `sw` at 0x1006672c stores 4 bytes to ret(Xalloc) +0x28.
  The `lw` at 0x10066750 loads 4 bytes from ret(NextAvailableClient) +0x0.
  The `sw` at 0x1006675c stores 4 bytes to table(0x102c6828) +0x0.
  The `lw` at 0x100667a0 loads 4 bytes from sym(GrabInProgress) +0x0.
  The `lw` at 0x100667c4 loads 4 bytes from table(0x102c67e8) +0x0.
  The `lw` at 0x100667c8 loads 4 bytes from table(0x102c67c8) +0x0.
  The `sw` at 0x100667d0 stores 4 bytes to table(0x102c67e8) +0x0.
  The `sw` at 0x100667d8 stores 4 bytes to table(0x102c67c8) +0x0.
  The `lw` at 0x10066c28 loads 4 bytes from table(0x102c66b0) +0x0.
  The `lw` at 0x10066c2c loads 4 bytes from table(0x102c66d0) +0x0.
  The `sw` at 0x10066c34 stores 4 bytes to table(0x102c66b0) +0x0.
  The `sw` at 0x10066c40 stores 4 bytes to table(0x102c66d0) +0x0.
  The `jalr` at 0x10065428 calls times with a0=sp-416, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10065528 calls CloseDownConnection [0x102007d0] with a0=?, a1=?, a2=[0x102cb558], a3=?.
  The `jalr` at 0x10065590 calls (unknown callee) with a0=?, a1=sp-384, a2=?, a3=?, a5=[0x102c60dc].
  The `jalr` at 0x100655c0 calls (unknown callee) with a0=?, a1=sp-368, a2=?, a3=?, a5=[0x102c60e4].
  The `jal` at 0x10065648 calls FreeClientResources [0x10256340] with a0=?, a1=[0x102c5f80], a2=?, a3=?.
  The `jal` at 0x10065680 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100657d0 calls (unknown callee) with a0=?, a1=one of 0x0, 0x1, a2=?, a3=?.
  The `jalr` at 0x10065868 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a6=([0x102c6144] + ([0x102c6148] << 0x2)), a7=[0x102c614c].
  The `jal` at 0x100658b8 calls ProcessWorkQueueZombies [0x10219f40] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10065a00 calls ClientSignal [0x1014ffb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10065a10 calls UngrabServer [0x1018ac20] with a0=?, a1=?, a2=?, a3=?, a6=[0x102c60a0], a7=[0x102c60a8].
  The `jalr` at 0x10065aa0 calls ffs with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10065b58 calls (unknown callee) with a0=?, a1=sp-304, a2=?, a3=?, a5=ret(ffs)-1, a6=(([0x102c6c30] << 0x2) + [0x102c6c2c]).
  The `jalr` at 0x10065b98 calls (unknown callee) with a0=?, a1=sp-296, a2=?, a3=?, a5=[0x102c619c].
  The `jalr` at 0x10065c58 calls (unknown callee) with a0=?, a1=sp-384, a2=?, a3=?, a5=[0x102c60dc].
  The `jalr` at 0x10065c8c calls (unknown callee) with a0=?, a1=sp-368, a2=?, a3=?, a5=[0x102c60e4].
  The `jal` at 0x10065d18 calls FreeClientResources [0x10256340] with a0=[([sym(clients)] + (entry(0x102c6828) << 0x2))], a1=[0x102c5f78], a2=[0x102c5f80], a3=?.
  The `jal` at 0x10065d4c calls Xfree [0x101fc9c0] with a0=[([sym(clients)] + (entry(0x102c6828) << 0x2))], a1=([[([sym(clients)] + (entry(0x102c6828) << 0x2))]] << 0x2), a2=?, a3=?.
  The `jalr` at 0x10065e28 calls select with a0=[ret(?)+16]+1, a1=sp-344, a2=0x0, a3=0x0, a4=sp-256, a5=[0x102c6668].
  The `jalr` at 0x10065e40 calls (unknown callee) with a0=ret(?), a1=sp-248, a2=?, a3=?.
  The `jalr` at 0x10065e60 calls (unknown callee) with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0x10065e80 calls (unknown callee) with a0=ret(?), a1=sp-264, a2=0x1, a3=?.
  The `jalr` at 0x10065ea8 calls (unknown callee) with a0=ret(?), a1=?, a2=?, a3=?.
  The `jal` at 0x10065eb0 calls _XSERVTransFreeConnInfo [0x100d3a20] with a0=ret(?), a1=?, a2=?, a3=?.
  The `jal` at 0x10065ec0 calls FreeClientNeverRetainResources [0x10106700] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10065ef4 calls (unknown callee) with a0=?, a1=sp-400, a2=?, a3=?, a5=[0x102c60dc].
  The `jalr` at 0x10065f8c calls (unknown callee) with a0=?, a1=sp-384, a2=?, a3=?, a5=[0x102c60dc].
  The `jalr` at 0x10065fc0 calls (unknown callee) with a0=?, a1=sp-368, a2=?, a3=?, a5=[0x102c60e4].
  The `jal` at 0x10066048 calls FreeClientResources [0x10256340] with a0=[([sym(clients)] + (entry(0x102c6828) << 0x2))], a1=?, a2=?, a3=?.
  The `jal` at 0x1006607c calls Xfree [0x101fc9c0] with a0=[([sym(clients)] + (entry(0x102c6828) << 0x2))], a1=([[([sym(clients)] + (entry(0x102c6828) << 0x2))]] << 0x2), a2=?, a3=?.
  The `jalr` at 0x100660ec calls (unknown callee) with a0=ret(?), a1=0x1, a2=0x1, a3=?.
  The `jalr` at 0x1006619c calls select with a0=[ret(?)+16]+1, a1=sp-344, a2=0x0, a3=0x0, a4=sp-256.
  The `jalr` at 0x100661b4 calls (unknown callee) with a0=ret(?), a1=sp-248, a2=?, a3=?.
  The `jalr` at 0x100661d4 calls (unknown callee) with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0x100661f4 calls (unknown callee) with a0=ret(?), a1=sp-264, a2=0x1, a3=?.
  The `jalr` at 0x1006621c calls (unknown callee) with a0=ret(?), a1=?, a2=?, a3=?.
  The `jal` at 0x10066224 calls _XSERVTransFreeConnInfo [0x100d3a20] with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0x100662bc calls (unknown callee) with a0=ret(?), a1=sp-240, a2=0x3, a3=?, a4=0x6c.
  The `jalr` at 0x1006635c calls (unknown callee) with a0=ret(?), a1=sp-240, a2=0x3, a3=?, a5=one of 0x21, 0x6c.
  The `jalr` at 0x10066480 calls (unknown callee) with a0=?, a1=one of 0x0, 0x1, a2=?, a3=?.
  The `jalr` at 0x100664d4 calls (unknown callee) with a0=[([sym(clients)] + (entry(0x102c6828) << 0x2))], a1=?, a2=?, a3=?, a7=[0x102c614c].
  The `jal` at 0x10066530 calls ProcessWorkQueueZombies [0x10219f40] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10066648 calls CloseDownConnection [0x102007d0] with a0=[([sym(clients)] + (entry(0x102c6828) << 0x2))], a1=?, a2=?, a3=[0x102cb558].
  The `jal` at 0x100666d0 calls Xalloc [0x1020aeb0] with a0=0x30, a1=?, a2=?, a3=?, a5=[0x102c6668].
  The `jal` at 0x10066728 calls NextAvailableClient [0x10254a60] with a0=ret(Xalloc), a1=?, a2=?, a3=?, a6=0x101b0ed0, a7=0x101c5670.
  The `jalr` at 0x10066780 calls (unknown callee) with a0=?, a1=sp-280, a2=?, a3=?, a5=[0x102c619c], a6=ret(NextAvailableClient).
  The `jalr` at 0x10066940 calls (unknown callee) with a0=?, a1=one of 0x0, 0x1, a2=?, a3=?.
  The `jalr` at 0x10066994 calls (unknown callee) with a0=[([sym(clients)] + (entry(0x102c6828) << 0x2))], a1=?, a2=?, a3=?, a7=[0x102c614c].
  The `jal` at 0x100669f0 calls ProcessWorkQueueZombies [0x10219f40] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10066ac8 calls CloseDownConnection [0x102007d0] with a0=[([sym(clients)] + (entry(0x102c6828) << 0x2))], a1=?, a2=?, a3=[0x102cb558].
  The `jal` at 0x10066ba4 calls ClientSignal [0x1014ffb0] with a0=[([sym(clients)] + (entry(0x102c6828) << 0x2))], a1=0x1, a2=?, a3=?.
  The `jal` at 0x10066bb4 calls UngrabServer [0x1018ac20] with a0=[([sym(clients)] + (entry(0x102c6828) << 0x2))], a1=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+32], a2=[0x102c60a8], a3=?, a5=[0x102c6668].
  The `jal` at 0x10066bc4 calls ClientSignal [0x1014ffb0] with a0=[([sym(clients)] + (entry(0x102c6828) << 0x2))], a1=0x1, a2=?, a3=?.
  The `jal` at 0x10066bd4 calls UngrabServer [0x1018ac20] with a0=[([sym(clients)] + (entry(0x102c6828) << 0x2))], a1=?, a2=?, a3=?.
  The `jal` at 0x10066be4 calls FreeClientNeverRetainResources [0x10106700] with a0=[([sym(clients)] + (entry(0x102c6828) << 0x2))], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x10066c18 calls (unknown callee) with a0=?, a1=sp-400, a2=?, a3=?, a5=[0x102c60dc].
  The `jal` at 0x10066c4c calls FreeClientNeverRetainResources [0x10106700] with a0=[([sym(clients)] + (entry(0x102c6828) << 0x2))], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x10066c80 calls (unknown callee) with a0=?, a1=sp-400, a2=?, a3=?, a5=[0x102c60dc].
  The `jal` at 0x10066ca0 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?, a6=ret(NextAvailableClient).
  The `beq` branch at 0x10065418 targets 0x10066234, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x10065448 targets 0x10065a20, is taken when a5(=[0x102c5d70]) < 0x2 (signed), and falls through when a5(=[0x102c5d70]) >= 0x2 (signed).
  The `beq` branch at 0x100654a4 targets 0x100654d0 and is always taken.
  The `beq` branch at 0x100654b0 targets 0x100654bc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x100654b8 targets 0x100656f4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100654c8 targets 0x10065a70, is taken when s6(?) >= a5(=[0x102c5d70]) (signed), and falls through when s6(?) < a5(=[0x102c5d70]) (signed).
  The `beq` branch at 0x100654e0 targets 0x100654c0, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x100654ec targets 0x100654b0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x100654fc targets 0x100654b0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x10065504 targets 0x100654b0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x10065510 targets 0x100656f4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10065518 targets 0x10065700, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10065520 targets 0x10065558 and is always taken.
  The `beq` branch at 0x1006553c targets 0x10065550, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10065544 targets 0x10065550, is taken when v0(?) == a7(=0x1), and falls through when v0(?) != a7(=0x1).
  The `beq` branch at 0x10065550 targets 0x100654c0, is taken when s8(=one of 0x0, 0x1) == 0, and falls through when s8(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10065560 targets 0x100659d8, is taken when v0(?) == t0(=0x2), and falls through when v0(?) != t0(=0x2).
  The `beq` branch at 0x10065570 targets 0x10065598, is taken when a5(=[0x102c60dc]) == 0, and falls through when a5(=[0x102c60dc]) != 0.
  The `beq` branch at 0x10065580 targets 0x10065598, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x1006559c targets 0x100655c8, is taken when a5(=[0x102c60e4]) == 0, and falls through when a5(=[0x102c60e4]) != 0.
  The `beq` branch at 0x100655b0 targets 0x100655c8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x100655d4 targets 0x10065648, is taken when t9(=[0x102c5f78]) == 0, and falls through when t9(=[0x102c5f78]) != 0.
  The `bne` branch at 0x100655dc targets 0x10065648, is taken when a1(=[0x102c5f80]) != s2(?), and falls through when a1(=[0x102c5f80]) == s2(?).
  The `bne` branch at 0x10065610 targets 0x100655f0, is taken when at(?) != v0(?), and falls through when at(?) == v0(?).
  The `beq` branch at 0x1006565c targets 0x1006566c, is taken when v0(?) >= v1(=[0x102c60d4]) (signed), and falls through when v0(?) < v1(=[0x102c60d4]) (signed).
  The `bne` branch at 0x1006569c targets 0x100656e8, is taken when a2(=[([sym(clients)] + ([0x102c5d70] << 0x2))-4]) != 0, and falls through when a2(=[([sym(clients)] + ([0x102c5d70] << 0x2))-4]) == 0.
  The `bne` branch at 0x100656b8 targets 0x100656ec, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x100656c8 targets 0x100656ec, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x100656d8 targets 0x100656b0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x100656e0 targets 0x100656ec and is always taken.
  The `beq` branch at 0x100656ec targets 0x100654bc and is always taken.
  The `beq` branch at 0x100656f8 targets 0x10065518, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x10065704 targets 0x10065710, is taken when a7(=[0x102c60a8]) == 0, and falls through when a7(=[0x102c60a8]) != 0.
  The `beq` branch at 0x1006570c targets 0x10065a10, is taken when v0(=[0x102c60a4]) == s2(?), and falls through when v0(=[0x102c60a4]) != s2(?).
  The `blez` branch at 0x10065748 targets 0x10065790, is taken when a6(=[0x102c60a0]) <= 0 (signed), and falls through when a6(=[0x102c60a0]) > 0 (signed).
  The `beq` branch at 0x10065760 targets 0x10065784, is taken when (a6(=[0x102c60a0]) & 0x1) == 0, and falls through when (a6(=[0x102c60a0]) & 0x1) != 0.
  The `bne` branch at 0x1006576c targets 0x10065780, is taken when a3(=[[0x102c609c]+20]) != s2(?), and falls through when a3(=[[0x102c609c]+20]) == s2(?).
  The `bnel` branch at 0x10065788 targets 0x100659a8, is taken when a4(?) != 0, and falls through when a4(?) == 0; its branch-likely delay slot `lw a0,20(v0)` at 0x1006578c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x10065790 targets 0x100657f8 and is always taken.
  The `beq` branch at 0x100657a4 targets 0x100657f0, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x100657b0 targets 0x100657a0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x100657c4 targets 0x100657a0, is taken when a5(?) != a6(?), and falls through when a5(?) == a6(?).
  The `bne` branch at 0x100657dc targets 0x100657ac, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bne` branch at 0x100657f0 targets 0x1006580c, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x100657fc targets 0x100657f0, is taken when a7(=[sym(inputInfo)+4]) == 0, and falls through when a7(=[sym(inputInfo)+4]) != 0.
  The `beq` branch at 0x10065804 targets 0x100657ac and is always taken.
  The `blez` branch at 0x10065818 targets 0x10065888, is taken when a1(=[0x102c6148]) <= 0 (signed), and falls through when a1(=[0x102c6148]) > 0 (signed).
  The `beq` branch at 0x1006582c targets 0x10065840 and is always taken.
  The `beq` branch at 0x10065838 targets 0x10065888, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x10065860 targets 0x10065834, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x10065880 targets 0x10065820, is taken when s5(?) < a1(=[0x102c6148]) (signed), and falls through when s5(?) >= a1(=[0x102c6148]) (signed).
  The `beq` branch at 0x10065888 targets 0x10065ec0, is taken when s8(=one of 0x0, 0x1) == 0, and falls through when s8(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10065898 targets 0x100658b8, is taken when v1(=[0x102c6138]) == 0, and falls through when v1(=[0x102c6138]) != 0.
  The `beq` branch at 0x100658a4 targets 0x10065a00, is taken when a1(?) == s2(?), and falls through when a1(?) != s2(?).
  The `bne` branch at 0x100658b0 targets 0x100658a0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x100658c4 targets 0x10065528, is taken when a2(=[0x102cb558]) == 0, and falls through when a2(=[0x102cb558]) != 0.
  The `beq` branch at 0x100658cc targets 0x100658f4 and is always taken.
  The `bnel` branch at 0x100658dc targets 0x10065974, is taken when t1(?) != 0, and falls through when t1(?) == 0; its branch-likely delay slot `lw a1,0(v0)` at 0x100658e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x100658e8 targets 0x10065528, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `blez` branch at 0x100658fc targets 0x100658e4, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x10065914 targets 0x100658dc, is taken when (a1(?) & 0x1) == 0, and falls through when (a1(?) & 0x1) != 0.
  The `bne` branch at 0x10065924 targets 0x100658d4, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x10065930 targets 0x100658dc and is always taken.
  The `beq` branch at 0x10065954 targets 0x1006598c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x10065968 targets 0x100658e4, is taken when v0(?) == a6(?), and falls through when v0(?) != a6(?).
  The `bne` branch at 0x10065978 targets 0x10065940, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x10065984 targets 0x1006594c and is always taken.
  The `beq` branch at 0x10065990 targets 0x10065968 and is always taken.
  The `beq` branch at 0x1006599c targets 0x10065790, is taken when v0(?) == a1(?), and falls through when v0(?) != a1(?).
  The `bne` branch at 0x100659a8 targets 0x100659bc, is taken when a0(?) != s2(?), and falls through when a0(?) == s2(?).
  The `bne` branch at 0x100659c0 targets 0x10065998, is taken when a2(?) != s2(?), and falls through when a2(?) == s2(?).
  The `beq` branch at 0x100659d0 targets 0x10065998 and is always taken.
  The `bne` branch at 0x100659e0 targets 0x10065568, is taken when a3(=[0x102c60d8]) != 0, and falls through when a3(=[0x102c60d8]) == 0.
  The `beq` branch at 0x100659e8 targets 0x100662e0, is taken when a1(=[0x102c60ec]) == 0, and falls through when a1(=[0x102c60ec]) != 0.
  The `beq` branch at 0x100659f0 targets 0x10065568 and is always taken.
  The `beq` branch at 0x10065a08 targets 0x100658b8 and is always taken.
  The `beq` branch at 0x10065a18 targets 0x10065714 and is always taken.
  The `beq` branch at 0x10065abc targets 0x10065af4, is taken when a7(=[0x102c6c2c]) == 0, and falls through when a7(=[0x102c6c2c]) != 0.
  The `blez` branch at 0x10065ac8 targets 0x10065af4, is taken when t0(=[0x102c6c30]) <= 0 (signed), and falls through when t0(=[0x102c6c30]) > 0 (signed).
  The `beq` branch at 0x10065ae4 targets 0x10065b38, is taken when a7(?) == a5(=ret(ffs)-1), and falls through when a7(?) != a5(=ret(ffs)-1).
  The `bne` branch at 0x10065aec targets 0x10065ae0, is taken when v0(?) != a6(=(([0x102c6c30] << 0x2) + [0x102c6c2c])), and falls through when v0(?) == a6(=(([0x102c6c30] << 0x2) + [0x102c6c2c])).
  The `bne` branch at 0x10065af4 targets 0x10065aa0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x10065b44 targets 0x10065af4, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x10065b60 targets 0x10065af4, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10065b74 targets 0x10065ba4, is taken when a5(=[0x102c619c]) == 0, and falls through when a5(=[0x102c619c]) != 0.
  The `beq` branch at 0x10065b88 targets 0x10065ba0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x10065bac targets 0x100662cc, is taken when (v0(?) & 0x4) == 0, and falls through when (v0(?) & 0x4) != 0.
  The `beq` branch at 0x10065bc4 targets 0x10065dac, is taken when s8(=[ret(?)+16]) >= a5(=[0x102c6668]) (signed), and falls through when s8(=[ret(?)+16]) < a5(=[0x102c6668]) (signed).
  The `beq` branch at 0x10065bd4 targets 0x10065da8, is taken when a2(?) >= a5(=[0x102c6668]) (signed), and falls through when a2(?) < a5(=[0x102c6668]) (signed).
  The `beq` branch at 0x10065bec targets 0x10065f08, is taken when v0(=entry(0x102c6828)) == 0, and falls through when v0(=entry(0x102c6828)) != 0.
  The `beq` branch at 0x10065c00 targets 0x10065f0c, is taken when s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]) == 0, and falls through when s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]) != 0.
  The `beq` branch at 0x10065c0c targets 0x1006636c, is taken when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+36]) == 0, and falls through when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+36]) != 0.
  The `beq` branch at 0x10065c18 targets 0x10066378, is taken when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+36]) == 0, and falls through when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+36]) != 0.
  The `beq` branch at 0x10065c28 targets 0x10066808, is taken when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+84]) == ra(=0x2), and falls through when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+84]) != ra(=0x2).
  The `beq` branch at 0x10065c38 targets 0x10065c60, is taken when a5(=[0x102c60dc]) == 0, and falls through when a5(=[0x102c60dc]) != 0.
  The `beq` branch at 0x10065c48 targets 0x10065c60, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10065c64 targets 0x10065c98, is taken when a5(=[0x102c60e4]) == 0, and falls through when a5(=[0x102c60e4]) != 0.
  The `beq` branch at 0x10065c7c targets 0x10065c94, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10065c98 targets 0x10065d18, is taken when a1(=[0x102c5f78]) == 0, and falls through when a1(=[0x102c5f78]) != 0.
  The `bne` branch at 0x10065ca0 targets 0x10065d18, is taken when a2(=[0x102c5f80]) != s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]), and falls through when a2(=[0x102c5f80]) == s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]).
  The `bne` branch at 0x10065ce0 targets 0x10065cc0, is taken when at(?) != v0(?), and falls through when at(?) == v0(?).
  The `beq` branch at 0x10065d2c targets 0x10065d3c, is taken when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]]) >= v1(=[0x102c60d4]) (signed), and falls through when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]]) < v1(=[0x102c60d4]) (signed).
  The `bne` branch at 0x10065d68 targets 0x10065f04, is taken when a2(=[([sym(clients)] + ([0x102c5d70] << 0x2))-4]) != 0, and falls through when a2(=[([sym(clients)] + ([0x102c5d70] << 0x2))-4]) == 0.
  The `bne` branch at 0x10065d78 targets 0x10065da0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x10065d88 targets 0x10065da0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x10065d98 targets 0x10065d70, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x10065da0 targets 0x10065f08 and is always taken.
  The `beq` branch at 0x10065dac targets 0x100662d8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x10065e30 targets 0x10065e70, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `blez` branch at 0x10065e48 targets 0x10065e8c, is taken when v0(=ret(?)) <= 0 (signed), and falls through when v0(=ret(?)) > 0 (signed).
  The `beq` branch at 0x10065e68 targets 0x10065e8c and is always taken.
  The `beq` branch at 0x10065e90 targets 0x10066248, is taken when ra(=0x6c) == v0(?), and falls through when ra(=0x6c) != v0(?).
  The `beq` branch at 0x10065e98 targets 0x10066248, is taken when at(=0x42) == v0(?), and falls through when at(=0x42) != v0(?).
  The `beq` branch at 0x10065eb8 targets 0x10065af4 and is always taken.
  The `beq` branch at 0x10065ed4 targets 0x1006588c, is taken when a5(=[0x102c60dc]) == 0, and falls through when a5(=[0x102c60dc]) != 0.
  The `beq` branch at 0x10065ee4 targets 0x1006588c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x10065efc targets 0x10065890 and is always taken.
  The `beq` branch at 0x10065f0c targets 0x100660dc, is taken when v0(?) == s8(=[ret(?)+16]), and falls through when v0(?) != s8(=[ret(?)+16]).
  The `beq` branch at 0x10065f24 targets 0x100660dc, is taken when v0(=entry(0x102c6828)) == 0, and falls through when v0(=entry(0x102c6828)) != 0.
  The `beq` branch at 0x10065f38 targets 0x100660dc, is taken when s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]) == 0, and falls through when s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]) != 0.
  The `beq` branch at 0x10065f44 targets 0x10066828, is taken when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+36]) == 0, and falls through when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+36]) != 0.
  The `beq` branch at 0x10065f4c targets 0x10066838, is taken when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+36]) == 0, and falls through when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+36]) != 0.
  The `beq` branch at 0x10065f5c targets 0x10066b84, is taken when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+84]) == ra(=0x2), and falls through when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+84]) != ra(=0x2).
  The `beq` branch at 0x10065f6c targets 0x10065f94, is taken when a5(=[0x102c60dc]) == 0, and falls through when a5(=[0x102c60dc]) != 0.
  The `beq` branch at 0x10065f7c targets 0x10065f94, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10065f98 targets 0x10065fcc, is taken when a5(=[0x102c60e4]) == 0, and falls through when a5(=[0x102c60e4]) != 0.
  The `beq` branch at 0x10065fb0 targets 0x10065fc8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10065fd0 targets 0x10066048, is taken when v1(=[0x102c5f78]) == 0, and falls through when v1(=[0x102c5f78]) != 0.
  The `bne` branch at 0x10065fe0 targets 0x10066048, is taken when a0(=[0x102c5f80]) != s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]), and falls through when a0(=[0x102c5f80]) == s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]).
  The `bne` branch at 0x10066010 targets 0x10065ff0, is taken when at(?) != v0(?), and falls through when at(?) == v0(?).
  The `beq` branch at 0x1006605c targets 0x1006606c, is taken when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]]) >= v1(=[0x102c60d4]) (signed), and falls through when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]]) < v1(=[0x102c60d4]) (signed).
  The `bne` branch at 0x10066098 targets 0x100660d8, is taken when a2(=[([sym(clients)] + ([0x102c5d70] << 0x2))-4]) != 0, and falls through when a2(=[([sym(clients)] + ([0x102c5d70] << 0x2))-4]) == 0.
  The `bne` branch at 0x100660a8 targets 0x100660d0, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0x100660b8 targets 0x100660d0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x100660c8 targets 0x100660a0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x100660d0 targets 0x100660dc and is always taken.
  The `beq` branch at 0x100660fc targets 0x10066110, is taken when s8(=[ret(?)+16]) >= a5(=[0x102c6668]) (signed), and falls through when s8(=[ret(?)+16]) < a5(=[0x102c6668]) (signed).
  The `bne` branch at 0x10066108 targets 0x100666d0, is taken when at(?) < a5(=[0x102c6668]) (signed), and falls through when at(?) >= a5(=[0x102c6668]) (signed).
  The `beq` branch at 0x10066120 targets 0x1006612c, is taken when (v0(=[[ret(?)]+4]) & 0x8) == 0, and falls through when (v0(=[[ret(?)]+4]) & 0x8) != 0.
  The `beq` branch at 0x100661a4 targets 0x100661e4, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `blez` branch at 0x100661bc targets 0x10066200, is taken when v0(=ret(?)) <= 0 (signed), and falls through when v0(=ret(?)) > 0 (signed).
  The `beq` branch at 0x100661dc targets 0x10066200 and is always taken.
  The `beq` branch at 0x10066204 targets 0x100662ec, is taken when ra(=0x6c) == v0(?), and falls through when ra(=0x6c) != v0(?).
  The `beq` branch at 0x1006620c targets 0x100662ec, is taken when at(=0x42) == v0(?), and falls through when at(=0x42) != v0(?).
  The `beq` branch at 0x1006622c targets 0x10065af4 and is always taken.
  The `beq` branch at 0x1006626c targets 0x1006654c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x10066278 targets 0x10066554, is taken when a1(=0x42) == v0(?), and falls through when a1(=0x42) != v0(?).
  The `beq` branch at 0x100662c4 targets 0x10065ea4 and is always taken.
  The `beq` branch at 0x100662d0 targets 0x10065bbc and is always taken.
  The `beq` branch at 0x100662d8 targets 0x10065db8 and is always taken.
  The `beq` branch at 0x100662e4 targets 0x10065568 and is always taken.
  The `beq` branch at 0x1006630c targets 0x10066b40, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10066318 targets 0x10066b4c, is taken when t0(=0x42) == v0(?), and falls through when t0(=0x42) != v0(?).
  The `beq` branch at 0x10066364 targets 0x10066218 and is always taken.
  The `beq` branch at 0x1006636c targets 0x10065c18, is taken when a1(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+32]) == 0, and falls through when a1(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+32]) != 0.
  The `beq` branch at 0x1006637c targets 0x1006638c, is taken when a2(=[0x102c60a8]) == 0, and falls through when a2(=[0x102c60a8]) != 0.
  The `beq` branch at 0x10066384 targets 0x10066bb4, is taken when v0(=[0x102c60a4]) == s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]), and falls through when v0(=[0x102c60a4]) != s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]).
  The `blez` branch at 0x100663c0 targets 0x1006640c, is taken when a6(=[0x102c60a0]) <= 0 (signed), and falls through when a6(=[0x102c60a0]) > 0 (signed).
  The `beq` branch at 0x100663dc targets 0x10066400, is taken when (a6(=[0x102c60a0]) & 0x1) == 0, and falls through when (a6(=[0x102c60a0]) & 0x1) != 0.
  The `bne` branch at 0x100663e8 targets 0x100663fc, is taken when a0(=[[0x102c609c]+20]) != s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]), and falls through when a0(=[[0x102c609c]+20]) == s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]).
  The `bnel` branch at 0x10066404 targets 0x100666b8, is taken when a2(?) != 0, and falls through when a2(?) == 0; its branch-likely delay slot `lw a3,20(a1)` at 0x10066408 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x10066414 targets 0x1006645c, is taken when a3(=[sym(inputInfo)+4]) != 0, and falls through when a3(=[sym(inputInfo)+4]) == 0.
  The `beq` branch at 0x1006641c targets 0x10066410, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `blez` branch at 0x10066430 targets 0x100664fc, is taken when a1(=[0x102c6148]) <= 0 (signed), and falls through when a1(=[0x102c6148]) > 0 (signed).
  The `beq` branch at 0x10066444 targets 0x100664a8 and is always taken.
  The `beq` branch at 0x10066454 targets 0x1006641c, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x10066460 targets 0x10066450, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10066474 targets 0x10066450, is taken when t1(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+4]) != t2(?), and falls through when t1(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+4]) == t2(?).
  The `bne` branch at 0x1006648c targets 0x1006645c, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x10066494 targets 0x1006641c and is always taken.
  The `beq` branch at 0x100664a0 targets 0x100664fc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x100664c8 targets 0x1006649c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x100664f4 targets 0x10066438, is taken when at(?) < a1(=[0x102c6148]) (signed), and falls through when at(?) >= a1(=[0x102c6148]) (signed).
  The `beq` branch at 0x10066500 targets 0x10066be4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x10066510 targets 0x10066530, is taken when a0(=[0x102c6138]) == 0, and falls through when a0(=[0x102c6138]) != 0.
  The `beq` branch at 0x1006651c targets 0x10066ba4, is taken when a2(?) == s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]), and falls through when a2(?) != s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]).
  The `bne` branch at 0x10066528 targets 0x10066518, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x1006653c targets 0x10066648, is taken when a3(=[0x102cb558]) == 0, and falls through when a3(=[0x102cb558]) != 0.
  The `beq` branch at 0x10066544 targets 0x100665ac and is always taken.
  The `bne` branch at 0x1006654c targets 0x10066280, is taken when a4(=0x6c) != v0(?), and falls through when a4(=0x6c) == v0(?).
  The `beq` branch at 0x10066584 targets 0x1006627c and is always taken.
  The `bnel` branch at 0x10066594 targets 0x10066624, is taken when t1(?) != 0, and falls through when t1(?) == 0; its branch-likely delay slot `lw a5,0(a1)` at 0x10066598 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x100665a0 targets 0x10066648, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `blez` branch at 0x100665b4 targets 0x1006659c, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x100665cc targets 0x10066594, is taken when (a5(?) & 0x1) == 0, and falls through when (a5(?) & 0x1) != 0.
  The `bne` branch at 0x100665dc targets 0x1006658c, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x100665e8 targets 0x10066594 and is always taken.
  The `beq` branch at 0x10066604 targets 0x1006663c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x10066618 targets 0x1006659c, is taken when a1(?) == a7(?), and falls through when a1(?) != a7(?).
  The `bne` branch at 0x10066628 targets 0x100665f0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x10066634 targets 0x100665fc and is always taken.
  The `beq` branch at 0x10066640 targets 0x10066618 and is always taken.
  The `beq` branch at 0x1006665c targets 0x10066670, is taken when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+84]) == 0, and falls through when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+84]) != 0.
  The `beq` branch at 0x10066664 targets 0x10066674, is taken when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+84]) == v1(=0x1), and falls through when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+84]) != v1(=0x1).
  The `bne` branch at 0x10066674 targets 0x10065c28, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x1006667c targets 0x10065f0c and is always taken.
  The `bne` branch at 0x10066694 targets 0x100666a8, is taken when a2(?) != s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]), and falls through when a2(?) == s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]).
  The `beq` branch at 0x100666ac targets 0x1006640c, is taken when a1(?) == v0(?), and falls through when a1(?) != v0(?).
  The `bne` branch at 0x100666b8 targets 0x10066690, is taken when a3(?) != s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]), and falls through when a3(?) == s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]).
  The `beq` branch at 0x100666c8 targets 0x10066690 and is always taken.
  The `beq` branch at 0x100666d8 targets 0x10066110, is taken when v0(=ret(Xalloc)) == 0, and falls through when v0(=ret(Xalloc)) != 0.
  The `beq` branch at 0x10066730 targets 0x10066c9c, is taken when v0(=ret(NextAvailableClient)) == 0, and falls through when v0(=ret(NextAvailableClient)) != 0.
  The `beq` branch at 0x10066758 targets 0x1006678c, is taken when a5(=[0x102c619c]) == 0, and falls through when a5(=[0x102c619c]) != 0.
  The `beq` branch at 0x1006676c targets 0x1006678c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x100667bc targets 0x10066c28, is taken when a3(=[sym(GrabInProgress)]) == 0, and falls through when a3(=[sym(GrabInProgress)]) != 0.
  The `beq` branch at 0x100667e8 targets 0x10066c44, is taken when (a5(=[[ret(?)]+4]) & 0x8) == 0, and falls through when (a5(=[[ret(?)]+4]) & 0x8) != 0.
  The `bne` branch at 0x100667f8 targets 0x10065af4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x10066800 targets 0x10066114 and is always taken.
  The `bne` branch at 0x1006680c targets 0x10065c2c, is taken when t0(=[0x102c60d8]) != 0, and falls through when t0(=[0x102c60d8]) == 0.
  The `beq` branch at 0x10066814 targets 0x10066c90, is taken when t1(=[0x102c60ec]) == 0, and falls through when t1(=[0x102c60ec]) != 0.
  The `beq` branch at 0x10066820 targets 0x10065c2c and is always taken.
  The `beq` branch at 0x1006682c targets 0x10065f4c, is taken when t3(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+32]) == 0, and falls through when t3(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+32]) != 0.
  The `beq` branch at 0x1006683c targets 0x1006684c, is taken when t8(=[0x102c60a8]) == 0, and falls through when t8(=[0x102c60a8]) != 0.
  The `beq` branch at 0x10066844 targets 0x10066bd4, is taken when t9(=[0x102c60a4]) == s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]), and falls through when t9(=[0x102c60a4]) != s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]).
  The `blez` branch at 0x10066878 targets 0x100668cc, is taken when a6(=[0x102c60a0]) <= 0 (signed), and falls through when a6(=[0x102c60a0]) > 0 (signed).
  The `beq` branch at 0x1006689c targets 0x100668c0, is taken when (a6(=[0x102c60a0]) & 0x1) == 0, and falls through when (a6(=[0x102c60a0]) & 0x1) != 0.
  The `bne` branch at 0x100668a8 targets 0x100668bc, is taken when a3(=[[0x102c609c]+20]) != s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]), and falls through when a3(=[[0x102c609c]+20]) == s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]).
  The `bnel` branch at 0x100668c4 targets 0x10066b28, is taken when a4(?) != 0, and falls through when a4(?) == 0; its branch-likely delay slot `lw a4,20(v0)` at 0x100668c8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x100668d4 targets 0x1006691c, is taken when a5(=[sym(inputInfo)+4]) != 0, and falls through when a5(=[sym(inputInfo)+4]) == 0.
  The `beq` branch at 0x100668dc targets 0x100668d0, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `blez` branch at 0x100668e8 targets 0x100669bc, is taken when a1(=[0x102c6148]) <= 0 (signed), and falls through when a1(=[0x102c6148]) > 0 (signed).
  The `beq` branch at 0x10066904 targets 0x10066968 and is always taken.
  The `beq` branch at 0x10066914 targets 0x100668dc, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x10066920 targets 0x10066910, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10066934 targets 0x10066910, is taken when t1(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+4]) != t2(?), and falls through when t1(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+4]) == t2(?).
  The `bne` branch at 0x1006694c targets 0x1006691c, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x10066954 targets 0x100668dc and is always taken.
  The `beq` branch at 0x10066960 targets 0x100669bc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x10066988 targets 0x1006695c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x100669b4 targets 0x100668f8, is taken when at(?) < a1(=[0x102c6148]) (signed), and falls through when at(?) >= a1(=[0x102c6148]) (signed).
  The `beq` branch at 0x100669c0 targets 0x10066c4c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x100669d0 targets 0x100669f0, is taken when a0(=[0x102c6138]) == 0, and falls through when a0(=[0x102c6138]) != 0.
  The `beq` branch at 0x100669dc targets 0x10066bc4, is taken when a2(?) == s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]), and falls through when a2(?) != s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]).
  The `bne` branch at 0x100669e8 targets 0x100669d8, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x100669fc targets 0x10066ac8, is taken when a3(=[0x102cb558]) == 0, and falls through when a3(=[0x102cb558]) != 0.
  The `beq` branch at 0x10066a04 targets 0x10066a2c and is always taken.
  The `bnel` branch at 0x10066a14 targets 0x10066aa4, is taken when t1(?) != 0, and falls through when t1(?) == 0; its branch-likely delay slot `lw a5,0(a1)` at 0x10066a18 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x10066a20 targets 0x10066ac8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `blez` branch at 0x10066a34 targets 0x10066a1c, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x10066a4c targets 0x10066a14, is taken when (a5(?) & 0x1) == 0, and falls through when (a5(?) & 0x1) != 0.
  The `bne` branch at 0x10066a5c targets 0x10066a0c, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x10066a68 targets 0x10066a14 and is always taken.
  The `beq` branch at 0x10066a84 targets 0x10066abc, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x10066a98 targets 0x10066a1c, is taken when a1(?) == a7(?), and falls through when a1(?) != a7(?).
  The `bne` branch at 0x10066aa8 targets 0x10066a70, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x10066ab4 targets 0x10066a7c and is always taken.
  The `beq` branch at 0x10066ac0 targets 0x10066a98 and is always taken.
  The `beq` branch at 0x10066ad4 targets 0x10066af0, is taken when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+84]) == 0, and falls through when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+84]) != 0.
  The `beq` branch at 0x10066ae0 targets 0x10066af0, is taken when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+84]) == a0(=0x1), and falls through when v0(=[[([sym(clients)] + (entry(0x102c6828) << 0x2))]+84]) != a0(=0x1).
  The `bne` branch at 0x10066af0 targets 0x10065f5c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x10066af8 targets 0x100660e0 and is always taken.
  The `bne` branch at 0x10066b04 targets 0x10066b18, is taken when a3(?) != s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]), and falls through when a3(?) == s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]).
  The `beq` branch at 0x10066b1c targets 0x100668cc, is taken when v0(?) == a1(?), and falls through when v0(?) != a1(?).
  The `bne` branch at 0x10066b28 targets 0x10066b00, is taken when a4(?) != s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]), and falls through when a4(?) == s4(=[([sym(clients)] + (entry(0x102c6828) << 0x2))]).
  The `beq` branch at 0x10066b38 targets 0x10066b00 and is always taken.
  The `bne` branch at 0x10066b44 targets 0x10066320, is taken when a5(=0x6c) != v0(?), and falls through when a5(=0x6c) == v0(?).
  The `beq` branch at 0x10066b7c targets 0x1006631c and is always taken.
  The `bne` branch at 0x10066b88 targets 0x10065f60, is taken when t8(=[0x102c60d8]) != 0, and falls through when t8(=[0x102c60d8]) == 0.
  The `beq` branch at 0x10066b90 targets 0x10066cb0, is taken when t9(=[0x102c60ec]) == 0, and falls through when t9(=[0x102c60ec]) != 0.
  The `beq` branch at 0x10066b9c targets 0x10065f60 and is always taken.
  The `beq` branch at 0x10066bac targets 0x10066530 and is always taken.
  The `beq` branch at 0x10066bbc targets 0x10066390 and is always taken.
  The `beq` branch at 0x10066bcc targets 0x100669f0 and is always taken.
  The `beq` branch at 0x10066bdc targets 0x10066850 and is always taken.
  The `beq` branch at 0x10066bf8 targets 0x10066504, is taken when a5(=[0x102c60dc]) == 0, and falls through when a5(=[0x102c60dc]) != 0.
  The `beq` branch at 0x10066c08 targets 0x10066504, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10066c20 targets 0x10066508 and is always taken.
  The `beq` branch at 0x10066c3c targets 0x100667dc and is always taken.
  The `beq` branch at 0x10066c44 targets 0x100667f4 and is always taken.
  The `beq` branch at 0x10066c60 targets 0x100669c4, is taken when a5(=[0x102c60dc]) == 0, and falls through when a5(=[0x102c60dc]) != 0.
  The `beq` branch at 0x10066c70 targets 0x100669c4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10066c88 targets 0x100669c8 and is always taken.
  The `beq` branch at 0x10066c94 targets 0x10065c2c and is always taken.
  The `beq` branch at 0x10066ca8 targets 0x10066114 and is always taken.
  The `beq` branch at 0x10066cb4 targets 0x10065f60 and is always taken.
  The return at 0x10065b30 has v0 = 0x1.
  The return at 0x10066240 has v0 = 0x1.
  The instructions from 0x100654ac to 0x100654ac are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10065798 to 0x1006579c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10065938 to 0x1006593c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100659f8 to 0x100659fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1006644c to 0x1006644c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10066684 to 0x1006668c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1006690c to 0x1006690c are not reached by any path from the entry, and their branches are not listed.
- `DestroyPointerBoxRes..MAD` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10066cc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10066cc0-0x10066d28 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x10066cc0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0x10066cec calls xdevUnconstrainPointer [0x1015e370] with a0=[0x102ca84c], a1=?, a2=?, a3=?.
  The `jal` at 0x10066d18 calls ErrorF [0x10094ec0] with a0=0x10298d48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x102ca848].
  The `bne` branch at 0x10066cdc targets 0x10066d10, is taken when at(=[a0]) != v0(=[0x102ca844]), and falls through when at(=[a0]) == v0(=[0x102ca844]).
  The `bne` branch at 0x10066ce4 targets 0x10066d14, is taken when a3(=[0x102ca848]) != a1, and falls through when a3(=[0x102ca848]) == a1.
  The `beq` branch at 0x10066d20 targets 0x10066cec and is always taken.
  The return at 0x10066d08 has v0 = 0x0.
- `ProcXkbSetNames` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10066d30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10066d30-0x100681c0 (5264 bytes).
  It occupies 5264 bytes.
  The `lw` at 0x10066d30 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10066d4c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lhu` at 0x10066d50 loads 2 bytes from a0 (arg0 at entry) +0x5c.
  The `lhu` at 0x10066d60 loads 2 bytes from [a0+8] +0x4.
  The `lw` at 0x10066d70 loads 4 bytes from sym(inputInfo) +0xc.
  The `lbu` at 0x10066d74 loads 1 byte from [sym(inputInfo)+12] +0x4c.
  57 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10066d88, `lw` at 0x10066d94, `lw` at 0x10066e78.
  28 such `lw` accesses load 4 bytes from [a0+8] +0x8, including `lw` at 0x10066da0, `lw` at 0x10066f20, `lw` at 0x10066f8c.
  28 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x10066dcc, `sw` at 0x10066e10, `sw` at 0x100672ac.
  The `lw` at 0x10066e34 loads 4 bytes from sym(inputInfo) +0x10.
  The `lbu` at 0x10066e38 loads 1 byte from [sym(inputInfo)+16] +0x4c.
  The `lw` at 0x10066e40 loads 4 bytes from sym(inputInfo) +0x4.
  2 such `lw` accesses load 4 bytes from sym(inputInfo) +0x8, including `lw` at 0x10066e80, `lw` at 0x100671bc.
  59 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10066e84, `lbu` at 0x10066f3c, `lbu` at 0x10066f40.
  12 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x10066ec4, `lw` at 0x10066f30, `lw` at 0x10066f9c.
  The `lbu` at 0x10066ed0 loads 1 byte from [a0+8] +0x1e.
  The `lbu` at 0x10066ed4 loads 1 byte from [a0+8] +0x1d.
  The `sb` at 0x10066ed8 stores 1 byte to [a0+8] +0x1e.
  The `sb` at 0x10066edc stores 1 byte to [a0+8] +0x1d.
  The `lbu` at 0x10066ee0 loads 1 byte from [a0+8] +0x1f.
  The `lbu` at 0x10066ee4 loads 1 byte from [a0+8] +0x1c.
  The `sb` at 0x10066ee8 stores 1 byte to [a0+8] +0x1f.
  The `sb` at 0x10066eec stores 1 byte to [a0+8] +0x1c.
  The `lw` at 0x10066ef0 loads 4 bytes from [a0+8] +0x1c.
  45 such `sb` accesses store 1 byte to ?, including `sb` at 0x10066f44, `sb` at 0x10066f48, `sb` at 0x10066f54.
  8 such `lbu` accesses load 1 byte from [a0+8] +0xd, including `lbu` at 0x1006715c, `lbu` at 0x10067254, `lbu` at 0x10067338.
  3 such `lbu` accesses load 1 byte from [a0+8] +0xc, including `lbu` at 0x1006716c, `lbu` at 0x10067b80, `lbu` at 0x10067be4.
  4 such `lbu` accesses load 1 byte from [a0+8] +0xf, including `lbu` at 0x100673b0, `lbu` at 0x1006744c, `lbu` at 0x10067c14.
  3 such `lbu` accesses load 1 byte from [a0+8] +0xe, including `lbu` at 0x100673c0, `lbu` at 0x10067874, `lbu` at 0x10067c20.
  3 such `lw` accesses load 4 bytes from [a0+8] +0x10, including `lw` at 0x1006754c, `lw` at 0x10067d28, `lw` at 0x10067d94.
  3 such `lhu` accesses load 2 bytes from [a0+8] +0x6, including `lhu` at 0x1006763c, `lhu` at 0x10067db0, `lhu` at 0x10067e1c.
  3 such `lbu` accesses load 1 byte from [a0+8] +0x14, including `lbu` at 0x100676f8, `lbu` at 0x10067e38, `lbu` at 0x10067ea4.
  3 such `lbu` accesses load 1 byte from [a0+8] +0x16, including `lbu` at 0x10067798, `lbu` at 0x10067ecc, `lbu` at 0x10067ef0.
  4 such `lbu` accesses load 1 byte from [a0+8] +0x17, including `lbu` at 0x100677ac, `lbu` at 0x10067ec0, `lbu` at 0x10067ef4.
  5 such `lbu` accesses load 1 byte from [a0+8] +0x18, including `lbu` at 0x100677f0, `lbu` at 0x10067980, `lbu` at 0x10067f20.
  6 such `lbu` accesses load 1 byte from [a0+8] +0x15, including `lbu` at 0x10067818, `lbu` at 0x10067984, `lbu` at 0x10067f8c.
  The `lhu` at 0x10067934 loads 2 bytes from [a0+8] +0x2.
  20 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10067aa0, `sw` at 0x10067ac4, `sw` at 0x10067ae8.
  The `sh` at 0x10067ff0 stores 2 bytes to ?.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x10068000, `lhu` at 0x10068170.
  3 such `sw` accesses store 4 bytes to ret(XkbFindSrvLedInfo) +0x20, including `sw` at 0x1006804c, `sw` at 0x10068064, `sw` at 0x10068078.
  The `lw` at 0x100680b8 loads 4 bytes from ret(XkbFindSrvLedInfo) +0x20.
  The `lw` at 0x100680bc loads 4 bytes from ret(XkbFindSrvLedInfo) +0x1c.
  The `lw` at 0x100680c8 loads 4 bytes from ret(XkbFindSrvLedInfo) +0x18.
  The `lw` at 0x100680f4 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0x100672c8 calls strcmp with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100672e0 calls strcmp with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100672f4 calls strcmp with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10067308 calls strcmp with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1006798c calls SrvXkbAllocNames [0x100fe690] with a0=?, a1=[[a0+8]+8], a2=[[a0+8]+21]:1, a3=[[a0+8]+24]:1.
  The `jalr` at 0x10067ee0 calls memcpy with a0=?, a1=?, a2=([[a0+8]+23]:1 << 0x2), a3=([[a0+8]+22]:1 << 0x2).
  The `jal` at 0x10067f30 calls SrvXkbAllocNames [0x100fe690] with a0=?, a1=0x400, a2=0x0, a3=[[a0+8]+24]:1.
  The `jal` at 0x10067f5c calls Xfree [0x101fc9c0] with a0=?, a1=0x400, a2=[[a0+8]+8], a3=[[a0+8]+24]:1.
  The `jal` at 0x10067f9c calls SrvXkbAllocNames [0x100fe690] with a0=?, a1=0x2000, a2=[[a0+8]+21]:1, a3=0x0.
  The `jal` at 0x10067fe0 calls Xfree [0x101fc9c0] with a0=?, a1=0x2000, a2=[[a0+8]+21]:1, a3=?.
  The `jal` at 0x1006801c calls XkbSendNamesNotify [0x100c1fc0] with a0=?, a1=sp-184, a2=?, a3=?.
  The `jal` at 0x10068038 calls XkbFindSrvLedInfo [0x10242bc0] with a0=?, a1=0x300, a2=0x400, a3=0x1c.
  The `jal` at 0x100680e4 calls XkbSendExtensionDeviceNotify [0x1006a090] with a0=?, a1=a0 at entry (arg0), a2=sp-152, a3=?, a4=0x4.
  The `jalr` at 0x10068188 calls memcpy with a0=?, a1=?, a2=([[a0+8]+24]:1 << 0x3), a3=?.
  The `bne` branch at 0x10066d48 targets 0x10066e4c, is taken when at(=[a0+72]) < 0x7 (unsigned), and falls through when at(=[a0+72]) >= 0x7 (unsigned).
  The `beq` branch at 0x10066d58 targets 0x10067130, is taken when (v0(=[a0+92]:2) & 0x8000) == 0, and falls through when (v0(=[a0+92]:2) & 0x8000) != 0.
  The `beq` branch at 0x10066d6c targets 0x10066d80, is taken when a1(=[[a0+8]+4]:2) == v1(=0x100), and falls through when a1(=[[a0+8]+4]:2) != v1(=0x100).
  The `bne` branch at 0x10066d78 targets 0x10066e30, is taken when a3(=[[sym(inputInfo)+12]+76]:1) != a1(=[[a0+8]+4]:2), and falls through when a3(=[[sym(inputInfo)+12]+76]:1) == a1(=[[a0+8]+4]:2).
  The `beq` branch at 0x10066d80 targets 0x10066df0, is taken when a0(=[sym(inputInfo)+12]) == 0, and falls through when a0(=[sym(inputInfo)+12]) != 0.
  The `beq` branch at 0x10066d8c targets 0x10066e60, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10066d98 targets 0x10066e60, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10066dac targets 0x10066ea0, is taken when (a2(=[[a0+8]+8]) & a4(=-0x4000)) == 0, and falls through when (a2(=[[a0+8]+8]) & a4(=-0x4000)) != 0.
  The `bne` branch at 0x10066dec targets 0x10066d88, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x10066e30 targets 0x10066e44, is taken when a1(=[[a0+8]+4]:2) == t0(=0x200), and falls through when a1(=[[a0+8]+4]:2) != t0(=0x200).
  The `bne` branch at 0x10066e3c targets 0x10066e68, is taken when t1(=[[sym(inputInfo)+16]+76]:1) != a1(=[[a0+8]+4]:2), and falls through when t1(=[[sym(inputInfo)+16]+76]:1) == a1(=[[a0+8]+4]:2).
  The `beq` branch at 0x10066e44 targets 0x10066dec and is always taken.
  The `beq` branch at 0x10066e60 targets 0x10066df4 and is always taken.
  The `beq` branch at 0x10066e68 targets 0x100671bc, is taken when t2(=[sym(inputInfo)+4]) == 0, and falls through when t2(=[sym(inputInfo)+4]) != 0.
  The `beq` branch at 0x10066e70 targets 0x10066e84 and is always taken.
  The `beq` branch at 0x10066e7c targets 0x100671c0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x10066e88 targets 0x10066e78, is taken when t3(?) != v0(?), and falls through when t3(?) == v0(?).
  The `bne` branch at 0x10066e90 targets 0x10066dec, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x10066e98 targets 0x10066de4 and is always taken.
  The `beq` branch at 0x10066ebc targets 0x10066f24, is taken when (a2(=[[a0+8]+8]) & 0x1) == 0, and falls through when (a2(=[[a0+8]+8]) & 0x1) != 0.
  The `beq` branch at 0x10066ec8 targets 0x10066ef0, is taken when at(=[a0+16]) == 0, and falls through when at(=[a0+16]) != 0.
  The `beq` branch at 0x10066ef4 targets 0x10066f14, is taken when v0(=[[a0+8]+28]) == 0, and falls through when v0(=[[a0+8]+28]) != 0.
  The `beq` branch at 0x10066f00 targets 0x10066f18, is taken when a2(=[0x102c6188]) >= v0(=[[a0+8]+28]) (unsigned), and falls through when a2(=[0x102c6188]) < v0(=[[a0+8]+28]) (unsigned).
  The `beq` branch at 0x10066f0c targets 0x10066f18 and is always taken.
  The `beq` branch at 0x10066f18 targets 0x100672a0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10066f28 targets 0x10066f94, is taken when (a2(=[[a0+8]+8]) & 0x2) == 0, and falls through when (a2(=[[a0+8]+8]) & 0x2) != 0.
  The `beq` branch at 0x10066f34 targets 0x10066f5c, is taken when a4(=[a0+16]) == 0, and falls through when a4(=[a0+16]) != 0.
  The `beq` branch at 0x10066f60 targets 0x10066f80, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10066f6c targets 0x10066f84, is taken when t2(=[0x102c6188]) >= v0(?) (unsigned), and falls through when t2(=[0x102c6188]) < v0(?) (unsigned).
  The `beq` branch at 0x10066f78 targets 0x10066f84 and is always taken.
  The `beq` branch at 0x10066f84 targets 0x10067420, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10066f94 targets 0x10067000, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x10066fa0 targets 0x10066fc8, is taken when t8(=[a0+16]) == 0, and falls through when t8(=[a0+16]) != 0.
  The `beq` branch at 0x10066fcc targets 0x10066fec, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10066fd8 targets 0x10066ff0, is taken when a1(=[0x102c6188]) >= v0(?) (unsigned), and falls through when a1(=[0x102c6188]) < v0(?) (unsigned).
  The `beq` branch at 0x10066fe4 targets 0x10066ff0 and is always taken.
  The `beq` branch at 0x10066ff0 targets 0x100674f8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10067000 targets 0x10067068, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1006700c targets 0x10067034, is taken when a4(=[a0+16]) == 0, and falls through when a4(=[a0+16]) != 0.
  The `beq` branch at 0x10067038 targets 0x10067058, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10067048 targets 0x10067058, is taken when t2(=[0x102c6188]) >= v0(?) (unsigned), and falls through when t2(=[0x102c6188]) < v0(?) (unsigned).
  The `beq` branch at 0x10067058 targets 0x10067514, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10067068 targets 0x100670d0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x10067074 targets 0x1006709c, is taken when t8(=[a0+16]) == 0, and falls through when t8(=[a0+16]) != 0.
  The `beq` branch at 0x100670a0 targets 0x100670c0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100670b0 targets 0x100670c0, is taken when a1(=[0x102c6188]) >= v0(?) (unsigned), and falls through when a1(=[0x102c6188]) < v0(?) (unsigned).
  The `beq` branch at 0x100670c0 targets 0x10067574, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x100670d0 targets 0x10067154, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x100670dc targets 0x10067104, is taken when a4(=[a0+16]) == 0, and falls through when a4(=[a0+16]) != 0.
  The `beq` branch at 0x10067108 targets 0x10067140, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10067114 targets 0x10067144, is taken when t2(=[0x102c6188]) >= v0(?) (unsigned), and falls through when t2(=[0x102c6188]) < v0(?) (unsigned).
  The `beq` branch at 0x10067128 targets 0x10067144 and is always taken.
  The `beq` branch at 0x10067144 targets 0x100675b4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10067154 targets 0x100673a4, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `blez` branch at 0x10067160 targets 0x10067954, is taken when a2(=[[a0+8]+13]:1) <= 0 (signed), and falls through when a2(=[[a0+8]+13]:1) > 0 (signed).
  The `beq` branch at 0x10067184 targets 0x10067584, is taken when t8(=([[a0+8]+12]:1 + [[a0+8]+13]:1)-1) >= a3(?) (unsigned), and falls through when t8(=([[a0+8]+12]:1 + [[a0+8]+13]:1)-1) < a3(?) (unsigned).
  The `bne` branch at 0x1006718c targets 0x10067664, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `blez` branch at 0x100671a0 targets 0x10067244, is taken when a2(=[[a0+8]+13]:1) <= 0 (signed), and falls through when a2(=[[a0+8]+13]:1) > 0 (signed).
  The `beq` branch at 0x100671b4 targets 0x100671f8 and is always taken.
  The `beq` branch at 0x100671c0 targets 0x10066ddc, is taken when a7(=[sym(inputInfo)+8]) == 0, and falls through when a7(=[sym(inputInfo)+8]) != 0.
  The `beq` branch at 0x100671c8 targets 0x100671dc and is always taken.
  The `beq` branch at 0x100671d4 targets 0x10066ddc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x100671e0 targets 0x100671d0, is taken when t0(?) != v0(?), and falls through when t0(?) == v0(?).
  The `beq` branch at 0x100671e8 targets 0x10066e90 and is always taken.
  The `beq` branch at 0x100671f0 targets 0x10067244, is taken when a1(?) == a6(?), and falls through when a1(?) != a6(?).
  The `beq` branch at 0x100671f8 targets 0x10067220, is taken when a3(=[a0+16]) == 0, and falls through when a3(=[a0+16]) != 0.
  The `beq` branch at 0x10067228 targets 0x100671f0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10067230 targets 0x100671f0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x1006723c targets 0x1006724c and is always taken.
  The `beq` branch at 0x1006724c targets 0x100678b8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `blez` branch at 0x10067258 targets 0x10067398, is taken when a2(=[[a0+8]+13]:1) <= 0 (signed), and falls through when a2(=[[a0+8]+13]:1) > 0 (signed).
  The `beq` branch at 0x10067298 targets 0x10067358 and is always taken.
  The `beq` branch at 0x100672d0 targets 0x1006731c, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x100672e8 targets 0x10067318, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x100672fc targets 0x10067318, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x10067310 targets 0x10067338, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x10067350 targets 0x10067390, is taken when t9(?) >= ra(=[[a0+8]+13]:1) (signed), and falls through when t9(?) < ra(=[[a0+8]+13]:1) (signed).
  The `bne` branch at 0x1006736c targets 0x100672bc, is taken when a3(=[0x102c6188]) < a2(?) (unsigned), and falls through when a3(=[0x102c6188]) >= a2(?) (unsigned).
  The `beq` branch at 0x1006737c targets 0x10067530, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10067388 targets 0x100672c0 and is always taken.
  The `beq` branch at 0x100673a8 targets 0x10067540, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `blez` branch at 0x100673b4 targets 0x100679a4, is taken when t2(=[[a0+8]+15]:1) <= 0 (signed), and falls through when t2(=[[a0+8]+15]:1) > 0 (signed).
  The `beq` branch at 0x100673d8 targets 0x10067848, is taken when a7(=([[a0+8]+15]:1 + [[a0+8]+14]:1)-1) >= a3(?) (unsigned), and falls through when a7(=([[a0+8]+15]:1 + [[a0+8]+14]:1)-1) < a3(?) (unsigned).
  The `beq` branch at 0x1006740c targets 0x10067540, is taken when t2(=[[a0+8]+15]:1) == 0, and falls through when t2(=[[a0+8]+15]:1) != 0.
  The `beq` branch at 0x10067418 targets 0x10067460 and is always taken.
  The `beq` branch at 0x10067444 targets 0x100678ac, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10067458 targets 0x10067538, is taken when t3(?) >= t2(=[[a0+8]+15]:1) (unsigned), and falls through when t3(?) < t2(=[[a0+8]+15]:1) (unsigned).
  The `beq` branch at 0x10067470 targets 0x10067450, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x1006747c targets 0x10067874, is taken when a2(?) != a3(?), and falls through when a2(?) == a3(?).
  The `bgtz` branch at 0x10067488 targets 0x100674a8, is taken when a3(?) > 0 (signed), and falls through when a3(?) <= 0 (signed).
  The `beq` branch at 0x10067490 targets 0x1006743c and is always taken.
  The `beq` branch at 0x100674a0 targets 0x1006743c, is taken when v0(?) == a7(?), and falls through when v0(?) != a7(?).
  The `beq` branch at 0x100674a8 targets 0x100674d0, is taken when a6(=[a0+16]) == 0, and falls through when a6(=[a0+16]) != 0.
  The `beq` branch at 0x100674d8 targets 0x100674a0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x100674e0 targets 0x100674a0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x100674f0 targets 0x10067444 and is always taken.
  The `beq` branch at 0x10067530 targets 0x100672c0 and is always taken.
  The `beq` branch at 0x10067544 targets 0x10067634, is taken when (a2(=[[a0+8]+8]) & 0x100) == 0, and falls through when (a2(=[[a0+8]+8]) & 0x100) != 0.
  The `beq` branch at 0x10067550 targets 0x10067a38, is taken when a7(=[[a0+8]+16]) == 0, and falls through when a7(=[[a0+8]+16]) != 0.
  The `beq` branch at 0x10067560 targets 0x10067624, is taken when a7(=[[a0+8]+16]) == 0, and falls through when a7(=[[a0+8]+16]) != 0.
  The `beq` branch at 0x1006756c targets 0x100675c8 and is always taken.
  The `beq` branch at 0x1006757c targets 0x10066e20 and is always taken.
  The `beq` branch at 0x100675ac targets 0x10066e20 and is always taken.
  The `beq` branch at 0x100675bc targets 0x10066e20 and is always taken.
  The `beq` branch at 0x100675c4 targets 0x10067624, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x100675d4 targets 0x100675c4, is taken when (a7(=[[a0+8]+16]) & a2(?)) == 0, and falls through when (a7(=[[a0+8]+16]) & a2(?)) != 0.
  The `beq` branch at 0x100675dc targets 0x10067604, is taken when t1(=[a0+16]) == 0, and falls through when t1(=[a0+16]) != 0.
  The `beq` branch at 0x1006760c targets 0x100675c4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x10067614 targets 0x100675c4, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x10067624 targets 0x10067970, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10067634 targets 0x100676f0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x10067640 targets 0x10067a50, is taken when a7(=[[a0+8]+6]:2) == 0, and falls through when a7(=[[a0+8]+6]:2) != 0.
  The `beq` branch at 0x10067654 targets 0x100676e0, is taken when a7(=[[a0+8]+6]:2) == 0, and falls through when a7(=[[a0+8]+6]:2) != 0.
  The `beq` branch at 0x1006765c targets 0x10067688 and is always taken.
  The `beq` branch at 0x10067678 targets 0x10066e20 and is always taken.
  The `beq` branch at 0x10067684 targets 0x100676e0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10067694 targets 0x10067684, is taken when (v0(?) & a7(=[[a0+8]+6]:2)) == 0, and falls through when (v0(?) & a7(=[[a0+8]+6]:2)) != 0.
  The `beq` branch at 0x1006769c targets 0x100676c4, is taken when t1(=[a0+16]) == 0, and falls through when t1(=[a0+16]) != 0.
  The `beq` branch at 0x100676c8 targets 0x10067680, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x100676d0 targets 0x10067684, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x100676e0 targets 0x100679c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x100676f0 targets 0x10067790, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x100676fc targets 0x10067c60, is taken when a6(=[[a0+8]+20]:1) == 0, and falls through when a6(=[[a0+8]+20]:1) != 0.
  The `beq` branch at 0x1006770c targets 0x10067780, is taken when a6(=[[a0+8]+20]:1) == 0, and falls through when a6(=[[a0+8]+20]:1) != 0.
  The `beq` branch at 0x10067714 targets 0x10067730 and is always taken.
  The `beq` branch at 0x10067728 targets 0x10067780, is taken when a2(?) >= 0x4 (unsigned), and falls through when a2(?) < 0x4 (unsigned).
  The `beq` branch at 0x10067734 targets 0x10067720, is taken when (v0(?) & a6(=[[a0+8]+20]:1)) == 0, and falls through when (v0(?) & a6(=[[a0+8]+20]:1)) != 0.
  The `beq` branch at 0x1006773c targets 0x10067764, is taken when a7(=[a0+16]) == 0, and falls through when a7(=[a0+16]) != 0.
  The `beq` branch at 0x10067768 targets 0x1006771c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10067770 targets 0x10067720, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x10067780 targets 0x10067a28, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10067790 targets 0x100677e4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x100677a4 targets 0x100679d4, is taken when a3(=[[a0+8]+22]:1) < a6(?) (unsigned), and falls through when a3(=[[a0+8]+22]:1) >= a6(?) (unsigned).
  The `bne` branch at 0x100677c4 targets 0x100679fc, is taken when a7(?) < t0(=([[a0+8]+22]:1 + [[a0+8]+23]:1)-1) (unsigned), and falls through when a7(?) >= t0(=([[a0+8]+22]:1 + [[a0+8]+23]:1)-1) (unsigned).
  The `blez` branch at 0x100677cc targets 0x100679fc, is taken when a6(=[[a0+8]+23]:1) <= 0 (signed), and falls through when a6(=[[a0+8]+23]:1) > 0 (signed).
  The `beq` branch at 0x100677e8 targets 0x10067810, is taken when (a2(=[[a0+8]+8]) & 0x400) == 0, and falls through when (a2(=[[a0+8]+8]) & 0x400) != 0.
  The `blez` branch at 0x100677f4 targets 0x1006780c, is taken when a3(=[[a0+8]+24]:1) <= 0 (signed), and falls through when a3(=[[a0+8]+24]:1) > 0 (signed).
  The `beq` branch at 0x10067810 targets 0x10067934, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `blez` branch at 0x1006781c targets 0x10067fb4, is taken when a3(=[[a0+8]+21]:1) <= 0 (signed), and falls through when a3(=[[a0+8]+21]:1) > 0 (signed).
  The `blez` branch at 0x10067828 targets 0x1006791c, is taken when a3(=[[a0+8]+21]:1) <= 0 (signed), and falls through when a3(=[[a0+8]+21]:1) > 0 (signed).
  The `beq` branch at 0x10067840 targets 0x100678d0 and is always taken.
  The `beq` branch at 0x1006786c targets 0x10066e20 and is always taken.
  The `beq` branch at 0x100678a4 targets 0x10066e20 and is always taken.
  The `beq` branch at 0x100678b0 targets 0x10066e20 and is always taken.
  The `beq` branch at 0x100678c0 targets 0x10066e20 and is always taken.
  The `beq` branch at 0x100678c8 targets 0x1006791c, is taken when v0(?) == a7(?), and falls through when v0(?) != a7(?).
  The `beq` branch at 0x100678d0 targets 0x100678f8, is taken when a6(=[a0+16]) == 0, and falls through when a6(=[a0+16]) != 0.
  The `beq` branch at 0x10067900 targets 0x100678c8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10067908 targets 0x100678c8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10067914 targets 0x10067928 and is always taken.
  The `beq` branch at 0x10067928 targets 0x10067a40, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10067940 targets 0x10067980, is taken when a3(=[[a0+8]+2]:2) == a1(?), and falls through when a3(=[[a0+8]+2]:2) != a1(?).
  The `beq` branch at 0x1006794c targets 0x10066e20 and is always taken.
  The `beq` branch at 0x10067968 targets 0x10066e20 and is always taken.
  The `beq` branch at 0x10067978 targets 0x10066e20 and is always taken.
  The `beq` branch at 0x10067994 targets 0x10067a5c, is taken when v0(=ret(SrvXkbAllocNames)) == 0, and falls through when v0(=ret(SrvXkbAllocNames)) != 0.
  The `beq` branch at 0x1006799c targets 0x10066e20 and is always taken.
  The `beq` branch at 0x100679bc targets 0x10066e20 and is always taken.
  The `beq` branch at 0x100679cc targets 0x10066e20 and is always taken.
  The `beq` branch at 0x100679f0 targets 0x10066e20 and is always taken.
  The `beq` branch at 0x10067a20 targets 0x10066e20 and is always taken.
  The `beq` branch at 0x10067a30 targets 0x10066e20 and is always taken.
  The `beq` branch at 0x10067a38 targets 0x10066e20 and is always taken.
  The `beq` branch at 0x10067a48 targets 0x10066e20 and is always taken.
  The `beq` branch at 0x10067a54 targets 0x10066e20 and is always taken.
  The `beq` branch at 0x10067a84 targets 0x10067aa8, is taken when (a2(=[[a0+8]+8]) & 0x1) == 0, and falls through when (a2(=[[a0+8]+8]) & 0x1) != 0.
  The `beq` branch at 0x10067aac targets 0x10067acc, is taken when (a2(=[[a0+8]+8]) & 0x2) == 0, and falls through when (a2(=[[a0+8]+8]) & 0x2) != 0.
  The `beq` branch at 0x10067ad0 targets 0x10067af0, is taken when (a2(=[[a0+8]+8]) & 0x4) == 0, and falls through when (a2(=[[a0+8]+8]) & 0x4) != 0.
  The `beq` branch at 0x10067af4 targets 0x10067b14, is taken when (a2(=[[a0+8]+8]) & 0x8) == 0, and falls through when (a2(=[[a0+8]+8]) & 0x8) != 0.
  The `beq` branch at 0x10067b18 targets 0x10067b40, is taken when (a2(=[[a0+8]+8]) & 0x10) == 0, and falls through when (a2(=[[a0+8]+8]) & 0x10) != 0.
  The `beq` branch at 0x10067b40 targets 0x10067b68, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10067b68 targets 0x10067c08, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `blez` branch at 0x10067b74 targets 0x10067c08, is taken when t0(=[[a0+8]+13]:1) <= 0 (signed), and falls through when t0(=[[a0+8]+13]:1) > 0 (signed).
  The `beq` branch at 0x10067bb8 targets 0x10067be4, is taken when v0(?) >= a4(=[[a0+8]+13]:1) (unsigned), and falls through when v0(?) < a4(=[[a0+8]+13]:1) (unsigned).
  The `bne` branch at 0x10067bd8 targets 0x10067ba4, is taken when v0(?) < a6(=[[a0+8]+13]:1) (unsigned), and falls through when v0(?) >= a6(=[[a0+8]+13]:1) (unsigned).
  The `beq` branch at 0x10067c08 targets 0x10067d20, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x10067c50 targets 0x10067d0c, is taken when t2(=[[a0+8]+15]:1) == 0, and falls through when t2(=[[a0+8]+15]:1) != 0.
  The `beq` branch at 0x10067c58 targets 0x100681b8 and is always taken.
  The `beq` branch at 0x10067c68 targets 0x10066e20 and is always taken.
  The `beq` branch at 0x10067c98 targets 0x10067cc8, is taken when a2(?) >= t0(?) (unsigned), and falls through when a2(?) < t0(?) (unsigned).
  The `bne` branch at 0x10067cc0 targets 0x10067c78, is taken when a2(?) < t0(?) (unsigned), and falls through when a2(?) >= t0(?) (unsigned).
  The `beq` branch at 0x10067ce4 targets 0x10067d0c, is taken when t1(?) >= t2(=[[a0+8]+15]:1) (unsigned), and falls through when t1(?) < t2(=[[a0+8]+15]:1) (unsigned).
  The `blez` branch at 0x10067cf0 targets 0x10067cd8, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `bne` branch at 0x10067cfc targets 0x10067c70, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x10067d04 targets 0x10067ccc and is always taken.
  The `beq` branch at 0x10067d20 targets 0x10067da8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x10067d30 targets 0x10067d98, is taken when a7(=[[a0+8]+16]) == 0, and falls through when a7(=[[a0+8]+16]) != 0.
  The `beq` branch at 0x10067d44 targets 0x10067d58, is taken when (v0(?) & a7(=[[a0+8]+16])) == 0, and falls through when (v0(?) & a7(=[[a0+8]+16])) != 0.
  The `beq` branch at 0x10067d60 targets 0x10067d94, is taken when a3(?) >= 0x20 (signed), and falls through when a3(?) < 0x20 (signed).
  The `beq` branch at 0x10067d6c targets 0x10067d80, is taken when (v0(?) & a7(=[[a0+8]+16])) == 0, and falls through when (v0(?) & a7(=[[a0+8]+16])) != 0.
  The `bne` branch at 0x10067d8c targets 0x10067d40, is taken when a3(?) < 0x20 (signed), and falls through when a3(?) >= 0x20 (signed).
  The `beq` branch at 0x10067da8 targets 0x10067e30, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10067dbc targets 0x10067e20, is taken when a7(=[[a0+8]+6]:2) == 0, and falls through when a7(=[[a0+8]+6]:2) != 0.
  The `beq` branch at 0x10067dcc targets 0x10067de0, is taken when (v0(?) & a7(=[[a0+8]+6]:2)) == 0, and falls through when (v0(?) & a7(=[[a0+8]+6]:2)) != 0.
  The `beq` branch at 0x10067de8 targets 0x10067e1c, is taken when a3(?) >= 0x10 (signed), and falls through when a3(?) < 0x10 (signed).
  The `beq` branch at 0x10067df4 targets 0x10067e08, is taken when (v0(?) & a7(=[[a0+8]+6]:2)) == 0, and falls through when (v0(?) & a7(=[[a0+8]+6]:2)) != 0.
  The `bne` branch at 0x10067e14 targets 0x10067dc8, is taken when a3(?) < 0x10 (signed), and falls through when a3(?) >= 0x10 (signed).
  The `beq` branch at 0x10067e30 targets 0x10067eb8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10067e44 targets 0x10067ea8, is taken when a7(=[[a0+8]+20]:1) == 0, and falls through when a7(=[[a0+8]+20]:1) != 0.
  The `beq` branch at 0x10067e54 targets 0x10067e68, is taken when (v0(?) & a7(=[[a0+8]+20]:1)) == 0, and falls through when (v0(?) & a7(=[[a0+8]+20]:1)) != 0.
  The `beq` branch at 0x10067e70 targets 0x10067ea4, is taken when a3(?) >= 0x4 (signed), and falls through when a3(?) < 0x4 (signed).
  The `beq` branch at 0x10067e7c targets 0x10067e90, is taken when (v0(?) & a7(=[[a0+8]+20]:1)) == 0, and falls through when (v0(?) & a7(=[[a0+8]+20]:1)) != 0.
  The `bne` branch at 0x10067e9c targets 0x10067e50, is taken when a3(?) < 0x4 (signed), and falls through when a3(?) >= 0x4 (signed).
  The `beq` branch at 0x10067eb8 targets 0x10067f18, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10067f18 targets 0x10067f84, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `blez` branch at 0x10067f24 targets 0x10067f48, is taken when a3(=[[a0+8]+24]:1) <= 0 (signed), and falls through when a3(=[[a0+8]+24]:1) > 0 (signed).
  The `beq` branch at 0x10067f38 targets 0x10068174, is taken when v0(=ret(SrvXkbAllocNames)) == 0, and falls through when v0(=ret(SrvXkbAllocNames)) != 0.
  The `beq` branch at 0x10067f40 targets 0x10066e20 and is always taken.
  The `beq` branch at 0x10067f50 targets 0x100680f8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10067f84 targets 0x10068008, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `blez` branch at 0x10067f90 targets 0x10067fd0, is taken when a2(=[[a0+8]+21]:1) <= 0 (signed), and falls through when a2(=[[a0+8]+21]:1) > 0 (signed).
  The `beq` branch at 0x10067fa4 targets 0x10068100, is taken when v0(=ret(SrvXkbAllocNames)) == 0, and falls through when v0(=ret(SrvXkbAllocNames)) != 0.
  The `beq` branch at 0x10067fac targets 0x10066e20 and is always taken.
  The `beq` branch at 0x10067fc8 targets 0x10066e20 and is always taken.
  The `beq` branch at 0x10067fd8 targets 0x10068000, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10067ff8 targets 0x10068004 and is always taken.
  The `beq` branch at 0x1006800c targets 0x100680f0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10068024 targets 0x100680f0, is taken when (v0(?) & 0x100) == 0, and falls through when (v0(?) & 0x100) != 0.
  The `beq` branch at 0x10068058 targets 0x10068068, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x1006806c targets 0x1006807c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x10068080 targets 0x10068054, is taken when a2(?) != a6(?), and falls through when a2(?) == a6(?).
  The `beq` branch at 0x100680f0 targets 0x10066e20 and is always taken.
  The `beq` branch at 0x100680f8 targets 0x10067f78 and is always taken.
  The `beq` branch at 0x10068104 targets 0x10068168, is taken when v1(=[[a0+8]+21]:1) == 0, and falls through when v1(=[[a0+8]+21]:1) != 0.
  The `beq` branch at 0x10068134 targets 0x10068168, is taken when v0(?) >= a0(=[[a0+8]+21]:1) (unsigned), and falls through when v0(?) < a0(=[[a0+8]+21]:1) (unsigned).
  The `bne` branch at 0x10068160 targets 0x10068114, is taken when v0(?) < a5(=[[a0+8]+21]:1) (unsigned), and falls through when v0(?) >= a5(=[[a0+8]+21]:1) (unsigned).
  The `beq` branch at 0x1006816c targets 0x10068004 and is always taken.
  The `beq` branch at 0x100681b0 targets 0x10067f78 and is always taken.
  The `beq` branch at 0x100681b8 targets 0x10067cf0 and is always taken.
  The return at 0x10066dd4 has v0 = 0x2.
  The return at 0x10066e18 has v0 = [0x102cb28c].
  The return at 0x10066e28 has v0 = one of 0x5, 0x2, 0xa, 0x8, 0x10, 0xb, [a0+40].
  The return at 0x10066e58 has v0 = 0x10.
  The return at 0x10067138 has v0 = 0xa.
  The return at 0x100672b4 has v0 = 0x5.
  The return at 0x10067434 has v0 = 0x5.
  The return at 0x1006750c has v0 = 0x5.
  The return at 0x10067528 has v0 = 0x5.
  The instructions from 0x10067498 to 0x1006749c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100679f8 to 0x100679f8 are not reached by any path from the entry, and their branches are not listed.
- `bdfSkipBitmap..IO` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10068210 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10068210-0x1006830c (252 bytes).
  It occupies 252 bytes.
  The `jalr` at 0x10068254 calls strncmp with a0=ret(bdfGetLine), a1=0x10291c58, a2=0x7, a3=?.
  The `jal` at 0x10068274 calls bdfGetLine [0x10114a50] with a0=a0 at entry (arg0), a1=sp-1072, a2=?, a3=?.
  The `jalr` at 0x100682a4 calls strncmp with a0=ret(bdfGetLine), a1=0x10291c58, a2=0x7, a3=?.
  The `jal` at 0x100682c0 calls bdfError [0x1023fca0] with a0=0x10291cd8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10068240 targets 0x10068270 and is always taken.
  The `beq` branch at 0x1006825c targets 0x1006828c, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bne` branch at 0x10068268 targets 0x1006828c, is taken when s4(=a1) < s0(?) (signed), and falls through when s4(=a1) >= s0(?) (signed).
  The `bne` branch at 0x10068280 targets 0x10068248, is taken when v0(=ret(bdfGetLine)) != 0, and falls through when v0(=ret(bdfGetLine)) == 0.
  The `bne` branch at 0x1006828c targets 0x100682e8, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x10068294 targets 0x100682e8, is taken when s1(=ret(bdfGetLine)) == 0, and falls through when s1(=ret(bdfGetLine)) != 0.
  The `beq` branch at 0x100682ac targets 0x100682ec, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The return at 0x100682e0 has v0 = 0x0.
  The return at 0x10068304 has v0 = 0x1.
- `fixFileName..GO` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10068600 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10068600-0x100689b4 (948 bytes).
  It occupies 948 bytes.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0x10068600, `sw` at 0x10068738.
  2 such `sb` accesses store 1 byte to ret(strchr) +0x0, including `sb` at 0x10068674, `sb` at 0x10068818.
  The `sb` at 0x10068678 stores 1 byte to ret(strstr) +0x0.
  2 such `sb` accesses store 1 byte to ret(strrchr) +0x1, including `sb` at 0x100686b0, `sb` at 0x10068790.
  3 such `sb` accesses store 1 byte to ret(strrchr) +0x0, including `sb` at 0x100686d0, `sb` at 0x10068774, `sb` at 0x10068878.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x100688b4, `lw` at 0x100688dc, `lw` at 0x10068908.
  6 such `lw` accesses load 4 bytes from [a0] +0x2010, including `lw` at 0x100688b8, `lw` at 0x100688e0, `lw` at 0x1006890c.
  The `jalr` at 0x10068634 calls strstr with a0=a1 at entry (arg1), a1=0x10291bf0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10068654 calls strcpy with a0=sp-2144, a1=ret(strstr)+2, a2=?, a3=?, a4=-0x2.
  The `jalr` at 0x10068664 calls strchr with a0=sp-2144, a1=0x5f, a2=?, a3=?.
  The `jalr` at 0x10068680 calls strcpy with a0=sp-1120, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x10068694 calls strrchr with a0=sp-1120, a1=0x2f, a2=?, a3=?.
  The `jalr` at 0x100686bc calls strrchr with a0=a1 at entry (arg1), a1=0x2f, a2=?, a3=?.
  The `jal` at 0x1006870c calls findFontName [0x10250870] with a0=sp-1120, a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x10068720 calls strcat with a0=sp-1120, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10068728 calls FontFileOpen [0x101255a0] with a0=sp-1120, a1=?, a2=?, a3=?.
  The `jalr` at 0x10068754 calls strrchr with a0=sp-1120, a1=0x2f, a2=?, a3=?, a6=a0 at entry (arg0).
  The `jalr` at 0x10068770 calls strrchr with a0=sp-1120, a1=0x2f, a2=?, a3=?.
  The `jalr` at 0x10068794 calls strcat with a0=sp-1120, a1=0x10291bf8, a2=?, a3=?.
  The `jalr` at 0x100687a4 calls strstr with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x100687c8 calls strcat with a0=sp-1120, a1=ret(strstr)+2, a2=-0x2, a3=?.
  The `jalr` at 0x100687d8 calls strchr with a0=sp-1120, a1=0x2d, a2=?, a3=?.
  The `jalr` at 0x100687fc calls strchr with a0=ret(strchr)+1, a1=0x2d, a2=?, a3=-0x1.
  The `jalr` at 0x1006881c calls strcat with a0=sp-1120, a1=0x10291b50, a2=?, a3=?.
  The `jalr` at 0x1006882c calls strcpy with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0x1006883c calls strrchr with a0=a1 at entry (arg1), a1=0x2f, a2=?, a3=?.
  The `jalr` at 0x10068858 calls strcat with a0=sp-1120, a1=ret(strrchr)+1, a2=-0x1, a3=?.
  The `jalr` at 0x10068868 calls strrchr with a0=sp-1120, a1=0x5f, a2=?, a3=?.
  The `jalr` at 0x1006888c calls strcat with a0=sp-1120, a1=0x10291c00, a2=?, a3=?, a5=sym(strcat).
  The `jalr` at 0x1006889c calls strcpy with a0=a1 at entry (arg1), a1=sp-1120, a2=?, a3=?.
  The `jalr` at 0x100688c0 calls (unknown callee) with a0=[a0], a1=0x1, a2=?, a3=?.
  The `jal` at 0x100688cc calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100688e8 calls (unknown callee) with a0=[a0], a1=0x1, a2=?, a3=?.
  The `jal` at 0x100688f4 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10068914 calls (unknown callee) with a0=[a0], a1=0x1, a2=?, a3=?.
  The `jal` at 0x10068920 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10068940 calls (unknown callee) with a0=[a0], a1=0x1, a2=?, a3=?.
  The `jal` at 0x1006894c calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006896c calls (unknown callee) with a0=[a0], a1=0x1, a2=?, a3=?.
  The `jal` at 0x10068978 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10068998 calls (unknown callee) with a0=[a0], a1=0x1, a2=-0x1, a3=?.
  The `jal` at 0x100689a4 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1006863c targets 0x100686d4, is taken when v0(=ret(strstr)) == 0, and falls through when v0(=ret(strstr)) != 0.
  The `beq` branch at 0x10068648 targets 0x100686d4, is taken when a4(=-0x2) == v0(=ret(strstr)), and falls through when a4(=-0x2) != v0(=ret(strstr)).
  The `beq` branch at 0x1006866c targets 0x100686e8, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x1006869c targets 0x100686b8, is taken when v0(=ret(strrchr)) == 0, and falls through when v0(=ret(strrchr)) != 0.
  The `beq` branch at 0x100686a8 targets 0x100686b8, is taken when v0(=ret(strrchr)) == a5(=-0x1), and falls through when v0(=ret(strrchr)) != a5(=-0x1).
  The `beq` branch at 0x100686c4 targets 0x100686fc, is taken when v0(=ret(strrchr)) == 0, and falls through when v0(=ret(strrchr)) != 0.
  The `beq` branch at 0x100686cc targets 0x10068704 and is always taken.
  The `beq` branch at 0x10068714 targets 0x100688ac, is taken when v0(=ret(findFontName)) == 0, and falls through when v0(=ret(findFontName)) != 0.
  The `bne` branch at 0x10068734 targets 0x1006874c, is taken when v0(=ret(FontFileOpen)) != 0, and falls through when v0(=ret(FontFileOpen)) == 0.
  The `beq` branch at 0x1006875c targets 0x100688b4, is taken when v0(=ret(strrchr)) == 0, and falls through when v0(=ret(strrchr)) != 0.
  The `beq` branch at 0x10068778 targets 0x100688dc, is taken when v0(=ret(strrchr)) == 0, and falls through when v0(=ret(strrchr)) != 0.
  The `beq` branch at 0x100687ac targets 0x10068908, is taken when v0(=ret(strstr)) == 0, and falls through when v0(=ret(strstr)) != 0.
  The `beq` branch at 0x100687b8 targets 0x10068908, is taken when a2(=-0x2) == v0(=ret(strstr)), and falls through when a2(=-0x2) != v0(=ret(strstr)).
  The `beq` branch at 0x100687e0 targets 0x10068934, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x100687ec targets 0x10068934, is taken when a3(=-0x1) == v0(=ret(strchr)), and falls through when a3(=-0x1) != v0(=ret(strchr)).
  The `beq` branch at 0x10068804 targets 0x1006895c, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x10068844 targets 0x10068988, is taken when v0(=ret(strrchr)) == 0, and falls through when v0(=ret(strrchr)) != 0.
  The `beq` branch at 0x1006884c targets 0x10068988, is taken when a2(=-0x1) == v0(=ret(strrchr)), and falls through when a2(=-0x1) != v0(=ret(strrchr)).
  The `beq` branch at 0x10068870 targets 0x1006887c, is taken when v0(=ret(strrchr)) == 0, and falls through when v0(=ret(strrchr)) != 0.
  The `beq` branch at 0x100688a4 targets 0x100686dc and is always taken.
  The `beq` branch at 0x100688ac targets 0x100686dc and is always taken.
  The `beq` branch at 0x100688d4 targets 0x100686dc and is always taken.
  The `beq` branch at 0x100688fc targets 0x100686dc and is always taken.
  The `beq` branch at 0x10068928 targets 0x100686dc and is always taken.
  The `beq` branch at 0x10068954 targets 0x100686dc and is always taken.
  The `beq` branch at 0x10068980 targets 0x100686dc and is always taken.
  The `beq` branch at 0x100689ac targets 0x100686dc and is always taken.
  The return at 0x100686e0 has v0 = one of 0x53, 0x55.
  The return at 0x100686f4 has v0 = 0x53.
  The return at 0x10068744 has v0 = 0x53.
  The instructions from 0x10068904 to 0x10068904 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10068930 to 0x10068930 are not reached by any path from the entry, and their branches are not listed.
- `SProcDispatch..FGE` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100689c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100689c0-0x10068aa8 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x100689c0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x100689c8 loads 1 byte from [a0+8] +0x1.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x3, including `lbu` at 0x10068a08, `lbu` at 0x10068a84.
  2 such `lbu` accesses load 1 byte from [a0+8] +0x2, including `lbu` at 0x10068a0c, `lbu` at 0x10068a88.
  The `lbu` at 0x10068a10 loads 1 byte from [a0+8] +0x7.
  The `lbu` at 0x10068a14 loads 1 byte from [a0+8] +0x4.
  The `lbu` at 0x10068a18 loads 1 byte from [a0+8] +0x6.
  The `lbu` at 0x10068a1c loads 1 byte from [a0+8] +0x5.
  The `sb` at 0x10068a20 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x10068a24 stores 1 byte to [a0+8] +0x5.
  The `sb` at 0x10068a28 stores 1 byte to [a0+8] +0x7.
  The `sb` at 0x10068a2c stores 1 byte to [a0+8] +0x4.
  2 such `sb` accesses store 1 byte to [a0+8] +0x3, including `sb` at 0x10068a30, `sb` at 0x10068a8c.
  2 such `sb` accesses store 1 byte to [a0+8] +0x2, including `sb` at 0x10068a34, `sb` at 0x10068a94.
  The `lw` at 0x10068a38 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `jal` at 0x10068a5c calls SProcStoreColors..EGE [0x10095100] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[[a0+8]+1]:1, a4=0x1, a5=0x2, a6=[a0+8].
  The `jal` at 0x10068a74 calls ProcGetReservedColormapEntries..PFE [0x10084590] with a0=a0 at entry (arg0), a1=[[a0+8]+6]:1, a2=[[a0+8]+4]:1, a3=0x10, a4=[[a0+8]+2]:1, a5=[[a0+8]+3]:1, a6=[a0+8].
  The `jal` at 0x10068a90 calls ProcQueryVersion..OFE [0x101cfda0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[[a0+8]+1]:1, a4=0x1, a5=0x2, a6=[a0+8], a7=[[a0+8]+3]:1.
  The `beq` branch at 0x100689e4 targets 0x10068a84, is taken when a3(=[[a0+8]+1]:1) == 0, and falls through when a3(=[[a0+8]+1]:1) != 0.
  The `beq` branch at 0x100689ec targets 0x10068a08, is taken when a3(=[[a0+8]+1]:1) == a4(=0x1), and falls through when a3(=[[a0+8]+1]:1) != a4(=0x1).
  The `beq` branch at 0x100689f4 targets 0x10068a5c, is taken when a3(=[[a0+8]+1]:1) == a5(=0x2), and falls through when a3(=[[a0+8]+1]:1) != a5(=0x2).
  The `beq` branch at 0x10068a40 targets 0x10068a74, is taken when v0(=[a0+72]) >= 0x2 (unsigned), and falls through when v0(=[a0+72]) < 0x2 (unsigned).
  The `beq` branch at 0x10068a7c targets 0x10068a48 and is always taken.
  The return at 0x10068a00 has v0 = 0x1.
  The return at 0x10068a54 has v0 = one of 0x10, ret(ProcGetReservedColormapEntries..PFE).
  The return at 0x10068a6c has v0 = ret(SProcStoreColors..EGE).
  The return at 0x10068aa0 has v0 = ret(ProcQueryVersion..OFE).
- `AwareModeSProcPanoramiXGetScreenSize..NGD` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10068ab0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10068ab0-0x10068b20 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x10068ab0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x10068ab4 loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x10068ab8 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x10068abc stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x10068ac0 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x10068ac4 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x10068adc loads 1 byte from [a0+8] +0x9.
  The `lbu` at 0x10068ae0 loads 1 byte from [a0+8] +0xa.
  The `lbu` at 0x10068ae4 loads 1 byte from [a0+8] +0x8.
  The `lbu` at 0x10068ae8 loads 1 byte from [a0+8] +0xb.
  The `lbu` at 0x10068aec loads 1 byte from [a0+8] +0x5.
  The `lbu` at 0x10068af0 loads 1 byte from [a0+8] +0x6.
  The `lbu` at 0x10068af4 loads 1 byte from [a0+8] +0x4.
  The `lbu` at 0x10068af8 loads 1 byte from [a0+8] +0x7.
  The `sb` at 0x10068afc stores 1 byte to [a0+8] +0x4.
  The `sb` at 0x10068b00 stores 1 byte to [a0+8] +0x7.
  The `sb` at 0x10068b04 stores 1 byte to [a0+8] +0x5.
  The `sb` at 0x10068b08 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x10068b0c stores 1 byte to [a0+8] +0x8.
  The `sb` at 0x10068b10 stores 1 byte to [a0+8] +0xb.
  The `sb` at 0x10068b14 stores 1 byte to [a0+8] +0x9.
  The `sb` at 0x10068b1c stores 1 byte to [a0+8] +0xa.
  Calls ProcPanoramiXGetScreenSize [0x100aed50] via direct with a0=a0 at entry (arg0), a1=[[a0+8]+3]:1, a2=[a0+8], a3=[[a0+8]+9]:1, a4=[[a0+8]+10]:1, a5=[[a0+8]+8]:1, a6=[[a0+8]+11]:1, a7=[[a0+8]+5]:1 (`j` at 0x10068b18).
  The `beq` branch at 0x10068acc targets 0x10068adc, is taken when at(=[a0+72]) == v0(=0x3), and falls through when at(=[a0+72]) != v0(=0x3).
  The return at 0x10068ad4 has v0 = 0x10.
- `BitmapOpenScalable` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10068b90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10068b90-0x10068ea8 (792 bytes).
  It occupies 792 bytes.
  The `ldc1` at 0x10068b90 loads 8 bytes from a5 (arg5 at entry) +0x20.
  The `ldc1` at 0x10068b94 loads 8 bytes from a5 (arg5 at entry) +0x18.
  2 such `ldc1` accesses load 8 bytes from abs 0x10292430, including `ldc1` at 0x10068bd0, `ldc1` at 0x10068bf8.
  The `ldc1` at 0x10068be8 loads 8 bytes from a5 (arg5 at entry) +0x10.
  The `ldc1` at 0x10068bf0 loads 8 bytes from a5 (arg5 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x10, including `lw` at 0x10068c3c, `lw` at 0x10068d18.
  The `lw` at 0x10068c54 loads 4 bytes from table(0x102cc780) +0x0.
  The `lw` at 0x10068cc8 loads 4 bytes from a5 (arg5 at entry) +0x58.
  The `lw` at 0x10068d34 loads 4 bytes from table(0x102cc760) +0x0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10068d60, `lw` at 0x10068d84, `lw` at 0x10068dd8.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10068e04, `sw` at 0x10068e08, `sw` at 0x10068e0c.
  The `sw` at 0x10068e18 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `swc1` at 0x10068e3c stores 4 bytes to a5 (arg5 at entry) +0x58.
  The `jalr` at 0x10068bc4 calls hypot with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a5+24]:8, f13=[a5+32]:8.
  The `jalr` at 0x10068bec calls hypot with a0=a5 at entry (arg5), a1=?, a2=?, a3=?; fp f12=[a5+8]:8, f13=[a5+16]:8.
  The `jalr` at 0x10068c70 calls (unknown callee) with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=a5 at entry (arg5), a3=sp-1360, a4=sp-1256, a5=sp-1248, a6=sp-1240, a7=sp-1232.
  The `jal` at 0x10068ca4 calls FontFileOpenBitmapNCF..JN [0x100b1ef0] with a0=?, a1=sp-1220, a2=0x1, a3=ret(?), a4=a6 at entry (arg6), a5=a7 at entry (arg7), a6=0x0.
  The `jal` at 0x10068cfc calls ScaleFont..DAB [0x1019ee10] with a0=?, a1=[a5+88], a2=sp-1216, a3=?, a6=sp-1256, a7=sp-1248.
  The `jalr` at 0x10068d44 calls (unknown callee) with a0=ret(ScaleFont..DAB), a1=?, a2=?, a3=?, a4=a5 at entry (arg5).
  The `jalr` at 0x10068d80 calls strcpy with a0=sp-1208, a1=?, a2=?, a3=?.
  The `jal` at 0x10068d94 calls FontParseXLFDName [0x10159250] with a0=sp-1208, a1=a5 at entry (arg5), a2=0x3, a3=?.
  The `jal` at 0x10068dcc calls ComputeScaledProperties..BAB [0x1017a3a0] with a0=?, a1=sp-1208, a2=a5 at entry (arg5), a3=sp-184, a4=sp-180.
  The `jal` at 0x10068e4c calls FontFileCloseFont [0x10152c70] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x10068e74 calls bitmapUnloadScalable [0x1016af40] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10068e94 calls FontFileCloseFont [0x10152c70] with a0=0x0, a1=?, a2=ret(ComputeScaledProperties..BAB), a3=?.
  The `bc1t` branch at 0x10068bdc targets 0x10068c0c, is taken when f0(=ret(hypot)) < f1(=0x3ff0000000000000) (c.lt.d at 0x10068bd4), and falls through when not (f0(=ret(hypot)) < f1(=0x3ff0000000000000) (c.lt.d at 0x10068bd4)).
  The `bc1f` branch at 0x10068c04 targets 0x10068c30, is taken when not (f0(=ret(hypot)) < f2(=0x3ff0000000000000) (c.lt.d at 0x10068bfc)), and falls through when f0(=ret(hypot)) < f2(=0x3ff0000000000000) (c.lt.d at 0x10068bfc).
  The `bne` branch at 0x10068c7c targets 0x10068c8c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x10068c84 targets 0x10068c20 and is always taken.
  The `beq` branch at 0x10068cb4 targets 0x10068cc4, is taken when v0(=ret(FontFileOpenBitmapNCF..JN)) == a0(=0x55), and falls through when v0(=ret(FontFileOpenBitmapNCF..JN)) != a0(=0x55).
  The `beq` branch at 0x10068cbc targets 0x10068c24 and is always taken.
  The `beq` branch at 0x10068ccc targets 0x10068e1c, is taken when a1(=[a5+88]) == 0, and falls through when a1(=[a5+88]) != 0.
  The `beq` branch at 0x10068d08 targets 0x10068d54, is taken when v0(=ret(ScaleFont..DAB)) == 0, and falls through when v0(=ret(ScaleFont..DAB)) != 0.
  The `bne` branch at 0x10068d54 targets 0x10068d74, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x10068d64 targets 0x10068e48, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x10068d6c targets 0x10068c20 and is always taken.
  The `beq` branch at 0x10068de0 targets 0x10068e88, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x10068de8 targets 0x10068e40, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10068df0 targets 0x10068e5c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10068df8 targets 0x10068e5c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10068e14 targets 0x10068c20 and is always taken.
  The `beq` branch at 0x10068e38 targets 0x10068cd4 and is always taken.
  The `beq` branch at 0x10068e40 targets 0x10068dfc and is always taken.
  The `beq` branch at 0x10068e54 targets 0x10068d6c and is always taken.
  The `beq` branch at 0x10068e80 targets 0x10068c20 and is always taken.
  The `beq` branch at 0x10068ea0 targets 0x10068de8 and is always taken.
  The return at 0x10068c18 has v0 = 0x53.
  The return at 0x10068c28 has v0 = one of 0x50, 0x53, 0x55.
- `ProcUngrabKeyboard` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10068eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10068eb0-0x10069088 (472 bytes).
  It occupies 472 bytes.
  The `lw` at 0x10068eb0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10068ebc loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10068ed8 loads 4 bytes from sym(inputInfo) +0xc.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10068f08, `lw` at 0x10068f14, `lw` at 0x10068f20.
  The `lw` at 0x10068f28 loads 4 bytes from sym(currentTime) +0x0.
  The `lw` at 0x10068f2c loads 4 bytes from sym(currentTime) +0x4.
  The `ld` at 0x10068f74 loads 8 bytes from sym(currentTime) +0x0.
  The `lw` at 0x1006901c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `ldl` at 0x10069064 loads 8 bytes from sym(currentTime) +0x0.
  The `ldr` at 0x1006906c loads 8 bytes from sym(currentTime) +0x7.
  The `jal` at 0x10068ef8 calls UpdateCurrentTime [0x10064a10] with a0=[sym(inputInfo)+12], a1=sym(inputInfo), a2=[a0+8], a3=a3 at entry (arg3), a4=0x102d0000.
  The `jalr` at 0x10069078 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a7=[a0+4].
  The `beq` branch at 0x10068ee0 targets 0x10068ef4, is taken when at(=[a0+72]) == v1(=0x2), and falls through when at(=[a0+72]) != v1(=0x2).
  The `beq` branch at 0x10068f1c targets 0x10069060, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10068f48 targets 0x10069040, is taken when t0(=[sym(currentTime)+4]) >= v0(?) (unsigned), and falls through when t0(=[sym(currentTime)+4]) < v0(?) (unsigned).
  The `beq` branch at 0x10068f50 targets 0x10068f60, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x10068fa4 targets 0x10068fc8, is taken when t1(?) < a7(?) (unsigned), and falls through when t1(?) >= a7(?) (unsigned).
  The `bne` branch at 0x10068fac targets 0x1006902c, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bne` branch at 0x10068fb8 targets 0x10068fc8, is taken when t1(?) < v0(?) (unsigned), and falls through when t1(?) >= v0(?) (unsigned).
  The `bne` branch at 0x10068fc0 targets 0x10069030, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x10068fec targets 0x1006902c, is taken when a7(?) < t1(?) (unsigned), and falls through when a7(?) >= t1(?) (unsigned).
  The `bne` branch at 0x10069000 targets 0x10069010, is taken when t1(?) < a7(?) (unsigned), and falls through when t1(?) >= a7(?) (unsigned).
  The `bne` branch at 0x10069008 targets 0x10069030, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x10069010 targets 0x10069030, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10069024 targets 0x10069070, is taken when a7(=[a0+4]) == t0(?), and falls through when a7(=[a0+4]) != t0(?).
  The `beq` branch at 0x10069048 targets 0x10068f5c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x10069050 targets 0x10068f5c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x10069058 targets 0x10068f5c and is always taken.
  The `beq` branch at 0x10069068 targets 0x10068f60 and is always taken.
  The `beq` branch at 0x10069080 targets 0x10069030 and is always taken.
  The return at 0x10068eec has v0 = 0x10.
  The return at 0x10069038 has v0 = 0x0.
- `newfilledge..KKB` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10069090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10069090-0x100691ac (284 bytes).
  It occupies 284 bytes.
  The `lh` at 0x100690d8 loads 2 bytes from a0 (arg0 at entry) +0x14.
  The `sh` at 0x100690f8 stores 2 bytes to a0 (arg0 at entry) +0x14.
  The `lh` at 0x100690fc loads 2 bytes from a0 (arg0 at entry) +0x18.
  The `sh` at 0x10069114 stores 2 bytes to a0 (arg0 at entry) +0x18.
  The `lh` at 0x10069118 loads 2 bytes from a0 (arg0 at entry) +0x16.
  The `sh` at 0x10069128 stores 2 bytes to a0 (arg0 at entry) +0x16.
  The `lh` at 0x1006912c loads 2 bytes from a0 (arg0 at entry) +0x1a.
  The `sh` at 0x1006913c stores 2 bytes to a0 (arg0 at entry) +0x1a.
  The `lw` at 0x10069144 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x10069158 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `sw` at 0x1006915c stores 4 bytes to ret(NewEdge..IKB) +0x8.
  The `lw` at 0x10069160 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `sw` at 0x1006916c stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x10069170 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `lw` at 0x10069178 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `sw` at 0x1006918c stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `jal` at 0x10069150 calls NewEdge..IKB [0x100c5270] with a0=?, a1=?, a2=?, a3=?, a7=a2+32768.
  The `jal` at 0x1006917c calls t1_SortSwath [0x1011f990] with a0=[a0+28], a1=ret(NewEdge..IKB), a2=0x102298c0, a3=?, a7=[a0+60].
  The `beq` branch at 0x100690d0 targets 0x1006919c, is taken when v0(?) == t0(?), and falls through when v0(?) != t0(?).
  The `beq` branch at 0x100690f0 targets 0x100690fc, is taken when a0(?) >= t9(=[a0+20]:2) (signed), and falls through when a0(?) < t9(=[a0+20]:2) (signed).
  The `beq` branch at 0x1006910c targets 0x10069118, is taken when a4(=[a0+24]:2) >= a1(?) (signed), and falls through when a4(=[a0+24]:2) < a1(?) (signed).
  The `beq` branch at 0x10069120 targets 0x1006912c, is taken when v0(?) >= a2(=[a0+22]:2) (signed), and falls through when v0(?) < a2(=[a0+22]:2) (signed).
  The `beq` branch at 0x10069134 targets 0x10069144, is taken when a3(=[a0+26]:2) >= t0(?) (signed), and falls through when a3(=[a0+26]:2) < t0(?) (signed).
  The `bne` branch at 0x10069168 targets 0x10069174, is taken when a7(=[a0+60]) != 0, and falls through when a7(=[a0+60]) == 0.
  The return at 0x10069194 has v0 = ret(t1_SortSwath).
  The return at 0x100691a4 has v0 = ?.
- `XkbSetRulesUsed` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100691b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100691b0-0x100692cc (284 bytes).
  It occupies 284 bytes.
  The `lw` at 0x100691d4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x10069204 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x10069234 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10069264 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x100692a0 stores 4 bytes to ret(Xalloc) +0x0.
  The `sw` at 0x100692a4 stores 4 bytes to ret(Xalloc) +0xc.
  The `sw` at 0x100692a8 stores 4 bytes to ret(Xalloc) +0x8.
  The `sw` at 0x100692b4 stores 4 bytes to ret(Xalloc) +0x4.
  The `sw` at 0x100692c0 stores 4 bytes to [0x102cc3ac] +0x0.
  The `jal` at 0x100691cc calls Xfree [0x101fc9c0] with a0=[0x102cb21c], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100691e0 calls _XkbDupString [0x101abf80] with a0=[a0], a1=?, a2=?, a3=0x0.
  The `jal` at 0x100691fc calls Xfree [0x101fc9c0] with a0=[0x102cb220], a1=?, a2=?, a3=?.
  The `jal` at 0x10069210 calls _XkbDupString [0x101abf80] with a0=[a0+4], a1=?, a2=?, a3=0x0.
  The `jal` at 0x1006922c calls Xfree [0x101fc9c0] with a0=[0x102cb224], a1=?, a2=?, a3=?.
  The `jal` at 0x10069240 calls _XkbDupString [0x101abf80] with a0=[a0+8], a1=?, a2=?, a3=0x0.
  The `jal` at 0x1006925c calls Xfree [0x101fc9c0] with a0=[0x102cb228], a1=?, a2=?, a3=?.
  The `jal` at 0x10069274 calls _XkbDupString [0x101abf80] with a0=[a0+12], a1=?, a2=?, a3=0x0.
  The `jal` at 0x10069288 calls Xalloc [0x1020aeb0] with a0=0x10, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100691c0 targets 0x100691d4, is taken when v0(=[0x102cb21c]) == 0, and falls through when v0(=[0x102cb21c]) != 0.
  The `beq` branch at 0x100691d8 targets 0x100691ec, is taken when a0(=[a0]) == 0, and falls through when a0(=[a0]) != 0.
  The `beq` branch at 0x100691f0 targets 0x10069204, is taken when a0(=[0x102cb220]) == 0, and falls through when a0(=[0x102cb220]) != 0.
  The `beq` branch at 0x10069208 targets 0x1006921c, is taken when a0(=[a0+4]) == 0, and falls through when a0(=[a0+4]) != 0.
  The `beq` branch at 0x10069220 targets 0x10069234, is taken when a0(=[0x102cb224]) == 0, and falls through when a0(=[0x102cb224]) != 0.
  The `beq` branch at 0x10069238 targets 0x1006924c, is taken when a0(=[a0+8]) == 0, and falls through when a0(=[a0+8]) != 0.
  The `beq` branch at 0x10069250 targets 0x10069264, is taken when a0(=[0x102cb228]) == 0, and falls through when a0(=[0x102cb228]) != 0.
  The `beq` branch at 0x1006926c targets 0x10069280, is taken when a0(=[a0+12]) == 0, and falls through when a0(=[a0+12]) != 0.
  The `beq` branch at 0x10069290 targets 0x100692c4, is taken when v0(=ret(Xalloc)) == 0, and falls through when v0(=ret(Xalloc)) != 0.
  The return at 0x100692bc has v0 = ret(Xalloc).
  The return at 0x100692c4 has v0 = ret(Xalloc).
- `CopySetPtrDfltArgs..HMF` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100692d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100692d0-0x100694b4 (484 bytes).
  It occupies 484 bytes.
  The `lbu` at 0x100692d8 loads 1 byte from a2 (arg2 at entry) +0x2.
  7 such `lw` accesses load 4 bytes from a4 (arg4 at entry) +0x0, including `lw` at 0x10069304, `lw` at 0x10069330, `lw` at 0x1006938c.
  The `lbu` at 0x10069354 loads 1 byte from a2 (arg2 at entry) +0x1.
  The `lbu` at 0x10069358 loads 1 byte from a2 (arg2 at entry) +0x3.
  4 such `sw` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `sw` at 0x100693e0, `sw` at 0x100693f4, `sw` at 0x10069480.
  The `jalr` at 0x10069328 calls strlen with a0=0x1029da20, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x1, a5=[a4].
  The `jalr` at 0x10069384 calls sprintf with a0=sp-112, a1=0x10290320, a2=?, a3=?, a4=-0x100, a6=-0x1, a7=-0x100.
  The `jalr` at 0x1006939c calls strlen with a0=sp-112, a1=?, a2=[a4], a3=?.
  The `jalr` at 0x1006942c calls sprintf with a0=sp-112, a1=0x1029d998, a2=?, a3=?, a4=-0x100, a6=-0x1, a7=-0x100.
  The `jalr` at 0x10069460 calls strcat with a0=a3 at entry (arg3), a1=sp-112, a2=?, a3=?.
  The `jalr` at 0x1006948c calls strcat with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `bne` branch at 0x100692f8 targets 0x100693c4, is taken when v1(=[a2+2]:1) != a4(=0x1), and falls through when v1(=[a2+2]:1) == a4(=0x1).
  The `blez` branch at 0x10069310 targets 0x100693d8, is taken when a5(=[a4]) <= 0 (signed), and falls through when a5(=[a4]) > 0 (signed).
  The `bne` branch at 0x10069340 targets 0x10069484, is taken when v0(=ret(strlen)) < a1(=[a4]-3) (signed), and falls through when v0(=ret(strlen)) >= a1(=[a4]-3) (signed).
  The `beq` branch at 0x1006934c targets 0x100693dc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10069368 targets 0x10069404, is taken when (a3(=[a2+1]:1) & 0x4) == 0, and falls through when (a3(=[a2+1]:1) & 0x4) != 0.
  The `beq` branch at 0x10069370 targets 0x10069450, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `blez` branch at 0x10069390 targets 0x100693e4, is taken when a2(=[a4]) <= 0 (signed), and falls through when a2(=[a4]) > 0 (signed).
  The `bne` branch at 0x100693b0 targets 0x10069458, is taken when v0(=ret(strlen)) < a3(=[a4]-3) (signed), and falls through when v0(=ret(strlen)) >= a3(=[a4]-3) (signed).
  The `beq` branch at 0x100693bc targets 0x100693e4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x100693dc targets 0x10069354 and is always taken.
  The `beq` branch at 0x10069404 targets 0x1006943c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bltz` branch at 0x1006940c targets 0x10069448, is taken when v0(=([a2+3]:1 | -0x100)) < 0 (signed), and falls through when v0(=([a2+3]:1 | -0x100)) >= 0 (signed).
  The `beq` branch at 0x10069414 targets 0x100694ac, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10069434 targets 0x10069390 and is always taken.
  The `bgez` branch at 0x10069440 targets 0x10069414, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `bne` branch at 0x10069448 targets 0x10069378, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x10069450 targets 0x10069378 and is always taken.
  The `beq` branch at 0x1006947c targets 0x100693b8 and is always taken.
  The `beq` branch at 0x100694a4 targets 0x10069348 and is always taken.
  The `beq` branch at 0x100694ac targets 0x10069420 and is always taken.
  The return at 0x100693d0 has v0 = 0x1.
  The return at 0x100693fc has v0 = 0x1.
- `LbxMessageCompOpt..FDG` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100694c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100694c0-0x100694e4 (36 bytes).
  It occupies 36 bytes.
  The `lbu` at 0x100694c8 loads 1 byte from a1 (arg1 at entry) +0x0.
  The `sb` at 0x100694cc stores 1 byte to a3 (arg3 at entry) +0x0.
  The `sw` at 0x100694d8 stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `beq` branch at 0x100694c0 targets 0x100694dc, is taken when a2 == 0, and falls through when a2 != 0.
  The return at 0x100694d4 has v0 = 0x1.
  The return at 0x100694dc has v0 = -0x1.
- `ProcFreeColors` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100694f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100694f0-0x100695e8 (248 bytes).
  It occupies 248 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x100694f4, `lw` at 0x1006959c.
  The `lw` at 0x1006950c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10069550 loads 4 bytes from [a0+8] +0x4.
  The `lh` at 0x10069560 loads 2 bytes from ret(SecurityLookupIDByType) +0x10.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10069588, `lw` at 0x100695b0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x10069594, `sw` at 0x100695e4.
  The `lw` at 0x100695a4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x100695c4 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x1006954c calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=0x6, a3=0x2.
  The `jal` at 0x100695b8 calls FreeColors [0x100a88d0] with a0=ret(SecurityLookupIDByType), a1=[a0], a2=?, a3=?.
  The `beq` branch at 0x10069514 targets 0x10069534, is taken when v1(=[a0+72]) >= 0x3 (unsigned), and falls through when v1(=[a0+72]) < 0x3 (unsigned).
  The `beq` branch at 0x10069558 targets 0x10069580, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `beq` branch at 0x10069568 targets 0x10069598, is taken when (a2(=[ret(SecurityLookupIDByType)+16]:2) & 0x2) == 0, and falls through when (a2(=[ret(SecurityLookupIDByType)+16]:2) & 0x2) != 0.
  The `beq` branch at 0x10069590 targets 0x10069528 and is always taken.
  The `beq` branch at 0x100695c8 targets 0x100695d8, is taken when a3(=[a0+40]) == 0, and falls through when a3(=[a0+40]) != 0.
  The `beq` branch at 0x100695d0 targets 0x10069528 and is always taken.
  The `beq` branch at 0x100695e0 targets 0x10069528 and is always taken.
  The return at 0x10069520 has v0 = 0x10.
  The return at 0x1006952c has v0 = one of 0xc, [a0+40], ret(FreeColors).
  The return at 0x10069578 has v0 = 0xa.
- `t1_MoreWorkArea` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100695f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100695f0-0x100696dc (236 bytes).
  It occupies 236 bytes.
  The `jal` at 0x10069660 calls t1_Allocate [0x1011d0f0] with a0=0x0, a1=0x0, a2=?, a3=?.
  Calls t1_ChangeDirection [0x1008bd50] via direct with a0=0x0, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a5=a2 at entry (arg2) (`j` at 0x1006969c).
  Calls t1_ChangeDirection [0x1008bd50] via direct with a0=0x0, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a4 at entry (arg4) (`j` at 0x100696bc).
  The `jal` at 0x100696c4 calls xiFree [0x100f0a40] with a0=[0x102cd3d0], a1=0x102c7cf0, a2=a2 at entry (arg2), a3=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a4 at entry (arg4).
  The `bltz` branch at 0x10069628 targets 0x100696d4, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `bne` branch at 0x10069638 targets 0x100696a4, is taken when s0(?) < t0(=[0x102cd3d4]:2) (signed), and falls through when s0(?) >= t0(=[0x102cd3d4]:2) (signed).
  The `bne` branch at 0x1006964c targets 0x100696c4, is taken when a0(=[0x102cd3d0]) != a1(=0x102c7cf0), and falls through when a0(=[0x102cd3d0]) == a1(=0x102c7cf0).
  The `beq` branch at 0x100696cc targets 0x10069658 and is always taken.
  The `beq` branch at 0x100696d4 targets 0x10069630 and is always taken.
- `OpenFont` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100696e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100696e0-0x1006991c (572 bytes).
  It occupies 572 bytes.
  The `lw` at 0x10069738 loads 4 bytes from ret(FindCachedFontPattern) +0xc.
  The `sw` at 0x100697a0 stores 4 bytes to ret(Xalloc) +0x18.
  The `sw` at 0x100697a4 stores 4 bytes to ret(Xalloc) +0x20.
  The `sw` at 0x100697b0 stores 4 bytes to ret(Xalloc) +0x14.
  The `lw` at 0x100697c4 loads 4 bytes from ret(Xalloc) +0x20.
  The `sw` at 0x100697cc stores 4 bytes to ret(Xalloc) +0x8.
  2 such `lw` accesses load 4 bytes from ret(Xalloc) +0x8, including `lw` at 0x10069800, `lw` at 0x10069810.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10069808, `lw` at 0x10069818, `lw` at 0x10069820.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1006980c, `sw` at 0x10069830, `sw` at 0x100698e8.
  The `sw` at 0x10069834 stores 4 bytes to ret(Xalloc) +0x10.
  The `sw` at 0x10069838 stores 4 bytes to ret(Xalloc) +0x24.
  The `sh` at 0x1006983c stores 2 bytes to ret(Xalloc) +0x6.
  The `sh` at 0x10069840 stores 2 bytes to ret(Xalloc) +0x4.
  The `sw` at 0x10069850 stores 4 bytes to ret(Xalloc) +0x28.
  The `sw` at 0x1006985c stores 4 bytes to ret(Xalloc) +0xc.
  The `sw` at 0x10069864 stores 4 bytes to ret(Xalloc) +0x1c.
  The `sw` at 0x1006986c stores 4 bytes to ret(Xalloc) +0x0.
  The `jal` at 0x10069710 calls LegalPxlFontSize..IF [0x10087e30] with a0=a4 at entry (arg4), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10069728 calls FindCachedFontPattern [0x10090670] with a0=[0x102c6164], a1=a4 at entry (arg4), a2=a3 at entry (arg3), a3=?.
  The `jal` at 0x10069750 calls Xalloc [0x1020aeb0] with a0=0x2c, a1=?, a2=?, a3=?.
  The `jal` at 0x10069798 calls Xalloc [0x1020aeb0] with a0=a3 at entry (arg3), a1=?, a2=?, a3=0xb.
  The `jal` at 0x100697bc calls Xalloc [0x1020aeb0] with a0=([0x102c6148] << 0x2), a1=a4 at entry (arg4), a2=?, a3=?.
  The `jalr` at 0x100697d8 calls memmove with a0=[ret(Xalloc)+32], a1=a4 at entry (arg4), a2=a3 at entry (arg3), a3=?.
  The `jal` at 0x10069870 calls doOpenFont..HF [0x10288e10] with a0=a0 at entry (arg0), a1=ret(Xalloc), a2=?, a3=[0x102c6148].
  The `jal` at 0x1006989c calls Xfree [0x101fc9c0] with a0=ret(Xalloc), a1=a4 at entry (arg4), a2=?, a3=?.
  The `jal` at 0x100698c4 calls AddResource [0x1010ec30] with a0=a1 at entry (arg1), a1=0x4, a2=ret(FindCachedFontPattern), a3=?.
  The `jal` at 0x100698f0 calls Xfree [0x101fc9c0] with a0=[ret(Xalloc)+32], a1=?, a2=?, a3=?.
  The `jal` at 0x100698fc calls Xfree [0x101fc9c0] with a0=ret(Xalloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100696f0 targets 0x10069774, is taken when a3 == 0, and falls through when a3 != 0.
  The `beq` branch at 0x10069708 targets 0x10069774, is taken when a3 >= 0x401 (unsigned), and falls through when a3 < 0x401 (unsigned).
  The `beq` branch at 0x10069718 targets 0x10069774, is taken when v0(=ret(LegalPxlFontSize..IF)) == 0, and falls through when v0(=ret(LegalPxlFontSize..IF)) != 0.
  The `beq` branch at 0x10069720 targets 0x1006988c, is taken when a0(=[0x102c6164]) == 0, and falls through when a0(=[0x102c6164]) != 0.
  The `beq` branch at 0x10069730 targets 0x10069748, is taken when v0(=ret(FindCachedFontPattern)) == 0, and falls through when v0(=ret(FindCachedFontPattern)) != 0.
  The `bltz` branch at 0x10069740 targets 0x100698b4, is taken when a0(=([ret(FindCachedFontPattern)+12] << 0x19)) < 0 (signed), and falls through when a0(=([ret(FindCachedFontPattern)+12] << 0x19)) >= 0 (signed).
  The `bne` branch at 0x10069760 targets 0x10069794, is taken when v0(=ret(Xalloc)) != 0, and falls through when v0(=ret(Xalloc)) == 0.
  The `beq` branch at 0x1006976c targets 0x10069788 and is always taken.
  The `beq` branch at 0x100697ac targets 0x10069894, is taken when v0(=ret(Xalloc)) == 0, and falls through when v0(=ret(Xalloc)) != 0.
  The `beq` branch at 0x100697c8 targets 0x100698ec, is taken when v0(=ret(Xalloc)) == 0, and falls through when v0(=ret(Xalloc)) != 0.
  The `blez` branch at 0x100697ec targets 0x10069834, is taken when a3(=[0x102c6148]) <= 0 (signed), and falls through when a3(=[0x102c6148]) > 0 (signed).
  The `bne` branch at 0x1006982c targets 0x10069800, is taken when a7(?) != t0(=(([0x102c6148] << 0x2) + [0x102c6144])), and falls through when a7(?) == t0(=(([0x102c6148] << 0x2) + [0x102c6144])).
  The `beq` branch at 0x10069884 targets 0x10069788 and is always taken.
  The `beq` branch at 0x1006988c targets 0x10069748 and is always taken.
  The `beq` branch at 0x100698ac targets 0x10069788 and is always taken.
  The `beq` branch at 0x100698d0 targets 0x10069914, is taken when v0(=ret(AddResource)) == 0, and falls through when v0(=ret(AddResource)) != 0.
  The `beq` branch at 0x100698e4 targets 0x10069788 and is always taken.
  The `beq` branch at 0x1006990c targets 0x10069788 and is always taken.
  The `beq` branch at 0x10069914 targets 0x10069788 and is always taken.
  The return at 0x10069780 has v0 = 0xf.
  The return at 0x1006978c has v0 = one of 0x0, 0xb.
- `FakeClientID` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10069920 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10069920-0x10069de4 (1220 bytes).
  It occupies 1220 bytes.
  18 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10069948, `lw` at 0x1006994c, `lw` at 0x10069980.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10069960, `sw` at 0x10069d88, `sw` at 0x10069d94.
  The `lw` at 0x10069d2c loads 4 bytes from sym(clients) +0x0.
  The `lw` at 0x10069d44 loads 4 bytes from ([sym(clients)] + (a0 << 0x2)) +0x0.
  The `sw` at 0x10069d58 stores 4 bytes to [([sym(clients)] + (a0 << 0x2))] +0x28.
  The `jal` at 0x10069dd4 calls FatalError [0x10094f20] with a0=0x1028f3b8, a1=sym(clients), a2=?, a3=?.
  The `bne` branch at 0x1006995c targets 0x10069da4, is taken when at(?) != a3(?), and falls through when at(?) == a3(?).
  The `beq` branch at 0x10069964 targets 0x10069dc0, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0x100699a0 targets 0x10069d08, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0x100699d0 targets 0x100699ec and is always taken.
  The `beq` branch at 0x100699e4 targets 0x10069d0c, is taken when t3(?) == s3(?), and falls through when t3(?) != s3(?).
  The `beq` branch at 0x100699f0 targets 0x100699e0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x100699f8 targets 0x10069a20 and is always taken.
  The `beq` branch at 0x10069a08 targets 0x10069b38, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x10069a14 targets 0x100699e0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x10069a30 targets 0x10069a14, is taken when a4(?) < a5(?) (unsigned), and falls through when a4(?) >= a5(?) (unsigned).
  The `bne` branch at 0x10069a38 targets 0x10069a14, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x10069a48 targets 0x10069a6c, is taken when t0(?) < a6(?) (unsigned), and falls through when t0(?) >= a6(?) (unsigned).
  The `bne` branch at 0x10069a50 targets 0x10069a94, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x10069a5c targets 0x10069a94, is taken when t2(?) < t1(?) (unsigned), and falls through when t2(?) >= t1(?) (unsigned).
  The `beq` branch at 0x10069a64 targets 0x10069b30 and is always taken.
  The `bne` branch at 0x10069a7c targets 0x10069b40, is taken when t1(?) < t0(?) (unsigned), and falls through when t1(?) >= t0(?) (unsigned).
  The `bne` branch at 0x10069a84 targets 0x10069b40, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x10069a8c targets 0x10069a08 and is always taken.
  The `bne` branch at 0x10069a94 targets 0x10069b24, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x10069aa0 targets 0x10069bcc, is taken when a6(?) == ra(=0x6), and falls through when a6(?) != ra(=0x6).
  The `beq` branch at 0x10069aa8 targets 0x10069c0c, is taken when a6(?) == s1(=0x7), and falls through when a6(?) != s1(=0x7).
  The `beq` branch at 0x10069ab0 targets 0x10069c4c, is taken when a6(?) == s2(=0x8), and falls through when a6(?) != s2(=0x8).
  The `beq` branch at 0x10069ab8 targets 0x10069c8c, is taken when a6(?) == s5(=0x9), and falls through when a6(?) != s5(=0x9).
  The `beq` branch at 0x10069ac0 targets 0x10069cb4, is taken when a6(?) == s7(=0xa), and falls through when a6(?) != s7(=0xa).
  The `beq` branch at 0x10069ac8 targets 0x10069cdc, is taken when a6(?) == s8(=0xb), and falls through when a6(?) != s8(=0xb).
  The `beq` branch at 0x10069ae0 targets 0x10069b30, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10069aec targets 0x10069b0c, is taken when t0(?) == t1(?), and falls through when t0(?) != t1(?).
  The `beq` branch at 0x10069af8 targets 0x10069b30, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x10069b04 targets 0x10069af4, is taken when at(?) != t1(?), and falls through when at(?) == t1(?).
  The `beq` branch at 0x10069b0c targets 0x10069b30, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10069b1c targets 0x10069aa0, is taken when t2(?) >= t1(?) (unsigned), and falls through when t2(?) < t1(?) (unsigned).
  The `bne` branch at 0x10069b30 targets 0x10069a10, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x10069b38 targets 0x10069a14 and is always taken.
  The `bne` branch at 0x10069b40 targets 0x10069bc4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x10069b4c targets 0x10069bec, is taken when a6(?) == ra(=0x6), and falls through when a6(?) != ra(=0x6).
  The `beq` branch at 0x10069b54 targets 0x10069c2c, is taken when a6(?) == s1(=0x7), and falls through when a6(?) != s1(=0x7).
  The `beq` branch at 0x10069b5c targets 0x10069c6c, is taken when a6(?) == s2(=0x8), and falls through when a6(?) != s2(=0x8).
  The `beq` branch at 0x10069b64 targets 0x10069ca0, is taken when a6(?) == s5(=0x9), and falls through when a6(?) != s5(=0x9).
  The `beq` branch at 0x10069b6c targets 0x10069cc8, is taken when a6(?) == s7(=0xa), and falls through when a6(?) != s7(=0xa).
  The `beq` branch at 0x10069b74 targets 0x10069cf0, is taken when a6(?) == s8(=0xb), and falls through when a6(?) != s8(=0xb).
  The `beq` branch at 0x10069b88 targets 0x10069a04, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10069b94 targets 0x10069bb4, is taken when t1(?) == t0(?), and falls through when t1(?) != t0(?).
  The `beq` branch at 0x10069ba0 targets 0x10069a04, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x10069bac targets 0x10069b9c, is taken when at(?) != t0(?), and falls through when at(?) == t0(?).
  The `beq` branch at 0x10069bb4 targets 0x10069a00, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x10069bbc targets 0x10069b4c, is taken when t2(?) != s0(?), and falls through when t2(?) == s0(?).
  The `beq` branch at 0x10069bc4 targets 0x10069a04 and is always taken.
  The `beq` branch at 0x10069be4 targets 0x10069ad4 and is always taken.
  The `beq` branch at 0x10069c04 targets 0x10069b7c and is always taken.
  The `beq` branch at 0x10069c24 targets 0x10069ad4 and is always taken.
  The `beq` branch at 0x10069c44 targets 0x10069b7c and is always taken.
  The `beq` branch at 0x10069c64 targets 0x10069ad4 and is always taken.
  The `beq` branch at 0x10069c84 targets 0x10069b7c and is always taken.
  The `beq` branch at 0x10069c98 targets 0x10069ad4 and is always taken.
  The `beq` branch at 0x10069cac targets 0x10069b7c and is always taken.
  The `beq` branch at 0x10069cc0 targets 0x10069ad4 and is always taken.
  The `beq` branch at 0x10069cd4 targets 0x10069b7c and is always taken.
  The `beq` branch at 0x10069ce8 targets 0x10069ad4 and is always taken.
  The `beq` branch at 0x10069d00 targets 0x10069b7c and is always taken.
  The `beq` branch at 0x10069d0c targets 0x10069d1c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10069d1c targets 0x10069d60, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x10069d24 targets 0x10069dc8, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10069dc0 targets 0x1006996c and is always taken.
  The `beq` branch at 0x10069ddc targets 0x10069d28 and is always taken.
  The return at 0x10069d9c has v0 = ?.
  The return at 0x10069db8 has v0 = ?.
  The instructions from 0x100699d8 to 0x100699dc are not reached by any path from the entry, and their branches are not listed.
- `QueryFont` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10069df0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10069df0-0x1006a08c (668 bytes).
  It occupies 668 bytes.
  4 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x4, including `lhu` at 0x10069df8, `lhu` at 0x10069ef8, `lhu` at 0x10069f30.
  The `sh` at 0x10069dfc stores 2 bytes to a1 (arg1 at entry) +0x28.
  The `lhu` at 0x10069e00 loads 2 bytes from a0 (arg0 at entry) +0xc.
  The `sh` at 0x10069e04 stores 2 bytes to a1 (arg1 at entry) +0x2c.
  5 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x6, including `lhu` at 0x10069e08, `lhu` at 0x10069f00, `lhu` at 0x10069fc0.
  The `sh` at 0x10069e0c stores 2 bytes to a1 (arg1 at entry) +0x2a.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x10069e10, `lw` at 0x10069e28.
  The `sb` at 0x10069e24 stores 1 byte to a1 (arg1 at entry) +0x30.
  The `sb` at 0x10069e3c stores 1 byte to a1 (arg1 at entry) +0x33.
  2 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x8, including `lhu` at 0x10069e40, `lhu` at 0x10069f08.
  The `sb` at 0x10069e44 stores 1 byte to a1 (arg1 at entry) +0x31.
  3 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0xa, including `lhu` at 0x10069e48, `lhu` at 0x10069f14, `lhu` at 0x10069fac.
  The `sb` at 0x10069e4c stores 1 byte to a1 (arg1 at entry) +0x32.
  The `lh` at 0x10069e50 loads 2 bytes from a0 (arg0 at entry) +0x44.
  The `sh` at 0x10069e54 stores 2 bytes to a1 (arg1 at entry) +0x34.
  The `lh` at 0x10069e58 loads 2 bytes from a0 (arg0 at entry) +0x46.
  The `sh` at 0x10069e5c stores 2 bytes to a1 (arg1 at entry) +0x36.
  The `lw` at 0x10069e60 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `sw` at 0x10069e64 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x10069e68 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `sw` at 0x10069e6c stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `lw` at 0x10069e70 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `sw` at 0x10069e74 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `lw` at 0x10069e78 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0x10069e7c stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `lw` at 0x10069e80 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `sw` at 0x10069e84 stores 4 bytes to a1 (arg1 at entry) +0x1c.
  The `lw` at 0x10069e88 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `sw` at 0x10069e8c stores 4 bytes to a1 (arg1 at entry) +0x20.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x10069e90, `lw` at 0x10069e9c, `lw` at 0x10069ee0.
  The `sw` at 0x10069e94 stores 4 bytes to a1 (arg1 at entry) +0x38.
  The `sh` at 0x10069e98 stores 2 bytes to a1 (arg1 at entry) +0x2e.
  The `lw` at 0x10069ebc loads 4 bytes from a0 (arg0 at entry) +0x4c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10069ed0, `lw` at 0x10069ed8, `lw` at 0x10069f48.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10069ed4, `sw` at 0x10069edc.
  The `ldl` at 0x10069f4c loads 8 bytes from ?.
  The `ldr` at 0x10069f50 loads 8 bytes from ?.
  The `sdl` at 0x10069f54 stores 8 bytes to ?.
  The `sdr` at 0x10069f58 stores 8 bytes to ?.
  The `lwl` at 0x10069f5c loads 4 bytes from ?.
  The `lwr` at 0x10069f60 loads 4 bytes from ?.
  The `swl` at 0x10069f64 stores 4 bytes to ?.
  The `swr` at 0x10069f68 stores 4 bytes to ?.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0x10069fd0, `sb` at 0x10069fd4, `sb` at 0x10069fec.
  The `lw` at 0x1006a00c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `jalr` at 0x1006a020 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=sp-1600, a3=0x3, a4=sp-1088, a5=sp-1080.
  The `blez` branch at 0x10069eb8 targets 0x10069ef8, is taken when at(=[a0+72]) <= 0 (signed), and falls through when at(=[a0+72]) > 0 (signed).
  The `bne` branch at 0x10069ef0 targets 0x10069ed0, is taken when a4(?) < a2(=[a0+72]) (signed), and falls through when a4(?) >= a2(=[a0+72]) (signed).
  The `blez` branch at 0x10069f18 targets 0x1006a060, is taken when s2(=a2) <= 0 (signed), and falls through when s2(=a2) > 0 (signed).
  The `bne` branch at 0x10069f24 targets 0x1006a060, is taken when a0(=[a0+10]:2) < s1(=[a0+8]:2) (signed), and falls through when a0(=[a0+10]:2) >= s1(=[a0+8]:2) (signed).
  The `beq` branch at 0x10069f2c targets 0x10069fc0 and is always taken.
  The `beq` branch at 0x10069f40 targets 0x10069f94, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x10069f84 targets 0x10069f40, is taken when a0(?) < t9(?) (signed), and falls through when a0(?) >= t9(?) (signed).
  The `beq` branch at 0x10069fa4 targets 0x1006a060, is taken when a4(?) >= s2(=a2) (signed), and falls through when a4(?) < s2(=a2) (signed).
  The `bne` branch at 0x10069fb4 targets 0x1006a060, is taken when a0(=[a0+10]:2) < s1(?) (signed), and falls through when a0(=[a0+10]:2) >= s1(?) (signed).
  The `bne` branch at 0x10069fc8 targets 0x1006a008, is taken when a1(=[a0+6]:2) < a4(=[a0+4]:2) (signed), and falls through when a1(=[a0+6]:2) >= a4(=[a0+4]:2) (signed).
  The `bne` branch at 0x10069fe4 targets 0x1006a008, is taken when a2(=[a0+6]:2) < a4(?) (signed), and falls through when a2(=[a0+6]:2) >= a4(?) (signed).
  The `beq` branch at 0x1006a000 targets 0x10069fd0, is taken when a3(=[a0+6]:2) >= a4(?) (signed), and falls through when a3(=[a0+6]:2) < a4(?) (signed).
  The `blez` branch at 0x1006a03c targets 0x1006a084, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `beq` branch at 0x1006a044 targets 0x1006a054, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1006a04c targets 0x10069f4c and is always taken.
  The `beq` branch at 0x1006a058 targets 0x10069f94 and is always taken.
  The `beq` branch at 0x1006a084 targets 0x10069f90 and is always taken.
  The return at 0x1006a07c has v0 = one of [a0+72], ?.
  The instructions from 0x10069f34 to 0x10069f3c are not reached by any path from the entry, and their branches are not listed.
- `ProcXineramaUninstallColormap` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1006a7a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1006a7a0-0x1006a8b4 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0x1006a7a8 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1006a7c0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from [a0+8] +0x4, including `lw` at 0x1006a7e8, `lw` at 0x1006a7f8.
  The `sw` at 0x1006a7ec stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x1006a804 loads 4 bytes from sym(XRT_COLORMAP) +0x0.
  The `lw` at 0x1006a83c loads 4 bytes from (ret(SecurityLookupIDByType) + ([0x102c5f1c]-1 << 0x3)) +0x0.
  The `sw` at 0x1006a840 stores 4 bytes to [a0+8] +0x4.
  The `lw` at 0x1006a844 loads 4 bytes from sym(ProcVector) +0x148.
  The `lw` at 0x1006a860 loads 4 bytes from ?.
  The `jal` at 0x1006a800 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_COLORMAP)], a3=0x1.
  The `jalr` at 0x1006a848 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1006a7c8 targets 0x1006a7e4, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `beq` branch at 0x1006a808 targets 0x1006a898, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `blez` branch at 0x1006a824 targets 0x1006a86c, is taken when a0(=[0x102c5f1c]) <= 0 (signed), and falls through when a0(=[0x102c5f1c]) > 0 (signed).
  The `bne` branch at 0x1006a854 targets 0x1006a870, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `bnel` branch at 0x1006a85c targets 0x1006a840, is taken when s0(?) != s3(=ret(SecurityLookupIDByType)-8), and falls through when s0(?) == s3(=ret(SecurityLookupIDByType)-8); its branch-likely delay slot `lw t8,0(s0)` at 0x1006a860 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1006a864 targets 0x1006a874 and is always taken.
  The return at 0x1006a7dc has v0 = 0x10.
  The return at 0x1006a890 has v0 = one of ret(?), ?.
  The return at 0x1006a8ac has v0 = 0xc.
- `deflateEnd` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1006a8c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1006a8c0-0x1006aa0c (332 bytes).
  It occupies 332 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0x1006a8ec, `lw` at 0x1006a94c, `lw` at 0x1006a96c.
  The `lw` at 0x1006a8fc loads 4 bytes from [a0+28] +0x4.
  The `lw` at 0x1006a908 loads 4 bytes from [a0+28] +0x8.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x1006a93c, `lw` at 0x1006a95c, `lw` at 0x1006a97c.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x1006a948, `lw` at 0x1006a968, `lw` at 0x1006a988.
  The `lw` at 0x1006a950 loads 4 bytes from [a0+28] +0x3c.
  The `lw` at 0x1006a970 loads 4 bytes from [a0+28] +0x38.
  The `lw` at 0x1006a990 loads 4 bytes from [a0+28] +0x30.
  The `sw` at 0x1006a9cc stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `jalr` at 0x1006a944 calls (unknown callee) with a0=[a0+40], a1=[[a0+28]+8], a2=a2 at entry (arg2), a3=[[a0+28]+8].
  The `jalr` at 0x1006a964 calls (unknown callee) with a0=[a0+40], a1=[[a0+28]+60], a2=?, a3=[[a0+28]+60].
  The `jalr` at 0x1006a984 calls (unknown callee) with a0=[a0+40], a1=[[a0+28]+56], a2=?, a3=[[a0+28]+56].
  The `jalr` at 0x1006a9a4 calls (unknown callee) with a0=[a0+40], a1=[[a0+28]+48], a2=?, a3=[[a0+28]+48].
  The `jalr` at 0x1006a9b4 calls (unknown callee) with a0=[a0+40], a1=[a0+28], a2=?, a3=?.
  The `beq` branch at 0x1006a8e4 targets 0x1006a9e8, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1006a8f0 targets 0x1006a9e8, is taken when a1(=[a0+28]) == 0, and falls through when a1(=[a0+28]) != 0.
  The `beq` branch at 0x1006a904 targets 0x1006a934, is taken when s1(=[[a0+28]+4]) == v0(=0x2a), and falls through when s1(=[[a0+28]+4]) != v0(=0x2a).
  The `beq` branch at 0x1006a90c targets 0x1006a934, is taken when s1(=[[a0+28]+4]) == a0(=0x71), and falls through when s1(=[[a0+28]+4]) != a0(=0x71).
  The `beq` branch at 0x1006a914 targets 0x1006a934, is taken when s1(=[[a0+28]+4]) == v1(=0x29a), and falls through when s1(=[[a0+28]+4]) != v1(=0x29a).
  The `beq` branch at 0x1006a934 targets 0x1006a950, is taken when a3(=[[a0+28]+8]) == 0, and falls through when a3(=[[a0+28]+8]) != 0.
  The `beq` branch at 0x1006a954 targets 0x1006a970, is taken when a3(=[[a0+28]+60]) == 0, and falls through when a3(=[[a0+28]+60]) != 0.
  The `beq` branch at 0x1006a974 targets 0x1006a990, is taken when a3(=[[a0+28]+56]) == 0, and falls through when a3(=[[a0+28]+56]) != 0.
  The `beq` branch at 0x1006a994 targets 0x1006a9b0, is taken when a3(=[[a0+28]+48]) == 0, and falls through when a3(=[[a0+28]+48]) != 0.
  The `beq` branch at 0x1006a9c8 targets 0x1006aa00, is taken when s1(=[[a0+28]+4]) == a0(=0x71), and falls through when s1(=[[a0+28]+4]) != a0(=0x71).
  The `beq` branch at 0x1006aa04 targets 0x1006a9d8 and is always taken.
  The return at 0x1006a92c has v0 = -0x2.
  The return at 0x1006a9e0 has v0 = one of -0x3, 0x0.
  The return at 0x1006a9f8 has v0 = -0x2.
- `GetNewFontClientID` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1006aa10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1006aa10-0x1006aa1c (12 bytes).
  It occupies 12 bytes.
  Calls FakeClientID [0x10069920] via direct with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1006aa14).
- `ProcXDeviceBell` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1006aa20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1006aa20-0x1006ad30 (784 bytes).
  It occupies 784 bytes.
  The `lw` at 0x1006aa20 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1006aa30 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1006aa4c loads 4 bytes from sym(inputInfo) +0x4.
  The `lbu` at 0x1006aa50 loads 1 byte from [a0+8] +0x4.
  The `lbu` at 0x1006aa54 loads 1 byte from [a0+8] +0x6.
  The `lbu` at 0x1006aa6c loads 1 byte from [sym(inputInfo)+4] +0x4c.
  9 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1006aa70, `lw` at 0x1006aad4, `lw` at 0x1006ab34.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1006aa7c, `lbu` at 0x1006aae4, `lbu` at 0x1006ab40.
  The `lw` at 0x1006aa84 loads 4 bytes from sym(inputInfo) +0x10.
  The `lbu` at 0x1006aa88 loads 1 byte from [sym(inputInfo)+16] +0x4c.
  The `lw` at 0x1006aa90 loads 4 bytes from sym(inputInfo) +0xc.
  The `lbu` at 0x1006aa94 loads 1 byte from [sym(inputInfo)+12] +0x4c.
  The `lb` at 0x1006aaa8 loads 1 byte from [a0+8] +0x7.
  4 such `lbu` accesses load 1 byte from [a0+8] +0x5, including `lbu` at 0x1006aab4, `lbu` at 0x1006ac10, `lbu` at 0x1006aca8.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x1006aae8, `sw` at 0x1006abc8, `sw` at 0x1006ac14.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0x1006aaf0, `lw` at 0x1006abd0, `lw` at 0x1006ac1c.
  The `jal` at 0x1006ab1c calls WriteEventsToClient [0x10180840] with a0=a0 at entry (arg0), a1=0x1, a2=sp-48, a3=?, a6=[a0+8], a7=[[a0+8]+6]:1.
  The `jalr` at 0x1006abb0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=one of 0x0, 0x5.
  The `jal` at 0x1006abf8 calls WriteEventsToClient [0x10180840] with a0=a0 at entry (arg0), a1=0x1, a2=sp-48, a3=0x5, a4=[[sym(inputInfo)+16]+76]:1, a5=[[sym(inputInfo)+12]+76]:1, a6=[a0+8], a7=[[a0+8]+6]:1.
  The `jal` at 0x1006ac40 calls WriteEventsToClient [0x10180840] with a0=a0 at entry (arg0), a1=0x1, a2=sp-48, a3=0x5, a5=[[sym(inputInfo)+12]+76]:1, a6=[a0+8], a7=[[a0+8]+6]:1.
  The `jal` at 0x1006ac84 calls WriteEventsToClient [0x10180840] with a0=a0 at entry (arg0), a1=0x1, a2=sp-48, a3=[a0+28], a4=[0x102cade0], a5=0x20, a6=[a0+8], a7=[[a0+8]+6]:1.
  The `jal` at 0x1006ad1c calls WriteEventsToClient [0x10180840] with a0=a0 at entry (arg0), a1=0x1, a2=sp-48, a3=0x5, a4=[[sym(inputInfo)+16]+76]:1, a5=[[sym(inputInfo)+12]+76]:1, a6=[a0+8].
  The `beq` branch at 0x1006aa2c targets 0x1006aa48, is taken when t2(=0x2) == at(=[a0+72]), and falls through when t2(=0x2) != at(=[a0+72]).
  The `beq` branch at 0x1006aa60 targets 0x1006aae8, is taken when v1(=[sym(inputInfo)+4]) == 0, and falls through when v1(=[sym(inputInfo)+4]) != 0.
  The `beq` branch at 0x1006aa68 targets 0x1006aa80 and is always taken.
  The `beq` branch at 0x1006aa74 targets 0x1006aae8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x1006aa80 targets 0x1006aa70, is taken when a3(?) != v0(=[[a0+8]+4]:1), and falls through when a3(?) == v0(=[[a0+8]+4]:1).
  The `beq` branch at 0x1006aa8c targets 0x1006aae8, is taken when a4(=[[sym(inputInfo)+16]+76]:1) == v0(=[[a0+8]+4]:1), and falls through when a4(=[[sym(inputInfo)+16]+76]:1) != v0(=[[a0+8]+4]:1).
  The `beq` branch at 0x1006aa98 targets 0x1006aae8, is taken when a5(=[[sym(inputInfo)+12]+76]:1) == v0(=[[a0+8]+4]:1), and falls through when a5(=[[sym(inputInfo)+12]+76]:1) != v0(=[[a0+8]+4]:1).
  The `beq` branch at 0x1006aaa0 targets 0x1006aae8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x1006aab0 targets 0x1006ac54, is taken when t0(=[[a0+8]+7]:1) < -0x64 (signed), and falls through when t0(=[[a0+8]+7]:1) >= -0x64 (signed).
  The `beq` branch at 0x1006aabc targets 0x1006ac54, is taken when t0(=[[a0+8]+7]:1) >= 0x65 (signed), and falls through when t0(=[[a0+8]+7]:1) < 0x65 (signed).
  The `beq` branch at 0x1006aac4 targets 0x1006ac98, is taken when a7(=[[a0+8]+6]:1) == 0, and falls through when a7(=[[a0+8]+6]:1) != 0.
  The `bne` branch at 0x1006aacc targets 0x1006abc8, is taken when a7(=[[a0+8]+6]:1) != t1(=0x5), and falls through when a7(=[[a0+8]+6]:1) == t1(=0x5).
  The `beq` branch at 0x1006aad8 targets 0x1006ac10, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1006aae0 targets 0x1006ab44 and is always taken.
  The `beq` branch at 0x1006ab38 targets 0x1006ac10, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1006ab44 targets 0x1006ab34, is taken when a4(?) != a2(=[[a0+8]+5]:1), and falls through when a4(?) == a2(=[[a0+8]+5]:1).
  The `beq` branch at 0x1006ab4c targets 0x1006ac10, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1006ab7c targets 0x1006ab88, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x1006ab98 targets 0x1006aba4, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bltz` branch at 0x1006aba4 targets 0x1006ace0, is taken when t0(=[[a0+8]+7]:1) < 0 (signed), and falls through when t0(=[[a0+8]+7]:1) >= 0 (signed).
  The `beq` branch at 0x1006ac04 targets 0x1006aa40 and is always taken.
  The `beq` branch at 0x1006ac4c targets 0x1006aa40 and is always taken.
  The `beq` branch at 0x1006ac90 targets 0x1006aa40 and is always taken.
  The `beq` branch at 0x1006ac9c targets 0x1006acec, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1006aca4 targets 0x1006acb8 and is always taken.
  The `beq` branch at 0x1006acb0 targets 0x1006acec, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1006acbc targets 0x1006acac, is taken when a7(?) != a2(=[[a0+8]+5]:1), and falls through when a7(?) == a2(=[[a0+8]+5]:1).
  The `beq` branch at 0x1006acc4 targets 0x1006acec, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1006acd8 targets 0x1006ab60 and is always taken.
  The `beq` branch at 0x1006ace0 targets 0x1006abb0 and is always taken.
  The `beq` branch at 0x1006ad28 targets 0x1006aa40 and is always taken.
  The return at 0x1006aa38 has v0 = 0x10.
  The return at 0x1006aa40 has v0 = 0x0.
  The return at 0x1006ab2c has v0 = 0x0.
  The return at 0x1006abc0 has v0 = 0x0.
  The instructions from 0x1006ac0c to 0x1006ac0c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1006ace8 to 0x1006ace8 are not reached by any path from the entry, and their branches are not listed.
- `SProcUngrabKey` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1006ad30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1006ad30-0x1006adc4 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x1006ad30 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x1006ad34 loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x1006ad38 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x1006ad3c stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x1006ad40 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x1006ad44 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x1006ad70 loads 1 byte from [a0+8] +0x7.
  The `lbu` at 0x1006ad74 loads 1 byte from [a0+8] +0x4.
  The `lbu` at 0x1006ad78 loads 1 byte from [a0+8] +0x6.
  The `lbu` at 0x1006ad7c loads 1 byte from [a0+8] +0x5.
  The `lbu` at 0x1006ad80 loads 1 byte from [a0+8] +0x9.
  The `lbu` at 0x1006ad88 loads 1 byte from [a0+8] +0x8.
  The `sb` at 0x1006ad8c stores 1 byte to [a0+8] +0x9.
  The `sb` at 0x1006ad90 stores 1 byte to [a0+8] +0x8.
  The `sb` at 0x1006ad94 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x1006ad98 stores 1 byte to [a0+8] +0x5.
  The `sb` at 0x1006ad9c stores 1 byte to [a0+8] +0x7.
  The `sb` at 0x1006ada4 stores 1 byte to [a0+8] +0x4.
  The `lw` at 0x1006ada8 loads 4 bytes from sym(ProcVector) +0x88.
  The `jalr` at 0x1006adac calls (unknown callee) with a0=a0 at entry (arg0), a1=[[a0+8]+4]:1, a2=[[a0+8]+7]:1, a3=[a0+8], a4=[[a0+8]+3]:1.
  The `beq` branch at 0x1006ad5c targets 0x1006ad70, is taken when v1(=[a0+72]) == a1(=0x3), and falls through when v1(=[a0+72]) != a1(=0x3).
  The return at 0x1006ad68 has v0 = 0x10.
  The return at 0x1006adbc has v0 = ret(?).
- `ProcDbeGetBackBufferAttributes..AIC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1006add0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1006add0-0x1006aeb8 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x1006add0 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1006ae00 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1006ae10 loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x1006ae28 loads 4 bytes from ret(SecurityLookupIDByType) +0x0.
  The `lw` at 0x1006ae2c loads 4 bytes from [ret(SecurityLookupIDByType)] +0x4.
  The `lw` at 0x1006ae38 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0x1006ae44 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1006aeac loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x1006ae0c calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[0x102ca7cc], a3=0x1.
  The `jal` at 0x1006ae9c calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=0x20, a2=sp-48, a3=?.
  The `beq` branch at 0x1006ade0 targets 0x1006adf0, is taken when at(=[a0+72]) == v0(=0x2), and falls through when at(=[a0+72]) != v0(=0x2).
  The `bne` branch at 0x1006ae18 targets 0x1006ae28, is taken when v0(=ret(SecurityLookupIDByType)) != 0, and falls through when v0(=ret(SecurityLookupIDByType)) == 0.
  The `beq` branch at 0x1006ae20 targets 0x1006ae34 and is always taken.
  The `beq` branch at 0x1006ae50 targets 0x1006ae90, is taken when a3(=[a0+16]) == 0, and falls through when a3(=[a0+16]) != 0.
  The return at 0x1006ade8 has v0 = 0x10.
  The return at 0x1006aeb0 has v0 = [a0+40].
- `sp_set_specs` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1006aec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1006aec0-0x1006bf1c (4188 bytes).
  It occupies 4188 bytes.
  2 such `sb` accesses store 1 byte to abs 0x102d8db4 (sp_globals+5172), including `sb` at 0x1006aed4, `sb` at 0x1006bc78.
  The `lw` at 0x1006aed8 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0x1006aedc stores 4 bytes to abs 0x102d8e20 (sp_globals+5280).
  The `lw` at 0x1006aee0 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `sw` at 0x1006aee4 stores 4 bytes to abs 0x102d8e1c (sp_globals+5276).
  The `lw` at 0x1006aee8 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0x1006aeec stores 4 bytes to abs 0x102d8e18 (sp_globals+5272).
  The `lw` at 0x1006aef0 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `sw` at 0x1006aef4 stores 4 bytes to abs 0x102d8e14 (sp_globals+5268).
  The `lw` at 0x1006aef8 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0x1006aefc stores 4 bytes to abs 0x102d8e10 (sp_globals+5264).
  The `lw` at 0x1006af00 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x1006af04 stores 4 bytes to abs 0x102d8e0c (sp_globals+5260).
  The `lw` at 0x1006af08 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0x1006af0c stores 4 bytes to abs 0x102d8e08 (sp_globals+5256).
  The `lw` at 0x1006af10 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x1006af14 stores 4 bytes to abs 0x102d8e04 (sp_globals+5252).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x1006af18, `lw` at 0x1006afcc.
  The `sw` at 0x1006af1c stores 4 bytes to abs 0x102d8e00 (sp_globals+5248).
  The `lw` at 0x1006af24 loads 4 bytes from abs 0x102d8e00 (sp_globals+5248).
  The `sw` at 0x1006af28 stores 4 bytes to abs 0x102d8dfc (sp_globals+5244).
  The `lw` at 0x1006af30 loads 4 bytes from [0x102d8e00] +0x0.
  The `sw` at 0x1006af34 stores 4 bytes to abs 0x102d8d74 (sp_globals+5108).
  The `lw` at 0x1006af3c loads 4 bytes from [0x102d8e00] +0x4.
  The `sw` at 0x1006af44 stores 4 bytes to abs 0x102d8e24 (sp_globals+5284).
  The `sw` at 0x1006af48 stores 4 bytes to abs 0x102d8d78 (sp_globals+5112).
  The `sw` at 0x1006af54 stores 4 bytes to abs 0x102d8d7c (sp_globals+5116).
  The `lbu` at 0x1006af58 loads 1 byte from [[0x102d8e00]] +0x4.
  The `lbu` at 0x1006af5c loads 1 byte from [[0x102d8e00]] +0x5.
  The `lbu` at 0x1006af94 loads 1 byte from [[0x102d8e00]] +0x6.
  The `lbu` at 0x1006af98 loads 1 byte from [[0x102d8e00]] +0x7.
  The `ldl` at 0x1006afd0 loads 8 bytes from [a0] +0x0.
  The `ldr` at 0x1006afd8 loads 8 bytes from [a0] +0x7.
  2 such `sb` accesses store 1 byte to abs 0x102d8d73 (sp_globals+5107), including `sb` at 0x1006afec, `sb` at 0x1006bac0.
  2 such `sb` accesses store 1 byte to abs 0x102d8d72 (sp_globals+5106), including `sb` at 0x1006aff8, `sb` at 0x1006bac8.
  2 such `sb` accesses store 1 byte to abs 0x102d8d71 (sp_globals+5105), including `sb` at 0x1006b004, `sb` at 0x1006bad0.
  2 such `sb` accesses store 1 byte to abs 0x102d8d70 (sp_globals+5104), including `sb` at 0x1006b010, `sb` at 0x1006badc.
  2 such `sh` accesses store 2 bytes to abs 0x102d8d6e (sp_globals+5102), including `sh` at 0x1006b01c, `sh` at 0x1006baec.
  The `lw` at 0x1006b024 loads 4 bytes from abs 0x102d8e24 (sp_globals+5284).
  The `lbu` at 0x1006b028 loads 1 byte from [0x102d8e24] +0xfe.
  The `lbu` at 0x1006b02c loads 1 byte from [0x102d8e24] +0xff.
  4 such `sh` accesses store 2 bytes to abs 0x102d8d8a (sp_globals+5130), including `sh` at 0x1006b044, `sh` at 0x1006b8ac, `sh` at 0x1006b93c.
  The `lbu` at 0x1006b048 loads 1 byte from [0x102d8e24] +0x14a.
  The `lbu` at 0x1006b04c loads 1 byte from [0x102d8e24] +0x14b.
  4 such `sh` accesses store 2 bytes to abs 0x102d8d8c (sp_globals+5132), including `sh` at 0x1006b064, `sh` at 0x1006b8b4, `sh` at 0x1006b938.
  The `lbu` at 0x1006b068 loads 1 byte from [0x102d8e24] +0x12.
  The `lbu` at 0x1006b06c loads 1 byte from [0x102d8e24] +0x13.
  The `sw` at 0x1006b08c stores 4 bytes to abs 0x102d8e28 (sp_globals+5288).
  The `lbu` at 0x1006b090 loads 1 byte from [0x102d8e24] +0x1a4.
  The `lbu` at 0x1006b094 loads 1 byte from [0x102d8e24] +0x1a5.
  2 such `sh` accesses store 2 bytes to abs 0x102d8d8e (sp_globals+5134), including `sh` at 0x1006b0a8, `sh` at 0x1006b0b0.
  17 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1006b0b4, `lbu` at 0x1006b0b8, `lbu` at 0x1006b0bc.
  The `sw` at 0x1006b0e4 stores 4 bytes to abs 0x102d7980 (sp_globals).
  The `sw` at 0x1006b110 stores 4 bytes to abs 0x102d7984 (sp_globals+4).
  The `lbu` at 0x1006b114 loads 1 byte from [0x102d8e24] +0x102.
  The `lbu` at 0x1006b118 loads 1 byte from [0x102d8e24] +0x103.
  4 such `sh` accesses store 2 bytes to abs 0x102d7988 (sp_globals+8), including `sh` at 0x1006b124, `sh` at 0x1006b89c, `sh` at 0x1006b930.
  The `lbu` at 0x1006b128 loads 1 byte from [0x102d8e24] +0x104.
  The `lbu` at 0x1006b12c loads 1 byte from [0x102d8e24] +0x105.
  4 such `sh` accesses store 2 bytes to abs 0x102d798a (sp_globals+10), including `sh` at 0x1006b13c, `sh` at 0x1006b8a4, `sh` at 0x1006b928.
  The `lw` at 0x1006b1b8 loads 4 bytes from abs 0x102d8d7c (sp_globals+5116).
  The `lw` at 0x1006b1cc loads 4 bytes from [0x102d8d7c] +0x4.
  The `sw` at 0x1006b1e8 stores 4 bytes to abs 0x102d8d80 (sp_globals+5120).
  The `sw` at 0x1006b1f4 stores 4 bytes to abs 0x102d8d84 (sp_globals+5124).
  The `lbu` at 0x1006b1f8 loads 1 byte from [0x102d8e24] +0x100.
  The `lbu` at 0x1006b200 loads 1 byte from [0x102d8e24] +0x101.
  The `lbu` at 0x1006b204 loads 1 byte from abs 0x102d986a (sp_globals+7914).
  4 such `sh` accesses store 2 bytes to abs 0x102d8d88 (sp_globals+5128), including `sh` at 0x1006b214, `sh` at 0x1006b8bc, `sh` at 0x1006b924.
  The `lbu` at 0x1006b218 loads 1 byte from [0x102d8e24] +0x14.
  The `lbu` at 0x1006b21c loads 1 byte from [0x102d8e24] +0x15.
  The `lhu` at 0x1006b234 loads 2 bytes from abs 0x102d9864 (sp_globals+7908).
  The `sb` at 0x1006b248 stores 1 byte to abs 0x102d986b (sp_globals+7915).
  The `sb` at 0x1006b254 stores 1 byte to abs 0x102d986a (sp_globals+7914).
  The `sh` at 0x1006b25c stores 2 bytes to abs 0x102d9864 (sp_globals+7908).
  2 such `lw` accesses load 4 bytes from abs 0x102d8dfc (sp_globals+5244), including `lw` at 0x1006b26c, `lw` at 0x1006ba34.
  The `sw` at 0x1006b274 stores 4 bytes to abs 0x102d9860 (sp_globals+7904).
  6 such `lw` accesses load 4 bytes from [0x102d8dfc] +0x1c, including `lw` at 0x1006b278, `lw` at 0x1006b880, `lw` at 0x1006b940.
  The `sb` at 0x1006b288 stores 1 byte to abs 0x102d986c (sp_globals+7916).
  The `lbu` at 0x1006b28c loads 1 byte from [0x102d8e24] +0x15c.
  The `lbu` at 0x1006b290 loads 1 byte from [0x102d8e24] +0x158.
  The `lbu` at 0x1006b294 loads 1 byte from [0x102d8e24] +0x157.
  3 such `lw` accesses load 4 bytes from [0x102d8dfc] +0x4, including `lw` at 0x1006b29c, `lw` at 0x1006b478, `lw` at 0x1006b700.
  The `lbu` at 0x1006b2a4 loads 1 byte from [0x102d8e24] +0x156.
  The `lbu` at 0x1006b2ac loads 1 byte from [0x102d8e24] +0x15a.
  The `lbu` at 0x1006b2b0 loads 1 byte from [0x102d8e24] +0x15b.
  The `lbu` at 0x1006b2b8 loads 1 byte from [0x102d8e24] +0x15d.
  The `lbu` at 0x1006b2c4 loads 1 byte from [0x102d8e24] +0x159.
  3 such `lw` accesses load 4 bytes from [0x102d8dfc] +0x8, including `lw` at 0x1006b2f8, `lw` at 0x1006b480, `lw` at 0x1006b74c.
  3 such `lw` accesses load 4 bytes from [0x102d8dfc] +0x10, including `lw` at 0x1006b314, `lw` at 0x1006b58c, `lw` at 0x1006b7a4.
  3 such `lw` accesses load 4 bytes from [0x102d8dfc] +0x14, including `lw` at 0x1006b330, `lw` at 0x1006b594, `lw` at 0x1006b7d8.
  5 such `sh` accesses store 2 bytes to abs 0x102d8db6 (sp_globals+5174), including `sh` at 0x1006b368, `sh` at 0x1006b398, `sh` at 0x1006b3bc.
  3 such `sh` accesses store 2 bytes to abs 0x102d8dc0 (sp_globals+5184), including `sh` at 0x1006b438, `sh` at 0x1006b45c, `sh` at 0x1006bdc4.
  The `sw` at 0x1006b474 stores 4 bytes to abs 0x102d8dc8 (sp_globals+5192).
  2 such `lw` accesses load 4 bytes from [0x102d8dfc] +0xc, including `lw` at 0x1006b47c, `lw` at 0x1006b784.
  2 such `lw` accesses load 4 bytes from [0x102d8dfc] +0x18, including `lw` at 0x1006b590, `lw` at 0x1006b844.
  3 such `sh` accesses store 2 bytes to abs 0x102d8dc2 (sp_globals+5186), including `sh` at 0x1006b638, `sh` at 0x1006b660, `sh` at 0x1006b684.
  The `sh` at 0x1006b6b4 stores 2 bytes to abs 0x102d8dd4 (sp_globals+5204).
  The `sh` at 0x1006b6c0 stores 2 bytes to abs 0x102d8dd6 (sp_globals+5206).
  The `sh` at 0x1006b6cc stores 2 bytes to abs 0x102d8dc4 (sp_globals+5188).
  The `sh` at 0x1006b6dc stores 2 bytes to abs 0x102d8dc6 (sp_globals+5190).
  The `sh` at 0x1006b6e8 stores 2 bytes to abs 0x102d8dcc (sp_globals+5196).
  The `sw` at 0x1006b6fc stores 4 bytes to abs 0x102d8dd0 (sp_globals+5200).
  The `sh` at 0x1006b748 stores 2 bytes to abs 0x102d8d90 (sp_globals+5136).
  The `sh` at 0x1006b77c stores 2 bytes to abs 0x102d8d92 (sp_globals+5138).
  The `sw` at 0x1006b7a0 stores 4 bytes to abs 0x102d8d94 (sp_globals+5140).
  The `sh` at 0x1006b7d4 stores 2 bytes to abs 0x102d8d98 (sp_globals+5144).
  The `sh` at 0x1006b840 stores 2 bytes to abs 0x102d8d9a (sp_globals+5146).
  The `sw` at 0x1006b870 stores 4 bytes to abs 0x102d8d9c (sp_globals+5148).
  The `sh` at 0x1006b87c stores 2 bytes to abs 0x102d8db0 (sp_globals+5168).
  2 such `sh` accesses store 2 bytes to abs 0x102d8da6 (sp_globals+5158), including `sh` at 0x1006b8c4, `sh` at 0x1006bb30.
  2 such `sh` accesses store 2 bytes to abs 0x102d8da4 (sp_globals+5156), including `sh` at 0x1006b8cc, `sh` at 0x1006bb34.
  2 such `sh` accesses store 2 bytes to abs 0x102d8da2 (sp_globals+5154), including `sh` at 0x1006b8d4, `sh` at 0x1006bb58.
  2 such `sh` accesses store 2 bytes to abs 0x102d8da0 (sp_globals+5152), including `sh` at 0x1006b8dc, `sh` at 0x1006bb5c.
  3 such `sh` accesses store 2 bytes to abs 0x102d8daa (sp_globals+5162), including `sh` at 0x1006b8e8, `sh` at 0x1006ba60, `sh` at 0x1006bb8c.
  3 such `sh` accesses store 2 bytes to abs 0x102d8da8 (sp_globals+5160), including `sh` at 0x1006b8ec, `sh` at 0x1006ba64, `sh` at 0x1006bb94.
  The `sh` at 0x1006b910 stores 2 bytes to abs 0x102d8dae (sp_globals+5166).
  The `sh` at 0x1006b918 stores 2 bytes to abs 0x102d8dac (sp_globals+5164).
  The `sb` at 0x1006b920 stores 1 byte to abs 0x102d8dbe (sp_globals+5182).
  The `sh` at 0x1006b958 stores 2 bytes to abs 0x102d8dba (sp_globals+5178).
  3 such `sw` accesses store 4 bytes to abs 0x102d8df8 (sp_globals+5240), including `sw` at 0x1006b9b0, `sw` at 0x1006bcbc, `sw` at 0x1006bd4c.
  4 such `sw` accesses store 4 bytes to abs 0x102d8df4 (sp_globals+5236), including `sw` at 0x1006b9bc, `sw` at 0x1006ba28, `sw` at 0x1006bcc8.
  3 such `sw` accesses store 4 bytes to abs 0x102d8df0 (sp_globals+5232), including `sw` at 0x1006b9c8, `sw` at 0x1006bcd4, `sw` at 0x1006bd64.
  3 such `sw` accesses store 4 bytes to abs 0x102d8dec (sp_globals+5228), including `sw` at 0x1006b9d4, `sw` at 0x1006bce0, `sw` at 0x1006bd70.
  3 such `sw` accesses store 4 bytes to abs 0x102d8de8 (sp_globals+5224), including `sw` at 0x1006b9e0, `sw` at 0x1006bcec, `sw` at 0x1006bd7c.
  3 such `sw` accesses store 4 bytes to abs 0x102d8de4 (sp_globals+5220), including `sw` at 0x1006b9ec, `sw` at 0x1006bcf8, `sw` at 0x1006bd88.
  4 such `sw` accesses store 4 bytes to abs 0x102d8de0 (sp_globals+5216), including `sw` at 0x1006b9f8, `sw` at 0x1006ba1c, `sw` at 0x1006bd04.
  3 such `sw` accesses store 4 bytes to abs 0x102d8ddc (sp_globals+5212), including `sw` at 0x1006ba04, `sw` at 0x1006bd10, `sw` at 0x1006bda0.
  3 such `sw` accesses store 4 bytes to abs 0x102d8dd8 (sp_globals+5208), including `sw` at 0x1006ba14, `sw` at 0x1006bd24, `sw` at 0x1006bdb4.
  The `sb` at 0x1006ba44 stores 1 byte to abs 0x102d8db8 (sp_globals+5176).
  The `jal` at 0x1006af7c calls sp_report_error [0x10134310] with a0=0x4, a1=[a0+12], a2=0x102d8e00, a3=0x102e0000, a4=a0 at entry (arg0), a5=[[0x102d8e00]], a6=[a0+16], a7=[a0+20].
  The `jal` at 0x1006afb4 calls sp_report_error [0x10134310] with a0=0x4, a1=([[[0x102d8e00]]+6]:1 << 0x8), a2=0x102d8e00, a3=0x102e0000, a4=a0 at entry (arg0), a5=[[0x102d8e00]], a6=[a0+16], a7=[a0+20].
  The `jal` at 0x1006afd4 calls sp_get_cust_no [0x10279f60] with a0=?, a1=([[[0x102d8e00]]+6]:1 << 0x8), a2=[a0], a3=0x102e0000, a4=a0 at entry (arg0), a5=[[0x102d8e00]], a6=[a0+16], a7=[a0+20].
  The `jal` at 0x1006b974 calls sp_report_error [0x10134310] with a0=0x8, a1=0x101d0000, a2=?, a3=?, a4=one of 0x0, 0x1, a5=0x4, a6=0x102e0000, a7=0x102e0000.
  The `jalr` at 0x1006ba24 calls (unknown callee) with a0=[0x102d8dfc], a1=0x102e0000, a2=0x102e0000, a3=0x1026fa30, a4=0x102e0000, a5=0x102e0000, a6=0x102e0000, a7=0x102e0000.
  The `jal` at 0x1006ba78 calls sp_report_error [0x10134310] with a0=0xb, a1=?, a2=[[0x102d8dfc]+28], a3=0x102e0000, a7=0x102e0000.
  The `jal` at 0x1006ba98 calls sp_report_error [0x10134310] with a0=0xb, a1=?, a2=[[0x102d8dfc]+28], a3=0x102e0000, a7=0x102e0000.
  The `jal` at 0x1006bc7c calls sp_report_error [0x10134310] with a0=0x1, a1=?, a2=[0x102d8e24], a3=?, a4=one of 0x0, 0x71, a5=0x102d0bb0.
  The `jal` at 0x1006bdc8 calls sp_report_error [0x10134310] with a0=0x3, a1=?, a2=?, a3=?.
  The `jal` at 0x1006bde0 calls sp_report_error [0x10134310] with a0=0x4, a1=?, a2=[0x102d8e24], a3=?, a4=one of 0x0, 0x71, a5=0x102d0bb0.
  The `jal` at 0x1006bebc calls sp_report_error [0x10134310] with a0=0x5, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1006af74 targets 0x1006af94, is taken when t3(?) == t8(=0xd0a), and falls through when t3(?) != t8(=0xd0a).
  The `beq` branch at 0x1006afac targets 0x1006afcc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1006afdc targets 0x1006bac0, is taken when v0(=ret(sp_get_cust_no)) == 0, and falls through when v0(=ret(sp_get_cust_no)) != 0.
  The `bne` branch at 0x1006b088 targets 0x1006b0ac, is taken when t1(?) < 0x1a5 (signed), and falls through when t1(?) >= 0x1a5 (signed).
  The `beq` branch at 0x1006b0a4 targets 0x1006b0b4 and is always taken.
  The `beq` branch at 0x1006b194 targets 0x1006b1ac, is taken when t2(?) == t3(?), and falls through when t2(?) != t3(?).
  The `bne` branch at 0x1006b1a4 targets 0x1006bde0, is taken when t2(?) != a1(?), and falls through when t2(?) == a1(?).
  The `bne` branch at 0x1006b1e4 targets 0x1006bc7c, is taken when t2(=[[0x102d8d7c]+4]) < t8(?) (signed), and falls through when t2(=[[0x102d8d7c]+4]) >= t8(?) (signed).
  The `beq` branch at 0x1006b228 targets 0x1006b240, is taken when a4(=[0x102d986a]:1) == 0, and falls through when a4(=[0x102d986a]:1) != 0.
  The `beq` branch at 0x1006b23c targets 0x1006b260, is taken when t8(=[0x102d9864]:2) == t9(?), and falls through when t8(=[0x102d9864]:2) != t9(?).
  The `beq` branch at 0x1006b258 targets 0x1006b264 and is always taken.
  The `bltz` branch at 0x1006b2f0 targets 0x1006bbe4, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `bltz` branch at 0x1006b300 targets 0x1006bbec, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `beq` branch at 0x1006b308 targets 0x1006b314, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bltz` branch at 0x1006b31c targets 0x1006bbf4, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `beq` branch at 0x1006b324 targets 0x1006b330, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bltz` branch at 0x1006b338 targets 0x1006bbfc, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `beq` branch at 0x1006b340 targets 0x1006b350, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1006b36c targets 0x1006bab0, is taken when a3(?) >= a2(?) (unsigned), and falls through when a3(?) < a2(?) (unsigned).
  The `beq` branch at 0x1006b374 targets 0x1006b384 and is always taken.
  The `beq` branch at 0x1006b37c targets 0x1006b3c8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1006b39c targets 0x1006b3c8, is taken when a6(?) >= a2(?) (unsigned), and falls through when a6(?) < a2(?) (unsigned).
  The `beq` branch at 0x1006b3a8 targets 0x1006b3c8, is taken when a4(?) >= 0x5 (signed), and falls through when a4(?) < 0x5 (signed).
  The `bne` branch at 0x1006b3c0 targets 0x1006b37c, is taken when a6(?) < a2(?) (unsigned), and falls through when a6(?) >= a2(?) (unsigned).
  The `beq` branch at 0x1006b3c8 targets 0x1006bdb8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x1006b3d0 targets 0x1006b428, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x1006b3f4 targets 0x1006b428, is taken when a3(?) < a5(?) (unsigned), and falls through when a3(?) >= a5(?) (unsigned).
  The `bne` branch at 0x1006b400 targets 0x1006b428, is taken when a4(?) < -0x3 (signed), and falls through when a4(?) >= -0x3 (signed).
  The `bne` branch at 0x1006b418 targets 0x1006b428, is taken when a3(?) < a5(?) (unsigned), and falls through when a3(?) >= a5(?) (unsigned).
  The `beq` branch at 0x1006b420 targets 0x1006b3dc, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x1006b434 targets 0x1006b460, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1006b458 targets 0x1006b440, is taken when a2(?) >= a3(?) (unsigned), and falls through when a2(?) < a3(?) (unsigned).
  The `beq` branch at 0x1006b4c0 targets 0x1006b57c and is always taken.
  The `beq` branch at 0x1006b4d4 targets 0x1006b5c8, is taken when (a2(?) & 0x2) == 0, and falls through when (a2(?) & 0x2) != 0.
  The `beq` branch at 0x1006b4e8 targets 0x1006b4f4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bltz` branch at 0x1006b558 targets 0x1006b5c0, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `beq` branch at 0x1006b564 targets 0x1006b578, is taken when a5(?) >= a4(?) (unsigned), and falls through when a5(?) < a4(?) (unsigned).
  The `beq` branch at 0x1006b578 targets 0x1006b5d0, is taken when a2(?) == t1(=0x8), and falls through when a2(?) != t1(=0x8).
  The `bne` branch at 0x1006b584 targets 0x1006b4d0, is taken when a2(?) != v1(=0x4), and falls through when a2(?) == v1(=0x4).
  The `beq` branch at 0x1006b5b8 targets 0x1006b4d0 and is always taken.
  The `beq` branch at 0x1006b5c0 targets 0x1006b560 and is always taken.
  The `beq` branch at 0x1006b5c8 targets 0x1006b4e4 and is always taken.
  The `bltz` branch at 0x1006b5d8 targets 0x1006bbac, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `bltz` branch at 0x1006b5e4 targets 0x1006bbcc, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0x1006b634 targets 0x1006bdc8, is taken when a4(?) < a5(?) (unsigned), and falls through when a4(?) >= a5(?) (unsigned).
  The `beq` branch at 0x1006b63c targets 0x1006b64c and is always taken.
  The `beq` branch at 0x1006b644 targets 0x1006b690, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x1006b664 targets 0x1006b690, is taken when a4(?) < a5(?) (unsigned), and falls through when a4(?) >= a5(?) (unsigned).
  The `beq` branch at 0x1006b670 targets 0x1006b690, is taken when a2(?) >= 0x8 (signed), and falls through when a2(?) < 0x8 (signed).
  The `beq` branch at 0x1006b688 targets 0x1006b644, is taken when a4(?) >= a5(?) (unsigned), and falls through when a4(?) < a5(?) (unsigned).
  The `bltz` branch at 0x1006b690 targets 0x1006bdc8, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bltz` branch at 0x1006b6e4 targets 0x1006bdc8, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bltz` branch at 0x1006b724 targets 0x1006bc04, is taken when a6(?) < 0 (signed), and falls through when a6(?) >= 0 (signed).
  The `bltz` branch at 0x1006b754 targets 0x1006bc1c, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bltz` branch at 0x1006b7ac targets 0x1006bc30, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `bltz` branch at 0x1006b7e0 targets 0x1006bc48, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `bltz` branch at 0x1006b86c targets 0x1006bc5c, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `beq` branch at 0x1006b888 targets 0x1006baf0, is taken when (at(=[[0x102d8dfc]+28]) & 0x10) == 0, and falls through when (at(=[[0x102d8dfc]+28]) & 0x10) != 0.
  The `beq` branch at 0x1006b954 targets 0x1006bc94, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1006b960 targets 0x1006bd28, is taken when a2(?) == v1(=0x1), and falls through when a2(?) != v1(=0x1).
  The `beq` branch at 0x1006b96c targets 0x1006b98c, is taken when a2(?) == a1(=0x2), and falls through when a2(?) != a1(=0x2).
  The `beq` branch at 0x1006ba2c targets 0x1006bebc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1006ba50 targets 0x1006ba6c, is taken when (a2(=[[0x102d8dfc]+28]) & 0x10) == 0, and falls through when (a2(=[[0x102d8dfc]+28]) & 0x10) != 0.
  The `beq` branch at 0x1006ba70 targets 0x1006ba90, is taken when (a2(=[[0x102d8dfc]+28]) & 0xf00) == 0, and falls through when (a2(=[[0x102d8dfc]+28]) & 0xf00) != 0.
  The `beq` branch at 0x1006ba90 targets 0x1006bc64, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1006bab0 targets 0x1006b3d8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1006bab8 targets 0x1006b42c and is always taken.
  The `beq` branch at 0x1006bae8 targets 0x1006b020 and is always taken.
  The `beq` branch at 0x1006baf0 targets 0x1006bdf8, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x1006baf8 targets 0x1006be60, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x1006bb10 targets 0x1006be34, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1006bb1c targets 0x1006be90, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x1006bb90 targets 0x1006b8f0, is taken when v1(=0x4) == at(?), and falls through when v1(=0x4) != at(?).
  The `beq` branch at 0x1006bb9c targets 0x1006b8f4, is taken when t0(=0x4) == a4(?), and falls through when t0(=0x4) != a4(?).
  The `beq` branch at 0x1006bba4 targets 0x1006b8f4 and is always taken.
  The `beq` branch at 0x1006bbc4 targets 0x1006b5e0 and is always taken.
  The `beq` branch at 0x1006bbdc targets 0x1006b5e8 and is always taken.
  The `beq` branch at 0x1006bbe4 targets 0x1006b2f8 and is always taken.
  The `beq` branch at 0x1006bbec targets 0x1006b304 and is always taken.
  The `beq` branch at 0x1006bbf4 targets 0x1006b320 and is always taken.
  The `beq` branch at 0x1006bbfc targets 0x1006b33c and is always taken.
  The `beq` branch at 0x1006bc14 targets 0x1006b744 and is always taken.
  The `beq` branch at 0x1006bc28 targets 0x1006b774 and is always taken.
  The `beq` branch at 0x1006bc40 targets 0x1006b7d0 and is always taken.
  The `beq` branch at 0x1006bc54 targets 0x1006b800 and is always taken.
  The `beq` branch at 0x1006bc5c targets 0x1006b878 and is always taken.
  The `beq` branch at 0x1006bd20 targets 0x1006ba18 and is always taken.
  The `beq` branch at 0x1006bdb0 targets 0x1006ba18 and is always taken.
  The `beq` branch at 0x1006bdc0 targets 0x1006b440 and is always taken.
  The `bltz` branch at 0x1006be10 targets 0x1006bed4, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `beq` branch at 0x1006be2c targets 0x1006bb10 and is always taken.
  The `bltz` branch at 0x1006be48 targets 0x1006bee8, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0x1006be58 targets 0x1006bb28 and is always taken.
  The `bltz` branch at 0x1006be74 targets 0x1006befc, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `beq` branch at 0x1006be88 targets 0x1006bb08 and is always taken.
  The `bltz` branch at 0x1006bea0 targets 0x1006bf0c, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `beq` branch at 0x1006beb4 targets 0x1006bb28 and is always taken.
  The `beq` branch at 0x1006bee0 targets 0x1006be28 and is always taken.
  The `beq` branch at 0x1006bef4 targets 0x1006bb28 and is always taken.
  The `beq` branch at 0x1006bf04 targets 0x1006bb08 and is always taken.
  The `beq` branch at 0x1006bf14 targets 0x1006bb28 and is always taken.
  The return at 0x1006af8c has v0 = 0x0.
  The return at 0x1006afc4 has v0 = 0x0.
  The return at 0x1006b984 has v0 = 0x0.
  The return at 0x1006ba88 has v0 = 0x0.
  The return at 0x1006baa8 has v0 = 0x0.
  The return at 0x1006bc74 has v0 = 0x1.
  The return at 0x1006bc8c has v0 = 0x0.
  The return at 0x1006bdd8 has v0 = 0x0.
  The return at 0x1006bdf0 has v0 = 0x0.
  The return at 0x1006becc has v0 = 0x0.
  The instructions from 0x1006b4c8 to 0x1006b4cc are not reached by any path from the entry, and their branches are not listed.
