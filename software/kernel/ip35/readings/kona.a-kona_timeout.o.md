# Readings: `usr/cpu/sysgen/IP35boot/kona.a(kona_timeout.o)`

One entry per routine, filed here from the reading batches by binary.

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
