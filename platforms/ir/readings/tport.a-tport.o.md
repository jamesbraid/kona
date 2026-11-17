# Readings: `usr/cpu/sysgen/IP27boot/tport.a(tport.o)`

One entry per routine, filed here from the reading batches by binary.

- `tpcons_write` in `usr/cpu/sysgen/IP27boot/tport.a(tport.o)` at 0xf24
  **Inferred.** Forwards its four argument registers unchanged to an indirect call at 0xf50. The call target is the word loaded at +0x10 from a data-table entry, and the entry is selected using a word loaded from the bss slot at +0x58; the facts do not show how the selection is computed. The callee is not named in the facts, and the return at 0xf5c passes the callee's result back in v0. The routine is a thin wrapper; the name suggests a console write, but nothing shown confirms it.
  Reviewed: 2026-11-12

- `tp_init` in `usr/cpu/sysgen/IP27boot/tport.a(tport.o)` at 0xf64
  **Inferred.** Tests a word at the start of a bss block against 1 (branch at 0xf7c). When it equals 1 the routine continues at 0x105c, where it makes an indirect call at 0x1084, then calls du_keyboard_port (0x108c) and gl_setporthandler with tp_rcv as its second argument (0x1098). Otherwise it checks the console, graphics, monitor and sync-on-green argument strings through is_specified (calls at 0xf88, 0xfc8, 0xff8 and 0x1014) and stores results into bss slots. When tp_tab_size is positive (branch at 0x104c) it then loops over a table with the index in a bss slot, bounded by tp_tab_size (branch at 0x10b4), making one indirect call per pass at 0x10dc. When that call returns nonzero (branch at 0x10e4) it calls tp_initlock (0x10ec), keyboard_init with a1 = 1 (0x10f8), du_keyboard_port (0x1100) and gl_setporthandler with tp_rcv (0x110c). The facts do not establish what the table entries or the word tested at 0xf7c mean.
  Reviewed: 2026-11-12

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
