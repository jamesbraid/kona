# Readings: `usr/cpu/sysgen/IP27boot/kona.a(kona_timeout.o)`

One entry per routine, filed here from the reading batches by binary.

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

- `kona_gfifo_spin` in `usr/cpu/sysgen/IP27boot/kona.a(kona_timeout.o)` at 0x6ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_timeout.o)`.
  Range: 0x6ac-0x804 (344 bytes).
  It occupies 344 bytes.
  The `ld` at 0x6b4 loads 8 bytes from a0 (arg0 at entry) +0x1548.
  The `lw` at 0x6cc loads 4 bytes from a0 (arg0 at entry) +0x148c.
  The `sw` at 0x6dc stores 4 bytes to a0 (arg0 at entry) +0x148c.
  The `ld` at 0x71c loads 8 bytes from a0 (arg0 at entry) +0x1560.
  The `sd` at 0x740 stores 8 bytes to a0 (arg0 at entry) +0x1560.
  The `lw` at 0x748 loads 4 bytes from a0 (arg0 at entry) +0x1540.
  The `ld` at 0x758 loads 8 bytes from a0 (arg0 at entry) +0x1550.
  The `sw` at 0x764 stores 4 bytes to a0 (arg0 at entry) +0x1540.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x87c, including `lw` at 0x76c, `lw` at 0x780.
  The `ld` at 0x77c loads 8 bytes from a0 (arg0 at entry) +0x920.
  The `jal` at 0x6c4 calls gfx_waitf_on with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6e4 calls mutex_spinlock_spl with a0=a0+5368, a1=[sym(pltimeout)]:8, a2=?, a3=?.
  The `jal` at 0x6f4 calls microtime with a0=sp-80, a1=?, a2=?, a3=?.
  The `jal` at 0x73c calls mutex_spinunlock with a0=a0+5368, a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `jal` at 0x744 calls untimeout_wait with a0=[a0+5440], a1=?, a2=?, a3=?.
  The `jal` at 0x750 calls mutex_spinlock_spl with a0=a0+5368, a1=[sym(pltimeout)]:8, a2=?, a3=?.
  The `jal` at 0x778 calls kona_untimeout with a0=a0 at entry (arg0), a1=[a0+2336]:8, a2=?, a3=?.
  The `jal` at 0x7a0 calls mutex_spinunlock with a0=a0+5368, a1=?, a2=?, a3=?.
  The `jal` at 0x7a8 calls gfx_waitf_off with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x7c0 calls kona_delay_monitor_gfifo with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x7d0 calls kona_callout with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x7e4 calls kona_sched_tick with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x7f4 calls kona_die with a0=a0 at entry (arg0), a1=0x9, a2=?, a3=?.
  The `beq` branch at 0x770 targets 0x7bc, is taken when t8(=[a0+2172]) == 0, and falls through when t8(=[a0+2172]) != 0.
  The `beq` branch at 0x784 targets 0x7e4, is taken when t9(=[a0+2172]) == 0, and falls through when t9(=[a0+2172]) != 0.
  The `bne` branch at 0x7c8 targets 0x774, is taken when v0(=ret(kona_delay_monitor_gfifo)) != 0, and falls through when v0(=ret(kona_delay_monitor_gfifo)) == 0.
  The `beq` branch at 0x7dc targets 0x76c and is always taken.
  The `bne` branch at 0x7ec targets 0x78c, is taken when v0(=ret(kona_sched_tick)) != 0, and falls through when v0(=ret(kona_sched_tick)) == 0.
  The `beq` branch at 0x7fc targets 0x790 and is always taken.
  The return at 0x7b4 has v0 = ret(gfx_waitf_off).
