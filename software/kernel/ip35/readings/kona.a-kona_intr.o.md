# Readings: `usr/cpu/sysgen/IP35boot/kona.a(kona_intr.o)`

One entry per routine, filed here from the reading batches by binary.

- `kona_arm_intr` in `usr/cpu/sysgen/IP35boot/kona.a(kona_intr.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_intr.o)`.
  Range: 0x0-0x210 (528 bytes).
  It occupies 528 bytes.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1558, including `sw` at 0x4, `sw` at 0x178.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0xc, `ld` at 0x108, `ld` at 0x124.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x888, including `lw` at 0x64, `lw` at 0x1d4, `lw` at 0x1fc.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x14c0, including `ld` at 0x8c, `ld` at 0xa8.
  The `sd` at 0xb0 stores 8 bytes to a0 (arg0 at entry) +0x14c0.
  The `ld` at 0xd0 loads 8 bytes from a0 (arg0 at entry) +0x1448.
  The `sd` at 0xe8 stores 8 bytes to a0 (arg0 at entry) +0x1448.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x19c, `sb` at 0x1cc.
  The `jal` at 0x24 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800240, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x68 calls cmn_err_tag with a0=0x834, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=ret(gfx_pio_read_32).
  The `jal` at 0x84 calls mutex_spinlock with a0=a0+2576, a1=0x103, a2=?, a3=?.
  The `jal` at 0x98 calls vsema with a0=a0+5296, a1=?, a2=?, a3=?.
  The `jal` at 0xa4 calls kona_untimeout with a0=a0 at entry (arg0), a1=[a0+5312]:8, a2=?, a3=?.
  The `jal` at 0xb8 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xc8 calls vsema with a0=a0+5176, a1=0x103, a2=?, a3=?.
  The `jal` at 0xdc calls kona_untimeout with a0=a0 at entry (arg0), a1=[a0+5192]:8, a2=?, a3=?.
  The `jal` at 0xf0 calls kona_mem_swapin_complete with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x118 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800238, a1=0x10, a2=[a0+2376]:8, a3=?.
  The `jal` at 0x130 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800238, a1=[a0+2376]:8, a2=?, a3=?.
  The `jal` at 0x158 calls us_delay with a0=0x14, a1=?, a2=?, a3=?.
  The `jal` at 0x17c calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800240, a1=[a0+2376]:8, a2=0x1, a3=?.
  The `jal` at 0x1d8 calls cmn_err with a0=0x6, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a4=a0+2616.
  The `jal` at 0x200 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `beq` branch at 0x34 targets 0x100, is taken when v0(=ret(gfx_pio_read_32)) == 0, and falls through when v0(=ret(gfx_pio_read_32)) != 0.
  The `beq` branch at 0x3c targets 0xc8, is taken when v0(=ret(gfx_pio_read_32)) == a0(=0x100), and falls through when v0(=ret(gfx_pio_read_32)) != a0(=0x100).
  The `beq` branch at 0x44 targets 0xec, is taken when v0(=ret(gfx_pio_read_32)) == v1(=0x102), and falls through when v0(=ret(gfx_pio_read_32)) != v1(=0x102).
  The `beq` branch at 0x4c targets 0x84, is taken when v0(=ret(gfx_pio_read_32)) == a1(=0x103), and falls through when v0(=ret(gfx_pio_read_32)) != a1(=0x103).
  The `beq` branch at 0x90 targets 0xb4, is taken when a0(=[a0+5312]:8) == 0, and falls through when a0(=[a0+5312]:8) != 0.
  The `beq` branch at 0xc0 targets 0x74 and is always taken.
  The `beq` branch at 0xd4 targets 0x74, is taken when a1(=[a0+5192]:8) == 0, and falls through when a1(=[a0+5192]:8) != 0.
  The `beq` branch at 0xe4 targets 0x70 and is always taken.
  The `beq` branch at 0xf8 targets 0x74 and is always taken.
  The `bne` branch at 0x13c targets 0x168, is taken when (v0(=ret(gfx_pio_read_32)) & 0x10) != 0, and falls through when (v0(=ret(gfx_pio_read_32)) & 0x10) == 0.
  The `beq` branch at 0x150 targets 0x168, is taken when a2(?) >= 0x1389 (signed), and falls through when a2(?) < 0x1389 (signed).
  The `beq` branch at 0x160 targets 0x128 and is always taken.
  The `beq` branch at 0x18c targets 0x1a4, is taken when a0(?) >= 0x1ff (unsigned), and falls through when a0(?) < 0x1ff (unsigned).
  The `beq` branch at 0x1a8 targets 0x1b8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x1b4 targets 0x108, is taken when s1(?) < 0x1388 (signed), and falls through when s1(?) >= 0x1388 (signed).
  The `bne` branch at 0x1e4 targets 0x74, is taken when s1(?) < 0x1388 (signed), and falls through when s1(?) >= 0x1388 (signed).
  The `beq` branch at 0x208 targets 0x74 and is always taken.
  The return at 0x7c has v0 = one of ?, ret(mutex_spinunlock), ret(vsema), ret(kona_mem_swapin_complete), ret(cmn_err).

- `kona_ge_intr` in `usr/cpu/sysgen/IP35boot/kona.a(kona_intr.o)` at 0x210 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_intr.o)`.
  Range: 0x210-0x5a0 (912 bytes).
  It occupies 912 bytes.
  The `ld` at 0x218 loads 8 bytes from a0 (arg0 at entry) +0xa18.
  2 such `lw` accesses load 4 bytes from [a0+2584]:8 +0x0, including `lw` at 0x21c, `lw` at 0x59c.
  3 such `lw` accesses load 4 bytes from [a0+2584]:8 +0x4, including `lw` at 0x244, `lw` at 0x2c0, `lw` at 0x480.
  2 such `sw` accesses store 4 bytes to [a0+2584]:8 +0x0, including `sw` at 0x26c, `sw` at 0x584.
  The `ld` at 0x2fc loads 8 bytes from table(sym(RRMrn)) +0x70.
  3 such `lw` accesses load 4 bytes from [a0+2584]:8 +0x8, including `lw` at 0x300, `lw` at 0x3dc, `lw` at 0x46c.
  The `sw` at 0x304 stores 4 bytes to [table(sym(RRMrn))+112]:8 +0x40.
  The `lw` at 0x308 loads 4 bytes from [a0+2584]:8 +0xc.
  The `sw` at 0x310 stores 4 bytes to [table(sym(RRMrn))+112]:8 +0x44.
  2 such `ld` accesses load 8 bytes from [table(sym(RRMrn))+112]:8 +0x60, including `ld` at 0x314, `ld` at 0x334.
  The `sd` at 0x33c stores 8 bytes to [table(sym(RRMrn))+112]:8 +0x60.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x14a8, including `ld` at 0x398, `ld` at 0x3b4.
  The `sd` at 0x3b8 stores 8 bytes to a0 (arg0 at entry) +0x14a8.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x888, including `lw` at 0x43c, `lw` at 0x450, `lw` at 0x48c.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0x498, `ld` at 0x4b0, `ld` at 0x4c8.
  The `sw` at 0x57c stores 4 bytes to [a0+2584]:8 +0x4.
  The `jal` at 0x29c calls kona_checkpipe_complete with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?, a4=0x105, a5=[[a0+2584]:8].
  The `jal` at 0x30c calls mutex_spinlock with a0=a0+2576, a1=?, a2=sym(.rodata), a3=?, a4=[[a0+2584]:8+4].
  The `jal` at 0x324 calls vsema with a0=[table(sym(RRMrn))+112]:8+80, a1=?, a2=?, a3=?.
  The `jal` at 0x330 calls kona_untimeout with a0=a0 at entry (arg0), a1=[[table(sym(RRMrn))+112]:8+96]:8, a2=?, a3=?.
  The `jal` at 0x344 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x360 calls kona_mopup_complete with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?, a5=[[a0+2584]:8].
  The `jal` at 0x390 calls mutex_spinlock with a0=a0+2576, a1=?, a2=?, a3=?, a7=[sym(rrm_maxrn)].
  The `jal` at 0x3a4 calls vsema with a0=a0+5272, a1=?, a2=?, a3=?.
  The `jal` at 0x3b0 calls kona_untimeout with a0=a0 at entry (arg0), a1=[a0+5288]:8, a2=?, a3=?.
  The `jal` at 0x3c0 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3e4 calls kona_mem_swapout_complete with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=?, a5=[[a0+2584]:8].
  The `jal` at 0x3f8 calls kona_mem_suspend_complete with a0=a0 at entry (arg0), a1=0x0, a2=[a0+2584]:8+4, a3=?, a5=[[a0+2584]:8].
  The `jal` at 0x420 calls kona_geprint with a0=[a0+2584]:8+4, a1=a0+2616, a2=0x200, a3=?.
  The `jal` at 0x440 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x45c calls cmn_err with a0=0x6, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a4=a0+2616.
  The `jal` at 0x490 calls cmn_err_tag with a0=0x835, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a6=[[a0+2584]:8+4], a7=[[a0+2584]:8+8].
  The `jal` at 0x4a8 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x8002a0, a1=0x8002a0, a2=?, a3=?.
  The `jal` at 0x4c0 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x8002a8, a1=0x8002a8, a2=?, a3=?.
  The `jal` at 0x4d8 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x8002b8, a1=0x8002b8, a2=?, a3=?.
  The `jal` at 0x4f0 calls cmn_err with a0=0x6, a1=sym(.rodata), a2=ret(gfx_pio_read_32), a3=ret(gfx_pio_read_32), a4=ret(gfx_pio_read_32).
  The `jal` at 0x504 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800260, a1=0x800260, a2=?, a3=?.
  The `jal` at 0x51c calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800268, a1=0x800268, a2=?, a3=?.
  The `jal` at 0x534 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800278, a1=0x800278, a2=?, a3=?.
  The `jal` at 0x54c calls cmn_err with a0=0x6, a1=sym(.rodata), a2=ret(gfx_pio_read_32), a3=ret(gfx_pio_read_32), a4=ret(gfx_pio_read_32).
  The `jal` at 0x564 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a4=[[a0+2584]:8+4].
  The `jal` at 0x590 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a4=[[a0+2584]:8+4], a5=[[a0+2584]:8], a6=[[a0+2584]:8+8].
  The `beq` branch at 0x230 targets 0x258, is taken when a5(=[[a0+2584]:8]) == 0, and falls through when a5(=[[a0+2584]:8]) != 0.
  The `beq` branch at 0x23c targets 0x25c, is taken when a5(=[[a0+2584]:8]) >= 0x100 (unsigned), and falls through when a5(=[[a0+2584]:8]) < 0x100 (unsigned).
  The `beq` branch at 0x250 targets 0x3d0, is taken when a4(=[[a0+2584]:8+4]) == v1(=0x100), and falls through when a4(=[[a0+2584]:8+4]) != v1(=0x100).
  The `bne` branch at 0x268 targets 0x2ac, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x274 targets 0x3e0, is taken when s1(?) < 0x103 (unsigned), and falls through when s1(?) >= 0x103 (unsigned).
  The `bne` branch at 0x280 targets 0x354, is taken when s1(?) < 0x104 (unsigned), and falls through when s1(?) >= 0x104 (unsigned).
  The `bne` branch at 0x288 targets 0x3f4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x294 targets 0x46c, is taken when s1(?) != a4(=0x105), and falls through when s1(?) == a4(=0x105).
  The `beq` branch at 0x2a4 targets 0x36c and is always taken.
  The `bne` branch at 0x2b0 targets 0x408, is taken when s1(?) < 0x100 (unsigned), and falls through when s1(?) >= 0x100 (unsigned).
  The `beq` branch at 0x2b8 targets 0x380, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x2c8 targets 0x55c, is taken when a4(=[[a0+2584]:8+4]) >= a7(=[sym(rrm_maxrn)]) (unsigned), and falls through when a4(=[[a0+2584]:8+4]) < a7(=[sym(rrm_maxrn)]) (unsigned).
  The `beq` branch at 0x31c targets 0x340, is taken when ra(=[[table(sym(RRMrn))+112]:8+96]:8) == 0, and falls through when ra(=[[table(sym(RRMrn))+112]:8+96]:8) != 0.
  The `beq` branch at 0x34c targets 0x36c and is always taken.
  The `bne` branch at 0x358 targets 0x46c, is taken when s1(?) != at(=0x103), and falls through when s1(?) == at(=0x103).
  The `bne` branch at 0x384 targets 0x46c, is taken when s1(?) != v1(=0x101), and falls through when s1(?) == v1(=0x101).
  The `beq` branch at 0x39c targets 0x3bc, is taken when a0(=[a0+5288]:8) == 0, and falls through when a0(=[a0+5288]:8) != 0.
  The `beq` branch at 0x3c8 targets 0x36c and is always taken.
  The `beq` branch at 0x3d0 targets 0x25c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3d8 targets 0x574 and is always taken.
  The `beq` branch at 0x3ec targets 0x36c and is always taken.
  The `beq` branch at 0x400 targets 0x36c and is always taken.
  The `bne` branch at 0x408 targets 0x46c, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `bgez` branch at 0x428 targets 0x44c, is taken when v0(=ret(kona_geprint)) >= 0 (signed), and falls through when v0(=ret(kona_geprint)) < 0 (signed).
  The `beq` branch at 0x464 targets 0x36c and is always taken.
  The `beq` branch at 0x554 targets 0x36c and is always taken.
  The `beq` branch at 0x56c targets 0x36c and is always taken.
  The `beq` branch at 0x598 targets 0x258 and is always taken.
  The return at 0x378 has v0 = one of ret(kona_checkpipe_complete), ret(mutex_spinunlock), ret(kona_mopup_complete), ret(kona_mem_swapout_complete), ret(kona_mem_suspend_complete), ret(cmn_err).
