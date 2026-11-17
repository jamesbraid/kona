# Readings: `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)`

One entry per routine, filed here from the reading batches by binary.

- `kona_init` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0x0-0xc8 (200 bytes).
  It occupies 200 bytes.
  The `sb` at 0x5c stores 1 byte to ret(kona_alloc_bdata) +0x8a0.
  The `sh` at 0x64 stores 2 bytes to ret(kona_alloc_bdata) +0x8a2.
  The `jal` at 0x8 calls kona_debug_init with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x14 calls psema with a0=sym(GfxBoardInitSema), a1=0x19, a2=?, a3=?.
  The `jal` at 0x34 calls find_konapipe with a0=?, a1=sp-32, a2=sp-30, a3=?.
  The `jal` at 0x4c calls kona_alloc_bdata with a0=[sym(GfxBoardLimit)], a1=?, a2=?, a3=?.
  The `jal` at 0x7c calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x98 calls xwidget_driver_register with a0=0xc102, a1=0x2aa, a2=sym(.rodata), a3=0x0.
  The `jal` at 0xb8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `blez` branch at 0x20 targets 0x7c, is taken when at(=[sym(GfxBoardLimit)]) <= 0 (signed), and falls through when at(=[sym(GfxBoardLimit)]) > 0 (signed).
  The `beq` branch at 0x3c targets 0x6c, is taken when v0(=ret(find_konapipe)) == 0, and falls through when v0(=ret(find_konapipe)) != 0.
  The `bltz` branch at 0x44 targets 0x7c, is taken when v0(=ret(find_konapipe)) < 0 (signed), and falls through when v0(=ret(find_konapipe)) >= 0 (signed).
  The `beq` branch at 0x54 targets 0xac, is taken when v0(=ret(kona_alloc_bdata)) == 0, and falls through when v0(=ret(kona_alloc_bdata)) != 0.
  The `bne` branch at 0x74 targets 0x30, is taken when s0(?) < a0(=[sym(GfxBoardLimit)]) (signed), and falls through when s0(?) >= a0(=[sym(GfxBoardLimit)]) (signed).
  The `beq` branch at 0xc0 targets 0x7c and is always taken.
  The return at 0xa4 has v0 = ret(xwidget_driver_register).

- `kona_intr_set` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0xc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0xc8-0xd0 (8 bytes).
  It occupies 8 bytes.
  The return at 0xc8 has v0 = 0x0.

- `kona_report_errs` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0xd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0xd0-0x5ec (1308 bytes).
  It occupies 1308 bytes.
  The `ld` at 0xdc loads 8 bytes from a0 (arg0 at entry) +0x948.
  31 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x888, including `lw` at 0x228, `lw` at 0x244, `lw` at 0x264.
  The `jal` at 0xe8 calls gfx_pio_read_32 with a0=[a0+2376]:8+108, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x22c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x248 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x268 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a4=(ret(gfx_pio_read_32) << 0x1c).
  The `jal` at 0x284 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a4=(ret(gfx_pio_read_32) << 0x1c).
  The `jal` at 0x2a0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a5=(ret(gfx_pio_read_32) << 0x1b).
  The `jal` at 0x2bc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a6=(ret(gfx_pio_read_32) << 0x1a).
  The `jal` at 0x2dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a7=(ret(gfx_pio_read_32) << 0x19).
  The `jal` at 0x2fc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x31c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x33c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x35c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x37c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x39c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x3bc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x3dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x3fc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x41c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x43c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x45c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x47c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x49c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a4=(ret(gfx_pio_read_32) << 0xa).
  The `jal` at 0x4bc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a4=(ret(gfx_pio_read_32) << 0xa), a5=(ret(gfx_pio_read_32) << 0x9).
  The `jal` at 0x4dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a5=(ret(gfx_pio_read_32) << 0x9).
  The `jal` at 0x4fc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a6=(ret(gfx_pio_read_32) << 0x8), a7=(ret(gfx_pio_read_32) << 0x9).
  The `jal` at 0x51c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184], a7=(ret(gfx_pio_read_32) << 0x9).
  The `jal` at 0x53c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x55c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x57c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x59c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x5bc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x5dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `bne` branch at 0xf8 targets 0x21c, is taken when (v0(=ret(gfx_pio_read_32)) & 0x1) != 0, and falls through when (v0(=ret(gfx_pio_read_32)) & 0x1) == 0.
  The `bltz` branch at 0x104 targets 0x23c, is taken when a2(=(ret(gfx_pio_read_32) << 0x1e)) < 0 (signed), and falls through when a2(=(ret(gfx_pio_read_32) << 0x1e)) >= 0 (signed).
  The `bltz` branch at 0x110 targets 0x258, is taken when a3(=(ret(gfx_pio_read_32) << 0x1d)) < 0 (signed), and falls through when a3(=(ret(gfx_pio_read_32) << 0x1d)) >= 0 (signed).
  The `bltz` branch at 0x118 targets 0x278, is taken when a4(=(ret(gfx_pio_read_32) << 0x1c)) < 0 (signed), and falls through when a4(=(ret(gfx_pio_read_32) << 0x1c)) >= 0 (signed).
  The `bltz` branch at 0x124 targets 0x294, is taken when a5(=(ret(gfx_pio_read_32) << 0x1b)) < 0 (signed), and falls through when a5(=(ret(gfx_pio_read_32) << 0x1b)) >= 0 (signed).
  The `bltz` branch at 0x130 targets 0x2b0, is taken when a6(=(ret(gfx_pio_read_32) << 0x1a)) < 0 (signed), and falls through when a6(=(ret(gfx_pio_read_32) << 0x1a)) >= 0 (signed).
  The `bltz` branch at 0x13c targets 0x2cc, is taken when a7(=(ret(gfx_pio_read_32) << 0x19)) < 0 (signed), and falls through when a7(=(ret(gfx_pio_read_32) << 0x19)) >= 0 (signed).
  The `bltz` branch at 0x144 targets 0x2ec, is taken when t0(=(ret(gfx_pio_read_32) << 0x18)) < 0 (signed), and falls through when t0(=(ret(gfx_pio_read_32) << 0x18)) >= 0 (signed).
  The `bltz` branch at 0x14c targets 0x30c, is taken when t1(=(ret(gfx_pio_read_32) << 0x17)) < 0 (signed), and falls through when t1(=(ret(gfx_pio_read_32) << 0x17)) >= 0 (signed).
  The `bltz` branch at 0x154 targets 0x32c, is taken when t2(=(ret(gfx_pio_read_32) << 0x16)) < 0 (signed), and falls through when t2(=(ret(gfx_pio_read_32) << 0x16)) >= 0 (signed).
  The `bltz` branch at 0x15c targets 0x34c, is taken when t3(=(ret(gfx_pio_read_32) << 0x15)) < 0 (signed), and falls through when t3(=(ret(gfx_pio_read_32) << 0x15)) >= 0 (signed).
  The `bltz` branch at 0x164 targets 0x36c, is taken when t8(=(ret(gfx_pio_read_32) << 0x14)) < 0 (signed), and falls through when t8(=(ret(gfx_pio_read_32) << 0x14)) >= 0 (signed).
  The `bltz` branch at 0x16c targets 0x38c, is taken when t9(=(ret(gfx_pio_read_32) << 0x13)) < 0 (signed), and falls through when t9(=(ret(gfx_pio_read_32) << 0x13)) >= 0 (signed).
  The `bltz` branch at 0x174 targets 0x3ac, is taken when ra(=(ret(gfx_pio_read_32) << 0x12)) < 0 (signed), and falls through when ra(=(ret(gfx_pio_read_32) << 0x12)) >= 0 (signed).
  The `bltz` branch at 0x17c targets 0x3cc, is taken when at(=(ret(gfx_pio_read_32) << 0x11)) < 0 (signed), and falls through when at(=(ret(gfx_pio_read_32) << 0x11)) >= 0 (signed).
  The `bltz` branch at 0x184 targets 0x3ec, is taken when v0(=(ret(gfx_pio_read_32) << 0x10)) < 0 (signed), and falls through when v0(=(ret(gfx_pio_read_32) << 0x10)) >= 0 (signed).
  The `bltz` branch at 0x18c targets 0x40c, is taken when v1(=(ret(gfx_pio_read_32) << 0xf)) < 0 (signed), and falls through when v1(=(ret(gfx_pio_read_32) << 0xf)) >= 0 (signed).
  The `bltz` branch at 0x194 targets 0x42c, is taken when a0(=(ret(gfx_pio_read_32) << 0xe)) < 0 (signed), and falls through when a0(=(ret(gfx_pio_read_32) << 0xe)) >= 0 (signed).
  The `bltz` branch at 0x19c targets 0x44c, is taken when a1(=(ret(gfx_pio_read_32) << 0xd)) < 0 (signed), and falls through when a1(=(ret(gfx_pio_read_32) << 0xd)) >= 0 (signed).
  The `bltz` branch at 0x1a4 targets 0x46c, is taken when a2(=(ret(gfx_pio_read_32) << 0xc)) < 0 (signed), and falls through when a2(=(ret(gfx_pio_read_32) << 0xc)) >= 0 (signed).
  The `bltz` branch at 0x1ac targets 0x48c, is taken when a3(=(ret(gfx_pio_read_32) << 0xb)) < 0 (signed), and falls through when a3(=(ret(gfx_pio_read_32) << 0xb)) >= 0 (signed).
  The `bltz` branch at 0x1b4 targets 0x4ac, is taken when a4(=(ret(gfx_pio_read_32) << 0xa)) < 0 (signed), and falls through when a4(=(ret(gfx_pio_read_32) << 0xa)) >= 0 (signed).
  The `bltz` branch at 0x1bc targets 0x4cc, is taken when a5(=(ret(gfx_pio_read_32) << 0x9)) < 0 (signed), and falls through when a5(=(ret(gfx_pio_read_32) << 0x9)) >= 0 (signed).
  The `bltz` branch at 0x1c8 targets 0x4ec, is taken when a6(=(ret(gfx_pio_read_32) << 0x8)) < 0 (signed), and falls through when a6(=(ret(gfx_pio_read_32) << 0x8)) >= 0 (signed).
  The `bltz` branch at 0x1d0 targets 0x50c, is taken when a7(=(ret(gfx_pio_read_32) << 0x9)) < 0 (signed), and falls through when a7(=(ret(gfx_pio_read_32) << 0x9)) >= 0 (signed).
  The `bltz` branch at 0x1d8 targets 0x52c, is taken when t0(=(ret(gfx_pio_read_32) << 0x6)) < 0 (signed), and falls through when t0(=(ret(gfx_pio_read_32) << 0x6)) >= 0 (signed).
  The `bltz` branch at 0x1e0 targets 0x54c, is taken when t1(=(ret(gfx_pio_read_32) << 0x5)) < 0 (signed), and falls through when t1(=(ret(gfx_pio_read_32) << 0x5)) >= 0 (signed).
  The `bltz` branch at 0x1e8 targets 0x56c, is taken when t2(=(ret(gfx_pio_read_32) << 0x4)) < 0 (signed), and falls through when t2(=(ret(gfx_pio_read_32) << 0x4)) >= 0 (signed).
  The `bltz` branch at 0x1f0 targets 0x58c, is taken when t3(=(ret(gfx_pio_read_32) << 0x3)) < 0 (signed), and falls through when t3(=(ret(gfx_pio_read_32) << 0x3)) >= 0 (signed).
  The `bltz` branch at 0x1f8 targets 0x5ac, is taken when t8(=(ret(gfx_pio_read_32) << 0x2)) < 0 (signed), and falls through when t8(=(ret(gfx_pio_read_32) << 0x2)) >= 0 (signed).
  The `bltz` branch at 0x200 targets 0x5cc, is taken when t9(=(ret(gfx_pio_read_32) << 0x1)) < 0 (signed), and falls through when t9(=(ret(gfx_pio_read_32) << 0x1)) >= 0 (signed).
  The `beq` branch at 0x234 targets 0x104 and is always taken.
  The `beq` branch at 0x250 targets 0x110 and is always taken.
  The `beq` branch at 0x270 targets 0x118 and is always taken.
  The `beq` branch at 0x28c targets 0x124 and is always taken.
  The `beq` branch at 0x2a8 targets 0x130 and is always taken.
  The `beq` branch at 0x2c4 targets 0x13c and is always taken.
  The `beq` branch at 0x2e4 targets 0x144 and is always taken.
  The `beq` branch at 0x304 targets 0x14c and is always taken.
  The `beq` branch at 0x324 targets 0x154 and is always taken.
  The `beq` branch at 0x344 targets 0x15c and is always taken.
  The `beq` branch at 0x364 targets 0x164 and is always taken.
  The `beq` branch at 0x384 targets 0x16c and is always taken.
  The `beq` branch at 0x3a4 targets 0x174 and is always taken.
  The `beq` branch at 0x3c4 targets 0x17c and is always taken.
  The `beq` branch at 0x3e4 targets 0x184 and is always taken.
  The `beq` branch at 0x404 targets 0x18c and is always taken.
  The `beq` branch at 0x424 targets 0x194 and is always taken.
  The `beq` branch at 0x444 targets 0x19c and is always taken.
  The `beq` branch at 0x464 targets 0x1a4 and is always taken.
  The `beq` branch at 0x484 targets 0x1ac and is always taken.
  The `beq` branch at 0x4a4 targets 0x1b4 and is always taken.
  The `beq` branch at 0x4c4 targets 0x1bc and is always taken.
  The `beq` branch at 0x4e4 targets 0x1c8 and is always taken.
  The `beq` branch at 0x504 targets 0x1d0 and is always taken.
  The `beq` branch at 0x524 targets 0x1d8 and is always taken.
  The `beq` branch at 0x544 targets 0x1e0 and is always taken.
  The `beq` branch at 0x564 targets 0x1e8 and is always taken.
  The `beq` branch at 0x584 targets 0x1f0 and is always taken.
  The `beq` branch at 0x5a4 targets 0x1f8 and is always taken.
  The `beq` branch at 0x5c4 targets 0x200 and is always taken.
  The `beq` branch at 0x5e4 targets 0x208 and is always taken.
  The return at 0x214 has v0 = one of ?, ret(cmn_err).

- `nic_xg_vertex_info` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0x5ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0x5ec-0x60c (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0x5f8 calls nic_vertex_info_set with a0=sym(nic_access_mcr32), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0x604 has v0 = ret(nic_vertex_info_set).

- `kona_extract_nic_info` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0x69c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0x69c-0xed4 (2104 bytes).
  It occupies 2104 bytes.
  The `lbu` at 0x6d0 loads 1 byte from a1 (arg1 at entry) +0x0.
  26 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x72c, `lbu` at 0x784, `lbu` at 0x7a8.
  30 such `sb` accesses store 1 byte to ?, including `sb` at 0x8cc, `sb` at 0x8e0, `sb` at 0x8f8.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd88, `sh` at 0xd8c.
  The `jal` at 0x704 calls strncmp with a0=?, a1=sym(.rodata), a2=0x2, a3=?.
  The `jal` at 0x774 calls strncmp with a0=?, a1=sym(.rodata), a2=0x6, a3=?.
  The `jal` at 0x7e8 calls strncmp with a0=?, a1=sym(.rodata), a2=0x5, a3=?.
  The `jal` at 0x840 calls strncmp with a0=?, a1=sym(.rodata), a2=0x6, a3=?.
  The `jal` at 0x860 calls strncmp with a0=?, a1=sym(.rodata), a2=0x5, a3=?.
  The `jal` at 0xc34 calls hexstrtol with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc8c calls hexstrtol with a0=sp-152, a1=?, a2=?, a3=?.
  The `jal` at 0xcb8 calls hexstrtol with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd14 calls hexstrtol with a0=sp-149, a1=?, a2=?, a3=?, a4=0x1.
  The `jal` at 0xda0 calls strncmp with a0=?, a1=sym(.rodata), a2=0x5, a3=?.
  The `jal` at 0xdc0 calls strncmp with a0=?, a1=sym(.rodata), a2=0x7, a3=?.
  The `jal` at 0xe10 calls strncmp with a0=?, a1=sym(.rodata), a2=0x9, a3=?.
  The `jal` at 0xe34 calls strncmp with a0=?, a1=sym(.rodata), a2=0x6, a3=?.
  The `jal` at 0xe58 calls strncmp with a0=?, a1=sym(.rodata), a2=0xb, a3=?.
  The `jal` at 0xe8c calls strncmp with a0=?, a1=sym(.rodata), a2=0x8, a3=?.
  The `jal` at 0xeb0 calls strncmp with a0=?, a1=sym(.rodata), a2=0x6, a3=?.
  The `beq` branch at 0x6c8 targets 0xdd8, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x6d4 targets 0xdd8, is taken when a3(=[a1]:1) == 0, and falls through when a3(=[a1]:1) != 0.
  The `beq` branch at 0x6f4 targets 0x738 and is always taken.
  The `beq` branch at 0x70c targets 0xe74, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x71c targets 0x874, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x724 targets 0xdd8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x730 targets 0xdd8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x738 targets 0x724, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x760 targets 0x790 and is always taken.
  The `beq` branch at 0x77c targets 0x850, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x788 targets 0x850, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x790 targets 0x7c4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x798 targets 0x7e0, is taken when s2(=0x3a) == a3(?), and falls through when s2(=0x3a) != a3(?).
  The `beq` branch at 0x7a0 targets 0x7c4, is taken when s1(=0x3b) == a3(?), and falls through when s1(=0x3b) != a3(?).
  The `beq` branch at 0x7ac targets 0x7c4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x7b4 targets 0x7e0, is taken when s2(=0x3a) == a3(?), and falls through when s2(=0x3a) != a3(?).
  The `bne` branch at 0x7bc targets 0x7a8, is taken when s1(=0x3b) != a3(?), and falls through when s1(=0x3b) == a3(?).
  The `beq` branch at 0x7c4 targets 0x7e0, is taken when s2(=0x3a) == a3(?), and falls through when s2(=0x3a) != a3(?).
  The `bne` branch at 0x7cc targets 0x76c, is taken when s1(=0x3b) != a3(?), and falls through when s1(=0x3b) == a3(?).
  The `beq` branch at 0x7d4 targets 0x768 and is always taken.
  The `bne` branch at 0x7f0 targets 0xd98, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x804 targets 0x838, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x80c targets 0x828, is taken when s1(=0x3b) == a3(?), and falls through when s1(=0x3b) != a3(?).
  The `beq` branch at 0x818 targets 0x834, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x820 targets 0x814, is taken when s1(=0x3b) != a3(?), and falls through when s1(=0x3b) == a3(?).
  The `beq` branch at 0x828 targets 0x838, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bnel` branch at 0x848 targets 0x788, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0; its branch-likely delay slot `lbu a3,0(s0)` at 0x84c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x850 targets 0x724, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `bne` branch at 0x868 targets 0x6fc, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x878 targets 0xe7c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x880 targets 0xec8, is taken when s1(=0x3b) == a3(?), and falls through when s1(=0x3b) != a3(?).
  The `blez` branch at 0x894 targets 0x900, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x8a4 targets 0x8b4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x8ac targets 0x890, is taken when s1(=0x3b) != a4(?), and falls through when s1(=0x3b) == a4(?).
  The `blez` branch at 0x8b4 targets 0x900, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x8d0 targets 0x8fc, is taken when a3(?) >= a1(?) (signed), and falls through when a3(?) < a1(?) (signed).
  The `beq` branch at 0x8e4 targets 0x8fc, is taken when a3(?) >= a1(?) (signed), and falls through when a3(?) < a1(?) (signed).
  The `bne` branch at 0x8f4 targets 0x8c0, is taken when a3(?) < a1(?) (signed), and falls through when a3(?) >= a1(?) (signed).
  The `beq` branch at 0x914 targets 0x964, is taken when a1(?) >= 0xe (signed), and falls through when a1(?) < 0xe (signed).
  The `bne` branch at 0x93c targets 0x964, is taken when a7(?) < a6(?) (signed), and falls through when a7(?) >= a6(?) (signed).
  The `beq` branch at 0x95c targets 0x91c, is taken when a7(?) >= a6(?) (signed), and falls through when a7(?) < a6(?) (signed).
  The `beq` branch at 0x964 targets 0xa4c, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0x970 targets 0x9b0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x978 targets 0x9b0, is taken when s1(=0x3b) == a6(?), and falls through when s1(=0x3b) != a6(?).
  The `blez` branch at 0x988 targets 0x9f4, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x998 targets 0x9a8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x9a0 targets 0x984, is taken when s1(=0x3b) != a6(?), and falls through when s1(=0x3b) == a6(?).
  The `blez` branch at 0x9a8 targets 0x9f4, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x9c4 targets 0x9f0, is taken when a1(?) >= a5(?) (signed), and falls through when a1(?) < a5(?) (signed).
  The `beq` branch at 0x9d8 targets 0x9f0, is taken when a1(?) >= a5(?) (signed), and falls through when a1(?) < a5(?) (signed).
  The `bne` branch at 0x9e8 targets 0x9b4, is taken when a1(?) < a5(?) (signed), and falls through when a1(?) >= a5(?) (signed).
  The `beq` branch at 0x9fc targets 0xa4c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0xa24 targets 0xa4c, is taken when a6(?) < a1(?) (signed), and falls through when a6(?) >= a1(?) (signed).
  The `beq` branch at 0xa44 targets 0xa04, is taken when a6(?) >= a1(?) (signed), and falls through when a6(?) < a1(?) (signed).
  The `beq` branch at 0xa4c targets 0xb34, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0xa58 targets 0xa98, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xa60 targets 0xa98, is taken when s1(=0x3b) == a5(?), and falls through when s1(=0x3b) != a5(?).
  The `blez` branch at 0xa70 targets 0xadc, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0xa80 targets 0xa90, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xa88 targets 0xa6c, is taken when s1(=0x3b) != a5(?), and falls through when s1(=0x3b) == a5(?).
  The `blez` branch at 0xa90 targets 0xadc, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0xaac targets 0xad8, is taken when a1(?) >= a3(?) (signed), and falls through when a1(?) < a3(?) (signed).
  The `beq` branch at 0xac0 targets 0xad8, is taken when a1(?) >= a3(?) (signed), and falls through when a1(?) < a3(?) (signed).
  The `bne` branch at 0xad0 targets 0xa9c, is taken when a1(?) < a3(?) (signed), and falls through when a1(?) >= a3(?) (signed).
  The `beq` branch at 0xae4 targets 0xb34, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xb0c targets 0xb34, is taken when a5(?) < a1(?) (signed), and falls through when a5(?) >= a1(?) (signed).
  The `beq` branch at 0xb2c targets 0xaec, is taken when a5(?) >= a1(?) (signed), and falls through when a5(?) < a1(?) (signed).
  The `beq` branch at 0xb38 targets 0xc28, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xb44 targets 0xb84, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xb4c targets 0xb84, is taken when s1(=0x3b) == a3(?), and falls through when s1(=0x3b) != a3(?).
  The `blez` branch at 0xb5c targets 0xbc4, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `beq` branch at 0xb6c targets 0xb7c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xb74 targets 0xb58, is taken when s1(=0x3b) != a3(?), and falls through when s1(=0x3b) == a3(?).
  The `blez` branch at 0xb7c targets 0xbc8, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `beq` branch at 0xb98 targets 0xbc4, is taken when a1(?) >= a4(?) (signed), and falls through when a1(?) < a4(?) (signed).
  The `beq` branch at 0xbac targets 0xbc4, is taken when a1(?) >= a4(?) (signed), and falls through when a1(?) < a4(?) (signed).
  The `bne` branch at 0xbbc targets 0xb88, is taken when a1(?) < a4(?) (signed), and falls through when a1(?) >= a4(?) (signed).
  The `beq` branch at 0xbd0 targets 0xc28, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xbfc targets 0xc28, is taken when a3(?) < a1(?) (signed), and falls through when a3(?) >= a1(?) (signed).
  The `beq` branch at 0xc20 targets 0xbd8, is taken when a3(?) >= a1(?) (signed), and falls through when a3(?) < a1(?) (signed).
  The `beq` branch at 0xc28 targets 0xc44, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0xc48 targets 0xcac, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xc68 targets 0xcac, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xc70 targets 0xcac, is taken when s1(=0x3b) == a3(?), and falls through when s1(=0x3b) != a3(?).
  The `beq` branch at 0xc7c targets 0xcac, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xc84 targets 0xcac, is taken when s1(=0x3b) == a3(?), and falls through when s1(=0x3b) != a3(?).
  The `bne` branch at 0xca4 targets 0xc5c, is taken when s6(?) < 0x4 (signed), and falls through when s6(?) >= 0x4 (signed).
  The `beq` branch at 0xcb0 targets 0xcc8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xcc8 targets 0xd48, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xcf0 targets 0xd34, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xcf8 targets 0xd38, is taken when s1(=0x3b) == a1(?), and falls through when s1(=0x3b) != a1(?).
  The `beq` branch at 0xd04 targets 0xd34, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xd0c targets 0xd38, is taken when s1(=0x3b) == a1(?), and falls through when s1(=0x3b) != a1(?).
  The `bne` branch at 0xd2c targets 0xce4, is taken when s6(?) < 0x6 (signed), and falls through when s6(?) >= 0x6 (signed).
  The `beq` branch at 0xd58 targets 0xd84, is taken when a0(?) >= 0x6 (signed), and falls through when a0(?) < 0x6 (signed).
  The `beq` branch at 0xd6c targets 0xd84, is taken when a0(?) >= 0x6 (signed), and falls through when a0(?) < 0x6 (signed).
  The `bne` branch at 0xd7c targets 0xd48, is taken when a0(?) < 0x6 (signed), and falls through when a0(?) >= 0x6 (signed).
  The `beq` branch at 0xd90 targets 0x724 and is always taken.
  The `bne` branch at 0xda8 targets 0xdb8, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0xdb0 targets 0x7fc and is always taken.
  The `bne` branch at 0xdc8 targets 0xe08, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0xdd0 targets 0x7fc and is always taken.
  The `bne` branch at 0xe18 targets 0xe28, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0xe20 targets 0x7fc and is always taken.
  The `bne` branch at 0xe3c targets 0xe50, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0xe48 targets 0x7fc and is always taken.
  The `bne` branch at 0xe60 targets 0xe84, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0xe6c targets 0x7fc and is always taken.
  The `beq` branch at 0xe74 targets 0x718 and is always taken.
  The `beq` branch at 0xe7c targets 0x8c0 and is always taken.
  The `bne` branch at 0xe94 targets 0xea8, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0xea0 targets 0x7fc and is always taken.
  The `bne` branch at 0xeb8 targets 0x7fc, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0xec0 targets 0x7fc and is always taken.
  The `beq` branch at 0xecc targets 0x8c0 and is always taken.
  The return at 0xe00 has v0 = ?.
  The instructions from 0x7dc to 0x7dc are not reached by any path from the entry, and their branches are not listed.

- `kona_detach` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0x1628 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0x1628-0x1630 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1628 has v0 = ?.
