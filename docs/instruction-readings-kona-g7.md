# Instruction readings from hostfacts

Each entry summarises selected memory accesses, calls, conditional branches and returns reported by hostfacts for the named routine and binary. Every instruction claim includes its address. These are observations of the installed software, not hardware measurements. Unknown values remain marked unknown.






- `kona_timeout_init` in `usr/cpu/sysgen/IP35boot/kona.a(kona_timeout.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_timeout.o)`.
  Range: 0x0-0x58 (88 bytes).
  It occupies 88 bytes.
  The `sd` at 0x30 stores 8 bytes to a0 (arg0 at entry) +0x1528.
  The `sd` at 0x40 stores 8 bytes to a0 (arg0 at entry) +0x1518.
  The `sd` at 0x48 stores 8 bytes to a0 (arg0 at entry) +0x1530.
  The `jal` at 0x14 calls spinlock_init with a0=a0+5368, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x24 calls spinlock_init with a0=a0+5372, a1=sym(.rodata), a2=?, a3=?.
  The return at 0x50 has v0 = ret(spinlock_init).

- `kona_timeout_alloc` in `usr/cpu/sysgen/IP35boot/kona.a(kona_timeout.o)` at 0x58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_timeout.o)`.
  Range: 0x58-0xac (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x70 calls kmem_alloc with a0=0x40, a1=0x1, a2=?, a3=?.
  The `jal` at 0x80 calls us_delay with a0=0xa, a1=?, a2=?, a3=?.
  The `bne` branch at 0x78 targets 0x94, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `bne` branch at 0x90 targets 0x6c, is taken when s0(?) < 0xa (unsigned), and falls through when s0(?) >= 0xa (unsigned).
  The return at 0xa4 has v0 = ret(kmem_alloc).

- `kona_timeout_free` in `usr/cpu/sysgen/IP35boot/kona.a(kona_timeout.o)` at 0xac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_timeout.o)`.
  Range: 0xac-0xc8 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xb4 calls kmem_free with a0=a0 at entry (arg0), a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xc0 has v0 = ret(kmem_free).

- `kona_itimeout_func` in `usr/cpu/sysgen/IP35boot/kona.a(kona_timeout.o)` at 0x350 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_timeout.o)`.
  Range: 0x350-0x3f0 (160 bytes).
  It occupies 160 bytes.
  The `ld` at 0x350 loads 8 bytes from a0 (arg0 at entry) +0x1560.
  The `ld` at 0x3a4 loads 8 bytes from a0 (arg0 at entry) +0x1500.
  The `jal` at 0x374 calls mutex_spinlock_spl with a0=a0+5368, a1=[sym(pltimeout)]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x380 calls kona_callout with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x38c calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x398 calls mutex_spinlock with a0=a0+5372, a1=?, a2=?, a3=?.
  The `jal` at 0x3b4 calls kona_sched_tick with a0=a0 at entry (arg0), a1=0x7a120, a2=?, a3=?.
  The `jal` at 0x3c8 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3e0 calls kona_die with a0=a0 at entry (arg0), a1=0x9, a2=?, a3=?.
  The `bne` branch at 0x364 targets 0x3d0, is taken when a1 < at(=[a0+5472]:8) (unsigned), and falls through when a1 >= at(=[a0+5472]:8) (unsigned).
  The `beq` branch at 0x3a8 targets 0x3c4, is taken when v0(=[a0+5376]:8) == 0, and falls through when v0(=[a0+5376]:8) != 0.
  The `beq` branch at 0x3bc targets 0x3e0, is taken when v0(=ret(kona_sched_tick)) == 0, and falls through when v0(=ret(kona_sched_tick)) != 0.
  The `beq` branch at 0x3e8 targets 0x3c8 and is always taken.
  The return at 0x3d8 has v0 = one of ?, ret(mutex_spinunlock).

- `kona_setcolor` in `usr/cpu/sysgen/IP35boot/kona.a(kona_tport.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_tport.o)`.
  Range: 0x0-0x154 (340 bytes).
  It occupies 340 bytes.
  4 such `lw` accesses load 4 bytes from [sym(.sbss)]:8 +0x800208, including `lw` at 0x54, `lw` at 0x9c, `lw` at 0xe0.
  3 such `sw` accesses store 4 bytes to [sym(.sbss)]:8 +0xc10000, including `sw` at 0xc8, `sw` at 0xd0, `sw` at 0xd4.
  The `jal` at 0x40 calls mutex_spinlock with a0=sym(ktport_lock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x84 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0xac calls kona_fc_attach with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xfc calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x12c calls kona_fc_detach with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x140 calls mutex_spinunlock with a0=sym(ktport_lock), a1=?, a2=?, a3=?.
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

- `kona_unblank` in `usr/cpu/sysgen/IP35boot/kona.a(kona_tport.o)` at 0x5c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_tport.o)`.
  Range: 0x5c8-0x710 (328 bytes).
  It occupies 328 bytes.
  4 such `lw` accesses load 4 bytes from [sym(.sbss)]:8 +0x800208, including `lw` at 0x618, `lw` at 0x660, `lw` at 0x69c.
  3 such `sw` accesses store 4 bytes to [sym(.sbss)]:8 +0xc10000, including `sw` at 0x688, `sw` at 0x68c, `sw` at 0x690.
  The `jal` at 0x604 calls mutex_spinlock with a0=sym(ktport_lock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x648 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x670 calls kona_fc_attach with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x6b8 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x6e8 calls kona_fc_detach with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x6fc calls mutex_spinunlock with a0=sym(ktport_lock), a1=?, a2=?, a3=?.
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

- `kona_movechar` in `usr/cpu/sysgen/IP35boot/kona.a(kona_tport.o)` at 0x710 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_tport.o)`.
  Range: 0x710-0x870 (352 bytes).
  It occupies 352 bytes.
  4 such `lw` accesses load 4 bytes from [sym(.sbss)]:8 +0x800208, including `lw` at 0x768, `lw` at 0x7b0, `lw` at 0x7fc.
  4 such `sw` accesses store 4 bytes to [sym(.sbss)]:8 +0xc10000, including `sw` at 0x7e0, `sw` at 0x7e8, `sw` at 0x7ec.
  The `jal` at 0x754 calls mutex_spinlock with a0=sym(ktport_lock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x798 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x7c0 calls kona_fc_attach with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x818 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x848 calls kona_fc_detach with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x85c calls mutex_spinunlock with a0=sym(ktport_lock), a1=?, a2=?, a3=?.
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

- `kona_getdesc` in `usr/cpu/sysgen/IP35boot/kona.a(kona_tport.o)` at 0xcd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_tport.o)`.
  Range: 0xcd0-0xce8 (24 bytes).
  It occupies 24 bytes.
  The `beq` branch at 0xcd4 targets 0xce0, is taken when a1 == at(=0x1), and falls through when a1 != at(=0x1).
  The return at 0xce0 has v0 = one of 0x0, 0x1.

- `kona_select_cursor` in `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)`.
  Range: 0x0-0x74 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0xc loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x2c loads 4 bytes from a2 (arg2 at entry) +0x0.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0x30, `sb` at 0x4c, `sb` at 0x50.
  The `lw` at 0x34 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `sw` at 0x38 stores 4 bytes to ?.
  The `lw` at 0x3c loads 4 bytes from a2 (arg2 at entry) +0x8.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x40, `sh` at 0x5c.
  The `lw` at 0x44 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `jal` at 0x1c calls mutex_spinlock with a0=[a0+40]:8+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x58 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=[a2+12], a3=?, a4=0x1, a5=[a2+8], a6=[a2+4], a7=[a2].
  The return at 0x6c has v0 = 0x0.

- `kona_video_cleanup` in `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)` at 0x178 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)`.
  Range: 0x178-0x1cc (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x190 calls mutex_spinlock with a0=a0+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a0 calls kona_video_rundown with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1b0 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The return at 0x1c4 has v0 = ret(kona_video_rundown).

- `kona_gsync_complete` in `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)` at 0x2b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)`.
  Range: 0x2b8-0x308 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x2e4 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `jal` at 0x2e8 calls cmn_err_tag with a0=0x838, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `jal` at 0x2f0 calls rrmValidateRetrace with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2c8 targets 0x2f0, is taken when a2 == 0, and falls through when a2 != 0.
  The return at 0x300 has v0 = ret(rrmValidateRetrace).

- `kona_retrace_timeout` in `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)` at 0x308 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)`.
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

- `kona_mswap_complete` in `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)` at 0x1004 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)`.
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
  The return at 0x111c has v0 = one of ret(cmn_err_tag), ?, ret(kona_untimeout).

- `kona_determine_cursor_channel` in `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)` at 0x14d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)`.
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

- `kona_set_channel_rect` in `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)` at 0x1c4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)`.
  Range: 0x1c4c-0x1d18 (204 bytes).
  It occupies 204 bytes.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x0, including `lbu` at 0x1c4c, `lbu` at 0x1c8c.
  The `ld` at 0x1c50 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lbu` at 0x1c9c loads 1 byte from a1 (arg1 at entry) +0x1.
  7 such `sb` accesses store 1 byte to ?, including `sb` at 0x1ca4, `sb` at 0x1cac, `sb` at 0x1cd4.
  The `lb` at 0x1ca8 loads 1 byte from a1 (arg1 at entry) +0x2.
  The `lh` at 0x1cb0 loads 2 bytes from a1 (arg1 at entry) +0x4.
  6 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1cb4, `sh` at 0x1cbc, `sh` at 0x1cc4.
  The `lh` at 0x1cb8 loads 2 bytes from a1 (arg1 at entry) +0x6.
  The `lh` at 0x1cc0 loads 2 bytes from a1 (arg1 at entry) +0x8.
  The `lh` at 0x1cc8 loads 2 bytes from a1 (arg1 at entry) +0xa.
  The `lb` at 0x1cd0 loads 1 byte from a1 (arg1 at entry) +0xc.
  The `lb` at 0x1cd8 loads 1 byte from a1 (arg1 at entry) +0xd.
  The `lh` at 0x1ce0 loads 2 bytes from a1 (arg1 at entry) +0xe.
  The `lh` at 0x1ce8 loads 2 bytes from a1 (arg1 at entry) +0x10.
  The `jal` at 0x1c80 calls mutex_spinlock with a0=[a0+40]:8+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1d04 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=0x1, a3=?, a4=0x20, a5=[a1+16]:2, a7=[a1+14]:2.
  The `bne` branch at 0x1c68 targets 0x1c78, is taken when at(=[a1]:1) < 0x20 (signed), and falls through when at(=[a1]:1) >= 0x20 (signed).
  The `beq` branch at 0x1d10 targets 0x1c70 and is always taken.
  The return at 0x1c70 has v0 = one of 0x0, 0x16.

- `konRecolorCursor` in `usr/lib/X11/dyDDX/kona.so` at 0x53be80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/kona.so`.
  Range: 0x53be80-0x53c08c (524 bytes).
  It occupies 524 bytes.
  The `lw` at 0x53bea8 loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lw` at 0x53beb0 loads 4 bytes from abs 0x599790 (konScreenPrivateIndex).
  The `lw` at 0x53bebc loads 4 bytes from ([a0+436] + ([0x599790] << 0x2)) +0x0.
  The `lw` at 0x53bec8 loads 4 bytes from [([a0+436] + ([0x599790] << 0x2))] +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x53bed8, `lw` at 0x53bfb0.
  2 such `lw` accesses load 4 bytes from (a1 + ([a0] << 0x2)) +0x14, including `lw` at 0x53bee8, `lw` at 0x53bfc0.
  The `lhu` at 0x53bf10 loads 2 bytes from a1 (arg1 at entry) +0x4.
  The `lhu` at 0x53bf24 loads 2 bytes from a1 (arg1 at entry) +0x8.
  The `lhu` at 0x53bf34 loads 2 bytes from a1 (arg1 at entry) +0x6.
  The `sw` at 0x53bf60 stores 4 bytes to [[([a0+436] + ([0x599790] << 0x2))]+8] +0x2620.
  4 such `sw` accesses store 4 bytes to [[([a0+436] + ([0x599790] << 0x2))]+8] +0x0, including `sw` at 0x53bf6c, `sw` at 0x53bf78, `sw` at 0x53bf84.
  The `sw` at 0x53bf9c stores 4 bytes to [([a0+436] + ([0x599790] << 0x2))] +0x70.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x53bfe4, `lw` at 0x53bff4, `lw` at 0x53bff8.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0x53c024, `sw` at 0x53c038, `sw` at 0x53c04c.
  The `jalr` at 0x53bfd8 calls (unnamed) [0x531f50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x57d58.
  The `bne` branch at 0x53bef0 targets 0x53bfa8, is taken when at(=[(a1 + ([a0] << 0x2))+20]) != v0(=0x1), and falls through when at(=[(a1 + ([a0] << 0x2))+20]) == v0(=0x1).
  The `bne` branch at 0x53befc targets 0x53bf0c, is taken when a4(=a2) != 0, and falls through when a4(=a2) == 0.
  The `beq` branch at 0x53bf04 targets 0x53c078 and is always taken.
  The `beq` branch at 0x53bfa0 targets 0x53c078 and is always taken.
  The `beq` branch at 0x53bfe8 targets 0x53c078, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The return at 0x53c084 has v0 = one of 0x1, [[([a0+436] + ([0x599790] << 0x2))]+8]+9760, ?.
