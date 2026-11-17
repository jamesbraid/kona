# Readings: `usr/cpu/sysgen/IP27boot/kona.a(kona_intr_hip2.o)`

One entry per routine, filed here from the reading batches by binary.

- `kona_xg_intr_handler` in `usr/cpu/sysgen/IP27boot/kona.a(kona_intr_hip2.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_intr_hip2.o)`.
  Range: 0x0-0x70 (112 bytes).
  It occupies 112 bytes.
  The `lh` at 0x0 loads 2 bytes from abs 0xffffffffffffc420.
  The `lw` at 0x18 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)) +0x10.
  The `sw` at 0x24 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)) +0x10.
  The `lw` at 0x28 loads 4 bytes from a0 (arg0 at entry) +0x1494.
  The `sw` at 0x3c stores 4 bytes to a0 (arg0 at entry) +0x1494.
  The `lw` at 0x48 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `jal` at 0x44 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x50 calls kona_die with a0=a0 at entry (arg0), a1=0xc, a2=?, a3=?.
  The `jal` at 0x58 calls kona_report_errs with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x68 has v0 = ret(kona_report_errs).

- `kona_intr_handler` in `usr/cpu/sysgen/IP27boot/kona.a(kona_intr_hip2.o)` at 0x70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_intr_hip2.o)`.
  Range: 0x70-0x2bc (588 bytes).
  It occupies 588 bytes.
  The `lh` at 0x70 loads 2 bytes from abs 0xffffffffffffc420.
  The `lw` at 0x84 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)) +0x10.
  The `sw` at 0x90 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)) +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x940, including `lw` at 0x94, `lw` at 0xdc.
  The `lw` at 0x9c loads 4 bytes from a0 (arg0 at entry) +0x1494.
  The `sw` at 0xb0 stores 4 bytes to a0 (arg0 at entry) +0x1494.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0xc0, `ld` at 0x19c, `ld` at 0x1b8.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x888, including `lw` at 0x158, `lw` at 0x1fc, `lw` at 0x21c.
  The `jal` at 0xb8 calls mutex_spinlock with a0=a0+2352, a1=[([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5))+16]+1, a2=([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)), a3=([-0x3be0]:2 << 0x5).
  The `jal` at 0xd4 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800238, a1=[a0+2376]:8, a2=?, a3=?.
  The `jal` at 0x100 calls kona_lowater_intr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x11c calls kona_video_intr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x130 calls kona_arm_intr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x15c calls cmn_err_tag with a0=0x848, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184].
  The `jal` at 0x178 calls kona_voc_intr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1ac calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800238, a1=?, a2=?, a3=?.
  The `jal` at 0x1cc calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800228, a1=0xffffffffbadc0ffe, a2=0x800228, a3=?.
  The `jal` at 0x1d8 calls mutex_spinunlock with a0=a0+2352, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x200 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x220 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x22c calls kona_die with a0=a0 at entry (arg0), a1=0xa, a2=?, a3=?.
  The `jal` at 0x24c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x258 calls kona_die with a0=a0 at entry (arg0), a1=0x16, a2=?, a3=?.
  The `jal` at 0x278 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x284 calls kona_die with a0=a0 at entry (arg0), a1=0xd, a2=?, a3=?.
  The `jal` at 0x2a0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x2ac calls kona_die with a0=a0 at entry (arg0), a1=0xe, a2=?, a3=?.
  The `beq` branch at 0xac targets 0x1e0, is taken when at(=[a0+2368]) == v0(=0x100), and falls through when at(=[a0+2368]) != v0(=0x100).
  The `bne` branch at 0xf0 targets 0x1f0, is taken when (s1(?) & 0x1) != 0, and falls through when (s1(?) & 0x1) == 0.
  The `beq` branch at 0xf8 targets 0x10c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x10c targets 0x210, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x114 targets 0x128, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x128 targets 0x13c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x13c targets 0x168, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x168 targets 0x23c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x170 targets 0x184, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x184 targets 0x268, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x18c targets 0x294, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x194 targets 0x1b8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x208 targets 0xf8 and is always taken.
  The `beq` branch at 0x234 targets 0x114 and is always taken.
  The `beq` branch at 0x260 targets 0x170 and is always taken.
  The `beq` branch at 0x28c targets 0x18c and is always taken.
  The `beq` branch at 0x2b4 targets 0x194 and is always taken.
  The return at 0x1e8 has v0 = one of 0x100, ret(mutex_spinunlock).

- `kona_ge_intr_handler` in `usr/cpu/sysgen/IP27boot/kona.a(kona_intr_hip2.o)` at 0x2bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_intr_hip2.o)`.
  Range: 0x2bc-0x314 (88 bytes).
  It occupies 88 bytes.
  The `lh` at 0x2bc loads 2 bytes from abs 0xffffffffffffc420.
  The `lw` at 0x2d4 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)) +0x10.
  The `sw` at 0x2e8 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)) +0x10.
  The `ld` at 0x2ec loads 8 bytes from a0 (arg0 at entry) +0x948.
  The `jal` at 0x2e4 calls kona_ge_intr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2fc calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800238, a1=0x20, a2=0x800238, a3=?.
  The return at 0x30c has v0 = ret(gfx_pio_write_32).
