# Readings: `usr/cpu/sysgen/IP35boot/gfx.o`

One entry per routine, filed here from the reading batches by binary.

- `gfxtable_readerlock` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x0-0x44 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x30 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x14 calls mutex_spinlock with a0=a0+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2c calls mutex_spinunlock with a0=a0+4, a1=ret(mutex_spinlock), a2=?, a3=?.
  The return at 0x3c has v0 = ret(mutex_spinunlock).

- `gfxtable_readerunlock` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x44 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x44-0x88 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x60 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x74 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x58 calls mutex_spinlock with a0=a0+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x70 calls mutex_spinunlock with a0=a0+4, a1=ret(mutex_spinlock), a2=?, a3=?.
  The return at 0x80 has v0 = ret(mutex_spinunlock).

- `gfxtable_writerlock` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x88-0x108 (128 bytes).
  It occupies 128 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xac, `lw` at 0xe0.
  The `jal` at 0xa4 calls mutex_spinlock with a0=a0+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xbc calls mutex_spinunlock with a0=a0+4, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xcc calls nano_delay with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0xd4 calls mutex_spinlock with a0=a0+4, a1=?, a2=?, a3=?.
  The `blez` branch at 0xb4 targets 0xec, is taken when at(=[a0]) <= 0 (signed), and falls through when at(=[a0]) > 0 (signed).
  The `bgtz` branch at 0xe4 targets 0xbc, is taken when v0(=[a0]) > 0 (signed), and falls through when v0(=[a0]) <= 0 (signed).
  The return at 0x100 has v0 = ret(mutex_spinlock).

- `gfxtable_writerunlock` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x108 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x108-0x124 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x110 calls mutex_spinunlock with a0=a0+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x11c has v0 = ret(mutex_spinunlock).

- `init_gfx_group_table` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x124 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x124-0x188 (100 bytes).
  It occupies 100 bytes.
  The `jal` at 0x13c calls kern_malloc with a0=0x80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x150 calls bzero with a0=?, a1=0x80, a2=?, a3=?.
  The `jal` at 0x160 calls spinlock_init with a0=sym(gfx_group_table_lock)+4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x178 calls cmn_err with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x12c targets 0x13c, is taken when at(=[sym(gfx_group_table)]:8) == 0, and falls through when at(=[sym(gfx_group_table)]:8) != 0.
  The `beq` branch at 0x148 targets 0x174, is taken when v0(=ret(kern_malloc)) == 0, and falls through when v0(=ret(kern_malloc)) != 0.
  The `beq` branch at 0x16c targets 0x134 and is always taken.
  The `beq` branch at 0x180 targets 0x150 and is always taken.
  The return at 0x134 has v0 = one of ?, ret(spinlock_init).

- `gfx_group_find` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x188 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x188-0x240 (184 bytes).
  It occupies 184 bytes.
  6 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1cc, `ld` at 0x1d8, `ld` at 0x1e4.
  The `jal` at 0x194 calls threadhandle_to_threadgrouphandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1b4 calls gfxtable_readerlock with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x21c calls gfxtable_readerunlock with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1a8 targets 0x238, is taken when (v0(=ret(threadhandle_to_threadgrouphandle)) & 0xf) == 0, and falls through when (v0(=ret(threadhandle_to_threadgrouphandle)) & 0xf) != 0.
  The `beq` branch at 0x1d0 targets 0x218, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1dc targets 0x218, is taken when t9(?) == s1(=ret(threadhandle_to_threadgrouphandle)), and falls through when t9(?) != s1(=ret(threadhandle_to_threadgrouphandle)).
  The `beq` branch at 0x1e8 targets 0x214, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1f4 targets 0x214, is taken when ra(?) == s1(=ret(threadhandle_to_threadgrouphandle)), and falls through when ra(?) != s1(=ret(threadhandle_to_threadgrouphandle)).
  The `beq` branch at 0x200 targets 0x214, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x20c targets 0x1e4, is taken when at(?) != s1(=ret(threadhandle_to_threadgrouphandle)), and falls through when at(?) == s1(=ret(threadhandle_to_threadgrouphandle)).
  The `beq` branch at 0x238 targets 0x1b4 and is always taken.
  The return at 0x230 has v0 = ?.

- `gfx_group_create` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x240 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x240-0x2fc (188 bytes).
  It occupies 188 bytes.
  The `sw` at 0x278 stores 4 bytes to ret(kern_malloc) +0x8.
  The `sd` at 0x27c stores 8 bytes to ret(kern_malloc) +0x0.
  The `ld` at 0x288 loads 8 bytes from ret(kern_malloc) +0x0.
  The `sw` at 0x290 stores 4 bytes to ret(kern_malloc) +0xc.
  The `ld` at 0x2bc loads 8 bytes from ?.
  The `sd` at 0x2c0 stores 8 bytes to ret(kern_malloc) +0x18.
  The `sd` at 0x2d8 stores 8 bytes to ?.
  The `jal` at 0x250 calls kern_malloc with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x268 calls threadhandle_to_threadgrouphandle with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x280 calls spinlock_init with a0=ret(kern_malloc)+16, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2a0 calls gfxtable_writerlock with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x2d4 calls gfxtable_writerunlock with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `bne` branch at 0x258 targets 0x268, is taken when v0(=ret(kern_malloc)) != 0, and falls through when v0(=ret(kern_malloc)) == 0.
  The `beq` branch at 0x260 targets 0x2dc and is always taken.
  The `beq` branch at 0x294 targets 0x2f0, is taken when (a0(=[ret(kern_malloc)]:8) & 0xf) == 0, and falls through when (a0(=[ret(kern_malloc)]:8) & 0xf) != 0.
  The `beq` branch at 0x2f4 targets 0x2a0 and is always taken.
  The return at 0x2e8 has v0 = one of 0x0, ret(kern_malloc).

- `gfx_group_destroy` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x2fc-0x3cc (208 bytes).
  It occupies 208 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x300, `ld` at 0x348.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x33c, `ld` at 0x34c, `ld` at 0x35c.
  The `sd` at 0x384 stores 8 bytes to ?.
  The `jal` at 0x324 calls gfxtable_writerlock with a0=sym(gfx_group_table_lock), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x390 calls gfxtable_writerunlock with a0=sym(gfx_group_table_lock), a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `jal` at 0x3a0 calls spinlock_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3a8 calls kern_free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x318 targets 0x3c4, is taken when (a1(=[a0]:8) & 0xf) == 0, and falls through when (a1(=[a0]:8) & 0xf) != 0.
  The `beq` branch at 0x340 targets 0x374, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x350 targets 0x374, is taken when a6(?) == a5(=[a0]:8), and falls through when a6(?) != a5(=[a0]:8).
  The `beq` branch at 0x360 targets 0x38c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x36c targets 0x358, is taken when a6(?) != a5(=[a0]:8), and falls through when a6(?) == a5(=[a0]:8).
  The `beq` branch at 0x374 targets 0x388, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x380 targets 0x38c and is always taken.
  The `beq` branch at 0x398 targets 0x3b4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x3c4 targets 0x324 and is always taken.
  The return at 0x3bc has v0 = one of ret(gfxtable_writerunlock), ret(kern_free).

- `init_gthread_table` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3cc-0x46c (160 bytes).
  It occupies 160 bytes.
  The `sw` at 0x448 stores 4 bytes to ?.
  The `jal` at 0x3f8 calls kern_malloc with a0=0x800, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x40c calls bzero with a0=?, a1=0x800, a2=?, a3=?.
  The `jal` at 0x42c calls spinlock_init with a0=?, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x45c calls cmn_err with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x3dc targets 0x3f8, is taken when at(=[sym(gthread_table)]:8) == 0, and falls through when at(=[sym(gthread_table)]:8) != 0.
  The `beq` branch at 0x404 targets 0x454, is taken when v0(=ret(kern_malloc)) == 0, and falls through when v0(=ret(kern_malloc)) != 0.
  The `bne` branch at 0x444 targets 0x418, is taken when s0(?) < 0x10 (signed), and falls through when s0(?) >= 0x10 (signed).
  The `beq` branch at 0x44c targets 0x3e8 and is always taken.
  The `beq` branch at 0x464 targets 0x40c and is always taken.
  The return at 0x3f0 has v0 = one of ?, ret(spinlock_init).

- `gthread_create` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x46c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x46c-0x568 (252 bytes).
  It occupies 252 bytes.
  The `sd` at 0x498 stores 8 bytes to ret(kern_malloc) +0x0.
  The `sw` at 0x49c stores 4 bytes to ret(kern_malloc) +0x8.
  The `sd` at 0x4a0 stores 8 bytes to ret(kern_malloc) +0x10.
  The `sd` at 0x4a4 stores 8 bytes to ret(kern_malloc) +0x18.
  The `ld` at 0x51c loads 8 bytes from ?.
  The `sd` at 0x520 stores 8 bytes to ret(kern_malloc) +0x20.
  The `sd` at 0x52c stores 8 bytes to ?.
  The `jal` at 0x480 calls kern_malloc with a0=0x28, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4a8 calls gfx_group_find with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x508 calls gfxtable_writerlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x538 calls gfxtable_writerunlock with a0=?, a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `jal` at 0x558 calls gthread_attach_group with a0=ret(kern_malloc), a1=ret(gfx_group_find), a2=?, a3=?.
  The `bne` branch at 0x488 targets 0x498, is taken when v0(=ret(kern_malloc)) != 0, and falls through when v0(=ret(kern_malloc)) == 0.
  The `beq` branch at 0x490 targets 0x540 and is always taken.
  The `bne` branch at 0x4b0 targets 0x558, is taken when v0(=ret(gfx_group_find)) != 0, and falls through when v0(=ret(gfx_group_find)) == 0.
  The `beq` branch at 0x560 targets 0x4bc and is always taken.
  The return at 0x550 has v0 = one of 0x0, ret(kern_malloc).

- `gthread_destroy` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x568 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x568-0x65c (244 bytes).
  It occupies 244 bytes.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x5d8, `ld` at 0x5e8, `ld` at 0x5f8.
  The `sd` at 0x61c stores 8 bytes to ?.
  The `jal` at 0x5c8 calls gfxtable_writerlock with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x630 calls gfxtable_writerunlock with a0=?, a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `jal` at 0x640 calls kern_free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x5e0 targets 0x610, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x5ec targets 0x610, is taken when a6(?) == s0(=a0), and falls through when a6(?) != s0(=a0).
  The `beq` branch at 0x5fc targets 0x62c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x608 targets 0x5f4, is taken when a7(?) != s0(=a0), and falls through when a7(?) == s0(=a0).
  The `beq` branch at 0x610 targets 0x62c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x624 targets 0x630 and is always taken.
  The `beq` branch at 0x638 targets 0x64c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The return at 0x654 has v0 = one of ret(gfxtable_writerunlock), ret(kern_free).

- `gthread_attach_list` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x65c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x65c-0x6f8 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x674 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `sw` at 0x67c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sd` at 0x684 stores 8 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x6b4 stores 4 bytes to ret(kern_malloc) +0x4.
  The `sd` at 0x6c8 stores 8 bytes to ret(kern_malloc) +0x18.
  The `sw` at 0x6d0 stores 4 bytes to ret(kern_malloc) +0x0.
  The `jal` at 0x698 calls kern_malloc with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6d4 calls init_sv with a0=ret(kern_malloc)+8, a1=0x0, a2=sym(.rodata), a3=-0x1, a4=0x1.
  The `jal` at 0x6e8 calls spinlock_init with a0=ret(kern_malloc)+16, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x66c targets 0x698, is taken when a1 == 0, and falls through when a1 != 0.
  The `bne` branch at 0x6a4 targets 0x6b4, is taken when v0(=ret(kern_malloc)) != 0, and falls through when v0(=ret(kern_malloc)) == 0.
  The `beq` branch at 0x6ac targets 0x688 and is always taken.
  The `beq` branch at 0x6f0 targets 0x680 and is always taken.
  The return at 0x690 has v0 = one of 0x0, 0x1.

- `gthread_detach_list` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x6f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x6f8-0x74c (84 bytes).
  It occupies 84 bytes.
  The `ld` at 0x700 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sd` at 0x704 stores 8 bytes to a0 (arg0 at entry) +0x10.
  The `lw` at 0x708 loads 4 bytes from [a0+16]:8 +0x0.
  The `sw` at 0x718 stores 4 bytes to [a0+16]:8 +0x0.
  The `jal` at 0x72c calls spinlock_destroy with a0=[a0+16]:8+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x734 calls sv_destroy with a0=[a0+16]:8+8, a1=?, a2=?, a3=?.
  The `jal` at 0x73c calls kern_free with a0=[a0+16]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x714 targets 0x72c, is taken when at(=[[a0+16]:8]-1) == 0, and falls through when at(=[[a0+16]:8]-1) != 0.
  The `beq` branch at 0x744 targets 0x71c and is always taken.
  The return at 0x724 has v0 = 0x1.

- `gthread_attach_group` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x74c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x74c-0x7a8 (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x770 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `sw` at 0x784 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sd` at 0x794 stores 8 bytes to a0 (arg0 at entry) +0x18.
  The `jal` at 0x768 calls mutex_spinlock with a0=a1+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x780 calls mutex_spinunlock with a0=a1+16, a1=ret(mutex_spinlock), a2=?, a3=?.
  The return at 0x7a0 has v0 = 0x1.

- `gthread_detach_group` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x7a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x7a8-0x800 (88 bytes).
  It occupies 88 bytes.
  The `ld` at 0x7b0 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sd` at 0x7c4 stores 8 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x7d4 loads 4 bytes from [a0+24]:8 +0x8.
  The `sw` at 0x7e8 stores 4 bytes to [a0+24]:8 +0x8.
  The `jal` at 0x7cc calls mutex_spinlock with a0=[a0+24]:8+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7e4 calls mutex_spinunlock with a0=[a0+24]:8+16, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x7bc targets 0x7f4, is taken when s0(=[a0+24]:8) == 0, and falls through when s0(=[a0+24]:8) != 0.
  The return at 0x7f8 has v0 = one of 0x0, 0x1.

- `gthread_find` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x800 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x800-0x8dc (220 bytes).
  It occupies 220 bytes.
  6 such `ld` accesses load 8 bytes from ?, including `ld` at 0x874, `ld` at 0x880, `ld` at 0x88c.
  The `jal` at 0x864 calls gfxtable_readerlock with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x8c0 calls gfxtable_readerunlock with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x878 targets 0x8bc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x884 targets 0x8bc, is taken when a1(?) == s1(=a0), and falls through when a1(?) != s1(=a0).
  The `beq` branch at 0x890 targets 0x8bc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x89c targets 0x8bc, is taken when a2(?) == s1(=a0), and falls through when a2(?) != s1(=a0).
  The `beq` branch at 0x8a8 targets 0x8bc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x8b4 targets 0x88c, is taken when a3(?) != s1(=a0), and falls through when a3(?) == s1(=a0).
  The return at 0x8d4 has v0 = ?.

- `gthread_find_gfxp` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x8dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x8dc-0x914 (56 bytes).
  It occupies 56 bytes.
  The `ld` at 0x8f4 loads 8 bytes from ret(gthread_find) +0x10.
  The `ld` at 0x900 loads 8 bytes from [ret(gthread_find)+16]:8 +0x18.
  The `jal` at 0x8e4 calls gthread_find with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x8ec targets 0x90c, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x8f8 targets 0x90c, is taken when a2(=[ret(gthread_find)+16]:8) == 0, and falls through when a2(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x90c targets 0x904 and is always taken.
  The return at 0x904 has v0 = one of [[ret(gthread_find)+16]:8+24]:8, 0x0.

- `gthread_scan` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x914 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x914-0xa64 (336 bytes).
  It occupies 336 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x990, `ld` at 0x9ac, `ld` at 0xa50.
  The `lw` at 0x99c loads 4 bytes from ?.
  The `jalr` at 0x92c calls (unknown callee) with a0=0x0, a1=a1 at entry (arg1), a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x968 calls gfxtable_readerlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9d8 calls gfxtable_readerunlock with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x9f8 calls (unknown callee) with a0=0x0, a1=a1 at entry (arg1), a2=0x2, a3=a0 at entry (arg0).
  The `jalr` at 0xa10 calls (unknown callee) with a0=?, a1=a1 at entry (arg1), a2=0x1, a3=?, a4=a0 at entry (arg0).
  The `jal` at 0xa30 calls gfxtable_readerunlock with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x93c targets 0x95c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `bne` branch at 0x978 targets 0x964, is taken when s0(?) < 0x10 (signed), and falls through when s0(?) >= 0x10 (signed).
  The `beq` branch at 0x994 targets 0x9b8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x9a4 targets 0xa08, is taken when (t9(?) & 0x4) == 0, and falls through when (t9(?) & 0x4) != 0.
  The `bne` branch at 0x9b0 targets 0x99c, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bne` branch at 0x9c4 targets 0x98c, is taken when s1(?) < 0x10 (signed), and falls through when s1(?) >= 0x10 (signed).
  The `bne` branch at 0x9e8 targets 0x9d0, is taken when s0(?) < 0x10 (signed), and falls through when s0(?) >= 0x10 (signed).
  The `beq` branch at 0xa00 targets 0x944 and is always taken.
  The `beq` branch at 0xa18 targets 0xa50, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `bne` branch at 0xa40 targets 0xa2c, is taken when s0(?) < 0x10 (signed), and falls through when s0(?) >= 0x10 (signed).
  The `beq` branch at 0xa48 targets 0x944 and is always taken.
  The `bne` branch at 0xa54 targets 0x99c, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xa5c targets 0x9bc and is always taken.
  The return at 0x954 has v0 = one of 0x0, ret(?).

- `GfxRegisterBoard` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xa64 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0xa64-0xb48 (228 bytes).
  It occupies 228 bytes.
  The `sd` at 0xaac stores 8 bytes to (sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3)) +0x0.
  4 such `ld` accesses load 8 bytes from (sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3)) +0x0, including `ld` at 0xac0, `ld` at 0xad8, `ld` at 0xaf0.
  The `sd` at 0xac8 stores 8 bytes to [(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8 +0x38.
  The `sd` at 0xae0 stores 8 bytes to [(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8 +0x40.
  The `sd` at 0xaf8 stores 8 bytes to [(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8 +0x0.
  The `sw` at 0xb0c stores 4 bytes to [(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8 +0x18.
  The `jal` at 0xa88 calls kern_malloc with a0=0x48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xaa8 calls bzero with a0=ret(kern_malloc), a1=0x48, a2=?, a3=?.
  The `jal` at 0xb18 calls RRM_Init with a0=a1 at entry (arg1), a1=?, a2=[sym(GfxNumberOfBoards)]+1, a3=[sym(GfxNumberOfBoards)], a4=[(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8, a5=([sym(GfxNumberOfBoards)] << 0x3), a6=a2 at entry (arg2), a7=[(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8.
  The `jal` at 0xb38 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa80 targets 0xb30, is taken when at(=[sym(GfxNumberOfBoards)]) >= v0(=[sym(GfxBoardLimit)]) (signed), and falls through when at(=[sym(GfxNumberOfBoards)]) < v0(=[sym(GfxBoardLimit)]) (signed).
  The `beq` branch at 0xb40 targets 0xb24 and is always taken.
  The return at 0xb28 has v0 = one of -0x1, 0x0.

- `GfxAddHwgraphEdge` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xb48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0xb48-0xc28 (224 bytes).
  It occupies 224 bytes.
  The `ld` at 0xb4c loads 8 bytes from sym(GfxBoards) +0x0.
  The `ld` at 0xb54 loads 8 bytes from [sym(GfxBoards)]:8 +0x40.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0xb80, `ld` at 0xb84, `ld` at 0xb9c.
  The `jal` at 0xbc0 calls graph_info_add_LBL with a0=[sym(hwgraph)]:8, a1=a0 at entry (arg0), a2=sym(.rodata), a3=0x0.
  The `jal` at 0xbe0 calls sprintf with a0=sp-32, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xbf4 calls hwgraph_edge_add with a0=[sym(.sdata)+24], a1=a0 at entry (arg0), a2=sp-32, a3=?.
  The `jal` at 0xc18 calls hwgraph_path_add with a0=[sym(hwgraph_root)], a1=sym(.rodata), a2=sym(.sdata)+24, a3=[sym(.sdata)+24], a4=-0x1.
  The `beq` branch at 0xb68 targets 0xbac, is taken when at(=[[sym(GfxBoards)]:8+64]:8) == a1, and falls through when at(=[[sym(GfxBoards)]:8+64]:8) != a1.
  The `beq` branch at 0xb88 targets 0xbac, is taken when v0(?) == a1, and falls through when v0(?) != a1.
  The `bne` branch at 0xba4 targets 0xb74, is taken when v1(?) != a1, and falls through when v1(?) == a1.
  The `beq` branch at 0xbd0 targets 0xc0c, is taken when a3(=[sym(.sdata)+24]) == a4(=-0x1), and falls through when a3(=[sym(.sdata)+24]) != a4(=-0x1).
  The `beq` branch at 0xc20 targets 0xbd8 and is always taken.
  The return at 0xc04 has v0 = ret(hwgraph_edge_add).

- `gfx_disp` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xc28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0xc28-0xd5c (308 bytes).
  It occupies 308 bytes.
  The `ld` at 0xc4c loads 8 bytes from ret(gthread_find) +0x10.
  The `ld` at 0xc58 loads 8 bytes from [ret(gthread_find)+16]:8 +0x18.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0xc68, `ld` at 0xc98, `ld` at 0xca4.
  The `ld` at 0xc7c loads 8 bytes from ret(gthread_find) +0x18.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xc88, `lw` at 0xcb0, `lw` at 0xcc8.
  The `lw` at 0xd1c loads 4 bytes from ret(gthread_find) +0x8.
  The `lw` at 0xd38 loads 4 bytes from [ret(gthread_find)+24]:8 +0xc.
  The `jal` at 0xc30 calls gthread_find with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xc6c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd44 calls valusema with a0=?, a1=?, a2=?, a3=?, a5=[[ret(gthread_find)+24]:8+12].
  The `beq` branch at 0xc44 targets 0xc5c, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0xc50 targets 0xc5c, is taken when v0(=[ret(gthread_find)+16]:8) == 0, and falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0xc5c targets 0xcfc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xc64 targets 0xca8 and is always taken.
  The `beq` branch at 0xc74 targets 0xcc8, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xc80 targets 0xc98, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xc90 targets 0xd04, is taken when (at(?) & 0x8) == 0, and falls through when (at(?) & 0x8) != 0.
  The `beq` branch at 0xc9c targets 0xcfc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xca8 targets 0xc98, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `blez` branch at 0xcb4 targets 0xc7c, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `bne` branch at 0xcc0 targets 0xc6c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xcd0 targets 0xce4, is taken when (v1(?) & 0x3) != 0, and falls through when (v1(?) & 0x3) == 0.
  The `bne` branch at 0xcdc targets 0xc7c, is taken when a0(?) != s0(?), and falls through when a0(?) == s0(?).
  The `beq` branch at 0xcfc targets 0xce4 and is always taken.
  The `bne` branch at 0xd08 targets 0xc98, is taken when a1(?) != s0(?), and falls through when a1(?) == s0(?).
  The `bne` branch at 0xd14 targets 0xc98, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0xd24 targets 0xc98, is taken when (a3(=[ret(gthread_find)+8]) & 0x4) != 0, and falls through when (a3(=[ret(gthread_find)+8]) & 0x4) == 0.
  The `bne` branch at 0xd30 targets 0xc98, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xd3c targets 0xc98, is taken when a5(=[[ret(gthread_find)+24]:8+12]) == 0, and falls through when a5(=[[ret(gthread_find)+24]:8+12]) != 0.
  The `bgezl` branch at 0xd4c targets 0xc9c, is taken when v0(=ret(valusema)) >= 0 (signed), and falls through when v0(=ret(valusema)) < 0 (signed); its branch-likely delay slot `ld s0,24(s0)` at 0xd50 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd54 targets 0xce4 and is always taken.
  The return at 0xcf4 has v0 = one of 0x0, 0x1.

- `gfx_fault` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xd5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0xd5c-0xe34 (216 bytes).
  It occupies 216 bytes.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x18, including `ld` at 0xd8c, `ld` at 0xdcc.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0xd94, `lw` at 0xdd8, `lw` at 0xe20.
  The `ld` at 0xdb0 loads 8 bytes from a1 (arg1 at entry) +0x20.
  The `ld` at 0xdb4 loads 8 bytes from [a1+32]:8 +0x70.
  The `jal` at 0xd6c calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xd78 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jalr` at 0xdb8 calls (unknown callee) with a0=a1 at entry (arg1), a1=[[a1+32]:8+112]:8, a2=?, a3=?.
  The `jal` at 0xdc4 calls RRM_ValidFault with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0xe14 calls psema with a0=a1+80, a1=0x19, a2=?, a3=?.
  The `jal` at 0xe24 calls vsema with a0=a1+80, a1=?, a2=[ret(gthread_find)+24]:8, a3=?.
  The `beq` branch at 0xd84 targets 0xdf0, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0xd90 targets 0xda4, is taken when at(=[ret(gthread_find)+24]:8) == 0, and falls through when at(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xd9c targets 0xe14, is taken when (a0(=[a1+4]) & 0x8) == 0, and falls through when (a0(=[a1+4]) & 0x8) != 0.
  The `beq` branch at 0xda8 targets 0xdc4, is taken when (a0(=[a1+4]) & 0x1) == 0, and falls through when (a0(=[a1+4]) & 0x1) != 0.
  The `beq` branch at 0xdd0 targets 0xde8, is taken when a2(=[ret(gthread_find)+24]:8) == 0, and falls through when a2(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xde0 targets 0xe24, is taken when (a3(=[a1+4]) & 0x8) == 0, and falls through when (a3(=[a1+4]) & 0x8) != 0.
  The `bltz` branch at 0xde8 targets 0xe08, is taken when v0(=ret(RRM_ValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_ValidFault)) >= 0 (signed).
  The `beq` branch at 0xe0c targets 0xdf4 and is always taken.
  The `beq` branch at 0xe1c targets 0xda4 and is always taken.
  The `beq` branch at 0xe2c targets 0xde8 and is always taken.
  The return at 0xe00 has v0 = one of 0x0, 0x1.

- `gfx_exit` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xe34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0xe34-0xfe0 (428 bytes).
  It occupies 428 bytes.
  The `ld` at 0xe5c loads 8 bytes from ret(gthread_find) +0x18.
  The `lw` at 0xe60 loads 4 bytes from ret(gthread_find) +0x8.
  5 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0xe64, `ld` at 0xe84, `ld` at 0xf44.
  The `sw` at 0xe70 stores 4 bytes to ret(gthread_find) +0x8.
  2 such `ld` accesses load 8 bytes from [ret(gthread_find)+16]:8 +0x18, including `ld` at 0xe88, `ld` at 0xebc.
  The `lw` at 0xe94 loads 4 bytes from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  13 such `ld` accesses load 8 bytes from ?, including `ld` at 0xec4, `ld` at 0xed8, `ld` at 0xee4.
  The `ld` at 0xf34 loads 8 bytes from ret(gthread_find) +0x0.
  The `sd` at 0xfb4 stores 8 bytes to ?.
  The `jal` at 0xe3c calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe48 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0xe7c calls GfxListReaderLock with a0=[ret(gthread_find)+16]:8, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0xea4 calls GfxListReaderUnlock with a0=[ret(gthread_find)+16]:8, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jalr` at 0xed0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf24 calls mutex_spinlock with a0=[ret(gthread_find)+16]:8+16, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0xf30 calls threadgroup_refcnt with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf4c calls mutex_spinunlock with a0=[ret(gthread_find)+16]:8+16, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xf54 calls GfxListReaderUnlock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf90 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xfa8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfbc calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfc4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0xe54 targets 0xf1c, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0xe6c targets 0xeb4, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0xe74 targets 0xf64, is taken when a1(=[ret(gthread_find)+16]:8) == 0, and falls through when a1(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0xe8c targets 0xea4, is taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0xe9c targets 0xf24, is taken when (v0(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0, and falls through when (v0(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `beq` branch at 0xeac targets 0xf08 and is always taken.
  The `beq` branch at 0xeb4 targets 0xec0, is taken when a1(=[ret(gthread_find)+16]:8) == 0, and falls through when a1(=[ret(gthread_find)+16]:8) != 0.
  The `bnel` branch at 0xec0 targets 0xee8, is taken when s0(?) != 0, and falls through when s0(?) == 0; its branch-likely delay slot `ld v0,32(s0)` at 0xec4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xec8 targets 0xf08 and is always taken.
  The `beq` branch at 0xedc targets 0xf08, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xee8 targets 0xefc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xef4 targets 0xed0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0xf00 targets 0xee4, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xf1c targets 0xf08 and is always taken.
  The `beq` branch at 0xf3c targets 0xf78, is taken when v0(=ret(threadgroup_refcnt)) == v1(=0x1), and falls through when v0(=ret(threadgroup_refcnt)) != v1(=0x1).
  The `beq` branch at 0xf5c targets 0xf08 and is always taken.
  The `beq` branch at 0xf64 targets 0xf0c and is always taken.
  The `beq` branch at 0xf70 targets 0xf44, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xf7c targets 0xf6c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xf88 targets 0xf6c, is taken when a1(?) != s0(?), and falls through when a1(?) == s0(?).
  The `beq` branch at 0xfa0 targets 0xfb0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0xfd0 targets 0xf78, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xfd8 targets 0xf48 and is always taken.
  The return at 0xf14 has v0 = 0x0.

- `gfx_shdup` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1234 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x1234-0x12b0 (124 bytes).
  It occupies 124 bytes.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x1250, `ld` at 0x129c.
  The `ld` at 0x125c loads 8 bytes from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x1268 loads 4 bytes from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `jal` at 0x1240 calls gthread_find with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1284 calls gthread_create with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a4=[[ret(gthread_find)+16]:8+24]:8.
  The `jal` at 0x1298 calls gthread_attach_list with a0=ret(gthread_create), a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0x12a0 calls setgfxsched_thread with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1248 targets 0x1274, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x1254 targets 0x1278, is taken when v0(=[ret(gthread_find)+16]:8) == 0, and falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x1260 targets 0x1278, is taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x1270 targets 0x1284, is taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0, and falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `beq` branch at 0x128c targets 0x1278, is taken when v0(=ret(gthread_create)) == 0, and falls through when v0(=ret(gthread_create)) != 0.
  The `beq` branch at 0x12a8 targets 0x1278 and is always taken.
  The return at 0x127c has v0 = one of [ret(gthread_find)+16]:8, ?, ret(gthread_create), ret(setgfxsched_thread).

- `GfxKiller` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x12b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x12b0-0x13ac (252 bytes).
  It occupies 252 bytes.
  The `ld` at 0x12e4 loads 8 bytes from a1 (arg1 at entry) +0x10.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x18, including `ld` at 0x12f4, `ld` at 0x1350, `ld` at 0x13a0.
  The `ld` at 0x12f8 loads 8 bytes from [a1+16]:8 +0x18.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x1308, `ld` at 0x131c, `ld` at 0x135c.
  The `ld` at 0x1328 loads 8 bytes from [a0+16]:8 +0x18.
  The `ld` at 0x1334 loads 8 bytes from a1 (arg1 at entry) +0x8.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1338, `ld` at 0x1344.
  The `ld` at 0x138c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x1398 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `jal` at 0x1314 calls GfxListReaderLock with a0=[a0+16]:8, a1=[a0+24]:8, a2=0x0, a3=a3 at entry (arg3), a4=0x1.
  The `jal` at 0x1368 calls GfxListReaderUnlock with a0=[a0+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1388 calls threadhandle_to_proc with a0=[a0]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1394 calls psignal with a0=ret(threadhandle_to_proc), a1=[a1], a2=?, a3=?.
  The `beq` branch at 0x12c8 targets 0x1370, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x12d4 targets 0x1374, is taken when a2 == at(=0x2), and falls through when a2 != at(=0x2).
  The `bne` branch at 0x12dc targets 0x1374, is taken when a2 != a4(=0x1), and falls through when a2 == a4(=0x1).
  The `beq` branch at 0x12e8 targets 0x13a4, is taken when a0(=[a1+16]:8) == 0, and falls through when a0(=[a1+16]:8) != 0.
  The `bne` branch at 0x12f0 targets 0x1304, is taken when a0(=[a1+16]:8) != s0(=a0), and falls through when a0(=[a1+16]:8) == s0(=a0).
  The `beq` branch at 0x12fc targets 0x1374, is taken when v0(=[[a1+16]:8+24]:8) == a1(=[a0+24]:8), and falls through when v0(=[[a1+16]:8+24]:8) != a1(=[a0+24]:8).
  The `beq` branch at 0x1304 targets 0x1320, is taken when a1(=[a0+24]:8) == 0, and falls through when a1(=[a0+24]:8) != 0.
  The `beq` branch at 0x130c targets 0x132c, is taken when a0(=[a0+16]:8) == 0, and falls through when a0(=[a0+16]:8) != 0.
  The `beq` branch at 0x1320 targets 0x132c, is taken when a0(=[a0+16]:8) == 0, and falls through when a0(=[a0+16]:8) != 0.
  The `beq` branch at 0x132c targets 0x1350, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x133c targets 0x1388, is taken when v1(?) == a0(=[a1+8]:8), and falls through when v1(?) != a0(=[a1+8]:8).
  The `bne` branch at 0x1348 targets 0x1338, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1354 targets 0x1374, is taken when a0(=[a0+24]:8) == 0, and falls through when a0(=[a0+24]:8) != 0.
  The `beq` branch at 0x1360 targets 0x1374, is taken when a0(=[a0+16]:8) == 0, and falls through when a0(=[a0+16]:8) != 0.
  The `beq` branch at 0x139c targets 0x1354 and is always taken.
  The `beq` branch at 0x13a4 targets 0x1304 and is always taken.
  The return at 0x1380 has v0 = 0x0.

- `gfxcleanup` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x13ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x13ac-0x13e0 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x13ac loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `jal` at 0x13c8 calls spinlock_destroy with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x13d0 calls kern_free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x13b8 targets 0x13c8, is taken when at(=[a0+56]) == 0, and falls through when at(=[a0+56]) != 0.
  The `beq` branch at 0x13d8 targets 0x13c0 and is always taken.
  The return at 0x13c0 has v0 = one of ?, ret(kern_free).

- `GfxOpen` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x13e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x13e0-0x154c (364 bytes).
  It occupies 364 bytes.
  The `ld` at 0x142c loads 8 bytes from ret(gthread_find_gfxp) +0x18.
  11 such `ld` accesses load 8 bytes from ?, including `ld` at 0x143c, `ld` at 0x1448, `ld` at 0x1460.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1490, `lw` at 0x14a8, `lw` at 0x1510.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x14dc, `sd` at 0x14ec, `sd` at 0x14f8.
  The `sd` at 0x1508 stores 8 bytes to a0 (arg0 at entry) +0xb8.
  The `sd` at 0x150c stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `sw` at 0x151c stores 4 bytes to ?.
  The `lw` at 0x1524 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `sw` at 0x1548 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x140c calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x13.
  The `jal` at 0x1418 calls gthread_find_gfxp with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x1464 calls curthreadhandle with a0=0x9, a1=?, a2=?, a3=?, a5=0x13.
  The `jal` at 0x146c calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x147c calls gthread_scan with a0=sym(GfxKiller), a1=sp-64, a2=?, a3=?.
  The `jal` at 0x1484 calls streams_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x149c calls delay with a0=0x64, a1=?, a2=?, a3=?.
  The `jal` at 0x14b4 calls streams_lock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x14e8 calls RRM_init_panes with a0=?, a1=?, a2=?, a3=?, a5=0x1.
  The `jal` at 0x1520 calls getemajor with a0=[a1], a1=?, a2=a0 at entry (arg0), a3=a0+144.
  The `jal` at 0x1530 calls makedevice with a0=ret(getemajor), a1=?, a2=?, a3=?.
  The `beq` branch at 0x13f4 targets 0x140c, is taken when a3 == at(=0x2), and falls through when a3 != at(=0x2).
  The `beq` branch at 0x1424 targets 0x14d4, is taken when v0(=ret(gthread_find_gfxp)) == 0, and falls through when v0(=ret(gthread_find_gfxp)) != 0.
  The `beq` branch at 0x1430 targets 0x1448, is taken when v0(=[ret(gthread_find_gfxp)+24]:8) == 0, and falls through when v0(=[ret(gthread_find_gfxp)+24]:8) != 0.
  The `bne` branch at 0x1440 targets 0x1438, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x144c targets 0x145c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x1454 targets 0x13fc and is always taken.
  The `beq` branch at 0x1494 targets 0x14b4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x14ac targets 0x149c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x14c4 targets 0x14dc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x14cc targets 0x13fc and is always taken.
  The `beq` branch at 0x14d4 targets 0x13fc and is always taken.
  The `beq` branch at 0x1544 targets 0x13fc and is always taken.
  The return at 0x1404 has v0 = one of 0x0, 0x1, 0x13.

- `GfxUnmanage` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x154c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x154c-0x16d0 (388 bytes).
  It occupies 388 bytes.
  11 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x154c, `ld` at 0x1578, `ld` at 0x1598.
  3 such `ld` accesses load 8 bytes from [a0+40]:8 +0x48, including `ld` at 0x1550, `ld` at 0x15cc, `ld` at 0x167c.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x1568, `ld` at 0x1580, `ld` at 0x1588.
  The `sd` at 0x1574 stores 8 bytes to [a0+8]:8 +0x8.
  The `sd` at 0x157c stores 8 bytes to [a0+40]:8 +0x0.
  The `sd` at 0x1584 stores 8 bytes to [a0+8]:8 +0x20.
  The `sd` at 0x158c stores 8 bytes to [a0+8]:8 +0x28.
  The `lw` at 0x15c0 loads 4 bytes from [a0+8]:8 +0x18.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x15e0, `ld` at 0x16b0.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0xc0, including `ld` at 0x15e4, `ld` at 0x16b4.
  3 such `sd` accesses store 8 bytes to [a0+40]:8 +0x48, including `sd` at 0x15fc, `sd` at 0x1634, `sd` at 0x1688.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x68, including `lw` at 0x163c, `lw` at 0x1654.
  The `jal` at 0x159c calls curthreadhandle with a0=?, a1=?, a2=[a0+40]:8, a3=0x9.
  The `jal` at 0x15a4 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x15b4 calls gthread_scan with a0=sym(GfxKiller), a1=sp-64, a2=?, a3=?.
  The `jal` at 0x15d8 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x15f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[[a0+32]:8+192]:8.
  The `jal` at 0x1604 calls vsema with a0=[a0+40]:8+56, a1=[a0+40]:8, a2=?, a3=?.
  The `jal` at 0x160c calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1628 calls psema with a0=[a0+40]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1648 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x1670 calls cn_init with a0=0x0, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1690 calls vsema with a0=[a0+40]:8+56, a1=?, a2=?, a3=?, a5=[[a0+40]:8+72]:8.
  The `jal` at 0x1698 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x16a8 calls splhi with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x16c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[[a0+32]:8+192]:8.
  The `bne` branch at 0x1560 targets 0x1624, is taken when at(=[[a0+40]:8+72]:8) != a0, and falls through when at(=[[a0+40]:8+72]:8) == a0.
  The `beq` branch at 0x156c targets 0x1594, is taken when v0(=[a0+8]:8) == 0, and falls through when v0(=[a0+8]:8) != 0.
  The `beq` branch at 0x15c8 targets 0x1668, is taken when v1(=[[a0+8]:8+24]) == 0, and falls through when v1(=[[a0+8]:8+24]) != 0.
  The `bne` branch at 0x15d0 targets 0x1618, is taken when v0(=[[a0+40]:8+72]:8) != s0(=a0), and falls through when v0(=[[a0+40]:8+72]:8) == s0(=a0).
  The `beq` branch at 0x15e8 targets 0x15f8, is taken when a3(=[[a0+32]:8+192]:8) == 0, and falls through when a3(=[[a0+32]:8+192]:8) != 0.
  The `beq` branch at 0x1640 targets 0x1568, is taken when a2(=[[a0+40]:8+104]) == 0, and falls through when a2(=[[a0+40]:8+104]) != 0.
  The `bne` branch at 0x1658 targets 0x1648, is taken when a4(=[[a0+40]:8+104]) != 0, and falls through when a4(=[[a0+40]:8+104]) == 0.
  The `beq` branch at 0x1660 targets 0x156c and is always taken.
  The `beq` branch at 0x1668 targets 0x16a8, is taken when v0(=[[a0+40]:8+72]:8) == s0(=a0), and falls through when v0(=[[a0+40]:8+72]:8) != s0(=a0).
  The `bne` branch at 0x1680 targets 0x1618, is taken when a5(=[[a0+40]:8+72]:8) != s0(=a0), and falls through when a5(=[[a0+40]:8+72]:8) == s0(=a0).
  The `beq` branch at 0x16a0 targets 0x1618 and is always taken.
  The `beq` branch at 0x16b8 targets 0x166c, is taken when a3(=[[a0+32]:8+192]:8) == 0, and falls through when a3(=[[a0+32]:8+192]:8) != 0.
  The `beq` branch at 0x16c8 targets 0x1670 and is always taken.
  The return at 0x161c has v0 = one of [[a0+40]:8+72]:8, ret(splx), [a0+40]:8.

- `GfxClose` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x16d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x16d0-0x173c (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x16d8 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x16dc loads 8 bytes from [a0+40]:8 +0x28.
  The `ld` at 0x16e8 loads 8 bytes from [a0+40]:8 +0x8.
  The `ld` at 0x16f4 loads 8 bytes from [[a0+40]:8+8]:8 +0x8.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x38, including `lw` at 0x1700, `lw` at 0x1738.
  The `sw` at 0x170c stores 4 bytes to [a0+40]:8 +0x38.
  The `jal` at 0x1710 calls gfxcleanup with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x172c calls GfxUnmanage with a0=[a0+40]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x16e0 targets 0x1700, is taken when at(=[[a0+40]:8+40]:8) != 0, and falls through when at(=[[a0+40]:8+40]:8) == 0.
  The `beq` branch at 0x16ec targets 0x1700, is taken when a0(=[[a0+40]:8+8]:8) == 0, and falls through when a0(=[[a0+40]:8+8]:8) != 0.
  The `beq` branch at 0x16f8 targets 0x172c, is taken when v0(=[[[a0+40]:8+8]:8+8]:8) == s0(=[a0+40]:8), and falls through when v0(=[[[a0+40]:8+8]:8+8]:8) != s0(=[a0+40]:8).
  The `beq` branch at 0x1734 targets 0x1704 and is always taken.
  The return at 0x1724 has v0 = 0x0.

- `GfxProto` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x173c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x173c-0x1840 (260 bytes).
  It occupies 260 bytes.
  The `ld` at 0x173c loads 8 bytes from a1 (arg1 at entry) +0x18.
  The `ld` at 0x1740 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x174c loads 4 bytes from [a1+24]:8 +0x0.
  2 such `ld` accesses load 8 bytes from [a0+40]:8 +0x8, including `ld` at 0x1784, `ld` at 0x1790.
  The `lh` at 0x1788 loads 2 bytes from [a1+24]:8 +0x4.
  The `sh` at 0x178c stores 2 bytes to [[a0+40]:8+8]:8 +0x30.
  The `lh` at 0x1794 loads 2 bytes from [a1+24]:8 +0x6.
  The `sh` at 0x17a4 stores 2 bytes to [[a0+40]:8+8]:8 +0x32.
  The `sw` at 0x17a8 stores 4 bytes to [a1+24]:8 +0x0.
  The `ld` at 0x17bc loads 8 bytes from [a0+40]:8 +0x20.
  The `ld` at 0x17c8 loads 8 bytes from [[a0+40]:8+32]:8 +0x30.
  The `lw` at 0x17cc loads 4 bytes from [a1+24]:8 +0x8.
  The `lw` at 0x17d0 loads 4 bytes from [a1+24]:8 +0x4.
  The `ld` at 0x17d8 loads 8 bytes from [a0+40]:8 +0x28.
  The `ld` at 0x17e4 loads 8 bytes from a1 (arg1 at entry) +0x28.
  The `sb` at 0x17f8 stores 1 byte to [a1+40]:8 +0x1e.
  The `jal` at 0x17ac calls qreply with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[a0+40]:8+8]:8, a3=a3 at entry (arg3), a5=[a1+24]:8, a6=0x53484951, a7=0x53484d51.
  The `jalr` at 0x17d4 calls (unknown callee) with a0=[[a0+40]:8+40]:8, a1=[[a1+24]:8+4], a2=[[a1+24]:8+8], a3=[[[a0+40]:8+32]:8+48]:8, a5=[a1+24]:8, a6=[[a0+40]:8+32]:8, a7=0x53484d51.
  The `jal` at 0x17f4 calls qreply with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=0x8a, a5=[a1+40]:8.
  The `jal` at 0x1814 calls freemsg with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1828 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[[a1+24]:8], a3=a3 at entry (arg3), a5=[a1+24]:8, a6=0x53484951, a7=0x53484d51.
  The `jal` at 0x1830 calls freemsg with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x176c targets 0x17bc, is taken when a2(=[[a1+24]:8]) == at(=0x66), and falls through when a2(=[[a1+24]:8]) != at(=0x66).
  The `beq` branch at 0x1774 targets 0x17bc, is taken when a2(=[[a1+24]:8]) == a6(=0x53484951), and falls through when a2(=[[a1+24]:8]) != a6(=0x53484951).
  The `bne` branch at 0x177c targets 0x1824, is taken when a2(=[[a1+24]:8]) != a7(=0x53484d51), and falls through when a2(=[[a1+24]:8]) == a7(=0x53484d51).
  The `beq` branch at 0x17b4 targets 0x1800 and is always taken.
  The `beq` branch at 0x17c0 targets 0x1814, is taken when a6(=[[a0+40]:8+32]:8) == 0, and falls through when a6(=[[a0+40]:8+32]:8) != 0.
  The `beq` branch at 0x17dc targets 0x1814, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x181c targets 0x1800 and is always taken.
  The `beq` branch at 0x1838 targets 0x1800 and is always taken.
  The return at 0x180c has v0 = 0x0.

- `GfxWput` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1840 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x1840-0x18dc (156 bytes).
  It occupies 156 bytes.
  The `ld` at 0x1840 loads 8 bytes from a1 (arg1 at entry) +0x28.
  The `lbu` at 0x1844 loads 1 byte from [a1+40]:8 +0x1e.
  The `ld` at 0x1878 loads 8 bytes from a1 (arg1 at entry) +0x18.
  The `lbu` at 0x187c loads 1 byte from [a1+24]:8 +0x0.
  The `jal` at 0x188c calls flushq with a0=a0 at entry (arg0), a1=0x0, a2=[[a1+40]:8+30]:1, a3=?, a5=0x86.
  The `jal` at 0x1894 calls freemsg with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x18b4 calls GfxProto with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[a1+40]:8+30]:1, a3=a3 at entry (arg3), a5=0x86.
  The `jal` at 0x18cc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[[a1+40]:8+30]:1, a3=a3 at entry (arg3), a5=0x86.
  The `beq` branch at 0x1860 targets 0x18b4, is taken when a2(=[[a1+40]:8+30]:1) == at(=0x1), and falls through when a2(=[[a1+40]:8+30]:1) != at(=0x1).
  The `beq` branch at 0x1868 targets 0x18b4, is taken when a2(=[[a1+40]:8+30]:1) == v0(=0x83), and falls through when a2(=[[a1+40]:8+30]:1) != v0(=0x83).
  The `bne` branch at 0x1870 targets 0x18c4, is taken when a2(=[[a1+40]:8+30]:1) != a5(=0x86), and falls through when a2(=[[a1+40]:8+30]:1) == a5(=0x86).
  The `beq` branch at 0x1884 targets 0x1894, is taken when (a3(=[[a1+24]:8]:1) & 0x2) == 0, and falls through when (a3(=[[a1+24]:8]:1) & 0x2) != 0.
  The `beq` branch at 0x18bc targets 0x18a0 and is always taken.
  The `beq` branch at 0x18d4 targets 0x1894 and is always taken.
  The return at 0x18ac has v0 = one of 0x0, ret(GfxProto).

- `sendMsg` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x18dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x18dc-0x19dc (256 bytes).
  It occupies 256 bytes.
  5 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x18e0, `ld` at 0x1948, `ld` at 0x1978.
  The `ld` at 0x18e8 loads 8 bytes from [a1]:8 +0x8.
  The `lw` at 0x1904 loads 4 bytes from [[a1]:8+8]:8 +0x38.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x1914, `lw` at 0x1930, `lw` at 0x1954.
  The `ld` at 0x191c loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `sd` at 0x192c stores 8 bytes to a0 (arg0 at entry) +0x20.
  2 such `lh` accesses load 2 bytes from [a1]:8 +0x32, including `lh` at 0x194c, `lh` at 0x1990.
  The `sh` at 0x1950 stores 2 bytes to [a0+32]:8 +0x2.
  The `sb` at 0x1958 stores 1 byte to [a0+32]:8 +0x5.
  The `lh` at 0x1984 loads 2 bytes from [a1]:8 +0x30.
  The `sh` at 0x1988 stores 2 bytes to ?.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x1994, `sb` at 0x19a4.
  The `lbu` at 0x1998 loads 1 byte from a1 (arg1 at entry) +0x8.
  The `lw` at 0x19a8 loads 4 bytes from ?.
  The `sw` at 0x19b0 stores 4 bytes to ?.
  The `ld` at 0x19c0 loads 8 bytes from [a1]:8 +0x20.
  The `jal` at 0x1940 calls bzero with a0=[a0+32]:8, a1=?, a2=[a1+12], a3=?, a4=[a1+12].
  The `jal` at 0x19bc calls putq with a0=[[a1]:8+32]:8, a1=a0 at entry (arg0), a2=?, a3=?, a4=-0x1, a5=[[a1]:8+50]:2.
  The `beq` branch at 0x18fc targets 0x19c4, is taken when a3(=[[a1]:8+8]:8) == 0, and falls through when a3(=[[a1]:8+8]:8) != 0.
  The `beq` branch at 0x190c targets 0x19c8, is taken when (a4(=[[[a1]:8+8]:8+56]) & 0x1) == 0, and falls through when (a4(=[[[a1]:8+8]:8+56]) & 0x1) != 0.
  The `beq` branch at 0x1968 targets 0x19b4, is taken when a3(=[a1+12]-1) == a4(=-0x1), and falls through when a3(=[a1+12]-1) != a4(=-0x1).
  The `bne` branch at 0x19ac targets 0x1970, is taken when a3(?) != a4(=-0x1), and falls through when a3(?) == a4(=-0x1).
  The return at 0x19d4 has v0 = ?.

- `GfxDelayedMessage` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x19dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x19dc-0x1a7c (160 bytes).
  It occupies 160 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x19dc, `lw` at 0x1a0c.
  The `jal` at 0x19fc calls allocb with a0=?, a1=0x3, a2=[a0+12], a3=a3 at entry (arg3).
  The `jal` at 0x1a24 calls bufcall with a0=?, a1=0x3, a2=sym(GfxDelayedMessage), a3=a0 at entry (arg0).
  The `jal` at 0x1a3c calls sendMsg with a0=ret(allocb), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1a44 calls wakeup with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1a4c calls kern_free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1a6c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x1a04 targets 0x1a3c, is taken when v0(=ret(allocb)) != 0, and falls through when v0(=ret(allocb)) == 0.
  The `beq` branch at 0x1a2c targets 0x1a68, is taken when v0(=ret(bufcall)) == 0, and falls through when v0(=ret(bufcall)) != 0.
  The `beq` branch at 0x1a34 targets 0x1a58 and is always taken.
  The `beq` branch at 0x1a74 targets 0x1a44 and is always taken.
  The return at 0x1a60 has v0 = one of 0x0, 0x1.

- `GfxSendMessage` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1a7c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x1a7c-0x1bd8 (348 bytes).
  It occupies 348 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x1aa8, `lw` at 0x1ad0, `lw` at 0x1afc.
  The `jal` at 0x1ab8 calls allocb with a0=?, a1=0x3, a2=?, a3=?.
  The `jal` at 0x1adc calls kern_malloc with a0=([a0+12] << 0x2)+52, a1=?, a2=?, a3=?.
  The `jal` at 0x1af4 calls bcopy with a0=a0 at entry (arg0), a1=ret(kern_malloc), a2=([a0+12] << 0x2)+52, a3=?.
  The `jal` at 0x1b14 calls bufcall with a0=?, a1=0x3, a2=sym(GfxDelayedMessage), a3=ret(kern_malloc).
  The `jal` at 0x1b38 calls sleep with a0=?, a1=0x19, a2=?, a3=?.
  The `jal` at 0x1b5c calls sendMsg with a0=ret(allocb), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1b84 calls streams_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b94 calls streams_lock with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1bac calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1bc0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1bc8 calls kern_free with a0=ret(kern_malloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1a98 targets 0x1b74, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1aa0 targets 0x1b94, is taken when a1 == 0, and falls through when a1 != 0.
  The `bne` branch at 0x1ac0 targets 0x1b5c, is taken when v0(=ret(allocb)) != 0, and falls through when v0(=ret(allocb)) == 0.
  The `bne` branch at 0x1ac8 targets 0x1ba4, is taken when s1(=a1) != 0, and falls through when s1(=a1) == 0.
  The `beq` branch at 0x1ae4 targets 0x1ba4, is taken when v0(=ret(kern_malloc)) == 0, and falls through when v0(=ret(kern_malloc)) != 0.
  The `beq` branch at 0x1b1c targets 0x1bbc, is taken when v0(=ret(bufcall)) == 0, and falls through when v0(=ret(bufcall)) != 0.
  The `beq` branch at 0x1b28 targets 0x1b84, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `beq` branch at 0x1b30 targets 0x1b40, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x1b64 targets 0x1b7c, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `beq` branch at 0x1b6c targets 0x1b44 and is always taken.
  The `beq` branch at 0x1b74 targets 0x1b48 and is always taken.
  The `beq` branch at 0x1b8c targets 0x1b30 and is always taken.
  The `beq` branch at 0x1b9c targets 0x1aac and is always taken.
  The `beq` branch at 0x1bb4 targets 0x1b28 and is always taken.
  The `beq` branch at 0x1bd0 targets 0x1b28 and is always taken.
  The return at 0x1b54 has v0 = one of 0x0, 0x1.

- `GfxMessage` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1bd8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x1bd8-0x1bf4 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x1be0 calls GfxSendMessage with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1bec has v0 = ret(GfxSendMessage).

- `GfxIntrMessage` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1bf4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x1bf4-0x1c10 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x1bfc calls GfxSendMessage with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1c08 has v0 = ret(GfxSendMessage).

- `GfxRqService` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1c10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x1c10-0x1c8c (124 bytes).
  It occupies 124 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x18, including `ld` at 0x1c34, `ld` at 0x1c40.
  The `ld` at 0x1c44 loads 8 bytes from [a0+24]:8 +0x0.
  The `ld` at 0x1c48 loads 8 bytes from [[a0+24]:8]:8 +0x0.
  The `jal` at 0x1c20 calls getq with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1c30 calls canput with a0=[a0+24]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x1c4c calls (unknown callee) with a0=[a0+24]:8, a1=ret(getq), a2=?, a3=?.
  The `jal` at 0x1c54 calls getq with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1c7c calls putbq with a0=a0 at entry (arg0), a1=ret(getq), a2=?, a3=?.
  The `beq` branch at 0x1c28 targets 0x1c64, is taken when v0(=ret(getq)) == 0, and falls through when v0(=ret(getq)) != 0.
  The `beq` branch at 0x1c38 targets 0x1c7c, is taken when v0(=ret(canput)) == 0, and falls through when v0(=ret(canput)) != 0.
  The `bne` branch at 0x1c5c targets 0x1c30, is taken when v0(=ret(getq)) != 0, and falls through when v0(=ret(getq)) == 0.
  The `beq` branch at 0x1c84 targets 0x1c68 and is always taken.
  The return at 0x1c74 has v0 = one of 0x0, 0x1.

- `GfxDetach` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1c8c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x1c8c-0x1d80 (244 bytes).
  It occupies 244 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x1c8c, `ld` at 0x1d48.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x30, including `ld` at 0x1ca4, `ld` at 0x1cc8, `ld` at 0x1d74.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x1cdc, `ld` at 0x1cf4, `ld` at 0x1d18.
  The `ld` at 0x1ce0 loads 8 bytes from [a0+8]:8 +0x8.
  The `ld` at 0x1cf8 loads 8 bytes from [a0+8]:8 +0x10.
  The `ld` at 0x1d04 loads 8 bytes from [a0+8]:8 +0x0.
  The `sw` at 0x1d08 stores 4 bytes to [[a0+8]:8]:8 +0x1c.
  The `sw` at 0x1d0c stores 4 bytes to [[a0+8]:8]:8 +0x18.
  The `sw` at 0x1d10 stores 4 bytes to [[a0+8]:8]:8 +0x14.
  The `sw` at 0x1d14 stores 4 bytes to [[a0+8]:8]:8 +0x10.
  The `sd` at 0x1d1c stores 8 bytes to [a0+8]:8 +0x10.
  The `sd` at 0x1d28 stores 8 bytes to a0 (arg0 at entry) +0x20.
  The `sd` at 0x1d2c stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sd` at 0x1d34 stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `ld` at 0x1d4c loads 8 bytes from [a0+32]:8 +0x10.
  The `sd` at 0x1d7c stores 8 bytes to a0 (arg0 at entry) +0x30.
  The `jal` at 0x1cb0 calls gfxdd_lookup with a0=[a0+48]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1cc0 calls RRM_Exit with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1cd4 calls streams_lock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1cec calls streams_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d20 calls streams_lock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d30 calls streams_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1d50 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[[a0+32]:8+16]:8.
  The `jal` at 0x1d60 calls GfxUnmanage with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1d70 calls ddv_destroy_handle with a0=[a0+48]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1c9c targets 0x1d20, is taken when at(=[a0+32]:8) == 0, and falls through when at(=[a0+32]:8) != 0.
  The `beq` branch at 0x1ca8 targets 0x1cc0, is taken when a0(=[a0+48]:8) == 0, and falls through when a0(=[a0+48]:8) != 0.
  The `beq` branch at 0x1cb8 targets 0x1d70, is taken when v0(=ret(gfxdd_lookup)) == 0, and falls through when v0(=ret(gfxdd_lookup)) != 0.
  The `bne` branch at 0x1ccc targets 0x1d48, is taken when v0(=[a0+48]:8) != 0, and falls through when v0(=[a0+48]:8) == 0.
  The `beq` branch at 0x1ce4 targets 0x1d60, is taken when v1(=[[a0+8]:8+8]:8) == s0(=a0), and falls through when v1(=[[a0+8]:8+8]:8) != s0(=a0).
  The `bne` branch at 0x1cfc targets 0x1d20, is taken when a1(=[[a0+8]:8+16]:8) != s0(=a0), and falls through when a1(=[[a0+8]:8+16]:8) == s0(=a0).
  The `beq` branch at 0x1d58 targets 0x1cd4 and is always taken.
  The `beq` branch at 0x1d68 targets 0x1cec and is always taken.
  The `beq` branch at 0x1d78 targets 0x1cc0 and is always taken.
  The return at 0x1d40 has v0 = ret(streams_unlock).

- `gfxinit` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1d80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x1d80-0x1e44 (196 bytes).
  It occupies 196 bytes.
  The `jal` at 0x1da8 calls init_sema with a0=sym(GfxBoardInitSema), a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x1dc4 calls init_sema with a0=sym(GfxBoardInitSema), a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x1dcc calls processors_configured with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1dd4 calls init_gfx_group_table with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ddc calls init_gthread_table with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1de8 calls kern_calloc with a0=ret(processors_configured), a1=0x20, a2=?, a3=?.
  The `jal` at 0x1e08 calls ksym_add with a0=sym(.rodata), a1=ret(kern_calloc), a2=0x20, a3=ret(processors_configured), a4=0x20.
  The `jal` at 0x1e30 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[sym(GfxDevLimit)], a3=0x20000, a4=0x20000.
  The `bne` branch at 0x1d90 targets 0x1e20, is taken when at(=0x20000) < a2(=[sym(GfxDevLimit)]) (signed), and falls through when at(=0x20000) >= a2(=[sym(GfxDevLimit)]) (signed).
  The `beq` branch at 0x1e3c targets 0x1d98 and is always taken.
  The return at 0x1e18 has v0 = ret(ksym_add).

- `gfx_conflict_scan` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1e44 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x1e44-0x1f28 (228 bytes).
  It occupies 228 bytes.
  The `ld` at 0x1e7c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x1e88 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x1e8c loads 8 bytes from [a0+24]:8 +0x0.
  The `ld` at 0x1ea0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1ea4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1eb0 loads 8 bytes from [a0+16]:8 +0x18.
  The `lw` at 0x1ecc loads 4 bytes from ?.
  The `ld` at 0x1f08 loads 8 bytes from ?.
  The `sw` at 0x1f24 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x1ec4 calls psema with a0=?, a1=0x19, a2=?, a3=?, a5=one of 0x1, 0x2.
  The `jal` at 0x1ef0 calls vsema with a0=?, a1=?, a2=one of 0x1, 0x2, a3=?, a4=0x1.
  The `beq` branch at 0x1e5c targets 0x1e7c, is taken when a2 == a5(=0x1), and falls through when a2 != a5(=0x1).
  The `beq` branch at 0x1e80 targets 0x1e98, is taken when v0(=[a0+24]:8) == 0, and falls through when v0(=[a0+24]:8) != 0.
  The `beq` branch at 0x1e90 targets 0x1ea0, is taken when at(=[[a0+24]:8]:8) == v1(=[a1+8]:8), and falls through when at(=[[a0+24]:8]:8) != v1(=[a1+8]:8).
  The `beq` branch at 0x1e98 targets 0x1e68 and is always taken.
  The `beq` branch at 0x1ea8 targets 0x1eb4, is taken when v0(=[a0+16]:8) == 0, and falls through when v0(=[a0+16]:8) != 0.
  The `beq` branch at 0x1eb4 targets 0x1f14, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1f00 targets 0x1f1c, is taken when a5(=one of 0x1, 0x2) != a6(=[a1]), and falls through when a5(=one of 0x1, 0x2) == a6(=[a1]).
  The `bne` branch at 0x1f0c targets 0x1ec0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1f14 targets 0x1e68 and is always taken.
  The `beq` branch at 0x1f20 targets 0x1e68 and is always taken.
  The return at 0x1e74 has v0 = one of 0x0, 0x1.

- `irisgl_sproc_setup_scan` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1f28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x1f28-0x1fb8 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0x1f2c loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x1f78 loads 4 bytes from ret(gthread_create) +0x8.
  The `sw` at 0x1f80 stores 4 bytes to ret(gthread_create) +0x8.
  3 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x10, including `ld` at 0x1f88, `ld` at 0x1f98, `ld` at 0x1f9c.
  The `jal` at 0x1f60 calls gthread_create with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1f84 calls GfxListWriterLock with a0=[a1+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1f94 calls gthread_attach_list with a0=ret(gthread_create), a1=[a1+16]:8, a2=?, a3=?.
  The `jal` at 0x1fa0 calls GfxListWriterUnlock with a0=[a1+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=?.
  The `jal` at 0x1fa8 calls setgfxsched_thread with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x1f44 targets 0x1f60, is taken when at(=[a1]:8) != a0, and falls through when at(=[a1]:8) == a0.
  The `bne` branch at 0x1f68 targets 0x1f78, is taken when v0(=ret(gthread_create)) != 0, and falls through when v0(=ret(gthread_create)) == 0.
  The `beq` branch at 0x1f70 targets 0x1f4c and is always taken.
  The `beq` branch at 0x1fb0 targets 0x1f4c and is always taken.
  The return at 0x1f58 has v0 = 0x0.

- `gfxopen` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1fb8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x1fb8-0x2468 (1200 bytes).
  It occupies 1200 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x1fec, `lw` at 0x22b0, `lw` at 0x23bc.
  17 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2030, `ld` at 0x2050, `ld` at 0x211c.
  The `lw` at 0x2094 loads 4 bytes from ret(gthread_find) +0x8.
  The `ld` at 0x20a4 loads 8 bytes from ret(gthread_find) +0x10.
  The `sd` at 0x20b0 stores 8 bytes to [ret(gthread_find)+16]:8 +0x18.
  The `ld` at 0x20c8 loads 8 bytes from ret(gthread_find) +0x0.
  The `lw` at 0x2100 loads 4 bytes from ?.
  6 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2178, `sd` at 0x21e0, `sd` at 0x2204.
  The `sd` at 0x2180 stores 8 bytes to ret(kern_malloc) +0x10.
  The `sd` at 0x2188 stores 8 bytes to ret(kern_malloc) +0x20.
  The `sd` at 0x2198 stores 8 bytes to ret(kern_malloc) +0x28.
  The `sd` at 0x219c stores 8 bytes to ret(kern_malloc) +0x60.
  The `lh` at 0x21e4 loads 2 bytes from abs 0xffffffffffffc428.
  4 such `lw` accesses load 4 bytes from ret(kern_malloc) +0x4, including `lw` at 0x2210, `lw` at 0x224c, `lw` at 0x2280.
  The `ld` at 0x225c loads 8 bytes from ret(gthread_find_gfxp) +0x18.
  The `lw` at 0x229c loads 4 bytes from ret(kern_malloc) +0x38.
  The `sw` at 0x22a8 stores 4 bytes to ret(kern_malloc) +0x38.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0x22c0, `sw` at 0x23d0.
  The `sw` at 0x23b4 stores 4 bytes to ret(kern_malloc) +0x4.
  The `sw` at 0x23f0 stores 4 bytes to ret(gfx_group_find) +0xc.
  The `jal` at 0x1fcc calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1fe0 calls psema with a0=sym(GfxBoardInitSema), a1=0x19, a2=?, a3=?.
  The `jal` at 0x2084 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?, a4=[sym(GfxDevLimit)].
  The `jal` at 0x20b4 calls gthread_detach_list with a0=ret(gthread_find), a1=?, a2=?, a3=?.
  The `jal` at 0x20bc calls gthread_detach_group with a0=ret(gthread_find), a1=?, a2=?, a3=?.
  The `jal` at 0x20c4 calls gthread_destroy with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x20cc calls gthread_create with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x20dc calls gfx_group_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x20e8 calls gthread_find_gfxp with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2148 calls kern_malloc with a0=0x100, a1=?, a2=?, a3=?.
  The `jal` at 0x2158 calls kern_malloc with a0=0x100, a1=?, a2=?, a3=?.
  The `jal` at 0x2174 calls bzero with a0=ret(kern_malloc), a1=0x100, a2=?, a3=?.
  The `jal` at 0x21a0 calls init_spinlock with a0=ret(kern_malloc), a1=sym(.rodata), a2=-0x1, a3=?.
  The `jal` at 0x21bc calls init_sema with a0=ret(kern_malloc)+80, a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x2224 calls gthread_attach_list with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2234 calls setgfxsched_thread with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2294 calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x22f4 calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x2308 calls cmn_err_tag with a0=0x84e, a1=0x4, a2=sym(.rodata), a3=?.
  The `jal` at 0x2318 calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x2338 calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x2368 calls gthread_scan with a0=sym(gfx_conflict_scan), a1=sp-144, a2=?, a3=?, a4=one of 0x1, 0x2, a5=0x1.
  The `jal` at 0x2380 calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?, a6=0x3.
  The `jal` at 0x2394 calls cmn_err_tag with a0=0x84f, a1=0x4, a2=sym(.rodata), a3=?.
  The `jal` at 0x23d4 calls gthread_attach_list with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x23dc calls GfxListWriterLock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x23f8 calls GfxListWriterUnlock with a0=?, a1=ret(GfxListWriterLock), a2=?, a3=?, a7=0x1.
  The `jal` at 0x2418 calls curthreadgroup_scan with a0=sym(irisgl_sproc_setup_scan), a1=sp-128, a2=?, a3=?.
  The `jal` at 0x2428 calls GfxListWriterUnlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2438 calls GfxListWriterLock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2448 calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?, a4=[sym(GfxDevLimit)].
  The `jal` at 0x2458 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x2010 targets 0x2338, is taken when v0(?) >= 0x2 (signed), and falls through when v0(?) < 0x2 (signed).
  The `blez` branch at 0x201c targets 0x2448, is taken when a4(=[sym(GfxDevLimit)]) <= 0 (signed), and falls through when a4(=[sym(GfxDevLimit)]) > 0 (signed).
  The `beq` branch at 0x2034 targets 0x2074, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2048 targets 0x2070, is taken when s0(?) >= a4(=[sym(GfxDevLimit)]) (signed), and falls through when s0(?) < a4(=[sym(GfxDevLimit)]) (signed).
  The `beq` branch at 0x2054 targets 0x2074, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2068 targets 0x2030, is taken when s0(?) < a4(=[sym(GfxDevLimit)]) (signed), and falls through when s0(?) >= a4(=[sym(GfxDevLimit)]) (signed).
  The `beq` branch at 0x2074 targets 0x2448, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x208c targets 0x20cc, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x209c targets 0x2328, is taken when (t8(=[ret(gthread_find)+8]) & 0x4) == 0, and falls through when (t8(=[ret(gthread_find)+8]) & 0x4) != 0.
  The `beq` branch at 0x20a8 targets 0x20b4, is taken when v0(=[ret(gthread_find)+16]:8) == 0, and falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x20d4 targets 0x2318, is taken when v0(=ret(gthread_create)) == 0, and falls through when v0(=ret(gthread_create)) != 0.
  The `beq` branch at 0x20f4 targets 0x2128, is taken when v0(=ret(gthread_find_gfxp)) == 0, and falls through when v0(=ret(gthread_find_gfxp)) != 0.
  The `bne` branch at 0x2114 targets 0x22f4, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bne` branch at 0x2120 targets 0x2100, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x2128 targets 0x23a4, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x2138 targets 0x2348, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `bne` branch at 0x2140 targets 0x2158, is taken when s8(=ret(gthread_find_gfxp)) != 0, and falls through when s8(=ret(gthread_find_gfxp)) == 0.
  The `beq` branch at 0x2150 targets 0x2164 and is always taken.
  The `bne` branch at 0x21a8 targets 0x23ac, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `bne` branch at 0x21dc targets 0x21cc, is taken when a3(?) < 0x8 (signed), and falls through when a3(?) >= 0x8 (signed).
  The `bne` branch at 0x2200 targets 0x2244, is taken when s8(=ret(gthread_find_gfxp)) != 0, and falls through when s8(=ret(gthread_find_gfxp)) == 0.
  The `beq` branch at 0x2208 targets 0x2224, is taken when s7(=ret(gfx_group_find)) == 0, and falls through when s7(=ret(gfx_group_find)) != 0.
  The `beq` branch at 0x2218 targets 0x23d4, is taken when (a7(=[ret(kern_malloc)+4]) & 0x8) == 0, and falls through when (a7(=[ret(kern_malloc)+4]) & 0x8) != 0.
  The `beq` branch at 0x223c targets 0x2294 and is always taken.
  The `beq` branch at 0x2244 targets 0x225c, is taken when s7(=ret(gfx_group_find)) == 0, and falls through when s7(=ret(gfx_group_find)) != 0.
  The `beq` branch at 0x2254 targets 0x2438, is taken when (t1(=[ret(kern_malloc)+4]) & 0x8) == 0, and falls through when (t1(=[ret(kern_malloc)+4]) & 0x8) != 0.
  The `beq` branch at 0x2260 targets 0x2278, is taken when a3(=[ret(gthread_find_gfxp)+24]:8) == 0, and falls through when a3(=[ret(gthread_find_gfxp)+24]:8) != 0.
  The `bne` branch at 0x2270 targets 0x2268, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x2278 targets 0x2290, is taken when s7(=ret(gfx_group_find)) == 0, and falls through when s7(=ret(gfx_group_find)) != 0.
  The `beq` branch at 0x2288 targets 0x2428, is taken when (t2(=[ret(kern_malloc)+4]) & 0x8) == 0, and falls through when (t2(=[ret(kern_malloc)+4]) & 0x8) != 0.
  The `beq` branch at 0x2310 targets 0x22c4 and is always taken.
  The `beq` branch at 0x2320 targets 0x22c4 and is always taken.
  The `bne` branch at 0x2328 targets 0x20dc, is taken when v0(=ret(gthread_find)) != 0, and falls through when v0(=ret(gthread_find)) == 0.
  The `beq` branch at 0x2330 targets 0x20cc and is always taken.
  The `beq` branch at 0x2340 targets 0x22c4 and is always taken.
  The `bne` branch at 0x2378 targets 0x2140, is taken when a5(?) != a6(=0x3), and falls through when a5(?) == a6(=0x3).
  The `beq` branch at 0x239c targets 0x22c4 and is always taken.
  The `beq` branch at 0x23a4 targets 0x2140 and is always taken.
  The `beq` branch at 0x23cc targets 0x21ac and is always taken.
  The `beq` branch at 0x2420 targets 0x2234 and is always taken.
  The `beq` branch at 0x2430 targets 0x2294 and is always taken.
  The `beq` branch at 0x2440 targets 0x225c and is always taken.
  The `beq` branch at 0x2460 targets 0x22c4 and is always taken.
  The return at 0x22ec has v0 = one of 0x0, 0x6, 0xc, 0x13.

- `irisgl_sproc_cleanup` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2468 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x2468-0x24d0 (104 bytes).
  It occupies 104 bytes.
  The `ld` at 0x2488 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x2498 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x24ac loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0x24bc stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x2494 calls cleargfxsched_thread with a0=[a0]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x249c calls gthread_detach_list with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x24a4 calls gthread_detach_group with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2474 targets 0x2488, is taken when a2 == at(=0x1), and falls through when a2 != at(=0x1).
  The `beq` branch at 0x2480 targets 0x24c4 and is always taken.
  The `bne` branch at 0x248c targets 0x24c0, is taken when v0(=[a0+24]:8) != a1, and falls through when v0(=[a0+24]:8) == a1.
  The return at 0x24c8 has v0 = 0x0.

- `gfxclose` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x24d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x24d0-0x2a5c (1420 bytes).
  It occupies 1420 bytes.
  The `ld` at 0x25a8 loads 8 bytes from table(sym(GfxDev)) +0x0.
  4 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x25bc, `ld` at 0x26d0, `ld` at 0x28f0.
  2 such `ld` accesses load 8 bytes from [ret(gthread_find)+16]:8 +0x18, including `ld` at 0x25c8, `ld` at 0x28fc.
  The `ld` at 0x25cc loads 8 bytes from entry(sym(GfxDev)) +0x10.
  The `ld` at 0x25e8 loads 8 bytes from ret(gthread_find) +0x18.
  17 such `ld` accesses load 8 bytes from ?, including `ld` at 0x260c, `ld` at 0x2618, `ld` at 0x2634.
  2 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x18, including `ld` at 0x2638, `ld` at 0x27a4.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x263c, `sd` at 0x27ac, `sd` at 0x2824.
  The `lw` at 0x264c loads 4 bytes from entry(sym(GfxDev)) +0x4.
  2 such `lw` accesses load 4 bytes from ret(gthread_find) +0x8, including `lw` at 0x26b8, `lw` at 0x27d8.
  The `sd` at 0x26dc stores 8 bytes to [ret(gthread_find)+16]:8 +0x18.
  4 such `ld` accesses load 8 bytes from ret(gthread_find) +0x0, including `ld` at 0x26f4, `ld` at 0x2a0c, `ld` at 0x2a20.
  The `lw` at 0x2710 loads 4 bytes from entry(sym(GfxDev)) +0x38.
  The `sw` at 0x2724 stores 4 bytes to entry(sym(GfxDev)) +0x38.
  The `sd` at 0x2738 stores 8 bytes to table(sym(GfxDev)) +0x0.
  2 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x18, including `sd` at 0x2828, `sd` at 0x2940.
  2 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x10, including `sd` at 0x2830, `sd` at 0x2938.
  The `ld` at 0x283c loads 8 bytes from ret(gthread_create) +0x10.
  The `sd` at 0x284c stores 8 bytes to [ret(gthread_create)+16]:8 +0x18.
  The `sw` at 0x288c stores 4 bytes to ?.
  The `jal` at 0x24ec calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2518 calls psema with a0=sym(GfxBoardInitSema), a1=0x19, a2=?, a3=?.
  The `jal` at 0x2530 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2560 calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x2604 calls GfxDetach with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2624 calls GfxListWriterLock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2664 calls GfxListWriterUnlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x266c calls freesema with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=?.
  The `jal` at 0x2694 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x26a0 calls gthread_find with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x26c8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x26e0 calls gthread_detach_list with a0=ret(gthread_find), a1=?, a2=?, a3=?.
  The `jal` at 0x26e8 calls gthread_detach_group with a0=ret(gthread_find), a1=?, a2=?, a3=?.
  The `jal` at 0x26f0 calls gthread_destroy with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2708 calls streams_lock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2720 calls gfxcleanup with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2728 calls streams_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2740 calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x2750 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x275c calls psignal with a0=ret(curproc), a1=0x6, a2=?, a3=?.
  The `jal` at 0x27c0 calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x27e8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x27f8 calls gthread_create with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2834 calls gthread_attach_list with a0=ret(gthread_create), a1=0x0, a2=?, a3=?.
  The `jal` at 0x2848 calls setgfxsched_thread with a0=ret(curthreadhandle), a1=?, a2=?, a3=[ret(gthread_create)+16]:8.
  The `jal` at 0x2858 calls gthread_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2880 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2890 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2898 calls gthread_detach_group with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28a4 calls gthread_scan with a0=sym(irisgl_sproc_cleanup), a1=?, a2=?, a3=?.
  The `jal` at 0x28b4 calls cleargfxsched_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28bc calls gthread_detach_list with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28c4 calls gthread_detach_group with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28d4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28e0 calls gthread_find with a0=[entry(sym(GfxDev))+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2928 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x2954 calls vsema with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x2984 calls GfxListWriterLock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x29a0 calls GfxListWriterUnlock with a0=[ret(gthread_find)+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=?.
  The `jal` at 0x29c8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x29d0 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x29d8 calls proc_name with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0x29e0 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x29e8 calls proc_pid with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0x2a00 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=ret(proc_name), a3=ret(proc_pid).
  The `jal` at 0x2a08 calls threadhandle_to_proc with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2a10 calls proc_name with a0=ret(threadhandle_to_proc), a1=?, a2=?, a3=?.
  The `jal` at 0x2a1c calls threadhandle_to_proc with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2a24 calls proc_pid with a0=ret(threadhandle_to_proc), a1=?, a2=?, a3=?.
  The `jal` at 0x2a38 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=ret(proc_name), a3=ret(proc_pid).
  The `jal` at 0x2a40 calls threadhandle_to_proc with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2a4c calls psignal with a0=ret(threadhandle_to_proc), a1=0x9, a2=?, a3=?.
  The `beq` branch at 0x2508 targets 0x2520, is taken when s7(?) == s5(=0x20000), and falls through when s7(?) != s5(=0x20000).
  The `bne` branch at 0x2550 targets 0x259c, is taken when a0(?) < a1(=[sym(GfxDevLimit)]) (signed), and falls through when a0(?) >= a1(=[sym(GfxDevLimit)]) (signed).
  The `beq` branch at 0x2558 targets 0x2568, is taken when s7(?) == s5(=0x20000), and falls through when s7(?) != s5(=0x20000).
  The `beq` branch at 0x25ac targets 0x27b8, is taken when s0(=entry(sym(GfxDev))) == 0, and falls through when s0(=entry(sym(GfxDev))) != 0.
  The `beq` branch at 0x25b4 targets 0x27b0, is taken when s4(=ret(gthread_find)) == 0, and falls through when s4(=ret(gthread_find)) != 0.
  The `beq` branch at 0x25c0 targets 0x27b0, is taken when v0(=[ret(gthread_find)+16]:8) == 0, and falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x25d0 targets 0x2798, is taken when s6(=ret(curthreadhandle)) == s3(=[entry(sym(GfxDev))+16]:8), and falls through when s6(=ret(curthreadhandle)) != s3(=[entry(sym(GfxDev))+16]:8).
  The `beq` branch at 0x25d8 targets 0x28d4, is taken when s7(?) == s5(=0x20000), and falls through when s7(?) != s5(=0x20000).
  The `beq` branch at 0x25e0 targets 0x2918, is taken when s4(=ret(gthread_find)) == 0, and falls through when s4(=ret(gthread_find)) != 0.
  The `beq` branch at 0x25ec targets 0x28d4, is taken when a0(=[ret(gthread_find)+24]:8) == 0, and falls through when a0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x25fc targets 0x27f8, is taken when s4(=ret(gthread_find)) == 0, and falls through when s4(=ret(gthread_find)) != 0.
  The `beq` branch at 0x2610 targets 0x276c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x261c targets 0x276c, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `bne` branch at 0x262c targets 0x2774, is taken when s0(=entry(sym(GfxDev))) != s2(?), and falls through when s0(=entry(sym(GfxDev))) == s2(?).
  The `beq` branch at 0x2644 targets 0x265c, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x2654 targets 0x2868, is taken when (a4(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (a4(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x265c targets 0x266c, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x2678 targets 0x268c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x2684 targets 0x28b4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x268c targets 0x26fc, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0x26a8 targets 0x27d0, is taken when s3(=one of 0x0, 0x1) == 0, and falls through when s3(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x26b0 targets 0x27e8, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x26c0 targets 0x29c8, is taken when (a6(=[ret(gthread_find)+8]) & 0x4) == 0, and falls through when (a6(=[ret(gthread_find)+8]) & 0x4) != 0.
  The `beq` branch at 0x26d4 targets 0x26e0, is taken when v0(=[ret(gthread_find)+16]:8) == 0, and falls through when v0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x2700 targets 0x2858, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x2734 targets 0x2748, is taken when s7(?) == s5(=0x20000), and falls through when s7(?) != s5(=0x20000).
  The `beq` branch at 0x2748 targets 0x2764, is taken when s3(=one of 0x0, 0x1) == 0, and falls through when s3(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x2764 targets 0x256c and is always taken.
  The `beq` branch at 0x276c targets 0x2634, is taken when s0(=entry(sym(GfxDev))) == s2(?), and falls through when s0(=entry(sym(GfxDev))) != s2(?).
  The `beq` branch at 0x2774 targets 0x2640, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x2780 targets 0x27a4, is taken when s0(=entry(sym(GfxDev))) == v0(?), and falls through when s0(=entry(sym(GfxDev))) != v0(?).
  The `bne` branch at 0x2788 targets 0x277c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x2790 targets 0x2644 and is always taken.
  The `beq` branch at 0x279c targets 0x25fc and is always taken.
  The `beq` branch at 0x27a8 targets 0x2640 and is always taken.
  The `beq` branch at 0x27b0 targets 0x25cc and is always taken.
  The `beq` branch at 0x27b8 targets 0x27c8, is taken when s7(?) == s5(=0x20000), and falls through when s7(?) != s5(=0x20000).
  The `beq` branch at 0x27c8 targets 0x256c and is always taken.
  The `beq` branch at 0x27d0 targets 0x27e8, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `bne` branch at 0x27e0 targets 0x26c8, is taken when (a1(=[ret(gthread_find)+8]) & 0x4) != 0, and falls through when (a1(=[ret(gthread_find)+8]) & 0x4) == 0.
  The `beq` branch at 0x27f0 targets 0x26fc and is always taken.
  The `beq` branch at 0x2804 targets 0x294c, is taken when v0(=ret(gthread_create)) == 0, and falls through when v0(=ret(gthread_create)) != 0.
  The `bne` branch at 0x2820 targets 0x2810, is taken when a1(?) < 0x8 (signed), and falls through when a1(?) >= 0x8 (signed).
  The `beq` branch at 0x2850 targets 0x2604 and is always taken.
  The `beq` branch at 0x2860 targets 0x2708 and is always taken.
  The `beq` branch at 0x286c targets 0x265c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x2878 targets 0x265c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x28ac targets 0x265c and is always taken.
  The `beq` branch at 0x28cc targets 0x268c and is always taken.
  The `beq` branch at 0x28e8 targets 0x2924, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x28f4 targets 0x29c0, is taken when a0(=[ret(gthread_find)+16]:8) == 0, and falls through when a0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x2900 targets 0x29b0, is taken when a1(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when a1(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `bne` branch at 0x2908 targets 0x2974, is taken when a1(=[[ret(gthread_find)+16]:8+24]:8) != 0, and falls through when a1(=[[ret(gthread_find)+16]:8+24]:8) == 0.
  The `beq` branch at 0x2910 targets 0x29b8 and is always taken.
  The `beq` branch at 0x291c targets 0x25fc and is always taken.
  The `beq` branch at 0x2930 targets 0x27f8, is taken when s4(=ret(gthread_find)) == 0, and falls through when s4(=ret(gthread_find)) != 0.
  The `beq` branch at 0x2944 targets 0x25fc and is always taken.
  The `beq` branch at 0x294c targets 0x295c, is taken when s7(?) == s5(=0x20000), and falls through when s7(?) != s5(=0x20000).
  The `beq` branch at 0x295c targets 0x256c and is always taken.
  The `beq` branch at 0x296c targets 0x29b8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x2974 targets 0x2964, is taken when s0(=entry(sym(GfxDev))) != a1(?), and falls through when s0(=entry(sym(GfxDev))) == a1(?).
  The `beq` branch at 0x297c targets 0x29b8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x29a8 targets 0x2928 and is always taken.
  The `beq` branch at 0x29b0 targets 0x2928 and is always taken.
  The `beq` branch at 0x29b8 targets 0x2928 and is always taken.
  The `beq` branch at 0x29c0 targets 0x2928 and is always taken.
  The `beq` branch at 0x2a54 targets 0x26fc and is always taken.
  The return at 0x2594 has v0 = one of 0x0, 0x6, 0xc, 0x13.

- `GfxListWriterLock` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2a5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x2a5c-0x2ad4 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x2a80, `lw` at 0x2aac.
  The `jal` at 0x2a78 calls mutex_spinlock with a0=a0+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2a98 calls sv_wait with a0=a0+8, a1=0x19, a2=a0+16, a3=ret(mutex_spinlock).
  The `jal` at 0x2aa0 calls mutex_spinlock with a0=a0+16, a1=?, a2=?, a3=?.
  The `blez` branch at 0x2a88 targets 0x2ab8, is taken when at(=[a0+4]) <= 0 (signed), and falls through when at(=[a0+4]) > 0 (signed).
  The `bgtz` branch at 0x2ab0 targets 0x2a94, is taken when v0(=[a0+4]) > 0 (signed), and falls through when v0(=[a0+4]) <= 0 (signed).
  The return at 0x2acc has v0 = ret(mutex_spinlock).

- `GfxListWriterUnlock` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2ad4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x2ad4-0x2af0 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x2adc calls mutex_spinunlock with a0=a0+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2ae8 has v0 = ret(mutex_spinunlock).

- `GfxListReaderLock` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2af0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x2af0-0x2b34 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x2b0c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x2b20 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `jal` at 0x2b04 calls mutex_spinlock with a0=a0+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2b1c calls mutex_spinunlock with a0=a0+16, a1=ret(mutex_spinlock), a2=?, a3=?.
  The return at 0x2b2c has v0 = ret(mutex_spinunlock).

- `GfxListReaderUnlock` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2b34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x2b34-0x2b84 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x2b50 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x2b64 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `jal` at 0x2b48 calls mutex_spinlock with a0=a0+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2b60 calls sv_signal with a0=a0+8, a1=?, a2=?, a3=?.
  The `jal` at 0x2b70 calls mutex_spinunlock with a0=a0+16, a1=ret(mutex_spinlock), a2=?, a3=?.
  The return at 0x2b7c has v0 = ret(mutex_spinunlock).

- `gfxread` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2b84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x2b84-0x2b8c (8 bytes).
  It occupies 8 bytes.
  The return at 0x2b84 has v0 = 0x36.

- `gfxwrite` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2b8c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x2b8c-0x2b94 (8 bytes).
  It occupies 8 bytes.
  The return at 0x2b8c has v0 = 0x36.

- `gfxioctl` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2b94 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x2b94-0x3368 (2004 bytes).
  It occupies 2004 bytes.
  The `lh` at 0x2bd0 loads 2 bytes from abs 0xffffffffffffc428.
  The `lw` at 0x2be0 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0xc.
  The `sw` at 0x2bf4 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0xc.
  The `ld` at 0x2c20 loads 8 bytes from table(sym(GfxDev)) +0x0.
  6 such `lw` accesses load 4 bytes from entry(sym(GfxDev)) +0x4, including `lw` at 0x2c34, `lw` at 0x2d1c, `lw` at 0x2dd8.
  5 such `ld` accesses load 8 bytes from ret(gthread_find) +0x18, including `ld` at 0x2c40, `ld` at 0x2d10, `ld` at 0x2df4.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x0, including `ld` at 0x2c4c, `ld` at 0x2eac.
  The `ld` at 0x2c50 loads 8 bytes from entry(sym(GfxDev)) +0x10.
  7 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x20, including `ld` at 0x2cb0, `ld` at 0x2dc0, `ld` at 0x3030.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x8, including `ld` at 0x2ce8, `ld` at 0x3338, `ld` at 0x3350.
  3 such `ld` accesses load 8 bytes from [entry(sym(GfxDev))+8]:8 +0x10, including `ld` at 0x2cec, `ld` at 0x333c, `ld` at 0x3354.
  2 such `sw` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `sw` at 0x2d0c, `sw` at 0x3178.
  The `ld` at 0x2d5c loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc8.
  The `ld` at 0x2d74 loads 8 bytes from entry(sym(GfxDev)) +0x48.
  17 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x28, including `ld` at 0x2d8c, `ld` at 0x2d98, `ld` at 0x2db0.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x30, including `ld` at 0x2d94, `ld` at 0x2dac, `ld` at 0x2de0.
  4 such `ld` accesses load 8 bytes from [entry(sym(GfxDev))+40]:8 +0x48, including `ld` at 0x2d9c, `ld` at 0x2db4, `ld` at 0x3008.
  The `ld` at 0x2dc4 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x60.
  2 such `sw` accesses store 4 bytes to entry(sym(GfxDev)) +0x4, including `sw` at 0x2dec, `sw` at 0x2fc8.
  4 such `sd` accesses store 8 bytes to [entry(sym(GfxDev))+40]:8 +0x48, including `sd` at 0x2e58, `sd` at 0x304c, `sd` at 0x31d4.
  6 such `lw` accesses load 4 bytes from [entry(sym(GfxDev))+40]:8 +0x68, including `lw` at 0x2e60, `lw` at 0x2e78, `lw` at 0x31dc.
  The `ld` at 0x3014 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x18.
  The `sw` at 0x302c stores 4 bytes to [entry(sym(GfxDev))+40]:8 +0x80.
  The `ld` at 0x3034 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc0.
  The `ld` at 0x3094 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x28.
  The `ld` at 0x30e0 loads 8 bytes from [entry(sym(GfxDev))+8]:8 +0x0.
  6 such `ld` accesses load 8 bytes from table(sym(GfxBoards)) +0x0, including `ld` at 0x313c, `ld` at 0x315c, `ld` at 0x3188.
  The `ld` at 0x3168 loads 8 bytes from entry(sym(GfxBoards)) +0x8.
  5 such `ld` accesses load 8 bytes from entry(sym(GfxBoards)) +0x38, including `ld` at 0x3248, `ld` at 0x3278, `ld` at 0x3290.
  The `ld` at 0x324c loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x0.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxBoards)) +0x40, including `ld` at 0x3260, `ld` at 0x3270, `ld` at 0x32f4.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x8, including `sd` at 0x326c, `sd` at 0x32b8, `sd` at 0x32e8.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x28, including `sd` at 0x3274, `sd` at 0x32b0, `sd` at 0x32f8.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x20, including `sd` at 0x327c, `sd` at 0x32ac, `sd` at 0x32f0.
  2 such `ld` accesses load 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x8, including `ld` at 0x3294, `ld` at 0x3310.
  The `ld` at 0x32c0 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x20.
  2 such `sd` accesses store 8 bytes to [entry(sym(GfxDev))+8]:8 +0x10, including `sd` at 0x334c, `sd` at 0x3364.
  The `jal` at 0x2bbc calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2bc8 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2c70 calls psema with a0=entry(sym(GfxDev))+80, a1=0x19, a2=0x1ffff, a3=[([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5))+12]+1, a4=([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)), a5=([-0x3bd8]:2 << 0x5).
  The `jalr` at 0x2d70 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=[entry(sym(GfxDev))+72]:8, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a5 at entry (arg5).
  The `jal` at 0x2d90 calls ddv_unlock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2da8 calls ddv_lock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2dd0 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=0x0, a2=-0x1, a3=?.
  The `jal` at 0x2de8 calls ddv_unlock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2e00 calls RRM_Dispatch with a0=entry(sym(GfxDev)), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a5 at entry (arg5).
  The `jal` at 0x2e3c calls cmn_err_tag with a0=0x850, a1=0x4, a2=sym(.rodata), a3=a1 at entry (arg1), a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x2e4c calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0x2e6c calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x2ea8 calls threadgroup_refcnt with a0=[ret(gthread_find)]:8, a1=0x67, a2=0x70, a3=0x71, a7=[ret(gthread_find)+24]:8.
  The `jal` at 0x2ec4 calls curproc_abi with a0=0x69, a1=?, a2=?, a3=?.
  The `jal` at 0x2ee4 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=sym(irix5_to_gfx_getboardinfo_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f04 calls copyin with a0=a2 at entry (arg2), a1=sp-72, a2=0x4, a3=?.
  The `jal` at 0x2f1c calls vsema with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=?.
  The `jal` at 0x2f2c calls GfxDetach with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2f3c calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=?.
  The `jal` at 0x2f5c calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f74 calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2f94 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2fac calls drv_priv with a0=a4 at entry (arg4), a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2fcc calls curproc_abi with a0=entry(sym(GfxDev)), a1=0x67, a2=0x70, a3=0x71, a6=0x6c, a7=0x68.
  The `jal` at 0x2fec calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x28, a3=sym(irix5_to_gfx_download_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jalr` at 0x3018 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x3028 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x3040 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=[[entry(sym(GfxDev))+32]:8+192]:8, a2=?, a3=?.
  The `jal` at 0x3054 calls vsema with a0=[entry(sym(GfxDev))+40]:8+56, a1=[entry(sym(GfxDev))+40]:8, a2=?, a3=?.
  The `jal` at 0x305c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x3074 calls rrmUnMapGfx with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jalr` at 0x3098 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?, a4=[[entry(sym(GfxDev))+32]:8+40]:8.
  The `jal` at 0x30ec calls copyin with a0=a2 at entry (arg2), a1=[[entry(sym(GfxDev))+8]:8]:8+16, a2=0x10, a3=[entry(sym(GfxDev))+8]:8, a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x31c8 calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[entry(sym(GfxDev))+8]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x31e8 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x3208 calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[[entry(sym(GfxDev))+40]:8+72]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x3228 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x325c calls (unknown callee) with a0=[entry(sym(GfxBoards))+64]:8, a1=?, a2=?, a3=a5 at entry (arg5), a4=entry(sym(GfxBoards)).
  The `jalr` at 0x329c calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards).
  The `jalr` at 0x32c8 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=sp-112, a2=?, a3=?.
  The `jalr` at 0x3318 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards), a4=[entry(sym(GfxDev))+32]:8.
  The `beq` branch at 0x2c0c targets 0x2d00, is taken when a1(?) >= at(=[sym(GfxDevLimit)]) (signed), and falls through when a1(?) < at(=[sym(GfxDevLimit)]) (signed).
  The `beq` branch at 0x2c24 targets 0x2d54, is taken when s0(=entry(sym(GfxDev))) == 0, and falls through when s0(=entry(sym(GfxDev))) != 0.
  The `beq` branch at 0x2c2c targets 0x2d4c, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x2c3c targets 0x2c64, is taken when (t9(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (t9(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2c44 targets 0x2c7c, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2c54 targets 0x2c7c, is taken when ra(=[ret(gthread_find)]:8) == at(=[entry(sym(GfxDev))+16]:8), and falls through when ra(=[ret(gthread_find)]:8) != at(=[entry(sym(GfxDev))+16]:8).
  The `beq` branch at 0x2c5c targets 0x2d2c and is always taken.
  The `beq` branch at 0x2c64 targets 0x2c7c, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2c7c targets 0x2d08, is taken when s1(=a1) == v0(=0x65), and falls through when s1(=a1) != v0(=0x65).
  The `beq` branch at 0x2c88 targets 0x2ec4, is taken when s1(=a1) == v1(=0x66), and falls through when s1(=a1) != v1(=0x66).
  The `beq` branch at 0x2c90 targets 0x2efc, is taken when s1(=a1) == a0(=0x69), and falls through when s1(=a1) != a0(=0x69).
  The `beq` branch at 0x2c98 targets 0x2f3c, is taken when s1(=a1) == a1(=0x67), and falls through when s1(=a1) != a1(=0x67).
  The `beq` branch at 0x2ca0 targets 0x2f74, is taken when s1(=a1) == a2(=0x70), and falls through when s1(=a1) != a2(=0x70).
  The `beq` branch at 0x2ca8 targets 0x2fac, is taken when s1(=a1) == a3(=0x71), and falls through when s1(=a1) != a3(=0x71).
  The `beq` branch at 0x2cb4 targets 0x2d80, is taken when v0(=[entry(sym(GfxDev))+32]:8) == 0, and falls through when v0(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` branch at 0x2cbc targets 0x2d5c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x2cc4 targets 0x2df8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2cd0 targets 0x2fcc, is taken when s1(=a1) == a6(=0x6c), and falls through when s1(=a1) != a6(=0x6c).
  The `beq` branch at 0x2cd8 targets 0x2e8c, is taken when s1(=a1) == a7(=0x68), and falls through when s1(=a1) != a7(=0x68).
  The `beq` branch at 0x2ce0 targets 0x2d88, is taken when s1(=a1) == t0(=0x6e), and falls through when s1(=a1) != t0(=0x6e).
  The `beq` branch at 0x2cf0 targets 0x2e10, is taken when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) == s0(=entry(sym(GfxDev))), and falls through when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) != s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2cf8 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2d00 targets 0x2d2c and is always taken.
  The `beq` branch at 0x2d14 targets 0x2d2c, is taken when t3(=[ret(gthread_find)+24]:8) == 0, and falls through when t3(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2d24 targets 0x2f1c, is taken when (t8(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (t8(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2d4c targets 0x2d2c and is always taken.
  The `beq` branch at 0x2d54 targets 0x2d2c and is always taken.
  The `beq` branch at 0x2d78 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2d80 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2d88 targets 0x2d9c and is always taken.
  The `bne` branch at 0x2da0 targets 0x2e4c, is taken when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `bne` branch at 0x2db8 targets 0x2d90, is taken when at(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when at(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2df0 targets 0x2d14 and is always taken.
  The `beq` branch at 0x2e08 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2e10 targets 0x3004, is taken when s1(=a1) == a0(=0x6a), and falls through when s1(=a1) != a0(=0x6a).
  The `beq` branch at 0x2e18 targets 0x3084, is taken when s1(=a1) == a1(=0x6b), and falls through when s1(=a1) != a1(=0x6b).
  The `beq` branch at 0x2e20 targets 0x30a8, is taken when s1(=a1) == a2(=0x6d), and falls through when s1(=a1) != a2(=0x6d).
  The `beq` branch at 0x2e28 targets 0x30e0, is taken when s1(=a1) == a4(=0x6f), and falls through when s1(=a1) != a4(=0x6f).
  The `beq` branch at 0x2e44 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2e64 targets 0x2da8, is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x2e7c targets 0x2e6c, is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x2e84 targets 0x2da8 and is always taken.
  The `bne` branch at 0x2e94 targets 0x2f2c, is taken when (a6(=[entry(sym(GfxDev))+4]) & 0x8) != 0, and falls through when (a6(=[entry(sym(GfxDev))+4]) & 0x8) == 0.
  The `beq` branch at 0x2ea0 targets 0x2f2c, is taken when a7(=[ret(gthread_find)+24]:8) == 0, and falls through when a7(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2eb4 targets 0x2f2c, is taken when v0(=ret(threadgroup_refcnt)) == t0(=0x1), and falls through when v0(=ret(threadgroup_refcnt)) != t0(=0x1).
  The `beq` branch at 0x2ebc targets 0x2d10 and is always taken.
  The `beq` branch at 0x2eec targets 0x30b0, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2ef4 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2f0c targets 0x30c8, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x2f14 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2f24 targets 0x2d2c and is always taken.
  The `beq` branch at 0x2f34 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2f64 targets 0x3100, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2f6c targets 0x2d10 and is always taken.
  The `beq` branch at 0x2f9c targets 0x3118, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2fa4 targets 0x2d10 and is always taken.
  The `bne` branch at 0x2fb4 targets 0x2d10, is taken when v0(=ret(drv_priv)) != 0, and falls through when v0(=ret(drv_priv)) == 0.
  The `beq` branch at 0x2fc4 targets 0x2d10 and is always taken.
  The `beq` branch at 0x2ff4 targets 0x32bc, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2ffc targets 0x2d10 and is always taken.
  The `bne` branch at 0x300c targets 0x31c8, is taken when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x3038 targets 0x3048, is taken when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) == 0, and falls through when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) != 0.
  The `beq` branch at 0x306c targets 0x2d10, is taken when (a2(=[entry(sym(GfxDev))+4]) & 0x1) == 0, and falls through when (a2(=[entry(sym(GfxDev))+4]) & 0x1) != 0.
  The `beq` branch at 0x307c targets 0x2d14 and is always taken.
  The `bne` branch at 0x308c targets 0x3208, is taken when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x30a0 targets 0x2d10 and is always taken.
  The `beq` branch at 0x30a8 targets 0x2d10 and is always taken.
  The `bne` branch at 0x30b8 targets 0x3130, is taken when v0(?) < a5(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a5(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x30c0 targets 0x2d10 and is always taken.
  The `bne` branch at 0x30d0 targets 0x3150, is taken when a0(?) < a6(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when a0(?) >= a6(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x30d8 targets 0x2d10 and is always taken.
  The `beq` branch at 0x30f8 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3108 targets 0x317c, is taken when v0(?) < a2(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a2(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x3110 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3120 targets 0x31a8, is taken when v0(?) < a3(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a3(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x3128 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3140 targets 0x3248, is taken when a4(=entry(sym(GfxBoards))) != 0, and falls through when a4(=entry(sym(GfxBoards))) == 0.
  The `beq` branch at 0x3148 targets 0x2d10 and is always taken.
  The `beq` branch at 0x3160 targets 0x32d8, is taken when v0(=entry(sym(GfxBoards))) == 0, and falls through when v0(=entry(sym(GfxBoards))) != 0.
  The `beq` branch at 0x3174 targets 0x2d10 and is always taken.
  The `beq` branch at 0x318c targets 0x32e0, is taken when a2(=entry(sym(GfxBoards))) == 0, and falls through when a2(=entry(sym(GfxBoards))) != 0.
  The `beq` branch at 0x3198 targets 0x32e8, is taken when a4(=[entry(sym(GfxDev))+32]:8) == 0, and falls through when a4(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` branch at 0x31a0 targets 0x2d10 and is always taken.
  The `bne` branch at 0x31b8 targets 0x326c, is taken when a2(=entry(sym(GfxBoards))) != 0, and falls through when a2(=entry(sym(GfxBoards))) == 0.
  The `beq` branch at 0x31c0 targets 0x2d10 and is always taken.
  The `beq` branch at 0x31e0 targets 0x3200, is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x31f8 targets 0x31e8, is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x3200 targets 0x3014 and is always taken.
  The `beq` branch at 0x3220 targets 0x3240, is taken when a6(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a6(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x3238 targets 0x3228, is taken when t0(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when t0(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x3240 targets 0x3094 and is always taken.
  The `beq` branch at 0x3264 targets 0x2d10 and is always taken.
  The `beq` branch at 0x32a4 targets 0x3338, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x32b4 targets 0x2d10 and is always taken.
  The `beq` branch at 0x32d0 targets 0x2d10 and is always taken.
  The `beq` branch at 0x32d8 targets 0x2d10 and is always taken.
  The `beq` branch at 0x32e0 targets 0x2d10 and is always taken.
  The `beq` branch at 0x3320 targets 0x3350, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x3330 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3340 targets 0x2d10, is taken when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0, and falls through when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `beq` branch at 0x3348 targets 0x2d10 and is always taken.
  The `bne` branch at 0x3358 targets 0x2d10, is taken when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0, and falls through when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `beq` branch at 0x3360 targets 0x2d10 and is always taken.
  The return at 0x2d44 has v0 = one of 0xd, 0x6, ?, 0x13.

- `gfxmap` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3368 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3368-0x3370 (8 bytes).
  It occupies 8 bytes.
  The return at 0x3368 has v0 = 0x36.

- `gfxunmap` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3370 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3370-0x3378 (8 bytes).
  It occupies 8 bytes.
  The return at 0x3370 has v0 = 0x36.

- `gfx_shalloc` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3378 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3378-0x3438 (192 bytes).
  It occupies 192 bytes.
  3 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x33c0, `ld` at 0x33d4, `ld` at 0x3408.
  The `ld` at 0x33d8 loads 8 bytes from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x33e8 loads 4 bytes from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `sd` at 0x33f8 stores 8 bytes to ?.
  The `ld` at 0x33fc loads 8 bytes from ?.
  The `sw` at 0x3434 stores 4 bytes to ret(gfx_group_create) +0xc.
  The `jal` at 0x3380 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3388 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3398 calls gfx_group_create with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x33a4 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x33b8 calls gthread_attach_group with a0=ret(gthread_find), a1=ret(gfx_group_create), a2=?, a3=?.
  The `jal` at 0x33cc calls GfxListWriterLock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x340c calls GfxListWriterUnlock with a0=[ret(gthread_find)+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=?, a5=0x1.
  The `jal` at 0x3414 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0x33ac targets 0x3414, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x33c4 targets 0x3414, is taken when a0(=[ret(gthread_find)+16]:8) == 0, and falls through when a0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x33e0 targets 0x340c, is taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x33f0 targets 0x3430, is taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0, and falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `bne` branch at 0x3400 targets 0x33f8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x3430 targets 0x33f8 and is always taken.
  The return at 0x3428 has v0 = ret(splx).

- `gfx_shfree` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3438 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3438-0x3464 (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x3440 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3448 calls gfx_group_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x3450 calls gfx_group_destroy with a0=ret(gfx_group_find), a1=?, a2=?, a3=?.
  The return at 0x345c has v0 = ret(gfx_group_destroy).

- `gfx_frs_valid_pipenum` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3464 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3464-0x3470 (12 bytes).
  It occupies 12 bytes.
  The return at 0x3468 has v0 = ?.

- `gfx_frs_install` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3470 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3470-0x34c8 (88 bytes).
  It occupies 88 bytes.
  The `ld` at 0x347c loads 8 bytes from (sym(GfxBoards) + (a1 << 0x3)) +0x0.
  The `ld` at 0x3480 loads 8 bytes from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x38.
  The `ld` at 0x3484 loads 8 bytes from [[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8 +0xd0.
  The `ld` at 0x3498 loads 8 bytes from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x40.
  The `jalr` at 0x349c calls (unknown callee) with a0=[[(sym(GfxBoards) + (a1 << 0x3))]:8+64]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `jal` at 0x34b8 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `beq` branch at 0x3490 targets 0x34b0, is taken when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) == 0, and falls through when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) != 0.
  The `beq` branch at 0x34c0 targets 0x34a8 and is always taken.
  The return at 0x34a8 has v0 = one of ret(?), ret(cmn_err).

- `gfx_frs_uninstall` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x34c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x34c8-0x3518 (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x34d4 loads 8 bytes from (sym(GfxBoards) + (a0 << 0x3)) +0x0.
  The `ld` at 0x34d8 loads 8 bytes from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x38.
  The `ld` at 0x34dc loads 8 bytes from [[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8 +0xd8.
  The `ld` at 0x34f0 loads 8 bytes from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x40.
  The `jalr` at 0x34ec calls (unknown callee) with a0=[[(sym(GfxBoards) + (a0 << 0x3))]:8+64]:8, a1=a1 at entry (arg1), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `jal` at 0x3508 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `beq` branch at 0x34e4 targets 0x3500, is taken when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) == 0, and falls through when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) != 0.
  The `beq` branch at 0x3510 targets 0x34f8 and is always taken.
  The return at 0x34f8 has v0 = one of ret(?), ret(cmn_err).

- `irix5_to_gfx_getboardinfo_args` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3518 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3518-0x3590 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x352c loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x353c loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x3540, `sd` at 0x358c.
  The `sw` at 0x3548 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x3554 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x3558 loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x355c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x3560 loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x3564 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x3568 loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x356c stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `jal` at 0x357c calls kern_malloc with a0=0xc, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3524 targets 0x3554, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x3534 targets 0x357c, is taken when at(=[a3]) < 0xc (unsigned), and falls through when at(=[a3]) >= 0xc (unsigned).
  The `beq` branch at 0x354c targets 0x3570 and is always taken.
  The `beq` branch at 0x3588 targets 0x3544 and is always taken.
  The return at 0x3574 has v0 = 0x0.

- `irix5_to_gfx_download_args` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3590 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3590-0x3630 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x35a4 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x35b4 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x35b8, `sd` at 0x362c.
  The `sw` at 0x35c0 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x35cc loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x35d0 loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x35d4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x35d8 loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x35dc stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x35e0 loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x35e4 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `lw` at 0x35e8 loads 4 bytes from [a3+16]:8 +0xc.
  The `sw` at 0x35ec stores 4 bytes to a1 (arg1 at entry) +0x14.
  The `lw` at 0x35f0 loads 4 bytes from [a3+16]:8 +0x10.
  The `sw` at 0x35f4 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `lw` at 0x35f8 loads 4 bytes from [a3+16]:8 +0x14.
  The `sw` at 0x35fc stores 4 bytes to a1 (arg1 at entry) +0x1c.
  The `lw` at 0x3600 loads 4 bytes from [a3+16]:8 +0x18.
  The `sw` at 0x3604 stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `lw` at 0x3608 loads 4 bytes from [a3+16]:8 +0x1c.
  The `sw` at 0x360c stores 4 bytes to a1 (arg1 at entry) +0x24.
  The `jal` at 0x361c calls kern_malloc with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x359c targets 0x35cc, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x35ac targets 0x361c, is taken when at(=[a3]) < 0x20 (unsigned), and falls through when at(=[a3]) >= 0x20 (unsigned).
  The `beq` branch at 0x35c4 targets 0x3610 and is always taken.
  The `beq` branch at 0x3628 targets 0x35bc and is always taken.
  The return at 0x3614 has v0 = 0x0.

- `irix5_to_gfx_attach_board_args` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3630 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfx.o`.
  Range: 0x3630-0x36a0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x3644 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x3654 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x3658, `sd` at 0x369c.
  The `sw` at 0x3660 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x366c loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x3670 loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x3674 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x3678 loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x367c stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `jal` at 0x368c calls kern_malloc with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x363c targets 0x366c, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x364c targets 0x368c, is taken when at(=[a3]) < 0x8 (unsigned), and falls through when at(=[a3]) >= 0x8 (unsigned).
  The `beq` branch at 0x3664 targets 0x3680 and is always taken.
  The `beq` branch at 0x3698 targets 0x365c and is always taken.
  The return at 0x3684 has v0 = 0x0.
