# Readings: `usr/cpu/sysgen/IP35boot/kona.a(kona_tport.o)`

One entry per routine, filed here from the reading batches by binary.

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

- `kona_getdesc` in `usr/cpu/sysgen/IP35boot/kona.a(kona_tport.o)` at 0xcd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_tport.o)`.
  Range: 0xcd0-0xce8 (24 bytes).
  It occupies 24 bytes.
  The `beq` branch at 0xcd4 targets 0xce0, is taken when a1 == at(=0x1), and falls through when a1 != at(=0x1).
  The return at 0xce0 has v0 = one of 0x0, 0x1.
