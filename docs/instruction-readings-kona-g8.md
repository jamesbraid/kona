# Instruction readings from hostfacts

Each entry records selected memory accesses, calls, conditional branches and returns reported by hostfacts for one routine and binary. Every instruction claim cites its address. These are observations of the installed software, not hardware measurements. Unknown values remain marked unknown.

- `gfxtable_readerlock` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x0 (n64).
  It occupies 68 bytes.
  The `sw` at 0x30 stores 4 bytes from at to a0 (arg0 at entry) +0x0 (value [a0]+1).
  The `jal` at 0x14 calls `mutex_spinlock` with a0=a0+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2c calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The return at 0x3c has v0 = ret(mutex_spinunlock).

- `gfxtable_readerunlock` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x44 (n64).
  It occupies 68 bytes.
  The `sw` at 0x74 stores 4 bytes from at to a0 (arg0 at entry) +0x0 (value [a0]-1).
  The `jal` at 0x58 calls `mutex_spinlock` with a0=a0+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x70 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The return at 0x80 has v0 = ret(mutex_spinunlock).

- `gfxtable_writerlock` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x88 (n64).
  It occupies 128 bytes.
  The `jal` at 0xa4 calls `mutex_spinlock` with a0=a0+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xbc calls `mutex_spinunlock` with a0=a0+4, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xcc calls `nano_delay` with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0xd4 calls `mutex_spinlock` with a0=a0+4, a1=?, a2=?, a3=?.
  The `blez` branch at 0xb4 is taken when at(=[a0]) <= 0 (signed) -> B2 and falls through when at(=[a0]) > 0 (signed) -> B1.
  The `bgtz` branch at 0xe4 is taken when v0(=[a0]) > 0 (signed) -> B1 and falls through when v0(=[a0]) <= 0 (signed) -> B2.
  The return at 0x100 has v0 = ret(mutex_spinlock).

- `gfxtable_writerunlock` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x108 (n64).
  It occupies 28 bytes.
  The `jal` at 0x110 calls `mutex_spinunlock` with a0=a0+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x11c has v0 = ret(mutex_spinunlock).

- `gfx_group_find` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x188 (n64).
  It occupies 184 bytes.
  The `jal` at 0x194 calls `threadhandle_to_threadgrouphandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1b4 calls `gfxtable_readerlock` with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x21c calls `gfxtable_readerunlock` with a0=sym(gfx_group_table_lock), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1a8 is taken when (v0(=ret(threadhandle_to_threadgrouphandle)) & 0xf) == 0 -> B10 and falls through when (v0(=ret(threadhandle_to_threadgrouphandle)) & 0xf) != 0 -> B1.
  The `beq` branch at 0x1d0 is taken when s0(?) == 0 -> B9 and falls through when s0(?) != 0 -> B3.
  The `beq` branch at 0x1dc is taken when t9(?) == s1(=ret(threadhandle_to_threadgrouphandle)) -> B9 and falls through when t9(?) != s1(=ret(threadhandle_to_threadgrouphandle)) -> B4.
  The `beq` branch at 0x1e8 is taken when s0(?) == 0 -> B8 and falls through when s0(?) != 0 -> B5.
  The `beq` branch at 0x1f4 is taken when ra(?) == s1(=ret(threadhandle_to_threadgrouphandle)) -> B8 and falls through when ra(?) != s1(=ret(threadhandle_to_threadgrouphandle)) -> B6.
  The `beq` branch at 0x200 is taken when s0(?) == 0 -> B8 and falls through when s0(?) != 0 -> B7.
  The `bne` branch at 0x20c is taken when at(?) != s1(=ret(threadhandle_to_threadgrouphandle)) -> B4 and falls through when at(?) == s1(=ret(threadhandle_to_threadgrouphandle)) -> B8.
  The return at 0x230 has v0 = ?.

- `init_gthread_table` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x3cc (n64).
  It occupies 160 bytes.
  The `sd` at 0x408 stores 8 bytes from v0 to sym(gthread_table) +0x0 (value ret(kern_malloc)).
  The `sw` at 0x448 stores 4 bytes from zero to ? (base unknown) (value 0x0).
  The `jal` at 0x3f8 calls `kern_malloc` with a0=0x800, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x40c calls `bzero` with a0=?, a1=0x800, a2=?, a3=?.
  The `jal` at 0x42c calls `spinlock_init` with a0=?, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x45c calls `cmn_err` with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x3dc is taken when at(=[sym(gthread_table)]:8) == 0 -> B3 and falls through when at(=[sym(gthread_table)]:8) != 0 -> B1.
  The `beq` branch at 0x404 is taken when v0(=ret(kern_malloc)) == 0 -> B7 and falls through when v0(=ret(kern_malloc)) != 0 -> B4.
  The `bne` branch at 0x444 is taken when s0(?) < 0x10 (signed) -> B5 and falls through when s0(?) >= 0x10 (signed) -> B6.
  The return at 0x3f0 has v0 = ?.

- `gthread_create` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x46c (n64).
  It occupies 252 bytes.
  The `sd` at 0x498 stores 8 bytes from s1 to ret(kern_malloc) +0x0 (value a0).
  The `sw` at 0x49c stores 4 bytes from zero to ret(kern_malloc) +0x8 (value 0x0).
  The `sd` at 0x4a0 stores 8 bytes from zero to ret(kern_malloc) +0x10 (value 0x0).
  The `sd` at 0x4a4 stores 8 bytes from zero to ret(kern_malloc) +0x18 (value 0x0).
  The `sd` at 0x520 stores 8 bytes from a4 to ret(kern_malloc) +0x20.
  The `sd` at 0x52c stores 8 bytes from s0 to ? (base unknown) (value ret(kern_malloc)).
  The `jal` at 0x480 calls `kern_malloc` with a0=0x28, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4a8 calls `gfx_group_find` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x508 calls `gfxtable_writerlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x538 calls `gfxtable_writerunlock` with a0=?, a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `jal` at 0x558 calls `gthread_attach_group` with a0=ret(kern_malloc), a1=ret(gfx_group_find), a2=?, a3=?.
  The `bne` branch at 0x488 is taken when v0(=ret(kern_malloc)) != 0 -> B2 and falls through when v0(=ret(kern_malloc)) == 0 -> B1.
  The `bne` branch at 0x4b0 is taken when v0(=ret(gfx_group_find)) != 0 -> B6 and falls through when v0(=ret(gfx_group_find)) == 0 -> B3.
  The return at 0x550 has v0 = ?.

- `gthread_destroy` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x568 (n64).
  It occupies 244 bytes.
  The `sd` at 0x61c stores 8 bytes from a6 to ? (base unknown).
  The `jal` at 0x5c8 calls `gfxtable_writerlock` with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x630 calls `gfxtable_writerunlock` with a0=?, a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `jal` at 0x640 calls `kern_free` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x5e0 is taken when a0(?) == 0 -> B4 and falls through when a0(?) != 0 -> B1.
  The `beq` branch at 0x5ec is taken when a6(?) == s0(=a0) -> B4 and falls through when a6(?) != s0(=a0) -> B2.
  The `beq` branch at 0x5fc is taken when a0(?) == 0 -> B6 and falls through when a0(?) != 0 -> B3.
  The `bne` branch at 0x608 is taken when a7(?) != s0(=a0) -> B2 and falls through when a7(?) == s0(=a0) -> B4.
  The `beq` branch at 0x610 is taken when a0(?) == 0 -> B6 and falls through when a0(?) != 0 -> B5.
  The `beq` branch at 0x638 is taken when s0(?) == 0 -> B9 and falls through when s0(?) != 0 -> B8.
  The return at 0x654 has v0 = ?.

- `gthread_attach_list` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x65c (n64).
  It occupies 156 bytes.
  The `sw` at 0x67c stores 4 bytes from at to a1 (arg1 at entry) +0x0 (value [a1]+1).
  The `sd` at 0x684 stores 8 bytes from s0 to a0 (arg0 at entry) +0x10.
  The `sw` at 0x6b4 stores 4 bytes from zero to ret(kern_malloc) +0x4 (value 0x0).
  The `sd` at 0x6c8 stores 8 bytes from zero to ret(kern_malloc) +0x18 (value 0x0).
  The `sw` at 0x6d0 stores 4 bytes from a4 to ret(kern_malloc) +0x0 (value 0x1).
  The `jal` at 0x698 calls `kern_malloc` with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6d4 calls `init_sv` with a0=ret(kern_malloc)+8, a1=0x0, a2=sym(.rodata), a3=-0x1, a4=0x1.
  The `jal` at 0x6e8 calls `spinlock_init` with a0=?, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x66c is taken when a1 == 0 -> B4 and falls through when a1 != 0 -> B1.
  The `bne` branch at 0x6a4 is taken when v0(=ret(kern_malloc)) != 0 -> B6 and falls through when v0(=ret(kern_malloc)) == 0 -> B5.
  The return at 0x690 has v0 = one of 0x0, 0x1.

- `gthread_detach_list` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x6f8 (n64).
  It occupies 84 bytes.
  The `sd` at 0x704 stores 8 bytes from zero to a0 (arg0 at entry) +0x10 (value 0x0).
  The `sw` at 0x718 stores 4 bytes from at to [a0+16]:8 +0x0 (value [[a0+16]:8]-1).
  The `jal` at 0x72c calls `spinlock_destroy` with a0=[a0+16]:8+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x734 calls `sv_destroy` with a0=[a0+16]:8+8, a1=?, a2=?, a3=?.
  The `jal` at 0x73c calls `kern_free` with a0=[a0+16]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x714 is taken when at(=[[a0+16]:8]-1) == 0 -> B2 and falls through when at(=[[a0+16]:8]-1) != 0 -> B1.
  The return at 0x724 has v0 = 0x1.
- `gthread_attach_group` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x74c (n64).
  It occupies 92 bytes.
  The `sw` at 0x784 stores 4 bytes from at to a1 (arg1 at entry) +0x8 (value [a1+8]+1).
  The `sd` at 0x794 stores 8 bytes from s0 to a0 (arg0 at entry) +0x18 (value a1).
  The `jal` at 0x768 calls `mutex_spinlock` with a0=a1+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x780 calls `mutex_spinunlock` with a0=a1+16, a1=ret(mutex_spinlock), a2=?, a3=?.
  The return at 0x7a0 has v0 = 0x1.

- `gthread_detach_group` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x7a8 (n64).
  It occupies 88 bytes.
  The `sd` at 0x7c4 stores 8 bytes from zero to a0 (arg0 at entry) +0x18 (value 0x0).
  The `sw` at 0x7e8 stores 4 bytes from at to [a0+24]:8 +0x8 (value [[a0+24]:8+8]-1).
  The `jal` at 0x7cc calls `mutex_spinlock` with a0=[a0+24]:8+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7e4 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x7bc is taken when s0(=[a0+24]:8) == 0 -> B2 and falls through when s0(=[a0+24]:8) != 0 -> B1.
  The return at 0x7f8 has v0 = one of 0x0, 0x1.

- `gthread_find` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x800 (n64).
  It occupies 220 bytes.
  The `jal` at 0x864 calls `gfxtable_readerlock` with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x8c0 calls `gfxtable_readerunlock` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x878 is taken when s0(?) == 0 -> B6 and falls through when s0(?) != 0 -> B1.
  The `beq` branch at 0x884 is taken when a1(?) == s1(=a0) -> B6 and falls through when a1(?) != s1(=a0) -> B2.
  The `beq` branch at 0x890 is taken when s0(?) == 0 -> B6 and falls through when s0(?) != 0 -> B3.
  The `beq` branch at 0x89c is taken when a2(?) == s1(=a0) -> B6 and falls through when a2(?) != s1(=a0) -> B4.
  The `beq` branch at 0x8a8 is taken when s0(?) == 0 -> B6 and falls through when s0(?) != 0 -> B5.
  The `bne` branch at 0x8b4 is taken when a3(?) != s1(=a0) -> B2 and falls through when a3(?) == s1(=a0) -> B6.
  The return at 0x8d4 has v0 = ?.

- `gthread_find_gfxp` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x8dc (n64).
  It occupies 56 bytes.
  The `jal` at 0x8e4 calls `gthread_find` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x8ec is taken when v0(=ret(gthread_find)) == 0 -> B4 and falls through when v0(=ret(gthread_find)) != 0 -> B1.
  The `beq` branch at 0x8f8 is taken when a2(=[ret(gthread_find)+16]:8) == 0 -> B4 and falls through when a2(=[ret(gthread_find)+16]:8) != 0 -> B2.
  The return at 0x904 has v0 = ?.

- `gthread_scan` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x914 (n64).
  It occupies 336 bytes.
  The `jalr` at 0x92c calls `(unknown callee)` with a0=0x0, a1=a1 at entry (arg1), a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x968 calls `gfxtable_readerlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9d8 calls `gfxtable_readerunlock` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x9f8 calls `(unknown callee)` with a0=0x0, a1=a1 at entry (arg1), a2=0x2, a3=a0 at entry (arg0).
  The `jalr` at 0xa10 calls `(unknown callee)` with a0=?, a1=a1 at entry (arg1), a2=0x1, a3=?, a4=a0 at entry (arg0).
  The `jal` at 0xa30 calls `gfxtable_readerunlock` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x93c is taken when v0(=ret(?)) == 0 -> B2 and falls through when v0(=ret(?)) != 0 -> B1.
  The `bne` branch at 0x978 is taken when s0(?) < 0x10 (signed) -> B3 and falls through when s0(?) >= 0x10 (signed) -> B4.
  The `beq` branch at 0x994 is taken when s0(?) == 0 -> B8 and falls through when s0(?) != 0 -> B6.
  The `beq` branch at 0x9a4 is taken when (t9(?) & 0x4) == 0 -> B13 and falls through when (t9(?) & 0x4) != 0 -> B7.
  The `bne` branch at 0x9b0 is taken when s0(?) != 0 -> B6 and falls through when s0(?) == 0 -> B8.
  The `bne` branch at 0x9c4 is taken when s1(?) < 0x10 (signed) -> B5 and falls through when s1(?) >= 0x10 (signed) -> B10.
  The `bne` branch at 0x9e8 is taken when s0(?) < 0x10 (signed) -> B11 and falls through when s0(?) >= 0x10 (signed) -> B12.
  The `beq` branch at 0xa18 is taken when v0(=ret(?)) == 0 -> B17 and falls through when v0(=ret(?)) != 0 -> B14.
  The `bne` branch at 0xa40 is taken when s0(?) < 0x10 (signed) -> B15 and falls through when s0(?) >= 0x10 (signed) -> B16.
  The `bne` branch at 0xa54 is taken when s0(?) != 0 -> B6 and falls through when s0(?) == 0 -> B18.
  The return at 0x954 has v0 = ?.

- `GfxRegisterBoard` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0xa64 (n64).
  It occupies 228 bytes.
  The `sd` at 0xaac stores 8 bytes from v0 to (sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3)) +0x0 (value ret(kern_malloc)).
  The `sd` at 0xac8 stores 8 bytes from t1 to [(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8 +0x38 (value a0).
  The `sd` at 0xae0 stores 8 bytes from a0 to [(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8 +0x40 (value a1).
  The `sd` at 0xaf8 stores 8 bytes from a6 to [(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8 +0x0 (value a2).
  The `sw` at 0xb0c stores 4 bytes from a3 to [(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8 +0x18 (value [sym(GfxNumberOfBoards)]).
  The `sw` at 0xb1c stores 4 bytes from a2 to sym(GfxNumberOfBoards) +0x0 (value [sym(GfxNumberOfBoards)]+1).
  The `jal` at 0xa88 calls `kern_malloc` with a0=0x48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xaa8 calls `bzero` with a0=ret(kern_malloc), a1=0x48, a2=?, a3=?.
  The `jal` at 0xb18 calls `RRM_Init` with a0=a1 at entry (arg1), a1=?, a2=[sym(GfxNumberOfBoards)]+1, a3=[sym(GfxNumberOfBoards)], a4=[(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8, a5=([sym(GfxNumberOfBoards)] << 0x3), a6=a2 at entry (arg2), a7=[(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8.
  The `jal` at 0xb38 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa80 is taken when at(=[sym(GfxNumberOfBoards)]) >= v0(=[sym(GfxBoardLimit)]) (signed) -> B3 and falls through when at(=[sym(GfxNumberOfBoards)]) < v0(=[sym(GfxBoardLimit)]) (signed) -> B1.
  The return at 0xb28 has v0 = one of -0x1, 0x0.

- `GfxAddHwgraphEdge` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0xb48 (n64).
  It occupies 224 bytes.
  The `jal` at 0xbc0 calls `graph_info_add_LBL` with a0=[sym(hwgraph)]:8, a1=a0 at entry (arg0), a2=sym(.rodata), a3=0x0.
  The `jal` at 0xbe0 calls `sprintf` with a0=sp-32, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xbf4 calls `hwgraph_edge_add` with a0=[sym(.sdata)+24], a1=a0 at entry (arg0), a2=sp-32, a3=?.
  The `jal` at 0xc18 calls `hwgraph_path_add` with a0=[sym(hwgraph_root)], a1=sym(.rodata), a2=sym(.sdata)+24, a3=[sym(.sdata)+24], a4=-0x1.
  The `beq` branch at 0xb68 is taken when at(=[[sym(GfxBoards)]:8+64]:8) == a1 -> B4 and falls through when at(=[[sym(GfxBoards)]:8+64]:8) != a1 -> B1.
  The `beq` branch at 0xb88 is taken when v0(?) == a1 -> B4 and falls through when v0(?) != a1 -> B3.
  The `bne` branch at 0xba4 is taken when v1(?) != a1 -> B2 and falls through when v1(?) == a1 -> B4.
  The `beq` branch at 0xbd0 is taken when a3(=[sym(.sdata)+24]) == a4(=-0x1) -> B6 and falls through when a3(=[sym(.sdata)+24]) != a4(=-0x1) -> B5.
  The return at 0xc04 has v0 = ret(hwgraph_edge_add).

- `gfx_disp` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0xc28 (n64).
  It occupies 308 bytes.
  The `jal` at 0xc30 calls `gthread_find` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xc6c calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd44 calls `valusema` with a0=?, a1=?, a2=?, a3=?, a5=[[ret(gthread_find)+24]:8+12].
  The `beq` branch at 0xc44 is taken when v0(=ret(gthread_find)) == 0 -> B3 and falls through when v0(=ret(gthread_find)) != 0 -> B1.
  The `beq` branch at 0xc50 is taken when v0(=[ret(gthread_find)+16]:8) == 0 -> B3 and falls through when v0(=[ret(gthread_find)+16]:8) != 0 -> B2.
  The `beq` branch at 0xc5c is taken when s0(?) == 0 -> B17 and falls through when s0(?) != 0 -> B4.
  The `beq` branch at 0xc74 is taken when v0(=ret(?)) == 0 -> B14 and falls through when v0(=ret(?)) != 0 -> B6.
  The `beq` branch at 0xc80 is taken when v0(=[ret(gthread_find)+24]:8) == 0 -> B8 and falls through when v0(=[ret(gthread_find)+24]:8) != 0 -> B7.
  The `beq` branch at 0xc90 is taken when (at(?) & 0x8) == 0 -> B18 and falls through when (at(?) & 0x8) != 0 -> B8.
  The `beq` branch at 0xc9c is taken when s0(?) == 0 -> B17 and falls through when s0(?) != 0 -> B10.
  The `beq` branch at 0xca8 is taken when s1(?) == 0 -> B8 and falls through when s1(?) != 0 -> B12.
  The `blez` branch at 0xcb4 is taken when v0(?) <= 0 (signed) -> B6 and falls through when v0(?) > 0 (signed) -> B13.
  The `bne` branch at 0xcc0 is taken when v0(?) != 0 -> B5 and falls through when v0(?) == 0 -> B14.
  The `bne` branch at 0xcd0 is taken when (v1(?) & 0x3) != 0 -> B16 and falls through when (v1(?) & 0x3) == 0 -> B15.
  The `bne` branch at 0xcdc is taken when a0(?) != s0(?) -> B6 and falls through when a0(?) == s0(?) -> B16.
  The `bne` branch at 0xd08 is taken when a1(?) != s0(?) -> B8 and falls through when a1(?) == s0(?) -> B19.
  The `bne` branch at 0xd14 is taken when a2(?) != 0 -> B8 and falls through when a2(?) == 0 -> B20.
  The `bne` branch at 0xd24 is taken when (a3(=[ret(gthread_find)+8]) & 0x4) != 0 -> B8 and falls through when (a3(=[ret(gthread_find)+8]) & 0x4) == 0 -> B21.
  The `bne` branch at 0xd30 is taken when a4(?) != 0 -> B8 and falls through when a4(?) == 0 -> B22.
  The `beq` branch at 0xd3c is taken when a5(=[[ret(gthread_find)+24]:8+12]) == 0 -> B8 and falls through when a5(=[[ret(gthread_find)+24]:8+12]) != 0 -> B23.
  The `bgezl` branch at 0xd4c is taken when v0(=ret(valusema)) >= 0 (signed) -> B9 and falls through when v0(=ret(valusema)) < 0 (signed) -> B24.
  The return at 0xcf4 has v0 = one of 0x0, 0x1.

- `gfx_fault` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0xd5c (n64).
  It occupies 216 bytes.
  The `jal` at 0xd6c calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xd78 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jalr` at 0xdb8 calls `(unknown callee)` with a0=a1 at entry (arg1), a1=[[a1+32]:8+112]:8, a2=?, a3=?.
  The `jal` at 0xdc4 calls `RRM_ValidFault` with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0xe14 calls `psema` with a0=a1+80, a1=0x19, a2=?, a3=?.
  The `jal` at 0xe24 calls `vsema` with a0=a1+80, a1=?, a2=[ret(gthread_find)+24]:8, a3=?.
  The `beq` branch at 0xd84 is taken when v0(=ret(gthread_find)) == 0 -> B8 and falls through when v0(=ret(gthread_find)) != 0 -> B1.
  The `beq` branch at 0xd90 is taken when at(=[ret(gthread_find)+24]:8) == 0 -> B3 and falls through when at(=[ret(gthread_find)+24]:8) != 0 -> B2.
  The `beq` branch at 0xd9c is taken when (a0(=[a1+4]) & 0x8) == 0 -> B11 and falls through when (a0(=[a1+4]) & 0x8) != 0 -> B3.
  The `beq` branch at 0xda8 is taken when (a0(=[a1+4]) & 0x1) == 0 -> B5 and falls through when (a0(=[a1+4]) & 0x1) != 0 -> B4.
  The `beq` branch at 0xdd0 is taken when a2(=[ret(gthread_find)+24]:8) == 0 -> B7 and falls through when a2(=[ret(gthread_find)+24]:8) != 0 -> B6.
  The `beq` branch at 0xde0 is taken when (a3(=[a1+4]) & 0x8) == 0 -> B12 and falls through when (a3(=[a1+4]) & 0x8) != 0 -> B7.
  The `bltz` branch at 0xde8 is taken when v0(?) < 0 (signed) -> B10 and falls through when v0(?) >= 0 (signed) -> B8.
  The return at 0xe00 has v0 = one of 0x0, 0x1.

- `gfx_exit` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0xe34 (n64).
  It occupies 428 bytes.
  The `sw` at 0xe70 stores 4 bytes from at to ret(gthread_find) +0x8 (value ([ret(gthread_find)+8] | 0x4)).
  The `sd` at 0xfb4 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `jal` at 0xe3c calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe48 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0xe7c calls `GfxListReaderLock` with a0=[ret(gthread_find)+16]:8, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0xea4 calls `GfxListReaderUnlock` with a0=[ret(gthread_find)+16]:8, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jalr` at 0xed0 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf24 calls `mutex_spinlock` with a0=[ret(gthread_find)+16]:8+16, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0xf30 calls `threadgroup_refcnt` with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf4c calls `mutex_spinunlock` with a0=[ret(gthread_find)+16]:8+16, a1=?, a2=?, a3=?.
  The `jal` at 0xf54 calls `GfxListReaderUnlock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf90 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xfa8 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfbc calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfc4 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xe54 is taken when v0(=ret(gthread_find)) == 0 -> B17 and falls through when v0(=ret(gthread_find)) != 0 -> B1.
  The `beq` branch at 0xe6c is taken when v0(=[ret(gthread_find)+24]:8) == 0 -> B6 and falls through when v0(=[ret(gthread_find)+24]:8) != 0 -> B2.
  The `beq` branch at 0xe74 is taken when a1(=[ret(gthread_find)+16]:8) == 0 -> B21 and falls through when a1(=[ret(gthread_find)+16]:8) != 0 -> B3.
  The `beq` branch at 0xe8c is taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0 -> B5 and falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0 -> B4.
  The `beq` branch at 0xe9c is taken when (v0(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0 -> B18 and falls through when (v0(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0 -> B5.
  The `beq` branch at 0xeb4 is taken when a1(=[ret(gthread_find)+16]:8) == 0 -> B8 and falls through when a1(=[ret(gthread_find)+16]:8) != 0 -> B7.
  The `bnel` branch at 0xec0 is taken when s0(?) != 0 -> B12 and falls through when s0(?) == 0 -> B9.
  The `beq` branch at 0xedc is taken when s0(?) == 0 -> B15 and falls through when s0(?) != 0 -> B11.
  The `beq` branch at 0xee8 is taken when v0(?) == 0 -> B14 and falls through when v0(?) != 0 -> B13.
  The `bne` branch at 0xef4 is taken when a1(?) != 0 -> B10 and falls through when a1(?) == 0 -> B14.
  The `bne` branch at 0xf00 is taken when s0(?) != 0 -> B11 and falls through when s0(?) == 0 -> B15.
  The `beq` branch at 0xf3c is taken when v0(=ret(threadgroup_refcnt)) == v1(=0x1) -> B23 and falls through when v0(=ret(threadgroup_refcnt)) != v1(=0x1) -> B19.
  The `beq` branch at 0xf70 is taken when s0(?) == 0 -> B19 and falls through when s0(?) != 0 -> B23.
  The `beq` branch at 0xf7c is taken when a0(?) == 0 -> B22 and falls through when a0(?) != 0 -> B24.
  The `bne` branch at 0xf88 is taken when a1(?) != s0(?) -> B22 and falls through when a1(?) == s0(?) -> B25.
  The `beq` branch at 0xfa0 is taken when a4(?) == 0 -> B27 and falls through when a4(?) != 0 -> B26.
  The `bne` branch at 0xfd0 is taken when s0(?) != 0 -> B23 and falls through when s0(?) == 0 -> B28.
  The return at 0xf14 has v0 = 0x0.

- `GfxKiller` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x12b0 (n64).
  It occupies 252 bytes.
  The `jal` at 0x1314 calls `GfxListReaderLock` with a0=[a0+16]:8, a1=[a0+24]:8, a2=0x0, a3=a3 at entry (arg3), a4=0x1.
  The `jal` at 0x1368 calls `GfxListReaderUnlock` with a0=[a0+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1388 calls `threadhandle_to_proc` with a0=[a0]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1394 calls `psignal` with a0=ret(threadhandle_to_proc), a1=[a1], a2=?, a3=?.
  The `beq` branch at 0x12c8 is taken when a2 == 0 -> B19 and falls through when a2 != 0 -> B1.
  The `beq` branch at 0x12d4 is taken when a2 == at(=0x2) -> B20 and falls through when a2 != at(=0x2) -> B2.
  The `bne` branch at 0x12dc is taken when a2 != a4(=0x1) -> B20 and falls through when a2 == a4(=0x1) -> B3.
  The `beq` branch at 0x12e8 is taken when a0(=[a1+16]:8) == 0 -> B22 and falls through when a0(=[a1+16]:8) != 0 -> B4.
  The `bne` branch at 0x12f0 is taken when a0(=[a1+16]:8) != s0(=a0) -> B6 and falls through when a0(=[a1+16]:8) == s0(=a0) -> B5.
  The `beq` branch at 0x12fc is taken when v0(=[[a1+16]:8+24]:8) == a1(=[a0+24]:8) -> B20 and falls through when v0(=[[a1+16]:8+24]:8) != a1(=[a0+24]:8) -> B6.
  The `beq` branch at 0x1304 is taken when a1(=[a0+24]:8) == 0 -> B9 and falls through when a1(=[a0+24]:8) != 0 -> B7.
  The `beq` branch at 0x130c is taken when a0(=[a0+16]:8) == 0 -> B11 and falls through when a0(=[a0+16]:8) != 0 -> B8.
  The `beq` branch at 0x1320 is taken when a0(=[a0+16]:8) == 0 -> B11 and falls through when a0(=[a0+16]:8) != 0 -> B10.
  The `beq` branch at 0x132c is taken when a2(?) == 0 -> B15 and falls through when a2(?) != 0 -> B12.
  The `beq` branch at 0x133c is taken when v1(?) == a0(=[a1+8]:8) -> B21 and falls through when v1(?) != a0(=[a1+8]:8) -> B14.
  The `bne` branch at 0x1348 is taken when a2(?) != 0 -> B13 and falls through when a2(?) == 0 -> B15.
  The `beq` branch at 0x1354 is taken when a0(=[a0+24]:8) == 0 -> B20 and falls through when a0(=[a0+24]:8) != 0 -> B17.
  The `beq` branch at 0x1360 is taken when a0(=[a0+16]:8) == 0 -> B20 and falls through when a0(=[a0+16]:8) != 0 -> B18.
  The return at 0x1380 has v0 = 0x0.

- `gfxcleanup` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x13ac (n64).
  It occupies 52 bytes.
  The `jal` at 0x13c8 calls `spinlock_destroy` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x13d0 calls `kern_free` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x13b8 is taken when at(=[a0+56]) == 0 -> B2 and falls through when at(=[a0+56]) != 0 -> B1.
  The return at 0x13c0 has v0 = ?.

- `GfxOpen` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x13e0 (n64).
  It occupies 364 bytes.
  The `sd` at 0x14dc stores 8 bytes from s0 to ? (base unknown).
  The `sd` at 0x14ec stores 8 bytes from s0 to ? (base unknown).
  The `sd` at 0x14f8 stores 8 bytes from a2 to ? (base unknown) (value a0).
  The `sd` at 0x1504 stores 8 bytes from a3 to ? (base unknown) (value a0+144).
  The `sd` at 0x1508 stores 8 bytes from s0 to a0 (arg0 at entry) +0xb8.
  The `sd` at 0x150c stores 8 bytes from s0 to a0 (arg0 at entry) +0x28.
  The `sw` at 0x151c stores 4 bytes from a1 to ? (base unknown).
  The `sw` at 0x1548 stores 4 bytes from v0 to a1 (arg1 at entry) +0x0 (value ret(makedevice)).
  The `jal` at 0x140c calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x13.
  The `jal` at 0x1418 calls `gthread_find_gfxp` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x1464 calls `curthreadhandle` with a0=0x9, a1=?, a2=?, a3=?, a5=0x13.
  The `jal` at 0x146c calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x147c calls `gthread_scan` with a0=sym(GfxKiller), a1=sp-64, a2=?, a3=?.
  The `jal` at 0x1484 calls `streams_unlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x149c calls `delay` with a0=0x64, a1=?, a2=?, a3=?.
  The `jal` at 0x14b4 calls `streams_lock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x14e8 calls `RRM_init_panes` with a0=?, a1=?, a2=?, a3=?, a5=0x1.
  The `jal` at 0x1520 calls `getemajor` with a0=[a1], a1=?, a2=a0 at entry (arg0), a3=a0+144.
  The `jal` at 0x1530 calls `makedevice` with a0=ret(getemajor), a1=?, a2=?, a3=?.
  The `beq` branch at 0x13f4 is taken when a3 == at(=0x2) -> B2 and falls through when a3 != at(=0x2) -> B1.
  The `beq` branch at 0x1424 is taken when v0(=ret(gthread_find_gfxp)) == 0 -> B11 and falls through when v0(=ret(gthread_find_gfxp)) != 0 -> B3.
  The `beq` branch at 0x1430 is taken when v0(=[ret(gthread_find_gfxp)+24]:8) == 0 -> B5 and falls through when v0(=[ret(gthread_find_gfxp)+24]:8) != 0 -> B4.
  The `bne` branch at 0x1440 is taken when v0(?) != 0 -> B4 and falls through when v0(?) == 0 -> B5.
  The `bne` branch at 0x144c is taken when v0(?) != 0 -> B7 and falls through when v0(?) == 0 -> B6.
  The `beq` branch at 0x1494 is taken when a1(?) == 0 -> B9 and falls through when a1(?) != 0 -> B8.
  The `bne` branch at 0x14ac is taken when a2(?) != 0 -> B8 and falls through when a2(?) == 0 -> B9.
  The `beq` branch at 0x14c4 is taken when a3(?) == 0 -> B12 and falls through when a3(?) != 0 -> B10.
  The return at 0x1404 has v0 = one of 0x0, 0x1, 0x13.

- `GfxUnmanage` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x154c (n64).
  It occupies 388 bytes.
  The `sd` at 0x1574 stores 8 bytes from zero to [a0+8]:8 +0x8 (value 0x0).
  The `sd` at 0x157c stores 8 bytes from zero to [a0+40]:8 +0x0 (value 0x0).
  The `sd` at 0x1584 stores 8 bytes from zero to [a0+8]:8 +0x20 (value 0x0).
  The `sd` at 0x158c stores 8 bytes from zero to [a0+8]:8 +0x28 (value 0x0).
  The `sd` at 0x15fc stores 8 bytes from zero to [a0+40]:8 +0x48 (value 0x0).
  The `sd` at 0x1634 stores 8 bytes from s0 to [a0+40]:8 +0x48 (value a0).
  The `sd` at 0x1688 stores 8 bytes from zero to [a0+40]:8 +0x48 (value 0x0).
  The `jal` at 0x159c calls `curthreadhandle` with a0=?, a1=?, a2=[a0+40]:8, a3=0x9.
  The `jal` at 0x15a4 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x15b4 calls `gthread_scan` with a0=sym(GfxKiller), a1=sp-64, a2=?, a3=?.
  The `jal` at 0x15d8 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x15f0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=?, a2=?, a3=[[a0+32]:8+192]:8.
  The `jal` at 0x1604 calls `vsema` with a0=[a0+40]:8+56, a1=[a0+40]:8, a2=?, a3=?.
  The `jal` at 0x160c calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1628 calls `psema` with a0=[a0+40]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1648 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x1670 calls `cn_init` with a0=0x0, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1690 calls `vsema` with a0=[a0+40]:8+56, a1=?, a2=?, a3=?, a5=[[a0+40]:8+72]:8.
  The `jal` at 0x1698 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x16a8 calls `splhi` with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x16c0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=?, a2=?, a3=[[a0+32]:8+192]:8.
  The `bne` branch at 0x1560 is taken when at(=[[a0+40]:8+72]:8) != a0 -> B10 and falls through when at(=[[a0+40]:8+72]:8) == a0 -> B1.
  The `beq` branch at 0x156c is taken when v0(=[a0+8]:8) == 0 -> B4 and falls through when v0(=[a0+8]:8) != 0 -> B3.
  The `beq` branch at 0x15c8 is taken when v1(=[[a0+8]:8+24]) == 0 -> B13 and falls through when v1(=[[a0+8]:8+24]) != 0 -> B5.
  The `bne` branch at 0x15d0 is taken when v0(=[[a0+40]:8+72]:8) != s0(=a0) -> B9 and falls through when v0(=[[a0+40]:8+72]:8) == s0(=a0) -> B6.
  The `beq` branch at 0x15e8 is taken when a3(=[[a0+32]:8+192]:8) == 0 -> B8 and falls through when a3(=[[a0+32]:8+192]:8) != 0 -> B7.
  The `beq` branch at 0x1640 is taken when a2(=[[a0+40]:8+104]) == 0 -> B1 and falls through when a2(=[[a0+40]:8+104]) != 0 -> B11.
  The `bne` branch at 0x1658 is taken when a4(=[[a0+40]:8+104]) != 0 -> B11 and falls through when a4(=[[a0+40]:8+104]) == 0 -> B12.
  The `beq` branch at 0x1668 is taken when v0(=[[a0+40]:8+72]:8) == s0(=a0) -> B16 and falls through when v0(=[[a0+40]:8+72]:8) != s0(=a0) -> B14.
  The `bne` branch at 0x1680 is taken when a5(=[[a0+40]:8+72]:8) != s0(=a0) -> B9 and falls through when a5(=[[a0+40]:8+72]:8) == s0(=a0) -> B15.
  The `beq` branch at 0x16b8 is taken when a3(=[[a0+32]:8+192]:8) == 0 -> outside and falls through when a3(=[[a0+32]:8+192]:8) != 0 -> B17.
  The return at 0x161c has v0 = ?.

- `GfxClose` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x16d0 (n64).
  It occupies 108 bytes.
  The `sw` at 0x170c stores 4 bytes from v1 to [a0+40]:8 +0x38.
  The `jal` at 0x1710 calls `gfxcleanup` with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x172c calls `GfxUnmanage` with a0=[a0+40]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x16e0 is taken when at(=[[a0+40]:8+40]:8) != 0 -> B3 and falls through when at(=[[a0+40]:8+40]:8) == 0 -> B1.
  The `beq` branch at 0x16ec is taken when a0(=[[a0+40]:8+8]:8) == 0 -> B3 and falls through when a0(=[[a0+40]:8+8]:8) != 0 -> B2.
  The `beq` branch at 0x16f8 is taken when v0(=[[[a0+40]:8+8]:8+8]:8) == s0(=[a0+40]:8) -> B5 and falls through when v0(=[[[a0+40]:8+8]:8+8]:8) != s0(=[a0+40]:8) -> B3.
  The return at 0x1724 has v0 = 0x0.

- `GfxProto` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x173c (n64).
  It occupies 260 bytes.
  The `sh` at 0x178c stores 2 bytes from a1 to [[a0+40]:8+8]:8 +0x30 (value [[a1+24]:8+4]:2).
  The `sh` at 0x17a4 stores 2 bytes from v1 to [[a0+40]:8+8]:8 +0x32 (value [[a1+24]:8+6]:2).
  The `sw` at 0x17a8 stores 4 bytes from v0 to [a1+24]:8 +0x0 (value 0x514d4853).
  The `sb` at 0x17f8 stores 1 bytes from a4 to [a1+40]:8 +0x1e (value 0x8a).
  The `jal` at 0x17ac calls `qreply` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[a0+40]:8+8]:8, a3=a3 at entry (arg3), a5=[a1+24]:8, a6=0x53484951, a7=0x53484d51.
  The `jalr` at 0x17d4 calls `(unknown callee)` with a0=[[a0+40]:8+40]:8, a1=[[a1+24]:8+4], a2=[[a1+24]:8+8], a3=[[[a0+40]:8+32]:8+48]:8, a5=[a1+24]:8, a6=[[a0+40]:8+32]:8, a7=0x53484d51.
  The `jal` at 0x17f4 calls `qreply` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=0x8a, a5=[a1+40]:8.
  The `jal` at 0x1814 calls `freemsg` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1828 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=[[a1+24]:8], a3=a3 at entry (arg3), a5=[a1+24]:8, a6=0x53484951, a7=0x53484d51.
  The `jal` at 0x1830 calls `freemsg` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x176c is taken when a2(=[[a1+24]:8]) == at(=0x66) -> B4 and falls through when a2(=[[a1+24]:8]) != at(=0x66) -> B1.
  The `beq` branch at 0x1774 is taken when a2(=[[a1+24]:8]) == a6(=0x53484951) -> B4 and falls through when a2(=[[a1+24]:8]) != a6(=0x53484951) -> B2.
  The `bne` branch at 0x177c is taken when a2(=[[a1+24]:8]) != a7(=0x53484d51) -> B9 and falls through when a2(=[[a1+24]:8]) == a7(=0x53484d51) -> B3.
  The `beq` branch at 0x17c0 is taken when a6(=[[a0+40]:8+32]:8) == 0 -> B8 and falls through when a6(=[[a0+40]:8+32]:8) != 0 -> B5.
  The `beq` branch at 0x17dc is taken when v0(=ret(?)) == 0 -> B8 and falls through when v0(=ret(?)) != 0 -> B6.
  The return at 0x180c has v0 = 0x0.

- `GfxWput` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x1840 (n64).
  It occupies 156 bytes.
  The `jal` at 0x188c calls `flushq` with a0=a0 at entry (arg0), a1=0x0, a2=[[a1+40]:8+30]:1, a3=?, a5=0x86.
  The `jal` at 0x1894 calls `freemsg` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x18b4 calls `GfxProto` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[a1+40]:8+30]:1, a3=a3 at entry (arg3), a5=0x86.
  The `jal` at 0x18cc calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=[[a1+40]:8+30]:1, a3=a3 at entry (arg3), a5=0x86.
  The `beq` branch at 0x1860 is taken when a2(=[[a1+40]:8+30]:1) == at(=0x1) -> B7 and falls through when a2(=[[a1+40]:8+30]:1) != at(=0x1) -> B1.
  The `beq` branch at 0x1868 is taken when a2(=[[a1+40]:8+30]:1) == v0(=0x83) -> B7 and falls through when a2(=[[a1+40]:8+30]:1) != v0(=0x83) -> B2.
  The `bne` branch at 0x1870 is taken when a2(=[[a1+40]:8+30]:1) != a5(=0x86) -> B8 and falls through when a2(=[[a1+40]:8+30]:1) == a5(=0x86) -> B3.
  The `beq` branch at 0x1884 is taken when (a3(=[[a1+24]:8]:1) & 0x2) == 0 -> B5 and falls through when (a3(=[[a1+24]:8]:1) & 0x2) != 0 -> B4.
  The return at 0x18ac has v0 = ?.

- `sendMsg` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x18dc (n64).
  It occupies 256 bytes.
  The `sd` at 0x192c stores 8 bytes from a3 to a0 (arg0 at entry) +0x20.
  The `sh` at 0x1950 stores 2 bytes from a5 to [a0+32]:8 +0x2 (value [[a1]:8+50]:2).
  The `sb` at 0x1958 stores 1 bytes from a4 to [a0+32]:8 +0x5 (value [a1+12]).
  The `sh` at 0x1988 stores 2 bytes from t1 to ? (base unknown) (value [[a1]:8+48]:2).
  The `sb` at 0x1994 stores 1 bytes from t0 to ? (base unknown) (value [[a1]:8+50]:2).
  The `sb` at 0x19a4 stores 1 bytes from t0 to ? (base unknown) (value [a1+8]:1).
  The `sw` at 0x19b0 stores 4 bytes from a6 to ? (base unknown).
  The `jal` at 0x1940 calls `bzero` with a0=[a0+32]:8, a1=?, a2=[a1+12], a3=?, a4=[a1+12].
  The `jal` at 0x19bc calls `putq` with a0=[[a1]:8+32]:8, a1=a0 at entry (arg0), a2=?, a3=?, a4=-0x1, a5=[[a1]:8+50]:2.
  The `beq` branch at 0x18fc is taken when a3(=[[a1]:8+8]:8) == 0 -> B5 and falls through when a3(=[[a1]:8+8]:8) != 0 -> B1.
  The `beq` branch at 0x190c is taken when (a4(=[[[a1]:8+8]:8+56]) & 0x1) == 0 -> B6 and falls through when (a4(=[[[a1]:8+8]:8+56]) & 0x1) != 0 -> B2.
  The `beq` branch at 0x1968 is taken when a3(=[a1+12]-1) == a4(=-0x1) -> B4 and falls through when a3(=[a1+12]-1) != a4(=-0x1) -> B3.
  The `bne` branch at 0x19ac is taken when a3(?) != a4(=-0x1) -> B3 and falls through when a3(?) == a4(=-0x1) -> B4.
  The return at 0x19d4 has v0 = ?.

- `GfxDelayedMessage` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x19dc (n64).
  It occupies 160 bytes.
  The `jal` at 0x19fc calls `allocb` with a0=?, a1=0x3, a2=[a0+12], a3=a3 at entry (arg3).
  The `jal` at 0x1a24 calls `bufcall` with a0=?, a1=0x3, a2=sym(GfxDelayedMessage), a3=a0 at entry (arg0).
  The `jal` at 0x1a3c calls `sendMsg` with a0=ret(allocb), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1a44 calls `wakeup` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1a4c calls `kern_free` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1a6c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x1a04 is taken when v0(=ret(allocb)) != 0 -> B3 and falls through when v0(=ret(allocb)) == 0 -> B1.
  The `beq` branch at 0x1a2c is taken when v0(=ret(bufcall)) == 0 -> B6 and falls through when v0(=ret(bufcall)) != 0 -> B2.
  The return at 0x1a60 has v0 = one of 0x0, 0x1.

- `GfxSendMessage` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x1a7c (n64).
  It occupies 348 bytes.
  The `jal` at 0x1ab8 calls `allocb` with a0=?, a1=0x3, a2=?, a3=?.
  The `jal` at 0x1adc calls `kern_malloc` with a0=([a0+12] << 0x2)+52, a1=?, a2=?, a3=?.
  The `jal` at 0x1af4 calls `bcopy` with a0=a0 at entry (arg0), a1=ret(kern_malloc), a2=?, a3=?.
  The `jal` at 0x1b14 calls `bufcall` with a0=?, a1=0x3, a2=sym(GfxDelayedMessage), a3=ret(kern_malloc).
  The `jal` at 0x1b38 calls `sleep` with a0=?, a1=0x19, a2=?, a3=?.
  The `jal` at 0x1b5c calls `sendMsg` with a0=ret(allocb), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1b84 calls `streams_unlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b94 calls `streams_lock` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1bac calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1bc0 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1bc8 calls `kern_free` with a0=ret(kern_malloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1a98 is taken when a0 == 0 -> B16 and falls through when a0 != 0 -> B1.
  The `beq` branch at 0x1aa0 is taken when a1 == 0 -> B19 and falls through when a1 != 0 -> B2.
  The `bne` branch at 0x1ac0 is taken when v0(=ret(allocb)) != 0 -> B14 and falls through when v0(=ret(allocb)) == 0 -> B4.
  The `bne` branch at 0x1ac8 is taken when s1(=a1) != 0 -> B20 and falls through when s1(=a1) == 0 -> B5.
  The `beq` branch at 0x1ae4 is taken when v0(=ret(kern_malloc)) == 0 -> B20 and falls through when v0(=ret(kern_malloc)) != 0 -> B6.
  The `beq` branch at 0x1b1c is taken when v0(=ret(bufcall)) == 0 -> B21 and falls through when v0(=ret(bufcall)) != 0 -> B7.
  The `beq` branch at 0x1b28 is taken when s1(=a1) == 0 -> B18 and falls through when s1(=a1) != 0 -> B9.
  The `beq` branch at 0x1b30 is taken when s2(?) == 0 -> B11 and falls through when s2(?) != 0 -> B10.
  The `beq` branch at 0x1b64 is taken when s1(=a1) == 0 -> B17 and falls through when s1(=a1) != 0 -> B15.
  The return at 0x1b54 has v0 = one of 0x0, 0x1.

- `GfxMessage` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x1bd8 (n64).
  It occupies 28 bytes.
  The `jal` at 0x1be0 calls `GfxSendMessage` with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1bec has v0 = ret(GfxSendMessage).

- `GfxIntrMessage` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x1bf4 (n64).
  It occupies 28 bytes.
  The `jal` at 0x1bfc calls `GfxSendMessage` with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1c08 has v0 = ret(GfxSendMessage).

- `GfxRqService` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x1c10 (n64).
  It occupies 124 bytes.
  The `jal` at 0x1c20 calls `getq` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1c30 calls `canput` with a0=[a0+24]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x1c4c calls `(unknown callee)` with a0=[a0+24]:8, a1=ret(getq), a2=?, a3=?.
  The `jal` at 0x1c54 calls `getq` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1c7c calls `putbq` with a0=a0 at entry (arg0), a1=ret(getq), a2=?, a3=?.
  The `beq` branch at 0x1c28 is taken when v0(=ret(getq)) == 0 -> B3 and falls through when v0(=ret(getq)) != 0 -> B1.
  The `beq` branch at 0x1c38 is taken when v0(=ret(canput)) == 0 -> B5 and falls through when v0(=ret(canput)) != 0 -> B2.
  The `bne` branch at 0x1c5c is taken when v0(=ret(getq)) != 0 -> B1 and falls through when v0(=ret(getq)) == 0 -> B3.
  The return at 0x1c74 has v0 = one of 0x0, 0x1.

- `GfxDetach` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x1c8c (n64).
  It occupies 244 bytes.
  The `sw` at 0x1d08 stores 4 bytes from zero to [[a0+8]:8]:8 +0x1c (value 0x0).
  The `sw` at 0x1d0c stores 4 bytes from zero to [[a0+8]:8]:8 +0x18 (value 0x0).
  The `sw` at 0x1d10 stores 4 bytes from zero to [[a0+8]:8]:8 +0x14 (value 0x0).
  The `sw` at 0x1d14 stores 4 bytes from zero to [[a0+8]:8]:8 +0x10 (value 0x0).
  The `sd` at 0x1d1c stores 8 bytes from zero to [a0+8]:8 +0x10 (value 0x0).
  The `sd` at 0x1d28 stores 8 bytes from zero to a0 (arg0 at entry) +0x20 (value 0x0).
  The `sd` at 0x1d2c stores 8 bytes from zero to a0 (arg0 at entry) +0x8 (value 0x0).
  The `sd` at 0x1d34 stores 8 bytes from zero to a0 (arg0 at entry) +0x28 (value 0x0).
  The `sd` at 0x1d7c stores 8 bytes from zero to a0 (arg0 at entry) +0x30 (value 0x0).
  The `jal` at 0x1cb0 calls `gfxdd_lookup` with a0=[a0+48]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1cc0 calls `RRM_Exit` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1cd4 calls `streams_lock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1cec calls `streams_unlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d20 calls `streams_lock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d30 calls `streams_unlock` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1d50 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[[a0+32]:8+16]:8.
  The `jal` at 0x1d60 calls `GfxUnmanage` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1d70 calls `ddv_destroy_handle` with a0=[a0+48]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1c9c is taken when at(=[a0+32]:8) == 0 -> B7 and falls through when at(=[a0+32]:8) != 0 -> B1.
  The `beq` branch at 0x1ca8 is taken when a0(=[a0+48]:8) == 0 -> B3 and falls through when a0(=[a0+48]:8) != 0 -> B2.
  The `beq` branch at 0x1cb8 is taken when v0(=ret(gfxdd_lookup)) == 0 -> B10 and falls through when v0(=ret(gfxdd_lookup)) != 0 -> B3.
  The `bne` branch at 0x1ccc is taken when v0(=[a0+48]:8) != 0 -> B8 and falls through when v0(=[a0+48]:8) == 0 -> B4.
  The `beq` branch at 0x1ce4 is taken when v1(=[[a0+8]:8+8]:8) == s0(=a0) -> B9 and falls through when v1(=[[a0+8]:8+8]:8) != s0(=a0) -> B5.
  The `bne` branch at 0x1cfc is taken when a1(=[[a0+8]:8+16]:8) != s0(=a0) -> B7 and falls through when a1(=[[a0+8]:8+16]:8) == s0(=a0) -> B6.
  The return at 0x1d40 has v0 = ret(streams_unlock).

- `gfxinit` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x1d80 (n64).
  It occupies 196 bytes.
  The `sd` at 0x1e04 stores 8 bytes from v0 to sym(gfxinfo) +0x0 (value ret(kern_calloc)).
  The `sw` at 0x1e40 stores 4 bytes from a2 to sym(GfxDevLimit) +0x0 (value 0x20000).
  The `jal` at 0x1da8 calls `init_sema` with a0=sym(GfxBoardInitSema), a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x1dc4 calls `init_sema` with a0=sym(GfxBoardInitSema), a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x1dcc calls `processors_configured` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1dd4 calls `init_gfx_group_table` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ddc calls `init_gthread_table` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1de8 calls `kern_calloc` with a0=ret(processors_configured), a1=0x20, a2=?, a3=?.
  The `jal` at 0x1e08 calls `ksym_add` with a0=sym(.rodata), a1=ret(kern_calloc), a2=0x20, a3=ret(processors_configured), a4=0x20.
  The `jal` at 0x1e30 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=[sym(GfxDevLimit)], a3=0x20000, a4=0x20000.
  The `bne` branch at 0x1d90 is taken when at(=0x20000) < a2(=[sym(GfxDevLimit)]) (signed) -> B2 and falls through when at(=0x20000) >= a2(=[sym(GfxDevLimit)]) (signed) -> B1.
  The return at 0x1e18 has v0 = ret(ksym_add).

- `irisgl_sproc_setup_scan` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x1f28 (n64).
  It occupies 144 bytes.
  The `sw` at 0x1f80 stores 4 bytes from a0 to ret(gthread_create) +0x8 (value ([ret(gthread_create)+8] | 0x2)).
  The `jal` at 0x1f60 calls `gthread_create` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1f84 calls `GfxListWriterLock` with a0=[a1+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1f94 calls `gthread_attach_list` with a0=?, a1=[a1+16]:8, a2=?, a3=?.
  The `jal` at 0x1fa0 calls `GfxListWriterUnlock` with a0=[a1+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1fa8 calls `setgfxsched_thread` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x1f44 is taken when at(=[a1]:8) != a0 -> B2 and falls through when at(=[a1]:8) == a0 -> B1.
  The `bne` branch at 0x1f68 is taken when v0(=ret(gthread_create)) != 0 -> B4 and falls through when v0(=ret(gthread_create)) == 0 -> B3.
  The return at 0x1f58 has v0 = 0x0.

- `gfxopen` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x1fb8 (n64).
  It occupies 1208 bytes.
  The `sd` at 0x20f8 stores 8 bytes from zero to [ret(gthread_find)+16]:8 +0x18 (value 0x0).
  The `sd` at 0x21c4 stores 8 bytes from s2 to ? (base unknown) (value ret(kern_malloc)).
  The `sd` at 0x21c8 stores 8 bytes from s4 to ret(kern_malloc) +0x10 (value ret(curthreadhandle)).
  The `sd` at 0x21d0 stores 8 bytes from zero to ret(kern_malloc) +0x20 (value 0x0).
  The `sd` at 0x21e4 stores 8 bytes from zero to ret(kern_malloc) +0x28 (value 0x0).
  The `sd` at 0x21e8 stores 8 bytes from a3 to ret(kern_malloc) +0x60.
  The `sd` at 0x2210 stores 8 bytes from zero to ret(kern_malloc) +0x70 (value 0x0).
  The `sd` at 0x2214 stores 8 bytes from zero to ret(kern_malloc) +0x68 (value 0x0).
  The `sd` at 0x223c stores 8 bytes from a3 to ? (base unknown).
  The `sd` at 0x2264 stores 8 bytes from s2 to ? (base unknown) (value ret(kern_malloc)).
  The `sd` at 0x22b0 stores 8 bytes from s2 to ? (base unknown) (value ret(kern_malloc)).
  The `sw` at 0x22dc stores 4 bytes from a7 to ret(kern_malloc) +0x38 (value ([ret(kern_malloc)+56] | 0x2)).
  The `sw` at 0x22f8 stores 4 bytes from a5 to a0 (arg0 at entry) +0x0.
  The `sw` at 0x23bc stores 4 bytes from a6 to ret(kern_malloc) +0x4 (value ([ret(kern_malloc)+4] | 0x8)).
  The `sw` at 0x23d8 stores 4 bytes from a4 to a0 (arg0 at entry) +0x0.
  The `sd` at 0x23f4 stores 8 bytes from s2 to ? (base unknown) (value ret(kern_malloc)).
  The `sw` at 0x23f8 stores 4 bytes from s1 to ret(gfx_group_find) +0xc (value 0x1).
  The `jal` at 0x1fcc calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1fe0 calls `psema` with a0=sym(GfxBoardInitSema), a1=0x19, a2=?, a3=?.
  The `jal` at 0x1fe8 calls `is_gsn_bypass_thread` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x200c calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x20cc calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?, a4=[sym(GfxDevLimit)].
  The `jal` at 0x20fc calls `gthread_detach_list` with a0=ret(gthread_find), a1=?, a2=?, a3=?.
  The `jal` at 0x2104 calls `gthread_detach_group` with a0=ret(gthread_find), a1=?, a2=?, a3=?.
  The `jal` at 0x210c calls `gthread_destroy` with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2114 calls `gthread_create` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2124 calls `gfx_group_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2130 calls `gthread_find_gfxp` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2194 calls `kern_malloc` with a0=0x80, a1=?, a2=?, a3=?.
  The `jal` at 0x21a4 calls `kern_malloc` with a0=0x80, a1=?, a2=?, a3=?.
  The `jal` at 0x21c0 calls `bzero` with a0=ret(kern_malloc), a1=0x80, a2=?, a3=?.
  The `jal` at 0x21ec calls `init_spinlock` with a0=ret(kern_malloc), a1=sym(.rodata), a2=-0x1, a3=?.
  The `jal` at 0x2208 calls `init_sema` with a0=ret(kern_malloc)+80, a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x2258 calls `gthread_attach_list` with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2268 calls `setgfxsched_thread` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x22c8 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x22fc calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x2310 calls `cmn_err_tag` with a0=0x84e, a1=0x4, a2=sym(.rodata), a3=?.
  The `jal` at 0x2320 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x2340 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?, a4=[sym(GfxDevLimit)].
  The `jal` at 0x2370 calls `gthread_scan` with a0=sym(gfx_conflict_scan), a1=sp-160, a2=?, a3=?, a4=one of 0x1, 0x2, a5=0x1.
  The `jal` at 0x2388 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?, a6=0x3.
  The `jal` at 0x239c calls `cmn_err_tag` with a0=0x84f, a1=0x4, a2=sym(.rodata), a3=?.
  The `jal` at 0x23e0 calls `gthread_attach_list` with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x23e8 calls `GfxListWriterLock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2400 calls `GfxListWriterUnlock` with a0=?, a1=ret(GfxListWriterLock), a2=?, a3=?.
  The `jal` at 0x2420 calls `curthreadgroup_scan` with a0=sym(irisgl_sproc_setup_scan), a1=sp-144, a2=?, a3=?.
  The `jal` at 0x2430 calls `GfxListWriterUnlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2440 calls `GfxListWriterLock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2450 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?, a4=[sym(GfxDevLimit)].
  The `jal` at 0x2460 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x2004 is taken when v0(=ret(is_gsn_bypass_thread)) == 0 -> B3 and falls through when v0(=ret(is_gsn_bypass_thread)) != 0 -> B1.
  The `beq` branch at 0x205c is taken when v0(?) >= 0x2 (signed) -> B46 and falls through when v0(?) < 0x2 (signed) -> B4.
  The `blez` branch at 0x2064 is taken when a4(=[sym(GfxDevLimit)]) <= 0 (signed) -> B54 and falls through when a4(=[sym(GfxDevLimit)]) > 0 (signed) -> B5.
  The `beq` branch at 0x207c is taken when a1(?) == 0 -> B11 and falls through when a1(?) != 0 -> B7.
  The `beq` branch at 0x2090 is taken when s0(?) >= a4(=[sym(GfxDevLimit)]) (signed) -> B10 and falls through when s0(?) < a4(=[sym(GfxDevLimit)]) (signed) -> B8.
  The `beq` branch at 0x209c is taken when a6(?) == 0 -> B11 and falls through when a6(?) != 0 -> B9.
  The `bne` branch at 0x20b0 is taken when s0(?) < a4(=[sym(GfxDevLimit)]) (signed) -> B6 and falls through when s0(?) >= a4(=[sym(GfxDevLimit)]) (signed) -> B10.
  The `beq` branch at 0x20bc is taken when t0(?) == 0 -> B54 and falls through when t0(?) != 0 -> B12.
  The `beq` branch at 0x20d4 is taken when v0(=ret(gthread_find)) == 0 -> B17 and falls through when v0(=ret(gthread_find)) != 0 -> B13.
  The `beq` branch at 0x20e4 is taken when (t8(=[ret(gthread_find)+8]) & 0x4) == 0 -> B44 and falls through when (t8(=[ret(gthread_find)+8]) & 0x4) != 0 -> B14.
  The `beq` branch at 0x20f0 is taken when v0(=[ret(gthread_find)+16]:8) == 0 -> B16 and falls through when v0(=[ret(gthread_find)+16]:8) != 0 -> B15.
  The `beq` branch at 0x211c is taken when v0(=ret(gthread_create)) == 0 -> B43 and falls through when v0(=ret(gthread_create)) != 0 -> B18.
  The `beq` branch at 0x213c is taken when v0(=ret(gthread_find_gfxp)) == 0 -> outside and falls through when v0(=ret(gthread_find_gfxp)) != 0 -> B19.
  The `bne` branch at 0x215c is taken when ra(?) != 0 -> B42 and falls through when ra(?) == 0 -> B21.
  The `bne` branch at 0x2168 is taken when s2(?) != 0 -> B20 and falls through when s2(?) == 0 -> B22.
  The `beq` branch at 0x2170 is taken when s3(?) == 0 -> B49 and falls through when s3(?) != 0 -> B23.
  The `bne` branch at 0x2180 is taken when at(?) != 0 -> B47 and falls through when at(?) == 0 -> B24.
  The `bne` branch at 0x218c is taken when v1(?) != 0 -> B27 and falls through when v1(?) == 0 -> B26.
  The `bne` branch at 0x21f4 is taken when s5(?) != 0 -> B50 and falls through when s5(?) == 0 -> B29.
  The `bne` branch at 0x2238 is taken when a5(?) != 0 -> B34 and falls through when a5(?) == 0 -> B30.
  The `beq` branch at 0x2240 is taken when s7(=ret(gfx_group_find)) == 0 -> B32 and falls through when s7(=ret(gfx_group_find)) != 0 -> B31.
  The `beq` branch at 0x2250 is taken when (a5(=[ret(kern_malloc)+4]) & 0x8) == 0 -> B51 and falls through when (a5(=[ret(kern_malloc)+4]) & 0x8) != 0 -> B32.
  The `beq` branch at 0x2278 is taken when s7(=ret(gfx_group_find)) == 0 -> B36 and falls through when s7(=ret(gfx_group_find)) != 0 -> B35.
  The `beq` branch at 0x2288 is taken when (a7(=[ret(kern_malloc)+4]) & 0x8) == 0 -> B53 and falls through when (a7(=[ret(kern_malloc)+4]) & 0x8) != 0 -> B36.
  The `beq` branch at 0x2294 is taken when a3(?) == 0 -> B38 and falls through when a3(?) != 0 -> B37.
  The `bne` branch at 0x22a4 is taken when a3(?) != 0 -> B37 and falls through when a3(?) == 0 -> B38.
  The `beq` branch at 0x22ac is taken when s7(=ret(gfx_group_find)) == 0 -> B40 and falls through when s7(=ret(gfx_group_find)) != 0 -> B39.
  The `beq` branch at 0x22bc is taken when (a4(=[ret(kern_malloc)+4]) & 0x8) == 0 -> B52 and falls through when (a4(=[ret(kern_malloc)+4]) & 0x8) != 0 -> B40.
  The `bne` branch at 0x2330 is taken when v0(=ret(gthread_find)) != 0 -> B18 and falls through when v0(=ret(gthread_find)) == 0 -> B45.
  The `bne` branch at 0x2380 is taken when a5(?) != a6(=0x3) -> B25 and falls through when a5(?) == a6(=0x3) -> B48.
  The return at 0x2040 has v0 = ?.

- `irisgl_sproc_cleanup` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x2470 (n64).
  It occupies 104 bytes.
  The `sw` at 0x24c4 stores 4 bytes from v1 to a0 (arg0 at entry) +0x8.
  The `jal` at 0x249c calls `cleargfxsched_thread` with a0=[a0]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x24a4 calls `gthread_detach_list` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x24ac calls `gthread_detach_group` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x247c is taken when a2 == at(=0x1) -> B2 and falls through when a2 != at(=0x1) -> B1.
  The `bne` branch at 0x2494 is taken when v0(=[a0+24]:8) != a1 -> B4 and falls through when v0(=[a0+24]:8) == a1 -> B3.
  The return at 0x24d0 has v0 = 0x0.

- `gfxclose` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x24d8 (n64).
  It occupies 1400 bytes.
  The `sd` at 0x2644 stores 8 bytes from a2 to ? (base unknown) (value [entry(sym(GfxDev))+24]:8).
  The `sd` at 0x26e4 stores 8 bytes from zero to [ret(gthread_find)+16]:8 +0x18 (value 0x0).
  The `sw` at 0x272c stores 4 bytes from t0 to entry(sym(GfxDev)) +0x38.
  The `sd` at 0x2740 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0x27bc stores 8 bytes from a1 to ? (base unknown) (value [entry(sym(GfxDev))+24]:8).
  The `sw` at 0x2860 stores 4 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0x28f8 stores 8 bytes from zero to entry(sym(GfxDev)) +0x18 (value 0x0).
  The `sd` at 0x28fc stores 8 bytes from s6 to entry(sym(GfxDev)) +0x10 (value ret(curthreadhandle)).
  The `sd` at 0x2900 stores 8 bytes from zero to entry(sym(GfxDev)) +0x70 (value 0x0).
  The `sd` at 0x2908 stores 8 bytes from zero to entry(sym(GfxDev)) +0x68 (value 0x0).
  The `sd` at 0x2924 stores 8 bytes from s0 to [ret(gthread_create)+16]:8 +0x18 (value entry(sym(GfxDev))).
  The `sd` at 0x2944 stores 8 bytes from s6 to entry(sym(GfxDev)) +0x10 (value ret(curthreadhandle)).
  The `sd` at 0x294c stores 8 bytes from a4 to entry(sym(GfxDev)) +0x18.
  The `sd` at 0x2954 stores 8 bytes from s0 to ? (base unknown) (value entry(sym(GfxDev))).
  The `sd` at 0x298c stores 8 bytes from a5 to ? (base unknown).
  The `jal` at 0x24f4 calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2520 calls `psema` with a0=sym(GfxBoardInitSema), a1=0x19, a2=?, a3=?.
  The `jal` at 0x2538 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2568 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x260c calls `GfxDetach` with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x262c calls `GfxListWriterLock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x266c calls `GfxListWriterUnlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2674 calls `freesema` with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=?.
  The `jal` at 0x269c calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x26a8 calls `gthread_find` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x26d0 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x26e8 calls `gthread_detach_list` with a0=ret(gthread_find), a1=?, a2=?, a3=?.
  The `jal` at 0x26f0 calls `gthread_detach_group` with a0=ret(gthread_find), a1=?, a2=?, a3=?.
  The `jal` at 0x26f8 calls `gthread_destroy` with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2710 calls `streams_lock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2728 calls `gfxcleanup` with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2730 calls `streams_unlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2748 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x2758 calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2764 calls `psignal` with a0=ret(curproc), a1=0x6, a2=?, a3=?.
  The `jal` at 0x27c8 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x27d8 calls `gthread_create` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x27f4 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x281c calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x282c calls `gthread_destroy` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2854 calls `mutex_spinlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2864 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x286c calls `gthread_detach_group` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2878 calls `gthread_scan` with a0=sym(irisgl_sproc_cleanup), a1=?, a2=?, a3=?.
  The `jal` at 0x2888 calls `cleargfxsched_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2890 calls `gthread_detach_list` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2898 calls `gthread_detach_group` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28a8 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28b4 calls `gthread_find` with a0=[entry(sym(GfxDev))+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x290c calls `gthread_attach_list` with a0=ret(gthread_create), a1=0x0, a2=?, a3=?.
  The `jal` at 0x2920 calls `setgfxsched_thread` with a0=ret(curthreadhandle), a1=?, a2=?, a3=[ret(gthread_create)+16]:8.
  The `jal` at 0x2934 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2978 calls `GfxListWriterLock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2994 calls `GfxListWriterUnlock` with a0=[ret(gthread_find)+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=?.
  The `jal` at 0x29bc calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x29c4 calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x29cc calls `proc_name` with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0x29d4 calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x29dc calls `proc_pid` with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0x29f4 calls `cmn_err` with a0=0x1, a1=sym(.rodata), a2=ret(proc_name), a3=ret(proc_pid).
  The `jal` at 0x29fc calls `threadhandle_to_proc` with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2a04 calls `proc_name` with a0=ret(threadhandle_to_proc), a1=?, a2=?, a3=?.
  The `jal` at 0x2a10 calls `threadhandle_to_proc` with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2a18 calls `proc_pid` with a0=ret(threadhandle_to_proc), a1=?, a2=?, a3=?.
  The `jal` at 0x2a2c calls `cmn_err` with a0=0x1, a1=sym(.rodata), a2=ret(proc_name), a3=ret(proc_pid).
  The `jal` at 0x2a34 calls `threadhandle_to_proc` with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2a40 calls `psignal` with a0=ret(threadhandle_to_proc), a1=0x9, a2=?, a3=?.
  The `beq` branch at 0x2510 is taken when s7(?) == s5(=0x20000) -> B2 and falls through when s7(?) != s5(=0x20000) -> B1.
  The `bne` branch at 0x2558 is taken when a0(?) < a1(=[sym(GfxDevLimit)]) (signed) -> B7 and falls through when a0(?) >= a1(=[sym(GfxDevLimit)]) (signed) -> B3.
  The `beq` branch at 0x2560 is taken when s7(?) == s5(=0x20000) -> B5 and falls through when s7(?) != s5(=0x20000) -> B4.
  The `beq` branch at 0x25b4 is taken when s0(=entry(sym(GfxDev))) == 0 -> B49 and falls through when s0(=entry(sym(GfxDev))) != 0 -> B8.
  The `beq` branch at 0x25bc is taken when s4(=ret(gthread_find)) == 0 -> B47 and falls through when s4(=ret(gthread_find)) != 0 -> B9.
  The `beq` branch at 0x25c8 is taken when v0(=[ret(gthread_find)+16]:8) == 0 -> B47 and falls through when v0(=[ret(gthread_find)+16]:8) != 0 -> B10.
  The `beq` branch at 0x25d8 is taken when s6(=ret(curthreadhandle)) == s3(=[entry(sym(GfxDev))+16]:8) -> B46 and falls through when s6(=ret(curthreadhandle)) != s3(=[entry(sym(GfxDev))+16]:8) -> B12.
  The `beq` branch at 0x25e0 is taken when s7(?) == s5(=0x20000) -> B64 and falls through when s7(?) != s5(=0x20000) -> B13.
  The `beq` branch at 0x25e8 is taken when s4(=ret(gthread_find)) == 0 -> B69 and falls through when s4(=ret(gthread_find)) != 0 -> B14.
  The `beq` branch at 0x25f4 is taken when a0(=[ret(gthread_find)+24]:8) == 0 -> B64 and falls through when a0(=[ret(gthread_find)+24]:8) != 0 -> B15.
  The `beq` branch at 0x2604 is taken when s4(=ret(gthread_find)) == 0 -> B52 and falls through when s4(=ret(gthread_find)) != 0 -> B17.
  The `beq` branch at 0x2618 is taken when a1(?) == 0 -> B41 and falls through when a1(?) != 0 -> B18.
  The `beq` branch at 0x2624 is taken when s4(?) == 0 -> B41 and falls through when s4(?) != 0 -> B19.
  The `bne` branch at 0x2634 is taken when s0(=entry(sym(GfxDev))) != s2(?) -> B42 and falls through when s0(=entry(sym(GfxDev))) == s2(?) -> B20.
  The `beq` branch at 0x264c is taken when s2(?) == 0 -> B24 and falls through when s2(?) != 0 -> B23.
  The `beq` branch at 0x265c is taken when (a4(=[entry(sym(GfxDev))+4]) & 0x8) == 0 -> B60 and falls through when (a4(=[entry(sym(GfxDev))+4]) & 0x8) != 0 -> B24.
  The `beq` branch at 0x2664 is taken when s4(?) == 0 -> B26 and falls through when s4(?) != 0 -> B25.
  The `beq` branch at 0x2680 is taken when v0(?) == 0 -> B28 and falls through when v0(?) != 0 -> B27.
  The `beq` branch at 0x268c is taken when a5(?) == 0 -> B63 and falls through when a5(?) != 0 -> B28.
  The `beq` branch at 0x2694 is taken when s8(?) == 0 -> B35 and falls through when s8(?) != 0 -> B29.
  The `beq` branch at 0x26b0 is taken when s3(=one of 0x0, 0x1) == 0 -> B56 and falls through when s3(=one of 0x0, 0x1) != 0 -> B30.
  The `beq` branch at 0x26b8 is taken when v0(=ret(gthread_find)) == 0 -> B58 and falls through when v0(=ret(gthread_find)) != 0 -> B31.
  The `beq` branch at 0x26c8 is taken when (a6(=[ret(gthread_find)+8]) & 0x4) == 0 -> B81 and falls through when (a6(=[ret(gthread_find)+8]) & 0x4) != 0 -> B32.
  The `beq` branch at 0x26dc is taken when v0(=[ret(gthread_find)+16]:8) == 0 -> B34 and falls through when v0(=[ret(gthread_find)+16]:8) != 0 -> B33.
  The `beq` branch at 0x2708 is taken when a7(?) == 0 -> B59 and falls through when a7(?) != 0 -> B36.
  The `beq` branch at 0x273c is taken when s7(?) == s5(=0x20000) -> B38 and falls through when s7(?) != s5(=0x20000) -> B37.
  The `beq` branch at 0x2750 is taken when s3(=one of 0x0, 0x1) == 0 -> B40 and falls through when s3(=one of 0x0, 0x1) != 0 -> B39.
  The `beq` branch at 0x2774 is taken when s0(=entry(sym(GfxDev))) == s2(?) -> B20 and falls through when s0(=entry(sym(GfxDev))) != s2(?) -> B42.
  The `beq` branch at 0x277c is taken when s2(?) == 0 -> B21 and falls through when s2(?) != 0 -> B43.
  The `beq` branch at 0x2788 is taken when s0(=entry(sym(GfxDev))) == v0(?) -> B48 and falls through when s0(=entry(sym(GfxDev))) != v0(?) -> B44.
  The `bne` branch at 0x2790 is taken when v0(?) != 0 -> B43 and falls through when v0(?) == 0 -> B45.
  The `beq` branch at 0x27c0 is taken when s7(?) == s5(=0x20000) -> B51 and falls through when s7(?) != s5(=0x20000) -> B50.
  The `bne` branch at 0x27e4 is taken when v0(=ret(gthread_create)) != 0 -> B70 and falls through when v0(=ret(gthread_create)) == 0 -> B53.
  The `beq` branch at 0x27ec is taken when s7(?) == s5(=0x20000) -> B55 and falls through when s7(?) != s5(=0x20000) -> B54.
  The `beq` branch at 0x2804 is taken when v0(=ret(gthread_find)) == 0 -> B58 and falls through when v0(=ret(gthread_find)) != 0 -> B57.
  The `bne` branch at 0x2814 is taken when (a1(=[ret(gthread_find)+8]) & 0x4) != 0 -> B32 and falls through when (a1(=[ret(gthread_find)+8]) & 0x4) == 0 -> B58.
  The `beq` branch at 0x2840 is taken when v0(?) == 0 -> B24 and falls through when v0(?) != 0 -> B61.
  The `bne` branch at 0x284c is taken when a2(?) != 0 -> B24 and falls through when a2(?) == 0 -> B62.
  The `beq` branch at 0x28bc is taken when v0(=ret(gthread_find)) == 0 -> B71 and falls through when v0(=ret(gthread_find)) != 0 -> B65.
  The `beq` branch at 0x28c8 is taken when a0(=[ret(gthread_find)+16]:8) == 0 -> B80 and falls through when a0(=[ret(gthread_find)+16]:8) != 0 -> B66.
  The `beq` branch at 0x28d4 is taken when a1(=[[ret(gthread_find)+16]:8+24]:8) == 0 -> B78 and falls through when a1(=[[ret(gthread_find)+16]:8+24]:8) != 0 -> B67.
  The `bne` branch at 0x28dc is taken when a1(=[[ret(gthread_find)+16]:8+24]:8) != 0 -> B75 and falls through when a1(=[[ret(gthread_find)+16]:8+24]:8) == 0 -> B68.
  The `beq` branch at 0x293c is taken when s4(=ret(gthread_find)) == 0 -> B52 and falls through when s4(=ret(gthread_find)) != 0 -> B73.
  The `beq` branch at 0x2960 is taken when a1(?) == 0 -> B79 and falls through when a1(?) != 0 -> B75.
  The `bne` branch at 0x2968 is taken when s0(=entry(sym(GfxDev))) != a1(?) -> B74 and falls through when s0(=entry(sym(GfxDev))) == a1(?) -> B76.
  The `beq` branch at 0x2970 is taken when a1(?) == 0 -> B79 and falls through when a1(?) != 0 -> B77.
  The return at 0x259c has v0 = one of 0x0, 0x6, 0xc, 0x13.

- `GfxListWriterLock` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x2a50 (n64).
  It occupies 120 bytes.
  The `jal` at 0x2a6c calls `mutex_spinlock` with a0=a0+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2a8c calls `sv_wait` with a0=a0+8, a1=0x19, a2=a0+16, a3=ret(mutex_spinlock).
  The `jal` at 0x2a94 calls `mutex_spinlock` with a0=a0+16, a1=?, a2=?, a3=?.
  The `blez` branch at 0x2a7c is taken when at(=[a0+4]) <= 0 (signed) -> B3 and falls through when at(=[a0+4]) > 0 (signed) -> B1.
  The `bgtz` branch at 0x2aa4 is taken when v0(=[a0+4]) > 0 (signed) -> B2 and falls through when v0(=[a0+4]) <= 0 (signed) -> B3.
  The return at 0x2ac0 has v0 = ret(mutex_spinlock).

- `GfxListWriterUnlock` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x2ac8 (n64).
  It occupies 28 bytes.
  The `jal` at 0x2ad0 calls `mutex_spinunlock` with a0=a0+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2adc has v0 = ret(mutex_spinunlock).

- `GfxListReaderLock` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x2ae4 (n64).
  It occupies 68 bytes.
  The `sw` at 0x2b14 stores 4 bytes from at to a0 (arg0 at entry) +0x4 (value [a0+4]+1).
  The `jal` at 0x2af8 calls `mutex_spinlock` with a0=a0+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2b10 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The return at 0x2b20 has v0 = ret(mutex_spinunlock).

- `GfxListReaderUnlock` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x2b28 (n64).
  It occupies 80 bytes.
  The `sw` at 0x2b58 stores 4 bytes from at to a0 (arg0 at entry) +0x4 (value [a0+4]-1).
  The `jal` at 0x2b3c calls `mutex_spinlock` with a0=a0+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2b54 calls `sv_signal` with a0=a0+8, a1=?, a2=?, a3=?.
  The `jal` at 0x2b64 calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The return at 0x2b70 has v0 = ret(mutex_spinunlock).

- `gfxread` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x2b78 (n64).
  It occupies 8 bytes.
  The return at 0x2b78 has v0 = 0x36.

- `gfxwrite` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x2b80 (n64).
  It occupies 8 bytes.
  The return at 0x2b80 has v0 = 0x36.

- `gfxioctl` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x2b88 (n64).
  It occupies 2004 bytes.
  The `sw` at 0x2be8 stores 4 bytes from a3 to ([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)) +0xc (value [([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5))+12]+1).
  The `sw` at 0x2cfc stores 4 bytes from t2 to a5 (arg5 at entry) +0x0 (value [sym(GfxNumberOfBoards)]).
  The `sw` at 0x2ddc stores 4 bytes from v1 to entry(sym(GfxDev)) +0x4 (value ([entry(sym(GfxDev))+4] | 0x20)).
  The `sd` at 0x2e4c stores 8 bytes from s0 to [entry(sym(GfxDev))+40]:8 +0x48 (value entry(sym(GfxDev))).
  The `sw` at 0x2fbc stores 4 bytes from t1 to entry(sym(GfxDev)) +0x4 (value ([entry(sym(GfxDev))+4] | 0x4)).
  The `sw` at 0x3020 stores 4 bytes from zero to [entry(sym(GfxDev))+40]:8 +0x80 (value 0x0).
  The `sd` at 0x3040 stores 8 bytes from zero to [entry(sym(GfxDev))+40]:8 +0x48 (value 0x0).
  The `sw` at 0x316c stores 4 bytes from a0 to a5 (arg5 at entry) +0x0.
  The `sd` at 0x31c8 stores 8 bytes from s0 to [entry(sym(GfxDev))+40]:8 +0x48 (value entry(sym(GfxDev))).
  The `sd` at 0x3208 stores 8 bytes from s0 to [entry(sym(GfxDev))+40]:8 +0x48 (value entry(sym(GfxDev))).
  The `sd` at 0x3260 stores 8 bytes from a2 to entry(sym(GfxDev)) +0x8 (value entry(sym(GfxBoards))).
  The `sd` at 0x3268 stores 8 bytes from t8 to entry(sym(GfxDev)) +0x28 (value [entry(sym(GfxBoards))+64]:8).
  The `sd` at 0x3270 stores 8 bytes from t3 to entry(sym(GfxDev)) +0x20 (value [entry(sym(GfxBoards))+56]:8).
  The `sd` at 0x32a0 stores 8 bytes from zero to entry(sym(GfxDev)) +0x20 (value 0x0).
  The `sd` at 0x32a4 stores 8 bytes from zero to entry(sym(GfxDev)) +0x28 (value 0x0).
  The `sd` at 0x32ac stores 8 bytes from zero to entry(sym(GfxDev)) +0x8 (value 0x0).
  The `sd` at 0x32dc stores 8 bytes from a2 to entry(sym(GfxDev)) +0x8 (value entry(sym(GfxBoards))).
  The `sd` at 0x32e4 stores 8 bytes from v1 to entry(sym(GfxDev)) +0x20 (value [entry(sym(GfxBoards))+56]:8).
  The `sd` at 0x32ec stores 8 bytes from v0 to entry(sym(GfxDev)) +0x28 (value [entry(sym(GfxBoards))+64]:8).
  The `sd` at 0x331c stores 8 bytes from zero to entry(sym(GfxDev)) +0x20 (value 0x0).
  The `sd` at 0x3320 stores 8 bytes from zero to entry(sym(GfxDev)) +0x28 (value 0x0).
  The `sd` at 0x3328 stores 8 bytes from zero to entry(sym(GfxDev)) +0x8 (value 0x0).
  The `sd` at 0x3340 stores 8 bytes from s0 to [entry(sym(GfxDev))+8]:8 +0x10 (value entry(sym(GfxDev))).
  The `sd` at 0x3358 stores 8 bytes from s0 to [entry(sym(GfxDev))+8]:8 +0x10 (value entry(sym(GfxDev))).
  The `jal` at 0x2bb0 calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2bbc calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2c64 calls `psema` with a0=entry(sym(GfxDev))+80, a1=0x19, a2=0x1ffff, a3=[([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5))+12]+1, a4=([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)), a5=([-0x3be0]:2 << 0x5).
  The `jalr` at 0x2d60 calls `(unknown callee)` with a0=entry(sym(GfxDev)), a1=[entry(sym(GfxDev))+72]:8, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a5 at entry (arg5).
  The `jal` at 0x2d80 calls `ddv_unlock` with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2d98 calls `ddv_lock` with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2dc0 calls `(unknown callee)` with a0=entry(sym(GfxDev)), a1=0x0, a2=-0x1, a3=?.
  The `jal` at 0x2dd8 calls `ddv_unlock` with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2df4 calls `RRM_Dispatch` with a0=entry(sym(GfxDev)), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a5 at entry (arg5), a6=0x6c.
  The `jal` at 0x2e30 calls `cmn_err_tag` with a0=0x850, a1=0x4, a2=sym(.rodata), a3=a1 at entry (arg1), a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x2e40 calls `psema` with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0x2e60 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x2e9c calls `threadgroup_refcnt` with a0=[ret(gthread_find)]:8, a1=0x67, a2=0x70, a3=0x71, a7=[ret(gthread_find)+24]:8.
  The `jal` at 0x2eb8 calls `curproc_abi` with a0=0x69, a1=?, a2=?, a3=?.
  The `jal` at 0x2ed8 calls `copyin_xlate` with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=sym(irix5_to_gfx_getboardinfo_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2ef8 calls `copyin` with a0=a2 at entry (arg2), a1=sp-72, a2=0x4, a3=?.
  The `jal` at 0x2f10 calls `vsema` with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=?.
  The `jal` at 0x2f20 calls `GfxDetach` with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2f30 calls `curproc_abi` with a0=0x69, a1=0x67, a2=0x70, a3=?.
  The `jal` at 0x2f50 calls `copyin_xlate` with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f68 calls `curproc_abi` with a0=0x69, a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2f88 calls `copyin_xlate` with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2fa0 calls `drv_priv` with a0=a4 at entry (arg4), a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2fc0 calls `curproc_abi` with a0=0x69, a1=0x67, a2=0x70, a3=0x71, a6=0x6c, a7=0x68.
  The `jal` at 0x2fe0 calls `copyin_xlate` with a0=a2 at entry (arg2), a1=sp-112, a2=0x28, a3=sym(irix5_to_gfx_download_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jalr` at 0x300c calls `(unknown callee)` with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x301c calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x3034 calls `(unknown callee)` with a0=entry(sym(GfxDev)), a1=[[entry(sym(GfxDev))+32]:8+192]:8, a2=?, a3=?.
  The `jal` at 0x3048 calls `vsema` with a0=[entry(sym(GfxDev))+40]:8+56, a1=[entry(sym(GfxDev))+40]:8, a2=?, a3=?.
  The `jal` at 0x3050 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x3068 calls `rrmUnMapGfx` with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jalr` at 0x308c calls `(unknown callee)` with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?, a4=[[entry(sym(GfxDev))+32]:8+40]:8.
  The `jal` at 0x30e0 calls `copyin` with a0=a2 at entry (arg2), a1=[[entry(sym(GfxDev))+8]:8]:8+16, a2=0x10, a3=[entry(sym(GfxDev))+8]:8, a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x31bc calls `psema` with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[entry(sym(GfxDev))+8]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x31dc calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x31fc calls `psema` with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[[entry(sym(GfxDev))+40]:8+72]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x321c calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x3250 calls `(unknown callee)` with a0=[entry(sym(GfxBoards))+64]:8, a1=?, a2=?, a3=a5 at entry (arg5), a4=entry(sym(GfxBoards)).
  The `jalr` at 0x3290 calls `(unknown callee)` with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards).
  The `jalr` at 0x32bc calls `(unknown callee)` with a0=entry(sym(GfxDev)), a1=sp-112, a2=?, a3=?.
  The `jalr` at 0x330c calls `(unknown callee)` with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards), a4=[entry(sym(GfxDev))+32]:8.
  The `beq` branch at 0x2c00 is taken when a1(?) >= at(=[sym(GfxDevLimit)]) (signed) -> B23 and falls through when a1(?) < at(=[sym(GfxDevLimit)]) (signed) -> B1.
  The `beq` branch at 0x2c18 is taken when s0(=entry(sym(GfxDev))) == 0 -> B30 and falls through when s0(=entry(sym(GfxDev))) != 0 -> B2.
  The `beq` branch at 0x2c20 is taken when v0(=ret(gthread_find)) == 0 -> B29 and falls through when v0(=ret(gthread_find)) != 0 -> B3.
  The `beq` branch at 0x2c30 is taken when (t9(=[entry(sym(GfxDev))+4]) & 0x8) == 0 -> B7 and falls through when (t9(=[entry(sym(GfxDev))+4]) & 0x8) != 0 -> B4.
  The `beq` branch at 0x2c38 is taken when v0(=[ret(gthread_find)+24]:8) == 0 -> B9 and falls through when v0(=[ret(gthread_find)+24]:8) != 0 -> B5.
  The `beq` branch at 0x2c48 is taken when ra(=[ret(gthread_find)]:8) == at(=[entry(sym(GfxDev))+16]:8) -> B9 and falls through when ra(=[ret(gthread_find)]:8) != at(=[entry(sym(GfxDev))+16]:8) -> B6.
  The `beq` branch at 0x2c58 is taken when v0(=[ret(gthread_find)+24]:8) == 0 -> B9 and falls through when v0(=[ret(gthread_find)+24]:8) != 0 -> B8.
  The `beq` branch at 0x2c70 is taken when s1(=a1) == v0(=0x65) -> B24 and falls through when s1(=a1) != v0(=0x65) -> B10.
  The `beq` branch at 0x2c78 is taken when s1(=a1) == v1(=0x66) -> B51 and falls through when s1(=a1) != v1(=0x66) -> B11.
  The `beq` branch at 0x2c80 is taken when s1(=a1) == a0(=0x69) -> B53 and falls through when s1(=a1) != a0(=0x69) -> B12.
  The `beq` branch at 0x2c88 is taken when s1(=a1) == a1(=0x67) -> B57 and falls through when s1(=a1) != a1(=0x67) -> B13.
  The `beq` branch at 0x2c90 is taken when s1(=a1) == a2(=0x70) -> B59 and falls through when s1(=a1) != a2(=0x70) -> B14.
  The `beq` branch at 0x2c98 is taken when s1(=a1) == a3(=0x71) -> B61 and falls through when s1(=a1) != a3(=0x71) -> B15.
  The `beq` branch at 0x2ca4 is taken when v0(=[entry(sym(GfxDev))+32]:8) == 0 -> B32 and falls through when v0(=[entry(sym(GfxDev))+32]:8) != 0 -> B16.
  The `beq` branch at 0x2cac is taken when a4(?) == 0 -> B31 and falls through when a4(?) != 0 -> B17.
  The `beq` branch at 0x2cb4 is taken when a5(?) == 0 -> B38 and falls through when a5(?) != 0 -> B18.
  The `beq` branch at 0x2cbc is taken when s1(=a1) == a6(=0x6c) -> B63 and falls through when s1(=a1) != a6(=0x6c) -> B19.
  The `beq` branch at 0x2cc4 is taken when s1(=a1) == a7(=0x68) -> B47 and falls through when s1(=a1) != a7(=0x68) -> B20.
  The `beq` branch at 0x2ccc is taken when s1(=a1) == t0(=0x6e) -> B33 and falls through when s1(=a1) != t0(=0x6e) -> B21.
  The `beq` branch at 0x2cdc is taken when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) == s0(=entry(sym(GfxDev))) -> B39 and falls through when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) != s0(=entry(sym(GfxDev))) -> B22.
  The `beq` branch at 0x2d04 is taken when t3(=[ret(gthread_find)+24]:8) == 0 -> B28 and falls through when t3(=[ret(gthread_find)+24]:8) != 0 -> B27.
  The `beq` branch at 0x2d14 is taken when (t8(=[entry(sym(GfxDev))+4]) & 0x8) == 0 -> B55 and falls through when (t8(=[entry(sym(GfxDev))+4]) & 0x8) != 0 -> B28.
  The `bne` branch at 0x2d90 is taken when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) -> B44 and falls through when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))) -> B36.
  The `bne` branch at 0x2da8 is taken when at(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) -> B34 and falls through when at(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))) -> B37.
  The `beq` branch at 0x2e04 is taken when s1(=a1) == a0(=0x6a) -> B65 and falls through when s1(=a1) != a0(=0x6a) -> B40.
  The `beq` branch at 0x2e0c is taken when s1(=a1) == a1(=0x6b) -> B70 and falls through when s1(=a1) != a1(=0x6b) -> B41.
  The `beq` branch at 0x2e14 is taken when s1(=a1) == a2(=0x6d) -> B72 and falls through when s1(=a1) != a2(=0x6d) -> B42.
  The `beq` branch at 0x2e1c is taken when s1(=a1) == a4(=0x6f) -> B77 and falls through when s1(=a1) != a4(=0x6f) -> B43.
  The `beq` branch at 0x2e58 is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0 -> B36 and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0 -> B45.
  The `bne` branch at 0x2e70 is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0 -> B45 and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0 -> B46.
  The `bne` branch at 0x2e88 is taken when (a6(=[entry(sym(GfxDev))+4]) & 0x8) != 0 -> B56 and falls through when (a6(=[entry(sym(GfxDev))+4]) & 0x8) == 0 -> B48.
  The `beq` branch at 0x2e94 is taken when a7(=[ret(gthread_find)+24]:8) == 0 -> B56 and falls through when a7(=[ret(gthread_find)+24]:8) != 0 -> B49.
  The `beq` branch at 0x2ea8 is taken when v0(=ret(threadgroup_refcnt)) == t0(=0x1) -> B56 and falls through when v0(=ret(threadgroup_refcnt)) != t0(=0x1) -> B50.
  The `beq` branch at 0x2ee0 is taken when v0(=ret(copyin_xlate)) == 0 -> B73 and falls through when v0(=ret(copyin_xlate)) != 0 -> B52.
  The `beq` branch at 0x2f00 is taken when v0(=ret(copyin)) == 0 -> B75 and falls through when v0(=ret(copyin)) != 0 -> B54.
  The `beq` branch at 0x2f58 is taken when v0(=ret(copyin_xlate)) == 0 -> B78 and falls through when v0(=ret(copyin_xlate)) != 0 -> B58.
  The `beq` branch at 0x2f90 is taken when v0(=ret(copyin_xlate)) == 0 -> B80 and falls through when v0(=ret(copyin_xlate)) != 0 -> B60.
  The `bne` branch at 0x2fa8 is taken when v0(=ret(drv_priv)) != 0 -> B25 and falls through when v0(=ret(drv_priv)) == 0 -> B62.
  The `beq` branch at 0x2fe8 is taken when v0(=ret(copyin_xlate)) == 0 -> B100 and falls through when v0(=ret(copyin_xlate)) != 0 -> B64.
  The `bne` branch at 0x3000 is taken when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) -> B91 and falls through when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))) -> B66.
  The `beq` branch at 0x302c is taken when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) == 0 -> B68 and falls through when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) != 0 -> B67.
  The `beq` branch at 0x3060 is taken when (a2(=[entry(sym(GfxDev))+4]) & 0x1) == 0 -> B25 and falls through when (a2(=[entry(sym(GfxDev))+4]) & 0x1) != 0 -> B69.
  The `bne` branch at 0x3080 is taken when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) -> B94 and falls through when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))) -> B71.
  The `bne` branch at 0x30ac is taken when v0(?) < a5(=[sym(GfxNumberOfBoards)]) (unsigned) -> B82 and falls through when v0(?) >= a5(=[sym(GfxNumberOfBoards)]) (unsigned) -> B74.
  The `bne` branch at 0x30c4 is taken when a0(?) < a6(=[sym(GfxNumberOfBoards)]) (unsigned) -> B84 and falls through when a0(?) >= a6(=[sym(GfxNumberOfBoards)]) (unsigned) -> B76.
  The `bne` branch at 0x30fc is taken when v0(?) < a2(=[sym(GfxNumberOfBoards)]) (unsigned) -> B86 and falls through when v0(?) >= a2(=[sym(GfxNumberOfBoards)]) (unsigned) -> B79.
  The `bne` branch at 0x3114 is taken when v0(?) < a3(=[sym(GfxNumberOfBoards)]) (unsigned) -> B89 and falls through when v0(?) >= a3(=[sym(GfxNumberOfBoards)]) (unsigned) -> B81.
  The `bne` branch at 0x3134 is taken when a4(=entry(sym(GfxBoards))) != 0 -> B97 and falls through when a4(=entry(sym(GfxBoards))) == 0 -> B83.
  The `beq` branch at 0x3154 is taken when v0(=entry(sym(GfxBoards))) == 0 -> B101 and falls through when v0(=entry(sym(GfxBoards))) != 0 -> B85.
  The `beq` branch at 0x3180 is taken when a2(=entry(sym(GfxBoards))) == 0 -> B102 and falls through when a2(=entry(sym(GfxBoards))) != 0 -> B87.
  The `beq` branch at 0x318c is taken when a4(=[entry(sym(GfxDev))+32]:8) == 0 -> B103 and falls through when a4(=[entry(sym(GfxDev))+32]:8) != 0 -> B88.
  The `bne` branch at 0x31ac is taken when a2(=entry(sym(GfxBoards))) != 0 -> B98 and falls through when a2(=entry(sym(GfxBoards))) == 0 -> B90.
  The `beq` branch at 0x31d4 is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0 -> B93 and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0 -> B92.
  The `bne` branch at 0x31ec is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0 -> B92 and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0 -> B93.
  The `beq` branch at 0x3214 is taken when a6(=[[entry(sym(GfxDev))+40]:8+104]) == 0 -> B96 and falls through when a6(=[[entry(sym(GfxDev))+40]:8+104]) != 0 -> B95.
  The `bne` branch at 0x322c is taken when t0(=[[entry(sym(GfxDev))+40]:8+104]) != 0 -> B95 and falls through when t0(=[[entry(sym(GfxDev))+40]:8+104]) == 0 -> B96.
  The `beq` branch at 0x3298 is taken when v0(=ret(?)) == 0 -> B105 and falls through when v0(=ret(?)) != 0 -> B99.
  The `beq` branch at 0x3314 is taken when v0(=ret(?)) == 0 -> B107 and falls through when v0(=ret(?)) != 0 -> B104.
  The `bne` branch at 0x3334 is taken when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0 -> B25 and falls through when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0 -> B106.
  The `bne` branch at 0x334c is taken when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0 -> B25 and falls through when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0 -> B108.
  The return at 0x2d34 has v0 = ?.

- `gfxmap` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x335c (n64).
  It occupies 8 bytes.
  The return at 0x335c has v0 = 0x36.

- `gfxunmap` in `usr/cpu/sysgen/IP27boot/gfx.o` at 0x3364 (n64).
  It occupies 8 bytes.
  The return at 0x3364 has v0 = 0x36.

- `pane_gc` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x0 (n64).
  It occupies 376 bytes.
  The `sh` at 0x6c stores 2 bytes from a1 to ? (base unknown).
  The `sh` at 0x108 stores 2 bytes from a1 to table(sym(.bss)) -0x2.
  The `sh` at 0x124 stores 2 bytes from a1 to table(sym(.bss)) -0x2.
  The `sw` at 0x13c stores 4 bytes from a2 to sym(max_pane) +0x8.
  The `sh` at 0x144 stores 2 bytes from a6 to sym(max_pane) +0x4.
  The `beq` branch at 0x18 is taken when a4(=[sym(.sbss)+8]) >= a5(=[sym(max_pane)]) (signed) -> B7 and falls through when a4(=[sym(.sbss)+8]) < a5(=[sym(max_pane)]) (signed) -> B1.
  The `beq` branch at 0x38 is taken when a1(?) >= a5(=[sym(max_pane)]) (signed) -> B8 and falls through when a1(?) < a5(=[sym(max_pane)]) (signed) -> B3.
  The `bne` branch at 0x54 is taken when v1(=[table(sym(rrm_pane))+16]:2) != 0 -> B2 and falls through when v1(=[table(sym(rrm_pane))+16]:2) == 0 -> B5.
  The `bne` branch at 0x68 is taken when a6(?) != t0(=0x8) -> B2 and falls through when a6(?) == t0(=0x8) -> B6.
  The `blez` branch at 0x84 is taken when a4(=[sym(.sbss)+8]) <= 0 (signed) -> B22 and falls through when a4(=[sym(.sbss)+8]) > 0 (signed) -> B9.
  The `beq` branch at 0xa4 is taken when a1(?) >= a4(=[sym(.sbss)+8]) (signed) -> B18 and falls through when a1(?) < a4(=[sym(.sbss)+8]) (signed) -> B11.
  The `beq` branch at 0xc0 is taken when t1(?) == 0 -> B17 and falls through when t1(?) != 0 -> B13.
  The `beq` branch at 0xd4 is taken when a1(?) >= a4(=[sym(.sbss)+8]) (signed) -> B18 and falls through when a1(?) < a4(=[sym(.sbss)+8]) (signed) -> B14.
  The `bne` branch at 0xf0 is taken when t2(?) != 0 -> B10 and falls through when t2(?) == 0 -> B15.
  The `bne` branch at 0x104 is taken when a6(?) != t0(=0x8) -> B10 and falls through when a6(?) == t0(=0x8) -> B16.
  The `bne` branch at 0x120 is taken when a6(?) != t0(=0x8) -> B13 and falls through when a6(?) == t0(=0x8) -> B18.
  The `beq` branch at 0x130 is taken when a1(?) >= t9(=[sym(max_pane)]-2) (signed) -> B21 and falls through when a1(?) < t9(=[sym(max_pane)]-2) (signed) -> B20.
  The `beq` branch at 0x14c is taken when a5(=[sym(max_pane)]) >= 0x3 (signed) -> B20 and falls through when a5(=[sym(max_pane)]) < 0x3 (signed) -> B23.
  The return at 0x140 has v0 = ?.

- `bind_pane` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x178 (n64).
  It occupies 468 bytes.
  The `sh` at 0x240 stores 2 bytes from v0 to sym(max_pane) +0x4.
  The `sh` at 0x24c stores 2 bytes from s0 to table(sym(rrm_pane)) +0x2 (value entry(sym(.bss))).
  The `sh` at 0x254 stores 2 bytes from v1 to table(sym(rrm_pane)) +0x0 (value entry(sym(rrm_pane))+1).
  The `sh` at 0x25c stores 2 bytes from zero to table(sym(rrm_pane)) +0x12 (value 0x0).
  The `sh` at 0x260 stores 2 bytes from zero to table(sym(rrm_pane)) +0xc (value 0x0).
  The `sw` at 0x268 stores 4 bytes from at to table(sym(rrm_pane)) +0x8 (value 0x1).
  The `sw` at 0x26c stores 4 bytes from s2 to table(sym(rrm_pane)) +0x4 (value a1).
  The `sd` at 0x270 stores 8 bytes from ra to table(sym(rrm_pane)) +0x58 (value [a0+40]:8).
  The `sh` at 0x298 stores 2 bytes from a3 to sym(max_pane) +0x4.
  The `sh` at 0x2f4 stores 2 bytes from a4 to ? (base unknown).
  The `sh` at 0x300 stores 2 bytes from a3 to ? (base unknown).
  The `sh` at 0x324 stores 2 bytes from v0 to ? (base unknown).
  The `jal` at 0x1a0 calls `psema` with a0=sym(.bss), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x29c calls `bcopy` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2fc calls `vsema` with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x328 calls `pane_gc` with a0=?, a1=sym(rrm_pane), a2=?, a3=?.
  The `blez` branch at 0x1b0 is taken when v0(=[sym(max_pane)]) <= 0 (signed) -> B8 and falls through when v0(=[sym(max_pane)]) > 0 (signed) -> B1.
  The `beq` branch at 0x1cc is taken when s0(?) >= v0(=[sym(max_pane)]) (signed) -> B8 and falls through when s0(?) < v0(=[sym(max_pane)]) (signed) -> B4.
  The `bne` branch at 0x1e8 is taken when v1(?) != s2(=a1) -> B2 and falls through when v1(?) == s2(=a1) -> B6.
  The `bnel` branch at 0x1f8 is taken when t8(=[a0+40]:8) != t9(?) -> B3 and falls through when t8(=[a0+40]:8) == t9(?) -> B7.
  The `beq` branch at 0x20c is taken when v0(=[sym(.sbss)+4]:2) == 0 -> B18 and falls through when v0(=[sym(.sbss)+4]:2) != 0 -> B9.
  The `blez` branch at 0x278 is taken when v0(?) <= 0 (signed) -> B15 and falls through when v0(?) > 0 (signed) -> B11.
  The `beq` branch at 0x2b0 is taken when s2(?) >= v0(=[sym(.sbss)+4]:2) (signed) -> B15 and falls through when s2(?) < v0(=[sym(.sbss)+4]:2) (signed) -> B13.
  The `beq` branch at 0x2c0 is taken when a5(?) == s0(?) -> B12 and falls through when a5(?) != s0(?) -> B14.
  The `bne` branch at 0x2d0 is taken when s2(?) < v0(?) (signed) -> B13 and falls through when s2(?) >= v0(?) (signed) -> B15.
  The `beq` branch at 0x2dc is taken when a1(?) == 0 -> B17 and falls through when a1(?) != 0 -> B16.
  The return at 0x314 has v0 = ?.

- `unbind_pane` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x34c (n64).
  It occupies 72 bytes.
  The `sh` at 0x380 stores 2 bytes from a1 to a0 (arg0 at entry) +0x10 (value [a0+16]:2-1).
  The `jal` at 0x364 calls `psema` with a0=sym(.bss), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x37c calls `vsema` with a0=sym(.bss), a1=[a0+16]:2-1, a2=?, a3=?.
  The return at 0x38c has v0 = ret(vsema).

- `clip2pane` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x394 (n64).
  It occupies 116 bytes.
  The `blez` branch at 0x39c is taken when a5(=[sym(max_pane)]) <= 0 (signed) -> B8 and falls through when a5(=[sym(max_pane)]) > 0 (signed) -> B1.
  The `beq` branch at 0x3b4 is taken when at(?) == 0 -> B8 and falls through when at(?) != 0 -> B4.
  The `bne` branch at 0x3d0 is taken when v1(?) != a0 -> B2 and falls through when v1(?) == a0 -> B6.
  The `bne` branch at 0x3dc is taken when v1(?) != a7(=[a1+40]:8) -> B3 and falls through when v1(?) == a7(=[a1+40]:8) -> B7.
  The return at 0x3f0 has v0 = ?.

- `pane_cleanup` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x408 (n64).
  It occupies 180 bytes.
  The `sw` at 0x44c stores 4 bytes from zero to ret(clip2pane) +0x4 (value 0x0).
  The `sh` at 0x45c stores 2 bytes from a1 to ret(clip2pane) +0xc.
  The `sd` at 0x460 stores 8 bytes from zero to ret(clip2pane) +0x38 (value 0x0).
  The `sh` at 0x46c stores 2 bytes from zero to ret(clip2pane) +0xe (value 0x0).
  The `jal` at 0x414 calls `clip2pane` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x42c calls `psema` with a0=sym(.bss), a1=0x19, a2=?, a3=?.
  The `jal` at 0x438 calls `mutex_spinlock` with a0=ret(clip2pane)+80, a1=?, a2=?, a3=?.
  The `jal` at 0x468 calls `vsema` with a0=ret(clip2pane)+40, a1=?, a2=[ret(clip2pane)+14]:2, a3=-0x4b.
  The `jal` at 0x470 calls `sv_signal` with a0=ret(clip2pane)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x47c calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x494 calls `vsema` with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x4ac calls `rrmSwapUnGroup` with a0=a1 at entry (arg1), a1=ret(clip2pane), a2=?, a3=?, a4=[ret(clip2pane)+160]:8.
  The `beq` branch at 0x41c is taken when v0(=ret(clip2pane)) == 0 -> B6 and falls through when v0(=ret(clip2pane)) != 0 -> B1.
  The `beq` branch at 0x458 is taken when a2(=[ret(clip2pane)+14]:2) == 0 -> B3 and falls through when a2(=[ret(clip2pane)+14]:2) != 0 -> B2.
  The `bne` branch at 0x488 is taken when a4(=[ret(clip2pane)+160]:8) != 0 -> B7 and falls through when a4(=[ret(clip2pane)+160]:8) == 0 -> B4.
  The return at 0x4a4 has v0 = ?.

- `pane_setnullclip` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x4bc (n64).
  It occupies 72 bytes.
  The `sh` at 0x4ec stores 2 bytes from v1 to a0 (arg0 at entry) +0xc (value ([a0+12]:2 | 0xca)).
  The `sw` at 0x4f4 stores 4 bytes from v0 to a0 (arg0 at entry) +0x8 (value [a0+8]+1).
  The `jalr` at 0x4d4 calls `(unknown callee)` with a0=a0+96, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4fc has v0 = [a0+8]+1.

- `pane_validmask` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x504 (n64).
  It occupies 8 bytes.
  The return at 0x504 has v0 = [a0+12]:2.

- `invalidate_pane` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x50c (n64).
  It occupies 140 bytes.
  The `sh` at 0x58c stores 2 bytes from v0 to ret(clip2pane) +0xc.
  The `jal` at 0x528 calls `clip2pane` with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x56c calls `mutex_spinlock` with a0=ret(clip2pane)+80, a1=?, a2=?, a3=?.
  The `jal` at 0x588 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x538 is taken when (s0(=a0) & 0x2) == 0 -> B4 and falls through when (s0(=a0) & 0x2) != 0 -> B1.
  The `bne` branch at 0x540 is taken when v0(=ret(clip2pane)) != 0 -> outside and falls through when v0(=ret(clip2pane)) == 0 -> B2.
  The `beq` branch at 0x564 is taken when v0(=ret(clip2pane)) == 0 -> B2 and falls through when v0(=ret(clip2pane)) != 0 -> B5.
  The return at 0x55c has v0 = ?.

- `invalidate_pane_buffer` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x598 (n64).
  It occupies 124 bytes.
  The `sh` at 0x608 stores 2 bytes from v0 to ret(clip2pane) +0xc.
  The `jal` at 0x5b0 calls `clip2pane` with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x5e8 calls `mutex_spinlock` with a0=ret(clip2pane)+80, a1=?, a2=?, a3=?.
  The `jal` at 0x604 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x5bc is taken when (s0(=a0) & 0x2) == 0 -> B2 and falls through when (s0(=a0) & 0x2) != 0 -> B1.
  The `bne` branch at 0x5c8 is taken when s1(=ret(clip2pane)) != 0 -> B5 and falls through when s1(=ret(clip2pane)) == 0 -> B3.
  The return at 0x5e0 has v0 = 0x0.

- `validate_pane_clip` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x614 (n64).
  It occupies 452 bytes.
  The `sw` at 0x664 stores 4 bytes from v0 to a2 (arg2 at entry) +0x18 (value 0xe).
  The `sw` at 0x6b0 stores 4 bytes from a2 to a2 (arg2 at entry) +0x38 (value ([a2+56] | 0x4)).
  The `sw` at 0x6b4 stores 4 bytes from a2 to ret(clip2pane) +0x20.
  The `sd` at 0x6c8 stores 8 bytes from ra to a2 (arg2 at entry) +0x20 (value [ret(clip2pane)+128]:8).
  The `sd` at 0x6e4 stores 8 bytes from at to ? (base unknown).
  The `sw` at 0x700 stores 4 bytes from v1 to ret(clip2pane) +0x8 (value [ret(clip2pane)+8]+1).
  The `sh` at 0x720 stores 2 bytes from a4 to ret(clip2pane) +0xc (value ([ret(clip2pane)+12]:2 | 0x42)).
  The `sh` at 0x738 stores 2 bytes from a5 to ret(clip2pane) +0xe.
  The `sw` at 0x774 stores 4 bytes from a2 to a2 (arg2 at entry) +0x38.
  The `sw` at 0x778 stores 4 bytes from a2 to ret(clip2pane) +0x20 (value [a2+56]).
  The `sh` at 0x790 stores 2 bytes from a7 to ret(clip2pane) +0x12.
  The `sd` at 0x7a4 stores 8 bytes from v0 to ret(clip2pane) +0x80 (value ret(kern_malloc)).
  The `sd` at 0x7b0 stores 8 bytes from zero to ret(clip2pane) +0x38 (value 0x0).
  The `jal` at 0x624 calls `clip2pane` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x670 calls `copyin` with a0=[a2+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x680 calls `mutex_spinlock` with a0=ret(clip2pane)+80, a1=?, a2=?, a3=?.
  The `jal` at 0x708 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=([ret(clip2pane)+12]:2 | 0x42), a7=ret(clip2pane)+96.
  The `jal` at 0x73c calls `sv_signal` with a0=ret(clip2pane)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x748 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x794 calls `kern_malloc` with a0=0xe0, a1=[ret(clip2pane)+128]:8, a2=?, a3=?.
  The `jal` at 0x7ac calls `vsema` with a0=ret(clip2pane)+40, a1=-0x3, a2=?, a3=?, a4=([ret(clip2pane)+12]:2 | 0x42), a7=ret(clip2pane)+96.
  The `jal` at 0x7c8 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=ret(clip2pane), a3=?.
  The `beq` branch at 0x630 is taken when v0(=ret(clip2pane)) == 0 -> B18 and falls through when v0(=ret(clip2pane)) != 0 -> B1.
  The `beq` branch at 0x63c is taken when a1(=[ret(clip2pane)+128]:8) == 0 -> B22 and falls through when a1(=[ret(clip2pane)+128]:8) != 0 -> B2.
  The `beq` branch at 0x648 is taken when a0(=[a2+32]:8) == 0 -> outside and falls through when a0(=[a2+32]:8) != 0 -> B3.
  The `bne` branch at 0x65c is taken when s2(=([a2+24] << 0x4)) < 0xe1 (unsigned) -> B5 and falls through when s2(=([a2+24] << 0x4)) >= 0xe1 (unsigned) -> B4.
  The `bne` branch at 0x678 is taken when v0(=ret(copyin)) != 0 -> B24 and falls through when v0(=ret(copyin)) == 0 -> B6.
  The `beq` branch at 0x698 is taken when (t8(=[ret(clip2pane)+12]:2) & 0x8) == 0 -> B21 and falls through when (t8(=[ret(clip2pane)+12]:2) & 0x8) != 0 -> B7.
  The `beq` branch at 0x6a4 is taken when t9(=[ret(clip2pane)+18]:2) == 0 -> B20 and falls through when t9(=[ret(clip2pane)+18]:2) != 0 -> B8.
  The `bgtz` branch at 0x6e0 is taken when a3(?) > 0 (signed) -> B11 and falls through when a3(?) <= 0 (signed) -> B12.
  The `beq` branch at 0x6fc is taken when (v0(=[ret(clip2pane)+12]:2) & 0x2) == 0 -> B14 and falls through when (v0(=[ret(clip2pane)+12]:2) & 0x2) != 0 -> B13.
  The `beq` branch at 0x728 is taken when (a2(=[ret(clip2pane)+14]:2) & 0x2) == 0 -> B17 and falls through when (a2(=[ret(clip2pane)+14]:2) & 0x2) != 0 -> B15.
  The `beq` branch at 0x734 is taken when a5(?) == 0 -> B23 and falls through when a5(?) != 0 -> B16.
  The return at 0x764 has v0 = one of 0x0, 0xe.

- `validate_pane_swapbuf` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x7d8 (n64).
  It occupies 160 bytes.
  The `sw` at 0x814 stores 4 bytes from t1 to ret(clip2pane) +0x14 (value a2).
  The `sh` at 0x820 stores 2 bytes from t0 to ret(clip2pane) +0xc (value ([ret(clip2pane)+12]:2 | 0x8)).
  The `sh` at 0x838 stores 2 bytes from t2 to ret(clip2pane) +0xe.
  The `sd` at 0x86c stores 8 bytes from zero to ret(clip2pane) +0x38 (value 0x0).
  The `jal` at 0x7e4 calls `clip2pane` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7f8 calls `mutex_spinlock` with a0=ret(clip2pane)+80, a1=?, a2=?, a3=?.
  The `jal` at 0x83c calls `sv_signal` with a0=ret(clip2pane)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x848 calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x868 calls `vsema` with a0=ret(clip2pane)+40, a1=?, a2=?, a3=?, a7=-0x9.
  The `beq` branch at 0x7ec is taken when v0(=ret(clip2pane)) == 0 -> B5 and falls through when v0(=ret(clip2pane)) != 0 -> B1.
  The `beq` branch at 0x828 is taken when (a5(=[ret(clip2pane)+14]:2) & 0x8) == 0 -> B4 and falls through when (a5(=[ret(clip2pane)+14]:2) & 0x8) != 0 -> B2.
  The `beq` branch at 0x834 is taken when t2(?) == 0 -> B6 and falls through when t2(?) != 0 -> B3.
  The return at 0x85c has v0 = 0x0.

- `validate_pane_buffer` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x878 (n64).
  It occupies 80 bytes.
  The `sh` at 0x8a8 stores 2 bytes from at to a0 (arg0 at entry) +0xc (value ([a0+12]:2 | 0x4)).
  The `jal` at 0x88c calls `mutex_spinlock` with a0=a0+80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x8a4 calls `sv_broadcast` with a0=a0+72, a1=?, a2=?, a3=?.
  The `jal` at 0x8b4 calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The return at 0x8c0 has v0 = ret(mutex_spinunlock).

- `validate_my_pane_buffer` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x8c8 (n64).
  It occupies 180 bytes.
  The `jal` at 0x8ec calls `mutex_spinlock` with a0=a0+80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x90c calls `hold_nonfatalsig` with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0x920 calls `sv_wait_sig` with a0=a0+72, a1=0x21e, a2=a0+80, a3=ret(mutex_spinlock).
  The `jal` at 0x930 calls `release_nonfatalsig` with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0x958 calls `release_nonfatalsig` with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0x96c calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x904 is taken when (at(?) & 0x4) == 0 -> B5 and falls through when (at(?) & 0x4) != 0 -> B1.
  The `bltz` branch at 0x928 is taken when v0(=ret(sv_wait_sig)) < 0 (signed) -> B4 and falls through when v0(=ret(sv_wait_sig)) >= 0 (signed) -> B2.
  The return at 0x950 has v0 = one of -0x1, 0x0.

- `validate_my_pane_resources` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x97c (n64).
  It occupies 1096 bytes.
  The `sh` at 0x9e4 stores 2 bytes from v0 to a0 (arg0 at entry) +0xc (value ([a0+12]:2 | 0x80)).
  The `sh` at 0xa58 stores 2 bytes from s5 to a0 (arg0 at entry) +0xe.
  The `sd` at 0xa60 stores 8 bytes from s1 to a0 (arg0 at entry) +0x38 (value a1).
  The `jal` at 0x9b0 calls `validate_my_pane_buffer` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x9c0 calls `mutex_spinlock` with a0=a0+80, a1=?, a2=?, a3=?.
  The `jal` at 0xa28 calls `pane_setnullclip` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xa34 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xa48 calls `cpsema` with a0=a0+40, a1=?, a2=?, a3=?.
  The `jal` at 0xa64 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xab0 calls `GfxMessage` with a0=sp-136, a1=?, a2=?, a3=?, a4=[[a1+8]:8+8]:8.
  The `jal` at 0xab8 calls `mutex_spinlock` with a0=a0+80, a1=?, a2=?, a3=?.
  The `jal` at 0xb18 calls `pane_setnullclip` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xb24 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xb5c calls `hold_nonfatalsig` with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xb70 calls `sv_wait_sig` with a0=a0+64, a1=0x21e, a2=a0+80, a3=ret(mutex_spinlock).
  The `jal` at 0xb80 calls `release_nonfatalsig` with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xb88 calls `mutex_spinlock` with a0=a0+80, a1=?, a2=?, a3=?.
  The `jal` at 0xbac calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xbcc calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xbd4 calls `hold_nonfatalsig` with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xbe0 calls `psema` with a0=?, a1=0x31e, a2=?, a3=?.
  The `jal` at 0xbf0 calls `release_nonfatalsig` with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xbf8 calls `mutex_spinlock` with a0=a0+80, a1=?, a2=?, a3=?.
  The `jal` at 0xc40 calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc58 calls `pane_setnullclip` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xc64 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xc74 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xc84 calls `curproc` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xc8c calls `proc_pid` with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0xca4 calls `cmn_err_tag` with a0=0x853, a1=0x4, a2=sym(.rodata), a3=ret(proc_pid).
  The `jal` at 0xcac calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcb8 calls `psignal` with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0xcc4 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xcd4 calls `curproc` with a0=a0 at entry (arg0), a1=[[a1+8]:8+8]:8, a2=?, a3=?.
  The `jal` at 0xcdc calls `proc_pid` with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0xcf4 calls `cmn_err_tag` with a0=0x851, a1=0x4, a2=sym(.rodata), a3=ret(proc_pid).
  The `jal` at 0xcfc calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd08 calls `psignal` with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0xd14 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xd28 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xd38 calls `release_nonfatalsig` with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xd48 calls `release_nonfatalsig` with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xd58 calls `curproc` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xd60 calls `proc_pid` with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0xd78 calls `cmn_err_tag` with a0=0x852, a1=0x4, a2=sym(.rodata), a3=ret(proc_pid).
  The `jal` at 0xd80 calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd8c calls `psignal` with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0xd98 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xda8 calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xdb4 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x9a8 is taken when (a2 & 0x8e) == 0 -> B22 and falls through when (a2 & 0x8e) != 0 -> B1.
  The `bltz` branch at 0x9b8 is taken when v0(=ret(validate_my_pane_buffer)) < 0 (signed) -> B28 and falls through when v0(=ret(validate_my_pane_buffer)) >= 0 (signed) -> B2.
  The `beq` branch at 0x9e0 is taken when (s5(?) & 0xa) == 0 -> B40 and falls through when (s5(?) & 0xa) != 0 -> B3.
  The `beq` branch at 0x9ec is taken when v1(=[a0+56]:8) == s1(=a1) -> B37 and falls through when v1(=[a0+56]:8) != s1(=a1) -> B4.
  The `bne` branch at 0x9f8 is taken when a0(=[a0+4]) != 0 -> B10 and falls through when a0(=[a0+4]) == 0 -> B5.
  The `beq` branch at 0xa08 is taken when a1(=[[a1+8]:8+8]:8) == s1(=a1) -> B9 and falls through when a1(=[[a1+8]:8+8]:8) != s1(=a1) -> B6.
  The `beq` branch at 0xa10 is taken when a2(?) == 0 -> B10 and falls through when a2(?) != 0 -> B7.
  The `beq` branch at 0xa20 is taken when (a3(=[a1+4]) & 0x8) == 0 -> B39 and falls through when (a3(=[a1+4]) & 0x8) != 0 -> B8.
  The `beq` branch at 0xa50 is taken when v0(=ret(cpsema)) == 0 -> B30 and falls through when v0(=ret(cpsema)) != 0 -> B11.
  The `beq` branch at 0xa74 is taken when a4(=[[a1+8]:8+8]:8) == 0 -> B29 and falls through when a4(=[[a1+8]:8+8]:8) != 0 -> B12.
  The `beq` branch at 0xa88 is taken when (s5(?) & 0x2) == 0 -> B14 and falls through when (s5(?) & 0x2) != 0 -> B13.
  The `beq` branch at 0xac8 is taken when (t3(=[a0+14]:2) & 0xa) == 0 -> outside and falls through when (t3(=[a0+14]:2) & 0xa) != 0 -> B15.
  The `bne` branch at 0xad4 is taken when t8(=[a0+56]:8) != s1(=a1) -> outside and falls through when t8(=[a0+56]:8) == s1(=a1) -> B16.
  The `bne` branch at 0xae8 is taken when ra(=[a0+4]) != 0 -> B24 and falls through when ra(=[a0+4]) == 0 -> B18.
  The `beq` branch at 0xaf8 is taken when at(=[[a1+8]:8+8]:8) == s1(=a1) -> B24 and falls through when at(=[[a1+8]:8+8]:8) != s1(=a1) -> B19.
  The `beq` branch at 0xb00 is taken when v0(?) == 0 -> B24 and falls through when v0(?) != 0 -> B20.
  The `beq` branch at 0xb10 is taken when (v1(=[a1+4]) & 0x8) == 0 -> B38 and falls through when (v1(=[a1+4]) & 0x8) != 0 -> B21.
  The `bltz` branch at 0xb78 is taken when v0(=ret(sv_wait_sig)) < 0 (signed) -> B41 and falls through when v0(=ret(sv_wait_sig)) >= 0 (signed) -> B25.
  The `beq` branch at 0xb98 is taken when (a0(=[a0+14]:2) & 0xa) == 0 -> outside and falls through when (a0(=[a0+14]:2) & 0xa) != 0 -> B26.
  The `beq` branch at 0xba4 is taken when a1(=[a0+56]:8) == s1(=a1) -> B17 and falls through when a1(=[a0+56]:8) != s1(=a1) -> B27.
  The `bltz` branch at 0xbe8 is taken when v0(=ret(psema)) < 0 (signed) -> B42 and falls through when v0(=ret(psema)) >= 0 (signed) -> B31.
  The `beq` branch at 0xc14 is taken when (s5(?) & 0xa) == 0 -> B44 and falls through when (s5(?) & 0xa) != 0 -> B32.
  The `bne` branch at 0xc20 is taken when t8(=[a0+4]) != 0 -> B11 and falls through when t8(=[a0+4]) == 0 -> B33.
  The `beq` branch at 0xc30 is taken when t9(=[[a1+8]:8+8]:8) == s1(=a1) -> B11 and falls through when t9(=[[a1+8]:8+8]:8) != s1(=a1) -> B34.
  The `beq` branch at 0xc38 is taken when a1(?) == 0 -> B11 and falls through when a1(?) != 0 -> B35.
  The `beq` branch at 0xc50 is taken when (ra(=[a1+4]) & 0x8) == 0 -> B43 and falls through when (ra(=[a1+4]) & 0x8) != 0 -> B36.
  The return at 0xb54 has v0 = one of -0x2, -0x1, 0x0.

- `init_panes` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0xdc4 (n64).
  It occupies 224 bytes.
  The `jal` at 0xde8 calls `init_sema` with a0=sym(.bss), a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0xe30 calls `init_sema` with a0=?, a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0xe48 calls `init_sv` with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0xe5c calls `init_sv` with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0xe6c calls `spinlock_init` with a0=?, a1=sym(.rodata), a2=?, a3=?.
  The `blez` branch at 0xe00 is taken when a1(=[sym(max_pane)]) <= 0 (signed) -> B3 and falls through when a1(=[sym(max_pane)]) > 0 (signed) -> B1.
  The `bne` branch at 0xe80 is taken when s1(?) < a2(=[sym(max_pane)]) (signed) -> B2 and falls through when s1(?) >= a2(=[sym(max_pane)]) (signed) -> B3.
  The return at 0xe9c has v0 = ?.

- `RRM_init_panes` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0xea4 (n64).
  It occupies 216 bytes.
  The `sh` at 0xf20 stores 2 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0xf24 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sh` at 0xf30 stores 2 bytes from zero to ? (base unknown) (value 0x0).
  The `jal` at 0xf2c calls `vsema` with a0=?, a1=[sym(max_pane)], a2=?, a3=?.
  The `jal` at 0xf44 calls `rrmSwapUnGroup` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0xec8 is taken when a1(=[sym(max_pane)]) <= 0 (signed) -> B10 and falls through when a1(=[sym(max_pane)]) > 0 (signed) -> B1.
  The `bne` branch at 0xedc is taken when at(?) != 0 -> B8 and falls through when at(?) == 0 -> B3.
  The `beq` branch at 0xeec is taken when s0(?) >= a1(=[sym(max_pane)]) (signed) -> B10 and falls through when s0(?) < a1(=[sym(max_pane)]) (signed) -> B4.
  The `bne` branch at 0xf10 is taken when v1(=[a0+40]:8) != a0(?) -> B3 and falls through when v1(=[a0+40]:8) == a0(?) -> B5.
  The `beq` branch at 0xf1c is taken when t8(?) == 0 -> B2 and falls through when t8(?) != 0 -> B6.
  The `beq` branch at 0xf38 is taken when t9(?) == 0 -> B9 and falls through when t9(?) != 0 -> B7.
  The `bne` branch at 0xf58 is taken when s0(?) < a1(=[sym(max_pane)]) (signed) -> B4 and falls through when s0(?) >= a1(=[sym(max_pane)]) (signed) -> B10.
  The return at 0xf74 has v0 = ?.

- `RRM_init` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0xf7c (n64).
  It occupies 172 bytes.
  The `sb` at 0xfe8 stores 1 bytes from s1 to ? (base unknown) (value 0x1).
  The `sw` at 0x1018 stores 4 bytes from a1 to sym(max_pane) +0x0 (value [sym(rrm_maxrn)]).
  The `jal` at 0xfe4 calls `init_sema` with a0=?, a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x1014 calls `init_panes` with a0=?, a1=[sym(rrm_maxrn)], a2=?, a3=?.
  The `bne` branch at 0xfac is taken when a1(=[sym(rrm_maxrn)]) < 0x2 (signed) -> B3 and falls through when a1(=[sym(rrm_maxrn)]) >= 0x2 (signed) -> B1.
  The `bne` branch at 0xff8 is taken when s0(?) < a1(=[sym(rrm_maxrn)]) (signed) -> B2 and falls through when s0(?) >= a1(=[sym(rrm_maxrn)]) (signed) -> B3.
  The return at 0x1020 has v0 = ret(init_panes).

- `RRM_Init` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x1028 (n64).
  It occupies 72 bytes.
  The `jal` at 0x1040 calls `spinlock_init` with a0=a0+48, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1058 calls `init_sema` with a0=a0+56, a1=0x1, a2=sym(.rodata), a3=-0x1.
  The return at 0x1068 has v0 = ret(init_sema).

- `rrmDoUnMapGfx` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x1070 (n64).
  It occupies 100 bytes.
  The `sw` at 0x1098 stores 4 bytes from v0 to a0 (arg0 at entry) +0x4 (value ([a0+4] | 0x10)).
  The `sw` at 0x10b4 stores 4 bytes from v1 to a0 (arg0 at entry) +0x4.
  The `jal` at 0x1080 calls `splhi` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10a0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10b8 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The return at 0x10cc has v0 = ret(splx).

- `rrmUnMapGfx` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x10d4 (n64).
  It occupies 148 bytes.
  The `jal` at 0x10fc calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1104 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x1120 calls `mutex_spinlock` with a0=[ret(gthread_find)+16]:8+16, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0x112c calls `rrmDoUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1140 calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1150 calls `rrmDoUnMapGfx` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10e4 is taken when at(=[a0+96]:8) == 0 -> B5 and falls through when at(=[a0+96]:8) != 0 -> B1.
  The `bne` branch at 0x10f4 is taken when (v0(=[a0+4]) & 0x8) != 0 -> B5 and falls through when (v0(=[a0+4]) & 0x8) == 0 -> B2.
  The `beq` branch at 0x110c is taken when v0(=ret(gthread_find)) == 0 -> B7 and falls through when v0(=ret(gthread_find)) != 0 -> B3.
  The `beq` branch at 0x1118 is taken when a1(=[ret(gthread_find)+16]:8) == 0 -> B6 and falls through when a1(=[ret(gthread_find)+16]:8) != 0 -> B4.
  The return at 0x1160 has v0 = ?.

- `rrmInvalidateRN` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x1168 (n64).
  It occupies 192 bytes.
  The `sd` at 0x11a4 stores 8 bytes from s0 to [a0+40]:8 +0x48 (value a0).
  The `sh` at 0x11fc stores 2 bytes from a4 to a1 (arg1 at entry) +0x6.
  The `jal` at 0x1198 calls `psema` with a0=[a0+40]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11b8 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x11d8 calls `mutex_spinlock` with a0=a1+104, a1=?, a2=?, a3=?.
  The `jal` at 0x1208 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=one of -0x2, 0x0, a3=?.
  The `beq` branch at 0x118c is taken when at(=[[a0+40]:8+72]:8) == a0 -> B3 and falls through when at(=[[a0+40]:8+72]:8) != a0 -> B1.
  The `beq` branch at 0x11b0 is taken when v0(=[[a0+40]:8+104]) == 0 -> B3 and falls through when v0(=[[a0+40]:8+104]) != 0 -> B2.
  The `bne` branch at 0x11c8 is taken when a0(=[[a0+40]:8+104]) != 0 -> B2 and falls through when a0(=[[a0+40]:8+104]) == 0 -> B3.
  The return at 0x1220 has v0 = ?.

- `RRM_InvalidateRN` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x1228 (n64).
  It occupies 396 bytes.
  The `sw` at 0x1320 stores 4 bytes from t0 to a2 (arg2 at entry) +0x10 (value 0x1).
  The `sw` at 0x1330 stores 4 bytes from t1 to a2 (arg2 at entry) +0xc.
  The `sw` at 0x1344 stores 4 bytes from a6 to a2 (arg2 at entry) +0x8.
  The `jal` at 0x128c calls `invalidate_pane` with a0=[a2+8], a1=[a2+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3), a6=0xff.
  The `jal` at 0x12ac calls `clip2pane` with a0=[a2+4], a1=a0 at entry (arg0), a2=?, a3=?, a6=ret(invalidate_pane).
  The `jalr` at 0x12e0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=[ret(clip2pane)+20], a3=0xff, a5=[[a0+32]:8+144]:8.
  The `jal` at 0x1314 calls `validate_pane_buffer` with a0=?, a1=a0 at entry (arg0), a2=ret(?), a3=?, a6=0x2.
  The `jal` at 0x1340 calls `copyout` with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x14, a3=?.
  The `jal` at 0x1370 calls `rrmInvalidateRN` with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=0x10, a3=?, a6=0x2, a7=[a0+72]:8.
  The `jalr` at 0x138c calls `(unknown callee)` with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1394 calls `rrmUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x124c is taken when a6(=0xff) == at(=(0xff | [a2+8])) -> B3 and falls through when a6(=0xff) != at(=(0xff | [a2+8])) -> B1.
  The `beq` branch at 0x1274 is taken when (v0(=[a2+8]) & v1(=-0xcb)) == 0 -> B5 and falls through when (v0(=[a2+8]) & v1(=-0xcb)) != 0 -> B4.
  The `beq` branch at 0x12a0 is taken when (a0(=[a2+8]) & 0x8) == 0 -> B17 and falls through when (a0(=[a2+8]) & 0x8) != 0 -> B6.
  The `beq` branch at 0x12b4 is taken when v0(=ret(clip2pane)) == 0 -> B19 and falls through when v0(=ret(clip2pane)) != 0 -> B7.
  The `beq` branch at 0x12c0 is taken when a1(=[a0+72]:8) == 0 -> B23 and falls through when a1(=[a0+72]:8) != 0 -> B8.
  The `beq` branch at 0x12d0 is taken when a3(=0xff) == a4(?) -> B15 and falls through when a3(=0xff) != a4(?) -> B9.
  The `bltz` branch at 0x12e8 is taken when v0(=ret(?)) < 0 (signed) -> B24 and falls through when v0(=ret(?)) >= 0 (signed) -> B10.
  The `blez` branch at 0x12f0 is taken when v0(=ret(?)) <= 0 (signed) -> B15 and falls through when v0(=ret(?)) > 0 (signed) -> B11.
  The `bne` branch at 0x12f8 is taken when v0(=ret(?)) != a6(=0x2) -> B14 and falls through when v0(=ret(?)) == a6(=0x2) -> B12.
  The `bne` branch at 0x1304 is taken when a7(=[a0+72]:8) != 0 -> B21 and falls through when a7(=[a0+72]:8) == 0 -> B13.
  The `beq` branch at 0x1348 is taken when v0(=ret(copyout)) == 0 -> B20 and falls through when v0(=ret(copyout)) != 0 -> B18.
  The `bne` branch at 0x1378 is taken when v0(=ret(rrmInvalidateRN)) != 0 -> B16 and falls through when v0(=ret(rrmInvalidateRN)) == 0 -> B22.
  The return at 0x1264 has v0 = ?.

- `rrmUnbindProcFromRN` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x13b4 (n64).
  It occupies 176 bytes.
  The `sd` at 0x1400 stores 8 bytes from zero to a0 (arg0 at entry) +0x48 (value 0x0).
  The `jal` at 0x13f4 calls `rrmDoUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1410 calls `GfxListWriterUnlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1430 calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1438 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x1454 calls `GfxListWriterLock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x13cc is taken when at(=[a0+72]:8) == 0 -> B7 and falls through when at(=[a0+72]:8) != 0 -> B1.
  The `beq` branch at 0x13dc is taken when v0(=[a0+96]:8) == 0 -> B3 and falls through when v0(=[a0+96]:8) != 0 -> B2.
  The `beq` branch at 0x13ec is taken when (v1(=[a0+4]) & 0x8) == 0 -> B8 and falls through when (v1(=[a0+4]) & 0x8) != 0 -> B3.
  The `beq` branch at 0x13fc is taken when s1(?) == 0 -> B6 and falls through when s1(?) != 0 -> B4.
  The `beq` branch at 0x1408 is taken when a0(?) == 0 -> B7 and falls through when a0(?) != 0 -> B5.
  The `beq` branch at 0x1440 is taken when v0(=ret(gthread_find)) == 0 -> B3 and falls through when v0(=ret(gthread_find)) != 0 -> B9.
  The `beq` branch at 0x144c is taken when a0(=[ret(gthread_find)+16]:8) == 0 -> B3 and falls through when a0(=[ret(gthread_find)+16]:8) != 0 -> B10.
  The return at 0x1428 has v0 = one of -0x1, 0x0.

- `RRM_BindProcToRN` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x1464 (n64).
  It occupies 240 bytes.
  The `sd` at 0x14a8 stores 8 bytes from s0 to a1 (arg1 at entry) +0x40 (value a0).
  The `sb` at 0x14b0 stores 1 bytes from v0 to a1 (arg1 at entry) +0x54 (value 0x1).
  The `sd` at 0x14b8 stores 8 bytes from s1 to a0 (arg0 at entry) +0x48 (value a1).
  The `sb` at 0x1514 stores 1 bytes from zero to [a0+72]:8 +0x54 (value 0x0).
  The `jal` at 0x14bc calls `valusema` with a0=[a0+40]:8+56, a1=?, a2=?, a3=?.
  The `jal` at 0x14cc calls `force_resched` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1504 calls `psema` with a0=(sym(RRMcall_sema) + ([[a0+72]:8+2]:2 << 0x4)), a1=0x19, a2=([[a0+72]:8+2]:2 << 0x4), a3=a3 at entry (arg3).
  The `jal` at 0x151c calls `rrmCloseRN` with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=?, a3=[[a0+72]:8+56]:8.
  The `jal` at 0x152c calls `rrmUnbindProcFromRN` with a0=a0 at entry (arg0), a1=?, a2=?, a3=[[a0+72]:8+56]:8.
  The `jal` at 0x1534 calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1544 calls `rrmUnbindProcFromRN` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1484 is taken when (at(=[a0+4]) & 0x8) == 0 -> B13 and falls through when (at(=[a0+4]) & 0x8) != 0 -> B1.
  The `beq` branch at 0x1490 is taken when s2(=[a0+72]:8) == 0 -> B3 and falls through when s2(=[a0+72]:8) != 0 -> B2.
  The `bne` branch at 0x1498 is taken when a1 != s2(=[a0+72]:8) -> B9 and falls through when a1 == s2(=[a0+72]:8) -> B3.
  The `beq` branch at 0x14a0 is taken when s1(=a1) == 0 -> B5 and falls through when s1(=a1) != 0 -> B4.
  The `beq` branch at 0x14c4 is taken when v0(=ret(valusema)) == 0 -> B8 and falls through when v0(=ret(valusema)) != 0 -> B7.
  The `bne` branch at 0x1510 is taken when a3(=[[a0+72]:8+56]:8) != 0 -> B11 and falls through when a3(=[[a0+72]:8+56]:8) == 0 -> B10.
  The return at 0x14e8 has v0 = 0x0.

- `RRM_BindRNToReadAndClip` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x1554 (n64).
  It occupies 768 bytes.
  The `sh` at 0x15e0 stores 2 bytes from v0 to a1 (arg1 at entry) +0x4.
  The `sw` at 0x15f4 stores 4 bytes from zero to a1 (arg1 at entry) +0x88 (value 0x0).
  The `sd` at 0x15f8 stores 8 bytes from v0 to a1 (arg1 at entry) +0x78 (value ret(bind_pane)).
  The `sw` at 0x160c stores 4 bytes from zero to a1 (arg1 at entry) +0x8c (value 0x0).
  The `sd` at 0x1614 stores 8 bytes from v0 to a1 (arg1 at entry) +0x80 (value ret(bind_pane)).
  The `sh` at 0x1624 stores 2 bytes from a2 to a1 (arg1 at entry) +0x4.
  The `sw` at 0x16b8 stores 4 bytes from v1 to a1 (arg1 at entry) +0x18 (value [a2+8]).
  The `sw` at 0x16e8 stores 4 bytes from a1 to a1 (arg1 at entry) +0x18 (value [a2+8]).
  The `sw` at 0x170c stores 4 bytes from a5 to a1 (arg1 at entry) +0x14 (value [a2+4]).
  The `sw` at 0x1734 stores 4 bytes from v0 to a2 (arg2 at entry) +0xc (value [[a1+120]:8]).
  The `sw` at 0x1744 stores 4 bytes from v1 to a2 (arg2 at entry) +0x10 (value [[a1+128]:8]).
  The `sw` at 0x1770 stores 4 bytes from v0 to a2 (arg2 at entry) +0x10 (value [[a1+120]:8]).
  The `sd` at 0x17a4 stores 8 bytes from v0 to a1 (arg1 at entry) +0x80 (value ret(bind_pane)).
  The `sw` at 0x17a8 stores 4 bytes from zero to a1 (arg1 at entry) +0x8c (value 0x0).
  The `sh` at 0x17c0 stores 2 bytes from a2 to a1 (arg1 at entry) +0x4 (value ([a1+4]:2 | 0x40)).
  The `sw` at 0x1810 stores 4 bytes from a7 to a1 (arg1 at entry) +0x88 (value [[a1+120]:8+8]).
  The `sw` at 0x181c stores 4 bytes from a6 to a1 (arg1 at entry) +0x8c (value [[a1+128]:8+8]).
  The `jal` at 0x1598 calls `validate_my_pane_buffer` with a0=[a1+120]:8, a1=a0 at entry (arg0), a2=[a1+4]:2, a3=a3 at entry (arg3), a6=[a2+4].
  The `jal` at 0x15a4 calls `unbind_pane` with a0=[a1+120]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x15c0 calls `validate_my_pane_buffer` with a0=[a1+128]:8, a1=a0 at entry (arg0), a2=[a1+4]:2, a3=?.
  The `jal` at 0x15cc calls `unbind_pane` with a0=[a1+128]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x15ec calls `bind_pane` with a0=a0 at entry (arg0), a1=[a2+4], a2=?, a3=?, a6=[a2+4].
  The `jal` at 0x16d8 calls `GfxMessage` with a0=sp-112, a1=?, a2=?, a3=?.
  The `jal` at 0x177c calls `copyout` with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x14, a3=?, a5=[a2+4], a6=[a2+4], a7=[a2+8].
  The `jal` at 0x179c calls `bind_pane` with a0=a0 at entry (arg0), a1=[a2+8], a2=?, a3=?.
  The `jal` at 0x17c4 calls `RRM_CheckValidFault` with a0=a0 at entry (arg0), a1=ret(bind_pane), a2=?, a3=?, a6=[[a0+40]:8+8]:8.
  The `jalr` at 0x17f0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[a0+40]:8+8]:8, a3=[a1+120]:8+96, a4=[[a0+32]:8+80]:8.
  The `jal` at 0x1824 calls `rrmUnMapGfx` with a0=a0 at entry (arg0), a1=ret(bind_pane), a2=?, a3=?.
  The `jal` at 0x183c calls `GfxMessage` with a0=sp-112, a1=[a2+8], a2=?, a3=?, a7=[[a0+8]:8+8]:8.
  The `beq` branch at 0x1584 is taken when a6(=[a2+4]) == 0 -> B23 and falls through when a6(=[a2+4]) != 0 -> B1.
  The `beq` branch at 0x1590 is taken when a0(=[a1+120]:8) == 0 -> B5 and falls through when a0(=[a1+120]:8) != 0 -> B2.
  The `beq` branch at 0x15b4 is taken when (a2(=[a1+4]:2) & 0x40) == 0 -> B4 and falls through when (a2(=[a1+4]:2) & 0x40) != 0 -> B3.
  The `bne` branch at 0x1604 is taken when v1(=[a2+4]) != a1(=[a2+8]) -> B29 and falls through when v1(=[a2+4]) == a1(=[a2+8]) -> B6.
  The `beq` branch at 0x1630 is taken when (a4(?) & 0x2) == 0 -> B34 and falls through when (a4(?) & 0x2) != 0 -> B8.
  The `beq` branch at 0x1640 is taken when (a5(=[ret(bind_pane)+12]:2) & 0x40) == 0 -> B34 and falls through when (a5(=[ret(bind_pane)+12]:2) & 0x40) != 0 -> B9.
  The `beq` branch at 0x1650 is taken when a6(=[[a0+40]:8+8]:8) == s0(=a1) -> B30 and falls through when a6(=[[a0+40]:8+8]:8) != s0(=a1) -> B10.
  The `beq` branch at 0x1660 is taken when a7(=[[a0+8]:8+8]:8) == 0 -> B28 and falls through when a7(=[[a0+8]:8+8]:8) != 0 -> B12.
  The `beq` branch at 0x1694 is taken when t0(=[a2+4]) == a1(=[a2+8]) -> B17 and falls through when t0(=[a2+4]) != a1(=[a2+8]) -> B13.
  The `beq` branch at 0x16ac is taken when s3(=one of 0x0, 0x1) == 0 -> B36 and falls through when s3(=one of 0x0, 0x1) != 0 -> B14.
  The `bne` branch at 0x16d0 is taken when s3(=one of 0x0, 0x1) != 0 -> B18 and falls through when s3(=one of 0x0, 0x1) == 0 -> B16.
  The `beq` branch at 0x1700 is taken when s3(=one of 0x0, 0x1) == 0 -> B16 and falls through when s3(=one of 0x0, 0x1) != 0 -> B18.
  The `beq` branch at 0x1718 is taken when (a4(=[a0+4]) & 0x8) == 0 -> B23 and falls through when (a4(=[a0+4]) & 0x8) != 0 -> B20.
  The `beq` branch at 0x1730 is taken when a6(=[a2+4]) == a7(=[a2+8]) -> B25 and falls through when a6(=[a2+4]) != a7(=[a2+8]) -> B21.
  The `bne` branch at 0x1740 is taken when s4(=a3) != 0 -> B26 and falls through when s4(=a3) == 0 -> B22.
  The `beq` branch at 0x176c is taken when s4(=a3) == 0 -> B22 and falls through when s4(=a3) != 0 -> B26.
  The `beq` branch at 0x1784 is taken when v0(=ret(copyout)) == 0 -> B23 and falls through when v0(=ret(copyout)) != 0 -> B27.
  The `bltz` branch at 0x17cc is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) -> B35 and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed) -> B31.
  The `beq` branch at 0x17fc is taken when v0(=ret(?)) == a5(=-0x1) -> B37 and falls through when v0(=ret(?)) != a5(=-0x1) -> B32.
  The return at 0x1764 has v0 = one of 0x0, 0xe, 0x16.

- `RRM_BindRNToClip` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x1854 (n64).
  It occupies 156 bytes.
  The `sw` at 0x18dc stores 4 bytes from a3 to a2 (arg2 at entry) +0x8.
  The `jal` at 0x1890 calls `RRM_BindRNToReadAndClip` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-64, a3=0x0.
  The `jal` at 0x18d8 calls `copyout` with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0xc, a3=?, a4=a2 at entry (arg2).
  The `beq` branch at 0x18a0 is taken when (a1(=[a0+4]) & 0x8) == 0 -> B2 and falls through when (a1(=[a0+4]) & 0x8) != 0 -> B1.
  The `beq` branch at 0x18a8 is taken when v0(=ret(RRM_BindRNToReadAndClip)) == 0 -> B4 and falls through when v0(=ret(RRM_BindRNToReadAndClip)) != 0 -> B2.
  The `beq` branch at 0x18e0 is taken when v0(=ret(copyout)) == 0 -> B3 and falls through when v0(=ret(copyout)) != 0 -> B5.
  The return at 0x18c0 has v0 = ?.

- `RRM_UnbindRNFromClip` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x18f0 (n64).
  It occupies 36 bytes.
  The `jal` at 0x18fc calls `pane_cleanup` with a0=[a2+4], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x190c has v0 = 0x0.

- `RRM_OpenRN` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x1914 (n64).
  It occupies 732 bytes.
  The `sw` at 0x1950 stores 4 bytes from a0 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]+1).
  The `sw` at 0x1990 stores 4 bytes from a1 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sd` at 0x19a4 stores 8 bytes from s1 to [a0+40]:8 +0x48 (value a0).
  The `sb` at 0x1a9c stores 1 bytes from zero to table(sym(RRMrn)) +0x52 (value 0x0).
  The `sd` at 0x1aac stores 8 bytes from s1 to table(sym(RRMrn)) +0x40 (value a0).
  The `sd` at 0x1ab0 stores 8 bytes from s1 to table(sym(RRMrn)) +0x38 (value a0).
  The `sw` at 0x1abc stores 4 bytes from a5 to table(sym(RRMrn)) +0x0.
  The `sd` at 0x1ac4 stores 8 bytes from a4 to table(sym(RRMrn)) +0x48 (value [a0+40]:8).
  The `sh` at 0x1ad0 stores 2 bytes from a2 to table(sym(RRMrn)) +0x6 (value 0x34).
  The `sh` at 0x1ad8 stores 2 bytes from a3 to table(sym(RRMrn)) +0x4 (value ([a2+4] | 0xb5)).
  The `sh` at 0x1b0c stores 2 bytes from a5 to table(sym(RRMrn)) +0x50 (value -0x1).
  The `sd` at 0x1b10 stores 8 bytes from zero to table(sym(RRMrn)) +0x70 (value 0x0).
  The `sd` at 0x1b24 stores 8 bytes from zero to table(sym(RRMrn)) +0x8 (value 0x0).
  The `sh` at 0x1b30 stores 2 bytes from a4 to table(sym(RRMrn)) +0x6.
  The `sb` at 0x1b84 stores 1 bytes from s3 to table(sym(RRMrn)) +0x52 (value 0x1).
  The `sw` at 0x1b90 stores 4 bytes from a4 to ? (base unknown).
  The `sb` at 0x1ba4 stores 1 bytes from zero to table(sym(RRMrn)) +0x54 (value 0x0).
  The `sw` at 0x1bb8 stores 4 bytes from a5 to a4 (arg4 at entry) +0x0 (value entry(sym(RRMrn))).
  The `sh` at 0x1bcc stores 2 bytes from t0 to table(sym(RRMrn)) +0x4.
  The `sd` at 0x1bd8 stores 8 bytes from s2 to ret(kern_malloc) +0x0 (value table(sym(RRMrn))).
  The `sd` at 0x1be0 stores 8 bytes from t2 to ret(kern_malloc) +0x8 (value [a0+64]:8).
  The `sd` at 0x1be4 stores 8 bytes from v0 to a0 (arg0 at entry) +0x40 (value ret(kern_malloc)).
  The `sb` at 0x1bec stores 1 bytes from s3 to table(sym(RRMrn)) +0x54 (value 0x1).
  The `jal` at 0x1998 calls `psema` with a0=[a0+40]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19b8 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x19e4 calls `psema` with a0=sym(.bss), a1=0x19, a2=-0x1, a3=?.
  The `jal` at 0x1a54 calls `vsema` with a0=sym(.bss), a1=[sym(rrm_maxrn)], a2=?, a3=?, a6=sym(RRMrn).
  The `jal` at 0x1a90 calls `bzero` with a0=table(sym(RRMrn)), a1=0xb0, a2=entry(sym(RRMrn)), a3=?, a6=sym(RRMrn).
  The `jal` at 0x1aa0 calls `vsema` with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x1b34 calls `init_sv` with a0=table(sym(RRMrn))+48, a1=0x0, a2=sym(.rodata), a3=-0x1, a5=-0x1, a7=-0x5.
  The `jal` at 0x1b48 calls `spinlock_init` with a0=table(sym(RRMrn))+104, a1=sym(.rodata), a2=?, a3=?.
  The `jalr` at 0x1b5c calls `(unknown callee)` with a0=?, a1=table(sym(RRMrn)), a2=[[a0+32]:8+64]:8, a3=?.
  The `jal` at 0x1b6c calls `sv_destroy` with a0=table(sym(RRMrn))+48, a1=?, a2=?, a3=?.
  The `jal` at 0x1b74 calls `spinlock_destroy` with a0=table(sym(RRMrn))+104, a1=?, a2=?, a3=?.
  The `jal` at 0x1bd0 calls `kern_malloc` with a0=0x10, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1940 is taken when at(=[[a0+40]:8+72]:8) != a0 -> B4 and falls through when at(=[[a0+40]:8+72]:8) == a0 -> B1.
  The `beq` branch at 0x195c is taken when v1(=[a2]) == a2(=-0x1) -> B7 and falls through when v1(=[a2]) != a2(=-0x1) -> B3.
  The `beq` branch at 0x19b0 is taken when a2(=[[a0+40]:8+104]) == 0 -> B1 and falls through when a2(=[[a0+40]:8+104]) != 0 -> B5.
  The `bne` branch at 0x19c8 is taken when a4(=[[a0+40]:8+104]) != 0 -> B5 and falls through when a4(=[[a0+40]:8+104]) == 0 -> B6.
  The `bne` branch at 0x19fc is taken when a1(=[sym(rrm_maxrn)]) < 0x2 (signed) -> B13 and falls through when a1(=[sym(rrm_maxrn)]) >= 0x2 (signed) -> B8.
  The `beq` branch at 0x1a2c is taken when s3(=0x1) == v1(?) -> B11 and falls through when s3(=0x1) != v1(?) -> B10.
  The `bne` branch at 0x1a44 is taken when s0(?) < a1(=[sym(rrm_maxrn)]) (signed) -> B9 and falls through when s0(?) >= a1(=[sym(rrm_maxrn)]) (signed) -> B11.
  The `bne` branch at 0x1a4c is taken when a1(=[sym(rrm_maxrn)]) != s0(?) -> B14 and falls through when a1(=[sym(rrm_maxrn)]) == s0(?) -> B12.
  The `beq` branch at 0x1a64 is taken when a1(=[sym(rrm_maxrn)]) == s3(=0x1) -> B12 and falls through when a1(=[sym(rrm_maxrn)]) != s3(=0x1) -> B14.
  The `beq` branch at 0x1af0 is taken when a1(=[[a0+8]:8+8]:8) == s1(=a0) -> B22 and falls through when a1(=[[a0+8]:8+8]:8) != s1(=a0) -> B15.
  The `beq` branch at 0x1afc is taken when (a1(=[table(sym(RRMrn))+4]:2) & 0x2) == 0 -> B22 and falls through when (a1(=[table(sym(RRMrn))+4]:2) & 0x2) != 0 -> B16.
  The `beq` branch at 0x1b64 is taken when v0(=ret(?)) == 0 -> B19 and falls through when v0(=ret(?)) != 0 -> B18.
  The `beq` branch at 0x1b9c is taken when (a3(=[a0+4]) & 0x8) == 0 -> B23 and falls through when (a3(=[a0+4]) & 0x8) != 0 -> B20.
  The return at 0x198c has v0 = one of 0x0, 0xc, 0x16.

- `rrmCloseRN` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x1bf0 (n64).
  It occupies 796 bytes.
  The `sd` at 0x1bfc stores 8 bytes from zero to a1 (arg1 at entry) +0x38 (value 0x0).
  The `sd` at 0x1c3c stores 8 bytes from s1 to a1 (arg1 at entry) +0x40 (value a0).
  The `sw` at 0x1c58 stores 4 bytes from a4 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]+1).
  The `sd` at 0x1cc8 stores 8 bytes from v0 to [a0+40]:8 +0xa8.
  The `sd` at 0x1ccc stores 8 bytes from v0 to ? (base unknown).
  The `sd` at 0x1cd0 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0x1d04 stores 8 bytes from v0 to ? (base unknown).
  The `sd` at 0x1d08 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sh` at 0x1d38 stores 2 bytes from t2 to a1 (arg1 at entry) +0x0.
  The `sd` at 0x1d54 stores 8 bytes from zero to a1 (arg1 at entry) +0x78 (value 0x0).
  The `sd` at 0x1d58 stores 8 bytes from zero to a1 (arg1 at entry) +0x80 (value 0x0).
  The `sb` at 0x1d70 stores 1 bytes from t9 to a1 (arg1 at entry) +0x52 (value 0x1).
  The `sd` at 0x1d80 stores 8 bytes from zero to [a0+40]:8 +0x8 (value 0x0).
  The `sd` at 0x1da0 stores 8 bytes from zero to ([[a0+40]:8+24]:8 + ([a1+80]:2 << 0x3)) +0x0 (value 0x0).
  The `sd` at 0x1dc0 stores 8 bytes from v0 to [a1+96]:8 +0x58 (value [a1+88]:8).
  The `sd` at 0x1dd0 stores 8 bytes from a0 to [a1+88]:8 +0x60 (value [a1+96]:8).
  The `sw` at 0x1ddc stores 4 bytes from a3 to [a0+40]:8 +0x10 (value [[a0+40]:8+16]-1).
  The `sw` at 0x1df0 stores 4 bytes from a2 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sd` at 0x1e14 stores 8 bytes from v0 to [a0+40]:8 +0x88.
  The `sd` at 0x1e28 stores 8 bytes from s1 to [a0+40]:8 +0x48 (value a0).
  The `sd` at 0x1e68 stores 8 bytes from zero to a1 (arg1 at entry) +0x78 (value 0x0).
  The `sd` at 0x1e80 stores 8 bytes from t0 to a0 (arg0 at entry) +0x40 (value [[a0+64]:8+8]:8).
  The `sd` at 0x1eb0 stores 8 bytes from v0 to [a0+40]:8 +0x20 (value [a1+88]:8).
  The `sd` at 0x1eb8 stores 8 bytes from a0 to [a0+40]:8 +0x28 (value [a1+96]:8).
  The `sd` at 0x1ef4 stores 8 bytes from t8 to ? (base unknown).
  The `jalr` at 0x1c6c calls `(unknown callee)` with a0=[a0+40]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=[[a0+32]:8+72]:8, a4=[[a0+40]:8+80]+1.
  The `jal` at 0x1c80 calls `mutex_spinlock` with a0=[a0+40]:8+48, a1=?, a2=?, a3=?.
  The `jal` at 0x1d0c calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[[a0+40]:8+136]:8.
  The `jal` at 0x1d3c calls `unbind_pane` with a0=[a1+120]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1d5c calls `sv_destroy` with a0=a1+48, a1=?, a2=?, a3=?.
  The `jal` at 0x1d64 calls `spinlock_destroy` with a0=a1+104, a1=?, a2=?, a3=?.
  The `jal` at 0x1e1c calls `psema` with a0=[a0+40]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e3c calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x1e5c calls `unbind_pane` with a0=[a1+128]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1e84 calls `kern_free` with a0=?, a1=?, a2=?, a3=?, a7=[[a0+64]:8]:8.
  The `jal` at 0x1e94 calls `rrmUnbindProcFromRN` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+72]:8.
  The `jal` at 0x1efc calls `cmn_err` with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x1c14 is taken when (at(=[a0+4]) & 0x8) == 0 -> B5 and falls through when (at(=[a0+4]) & 0x8) != 0 -> B1.
  The `beq` branch at 0x1c20 is taken when v0(=[a1+84]:1) == 0 -> B4 and falls through when v0(=[a1+84]:1) != 0 -> B2.
  The `beq` branch at 0x1c2c is taken when v1(=[a1+64]:8) == a0 -> B4 and falls through when v1(=[a1+64]:8) != a0 -> B3.
  The `bne` branch at 0x1c48 is taken when a0(=[[a0+40]:8+72]:8) != s1(=a0) -> B41 and falls through when a0(=[[a0+40]:8+72]:8) == s1(=a0) -> B6.
  The `beq` branch at 0x1c78 is taken when a5(=[a0+72]:8) == s0(=a1) -> B48 and falls through when a5(=[a0+72]:8) != s0(=a1) -> B8.
  The `beq` branch at 0x1c94 is taken when a6(=[[a0+40]:8+168]:8) == 0 -> B16 and falls through when a6(=[[a0+40]:8+168]:8) != 0 -> B9.
  The `beq` branch at 0x1c9c is taken when s0(=a1) == a2(?) -> B12 and falls through when s0(=a1) != a2(?) -> B10.
  The `bne` branch at 0x1cac is taken when a7(?) != 0 -> B9 and falls through when a7(?) == 0 -> B11.
  The `bne` branch at 0x1cbc is taken when a6(=[[a0+40]:8+168]:8) != a2(?) -> B14 and falls through when a6(=[[a0+40]:8+168]:8) == a2(?) -> B13.
  The `beq` branch at 0x1cdc is taken when a6(=[[a0+40]:8+136]:8) == 0 -> B23 and falls through when a6(=[[a0+40]:8+136]:8) != 0 -> B18.
  The `beq` branch at 0x1ce4 is taken when s0(=a1) == a2(?) -> B39 and falls through when s0(=a1) != a2(?) -> B19.
  The `bne` branch at 0x1cf4 is taken when t0(?) != 0 -> B18 and falls through when t0(?) == 0 -> B20.
  The `beq` branch at 0x1d1c is taken when (t1(=[a0+4]) & 0x8) == 0 -> B45 and falls through when (t1(=[a0+4]) & 0x8) != 0 -> B24.
  The `beq` branch at 0x1d34 is taken when a0(=[a1+120]:8) == 0 -> B29 and falls through when a0(=[a1+120]:8) != 0 -> B26.
  The `bne` branch at 0x1d4c is taken when t3(=[a1+120]:8) != a0(=[a1+128]:8) -> B44 and falls through when t3(=[a1+120]:8) == a0(=[a1+128]:8) -> B27.
  The `bne` branch at 0x1d78 is taken when t8(=[[a0+40]:8+8]:8) != s0(=a1) -> B31 and falls through when t8(=[[a0+40]:8+8]:8) == s0(=a1) -> B30.
  The `beq` branch at 0x1d8c is taken when v0(=[a1+80]:2) == at(=-0x1) -> B37 and falls through when v0(=[a1+80]:2) != at(=-0x1) -> B32.
  The `beq` branch at 0x1dac is taken when v1(=[[a0+8]:8+8]:8) == s1(=a0) -> B37 and falls through when v1(=[[a0+8]:8+8]:8) != s1(=a0) -> B33.
  The `beq` branch at 0x1db8 is taken when a0(=[a1+96]:8) == 0 -> B50 and falls through when a0(=[a1+96]:8) != 0 -> B34.
  The `beq` branch at 0x1dc8 is taken when v0(=[a1+88]:8) == 0 -> B51 and falls through when v0(=[a1+88]:8) != 0 -> B36.
  The `bne` branch at 0x1e08 is taken when a6(=[[a0+40]:8+136]:8) != a2(?) -> B21 and falls through when a6(=[[a0+40]:8+136]:8) == a2(?) -> B40.
  The `beq` branch at 0x1e34 is taken when a4(=[[a0+40]:8+104]) == 0 -> B6 and falls through when a4(=[[a0+40]:8+104]) != 0 -> B42.
  The `bne` branch at 0x1e4c is taken when a6(=[[a0+40]:8+104]) != 0 -> B42 and falls through when a6(=[[a0+40]:8+104]) == 0 -> B43.
  The `bne` branch at 0x1e74 is taken when a7(=[[a0+64]:8]:8) != s0(=a1) -> B52 and falls through when a7(=[[a0+64]:8]:8) == s0(=a1) -> B46.
  The `beq` branch at 0x1e9c is taken when v0(=ret(rrmUnbindProcFromRN)) == 0 -> B8 and falls through when v0(=ret(rrmUnbindProcFromRN)) != 0 -> B49.
  The `beq` branch at 0x1ec0 is taken when t1(=[[a0+64]:8+8]:8) == 0 -> B47 and falls through when t1(=[[a0+64]:8+8]:8) != 0 -> B53.
  The `beq` branch at 0x1ecc is taken when t2(?) == s0(=a1) -> B56 and falls through when t2(?) != s0(=a1) -> B54.
  The `bne` branch at 0x1edc is taken when t3(?) != 0 -> B53 and falls through when t3(?) == 0 -> B55.
  The return at 0x1e00 has v0 = 0x0.

- `RRM_CloseRN` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x1f0c (n64).
  It occupies 32 bytes.
  The `jal` at 0x1f14 calls `rrmCloseRN` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1f24 has v0 = 0x0.

- `RRM_Exit` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x1f2c (n64).
  It occupies 572 bytes.
  The `sw` at 0x2044 stores 4 bytes from zero to [a0+40]:8 +0x54 (value 0x0).
  The `sw` at 0x2050 stores 4 bytes from zero to [a0+40]:8 +0x50 (value 0x0).
  The `sd` at 0x2070 stores 8 bytes from zero to [a0+40]:8 +0x48 (value 0x0).
  The `sb` at 0x2114 stores 1 bytes from zero to [a0+72]:8 +0x54 (value 0x0).
  The `jal` at 0x1f94 calls `psema` with a0=table(sym(RRMcall_sema)), a1=0x19, a2=?, a3=?.
  The `jal` at 0x1fa0 calls `rrmCloseRN` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1fb0 calls `vsema` with a0=table(sym(RRMcall_sema)), a1=?, a2=?, a3=?.
  The `jal` at 0x204c calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2064 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[[a0+32]:8+192]:8, a2=?, a3=?.
  The `jal` at 0x2078 calls `vsema` with a0=[a0+40]:8+56, a1=[a0+40]:8, a2=?, a3=?.
  The `jal` at 0x2080 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x20b8 calls `psema` with a0=(sym(RRMcall_sema) + ([[[a0+64]:8]:8+2]:2 << 0x4)), a1=0x19, a2=?, a3=?.
  The `jal` at 0x20c4 calls `rrmCloseRN` with a0=a0 at entry (arg0), a1=[[a0+64]:8]:8, a2=?, a3=?.
  The `jal` at 0x20d4 calls `vsema` with a0=(sym(RRMcall_sema) + ([[[a0+64]:8]:8+2]:2 << 0x4)), a1=?, a2=?, a3=?.
  The `jal` at 0x2104 calls `psema` with a0=(sym(RRMcall_sema) + ([[a0+72]:8+2]:2 << 0x4)), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x211c calls `rrmCloseRN` with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x212c calls `rrmUnbindProcFromRN` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2134 calls `vsema` with a0=(sym(RRMcall_sema) + ([[a0+72]:8+2]:2 << 0x4)), a1=?, a2=?, a3=?.
  The `jal` at 0x2144 calls `cmn_err` with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2158 calls `cmn_err` with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x1f50 is taken when (at(=[a0+4]) & 0x8) == 0 -> B16 and falls through when (at(=[a0+4]) & 0x8) != 0 -> B1.
  The `beq` branch at 0x1f5c is taken when s1(=[a0+72]:8) == 0 -> B3 and falls through when s1(=[a0+72]:8) != 0 -> B2.
  The `bne` branch at 0x1f68 is taken when v0(=[[a0+72]:8+56]:8) != a0 -> B20 and falls through when v0(=[[a0+72]:8+56]:8) == a0 -> B3.
  The `bne` branch at 0x1f78 is taken when v0(=[sym(rrm_maxrn)]) < 0x2 (signed) -> B9 and falls through when v0(=[sym(rrm_maxrn)]) >= 0x2 (signed) -> B4.
  The `bne` branch at 0x1fa8 is taken when v0(=ret(rrmCloseRN)) != 0 -> B25 and falls through when v0(=ret(rrmCloseRN)) == 0 -> B6.
  The `beq` branch at 0x1fcc is taken when s1(?) >= v0(=[sym(rrm_maxrn)]) (signed) -> B9 and falls through when s1(?) < v0(=[sym(rrm_maxrn)]) (signed) -> B7.
  The `beq` branch at 0x1fec is taken when t8(?) == s0(=a0) -> B5 and falls through when t8(?) != s0(=a0) -> B8.
  The `bne` branch at 0x2004 is taken when s1(?) < v0(=[sym(rrm_maxrn)]) (signed) -> B7 and falls through when s1(?) >= v0(=[sym(rrm_maxrn)]) (signed) -> B9.
  The `beq` branch at 0x2010 is taken when v0(=[a0+40]:8) == 0 -> B12 and falls through when v0(=[a0+40]:8) != 0 -> B11.
  The `beq` branch at 0x201c is taken when t8(=[[a0+40]:8+72]:8) == s0(=a0) -> B13 and falls through when t8(=[[a0+40]:8+72]:8) != s0(=a0) -> B12.
  The `beq` branch at 0x205c is taken when a1(=[[a0+32]:8+192]:8) == 0 -> B15 and falls through when a1(=[[a0+32]:8+192]:8) != 0 -> B14.
  The `beq` branch at 0x2094 is taken when v0(=[a0+64]:8) == 0 -> B9 and falls through when v0(=[a0+64]:8) != 0 -> B17.
  The `bne` branch at 0x20cc is taken when v0(=ret(rrmCloseRN)) != 0 -> B24 and falls through when v0(=ret(rrmCloseRN)) == 0 -> B18.
  The `bne` branch at 0x20e0 is taken when v0(=[a0+64]:8) != 0 -> B17 and falls through when v0(=[a0+64]:8) == 0 -> B19.
  The `bne` branch at 0x2110 is taken when t9(=[[a0+72]:8+56]:8) != 0 -> B22 and falls through when t9(=[[a0+72]:8+56]:8) == 0 -> B21.
  The return at 0x203c has v0 = 0x0.

- `rrmGetResourceMask` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x2168 (n64).
  It occupies 8 bytes.
  The return at 0x2168 has v0 = [a0+4]:2.

- `rrmSuspend` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x2170 (n64).
  It occupies 936 bytes.
  The `sw` at 0x21d8 stores 4 bytes from a2 to ret(gthread_find) +0x8 (value ([ret(gthread_find)+8] | 0x8)).
  The `sw` at 0x2200 stores 4 bytes from a0 to [ret(gthread_find)+24]:8 +0xc (value [[ret(gthread_find)+24]:8+12]+1).
  The `sw` at 0x227c stores 4 bytes from a2 to ret(gthread_find) +0x8 (value ([ret(gthread_find)+8] | 0x1)).
  The `sw` at 0x229c stores 4 bytes from a4 to ? (base unknown).
  The `sw` at 0x22b4 stores 4 bytes from a5 to ret(gthread_find) +0x8.
  The `sw` at 0x2378 stores 4 bytes from t8 to ? (base unknown).
  The `sd` at 0x2398 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sw` at 0x2400 stores 4 bytes from a3 to ? (base unknown).
  The `sw` at 0x2408 stores 4 bytes from v0 to ? (base unknown) (value ret(?)).
  The `sw` at 0x240c stores 4 bytes from zero to ? (base unknown) (value 0x0).
  The `sw` at 0x2420 stores 4 bytes from a4 to ? (base unknown).
  The `sd` at 0x2440 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0x24c4 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sw` at 0x24f0 stores 4 bytes from a2 to [ret(gthread_find)+24]:8 +0xc (value [[ret(gthread_find)+24]:8+12]-1).
  The `jal` at 0x2184 calls `gthread_find` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x223c calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x22c0 calls `mutex_spinunlock` with a0=[ret(gthread_find)+24]:8+16, a1=?, a2=?, a3=?.
  The `jal` at 0x22c8 calls `GfxListReaderUnlock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x230c calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x232c calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2374 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x238c calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x23a0 calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x23a8 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x23b8 calls `GfxListReaderLock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=[ret(gthread_find)+8], a3=?.
  The `jal` at 0x241c calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2434 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2448 calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2450 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x2460 calls `GfxListReaderUnlock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2474 calls `mutex_spinlock` with a0=[ret(gthread_find)+24]:8+16, a1=?, a2=?, a3=?.
  The `jal` at 0x24a0 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x24b8 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x24cc calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x24d4 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x2508 calls `cmn_err` with a0=0x5, a1=sym(.rodata), a2=ret(gthread_find), a3=?.
  The `bne` branch at 0x21a8 is taken when (a2(=[ret(gthread_find)+8]) & 0x1) != 0 -> B53 and falls through when (a2(=[ret(gthread_find)+8]) & 0x1) == 0 -> B1.
  The `beq` branch at 0x21b0 is taken when v0(=ret(gthread_find)) == 0 -> B26 and falls through when v0(=ret(gthread_find)) != 0 -> B2.
  The `beq` branch at 0x21bc is taken when a0(=[ret(gthread_find)+16]:8) == 0 -> B26 and falls through when a0(=[ret(gthread_find)+16]:8) != 0 -> B3.
  The `bne` branch at 0x21c8 is taken when v0(=[ret(gthread_find)+24]:8) != 0 -> B38 and falls through when v0(=[ret(gthread_find)+24]:8) == 0 -> B4.
  The `beq` branch at 0x21e0 is taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0 -> B22 and falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0 -> B6.
  The `beq` branch at 0x2204 is taken when s4(?) == 0 -> B28 and falls through when s4(?) != 0 -> B9.
  The `beq` branch at 0x2210 is taken when s2(?) == 0 -> B11 and falls through when s2(?) != 0 -> B10.
  The `beq` branch at 0x221c is taken when a1(?) == s0(?) -> B30 and falls through when a1(?) != s0(?) -> B11.
  The `beq` branch at 0x2228 is taken when v0(?) == 0 -> B13 and falls through when v0(?) != 0 -> B12.
  The `beq` branch at 0x2248 is taken when s0(?) == 0 -> B21 and falls through when s0(?) != 0 -> B15.
  The `beq` branch at 0x2250 is taken when s3(?) == 0 -> B8 and falls through when s3(?) != 0 -> B16.
  The `beq` branch at 0x225c is taken when v0(?) == 0 -> B8 and falls through when v0(?) != 0 -> B17.
  The `bne` branch at 0x2268 is taken when a4(?) != s0(?) -> B8 and falls through when a4(?) == s0(?) -> B18.
  The `beq` branch at 0x2278 is taken when s5(=one of 0x0, 0x1) == 0 -> B8 and falls through when s5(=one of 0x0, 0x1) != 0 -> B19.
  The `bne` branch at 0x2284 is taken when (a2(=([ret(gthread_find)+8] | 0x1)) & 0x4) != 0 -> B7 and falls through when (a2(=([ret(gthread_find)+8] | 0x1)) & 0x4) == 0 -> B20.
  The `beq` branch at 0x22b0 is taken when v0(=[ret(gthread_find)+24]:8) == 0 -> B26 and falls through when v0(=[ret(gthread_find)+24]:8) != 0 -> B23.
  The `beq` branch at 0x22b8 is taken when s5(=one of 0x0, 0x1) == 0 -> B25 and falls through when s5(=one of 0x0, 0x1) != 0 -> B24.
  The `beq` branch at 0x22f8 is taken when v0(?) == 0 -> B13 and falls through when v0(?) != 0 -> B29.
  The `beq` branch at 0x2338 is taken when t0(?) == 0 -> B41 and falls through when t0(?) != 0 -> B31.
  The `beq` branch at 0x2344 is taken when t1(?) == 0 -> B33 and falls through when t1(?) != 0 -> B32.
  The `beq` branch at 0x234c is taken when v0(=ret(?)) == 0 -> B43 and falls through when v0(=ret(?)) != 0 -> B33.
  The `beq` branch at 0x2358 is taken when t2(?) == 0 -> B13 and falls through when t2(?) != 0 -> B34.
  The `beq` branch at 0x2360 is taken when t3(?) == 0 -> B13 and falls through when t3(?) != 0 -> B35.
  The `beq` branch at 0x2384 is taken when a1(?) == 0 -> B37 and falls through when a1(?) != 0 -> B36.
  The `beq` branch at 0x23cc is taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0 -> B46 and falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0 -> B39.
  The `beq` branch at 0x23dc is taken when (a2(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0 -> B47 and falls through when (a2(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0 -> B40.
  The `beq` branch at 0x23ec is taken when v0(=ret(?)) == 0 -> B49 and falls through when v0(=ret(?)) != 0 -> B42.
  The `beq` branch at 0x242c is taken when a1(?) == 0 -> B45 and falls through when a1(?) != 0 -> B44.
  The `beq` branch at 0x2484 is taken when (a2(=[ret(gthread_find)+8]) & 0x2) == 0 -> B52 and falls through when (a2(=[ret(gthread_find)+8]) & 0x2) != 0 -> B48.
  The `beq` branch at 0x24b0 is taken when a1(?) == 0 -> B51 and falls through when a1(?) != 0 -> B50.
  The return at 0x22ec has v0 = ?.

- `rrmResume` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x2518 (n64).
  It occupies 1196 bytes.
  The `sw` at 0x265c stores 4 bytes from a1 to ret(gthread_find) +0x8.
  The `sw` at 0x267c stores 4 bytes from a4 to ? (base unknown).
  The `sd` at 0x277c stores 8 bytes from t0 to ? (base unknown).
  The `sd` at 0x28d0 stores 8 bytes from s0 to ? (base unknown).
  The `sd` at 0x2910 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sw` at 0x294c stores 4 bytes from a2 to ret(gthread_find) +0x8.
  The `sw` at 0x29a0 stores 4 bytes from a2 to [ret(gthread_find)+24]:8 +0xc (value [[ret(gthread_find)+24]:8+12]+1).
  The `jal` at 0x252c calls `rt_pin_thread` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2540 calls `gthread_find` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x25dc calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2694 calls `mutex_spinunlock` with a0=[ret(gthread_find)+24]:8+16, a1=?, a2=[ret(gthread_find)+24]:8, a3=?.
  The `jal` at 0x269c calls `GfxListReaderUnlock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x26a4 calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x26fc calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?, a5=[ret(gthread_find)+24]:8.
  The `jalr` at 0x2744 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2768 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2780 calls `GfxListReaderLock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x27b0 calls `rrmDoUnMapGfx` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x27d8 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x27e8 calls `rt_unpin_thread` with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jalr` at 0x2830 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2848 calls `mutex_spinlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2894 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x28b4 calls `cpsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28d4 calls `rrmDoUnMapGfx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28ec calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2904 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2918 calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2920 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x2928 calls `rrmDoUnMapGfx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2954 calls `mutex_spinlock` with a0=[ret(gthread_find)+24]:8+16, a1=?, a2=?, a3=-0x3.
  The `jal` at 0x2978 calls `GfxListReaderUnlock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2980 calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x29b4 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x256c is taken when v0(=ret(gthread_find)) == 0 -> B43 and falls through when v0(=ret(gthread_find)) != 0 -> B1.
  The `beq` branch at 0x2578 is taken when a0(=[ret(gthread_find)+16]:8) == 0 -> B43 and falls through when a0(=[ret(gthread_find)+16]:8) != 0 -> B2.
  The `bne` branch at 0x2584 is taken when v0(=[ret(gthread_find)+24]:8) != 0 -> B37 and falls through when v0(=[ret(gthread_find)+24]:8) == 0 -> B3.
  The `beq` branch at 0x2590 is taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0 -> B22 and falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0 -> B5.
  The `beq` branch at 0x25b8 is taken when a5(?) == 0 -> B9 and falls through when a5(?) != 0 -> B7.
  The `beq` branch at 0x25c8 is taken when (t8(?) & 0x3) == 0 -> B9 and falls through when (t8(?) & 0x3) != 0 -> B8.
  The `bne` branch at 0x25ec is taken when s2(=one of 0x0, 0x1) != 0 -> B12 and falls through when s2(=one of 0x0, 0x1) == 0 -> B11.
  The `beq` branch at 0x25f8 is taken when s0(?) == 0 -> B22 and falls through when s0(?) != 0 -> B13.
  The `beq` branch at 0x2608 is taken when ra(?) == 0 -> B11 and falls through when ra(?) != 0 -> B14.
  The `beq` branch at 0x2618 is taken when (at(?) & 0x8) == 0 -> B28 and falls through when (at(?) & 0x8) != 0 -> B15.
  The `beq` branch at 0x2628 is taken when (v0(?) & s6(?)) == 0 -> B35 and falls through when (v0(?) & s6(?)) != 0 -> B16.
  The `beq` branch at 0x2630 is taken when s4(?) == 0 -> B31 and falls through when s4(?) != 0 -> B17.
  The `beq` branch at 0x2640 is taken when (a1(=[ret(gthread_find)+8]) & 0x1) == 0 -> B6 and falls through when (a1(=[ret(gthread_find)+8]) & 0x1) != 0 -> B18.
  The `bne` branch at 0x2650 is taken when a2(?) != s0(?) -> B6 and falls through when a2(?) == s0(?) -> B19.
  The `beq` branch at 0x2658 is taken when s8(=one of 0x0, 0x1) == 0 -> B6 and falls through when s8(=one of 0x0, 0x1) != 0 -> B20.
  The `bne` branch at 0x2664 is taken when (a1(?) & 0x4) != 0 -> B6 and falls through when (a1(?) & 0x4) == 0 -> B21.
  The `beq` branch at 0x2684 is taken when a2(=[ret(gthread_find)+24]:8) == 0 -> B26 and falls through when a2(=[ret(gthread_find)+24]:8) != 0 -> B23.
  The `beq` branch at 0x268c is taken when s8(=one of 0x0, 0x1) == 0 -> B25 and falls through when s8(=one of 0x0, 0x1) != 0 -> B24.
  The `beq` branch at 0x26e0 is taken when a5(=[ret(gthread_find)+24]:8) == 0 -> B15 and falls through when a5(=[ret(gthread_find)+24]:8) != 0 -> B29.
  The `beq` branch at 0x26ec is taken when a6(?) == 0 -> B15 and falls through when a6(?) != 0 -> B30.
  The `beq` branch at 0x2718 is taken when (a1(?) & 0x1) == 0 -> B41 and falls through when (a1(?) & 0x1) != 0 -> B32.
  The `beq` branch at 0x2720 is taken when a1(?) == 0 -> B44 and falls through when a1(?) != 0 -> B33.
  The `bne` branch at 0x2730 is taken when a4(?) != s0(?) -> B40 and falls through when a4(?) == s0(?) -> B34.
  The `beq` branch at 0x2758 is taken when a6(?) == 0 -> B16 and falls through when a6(?) != 0 -> B36.
  The `beq` branch at 0x2790 is taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0 -> B67 and falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0 -> B38.
  The `bne` branch at 0x27a0 is taken when (t1(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0 -> B4 and falls through when (t1(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0 -> B39.
  The `beq` branch at 0x27c0 is taken when a2(?) == 0 -> B10 and falls through when a2(?) != 0 -> B42.
  The `beq` branch at 0x2804 is taken when t3(?) == 0 -> B69 and falls through when t3(?) != 0 -> B45.
  The `beq` branch at 0x2818 is taken when t9(?) == 0 -> B59 and falls through when t9(?) != 0 -> B47.
  The `beq` branch at 0x283c is taken when v0(?) == 0 -> B10 and falls through when v0(?) != 0 -> B50.
  The `beq` branch at 0x2868 is taken when a2(?) == 0 -> B54 and falls through when a2(?) != 0 -> B52.
  The `beq` branch at 0x2874 is taken when t9(?) == 0 -> B54 and falls through when t9(?) != 0 -> B53.
  The `beq` branch at 0x28a4 is taken when at(?) == s0(?) -> B46 and falls through when at(?) != s0(?) -> B55.
  The `bne` branch at 0x28ac is taken when s7(?) != a1(?) -> B58 and falls through when s7(?) == a1(?) -> B56.
  The `beq` branch at 0x28bc is taken when v0(=ret(cpsema)) == 0 -> B58 and falls through when v0(=ret(cpsema)) != 0 -> B57.
  The `beq` branch at 0x28e4 is taken when s7(?) == a1(?) -> B47 and falls through when s7(?) != a1(?) -> B60.
  The `beq` branch at 0x28fc is taken when a1(?) == 0 -> B62 and falls through when a1(?) != 0 -> B61.
  The `beq` branch at 0x2944 is taken when (a2(=[ret(gthread_find)+8]) & 0x2) == 0 -> B65 and falls through when (a2(=[ret(gthread_find)+8]) & 0x2) != 0 -> B64.
  The `bne` branch at 0x2968 is taken when (a1(=[ret(gthread_find)+8]) & 0x1) != 0 -> B4 and falls through when (a1(=[ret(gthread_find)+8]) & 0x1) == 0 -> B66.
  The return at 0x26d4 has v0 = ret(rt_unpin_thread).

- `rrmSetResourceMask` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x29c4 (n64).
  It occupies 192 bytes.
  The `sh` at 0x2a60 stores 2 bytes from s3 to a1 (arg1 at entry) +0x4 (value a2).
  The `jal` at 0x29f0 calls `mutex_spinlock` with a0=a1+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2a10 calls `pane_validmask` with a0=[a1+120]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2a20 calls `mutex_spinunlock` with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2a44 calls `rrmUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2a54 calls `mutex_spinlock` with a0=a1+104, a1=?, a2=?, a3=?.
  The `jal` at 0x2a64 calls `mutex_spinunlock` with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x2a08 is taken when (at(=[a1+4]:2) & 0x2) == 0 -> B2 and falls through when (at(=[a1+4]:2) & 0x2) != 0 -> B1.
  The `beq` branch at 0x2a3c is taken when (v0(?) & v1(?)) == 0 -> B4 and falls through when (v0(?) & v1(?)) != 0 -> B3.
  The return at 0x2a7c has v0 = ret(mutex_spinunlock).

- `RRM_ValidateSwapBuf` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x2a84 (n64).
  It occupies 72 bytes.
  The `jal` at 0x2a90 calls `RRM_CheckValidFault` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2ab0 calls `validate_pane_swapbuf` with a0=[a2+4], a1=a0 at entry (arg0), a2=[a2+8], a3=?.
  The `bgez` branch at 0x2a98 is taken when v0(=ret(RRM_CheckValidFault)) >= 0 (signed) -> B2 and falls through when v0(=ret(RRM_CheckValidFault)) < 0 (signed) -> B1.
  The return at 0x2ac4 has v0 = ?.

- `rrmValidateBuffer` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x2acc (n64).
  It occupies 68 bytes.
  The `sw` at 0x2af4 stores 4 bytes from v0 to [a0+120]:8 +0x1c (value ([[a0+120]:8+24] + [[a0+72]:8+164])).
  The `jal` at 0x2afc calls `validate_pane_buffer` with a0=[a0+120]:8, a1=[a0+64]:8, a2=[a0+72]:8, a3=a0 at entry (arg0).
  The `beq` branch at 0x2adc is taken when at(=[[a0+72]:8+160]) == 0 -> B2 and falls through when at(=[[a0+72]:8+160]) != 0 -> B1.
  The return at 0x2b08 has v0 = ret(validate_pane_buffer).

- `RRM_ValidateMessage` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x2b10 (n64).
  It occupies 104 bytes.
  The `jal` at 0x2b28 calls `mutex_spinlock` with a0=a1+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2b3c calls `mutex_spinunlock` with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2b68 calls `rrmValidateBuffer` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2b50 is taken when (v0(?) & 0x20) == 0 -> B2 and falls through when (v0(?) & 0x20) != 0 -> B1.
  The return at 0x2b60 has v0 = one of 0x0, 0x16.

- `RRM_SetDisplayMode` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x2b78 (n64).
  It occupies 196 bytes.
  The `jal` at 0x2b8c calls `RRM_CheckValidFault` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2c04 calls `GfxMessage` with a0=sp-96, a1=0x3, a2=one of 0xb, 0x8b, a3=?, a4=0xb, a5=[a0+8]:8.
  The `jal` at 0x2c1c calls `invalidate_pane` with a0=0x8, a1=[[a1+120]:8+4], a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x2c24 calls `rrmUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bltz` branch at 0x2b94 is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) -> B4 and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed) -> B1.
  The `bne` branch at 0x2ba4 is taken when at(=[[a0+8]:8+8]:8) != 0 -> B3 and falls through when at(=[[a0+8]:8+8]:8) == 0 -> B2.
  The return at 0x2bb4 has v0 = one of 0x0, 0xe.

- `RRM_LoadDisplayMode` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x2c3c (n64).
  It occupies 336 bytes.
  The `sw` at 0x2ce4 stores 4 bytes from a4 to ret(clip2pane) +0x20 (value [a2+16]).
  The `sh` at 0x2cf8 stores 2 bytes from a3 to ret(clip2pane) +0x12.
  The `sw` at 0x2d20 stores 4 bytes from a6 to ([[a0+40]:8+96]:8 + ([a2+8] << 0x2)) +0x0 (value [a2+16]).
  The `jal` at 0x2c5c calls `clip2pane` with a0=[a2+4], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2cc8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a2+8], a2=[a2+12], a3=?.
  The `jal` at 0x2d40 calls `rrmInvalidateRN` with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=0x10, a3=?.
  The `jalr` at 0x2d74 calls `(unknown callee)` with a0=[a0+40]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x2d7c calls `rrmUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2c64 is taken when v0(=ret(clip2pane)) == 0 -> B4 and falls through when v0(=ret(clip2pane)) != 0 -> B1.
  The `beq` branch at 0x2c74 is taken when (at(=[ret(clip2pane)+12]:2) & 0x8) == 0 -> B4 and falls through when (at(=[ret(clip2pane)+12]:2) & 0x8) != 0 -> B2.
  The `bltz` branch at 0x2c98 is taken when a1(=[a2+8]) < 0 (signed) -> B6 and falls through when a1(=[a2+8]) >= 0 (signed) -> B5.
  The `bne` branch at 0x2cac is taken when a1(=[a2+8]) < v1(=[[a0+40]:8+88]) (signed) -> B7 and falls through when a1(=[a2+8]) >= v1(=[[a0+40]:8+88]) (signed) -> B6.
  The `bltz` branch at 0x2cd0 is taken when v0(=ret(?)) < 0 (signed) -> B16 and falls through when v0(=ret(?)) >= 0 (signed) -> B8.
  The `beq` branch at 0x2cd8 is taken when s2(=ret(clip2pane)) == 0 -> B10 and falls through when s2(=ret(clip2pane)) != 0 -> B9.
  The `beq` branch at 0x2d0c is taken when a1(=[a2+8]) >= a5(=[[a0+40]:8+88]) (signed) -> B12 and falls through when a1(=[a2+8]) < a5(=[[a0+40]:8+88]) (signed) -> B11.
  The `bne` branch at 0x2d28 is taken when a0(=ret(?)) != t1(=0x1) -> B15 and falls through when a0(=ret(?)) == t1(=0x1) -> B13.
  The `beq` branch at 0x2d34 is taken when s1(=[a0+72]:8) == 0 -> B17 and falls through when s1(=[a0+72]:8) != 0 -> B14.
  The `beq` branch at 0x2d48 is taken when v0(=ret(rrmInvalidateRN)) == 0 -> B18 and falls through when v0(=ret(rrmInvalidateRN)) != 0 -> B15.
  The return at 0x2c8c has v0 = ?.

- `RRM_GetDisplayModes` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x2d8c (n64).
  It occupies 88 bytes.
  The `jal` at 0x2dc4 calls `copyout` with a0=[[a0+40]:8+96]:8, a1=[a2+8]:8, a2=([[a0+40]:8+88] << 0x2), a3=a3 at entry (arg3), a5=([[a0+40]:8+88] << 0x2), a6=a2 at entry (arg2), a7=[a0+40]:8.
  The `beq` branch at 0x2dac is taken when at(=[a2+16]) >= a5(=([[a0+40]:8+88] << 0x2)) (unsigned) -> B2 and falls through when at(=[a2+16]) < a5(=([[a0+40]:8+88] << 0x2)) (unsigned) -> B1.
  The `beq` branch at 0x2dcc is taken when v0(=ret(copyout)) == 0 -> B4 and falls through when v0(=ret(copyout)) != 0 -> B3.
  The return at 0x2db4 has v0 = one of 0x0, 0xe, 0x16.

- `rrmValidateMyRetrace` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x2de4 (n64).
  It occupies 120 bytes.
  The `jal` at 0x2dfc calls `mutex_spinlock` with a0=a1+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2e2c calls `sv_wait` with a0=a1+48, a1=0x19, a2=a1+104, a3=ret(mutex_spinlock).
  The `jal` at 0x2e4c calls `mutex_spinunlock` with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x2e18 is taken when (at(?) & 0x10) == 0 -> B3 and falls through when (at(?) & 0x10) != 0 -> B1.
  The return at 0x2e44 has v0 = 0x0.

- `rrmValidateRetrace` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x2e5c (n64).
  It occupies 80 bytes.
  The `sh` at 0x2e8c stores 2 bytes from at to a0 (arg0 at entry) +0x6 (value ([a0+6]:2 | 0x10)).
  The `jal` at 0x2e70 calls `mutex_spinlock` with a0=a0+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2e88 calls `sv_signal` with a0=a0+48, a1=?, a2=?, a3=?.
  The `jal` at 0x2e98 calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The return at 0x2ea4 has v0 = ret(mutex_spinunlock).

- `rrmAllocPcxid` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x2eac (n64).
  It occupies 376 bytes.
  The `sh` at 0x2f40 stores 2 bytes from a7 to a1 (arg1 at entry) +0x50.
  The `sd` at 0x2f6c stores 8 bytes from a1 to [[a0+40]:8+32]:8 +0x60 (value a1).
  The `sd` at 0x2f74 stores 8 bytes from zero to a1 (arg1 at entry) +0x60 (value 0x0).
  The `sd` at 0x2f78 stores 8 bytes from a5 to a1 (arg1 at entry) +0x58 (value [[a0+40]:8+32]:8).
  The `sd` at 0x2f80 stores 8 bytes from a1 to [a0+40]:8 +0x20 (value a1).
  The `sd` at 0x2f94 stores 8 bytes from t0 to [a1+96]:8 +0x58 (value [a1+88]:8).
  The `sd` at 0x2fa8 stores 8 bytes from v0 to [a1+88]:8 +0x60 (value [a1+96]:8).
  The `sd` at 0x2fdc stores 8 bytes from v0 to [a0+40]:8 +0x28 (value [a1+96]:8).
  The `sd` at 0x2ff0 stores 8 bytes from a1 to [a0+40]:8 +0x28 (value a1).
  The `sd` at 0x2ff4 stores 8 bytes from a1 to [a0+40]:8 +0x20 (value a1).
  The `sd` at 0x2ff8 stores 8 bytes from zero to a1 (arg1 at entry) +0x58 (value 0x0).
  The `sd` at 0x2ffc stores 8 bytes from zero to a1 (arg1 at entry) +0x60 (value 0x0).
  The `sd` at 0x3010 stores 8 bytes from t3 to [a0+40]:8 +0x28 (value [[[a0+40]:8+40]:8+96]:8).
  The `sd` at 0x3014 stores 8 bytes from zero to [[[a0+40]:8+40]:8+96]:8 +0x58 (value 0x0).
  The `sh` at 0x3020 stores 2 bytes from t2 to a1 (arg1 at entry) +0x50 (value [[[a0+40]:8+40]:8+80]:2).
  The `beq` branch at 0x2eb8 is taken when a4(=[[a0+40]:8+20]) == at(=0x1) -> B19 and falls through when a4(=[[a0+40]:8+20]) != at(=0x1) -> B1.
  The `beq` branch at 0x2ec4 is taken when a7(=[a1+80]:2) == t0(=-0x1) -> B5 and falls through when a7(=[a1+80]:2) != t0(=-0x1) -> B2.
  The `bne` branch at 0x2ee0 is taken when a4(?) < 0x1 (unsigned) -> B15 and falls through when a4(?) >= 0x1 (unsigned) -> B3.
  The `blez` branch at 0x2ef8 is taken when a4(=[[a0+40]:8+20]) <= 0 (signed) -> B11 and falls through when a4(=[[a0+40]:8+20]) > 0 (signed) -> B6.
  The `beq` branch at 0x2f14 is taken when t1(?) == 0 -> B10 and falls through when t1(?) != 0 -> B8.
  The `bne` branch at 0x2f28 is taken when v0(?) < a4(=[[a0+40]:8+20]) (signed) -> B7 and falls through when v0(?) >= a4(=[[a0+40]:8+20]) (signed) -> B9.
  The `bne` branch at 0x2f58 is taken when a4(?) < 0x1 (unsigned) -> B20 and falls through when a4(?) >= 0x1 (unsigned) -> B13.
  The `beq` branch at 0x2f60 is taken when a4(?) == 0 -> B4 and falls through when a4(?) != 0 -> B14.
  The `beq` branch at 0x2f88 is taken when v0(=[a1+96]:8) == 0 -> B25 and falls through when v0(=[a1+96]:8) != 0 -> B16.
  The `beq` branch at 0x2f9c is taken when a0(=[a1+88]:8) == 0 -> B23 and falls through when a0(=[a1+88]:8) != 0 -> B17.
  The `beq` branch at 0x2fa4 is taken when a4(?) == 0 -> outside and falls through when a4(?) != 0 -> B18.
  The `beq` branch at 0x2fbc is taken when a7(?) == t0(=-0x1) -> B27 and falls through when a7(?) != t0(=-0x1) -> B21.
  The `beq` branch at 0x2fc8 is taken when t1(=[[a0+40]:8+32]:8) == 0 -> B26 and falls through when t1(=[[a0+40]:8+32]:8) != 0 -> B22.
  The `beq` branch at 0x2fd8 is taken when a4(?) == 0 -> outside and falls through when a4(?) != 0 -> B24.
  The return at 0x2ee8 has v0 = 0x0.
  The return at 0x2ef0 has v0 = ?.
  The return at 0x2f7c has v0 = ?.
  The return at 0x2fb4 has v0 = [[a0+40]:8+8]:8.
  The return at 0x2fe8 has v0 = 0x0.
  The return at 0x3000 has v0 = 0x0.

- `rrmValidateMyPcx` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x3024 (n64).
  It occupies 596 bytes.
  The `sw` at 0x3088 stores 4 bytes from a4 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]+1).
  The `sw` at 0x30fc stores 4 bytes from t1 to ([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)) +0x8 (value [([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5))+8]+1).
  The `sd` at 0x310c stores 8 bytes from s0 to [a0+40]:8 +0x8 (value a1).
  The `sh` at 0x3124 stores 2 bytes from t8 to a1 (arg1 at entry) +0x6 (value ([a1+6]:2 | 0x1)).
  The `sw` at 0x3138 stores 4 bytes from t9 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sb` at 0x3144 stores 1 bytes from at to a1 (arg1 at entry) +0x53 (value 0x1).
  The `sd` at 0x3164 stores 8 bytes from zero to [a0+40]:8 +0x48 (value 0x0).
  The `sh` at 0x31e8 stores 2 bytes from s4 to ? (base unknown) (value -0x1).
  The `sd` at 0x322c stores 8 bytes from s0 to ([[a0+40]:8+24]:8 + ([a1+80]:2 << 0x3)) +0x0 (value a1).
  The `jal` at 0x304c calls `mutex_spinlock` with a0=a1+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3060 calls `mutex_spinunlock` with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x30b4 calls `rrmAllocPcxid` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a5=[a1+80]:2.
  The `jalr` at 0x30cc calls `(unknown callee)` with a0=[a0+40]:8, a1=a1 at entry (arg1), a2=[[a0+40]:8+8]:8, a3=?, a6=[[a0+32]:8+128]:8.
  The `jal` at 0x3108 calls `mutex_spinlock` with a0=a1+104, a1=?, a2=?, a3=?.
  The `jal` at 0x3120 calls `mutex_spinunlock` with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3140 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x3158 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[[a0+32]:8+192]:8, a2=?, a3=?.
  The `jal` at 0x316c calls `vsema` with a0=[a0+40]:8+56, a1=[a0+40]:8, a2=?, a3=?.
  The `jal` at 0x3174 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x31b0 calls `rrmAllocPcxid` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x31d4 calls `(unknown callee)` with a0=[a0+40]:8, a1=ret(rrmAllocPcxid), a2=a1 at entry (arg1), a3=[[a0+40]:8+8]:8, a6=[[a0+32]:8+120]:8.
  The `jalr` at 0x31f8 calls `(unknown callee)` with a0=[a0+40]:8, a1=0x0, a2=a1 at entry (arg1), a3=[[a0+40]:8+8]:8, a6=[[a0+32]:8+120]:8.
  The `jal` at 0x3234 calls `rrmInvalidateRN` with a0=a0 at entry (arg0), a1=[[a0+40]:8+8]:8, a2=0x1, a3=[[a0+40]:8+8]:8, a4=[[a0+40]:8+80]+1, a5=[a0+40]:8.
  The `jal` at 0x3260 calls `invalidate_pane` with a0=0x2, a1=[[a1+120]:8+4], a2=a0 at entry (arg0), a3=?, a5=[a1+80]:2.
  The `beq` branch at 0x3074 is taken when (at(?) & 0x1) == 0 -> B10 and falls through when (at(?) & 0x1) != 0 -> B1.
  The `beq` branch at 0x3094 is taken when a3(=[[a0+40]:8+8]:8) == 0 -> B3 and falls through when a3(=[[a0+40]:8+8]:8) != 0 -> B2.
  The `bne` branch at 0x309c is taken when a3(=[[a0+40]:8+8]:8) != s0(=a1) -> B18 and falls through when a3(=[[a0+40]:8+8]:8) == s0(=a1) -> B3.
  The `beq` branch at 0x30ac is taken when a5(=[a1+80]:2) == v0(=-0x1) -> B11 and falls through when a5(=[a1+80]:2) != v0(=-0x1) -> B5.
  The `beq` branch at 0x3134 is taken when s3(=one of 0x0, 0x1) == 0 -> B10 and falls through when s3(=one of 0x0, 0x1) != 0 -> B7.
  The `beq` branch at 0x3150 is taken when a1(=[[a0+32]:8+192]:8) == 0 -> B9 and falls through when a1(=[[a0+32]:8+192]:8) != 0 -> B8.
  The `beq` branch at 0x31a4 is taken when a2(=[a1+83]:1) == 0 -> B19 and falls through when a2(=[a1+83]:1) != 0 -> B12.
  The `beq` branch at 0x31c4 is taken when v0(=ret(rrmAllocPcxid)) == 0 -> B15 and falls through when v0(=ret(rrmAllocPcxid)) != 0 -> B14.
  The `beq` branch at 0x3214 is taken when v0(=[a1+80]:2) == t2(=-0x1) -> B6 and falls through when v0(=[a1+80]:2) != t2(=-0x1) -> B17.
  The `beq` branch at 0x324c is taken when (t8(=[a1+4]:2) & 0x2) == 0 -> B21 and falls through when (t8(=[a1+4]:2) & 0x2) != 0 -> B20.
  The return at 0x3198 has v0 = one of -0x1, 0x0.

- `RRM_ValidateClip` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x3278 (n64).
  It occupies 256 bytes.
  The `sw` at 0x32ac stores 4 bytes from a2 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]+1).
  The `sw` at 0x3320 stores 4 bytes from a4 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sd` at 0x3334 stores 8 bytes from s0 to [a0+40]:8 +0x48 (value a0).
  The `jal` at 0x32cc calls `RRM_CheckValidFault` with a0=a0 at entry (arg0), a1=a0 at entry (arg0), a2=[[a0+40]:8+80]+1, a3=[[[a0+40]:8+8]:8+20].
  The `jal` at 0x32ec calls `validate_pane_clip` with a0=[a2+4], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x3328 calls `psema` with a0=[a0+40]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3348 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `bne` branch at 0x329c is taken when at(=[[a0+40]:8+72]:8) != a0 -> B10 and falls through when at(=[[a0+40]:8+72]:8) == a0 -> B1.
  The `beq` branch at 0x32b8 is taken when a1(=[[a0+40]:8+8]:8) == 0 -> B7 and falls through when a1(=[[a0+40]:8+8]:8) != 0 -> B3.
  The `bne` branch at 0x32c4 is taken when a3(=[[[a0+40]:8+8]:8+20]) != a0(=[a2+4]) -> B8 and falls through when a3(=[[[a0+40]:8+8]:8+20]) == a0(=[a2+4]) -> B4.
  The `bltz` branch at 0x32d4 is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) -> B13 and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed) -> B5.
  The `bne` branch at 0x32dc is taken when s2(=one of 0x0, 0x1) != 0 -> B9 and falls through when s2(=one of 0x0, 0x1) == 0 -> B6.
  The `beq` branch at 0x3340 is taken when a5(=[[a0+40]:8+104]) == 0 -> B1 and falls through when a5(=[[a0+40]:8+104]) != 0 -> B11.
  The `bne` branch at 0x3358 is taken when a7(=[[a0+40]:8+104]) != 0 -> B11 and falls through when a7(=[[a0+40]:8+104]) == 0 -> B12.
  The return at 0x331c has v0 = ?.

- `RRM_ValidFault` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x3378 (n64).
  It occupies 880 bytes.
  The `sd` at 0x3450 stores 8 bytes from s0 to [a0+40]:8 +0x48 (value a0).
  The `jal` at 0x33fc calls `rrmValidateMyPcx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x341c calls `ddv_lock` with a0=[a0+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3434 calls `ddv_unlock` with a0=[a0+48]:8, a1=?, a2=[[a0+40]:8+72]:8, a3=?.
  The `jal` at 0x3444 calls `psema` with a0=[a0+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0x3484 calls `curproc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x348c calls `proc_pid` with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0x34a4 calls `cmn_err_tag` with a0=0x854, a1=0x4, a2=sym(.rodata), a3=ret(proc_pid).
  The `jal` at 0x34ac calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x34b8 calls `psignal` with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0x3508 calls `mutex_spinlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3534 calls `pane_validmask` with a0=?, a1=?, a2=?, a3=?, a5=[[a0+8]:8+8]:8.
  The `jal` at 0x354c calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3568 calls `rrmValidateMyRetrace` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3584 calls `validate_my_pane_resources` with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x359c calls `pane_validmask` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x35bc calls `validate_my_pane_resources` with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x35dc calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x3614 calls `mutex_spinlock` with a0=[a0+96]:8+16, a1=[a0+96]:8, a2=[[a0+40]:8+72]:8, a3=?.
  The `jalr` at 0x3648 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[[a0+32]:8+96]:8.
  The `jal` at 0x365c calls `mutex_spinunlock` with a0=[a0+96]:8+16, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3664 calls `ddv_unlock` with a0=[a0+48]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x3690 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[[a0+32]:8+96]:8.
  The `jal` at 0x36a8 calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x36b0 calls `proc_pid` with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0x36c4 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=ret(proc_pid), a3=?.
  The `jal` at 0x36cc calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x36d8 calls `psignal` with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `beq` branch at 0x33a0 is taken when (a2(=[a0+4]) & 0x20) == 0 -> B17 and falls through when (a2(=[a0+4]) & 0x20) != 0 -> B1.
  The `bne` branch at 0x33b0 is taken when a3(=[[a0+40]:8+72]:8) != s0(=a0) -> B14 and falls through when a3(=[[a0+40]:8+72]:8) == s0(=a0) -> B2.
  The `bne` branch at 0x33b8 is taken when a2(?) != 0 -> B11 and falls through when a2(?) == 0 -> B3.
  The `bne` branch at 0x33c8 is taken when v0(=[[a0+8]:8+8]:8) != 0 -> B21 and falls through when v0(=[[a0+8]:8+8]:8) == 0 -> B4.
  The `bne` branch at 0x33d8 is taken when v1(?) != 0 -> B35 and falls through when v1(?) == 0 -> B6.
  The `bne` branch at 0x33e8 is taken when a0(=[[a0+40]:8+72]:8) != s0(=a0) -> B13 and falls through when a0(=[[a0+40]:8+72]:8) == s0(=a0) -> B7.
  The `bne` branch at 0x33f0 is taken when a1(?) != 0 -> B10 and falls through when a1(?) == 0 -> B8.
  The `bltz` branch at 0x3404 is taken when v0(=ret(rrmValidateMyPcx)) < 0 (signed) -> B37 and falls through when v0(=ret(rrmValidateMyPcx)) >= 0 (signed) -> B9.
  The `bne` branch at 0x3414 is taken when a0(=[[a0+40]:8+72]:8) != s0(=a0) -> B14 and falls through when a0(=[[a0+40]:8+72]:8) == s0(=a0) -> B11.
  The `beq` branch at 0x342c is taken when a2(=[[a0+40]:8+72]:8) == s0(=a0) -> B40 and falls through when a2(=[[a0+40]:8+72]:8) != s0(=a0) -> B12.
  The `bne` branch at 0x345c is taken when a3(=[[a0+40]:8+104]) != 0 -> B38 and falls through when a3(=[[a0+40]:8+104]) == 0 -> B15.
  The `beq` branch at 0x3474 is taken when s1(=[a0+72]:8) == 0 -> B19 and falls through when s1(=[a0+72]:8) != 0 -> B18.
  The `bne` branch at 0x34e8 is taken when a3(?) != 0 -> B24 and falls through when a3(?) == 0 -> B22.
  The `beq` branch at 0x34f0 is taken when v0(=[[a0+8]:8+8]:8) == s0(=a0) -> B24 and falls through when v0(=[[a0+8]:8+8]:8) != s0(=a0) -> B23.
  The `bne` branch at 0x3500 is taken when (a4(?) & 0x2) != 0 -> B51 and falls through when (a4(?) & 0x2) == 0 -> B24.
  The `beq` branch at 0x3520 is taken when a5(=[[a0+8]:8+8]:8) == s0(=a0) -> B27 and falls through when a5(=[[a0+8]:8+8]:8) != s0(=a0) -> B25.
  The `beq` branch at 0x352c is taken when (s3(?) & 0x2) == 0 -> B28 and falls through when (s3(?) & 0x2) != 0 -> B26.
  The `bne` branch at 0x3540 is taken when (s3(?) & 0x40) != 0 -> B34 and falls through when (s3(?) & 0x40) == 0 -> B27.
  The `beq` branch at 0x3558 is taken when s3(?) == t0(?) -> B11 and falls through when s3(?) != t0(?) -> B29.
  The `bne` branch at 0x3560 is taken when t1(?) != 0 -> B31 and falls through when t1(?) == 0 -> B30.
  The `bne` branch at 0x3578 is taken when t2(=[[a0+40]:8+72]:8) != s0(=a0) -> B13 and falls through when t2(=[[a0+40]:8+72]:8) == s0(=a0) -> B32.
  The `bgez` branch at 0x358c is taken when v0(=ret(validate_my_pane_resources)) >= 0 (signed) -> B5 and falls through when v0(=ret(validate_my_pane_resources)) < 0 (signed) -> B33.
  The `bgez` branch at 0x35c4 is taken when v0(=ret(validate_my_pane_resources)) >= 0 (signed) -> B6 and falls through when v0(=ret(validate_my_pane_resources)) < 0 (signed) -> B36.
  The `bne` branch at 0x35ec is taken when t9(=[[a0+40]:8+104]) != 0 -> B38 and falls through when t9(=[[a0+40]:8+104]) == 0 -> B39.
  The `beq` branch at 0x3600 is taken when a1(=[a0+96]:8) == 0 -> B47 and falls through when a1(=[a0+96]:8) != 0 -> B41.
  The `bne` branch at 0x360c is taken when (v0(=[a0+4]) & 0x8) != 0 -> B47 and falls through when (v0(=[a0+4]) & 0x8) == 0 -> B42.
  The `beq` branch at 0x3624 is taken when (at(=[a0+4]) & 0x20) == 0 -> B44 and falls through when (at(=[a0+4]) & 0x20) != 0 -> B43.
  The `beq` branch at 0x3678 is taken when (v0(=[a0+4]) & 0x20) == 0 -> B50 and falls through when (v0(=[a0+4]) & 0x20) != 0 -> B48.
  The return at 0x34dc has v0 = ?.

- `RRM_CheckValidFault` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x36e8 (n64).
  It occupies 96 bytes.
  The `jal` at 0x3728 calls `RRM_ValidFault` with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=?, a4=[a0+4].
  The `beq` branch at 0x36f4 is taken when (a4(=[a0+4]) & 0x4) == 0 -> B3 and falls through when (a4(=[a0+4]) & 0x4) != 0 -> B1.
  The `beq` branch at 0x3700 is taken when a3(?) == 0 -> B5 and falls through when a3(?) != 0 -> B2.
  The `bne` branch at 0x3718 is taken when v0(=[[a0+8]:8+8]:8) != 0 -> B1 and falls through when v0(=[[a0+8]:8+8]:8) == 0 -> B4.
  The `bltz` branch at 0x3730 is taken when v0(=ret(RRM_ValidFault)) < 0 (signed) -> B7 and falls through when v0(=ret(RRM_ValidFault)) >= 0 (signed) -> B6.
  The return at 0x3708 has v0 = one of -0x1, 0x0.

- `rrmSwapWait` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x3748 (n64).
  It occupies 240 bytes.
  The `sd` at 0x37c4 stores 8 bytes from a6 to a0 (arg0 at entry) +0xa8.
  The `sd` at 0x37d0 stores 8 bytes from s0 to ? (base unknown) (value a0).
  The `jal` at 0x3764 calls `mutex_spinlock` with a0=[a0+72]:8+48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x37cc calls `hold_nonfatalsig` with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0x37e4 calls `sv_wait_sig` with a0=a0+48, a1=0x1e, a2=?, a3=?.
  The `jal` at 0x37f4 calls `release_nonfatalsig` with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0x3818 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a7=[a0+72]:8+168.
  The `jal` at 0x3828 calls `release_nonfatalsig` with a0=sp-48, a1=?, a2=?, a3=?.
  The `beq` branch at 0x3784 is taken when at(=[[a0+72]:8+164]+1) >= t0(=[[a0+120]:8+28]) (unsigned) -> B9 and falls through when at(=[[a0+72]:8+164]+1) < t0(=[[a0+120]:8+28]) (unsigned) -> B1.
  The `beq` branch at 0x3790 is taken when a6(=[[a0+72]:8+168]:8) == 0 -> B6 and falls through when a6(=[[a0+72]:8+168]:8) != 0 -> B2.
  The `beq` branch at 0x37a8 is taken when a6(?) == 0 -> B6 and falls through when a6(?) != 0 -> B4.
  The `bne` branch at 0x37bc is taken when t1(?) < t0(=[[a0+120]:8+28]) (unsigned) -> B3 and falls through when t1(?) >= t0(=[[a0+120]:8+28]) (unsigned) -> B6.
  The `bltz` branch at 0x37ec is taken when v0(=ret(sv_wait_sig)) < 0 (signed) -> B10 and falls through when v0(=ret(sv_wait_sig)) >= 0 (signed) -> B7.
  The return at 0x3808 has v0 = one of -0x1, 0x0.

- `RRM_SwapBuf` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x3838 (n64).
  It occupies 668 bytes.
  The `sw` at 0x38f8 stores 4 bytes from a3 to a1 (arg1 at entry) +0x1c (value [[a1+120]:8+20]).
  The `sh` at 0x3914 stores 2 bytes from a5 to [a1+120]:8 +0x12.
  The `sw` at 0x392c stores 4 bytes from a0 to a2 (arg2 at entry) +0x8 (value ([a2+8] | 0x4)).
  The `sw` at 0x3934 stores 4 bytes from a0 to [a1+120]:8 +0x20.
  The `sw` at 0x396c stores 4 bytes from a4 to ? (base unknown) (value [a2+8]).
  The `sw` at 0x397c stores 4 bytes from t0 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]+1).
  The `sw` at 0x39d4 stores 4 bytes from a5 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sw` at 0x39fc stores 4 bytes from a5 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sw` at 0x3a38 stores 4 bytes from t0 to ([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)) +0x14 (value [([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5))+20]+1).
  The `sw` at 0x3aa4 stores 4 bytes from a0 to a2 (arg2 at entry) +0x8.
  The `jal` at 0x3860 calls `rrmGetResourceMask` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x38a8 calls `rrmSwapWait` with a0=a1 at entry (arg1), a1=[[a1+120]:8+28], a2=?, a3=?.
  The `jal` at 0x38d4 calls `RRM_CheckValidFault` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x399c calls `invalidate_pane` with a0=0x4, a1=[a1+20], a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x39b8 calls `(unknown callee)` with a0=[a0+40]:8, a1=a1 at entry (arg1), a2=[a1+28], a3=[a2+4].
  The `jal` at 0x39dc calls `validate_pane_buffer` with a0=[a1+120]:8, a1=a0 at entry (arg0), a2=[a0+40]:8, a3=?, a5=[[a0+40]:8+80]-1.
  The `jal` at 0x3a10 calls `rrmUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3a40 calls `psema` with a0=sym(.bss), a1=0x19, a2=[a0+40]:8, a3=?, a7=[[a1+120]:8+160]:8.
  The `jal` at 0x3a70 calls `vsema` with a0=sym(.bss), a1=?, a2=?, a3=?, a6=[[a1+120]:8+160]:8.
  The `jal` at 0x3aa8 calls `vsema` with a0=sym(.bss), a1=?, a2=[a0+40]:8, a3=?, a5=[[a0+40]:8+80]-1, a7=[[a1+120]:8+160]:8.
  The `jal` at 0x3abc calls `rrmSetResourceMask` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(ret(rrmGetResourceMask) | 0x8), a3=?.
  The `beq` branch at 0x386c is taken when (v0(=ret(rrmGetResourceMask)) & 0x8) == 0 -> B32 and falls through when (v0(=ret(rrmGetResourceMask)) & 0x8) != 0 -> B1.
  The `beq` branch at 0x3878 is taken when v0(=[[a0+40]:8+160]) == 0 -> B7 and falls through when v0(=[[a0+40]:8+160]) != 0 -> B3.
  The `beq` branch at 0x3888 is taken when v1(=[[a1+120]:8+24]) == 0 -> B7 and falls through when v1(=[[a1+120]:8+24]) != 0 -> B4.
  The `beq` branch at 0x38a0 is taken when a0(=[[a0+40]:8+164]+1) >= a1(=[[a1+120]:8+28]) (unsigned) -> B7 and falls through when a0(=[[a0+40]:8+164]+1) < a1(=[[a1+120]:8+28]) (unsigned) -> B5.
  The `beq` branch at 0x38b0 is taken when v0(=ret(rrmSwapWait)) == 0 -> B7 and falls through when v0(=ret(rrmSwapWait)) != 0 -> B6.
  The `bltz` branch at 0x38dc is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) -> B33 and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed) -> B8.
  The `beq` branch at 0x38ec is taken when a1(=[[a1+120]:8+4]) == 0 -> B24 and falls through when a1(=[[a1+120]:8+4]) != 0 -> B9.
  The `beq` branch at 0x3904 is taken when (a2(=[a0+4]) & 0x8) == 0 -> B26 and falls through when (a2(=[a0+4]) & 0x8) != 0 -> B10.
  The `beq` branch at 0x3920 is taken when a4(=[[a1+120]:8+18]:2) == 0 -> B30 and falls through when a4(=[[a1+120]:8+18]:2) != 0 -> B11.
  The `beq` branch at 0x3944 is taken when a1(?) == a6(=0xff) -> B28 and falls through when a1(?) != a6(=0xff) -> B14.
  The `beq` branch at 0x3958 is taken when a1(?) >= a3(=[[a0+40]:8+88]) (signed) -> B16 and falls through when a1(?) < a3(=[[a0+40]:8+88]) (signed) -> B15.
  The `bne` branch at 0x3988 is taken when a7(=[[a1+120]:8+160]:8) != 0 -> B23 and falls through when a7(=[[a1+120]:8+160]:8) == 0 -> B17.
  The `beq` branch at 0x39cc is taken when v0(=ret(?)) == 0 -> B21 and falls through when v0(=ret(?)) != 0 -> B19.
  The `bne` branch at 0x39ec is taken when a6(=[[a1+120]:8+160]:8) != 0 -> B27 and falls through when a6(=[[a1+120]:8+160]:8) == 0 -> B20.
  The `bne` branch at 0x3a08 is taken when a7(=[[a1+120]:8+160]:8) != 0 -> B31 and falls through when a7(=[[a1+120]:8+160]:8) == 0 -> B22.
  The `beq` branch at 0x3a58 is taken when (a1(=[a0+4]) & 0x8) == 0 -> B9 and falls through when (a1(=[a0+4]) & 0x8) != 0 -> B25.
  The `bne` branch at 0x3a88 is taken when a2(=[[a1+120]:8+160]:8) != 0 -> B14 and falls through when a2(=[[a1+120]:8+160]:8) == 0 -> B29.
  The return at 0x38cc has v0 = ?.

- `rrmSwapUnGroup` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x3ad4 (n64).
  It occupies 248 bytes.
  The `sd` at 0x3b00 stores 8 bytes from zero to a1 (arg1 at entry) +0xa0 (value 0x0).
  The `sd` at 0x3b1c stores 8 bytes from a5 to ? (base unknown) (value [a1+168]:8).
  The `sw` at 0x3b30 stores 4 bytes from v0 to [a1+160]:8 +0x0 (value [[a1+160]:8]-1).
  The `sd` at 0x3b80 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0x3bac stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sw` at 0x3bbc stores 4 bytes from a0 to [a1+160]:8 +0x4 (value [[a1+160]:8+4]-1).
  The `jal` at 0x3b48 calls `kern_free` with a0=[a1+160]:8, a1=?, a2=a2 at entry (arg2), a3=[a0+40]:8, a4=[[a0+40]:8+176], a6=[a1+160]:8.
  The `beq` branch at 0x3ae8 is taken when a5(=[[a1+160]:8+4]) == 0 -> B2 and falls through when a5(=[[a1+160]:8+4]) != 0 -> B1.
  The `beq` branch at 0x3af4 is taken when at(=[a1+176]:1) == 0 -> B17 and falls through when at(=[a1+176]:1) != 0 -> B2.
  The `beq` branch at 0x3b04 is taken when a5(=[a1+168]:8) == a1 -> B4 and falls through when a5(=[a1+168]:8) != a1 -> B3.
  The `bne` branch at 0x3b14 is taken when a0(?) != a1 -> B3 and falls through when a0(?) == a1 -> B4.
  The `bne` branch at 0x3b2c is taken when v0(=[[a1+160]:8]-1) != 0 -> B8 and falls through when v0(=[[a1+160]:8]-1) == 0 -> B5.
  The `beq` branch at 0x3b38 is taken when a4(=[[a0+40]:8+176]) == 0 -> B7 and falls through when a4(=[[a0+40]:8+176]) != 0 -> B6.
  The `beq` branch at 0x3b64 is taken when v1(?) == 0 -> B7 and falls through when v1(?) != 0 -> B11.
  The `bne` branch at 0x3b78 is taken when a0(?) != a6(=[a1+160]:8) -> B14 and falls through when a0(?) == a6(=[a1+160]:8) -> B13.
  The `beq` branch at 0x3b90 is taken when t0(?) == 0 -> B7 and falls through when t0(?) != 0 -> B15.
  The `bne` branch at 0x3ba4 is taken when t1(?) != a6(=[a1+160]:8) -> B10 and falls through when t1(?) == a6(=[a1+160]:8) -> B16.
  The return at 0x3b54 has v0 = ?.

- `RRM_SwapUnGroup` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x3bcc (n64).
  It occupies 128 bytes.
  The `jal` at 0x3bec calls `psema` with a0=sym(.bss), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3bf8 calls `clip2pane` with a0=[a2], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x3c1c calls `vsema` with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x3c3c calls `rrmSwapUnGroup` with a0=a0 at entry (arg0), a1=ret(clip2pane), a2=?, a3=?.
  The `beq` branch at 0x3c00 is taken when v0(=ret(clip2pane)) == 0 -> B2 and falls through when v0(=ret(clip2pane)) != 0 -> B1.
  The `bne` branch at 0x3c0c is taken when a1(=[ret(clip2pane)+160]:8) != 0 -> B3 and falls through when a1(=[ret(clip2pane)+160]:8) == 0 -> B2.
  The return at 0x3c30 has v0 = one of 0x0, 0x2, 0xf.

- `RRM_SwapGroup` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x3c4c (n64).
  It occupies 312 bytes.
  The `sd` at 0x3ce8 stores 8 bytes from a2 to ret(clip2pane) +0xa0.
  The `sb` at 0x3cf0 stores 1 bytes from zero to ret(clip2pane) +0xb0 (value 0x0).
  The `sd` at 0x3cf4 stores 8 bytes from a1 to ret(clip2pane) +0xa8 (value [ret(clip2pane)+168]:8).
  The `sd` at 0x3cf8 stores 8 bytes from s0 to ret(clip2pane) +0xa8 (value ret(clip2pane)).
  The `sw` at 0x3d0c stores 4 bytes from a1 to ? (base unknown).
  The `sd` at 0x3d58 stores 8 bytes from s0 to ret(clip2pane) +0xa8 (value ret(clip2pane)).
  The `jal` at 0x3c68 calls `clip2pane` with a0=[a2], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3c94 calls `clip2pane` with a0=[a2+4], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x3cd8 calls `psema` with a0=sym(.bss), a1=0x19, a2=?, a3=?.
  The `jal` at 0x3d08 calls `vsema` with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x3d30 calls `rrmSwapUnGroup` with a0=a0 at entry (arg0), a1=ret(clip2pane), a2=?, a3=?, a5=0x2.
  The `jal` at 0x3d5c calls `kern_malloc` with a0=0xc, a1=?, a2=?, a3=?.
  The `jal` at 0x3d6c calls `bzero` with a0=ret(kern_malloc), a1=0xc, a2=?, a3=?.
  The `beq` branch at 0x3c74 is taken when v0(=ret(clip2pane)) == 0 -> B11 and falls through when v0(=ret(clip2pane)) != 0 -> B1.
  The `bne` branch at 0x3c80 is taken when v0(=[ret(clip2pane)+160]:8) != 0 -> B10 and falls through when v0(=[ret(clip2pane)+160]:8) == 0 -> B2.
  The `beq` branch at 0x3c8c is taken when a0(=[a2+4]) == 0 -> B13 and falls through when a0(=[a2+4]) != 0 -> B3.
  The `beq` branch at 0x3c9c is taken when v0(=ret(clip2pane)) == 0 -> B12 and falls through when v0(=ret(clip2pane)) != 0 -> B4.
  The `beq` branch at 0x3cac is taken when a0(=[ret(clip2pane)+160]:8) == 0 -> B14 and falls through when a0(=[ret(clip2pane)+160]:8) != 0 -> B5.
  The `beq` branch at 0x3cbc is taken when a1(=[ret(clip2pane)+88]:8) == a2(=[ret(clip2pane)+88]:8) -> B7 and falls through when a1(=[ret(clip2pane)+88]:8) != a2(=[ret(clip2pane)+88]:8) -> B6.
  The return at 0x3d24 has v0 = ?.

- `RRM_SwapReady` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x3d84 (n64).
  It occupies 360 bytes.
  The `sd` at 0x3e70 stores 8 bytes from v0 to ? (base unknown) (value [ret(clip2pane)+160]:8).
  The `sd` at 0x3e88 stores 8 bytes from s0 to [a0+40]:8 +0x48 (value a0).
  The `sd` at 0x3ee0 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `jal` at 0x3de0 calls `clip2pane` with a0=[a2], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x25.
  The `jal` at 0x3e7c calls `psema` with a0=[a0+40]:8+56, a1=0x219, a2=[a0+40]:8, a3=?, a5=0x6.
  The `jal` at 0x3e9c calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `bne` branch at 0x3db4 is taken when at(=[a2+4]) < v0(=[[a0+40]:8+176]) (unsigned) -> B3 and falls through when at(=[a2+4]) >= v0(=[[a0+40]:8+176]) (unsigned) -> B1.
  The `beq` branch at 0x3dec is taken when v0(=ret(clip2pane)) == 0 -> B12 and falls through when v0(=ret(clip2pane)) != 0 -> B4.
  The `beq` branch at 0x3df8 is taken when v1(=[ret(clip2pane)+88]:8) == s2(=[a0+40]:8) -> B6 and falls through when v1(=[ret(clip2pane)+88]:8) != s2(=[a0+40]:8) -> B5.
  The `beq` branch at 0x3e0c is taken when v0(=[ret(clip2pane)+160]:8) == 0 -> B22 and falls through when v0(=[ret(clip2pane)+160]:8) != 0 -> B7.
  The `bne` branch at 0x3e1c is taken when a0(=[[a0+40]:8+72]:8) != s0(=a0) -> B16 and falls through when a0(=[[a0+40]:8+72]:8) == s0(=a0) -> B8.
  The `beq` branch at 0x3e2c is taken when a1(=[a2+8]) == 0 -> B19 and falls through when a1(=[a2+8]) != 0 -> B9.
  The `beq` branch at 0x3e44 is taken when a2(?) == 0 -> B14 and falls through when a2(?) != 0 -> B10.
  The `bne` branch at 0x3e4c is taken when a2(?) != v0(=[ret(clip2pane)+160]:8) -> B13 and falls through when a2(?) == v0(=[ret(clip2pane)+160]:8) -> B11.
  The `beq` branch at 0x3e94 is taken when a6(=[[a0+40]:8+104]) == 0 -> B18 and falls through when a6(=[[a0+40]:8+104]) != 0 -> B17.
  The `bne` branch at 0x3eac is taken when t0(=[[a0+40]:8+104]) != 0 -> B17 and falls through when t0(=[[a0+40]:8+104]) == 0 -> B18.
  The `beq` branch at 0x3ecc is taken when t1(?) == v0(=[ret(clip2pane)+160]:8) -> B21 and falls through when t1(?) != v0(=[ret(clip2pane)+160]:8) -> B20.
  The return at 0x3dd4 has v0 = ?.

- `RRM_CushionBuffer` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x3eec (n64).
  It occupies 164 bytes.
  The `sb` at 0x3f64 stores 1 bytes from a5 to ret(clip2pane) +0xb1 (value [[a0+40]:8+192]).
  The `sb` at 0x3f8c stores 1 bytes from zero to ret(clip2pane) +0xb1 (value 0x0).
  The `jal` at 0x3f04 calls `clip2pane` with a0=[a2], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x3f14 is taken when v0(=ret(clip2pane)) == 0 -> B2 and falls through when v0(=ret(clip2pane)) != 0 -> B1.
  The `beq` branch at 0x3f20 is taken when v1(=[ret(clip2pane)+88]:8) == s0(=[a0+40]:8) -> B4 and falls through when v1(=[ret(clip2pane)+88]:8) != s0(=[a0+40]:8) -> B2.
  The `beq` branch at 0x3f3c is taken when a5(=[[a0+40]:8+192]) == 0 -> B12 and falls through when a5(=[[a0+40]:8+192]) != 0 -> B5.
  The `beq` branch at 0x3f4c is taken when a0(=[a2+4]) == 0 -> B10 and falls through when a0(=[a2+4]) != 0 -> B6.
  The `beq` branch at 0x3f54 is taken when a4(=[ret(clip2pane)+177]:1) == 0 -> B8 and falls through when a4(=[ret(clip2pane)+177]:1) != 0 -> B7.
  The `beq` branch at 0x3f70 is taken when a4(=[ret(clip2pane)+177]:1) == 0 -> B13 and falls through when a4(=[ret(clip2pane)+177]:1) != 0 -> B11.
  The return at 0x3f30 has v0 = ?.

- `RRM_MGR_SwapBuf` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x3f90 (n64).
  It occupies 196 bytes.
  The `sw` at 0x3fd8 stores 4 bytes from v1 to ([[a0+40]:8+96]:8 + ([a2+4] << 0x2)) +0x0 (value [a2+16]).
  The `sh` at 0x4040 stores 2 bytes from a5 to ret(clip2pane) +0x12.
  The `jal` at 0x3fa4 calls `RRM_CheckValidFault` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x3ff4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a2+8], a2=[a2+4], a3=[a2+16], a4=[a2+12].
  The `jal` at 0x4020 calls `clip2pane` with a0=[a2+8], a1=a0 at entry (arg0), a2=?, a3=?.
  The `bltz` branch at 0x3fac is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) -> B9 and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed) -> B1.
  The `beq` branch at 0x3fc4 is taken when a2(=[a2+4]) >= at(=[[a0+40]:8+88]) (signed) -> B3 and falls through when a2(=[a2+4]) < at(=[[a0+40]:8+88]) (signed) -> B2.
  The `beq` branch at 0x3ffc is taken when v0(=ret(?)) == 0 -> B6 and falls through when v0(=ret(?)) != 0 -> B4.
  The `beq` branch at 0x4028 is taken when v0(=ret(clip2pane)) == 0 -> B8 and falls through when v0(=ret(clip2pane)) != 0 -> B7.
  The return at 0x4014 has v0 = ?.

- `rrmValidateMGRSwapBufSTREAM` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x4054 (n64).
  It occupies 76 bytes.
  The `jal` at 0x408c calls `GfxIntrMessage` with a0=sp-64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+8]:8.
  The `beq` branch at 0x4058 is taken when a0 == 0 -> B3 and falls through when a0 != 0 -> B1.
  The `beq` branch at 0x4064 is taken when a3(=[a0+8]:8) == 0 -> B4 and falls through when a3(=[a0+8]:8) != 0 -> B2.
  The return at 0x4098 has v0 = ?.

- `rrmValidateMGRSwapBuf` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x40a0 (n64).
  It occupies 72 bytes.
  The `jal` at 0x40d8 calls `streams_timeout` with a0=sym(streams_monp), a1=sym(rrmValidateMGRSwapBufSTREAM), a2=-0x64, a3=a0 at entry (arg0), a5=0x0, a7=a1 at entry (arg1).
  The `beq` branch at 0x40a8 is taken when a0 == 0 -> B2 and falls through when a0 != 0 -> B1.
  The `bne` branch at 0x40b4 is taken when at(=[a0+8]:8) != 0 -> B3 and falls through when at(=[a0+8]:8) == 0 -> B2.
  The return at 0x40bc has v0 = ?.

- `rrmGenlockNotifySTREAM` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x40e8 (n64).
  It occupies 72 bytes.
  The `jal` at 0x411c calls `GfxIntrMessage` with a0=sp-64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+8]:8.
  The `beq` branch at 0x40ec is taken when a0 == 0 -> B3 and falls through when a0 != 0 -> B1.
  The `beq` branch at 0x40f8 is taken when a3(=[a0+8]:8) == 0 -> B4 and falls through when a3(=[a0+8]:8) != 0 -> B2.
  The return at 0x4128 has v0 = ?.

- `rrmGenlockNotify` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x4130 (n64).
  It occupies 72 bytes.
  The `jal` at 0x4168 calls `streams_timeout` with a0=sym(streams_monp), a1=sym(rrmGenlockNotifySTREAM), a2=-0x64, a3=a0 at entry (arg0), a5=0x0, a7=a1 at entry (arg1).
  The `beq` branch at 0x4138 is taken when a0 == 0 -> B2 and falls through when a0 != 0 -> B1.
  The `bne` branch at 0x4144 is taken when at(=[a0+8]:8) != 0 -> B3 and falls through when at(=[a0+8]:8) == 0 -> B2.
  The return at 0x414c has v0 = ?.

- `RRM_WaitForRetrace` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x4178 (n64).
  It occupies 108 bytes.
  The `jal` at 0x418c calls `RRM_CheckValidFault` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x41a8 calls `rrmInvalidateRN` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x10, a3=?.
  The `jalr` at 0x41bc calls `(unknown callee)` with a0=[a0+40]:8, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x41c4 calls `rrmUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgez` branch at 0x4194 is taken when v0(=ret(RRM_CheckValidFault)) >= 0 (signed) -> B2 and falls through when v0(=ret(RRM_CheckValidFault)) < 0 (signed) -> B1.
  The return at 0x41dc has v0 = one of 0x0, 0xe.

- `RRM_SetSwapInterval` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x41e4 (n64).
  It occupies 40 bytes.
  The `sw` at 0x41f0 stores 4 bytes from a4 to a1 (arg1 at entry) +0x20 (value [a2+4]).
  The `sw` at 0x41fc stores 4 bytes from at to [a1+120]:8 +0x18 (value [a2+4]).
  The `bltz` branch at 0x41e8 is taken when a4(=[a2+4]) < 0 (signed) -> B2 and falls through when a4(=[a2+4]) >= 0 (signed) -> B1.
  The return at 0x4204 has v0 = one of 0x0, 0x16.

- `RRM_Message` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x420c (n64).
  It occupies 268 bytes.
  The `sw` at 0x4278 stores 4 bytes from a2 to a2 (arg2 at entry) +0x4.
  The `jal` at 0x4238 calls `mutex_spinlock` with a0=a1+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4248 calls `pane_validmask` with a0=[a1+120]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x425c calls `mutex_spinunlock` with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x4280 calls `rrmInvalidateRN` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x4294 calls `invalidate_pane` with a0=[a2+4], a1=[[a1+120]:8+4], a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x429c calls `rrmUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x42e0 calls `bcopy` with a0=a2+16, a1=sp-96, a2=?, a3=?, a4=[a2+8]:1.
  The `jal` at 0x42e8 calls `GfxMessage` with a0=sp-112, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4274 is taken when (s8(=(ret(pane_validmask) | [a1+6]:2)) & a2(=[a2+4])) == 0 -> B2 and falls through when (s8(=(ret(pane_validmask) | [a1+6]:2)) & a2(=[a2+4])) != 0 -> B1.
  The `beq` branch at 0x42ac is taken when a2(=[[a0+8]:8+8]:8) == 0 -> B7 and falls through when a2(=[[a0+8]:8+8]:8) != 0 -> B3.
  The `bne` branch at 0x42c8 is taken when v0(=[a2+12]) < 0xb (signed) -> B5 and falls through when v0(=[a2+12]) >= 0xb (signed) -> B4.
  The return at 0x4308 has v0 = one of 0x0, 0xe.

- `RRM_SetVideoSync` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x4318 (n64).
  It occupies 20 bytes.
  The `sw` at 0x4320 stores 4 bytes from at to [a0+40]:8 +0x80 (value [a2+4]).
  The return at 0x4324 has v0 = 0x0.

- `RRM_GetVideoSync` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x432c (n64).
  It occupies 68 bytes.
  The `sw` at 0x4348 stores 4 bytes from at to a2 (arg2 at entry) +0x4 (value [[a0+40]:8+128]).
  The `jal` at 0x434c calls `copyout` with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x8, a3=a3 at entry (arg3).
  The `beq` branch at 0x4354 is taken when v0(=ret(copyout)) == 0 -> B3 and falls through when v0(=ret(copyout)) != 0 -> B1.
  The return at 0x4360 has v0 = one of 0x0, 0xe.

- `RRM_WaitVideoSync` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x4370 (n64).
  It occupies 108 bytes.
  The `sw` at 0x43c0 stores 4 bytes from v0 to a2 (arg2 at entry) +0xc (value [a1+152]).
  The `jal` at 0x438c calls `rrmWaitVideoSync` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a2+4], a3=[a2+8].
  The `jal` at 0x43bc calls `copyout` with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x10, a3=?.
  The `beq` branch at 0x4394 is taken when v0(=ret(rrmWaitVideoSync)) == 0 -> B2 and falls through when v0(=ret(rrmWaitVideoSync)) != 0 -> B1.
  The `beq` branch at 0x43c4 is taken when v0(=ret(copyout)) == 0 -> B4 and falls through when v0(=ret(copyout)) != 0 -> B3.
  The return at 0x43a0 has v0 = ?.

- `rrmWaitVideoSync` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x43dc (n64).
  It occupies 220 bytes.
  The `sd` at 0x443c stores 8 bytes from zero to a1 (arg1 at entry) +0xa0 (value 0x0).
  The `sw` at 0x4440 stores 4 bytes from s0 to a1 (arg1 at entry) +0x94 (value a3).
  The `sw` at 0x4444 stores 4 bytes from s3 to a1 (arg1 at entry) +0x90 (value a2).
  The `sd` at 0x4454 stores 8 bytes from a1 to a1 (arg1 at entry) +0xa0 (value [[a0+40]:8+136]:8).
  The `sd` at 0x4458 stores 8 bytes from s1 to [a0+40]:8 +0x88 (value a1).
  The `sd` at 0x44a0 stores 8 bytes from s1 to [a0+40]:8 +0x88 (value a1).
  The `jal` at 0x4434 calls `mutex_spinlock` with a0=[a0+40]:8+48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4464 calls `hold_nonfatalsig` with a0=sp-64, a1=[[a0+40]:8+136]:8, a2=?, a3=?.
  The `jal` at 0x4478 calls `sv_wait_sig` with a0=a1+48, a1=0x1e, a2=?, a3=ret(mutex_spinlock).
  The `jal` at 0x4488 calls `release_nonfatalsig` with a0=sp-64, a1=?, a2=?, a3=?.
  The `jal` at 0x44a4 calls `release_nonfatalsig` with a0=sp-64, a1=?, a2=?, a3=?.
  The `blez` branch at 0x4400 is taken when a2 <= 0 (signed) -> B3 and falls through when a2 > 0 (signed) -> B1.
  The `bltz` branch at 0x4408 is taken when a3 < 0 (signed) -> B3 and falls through when a3 >= 0 (signed) -> B2.
  The `bne` branch at 0x4410 is taken when at(?) != 0 -> B4 and falls through when at(?) == 0 -> B3.
  The `beq` branch at 0x444c is taken when a1(=[[a0+40]:8+136]:8) == 0 -> B8 and falls through when a1(=[[a0+40]:8+136]:8) != 0 -> B5.
  The `bltz` branch at 0x4480 is taken when v0(=ret(sv_wait_sig)) < 0 (signed) -> B9 and falls through when v0(=ret(sv_wait_sig)) >= 0 (signed) -> B7.
  The return at 0x4428 has v0 = one of -0x1, 0x0, 0x16.

- `rrmValidateVideoSync` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x44b8 (n64).
  It occupies 320 bytes.
  The `sd` at 0x4550 stores 8 bytes from a6 to a0 (arg0 at entry) +0x88.
  The `sd` at 0x455c stores 8 bytes from a6 to ? (base unknown).
  The `sw` at 0x456c stores 4 bytes from a5 to ? (base unknown).
  The `sd` at 0x45a4 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0x45d0 stores 8 bytes from s2 to a0 (arg0 at entry) +0xa8.
  The `jal` at 0x44d8 calls `mutex_spinlock` with a0=a0+48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4568 calls `sv_signal` with a0=?, a1=[a0+136]:8, a2=?, a3=?.
  The `jal` at 0x45a0 calls `sv_signal` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x45d8 calls `mutex_spinunlock` with a0=a0+48, a1=?, a2=?, a3=?.
  The `bne` branch at 0x44f0 is taken when at(=[a0+136]:8) != 0 -> B3 and falls through when at(=[a0+136]:8) == 0 -> B1.
  The `beq` branch at 0x4508 is taken when v0(?) == 0 -> B10 and falls through when v0(?) != 0 -> B3.
  The `beq` branch at 0x4524 is taken when (v1(?) & 0x8) == 0 -> B12 and falls through when (v1(?) & 0x8) != 0 -> B4.
  The `bne` branch at 0x4538 is taken when a7(?) != a0(?) -> B2 and falls through when a7(?) == a0(?) -> B6.
  The `bne` branch at 0x4544 is taken when a1(=[a0+136]:8) != a4(?) -> B8 and falls through when a1(=[a0+136]:8) == a4(?) -> B7.
  The `bne` branch at 0x4570 is taken when s0(?) != 0 -> B3 and falls through when s0(?) == 0 -> B10.
  The `beq` branch at 0x4584 is taken when s0(=[a0+168]:8) == 0 -> B16 and falls through when s0(=[a0+168]:8) != 0 -> B11.
  The `beq` branch at 0x45a8 is taken when s0(?) == 0 -> B16 and falls through when s0(?) != 0 -> B14.
  The `beq` branch at 0x45c0 is taken when s3(=[a0+164]+1) >= t8(?) (unsigned) -> B13 and falls through when s3(=[a0+164]+1) < t8(?) (unsigned) -> B16.
  The return at 0x45f0 has v0 = ret(mutex_spinunlock).

- `RRM_MapClipToSwapbufID` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x45f8 (n64).
  It occupies 120 bytes.
  The `sw` at 0x462c stores 4 bytes from at to a2 (arg2 at entry) +0x8 (value [ret(clip2pane)+20]).
  The `sw` at 0x464c stores 4 bytes from a0 to a2 (arg2 at entry) +0x8 (value -0x1).
  The `jal` at 0x4614 calls `clip2pane` with a0=[a2+4], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4658 calls `copyout` with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0xc, a3=?.
  The `beq` branch at 0x461c is taken when v0(=ret(clip2pane)) == 0 -> B4 and falls through when v0(=ret(clip2pane)) != 0 -> B1.
  The `bne` branch at 0x4628 is taken when s1(=a3) != 0 -> B5 and falls through when s1(=a3) == 0 -> B2.
  The `beq` branch at 0x4648 is taken when s1(=a3) == 0 -> B2 and falls through when s1(=a3) != 0 -> B5.
  The `beq` branch at 0x4660 is taken when v0(=ret(copyout)) == 0 -> B3 and falls through when v0(=ret(copyout)) != 0 -> B6.
  The return at 0x4640 has v0 = one of 0x0, 0xe.

- `RRM_Dispatch` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x4670 (n64).
  It occupies 1148 bytes.
  The `sw` at 0x4844 stores 4 bytes from at to [a0+40]:8 +0x50 (value [[a0+40]:8+80]+1).
  The `sw` at 0x4878 stores 4 bytes from v1 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sd` at 0x498c stores 8 bytes from s1 to [a0+40]:8 +0x48 (value a0).
  The `jal` at 0x46f0 calls `copyin` with a0=a2 at entry (arg2), a1=sp-144, a2=[table(sym(.data))-23992], a3=a3 at entry (arg3).
  The `jalr` at 0x485c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=?, a2=sp-144, a3=a2 at entry (arg2), a4=a3 at entry (arg3).
  The `jal` at 0x4884 calls `curproc_abi` with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x48a4 calls `copyin_xlate` with a0=a2 at entry (arg2), a1=sp-144, a2=[table(sym(.data))-23992], a3=sym(irix5_to_RRM_GetDisplayModes), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x48f8 calls `vsema` with a0=table(sym(RRMcall_sema)), a1=?, a2=?, a3=?.
  The `jal` at 0x4908 calls `curproc_abi` with a0=[table(sym(.data))-24000]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4928 calls `copyin_xlate` with a0=a2 at entry (arg2), a1=sp-144, a2=[table(sym(.data))-23992], a3=sym(irix5_to_RRM_ValidateClip), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x4980 calls `psema` with a0=[a0+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0x49a0 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x49f8 calls `psema` with a0=table(sym(RRMcall_sema)), a1=0x19, a2=?, a3=?.
  The `jal` at 0x4a24 calls `vsema` with a0=table(sym(RRMcall_sema)), a1=?, a2=?, a3=0x1, a4=[table(sym(RRMrn))+82]:1.
  The `bne` branch at 0x46a4 is taken when a1 < 0x3e8 (signed) -> B7 and falls through when a1 >= 0x3e8 (signed) -> B1.
  The `beq` branch at 0x46b0 is taken when a1 >= 0x44c (signed) -> B7 and falls through when a1 < 0x44c (signed) -> B2.
  The `beq` branch at 0x46cc is taken when a0(=[table(sym(.data))-24000]:8) == 0 -> B8 and falls through when a0(=[table(sym(.data))-24000]:8) != 0 -> B3.
  The `beq` branch at 0x46d8 is taken when a1 == s3(=0x3f3) -> B46 and falls through when a1 != s3(=0x3f3) -> B4.
  The `beq` branch at 0x46e4 is taken when a1 == t9(=0x3f8) -> B37 and falls through when a1 != t9(=0x3f8) -> B5.
  The `beq` branch at 0x46f8 is taken when v0(=ret(copyin)) == 0 -> B9 and falls through when v0(=ret(copyin)) != 0 -> B6.
  The `bne` branch at 0x473c is taken when ra(=[[a0+8]:8+8]:8) != s1(=a0) -> B12 and falls through when ra(=[[a0+8]:8+8]:8) == s1(=a0) -> B10.
  The `beq` branch at 0x4744 is taken when s2(=[table(sym(.data))-23988]) == 0 -> B13 and falls through when s2(=[table(sym(.data))-23988]) != 0 -> B11.
  The `bne` branch at 0x4754 is taken when at(=[[a0+40]:8+72]:8) != s1(=a0) -> B55 and falls through when at(=[[a0+40]:8+72]:8) == s1(=a0) -> B12.
  The `beq` branch at 0x4764 is taken when s0(=a1) == v0(=0x3e8) -> B39 and falls through when s0(=a1) != v0(=0x3e8) -> B14.
  The `beq` branch at 0x4770 is taken when s0(=a1) == v1(=0x3ea) -> B48 and falls through when s0(=a1) != v1(=0x3ea) -> B15.
  The `beq` branch at 0x4778 is taken when s0(=a1) == a1(=0x3fc) -> B52 and falls through when s0(=a1) != a1(=0x3fc) -> B16.
  The `beq` branch at 0x4780 is taken when s0(=a1) == a2(=0x3f2) -> B32 and falls through when s0(=a1) != a2(=0x3f2) -> B17.
  The `beq` branch at 0x4788 is taken when s0(=a1) == s3(=0x3f3) -> B32 and falls through when s0(=a1) != s3(=0x3f3) -> B18.
  The `beq` branch at 0x4790 is taken when s0(=a1) == a3(=0x3ec) -> B32 and falls through when s0(=a1) != a3(=0x3ec) -> B19.
  The `beq` branch at 0x4798 is taken when s0(=a1) == a4(=0x3f4) -> B32 and falls through when s0(=a1) != a4(=0x3f4) -> B20.
  The `beq` branch at 0x47a0 is taken when s0(=a1) == a5(=0x3f9) -> B32 and falls through when s0(=a1) != a5(=0x3f9) -> B21.
  The `beq` branch at 0x47a8 is taken when s0(=a1) == a6(=0x3f5) -> B32 and falls through when s0(=a1) != a6(=0x3f5) -> B22.
  The `beq` branch at 0x47b0 is taken when s0(=a1) == a7(=0x3f6) -> B32 and falls through when s0(=a1) != a7(=0x3f6) -> B23.
  The `beq` branch at 0x47b8 is taken when s0(=a1) == t0(=0x3fb) -> B32 and falls through when s0(=a1) != t0(=0x3fb) -> B24.
  The `beq` branch at 0x47c0 is taken when s0(=a1) == t1(=0x3fa) -> B32 and falls through when s0(=a1) != t1(=0x3fa) -> B25.
  The `beq` branch at 0x47c8 is taken when v0(?) == 0 -> B58 and falls through when v0(?) != 0 -> B26.
  The `beq` branch at 0x47d4 is taken when v0(?) >= t2(=[sym(rrm_maxrn)]) (signed) -> B58 and falls through when v0(?) < t2(=[sym(rrm_maxrn)]) (signed) -> B27.
  The `beq` branch at 0x47fc is taken when a1(=0x1) == t3(=[table(sym(RRMrn))+82]:1) -> B60 and falls through when a1(=0x1) != t3(=[table(sym(RRMrn))+82]:1) -> B28.
  The `bne` branch at 0x4808 is taken when t9(=entry(sym(RRMrn))) != a0(?) -> B60 and falls through when t9(=entry(sym(RRMrn))) == a0(?) -> B29.
  The `beq` branch at 0x4818 is taken when ra(=[[a0+8]:8+8]:8) == s1(=a0) -> B62 and falls through when ra(=[[a0+8]:8+8]:8) != s1(=a0) -> B30.
  The `beq` branch at 0x4820 is taken when s2(=[table(sym(.data))-23988]) == 0 -> B69 and falls through when s2(=[table(sym(.data))-23988]) != 0 -> B31.
  The `beq` branch at 0x4830 is taken when s2(=[table(sym(.data))-23988]) == 0 -> B54 and falls through when s2(=[table(sym(.data))-23988]) != 0 -> B33.
  The `beq` branch at 0x4864 is taken when s2(=[table(sym(.data))-23988]) == 0 -> B44 and falls through when s2(=[table(sym(.data))-23988]) != 0 -> B35.
  The `beq` branch at 0x48ac is taken when v0(=ret(copyin_xlate)) == 0 -> B9 and falls through when v0(=ret(copyin_xlate)) != 0 -> B38.
  The `beq` branch at 0x48c0 is taken when a0(?) == a1(=-0x1) -> B42 and falls through when a0(?) != a1(=-0x1) -> B40.
  The `beq` branch at 0x48c8 is taken when s6(?) == 0 -> B59 and falls through when s6(?) != 0 -> B41.
  The `beq` branch at 0x48d4 is taken when s6(?) >= a2(=[sym(rrm_maxrn)]) (signed) -> B59 and falls through when s6(?) < a2(=[sym(rrm_maxrn)]) (signed) -> B42.
  The `beq` branch at 0x48dc is taken when s2(=[table(sym(.data))-23988]) == 0 -> B68 and falls through when s2(=[table(sym(.data))-23988]) != 0 -> B43.
  The `beq` branch at 0x48ec is taken when s0(?) == 0 -> B36 and falls through when s0(?) != 0 -> B45.
  The `beq` branch at 0x4930 is taken when v0(=ret(copyin_xlate)) == 0 -> B9 and falls through when v0(=ret(copyin_xlate)) != 0 -> B47.
  The `bne` branch at 0x4940 is taken when s6(?) != 0 -> B15 and falls through when s6(?) == 0 -> B49.
  The `beq` branch at 0x4950 is taken when (a2(=[a0+4]) & 0x8) == 0 -> B82 and falls through when (a2(=[a0+4]) & 0x8) != 0 -> B50.
  The `beq` branch at 0x4958 is taken when s2(=[table(sym(.data))-23988]) == 0 -> B77 and falls through when s2(=[table(sym(.data))-23988]) != 0 -> B51.
  The `beq` branch at 0x4968 is taken when s2(=[table(sym(.data))-23988]) == 0 -> B67 and falls through when s2(=[table(sym(.data))-23988]) != 0 -> B53.
  The `beq` branch at 0x4998 is taken when a3(=[[a0+40]:8+104]) == 0 -> B13 and falls through when a3(=[[a0+40]:8+104]) != 0 -> B56.
  The `bne` branch at 0x49b0 is taken when a5(=[[a0+40]:8+104]) != 0 -> B56 and falls through when a5(=[[a0+40]:8+104]) == 0 -> B57.
  The `beq` branch at 0x49d8 is taken when a0(?) == 0 -> B81 and falls through when a0(?) != 0 -> B62.
  The `bne` branch at 0x49e0 is taken when s2(=[table(sym(.data))-23988]) != 0 -> B33 and falls through when s2(=[table(sym(.data))-23988]) == 0 -> B63.
  The `beq` branch at 0x49e8 is taken when s3(=table(sym(RRMrn))) == 0 -> B34 and falls through when s3(=table(sym(RRMrn))) != 0 -> B64.
  The `beq` branch at 0x4a08 is taken when a3(=0x1) == a4(=[table(sym(RRMrn))+82]:1) -> B66 and falls through when a3(=0x1) != a4(=[table(sym(RRMrn))+82]:1) -> B65.
  The `beq` branch at 0x4a18 is taken when a5(=entry(sym(RRMrn))) == a6(?) -> B34 and falls through when a5(=entry(sym(RRMrn))) != a6(?) -> B66.
  The `beq` branch at 0x4a4c is taken when (a2(=[a0+4]) & 0x8) == 0 -> B78 and falls through when (a2(=[a0+4]) & 0x8) != 0 -> B70.
  The `beq` branch at 0x4a58 is taken when a0(=[table(sym(RRMrn))+56]:8) == 0 -> B83 and falls through when a0(=[table(sym(RRMrn))+56]:8) != 0 -> B71.
  The `beq` branch at 0x4a68 is taken when (a3(=[[table(sym(RRMrn))+56]:8+4]) & 0x8) == 0 -> B73 and falls through when (a3(=[[table(sym(RRMrn))+56]:8+4]) & 0x8) != 0 -> B72.
  The `beq` branch at 0x4a78 is taken when a4(=[[table(sym(RRMrn))+56]:8+40]:8) == a5(=[a0+40]:8) -> B74 and falls through when a4(=[[table(sym(RRMrn))+56]:8+40]:8) != a5(=[a0+40]:8) -> B73.
  The `beq` branch at 0x4a8c is taken when a6(=[table(sym(RRMrn))+84]:1) == 0 -> B62 and falls through when a6(=[table(sym(RRMrn))+84]:1) != 0 -> B75.
  The `beq` branch at 0x4a98 is taken when a7(=[table(sym(RRMrn))+64]:8) == s1(=a0) -> B62 and falls through when a7(=[table(sym(RRMrn))+64]:8) != s1(=a0) -> B76.
  The `beq` branch at 0x4ab4 is taken when a0(=[a0+64]:8) == 0 -> B81 and falls through when a0(=[a0+64]:8) != 0 -> B79.
  The `beq` branch at 0x4ac0 is taken when t0(?) == s3(=table(sym(RRMrn))) -> B61 and falls through when t0(?) != s3(=table(sym(RRMrn))) -> B80.
  The `bne` branch at 0x4acc is taken when a0(?) != 0 -> B79 and falls through when a0(?) == 0 -> B81.
  The return at 0x472c has v0 = ?.

- `irix5_to_RRM_ValidateClip` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x4aec (n64).
  It occupies 208 bytes.
  The `sd` at 0x4b14 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x4b1c stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0x38).
  The `sw` at 0x4b30 stores 4 bytes from at to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `sw` at 0x4b38 stores 4 bytes from t9 to a1 (arg1 at entry) +0x4 (value [[a3+16]:8+4]).
  The `sw` at 0x4b40 stores 4 bytes from t8 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+8]).
  The `sw` at 0x4b48 stores 4 bytes from t3 to a1 (arg1 at entry) +0xc (value [[a3+16]:8+12]).
  The `sw` at 0x4b50 stores 4 bytes from t2 to a1 (arg1 at entry) +0x10 (value [[a3+16]:8+16]).
  The `sw` at 0x4b58 stores 4 bytes from t1 to a1 (arg1 at entry) +0x14 (value [[a3+16]:8+20]).
  The `sw` at 0x4b60 stores 4 bytes from t0 to a1 (arg1 at entry) +0x18 (value [[a3+16]:8+24]).
  The `sd` at 0x4b68 stores 8 bytes from a7 to a1 (arg1 at entry) +0x20 (value [[a3+16]:8+28]).
  The `sw` at 0x4b70 stores 4 bytes from a6 to a1 (arg1 at entry) +0x28 (value [[a3+16]:8+32]).
  The `sw` at 0x4b78 stores 4 bytes from a5 to a1 (arg1 at entry) +0x2c (value [[a3+16]:8+36]).
  The `sw` at 0x4b80 stores 4 bytes from a4 to a1 (arg1 at entry) +0x30 (value [[a3+16]:8+40]).
  The `sw` at 0x4b88 stores 4 bytes from a3 to a1 (arg1 at entry) +0x34 (value [[a3+16]:8+44]).
  The `sw` at 0x4b90 stores 4 bytes from a2 to a1 (arg1 at entry) +0x38 (value [[a3+16]:8+48]).
  The `sw` at 0x4b98 stores 4 bytes from a0 to a1 (arg1 at entry) +0x3c (value [[a3+16]:8+52]).
  The `sd` at 0x4bb8 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x4ba8 calls `kern_malloc` with a0=0x38, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x4af8 is taken when a0 != 0 -> B4 and falls through when a0 == 0 -> B1.
  The `bne` branch at 0x4b08 is taken when at(=[a3]) < 0x38 (unsigned) -> B6 and falls through when at(=[a3]) >= 0x38 (unsigned) -> B2.
  The return at 0x4ba0 has v0 = 0x0.

- `irix5_to_RRM_GetDisplayModes` in `usr/cpu/sysgen/IP27boot/rrm.o` at 0x4bbc (n64).
  It occupies 120 bytes.
  The `sd` at 0x4be4 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x4bec stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0xc).
  The `sw` at 0x4c00 stores 4 bytes from a3 to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `sd` at 0x4c08 stores 8 bytes from a2 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+4]).
  The `sw` at 0x4c10 stores 4 bytes from a0 to a1 (arg1 at entry) +0x10 (value [[a3+16]:8+8]).
  The `sd` at 0x4c30 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x4c20 calls `kern_malloc` with a0=0xc, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x4bc8 is taken when a0 != 0 -> B4 and falls through when a0 == 0 -> B1.
  The `bne` branch at 0x4bd8 is taken when at(=[a3]) < 0xc (unsigned) -> B6 and falls through when at(=[a3]) >= 0xc (unsigned) -> B2.
  The return at 0x4c18 has v0 = 0x0.

- `gfxtable_readerlock` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x0 (n64).
  It occupies 68 bytes.
  The `sw` at 0x30 stores 4 bytes from at to a0 (arg0 at entry) +0x0 (value [a0]+1).
  The `jal` at 0x14 calls `mutex_spinlock` with a0=a0+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2c calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The return at 0x3c has v0 = ret(mutex_spinunlock).

- `gfxtable_readerunlock` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x44 (n64).
  It occupies 68 bytes.
  The `sw` at 0x74 stores 4 bytes from at to a0 (arg0 at entry) +0x0 (value [a0]-1).
  The `jal` at 0x58 calls `mutex_spinlock` with a0=a0+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x70 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The return at 0x80 has v0 = ret(mutex_spinunlock).

- `gfxtable_writerlock` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x88 (n64).
  It occupies 128 bytes.
  The `jal` at 0xa4 calls `mutex_spinlock` with a0=a0+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xbc calls `mutex_spinunlock` with a0=a0+4, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xcc calls `nano_delay` with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0xd4 calls `mutex_spinlock` with a0=a0+4, a1=?, a2=?, a3=?.
  The `blez` branch at 0xb4 is taken when at(=[a0]) <= 0 (signed) -> B2 and falls through when at(=[a0]) > 0 (signed) -> B1.
  The `bgtz` branch at 0xe4 is taken when v0(=[a0]) > 0 (signed) -> B1 and falls through when v0(=[a0]) <= 0 (signed) -> B2.
  The return at 0x100 has v0 = ret(mutex_spinlock).

- `gfxtable_writerunlock` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x108 (n64).
  It occupies 28 bytes.
  The `jal` at 0x110 calls `mutex_spinunlock` with a0=a0+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x11c has v0 = ret(mutex_spinunlock).

- `init_gthread_table` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3cc (n64).
  It occupies 160 bytes.
  The `sd` at 0x408 stores 8 bytes from v0 to sym(gthread_table) +0x0 (value ret(kern_malloc)).
  The `sw` at 0x448 stores 4 bytes from zero to ? (base unknown) (value 0x0).
  The `jal` at 0x3f8 calls `kern_malloc` with a0=0x800, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x40c calls `bzero` with a0=?, a1=0x800, a2=?, a3=?.
  The `jal` at 0x42c calls `spinlock_init` with a0=?, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x45c calls `cmn_err` with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x3dc is taken when at(=[sym(gthread_table)]:8) == 0 -> B3 and falls through when at(=[sym(gthread_table)]:8) != 0 -> B1.
  The `beq` branch at 0x404 is taken when v0(=ret(kern_malloc)) == 0 -> B7 and falls through when v0(=ret(kern_malloc)) != 0 -> B4.
  The `bne` branch at 0x444 is taken when s0(?) < 0x10 (signed) -> B5 and falls through when s0(?) >= 0x10 (signed) -> B6.
  The return at 0x3f0 has v0 = ?.

- `gthread_create` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x46c (n64).
  It occupies 252 bytes.
  The `sd` at 0x498 stores 8 bytes from s1 to ret(kern_malloc) +0x0 (value a0).
  The `sw` at 0x49c stores 4 bytes from zero to ret(kern_malloc) +0x8 (value 0x0).
  The `sd` at 0x4a0 stores 8 bytes from zero to ret(kern_malloc) +0x10 (value 0x0).
  The `sd` at 0x4a4 stores 8 bytes from zero to ret(kern_malloc) +0x18 (value 0x0).
  The `sd` at 0x520 stores 8 bytes from a4 to ret(kern_malloc) +0x20.
  The `sd` at 0x52c stores 8 bytes from s0 to ? (base unknown) (value ret(kern_malloc)).
  The `jal` at 0x480 calls `kern_malloc` with a0=0x28, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4a8 calls `gfx_group_find` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x508 calls `gfxtable_writerlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x538 calls `gfxtable_writerunlock` with a0=?, a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `jal` at 0x558 calls `gthread_attach_group` with a0=ret(kern_malloc), a1=ret(gfx_group_find), a2=?, a3=?.
  The `bne` branch at 0x488 is taken when v0(=ret(kern_malloc)) != 0 -> B2 and falls through when v0(=ret(kern_malloc)) == 0 -> B1.
  The `bne` branch at 0x4b0 is taken when v0(=ret(gfx_group_find)) != 0 -> B6 and falls through when v0(=ret(gfx_group_find)) == 0 -> B3.
  The return at 0x550 has v0 = ?.

- `gthread_destroy` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x568 (n64).
  It occupies 244 bytes.
  The `sd` at 0x61c stores 8 bytes from a6 to ? (base unknown).
  The `jal` at 0x5c8 calls `gfxtable_writerlock` with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x630 calls `gfxtable_writerunlock` with a0=?, a1=ret(gfxtable_writerlock), a2=?, a3=?.
  The `jal` at 0x640 calls `kern_free` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x5e0 is taken when a0(?) == 0 -> B4 and falls through when a0(?) != 0 -> B1.
  The `beq` branch at 0x5ec is taken when a6(?) == s0(=a0) -> B4 and falls through when a6(?) != s0(=a0) -> B2.
  The `beq` branch at 0x5fc is taken when a0(?) == 0 -> B6 and falls through when a0(?) != 0 -> B3.
  The `bne` branch at 0x608 is taken when a7(?) != s0(=a0) -> B2 and falls through when a7(?) == s0(=a0) -> B4.
  The `beq` branch at 0x610 is taken when a0(?) == 0 -> B6 and falls through when a0(?) != 0 -> B5.
  The `beq` branch at 0x638 is taken when s0(?) == 0 -> B9 and falls through when s0(?) != 0 -> B8.
  The return at 0x654 has v0 = ?.

- `gthread_attach_list` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x65c (n64).
  It occupies 156 bytes.
  The `sw` at 0x67c stores 4 bytes from at to a1 (arg1 at entry) +0x0 (value [a1]+1).
  The `sd` at 0x684 stores 8 bytes from s0 to a0 (arg0 at entry) +0x10.
  The `sw` at 0x6b4 stores 4 bytes from zero to ret(kern_malloc) +0x4 (value 0x0).
  The `sd` at 0x6c8 stores 8 bytes from zero to ret(kern_malloc) +0x18 (value 0x0).
  The `sw` at 0x6d0 stores 4 bytes from a4 to ret(kern_malloc) +0x0 (value 0x1).
  The `jal` at 0x698 calls `kern_malloc` with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6d4 calls `init_sv` with a0=ret(kern_malloc)+8, a1=0x0, a2=sym(.rodata), a3=-0x1, a4=0x1.
  The `jal` at 0x6e8 calls `spinlock_init` with a0=?, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x66c is taken when a1 == 0 -> B4 and falls through when a1 != 0 -> B1.
  The `bne` branch at 0x6a4 is taken when v0(=ret(kern_malloc)) != 0 -> B6 and falls through when v0(=ret(kern_malloc)) == 0 -> B5.
  The return at 0x690 has v0 = one of 0x0, 0x1.

- `gthread_detach_list` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x6f8 (n64).
  It occupies 84 bytes.
  The `sd` at 0x704 stores 8 bytes from zero to a0 (arg0 at entry) +0x10 (value 0x0).
  The `sw` at 0x718 stores 4 bytes from at to [a0+16]:8 +0x0 (value [[a0+16]:8]-1).
  The `jal` at 0x72c calls `spinlock_destroy` with a0=[a0+16]:8+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x734 calls `sv_destroy` with a0=[a0+16]:8+8, a1=?, a2=?, a3=?.
  The `jal` at 0x73c calls `kern_free` with a0=[a0+16]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x714 is taken when at(=[[a0+16]:8]-1) == 0 -> B2 and falls through when at(=[[a0+16]:8]-1) != 0 -> B1.
  The return at 0x724 has v0 = 0x1.

- `gthread_attach_group` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x74c (n64).
  It occupies 92 bytes.
  The `sw` at 0x784 stores 4 bytes from at to a1 (arg1 at entry) +0x8 (value [a1+8]+1).
  The `sd` at 0x794 stores 8 bytes from s0 to a0 (arg0 at entry) +0x18 (value a1).
  The `jal` at 0x768 calls `mutex_spinlock` with a0=a1+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x780 calls `mutex_spinunlock` with a0=a1+16, a1=ret(mutex_spinlock), a2=?, a3=?.
  The return at 0x7a0 has v0 = 0x1.

- `gthread_detach_group` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x7a8 (n64).
  It occupies 88 bytes.
  The `sd` at 0x7c4 stores 8 bytes from zero to a0 (arg0 at entry) +0x18 (value 0x0).
  The `sw` at 0x7e8 stores 4 bytes from at to [a0+24]:8 +0x8 (value [[a0+24]:8+8]-1).
  The `jal` at 0x7cc calls `mutex_spinlock` with a0=[a0+24]:8+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7e4 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x7bc is taken when s0(=[a0+24]:8) == 0 -> B2 and falls through when s0(=[a0+24]:8) != 0 -> B1.
  The return at 0x7f8 has v0 = one of 0x0, 0x1.

- `gthread_find` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x800 (n64).
  It occupies 220 bytes.
  The `jal` at 0x864 calls `gfxtable_readerlock` with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x8c0 calls `gfxtable_readerunlock` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x878 is taken when s0(?) == 0 -> B6 and falls through when s0(?) != 0 -> B1.
  The `beq` branch at 0x884 is taken when a1(?) == s1(=a0) -> B6 and falls through when a1(?) != s1(=a0) -> B2.
  The `beq` branch at 0x890 is taken when s0(?) == 0 -> B6 and falls through when s0(?) != 0 -> B3.
  The `beq` branch at 0x89c is taken when a2(?) == s1(=a0) -> B6 and falls through when a2(?) != s1(=a0) -> B4.
  The `beq` branch at 0x8a8 is taken when s0(?) == 0 -> B6 and falls through when s0(?) != 0 -> B5.
  The `bne` branch at 0x8b4 is taken when a3(?) != s1(=a0) -> B2 and falls through when a3(?) == s1(=a0) -> B6.
  The return at 0x8d4 has v0 = ?.

- `gthread_find_gfxp` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x8dc (n64).
  It occupies 56 bytes.
  The `jal` at 0x8e4 calls `gthread_find` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x8ec is taken when v0(=ret(gthread_find)) == 0 -> B4 and falls through when v0(=ret(gthread_find)) != 0 -> B1.
  The `beq` branch at 0x8f8 is taken when a2(=[ret(gthread_find)+16]:8) == 0 -> B4 and falls through when a2(=[ret(gthread_find)+16]:8) != 0 -> B2.
  The return at 0x904 has v0 = ?.

- `gthread_scan` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x914 (n64).
  It occupies 336 bytes.
  The `jalr` at 0x92c calls `(unknown callee)` with a0=0x0, a1=a1 at entry (arg1), a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x968 calls `gfxtable_readerlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9d8 calls `gfxtable_readerunlock` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x9f8 calls `(unknown callee)` with a0=0x0, a1=a1 at entry (arg1), a2=0x2, a3=a0 at entry (arg0).
  The `jalr` at 0xa10 calls `(unknown callee)` with a0=?, a1=a1 at entry (arg1), a2=0x1, a3=?, a4=a0 at entry (arg0).
  The `jal` at 0xa30 calls `gfxtable_readerunlock` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x93c is taken when v0(=ret(?)) == 0 -> B2 and falls through when v0(=ret(?)) != 0 -> B1.
  The `bne` branch at 0x978 is taken when s0(?) < 0x10 (signed) -> B3 and falls through when s0(?) >= 0x10 (signed) -> B4.
  The `beq` branch at 0x994 is taken when s0(?) == 0 -> B8 and falls through when s0(?) != 0 -> B6.
  The `beq` branch at 0x9a4 is taken when (t9(?) & 0x4) == 0 -> B13 and falls through when (t9(?) & 0x4) != 0 -> B7.
  The `bne` branch at 0x9b0 is taken when s0(?) != 0 -> B6 and falls through when s0(?) == 0 -> B8.
  The `bne` branch at 0x9c4 is taken when s1(?) < 0x10 (signed) -> B5 and falls through when s1(?) >= 0x10 (signed) -> B10.
  The `bne` branch at 0x9e8 is taken when s0(?) < 0x10 (signed) -> B11 and falls through when s0(?) >= 0x10 (signed) -> B12.
  The `beq` branch at 0xa18 is taken when v0(=ret(?)) == 0 -> B17 and falls through when v0(=ret(?)) != 0 -> B14.
  The `bne` branch at 0xa40 is taken when s0(?) < 0x10 (signed) -> B15 and falls through when s0(?) >= 0x10 (signed) -> B16.
  The `bne` branch at 0xa54 is taken when s0(?) != 0 -> B6 and falls through when s0(?) == 0 -> B18.
  The return at 0x954 has v0 = ?.

- `GfxRegisterBoard` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xa64 (n64).
  It occupies 228 bytes.
  The `sd` at 0xaac stores 8 bytes from v0 to (sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3)) +0x0 (value ret(kern_malloc)).
  The `sd` at 0xac8 stores 8 bytes from t1 to [(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8 +0x38 (value a0).
  The `sd` at 0xae0 stores 8 bytes from a0 to [(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8 +0x40 (value a1).
  The `sd` at 0xaf8 stores 8 bytes from a6 to [(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8 +0x0 (value a2).
  The `sw` at 0xb0c stores 4 bytes from a3 to [(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8 +0x18 (value [sym(GfxNumberOfBoards)]).
  The `sw` at 0xb1c stores 4 bytes from a2 to sym(GfxNumberOfBoards) +0x0 (value [sym(GfxNumberOfBoards)]+1).
  The `jal` at 0xa88 calls `kern_malloc` with a0=0x48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xaa8 calls `bzero` with a0=ret(kern_malloc), a1=0x48, a2=?, a3=?.
  The `jal` at 0xb18 calls `RRM_Init` with a0=a1 at entry (arg1), a1=?, a2=[sym(GfxNumberOfBoards)]+1, a3=[sym(GfxNumberOfBoards)], a4=[(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8, a5=([sym(GfxNumberOfBoards)] << 0x3), a6=a2 at entry (arg2), a7=[(sym(GfxBoards) + ([sym(GfxNumberOfBoards)] << 0x3))]:8.
  The `jal` at 0xb38 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa80 is taken when at(=[sym(GfxNumberOfBoards)]) >= v0(=[sym(GfxBoardLimit)]) (signed) -> B3 and falls through when at(=[sym(GfxNumberOfBoards)]) < v0(=[sym(GfxBoardLimit)]) (signed) -> B1.
  The return at 0xb28 has v0 = one of -0x1, 0x0.

- `GfxAddHwgraphEdge` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0xb48 (n64).
  It occupies 224 bytes.
  The `jal` at 0xbc0 calls `graph_info_add_LBL` with a0=[sym(hwgraph)]:8, a1=a0 at entry (arg0), a2=sym(.rodata), a3=0x0.
  The `jal` at 0xbe0 calls `sprintf` with a0=sp-32, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xbf4 calls `hwgraph_edge_add` with a0=[sym(.sdata)+24], a1=a0 at entry (arg0), a2=sp-32, a3=?.
  The `jal` at 0xc18 calls `hwgraph_path_add` with a0=[sym(hwgraph_root)], a1=sym(.rodata), a2=sym(.sdata)+24, a3=[sym(.sdata)+24], a4=-0x1.
  The `beq` branch at 0xb68 is taken when at(=[[sym(GfxBoards)]:8+64]:8) == a1 -> B4 and falls through when at(=[[sym(GfxBoards)]:8+64]:8) != a1 -> B1.
  The `beq` branch at 0xb88 is taken when v0(?) == a1 -> B4 and falls through when v0(?) != a1 -> B3.
  The `bne` branch at 0xba4 is taken when v1(?) != a1 -> B2 and falls through when v1(?) == a1 -> B4.
  The `beq` branch at 0xbd0 is taken when a3(=[sym(.sdata)+24]) == a4(=-0x1) -> B6 and falls through when a3(=[sym(.sdata)+24]) != a4(=-0x1) -> B5.
  The return at 0xc04 has v0 = ret(hwgraph_edge_add).

- `GfxKiller` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x12b0 (n64).
  It occupies 252 bytes.
  The `jal` at 0x1314 calls `GfxListReaderLock` with a0=[a0+16]:8, a1=[a0+24]:8, a2=0x0, a3=a3 at entry (arg3), a4=0x1.
  The `jal` at 0x1368 calls `GfxListReaderUnlock` with a0=[a0+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1388 calls `threadhandle_to_proc` with a0=[a0]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1394 calls `psignal` with a0=ret(threadhandle_to_proc), a1=[a1], a2=?, a3=?.
  The `beq` branch at 0x12c8 is taken when a2 == 0 -> B19 and falls through when a2 != 0 -> B1.
  The `beq` branch at 0x12d4 is taken when a2 == at(=0x2) -> B20 and falls through when a2 != at(=0x2) -> B2.
  The `bne` branch at 0x12dc is taken when a2 != a4(=0x1) -> B20 and falls through when a2 == a4(=0x1) -> B3.
  The `beq` branch at 0x12e8 is taken when a0(=[a1+16]:8) == 0 -> B22 and falls through when a0(=[a1+16]:8) != 0 -> B4.
  The `bne` branch at 0x12f0 is taken when a0(=[a1+16]:8) != s0(=a0) -> B6 and falls through when a0(=[a1+16]:8) == s0(=a0) -> B5.
  The `beq` branch at 0x12fc is taken when v0(=[[a1+16]:8+24]:8) == a1(=[a0+24]:8) -> B20 and falls through when v0(=[[a1+16]:8+24]:8) != a1(=[a0+24]:8) -> B6.
  The `beq` branch at 0x1304 is taken when a1(=[a0+24]:8) == 0 -> B9 and falls through when a1(=[a0+24]:8) != 0 -> B7.
  The `beq` branch at 0x130c is taken when a0(=[a0+16]:8) == 0 -> B11 and falls through when a0(=[a0+16]:8) != 0 -> B8.
  The `beq` branch at 0x1320 is taken when a0(=[a0+16]:8) == 0 -> B11 and falls through when a0(=[a0+16]:8) != 0 -> B10.
  The `beq` branch at 0x132c is taken when a2(?) == 0 -> B15 and falls through when a2(?) != 0 -> B12.
  The `beq` branch at 0x133c is taken when v1(?) == a0(=[a1+8]:8) -> B21 and falls through when v1(?) != a0(=[a1+8]:8) -> B14.
  The `bne` branch at 0x1348 is taken when a2(?) != 0 -> B13 and falls through when a2(?) == 0 -> B15.
  The `beq` branch at 0x1354 is taken when a0(=[a0+24]:8) == 0 -> B20 and falls through when a0(=[a0+24]:8) != 0 -> B17.
  The `beq` branch at 0x1360 is taken when a0(=[a0+16]:8) == 0 -> B20 and falls through when a0(=[a0+16]:8) != 0 -> B18.
  The return at 0x1380 has v0 = 0x0.

- `gfxcleanup` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x13ac (n64).
  It occupies 52 bytes.
  The `jal` at 0x13c8 calls `spinlock_destroy` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x13d0 calls `kern_free` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x13b8 is taken when at(=[a0+56]) == 0 -> B2 and falls through when at(=[a0+56]) != 0 -> B1.
  The return at 0x13c0 has v0 = ?.

- `GfxOpen` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x13e0 (n64).
  It occupies 364 bytes.
  The `sd` at 0x14dc stores 8 bytes from s0 to ? (base unknown).
  The `sd` at 0x14ec stores 8 bytes from s0 to ? (base unknown).
  The `sd` at 0x14f8 stores 8 bytes from a2 to ? (base unknown) (value a0).
  The `sd` at 0x1504 stores 8 bytes from a3 to ? (base unknown) (value a0+144).
  The `sd` at 0x1508 stores 8 bytes from s0 to a0 (arg0 at entry) +0xb8.
  The `sd` at 0x150c stores 8 bytes from s0 to a0 (arg0 at entry) +0x28.
  The `sw` at 0x151c stores 4 bytes from a1 to ? (base unknown).
  The `sw` at 0x1548 stores 4 bytes from v0 to a1 (arg1 at entry) +0x0 (value ret(makedevice)).
  The `jal` at 0x140c calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x13.
  The `jal` at 0x1418 calls `gthread_find_gfxp` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x1464 calls `curthreadhandle` with a0=0x9, a1=?, a2=?, a3=?, a5=0x13.
  The `jal` at 0x146c calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x147c calls `gthread_scan` with a0=sym(GfxKiller), a1=sp-64, a2=?, a3=?.
  The `jal` at 0x1484 calls `streams_unlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x149c calls `delay` with a0=0x64, a1=?, a2=?, a3=?.
  The `jal` at 0x14b4 calls `streams_lock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x14e8 calls `RRM_init_panes` with a0=?, a1=?, a2=?, a3=?, a5=0x1.
  The `jal` at 0x1520 calls `getemajor` with a0=[a1], a1=?, a2=a0 at entry (arg0), a3=a0+144.
  The `jal` at 0x1530 calls `makedevice` with a0=ret(getemajor), a1=?, a2=?, a3=?.
  The `beq` branch at 0x13f4 is taken when a3 == at(=0x2) -> B2 and falls through when a3 != at(=0x2) -> B1.
  The `beq` branch at 0x1424 is taken when v0(=ret(gthread_find_gfxp)) == 0 -> B11 and falls through when v0(=ret(gthread_find_gfxp)) != 0 -> B3.
  The `beq` branch at 0x1430 is taken when v0(=[ret(gthread_find_gfxp)+24]:8) == 0 -> B5 and falls through when v0(=[ret(gthread_find_gfxp)+24]:8) != 0 -> B4.
  The `bne` branch at 0x1440 is taken when v0(?) != 0 -> B4 and falls through when v0(?) == 0 -> B5.
  The `bne` branch at 0x144c is taken when v0(?) != 0 -> B7 and falls through when v0(?) == 0 -> B6.
  The `beq` branch at 0x1494 is taken when a1(?) == 0 -> B9 and falls through when a1(?) != 0 -> B8.
  The `bne` branch at 0x14ac is taken when a2(?) != 0 -> B8 and falls through when a2(?) == 0 -> B9.
  The `beq` branch at 0x14c4 is taken when a3(?) == 0 -> B12 and falls through when a3(?) != 0 -> B10.
  The return at 0x1404 has v0 = one of 0x0, 0x1, 0x13.

- `GfxUnmanage` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x154c (n64).
  It occupies 388 bytes.
  The `sd` at 0x1574 stores 8 bytes from zero to [a0+8]:8 +0x8 (value 0x0).
  The `sd` at 0x157c stores 8 bytes from zero to [a0+40]:8 +0x0 (value 0x0).
  The `sd` at 0x1584 stores 8 bytes from zero to [a0+8]:8 +0x20 (value 0x0).
  The `sd` at 0x158c stores 8 bytes from zero to [a0+8]:8 +0x28 (value 0x0).
  The `sd` at 0x15fc stores 8 bytes from zero to [a0+40]:8 +0x48 (value 0x0).
  The `sd` at 0x1634 stores 8 bytes from s0 to [a0+40]:8 +0x48 (value a0).
  The `sd` at 0x1688 stores 8 bytes from zero to [a0+40]:8 +0x48 (value 0x0).
  The `jal` at 0x159c calls `curthreadhandle` with a0=?, a1=?, a2=[a0+40]:8, a3=0x9.
  The `jal` at 0x15a4 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x15b4 calls `gthread_scan` with a0=sym(GfxKiller), a1=sp-64, a2=?, a3=?.
  The `jal` at 0x15d8 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x15f0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=?, a2=?, a3=[[a0+32]:8+192]:8.
  The `jal` at 0x1604 calls `vsema` with a0=[a0+40]:8+56, a1=[a0+40]:8, a2=?, a3=?.
  The `jal` at 0x160c calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1628 calls `psema` with a0=[a0+40]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1648 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x1670 calls `cn_init` with a0=0x0, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1690 calls `vsema` with a0=[a0+40]:8+56, a1=?, a2=?, a3=?, a5=[[a0+40]:8+72]:8.
  The `jal` at 0x1698 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x16a8 calls `splhi` with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x16c0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=?, a2=?, a3=[[a0+32]:8+192]:8.
  The `bne` branch at 0x1560 is taken when at(=[[a0+40]:8+72]:8) != a0 -> B10 and falls through when at(=[[a0+40]:8+72]:8) == a0 -> B1.
  The `beq` branch at 0x156c is taken when v0(=[a0+8]:8) == 0 -> B4 and falls through when v0(=[a0+8]:8) != 0 -> B3.
  The `beq` branch at 0x15c8 is taken when v1(=[[a0+8]:8+24]) == 0 -> B13 and falls through when v1(=[[a0+8]:8+24]) != 0 -> B5.
  The `bne` branch at 0x15d0 is taken when v0(=[[a0+40]:8+72]:8) != s0(=a0) -> B9 and falls through when v0(=[[a0+40]:8+72]:8) == s0(=a0) -> B6.
  The `beq` branch at 0x15e8 is taken when a3(=[[a0+32]:8+192]:8) == 0 -> B8 and falls through when a3(=[[a0+32]:8+192]:8) != 0 -> B7.
  The `beq` branch at 0x1640 is taken when a2(=[[a0+40]:8+104]) == 0 -> B1 and falls through when a2(=[[a0+40]:8+104]) != 0 -> B11.
  The `bne` branch at 0x1658 is taken when a4(=[[a0+40]:8+104]) != 0 -> B11 and falls through when a4(=[[a0+40]:8+104]) == 0 -> B12.
  The `beq` branch at 0x1668 is taken when v0(=[[a0+40]:8+72]:8) == s0(=a0) -> B16 and falls through when v0(=[[a0+40]:8+72]:8) != s0(=a0) -> B14.
  The `bne` branch at 0x1680 is taken when a5(=[[a0+40]:8+72]:8) != s0(=a0) -> B9 and falls through when a5(=[[a0+40]:8+72]:8) == s0(=a0) -> B15.
  The `beq` branch at 0x16b8 is taken when a3(=[[a0+32]:8+192]:8) == 0 -> outside and falls through when a3(=[[a0+32]:8+192]:8) != 0 -> B17.
  The return at 0x161c has v0 = ?.

- `GfxClose` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x16d0 (n64).
  It occupies 108 bytes.
  The `sw` at 0x170c stores 4 bytes from v1 to [a0+40]:8 +0x38.
  The `jal` at 0x1710 calls `gfxcleanup` with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x172c calls `GfxUnmanage` with a0=[a0+40]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x16e0 is taken when at(=[[a0+40]:8+40]:8) != 0 -> B3 and falls through when at(=[[a0+40]:8+40]:8) == 0 -> B1.
  The `beq` branch at 0x16ec is taken when a0(=[[a0+40]:8+8]:8) == 0 -> B3 and falls through when a0(=[[a0+40]:8+8]:8) != 0 -> B2.
  The `beq` branch at 0x16f8 is taken when v0(=[[[a0+40]:8+8]:8+8]:8) == s0(=[a0+40]:8) -> B5 and falls through when v0(=[[[a0+40]:8+8]:8+8]:8) != s0(=[a0+40]:8) -> B3.
  The return at 0x1724 has v0 = 0x0.

- `GfxProto` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x173c (n64).
  It occupies 260 bytes.
  The `sh` at 0x178c stores 2 bytes from a1 to [[a0+40]:8+8]:8 +0x30 (value [[a1+24]:8+4]:2).
  The `sh` at 0x17a4 stores 2 bytes from v1 to [[a0+40]:8+8]:8 +0x32 (value [[a1+24]:8+6]:2).
  The `sw` at 0x17a8 stores 4 bytes from v0 to [a1+24]:8 +0x0 (value 0x514d4853).
  The `sb` at 0x17f8 stores 1 bytes from a4 to [a1+40]:8 +0x1e (value 0x8a).
  The `jal` at 0x17ac calls `qreply` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[a0+40]:8+8]:8, a3=a3 at entry (arg3), a5=[a1+24]:8, a6=0x53484951, a7=0x53484d51.
  The `jalr` at 0x17d4 calls `(unknown callee)` with a0=[[a0+40]:8+40]:8, a1=[[a1+24]:8+4], a2=[[a1+24]:8+8], a3=[[[a0+40]:8+32]:8+48]:8, a5=[a1+24]:8, a6=[[a0+40]:8+32]:8, a7=0x53484d51.
  The `jal` at 0x17f4 calls `qreply` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=0x8a, a5=[a1+40]:8.
  The `jal` at 0x1814 calls `freemsg` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1828 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=[[a1+24]:8], a3=a3 at entry (arg3), a5=[a1+24]:8, a6=0x53484951, a7=0x53484d51.
  The `jal` at 0x1830 calls `freemsg` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x176c is taken when a2(=[[a1+24]:8]) == at(=0x66) -> B4 and falls through when a2(=[[a1+24]:8]) != at(=0x66) -> B1.
  The `beq` branch at 0x1774 is taken when a2(=[[a1+24]:8]) == a6(=0x53484951) -> B4 and falls through when a2(=[[a1+24]:8]) != a6(=0x53484951) -> B2.
  The `bne` branch at 0x177c is taken when a2(=[[a1+24]:8]) != a7(=0x53484d51) -> B9 and falls through when a2(=[[a1+24]:8]) == a7(=0x53484d51) -> B3.
  The `beq` branch at 0x17c0 is taken when a6(=[[a0+40]:8+32]:8) == 0 -> B8 and falls through when a6(=[[a0+40]:8+32]:8) != 0 -> B5.
  The `beq` branch at 0x17dc is taken when v0(=ret(?)) == 0 -> B8 and falls through when v0(=ret(?)) != 0 -> B6.
  The return at 0x180c has v0 = 0x0.

- `GfxWput` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1840 (n64).
  It occupies 156 bytes.
  The `jal` at 0x188c calls `flushq` with a0=a0 at entry (arg0), a1=0x0, a2=[[a1+40]:8+30]:1, a3=?, a5=0x86.
  The `jal` at 0x1894 calls `freemsg` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x18b4 calls `GfxProto` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[a1+40]:8+30]:1, a3=a3 at entry (arg3), a5=0x86.
  The `jal` at 0x18cc calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=[[a1+40]:8+30]:1, a3=a3 at entry (arg3), a5=0x86.
  The `beq` branch at 0x1860 is taken when a2(=[[a1+40]:8+30]:1) == at(=0x1) -> B7 and falls through when a2(=[[a1+40]:8+30]:1) != at(=0x1) -> B1.
  The `beq` branch at 0x1868 is taken when a2(=[[a1+40]:8+30]:1) == v0(=0x83) -> B7 and falls through when a2(=[[a1+40]:8+30]:1) != v0(=0x83) -> B2.
  The `bne` branch at 0x1870 is taken when a2(=[[a1+40]:8+30]:1) != a5(=0x86) -> B8 and falls through when a2(=[[a1+40]:8+30]:1) == a5(=0x86) -> B3.
  The `beq` branch at 0x1884 is taken when (a3(=[[a1+24]:8]:1) & 0x2) == 0 -> B5 and falls through when (a3(=[[a1+24]:8]:1) & 0x2) != 0 -> B4.
  The return at 0x18ac has v0 = ?.

- `sendMsg` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x18dc (n64).
  It occupies 256 bytes.
  The `sd` at 0x192c stores 8 bytes from a3 to a0 (arg0 at entry) +0x20.
  The `sh` at 0x1950 stores 2 bytes from a5 to [a0+32]:8 +0x2 (value [[a1]:8+50]:2).
  The `sb` at 0x1958 stores 1 bytes from a4 to [a0+32]:8 +0x5 (value [a1+12]).
  The `sh` at 0x1988 stores 2 bytes from t1 to ? (base unknown) (value [[a1]:8+48]:2).
  The `sb` at 0x1994 stores 1 bytes from t0 to ? (base unknown) (value [[a1]:8+50]:2).
  The `sb` at 0x19a4 stores 1 bytes from t0 to ? (base unknown) (value [a1+8]:1).
  The `sw` at 0x19b0 stores 4 bytes from a6 to ? (base unknown).
  The `jal` at 0x1940 calls `bzero` with a0=[a0+32]:8, a1=?, a2=[a1+12], a3=?, a4=[a1+12].
  The `jal` at 0x19bc calls `putq` with a0=[[a1]:8+32]:8, a1=a0 at entry (arg0), a2=?, a3=?, a4=-0x1, a5=[[a1]:8+50]:2.
  The `beq` branch at 0x18fc is taken when a3(=[[a1]:8+8]:8) == 0 -> B5 and falls through when a3(=[[a1]:8+8]:8) != 0 -> B1.
  The `beq` branch at 0x190c is taken when (a4(=[[[a1]:8+8]:8+56]) & 0x1) == 0 -> B6 and falls through when (a4(=[[[a1]:8+8]:8+56]) & 0x1) != 0 -> B2.
  The `beq` branch at 0x1968 is taken when a3(=[a1+12]-1) == a4(=-0x1) -> B4 and falls through when a3(=[a1+12]-1) != a4(=-0x1) -> B3.
  The `bne` branch at 0x19ac is taken when a3(?) != a4(=-0x1) -> B3 and falls through when a3(?) == a4(=-0x1) -> B4.
  The return at 0x19d4 has v0 = ?.

- `GfxDelayedMessage` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x19dc (n64).
  It occupies 160 bytes.
  The `jal` at 0x19fc calls `allocb` with a0=?, a1=0x3, a2=[a0+12], a3=a3 at entry (arg3).
  The `jal` at 0x1a24 calls `bufcall` with a0=?, a1=0x3, a2=sym(GfxDelayedMessage), a3=a0 at entry (arg0).
  The `jal` at 0x1a3c calls `sendMsg` with a0=ret(allocb), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1a44 calls `wakeup` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1a4c calls `kern_free` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1a6c calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x1a04 is taken when v0(=ret(allocb)) != 0 -> B3 and falls through when v0(=ret(allocb)) == 0 -> B1.
  The `beq` branch at 0x1a2c is taken when v0(=ret(bufcall)) == 0 -> B6 and falls through when v0(=ret(bufcall)) != 0 -> B2.
  The return at 0x1a60 has v0 = one of 0x0, 0x1.

- `GfxSendMessage` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1a7c (n64).
  It occupies 348 bytes.
  The `jal` at 0x1ab8 calls `allocb` with a0=?, a1=0x3, a2=?, a3=?.
  The `jal` at 0x1adc calls `kern_malloc` with a0=([a0+12] << 0x2)+52, a1=?, a2=?, a3=?.
  The `jal` at 0x1af4 calls `bcopy` with a0=a0 at entry (arg0), a1=ret(kern_malloc), a2=?, a3=?.
  The `jal` at 0x1b14 calls `bufcall` with a0=?, a1=0x3, a2=sym(GfxDelayedMessage), a3=ret(kern_malloc).
  The `jal` at 0x1b38 calls `sleep` with a0=?, a1=0x19, a2=?, a3=?.
  The `jal` at 0x1b5c calls `sendMsg` with a0=ret(allocb), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1b84 calls `streams_unlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b94 calls `streams_lock` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1bac calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1bc0 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1bc8 calls `kern_free` with a0=ret(kern_malloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1a98 is taken when a0 == 0 -> B16 and falls through when a0 != 0 -> B1.
  The `beq` branch at 0x1aa0 is taken when a1 == 0 -> B19 and falls through when a1 != 0 -> B2.
  The `bne` branch at 0x1ac0 is taken when v0(=ret(allocb)) != 0 -> B14 and falls through when v0(=ret(allocb)) == 0 -> B4.
  The `bne` branch at 0x1ac8 is taken when s1(=a1) != 0 -> B20 and falls through when s1(=a1) == 0 -> B5.
  The `beq` branch at 0x1ae4 is taken when v0(=ret(kern_malloc)) == 0 -> B20 and falls through when v0(=ret(kern_malloc)) != 0 -> B6.
  The `beq` branch at 0x1b1c is taken when v0(=ret(bufcall)) == 0 -> B21 and falls through when v0(=ret(bufcall)) != 0 -> B7.
  The `beq` branch at 0x1b28 is taken when s1(=a1) == 0 -> B18 and falls through when s1(=a1) != 0 -> B9.
  The `beq` branch at 0x1b30 is taken when s2(?) == 0 -> B11 and falls through when s2(?) != 0 -> B10.
  The `beq` branch at 0x1b64 is taken when s1(=a1) == 0 -> B17 and falls through when s1(=a1) != 0 -> B15.
  The return at 0x1b54 has v0 = one of 0x0, 0x1.

- `GfxMessage` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1bd8 (n64).
  It occupies 28 bytes.
  The `jal` at 0x1be0 calls `GfxSendMessage` with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1bec has v0 = ret(GfxSendMessage).

- `GfxIntrMessage` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1bf4 (n64).
  It occupies 28 bytes.
  The `jal` at 0x1bfc calls `GfxSendMessage` with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1c08 has v0 = ret(GfxSendMessage).

- `GfxRqService` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1c10 (n64).
  It occupies 124 bytes.
  The `jal` at 0x1c20 calls `getq` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1c30 calls `canput` with a0=[a0+24]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x1c4c calls `(unknown callee)` with a0=[a0+24]:8, a1=ret(getq), a2=?, a3=?.
  The `jal` at 0x1c54 calls `getq` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1c7c calls `putbq` with a0=a0 at entry (arg0), a1=ret(getq), a2=?, a3=?.
  The `beq` branch at 0x1c28 is taken when v0(=ret(getq)) == 0 -> B3 and falls through when v0(=ret(getq)) != 0 -> B1.
  The `beq` branch at 0x1c38 is taken when v0(=ret(canput)) == 0 -> B5 and falls through when v0(=ret(canput)) != 0 -> B2.
  The `bne` branch at 0x1c5c is taken when v0(=ret(getq)) != 0 -> B1 and falls through when v0(=ret(getq)) == 0 -> B3.
  The return at 0x1c74 has v0 = one of 0x0, 0x1.

- `GfxDetach` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1c8c (n64).
  It occupies 244 bytes.
  The `sw` at 0x1d08 stores 4 bytes from zero to [[a0+8]:8]:8 +0x1c (value 0x0).
  The `sw` at 0x1d0c stores 4 bytes from zero to [[a0+8]:8]:8 +0x18 (value 0x0).
  The `sw` at 0x1d10 stores 4 bytes from zero to [[a0+8]:8]:8 +0x14 (value 0x0).
  The `sw` at 0x1d14 stores 4 bytes from zero to [[a0+8]:8]:8 +0x10 (value 0x0).
  The `sd` at 0x1d1c stores 8 bytes from zero to [a0+8]:8 +0x10 (value 0x0).
  The `sd` at 0x1d28 stores 8 bytes from zero to a0 (arg0 at entry) +0x20 (value 0x0).
  The `sd` at 0x1d2c stores 8 bytes from zero to a0 (arg0 at entry) +0x8 (value 0x0).
  The `sd` at 0x1d34 stores 8 bytes from zero to a0 (arg0 at entry) +0x28 (value 0x0).
  The `sd` at 0x1d7c stores 8 bytes from zero to a0 (arg0 at entry) +0x30 (value 0x0).
  The `jal` at 0x1cb0 calls `gfxdd_lookup` with a0=[a0+48]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1cc0 calls `RRM_Exit` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1cd4 calls `streams_lock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1cec calls `streams_unlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d20 calls `streams_lock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d30 calls `streams_unlock` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1d50 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[[a0+32]:8+16]:8.
  The `jal` at 0x1d60 calls `GfxUnmanage` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1d70 calls `ddv_destroy_handle` with a0=[a0+48]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1c9c is taken when at(=[a0+32]:8) == 0 -> B7 and falls through when at(=[a0+32]:8) != 0 -> B1.
  The `beq` branch at 0x1ca8 is taken when a0(=[a0+48]:8) == 0 -> B3 and falls through when a0(=[a0+48]:8) != 0 -> B2.
  The `beq` branch at 0x1cb8 is taken when v0(=ret(gfxdd_lookup)) == 0 -> B10 and falls through when v0(=ret(gfxdd_lookup)) != 0 -> B3.
  The `bne` branch at 0x1ccc is taken when v0(=[a0+48]:8) != 0 -> B8 and falls through when v0(=[a0+48]:8) == 0 -> B4.
  The `beq` branch at 0x1ce4 is taken when v1(=[[a0+8]:8+8]:8) == s0(=a0) -> B9 and falls through when v1(=[[a0+8]:8+8]:8) != s0(=a0) -> B5.
  The `bne` branch at 0x1cfc is taken when a1(=[[a0+8]:8+16]:8) != s0(=a0) -> B7 and falls through when a1(=[[a0+8]:8+16]:8) == s0(=a0) -> B6.
  The return at 0x1d40 has v0 = ret(streams_unlock).

- `gfxinit` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1d80 (n64).
  It occupies 196 bytes.
  The `sd` at 0x1e04 stores 8 bytes from v0 to sym(gfxinfo) +0x0 (value ret(kern_calloc)).
  The `sw` at 0x1e40 stores 4 bytes from a2 to sym(GfxDevLimit) +0x0 (value 0x20000).
  The `jal` at 0x1da8 calls `init_sema` with a0=sym(GfxBoardInitSema), a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x1dc4 calls `init_sema` with a0=sym(GfxBoardInitSema), a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x1dcc calls `processors_configured` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1dd4 calls `init_gfx_group_table` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ddc calls `init_gthread_table` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1de8 calls `kern_calloc` with a0=ret(processors_configured), a1=0x20, a2=?, a3=?.
  The `jal` at 0x1e08 calls `ksym_add` with a0=sym(.rodata), a1=ret(kern_calloc), a2=0x20, a3=ret(processors_configured), a4=0x20.
  The `jal` at 0x1e30 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=[sym(GfxDevLimit)], a3=0x20000, a4=0x20000.
  The `bne` branch at 0x1d90 is taken when at(=0x20000) < a2(=[sym(GfxDevLimit)]) (signed) -> B2 and falls through when at(=0x20000) >= a2(=[sym(GfxDevLimit)]) (signed) -> B1.
  The return at 0x1e18 has v0 = ret(ksym_add).

- `irisgl_sproc_setup_scan` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1f28 (n64).
  It occupies 144 bytes.
  The `sw` at 0x1f80 stores 4 bytes from a0 to ret(gthread_create) +0x8 (value ([ret(gthread_create)+8] | 0x2)).
  The `jal` at 0x1f60 calls `gthread_create` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1f84 calls `GfxListWriterLock` with a0=[a1+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1f94 calls `gthread_attach_list` with a0=?, a1=[a1+16]:8, a2=?, a3=?.
  The `jal` at 0x1fa0 calls `GfxListWriterUnlock` with a0=[a1+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1fa8 calls `setgfxsched_thread` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x1f44 is taken when at(=[a1]:8) != a0 -> B2 and falls through when at(=[a1]:8) == a0 -> B1.
  The `bne` branch at 0x1f68 is taken when v0(=ret(gthread_create)) != 0 -> B4 and falls through when v0(=ret(gthread_create)) == 0 -> B3.
  The return at 0x1f58 has v0 = 0x0.

- `gfxopen` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x1fb8 (n64).
  It occupies 1200 bytes.
  The `sd` at 0x20b0 stores 8 bytes from zero to [ret(gthread_find)+16]:8 +0x18 (value 0x0).
  The `sd` at 0x2178 stores 8 bytes from s2 to ? (base unknown) (value ret(kern_malloc)).
  The `sd` at 0x2180 stores 8 bytes from s4 to ret(kern_malloc) +0x10 (value ret(curthreadhandle)).
  The `sd` at 0x2188 stores 8 bytes from zero to ret(kern_malloc) +0x20 (value 0x0).
  The `sd` at 0x2198 stores 8 bytes from zero to ret(kern_malloc) +0x28 (value 0x0).
  The `sd` at 0x219c stores 8 bytes from a3 to ret(kern_malloc) +0x60.
  The `sd` at 0x21e0 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0x2204 stores 8 bytes from a5 to ? (base unknown).
  The `sd` at 0x2230 stores 8 bytes from s2 to ? (base unknown) (value ret(kern_malloc)).
  The `sd` at 0x227c stores 8 bytes from s2 to ? (base unknown) (value ret(kern_malloc)).
  The `sw` at 0x22a8 stores 4 bytes from a3 to ret(kern_malloc) +0x38 (value ([ret(kern_malloc)+56] | 0x2)).
  The `sw` at 0x22c0 stores 4 bytes from a1 to a0 (arg0 at entry) +0x0.
  The `sw` at 0x23b4 stores 4 bytes from a6 to ret(kern_malloc) +0x4 (value ([ret(kern_malloc)+4] | 0x8)).
  The `sw` at 0x23d0 stores 4 bytes from a4 to a0 (arg0 at entry) +0x0.
  The `sd` at 0x23e8 stores 8 bytes from s2 to ? (base unknown) (value ret(kern_malloc)).
  The `sw` at 0x23f0 stores 4 bytes from a7 to ret(gfx_group_find) +0xc (value 0x1).
  The `jal` at 0x1fcc calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1fe0 calls `psema` with a0=sym(GfxBoardInitSema), a1=0x19, a2=?, a3=?.
  The `jal` at 0x2084 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?, a4=[sym(GfxDevLimit)].
  The `jal` at 0x20b4 calls `gthread_detach_list` with a0=ret(gthread_find), a1=?, a2=?, a3=?.
  The `jal` at 0x20bc calls `gthread_detach_group` with a0=ret(gthread_find), a1=?, a2=?, a3=?.
  The `jal` at 0x20c4 calls `gthread_destroy` with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x20cc calls `gthread_create` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x20dc calls `gfx_group_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x20e8 calls `gthread_find_gfxp` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2148 calls `kern_malloc` with a0=0x100, a1=?, a2=?, a3=?.
  The `jal` at 0x2158 calls `kern_malloc` with a0=0x100, a1=?, a2=?, a3=?.
  The `jal` at 0x2174 calls `bzero` with a0=ret(kern_malloc), a1=0x100, a2=?, a3=?.
  The `jal` at 0x21a0 calls `init_spinlock` with a0=ret(kern_malloc), a1=sym(.rodata), a2=-0x1, a3=?.
  The `jal` at 0x21bc calls `init_sema` with a0=ret(kern_malloc)+80, a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x2224 calls `gthread_attach_list` with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2234 calls `setgfxsched_thread` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2294 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x22f4 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x2308 calls `cmn_err_tag` with a0=0x84e, a1=0x4, a2=sym(.rodata), a3=?.
  The `jal` at 0x2318 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x2338 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x2368 calls `gthread_scan` with a0=sym(gfx_conflict_scan), a1=sp-144, a2=?, a3=?, a4=one of 0x1, 0x2, a5=0x1.
  The `jal` at 0x2380 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?, a6=0x3.
  The `jal` at 0x2394 calls `cmn_err_tag` with a0=0x84f, a1=0x4, a2=sym(.rodata), a3=?.
  The `jal` at 0x23d4 calls `gthread_attach_list` with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x23dc calls `GfxListWriterLock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x23f8 calls `GfxListWriterUnlock` with a0=?, a1=ret(GfxListWriterLock), a2=?, a3=?, a7=0x1.
  The `jal` at 0x2418 calls `curthreadgroup_scan` with a0=sym(irisgl_sproc_setup_scan), a1=sp-128, a2=?, a3=?.
  The `jal` at 0x2428 calls `GfxListWriterUnlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2438 calls `GfxListWriterLock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2448 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?, a4=[sym(GfxDevLimit)].
  The `jal` at 0x2458 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x2010 is taken when v0(?) >= 0x2 (signed) -> B46 and falls through when v0(?) < 0x2 (signed) -> B1.
  The `blez` branch at 0x201c is taken when a4(=[sym(GfxDevLimit)]) <= 0 (signed) -> B54 and falls through when a4(=[sym(GfxDevLimit)]) > 0 (signed) -> B2.
  The `beq` branch at 0x2034 is taken when a1(?) == 0 -> B8 and falls through when a1(?) != 0 -> B4.
  The `beq` branch at 0x2048 is taken when s0(?) >= a4(=[sym(GfxDevLimit)]) (signed) -> B7 and falls through when s0(?) < a4(=[sym(GfxDevLimit)]) (signed) -> B5.
  The `beq` branch at 0x2054 is taken when a6(?) == 0 -> B8 and falls through when a6(?) != 0 -> B6.
  The `bne` branch at 0x2068 is taken when s0(?) < a4(=[sym(GfxDevLimit)]) (signed) -> B3 and falls through when s0(?) >= a4(=[sym(GfxDevLimit)]) (signed) -> B7.
  The `beq` branch at 0x2074 is taken when t0(?) == 0 -> B54 and falls through when t0(?) != 0 -> B9.
  The `beq` branch at 0x208c is taken when v0(=ret(gthread_find)) == 0 -> B14 and falls through when v0(=ret(gthread_find)) != 0 -> B10.
  The `beq` branch at 0x209c is taken when (t8(=[ret(gthread_find)+8]) & 0x4) == 0 -> B44 and falls through when (t8(=[ret(gthread_find)+8]) & 0x4) != 0 -> B11.
  The `beq` branch at 0x20a8 is taken when v0(=[ret(gthread_find)+16]:8) == 0 -> B13 and falls through when v0(=[ret(gthread_find)+16]:8) != 0 -> B12.
  The `beq` branch at 0x20d4 is taken when v0(=ret(gthread_create)) == 0 -> B43 and falls through when v0(=ret(gthread_create)) != 0 -> B15.
  The `beq` branch at 0x20f4 is taken when v0(=ret(gthread_find_gfxp)) == 0 -> B19 and falls through when v0(=ret(gthread_find_gfxp)) != 0 -> B16.
  The `bne` branch at 0x2114 is taken when t9(?) != 0 -> B42 and falls through when t9(?) == 0 -> B18.
  The `bne` branch at 0x2120 is taken when a3(?) != 0 -> B17 and falls through when a3(?) == 0 -> B19.
  The `beq` branch at 0x2128 is taken when s3(?) == 0 -> B49 and falls through when s3(?) != 0 -> B20.
  The `bne` branch at 0x2138 is taken when ra(?) != 0 -> B47 and falls through when ra(?) == 0 -> B21.
  The `bne` branch at 0x2140 is taken when s8(=ret(gthread_find_gfxp)) != 0 -> B23 and falls through when s8(=ret(gthread_find_gfxp)) == 0 -> B22.
  The `bne` branch at 0x21a8 is taken when s5(?) != 0 -> B50 and falls through when s5(?) == 0 -> B25.
  The `bne` branch at 0x21dc is taken when a3(?) < 0x8 (signed) -> B26 and falls through when a3(?) >= 0x8 (signed) -> B27.
  The `bne` branch at 0x2200 is taken when s8(=ret(gthread_find_gfxp)) != 0 -> B33 and falls through when s8(=ret(gthread_find_gfxp)) == 0 -> B28.
  The `beq` branch at 0x2208 is taken when s7(=ret(gfx_group_find)) == 0 -> B31 and falls through when s7(=ret(gfx_group_find)) != 0 -> B29.
  The `beq` branch at 0x2218 is taken when (a7(=[ret(kern_malloc)+4]) & 0x8) == 0 -> B51 and falls through when (a7(=[ret(kern_malloc)+4]) & 0x8) != 0 -> B30.
  The `beq` branch at 0x2244 is taken when s7(=ret(gfx_group_find)) == 0 -> B35 and falls through when s7(=ret(gfx_group_find)) != 0 -> B34.
  The `beq` branch at 0x2254 is taken when (t1(=[ret(kern_malloc)+4]) & 0x8) == 0 -> B53 and falls through when (t1(=[ret(kern_malloc)+4]) & 0x8) != 0 -> B35.
  The `beq` branch at 0x2260 is taken when a3(=[ret(gthread_find_gfxp)+24]:8) == 0 -> B37 and falls through when a3(=[ret(gthread_find_gfxp)+24]:8) != 0 -> B36.
  The `bne` branch at 0x2270 is taken when a3(?) != 0 -> B36 and falls through when a3(?) == 0 -> B37.
  The `beq` branch at 0x2278 is taken when s7(=ret(gfx_group_find)) == 0 -> B39 and falls through when s7(=ret(gfx_group_find)) != 0 -> B38.
  The `beq` branch at 0x2288 is taken when (t2(=[ret(kern_malloc)+4]) & 0x8) == 0 -> B52 and falls through when (t2(=[ret(kern_malloc)+4]) & 0x8) != 0 -> B39.
  The `bne` branch at 0x2328 is taken when v0(=ret(gthread_find)) != 0 -> B15 and falls through when v0(=ret(gthread_find)) == 0 -> B45.
  The `bne` branch at 0x2378 is taken when a5(?) != a6(=0x3) -> B21 and falls through when a5(?) == a6(=0x3) -> B48.
  The return at 0x22ec has v0 = one of 0x0, 0x6, 0xc, 0x13.

- `irisgl_sproc_cleanup` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2468 (n64).
  It occupies 104 bytes.
  The `sw` at 0x24bc stores 4 bytes from v1 to a0 (arg0 at entry) +0x8.
  The `jal` at 0x2494 calls `cleargfxsched_thread` with a0=[a0]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x249c calls `gthread_detach_list` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x24a4 calls `gthread_detach_group` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2474 is taken when a2 == at(=0x1) -> B2 and falls through when a2 != at(=0x1) -> B1.
  The `bne` branch at 0x248c is taken when v0(=[a0+24]:8) != a1 -> B4 and falls through when v0(=[a0+24]:8) == a1 -> B3.
  The return at 0x24c8 has v0 = 0x0.

- `gfxclose` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x24d0 (n64).
  It occupies 1420 bytes.
  The `sd` at 0x263c stores 8 bytes from a2 to ? (base unknown) (value [entry(sym(GfxDev))+24]:8).
  The `sd` at 0x26dc stores 8 bytes from zero to [ret(gthread_find)+16]:8 +0x18 (value 0x0).
  The `sw` at 0x2724 stores 4 bytes from t0 to entry(sym(GfxDev)) +0x38.
  The `sd` at 0x2738 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0x27ac stores 8 bytes from a1 to ? (base unknown) (value [entry(sym(GfxDev))+24]:8).
  The `sd` at 0x2824 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0x2828 stores 8 bytes from zero to entry(sym(GfxDev)) +0x18 (value 0x0).
  The `sd` at 0x2830 stores 8 bytes from s6 to entry(sym(GfxDev)) +0x10 (value ret(curthreadhandle)).
  The `sd` at 0x284c stores 8 bytes from s0 to [ret(gthread_create)+16]:8 +0x18 (value entry(sym(GfxDev))).
  The `sw` at 0x288c stores 4 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0x2938 stores 8 bytes from s6 to entry(sym(GfxDev)) +0x10 (value ret(curthreadhandle)).
  The `sd` at 0x2940 stores 8 bytes from a5 to entry(sym(GfxDev)) +0x18.
  The `sd` at 0x2948 stores 8 bytes from s0 to ? (base unknown) (value entry(sym(GfxDev))).
  The `sd` at 0x2998 stores 8 bytes from a2 to ? (base unknown).
  The `jal` at 0x24ec calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2518 calls `psema` with a0=sym(GfxBoardInitSema), a1=0x19, a2=?, a3=?.
  The `jal` at 0x2530 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2560 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x2604 calls `GfxDetach` with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2624 calls `GfxListWriterLock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2664 calls `GfxListWriterUnlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x266c calls `freesema` with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=?.
  The `jal` at 0x2694 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x26a0 calls `gthread_find` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x26c8 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x26e0 calls `gthread_detach_list` with a0=ret(gthread_find), a1=?, a2=?, a3=?.
  The `jal` at 0x26e8 calls `gthread_detach_group` with a0=ret(gthread_find), a1=?, a2=?, a3=?.
  The `jal` at 0x26f0 calls `gthread_destroy` with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2708 calls `streams_lock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2720 calls `gfxcleanup` with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2728 calls `streams_unlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2740 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x2750 calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x275c calls `psignal` with a0=ret(curproc), a1=0x6, a2=?, a3=?.
  The `jal` at 0x27c0 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x27e8 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x27f8 calls `gthread_create` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2834 calls `gthread_attach_list` with a0=ret(gthread_create), a1=0x0, a2=?, a3=?.
  The `jal` at 0x2848 calls `setgfxsched_thread` with a0=ret(curthreadhandle), a1=?, a2=?, a3=[ret(gthread_create)+16]:8.
  The `jal` at 0x2858 calls `gthread_destroy` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2880 calls `mutex_spinlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2890 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2898 calls `gthread_detach_group` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28a4 calls `gthread_scan` with a0=sym(irisgl_sproc_cleanup), a1=?, a2=?, a3=?.
  The `jal` at 0x28b4 calls `cleargfxsched_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28bc calls `gthread_detach_list` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28c4 calls `gthread_detach_group` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28d4 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28e0 calls `gthread_find` with a0=[entry(sym(GfxDev))+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2928 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2954 calls `vsema` with a0=sym(GfxBoardInitSema), a1=?, a2=?, a3=?.
  The `jal` at 0x2984 calls `GfxListWriterLock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x29a0 calls `GfxListWriterUnlock` with a0=[ret(gthread_find)+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=?.
  The `jal` at 0x29c8 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x29d0 calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x29d8 calls `proc_name` with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0x29e0 calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x29e8 calls `proc_pid` with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0x2a00 calls `cmn_err` with a0=0x1, a1=sym(.rodata), a2=ret(proc_name), a3=ret(proc_pid).
  The `jal` at 0x2a08 calls `threadhandle_to_proc` with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2a10 calls `proc_name` with a0=ret(threadhandle_to_proc), a1=?, a2=?, a3=?.
  The `jal` at 0x2a1c calls `threadhandle_to_proc` with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2a24 calls `proc_pid` with a0=ret(threadhandle_to_proc), a1=?, a2=?, a3=?.
  The `jal` at 0x2a38 calls `cmn_err` with a0=0x1, a1=sym(.rodata), a2=ret(proc_name), a3=ret(proc_pid).
  The `jal` at 0x2a40 calls `threadhandle_to_proc` with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2a4c calls `psignal` with a0=ret(threadhandle_to_proc), a1=0x9, a2=?, a3=?.
  The `beq` branch at 0x2508 is taken when s7(?) == s5(=0x20000) -> B2 and falls through when s7(?) != s5(=0x20000) -> B1.
  The `bne` branch at 0x2550 is taken when a0(?) < a1(=[sym(GfxDevLimit)]) (signed) -> B7 and falls through when a0(?) >= a1(=[sym(GfxDevLimit)]) (signed) -> B3.
  The `beq` branch at 0x2558 is taken when s7(?) == s5(=0x20000) -> B5 and falls through when s7(?) != s5(=0x20000) -> B4.
  The `beq` branch at 0x25ac is taken when s0(=entry(sym(GfxDev))) == 0 -> B49 and falls through when s0(=entry(sym(GfxDev))) != 0 -> B8.
  The `beq` branch at 0x25b4 is taken when s4(=ret(gthread_find)) == 0 -> B48 and falls through when s4(=ret(gthread_find)) != 0 -> B9.
  The `beq` branch at 0x25c0 is taken when v0(=[ret(gthread_find)+16]:8) == 0 -> B48 and falls through when v0(=[ret(gthread_find)+16]:8) != 0 -> B10.
  The `beq` branch at 0x25d0 is taken when s6(=ret(curthreadhandle)) == s3(=[entry(sym(GfxDev))+16]:8) -> B46 and falls through when s6(=ret(curthreadhandle)) != s3(=[entry(sym(GfxDev))+16]:8) -> B12.
  The `beq` branch at 0x25d8 is taken when s7(?) == s5(=0x20000) -> B64 and falls through when s7(?) != s5(=0x20000) -> B13.
  The `beq` branch at 0x25e0 is taken when s4(=ret(gthread_find)) == 0 -> B69 and falls through when s4(=ret(gthread_find)) != 0 -> B14.
  The `beq` branch at 0x25ec is taken when a0(=[ret(gthread_find)+24]:8) == 0 -> B64 and falls through when a0(=[ret(gthread_find)+24]:8) != 0 -> B15.
  The `beq` branch at 0x25fc is taken when s4(=ret(gthread_find)) == 0 -> B55 and falls through when s4(=ret(gthread_find)) != 0 -> B17.
  The `beq` branch at 0x2610 is taken when a1(?) == 0 -> B41 and falls through when a1(?) != 0 -> B18.
  The `beq` branch at 0x261c is taken when s4(?) == 0 -> B41 and falls through when s4(?) != 0 -> B19.
  The `bne` branch at 0x262c is taken when s0(=entry(sym(GfxDev))) != s2(?) -> B42 and falls through when s0(=entry(sym(GfxDev))) == s2(?) -> B20.
  The `beq` branch at 0x2644 is taken when s2(?) == 0 -> B24 and falls through when s2(?) != 0 -> B23.
  The `beq` branch at 0x2654 is taken when (a4(=[entry(sym(GfxDev))+4]) & 0x8) == 0 -> B60 and falls through when (a4(=[entry(sym(GfxDev))+4]) & 0x8) != 0 -> B24.
  The `beq` branch at 0x265c is taken when s4(?) == 0 -> B26 and falls through when s4(?) != 0 -> B25.
  The `beq` branch at 0x2678 is taken when v0(?) == 0 -> B28 and falls through when v0(?) != 0 -> B27.
  The `beq` branch at 0x2684 is taken when a5(?) == 0 -> B63 and falls through when a5(?) != 0 -> B28.
  The `beq` branch at 0x268c is taken when s8(?) == 0 -> B35 and falls through when s8(?) != 0 -> B29.
  The `beq` branch at 0x26a8 is taken when s3(=one of 0x0, 0x1) == 0 -> B52 and falls through when s3(=one of 0x0, 0x1) != 0 -> B30.
  The `beq` branch at 0x26b0 is taken when v0(=ret(gthread_find)) == 0 -> B54 and falls through when v0(=ret(gthread_find)) != 0 -> B31.
  The `beq` branch at 0x26c0 is taken when (a6(=[ret(gthread_find)+8]) & 0x4) == 0 -> B83 and falls through when (a6(=[ret(gthread_find)+8]) & 0x4) != 0 -> B32.
  The `beq` branch at 0x26d4 is taken when v0(=[ret(gthread_find)+16]:8) == 0 -> B34 and falls through when v0(=[ret(gthread_find)+16]:8) != 0 -> B33.
  The `beq` branch at 0x2700 is taken when a7(?) == 0 -> B59 and falls through when a7(?) != 0 -> B36.
  The `beq` branch at 0x2734 is taken when s7(?) == s5(=0x20000) -> B38 and falls through when s7(?) != s5(=0x20000) -> B37.
  The `beq` branch at 0x2748 is taken when s3(=one of 0x0, 0x1) == 0 -> B40 and falls through when s3(=one of 0x0, 0x1) != 0 -> B39.
  The `beq` branch at 0x276c is taken when s0(=entry(sym(GfxDev))) == s2(?) -> B20 and falls through when s0(=entry(sym(GfxDev))) != s2(?) -> B42.
  The `beq` branch at 0x2774 is taken when s2(?) == 0 -> B21 and falls through when s2(?) != 0 -> B43.
  The `beq` branch at 0x2780 is taken when s0(=entry(sym(GfxDev))) == v0(?) -> B47 and falls through when s0(=entry(sym(GfxDev))) != v0(?) -> B44.
  The `bne` branch at 0x2788 is taken when v0(?) != 0 -> B43 and falls through when v0(?) == 0 -> B45.
  The `beq` branch at 0x27b8 is taken when s7(?) == s5(=0x20000) -> B51 and falls through when s7(?) != s5(=0x20000) -> B50.
  The `beq` branch at 0x27d0 is taken when v0(=ret(gthread_find)) == 0 -> B54 and falls through when v0(=ret(gthread_find)) != 0 -> B53.
  The `bne` branch at 0x27e0 is taken when (a1(=[ret(gthread_find)+8]) & 0x4) != 0 -> B32 and falls through when (a1(=[ret(gthread_find)+8]) & 0x4) == 0 -> B54.
  The `beq` branch at 0x2804 is taken when v0(=ret(gthread_create)) == 0 -> B73 and falls through when v0(=ret(gthread_create)) != 0 -> B56.
  The `bne` branch at 0x2820 is taken when a1(?) < 0x8 (signed) -> B57 and falls through when a1(?) >= 0x8 (signed) -> B58.
  The `beq` branch at 0x286c is taken when v0(?) == 0 -> B24 and falls through when v0(?) != 0 -> B61.
  The `bne` branch at 0x2878 is taken when a4(?) != 0 -> B24 and falls through when a4(?) == 0 -> B62.
  The `beq` branch at 0x28e8 is taken when v0(=ret(gthread_find)) == 0 -> B70 and falls through when v0(=ret(gthread_find)) != 0 -> B65.
  The `beq` branch at 0x28f4 is taken when a0(=[ret(gthread_find)+16]:8) == 0 -> B82 and falls through when a0(=[ret(gthread_find)+16]:8) != 0 -> B66.
  The `beq` branch at 0x2900 is taken when a1(=[[ret(gthread_find)+16]:8+24]:8) == 0 -> B80 and falls through when a1(=[[ret(gthread_find)+16]:8+24]:8) != 0 -> B67.
  The `bne` branch at 0x2908 is taken when a1(=[[ret(gthread_find)+16]:8+24]:8) != 0 -> B77 and falls through when a1(=[[ret(gthread_find)+16]:8+24]:8) == 0 -> B68.
  The `beq` branch at 0x2930 is taken when s4(=ret(gthread_find)) == 0 -> B55 and falls through when s4(=ret(gthread_find)) != 0 -> B72.
  The `beq` branch at 0x294c is taken when s7(?) == s5(=0x20000) -> B75 and falls through when s7(?) != s5(=0x20000) -> B74.
  The `beq` branch at 0x296c is taken when a1(?) == 0 -> B81 and falls through when a1(?) != 0 -> B77.
  The `bne` branch at 0x2974 is taken when s0(=entry(sym(GfxDev))) != a1(?) -> B76 and falls through when s0(=entry(sym(GfxDev))) == a1(?) -> B78.
  The `beq` branch at 0x297c is taken when a1(?) == 0 -> B81 and falls through when a1(?) != 0 -> B79.
  The return at 0x2594 has v0 = one of 0x0, 0x6, 0xc, 0x13.

- `GfxListWriterLock` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2a5c (n64).
  It occupies 120 bytes.
  The `jal` at 0x2a78 calls `mutex_spinlock` with a0=a0+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2a98 calls `sv_wait` with a0=a0+8, a1=0x19, a2=a0+16, a3=ret(mutex_spinlock).
  The `jal` at 0x2aa0 calls `mutex_spinlock` with a0=a0+16, a1=?, a2=?, a3=?.
  The `blez` branch at 0x2a88 is taken when at(=[a0+4]) <= 0 (signed) -> B3 and falls through when at(=[a0+4]) > 0 (signed) -> B1.
  The `bgtz` branch at 0x2ab0 is taken when v0(=[a0+4]) > 0 (signed) -> B2 and falls through when v0(=[a0+4]) <= 0 (signed) -> B3.
  The return at 0x2acc has v0 = ret(mutex_spinlock).

- `GfxListWriterUnlock` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2ad4 (n64).
  It occupies 28 bytes.
  The `jal` at 0x2adc calls `mutex_spinunlock` with a0=a0+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2ae8 has v0 = ret(mutex_spinunlock).

- `GfxListReaderLock` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2af0 (n64).
  It occupies 68 bytes.
  The `sw` at 0x2b20 stores 4 bytes from at to a0 (arg0 at entry) +0x4 (value [a0+4]+1).
  The `jal` at 0x2b04 calls `mutex_spinlock` with a0=a0+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2b1c calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The return at 0x2b2c has v0 = ret(mutex_spinunlock).

- `GfxListReaderUnlock` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2b34 (n64).
  It occupies 80 bytes.
  The `sw` at 0x2b64 stores 4 bytes from at to a0 (arg0 at entry) +0x4 (value [a0+4]-1).
  The `jal` at 0x2b48 calls `mutex_spinlock` with a0=a0+16, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2b60 calls `sv_signal` with a0=a0+8, a1=?, a2=?, a3=?.
  The `jal` at 0x2b70 calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The return at 0x2b7c has v0 = ret(mutex_spinunlock).

- `gfxread` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2b84 (n64).
  It occupies 8 bytes.
  The return at 0x2b84 has v0 = 0x36.

- `gfxwrite` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2b8c (n64).
  It occupies 8 bytes.
  The return at 0x2b8c has v0 = 0x36.

- `gfxioctl` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x2b94 (n64).
  It occupies 2004 bytes.
  The `sw` at 0x2bf4 stores 4 bytes from a3 to ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0xc (value [([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5))+12]+1).
  The `sw` at 0x2d0c stores 4 bytes from t2 to a5 (arg5 at entry) +0x0 (value [sym(GfxNumberOfBoards)]).
  The `sw` at 0x2dec stores 4 bytes from v1 to entry(sym(GfxDev)) +0x4 (value ([entry(sym(GfxDev))+4] | 0x20)).
  The `sd` at 0x2e58 stores 8 bytes from s0 to [entry(sym(GfxDev))+40]:8 +0x48 (value entry(sym(GfxDev))).
  The `sw` at 0x2fc8 stores 4 bytes from t1 to entry(sym(GfxDev)) +0x4 (value ([entry(sym(GfxDev))+4] | 0x4)).
  The `sw` at 0x302c stores 4 bytes from zero to [entry(sym(GfxDev))+40]:8 +0x80 (value 0x0).
  The `sd` at 0x304c stores 8 bytes from zero to [entry(sym(GfxDev))+40]:8 +0x48 (value 0x0).
  The `sw` at 0x3178 stores 4 bytes from a0 to a5 (arg5 at entry) +0x0.
  The `sd` at 0x31d4 stores 8 bytes from s0 to [entry(sym(GfxDev))+40]:8 +0x48 (value entry(sym(GfxDev))).
  The `sd` at 0x3214 stores 8 bytes from s0 to [entry(sym(GfxDev))+40]:8 +0x48 (value entry(sym(GfxDev))).
  The `sd` at 0x326c stores 8 bytes from a2 to entry(sym(GfxDev)) +0x8 (value entry(sym(GfxBoards))).
  The `sd` at 0x3274 stores 8 bytes from t8 to entry(sym(GfxDev)) +0x28 (value [entry(sym(GfxBoards))+64]:8).
  The `sd` at 0x327c stores 8 bytes from t3 to entry(sym(GfxDev)) +0x20 (value [entry(sym(GfxBoards))+56]:8).
  The `sd` at 0x32ac stores 8 bytes from zero to entry(sym(GfxDev)) +0x20 (value 0x0).
  The `sd` at 0x32b0 stores 8 bytes from zero to entry(sym(GfxDev)) +0x28 (value 0x0).
  The `sd` at 0x32b8 stores 8 bytes from zero to entry(sym(GfxDev)) +0x8 (value 0x0).
  The `sd` at 0x32e8 stores 8 bytes from a2 to entry(sym(GfxDev)) +0x8 (value entry(sym(GfxBoards))).
  The `sd` at 0x32f0 stores 8 bytes from v1 to entry(sym(GfxDev)) +0x20 (value [entry(sym(GfxBoards))+56]:8).
  The `sd` at 0x32f8 stores 8 bytes from v0 to entry(sym(GfxDev)) +0x28 (value [entry(sym(GfxBoards))+64]:8).
  The `sd` at 0x3328 stores 8 bytes from zero to entry(sym(GfxDev)) +0x20 (value 0x0).
  The `sd` at 0x332c stores 8 bytes from zero to entry(sym(GfxDev)) +0x28 (value 0x0).
  The `sd` at 0x3334 stores 8 bytes from zero to entry(sym(GfxDev)) +0x8 (value 0x0).
  The `sd` at 0x334c stores 8 bytes from s0 to [entry(sym(GfxDev))+8]:8 +0x10 (value entry(sym(GfxDev))).
  The `sd` at 0x3364 stores 8 bytes from s0 to [entry(sym(GfxDev))+8]:8 +0x10 (value entry(sym(GfxDev))).
  The `jal` at 0x2bbc calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2bc8 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2c70 calls `psema` with a0=entry(sym(GfxDev))+80, a1=0x19, a2=0x1ffff, a3=[([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5))+12]+1, a4=([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)), a5=([-0x3bd8]:2 << 0x5).
  The `jalr` at 0x2d70 calls `(unknown callee)` with a0=entry(sym(GfxDev)), a1=[entry(sym(GfxDev))+72]:8, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a5 at entry (arg5).
  The `jal` at 0x2d90 calls `ddv_unlock` with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2da8 calls `ddv_lock` with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2dd0 calls `(unknown callee)` with a0=entry(sym(GfxDev)), a1=0x0, a2=-0x1, a3=?.
  The `jal` at 0x2de8 calls `ddv_unlock` with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2e00 calls `RRM_Dispatch` with a0=entry(sym(GfxDev)), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a5 at entry (arg5).
  The `jal` at 0x2e3c calls `cmn_err_tag` with a0=0x850, a1=0x4, a2=sym(.rodata), a3=a1 at entry (arg1), a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x2e4c calls `psema` with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0x2e6c calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x2ea8 calls `threadgroup_refcnt` with a0=[ret(gthread_find)]:8, a1=0x67, a2=0x70, a3=0x71, a7=[ret(gthread_find)+24]:8.
  The `jal` at 0x2ec4 calls `curproc_abi` with a0=0x69, a1=?, a2=?, a3=?.
  The `jal` at 0x2ee4 calls `copyin_xlate` with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=sym(irix5_to_gfx_getboardinfo_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f04 calls `copyin` with a0=a2 at entry (arg2), a1=sp-72, a2=0x4, a3=?.
  The `jal` at 0x2f1c calls `vsema` with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=?.
  The `jal` at 0x2f2c calls `GfxDetach` with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2f3c calls `curproc_abi` with a0=0x69, a1=0x67, a2=0x70, a3=?.
  The `jal` at 0x2f5c calls `copyin_xlate` with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f74 calls `curproc_abi` with a0=0x69, a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2f94 calls `copyin_xlate` with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2fac calls `drv_priv` with a0=a4 at entry (arg4), a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2fcc calls `curproc_abi` with a0=entry(sym(GfxDev)), a1=0x67, a2=0x70, a3=0x71, a6=0x6c, a7=0x68.
  The `jal` at 0x2fec calls `copyin_xlate` with a0=a2 at entry (arg2), a1=sp-112, a2=0x28, a3=sym(irix5_to_gfx_download_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jalr` at 0x3018 calls `(unknown callee)` with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x3028 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x3040 calls `(unknown callee)` with a0=entry(sym(GfxDev)), a1=[[entry(sym(GfxDev))+32]:8+192]:8, a2=?, a3=?.
  The `jal` at 0x3054 calls `vsema` with a0=[entry(sym(GfxDev))+40]:8+56, a1=[entry(sym(GfxDev))+40]:8, a2=?, a3=?.
  The `jal` at 0x305c calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x3074 calls `rrmUnMapGfx` with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jalr` at 0x3098 calls `(unknown callee)` with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?, a4=[[entry(sym(GfxDev))+32]:8+40]:8.
  The `jal` at 0x30ec calls `copyin` with a0=a2 at entry (arg2), a1=[[entry(sym(GfxDev))+8]:8]:8+16, a2=0x10, a3=[entry(sym(GfxDev))+8]:8, a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x31c8 calls `psema` with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[entry(sym(GfxDev))+8]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x31e8 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x3208 calls `psema` with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[[entry(sym(GfxDev))+40]:8+72]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x3228 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x325c calls `(unknown callee)` with a0=[entry(sym(GfxBoards))+64]:8, a1=?, a2=?, a3=a5 at entry (arg5), a4=entry(sym(GfxBoards)).
  The `jalr` at 0x329c calls `(unknown callee)` with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards).
  The `jalr` at 0x32c8 calls `(unknown callee)` with a0=entry(sym(GfxDev)), a1=sp-112, a2=?, a3=?.
  The `jalr` at 0x3318 calls `(unknown callee)` with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards), a4=[entry(sym(GfxDev))+32]:8.
  The `beq` branch at 0x2c0c is taken when a1(?) >= at(=[sym(GfxDevLimit)]) (signed) -> B23 and falls through when a1(?) < at(=[sym(GfxDevLimit)]) (signed) -> B1.
  The `beq` branch at 0x2c24 is taken when s0(=entry(sym(GfxDev))) == 0 -> B30 and falls through when s0(=entry(sym(GfxDev))) != 0 -> B2.
  The `beq` branch at 0x2c2c is taken when v0(=ret(gthread_find)) == 0 -> B29 and falls through when v0(=ret(gthread_find)) != 0 -> B3.
  The `beq` branch at 0x2c3c is taken when (t9(=[entry(sym(GfxDev))+4]) & 0x8) == 0 -> B7 and falls through when (t9(=[entry(sym(GfxDev))+4]) & 0x8) != 0 -> B4.
  The `beq` branch at 0x2c44 is taken when v0(=[ret(gthread_find)+24]:8) == 0 -> B9 and falls through when v0(=[ret(gthread_find)+24]:8) != 0 -> B5.
  The `beq` branch at 0x2c54 is taken when ra(=[ret(gthread_find)]:8) == at(=[entry(sym(GfxDev))+16]:8) -> B9 and falls through when ra(=[ret(gthread_find)]:8) != at(=[entry(sym(GfxDev))+16]:8) -> B6.
  The `beq` branch at 0x2c64 is taken when v0(=[ret(gthread_find)+24]:8) == 0 -> B9 and falls through when v0(=[ret(gthread_find)+24]:8) != 0 -> B8.
  The `beq` branch at 0x2c7c is taken when s1(=a1) == v0(=0x65) -> B24 and falls through when s1(=a1) != v0(=0x65) -> B10.
  The `beq` branch at 0x2c88 is taken when s1(=a1) == v1(=0x66) -> B51 and falls through when s1(=a1) != v1(=0x66) -> B11.
  The `beq` branch at 0x2c90 is taken when s1(=a1) == a0(=0x69) -> B53 and falls through when s1(=a1) != a0(=0x69) -> B12.
  The `beq` branch at 0x2c98 is taken when s1(=a1) == a1(=0x67) -> B57 and falls through when s1(=a1) != a1(=0x67) -> B13.
  The `beq` branch at 0x2ca0 is taken when s1(=a1) == a2(=0x70) -> B59 and falls through when s1(=a1) != a2(=0x70) -> B14.
  The `beq` branch at 0x2ca8 is taken when s1(=a1) == a3(=0x71) -> B61 and falls through when s1(=a1) != a3(=0x71) -> B15.
  The `beq` branch at 0x2cb4 is taken when v0(=[entry(sym(GfxDev))+32]:8) == 0 -> B32 and falls through when v0(=[entry(sym(GfxDev))+32]:8) != 0 -> B16.
  The `beq` branch at 0x2cbc is taken when a4(?) == 0 -> B31 and falls through when a4(?) != 0 -> B17.
  The `beq` branch at 0x2cc4 is taken when a5(?) == 0 -> B38 and falls through when a5(?) != 0 -> B18.
  The `beq` branch at 0x2cd0 is taken when s1(=a1) == a6(=0x6c) -> B63 and falls through when s1(=a1) != a6(=0x6c) -> B19.
  The `beq` branch at 0x2cd8 is taken when s1(=a1) == a7(=0x68) -> B47 and falls through when s1(=a1) != a7(=0x68) -> B20.
  The `beq` branch at 0x2ce0 is taken when s1(=a1) == t0(=0x6e) -> B33 and falls through when s1(=a1) != t0(=0x6e) -> B21.
  The `beq` branch at 0x2cf0 is taken when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) == s0(=entry(sym(GfxDev))) -> B39 and falls through when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) != s0(=entry(sym(GfxDev))) -> B22.
  The `beq` branch at 0x2d14 is taken when t3(=[ret(gthread_find)+24]:8) == 0 -> B28 and falls through when t3(=[ret(gthread_find)+24]:8) != 0 -> B27.
  The `beq` branch at 0x2d24 is taken when (t8(=[entry(sym(GfxDev))+4]) & 0x8) == 0 -> B55 and falls through when (t8(=[entry(sym(GfxDev))+4]) & 0x8) != 0 -> B28.
  The `bne` branch at 0x2da0 is taken when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) -> B44 and falls through when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))) -> B36.
  The `bne` branch at 0x2db8 is taken when at(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) -> B34 and falls through when at(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))) -> B37.
  The `beq` branch at 0x2e10 is taken when s1(=a1) == a0(=0x6a) -> B65 and falls through when s1(=a1) != a0(=0x6a) -> B40.
  The `beq` branch at 0x2e18 is taken when s1(=a1) == a1(=0x6b) -> B70 and falls through when s1(=a1) != a1(=0x6b) -> B41.
  The `beq` branch at 0x2e20 is taken when s1(=a1) == a2(=0x6d) -> B72 and falls through when s1(=a1) != a2(=0x6d) -> B42.
  The `beq` branch at 0x2e28 is taken when s1(=a1) == a4(=0x6f) -> B77 and falls through when s1(=a1) != a4(=0x6f) -> B43.
  The `beq` branch at 0x2e64 is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0 -> B36 and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0 -> B45.
  The `bne` branch at 0x2e7c is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0 -> B45 and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0 -> B46.
  The `bne` branch at 0x2e94 is taken when (a6(=[entry(sym(GfxDev))+4]) & 0x8) != 0 -> B56 and falls through when (a6(=[entry(sym(GfxDev))+4]) & 0x8) == 0 -> B48.
  The `beq` branch at 0x2ea0 is taken when a7(=[ret(gthread_find)+24]:8) == 0 -> B56 and falls through when a7(=[ret(gthread_find)+24]:8) != 0 -> B49.
  The `beq` branch at 0x2eb4 is taken when v0(=ret(threadgroup_refcnt)) == t0(=0x1) -> B56 and falls through when v0(=ret(threadgroup_refcnt)) != t0(=0x1) -> B50.
  The `beq` branch at 0x2eec is taken when v0(=ret(copyin_xlate)) == 0 -> B73 and falls through when v0(=ret(copyin_xlate)) != 0 -> B52.
  The `beq` branch at 0x2f0c is taken when v0(=ret(copyin)) == 0 -> B75 and falls through when v0(=ret(copyin)) != 0 -> B54.
  The `beq` branch at 0x2f64 is taken when v0(=ret(copyin_xlate)) == 0 -> B78 and falls through when v0(=ret(copyin_xlate)) != 0 -> B58.
  The `beq` branch at 0x2f9c is taken when v0(=ret(copyin_xlate)) == 0 -> B80 and falls through when v0(=ret(copyin_xlate)) != 0 -> B60.
  The `bne` branch at 0x2fb4 is taken when v0(=ret(drv_priv)) != 0 -> B25 and falls through when v0(=ret(drv_priv)) == 0 -> B62.
  The `beq` branch at 0x2ff4 is taken when v0(=ret(copyin_xlate)) == 0 -> B100 and falls through when v0(=ret(copyin_xlate)) != 0 -> B64.
  The `bne` branch at 0x300c is taken when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) -> B91 and falls through when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))) -> B66.
  The `beq` branch at 0x3038 is taken when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) == 0 -> B68 and falls through when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) != 0 -> B67.
  The `beq` branch at 0x306c is taken when (a2(=[entry(sym(GfxDev))+4]) & 0x1) == 0 -> B25 and falls through when (a2(=[entry(sym(GfxDev))+4]) & 0x1) != 0 -> B69.
  The `bne` branch at 0x308c is taken when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))) -> B94 and falls through when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))) -> B71.
  The `bne` branch at 0x30b8 is taken when v0(?) < a5(=[sym(GfxNumberOfBoards)]) (unsigned) -> B82 and falls through when v0(?) >= a5(=[sym(GfxNumberOfBoards)]) (unsigned) -> B74.
  The `bne` branch at 0x30d0 is taken when a0(?) < a6(=[sym(GfxNumberOfBoards)]) (unsigned) -> B84 and falls through when a0(?) >= a6(=[sym(GfxNumberOfBoards)]) (unsigned) -> B76.
  The `bne` branch at 0x3108 is taken when v0(?) < a2(=[sym(GfxNumberOfBoards)]) (unsigned) -> B86 and falls through when v0(?) >= a2(=[sym(GfxNumberOfBoards)]) (unsigned) -> B79.
  The `bne` branch at 0x3120 is taken when v0(?) < a3(=[sym(GfxNumberOfBoards)]) (unsigned) -> B89 and falls through when v0(?) >= a3(=[sym(GfxNumberOfBoards)]) (unsigned) -> B81.
  The `bne` branch at 0x3140 is taken when a4(=entry(sym(GfxBoards))) != 0 -> B97 and falls through when a4(=entry(sym(GfxBoards))) == 0 -> B83.
  The `beq` branch at 0x3160 is taken when v0(=entry(sym(GfxBoards))) == 0 -> B101 and falls through when v0(=entry(sym(GfxBoards))) != 0 -> B85.
  The `beq` branch at 0x318c is taken when a2(=entry(sym(GfxBoards))) == 0 -> B102 and falls through when a2(=entry(sym(GfxBoards))) != 0 -> B87.
  The `beq` branch at 0x3198 is taken when a4(=[entry(sym(GfxDev))+32]:8) == 0 -> B103 and falls through when a4(=[entry(sym(GfxDev))+32]:8) != 0 -> B88.
  The `bne` branch at 0x31b8 is taken when a2(=entry(sym(GfxBoards))) != 0 -> B98 and falls through when a2(=entry(sym(GfxBoards))) == 0 -> B90.
  The `beq` branch at 0x31e0 is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0 -> B93 and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0 -> B92.
  The `bne` branch at 0x31f8 is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0 -> B92 and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0 -> B93.
  The `beq` branch at 0x3220 is taken when a6(=[[entry(sym(GfxDev))+40]:8+104]) == 0 -> B96 and falls through when a6(=[[entry(sym(GfxDev))+40]:8+104]) != 0 -> B95.
  The `bne` branch at 0x3238 is taken when t0(=[[entry(sym(GfxDev))+40]:8+104]) != 0 -> B95 and falls through when t0(=[[entry(sym(GfxDev))+40]:8+104]) == 0 -> B96.
  The `beq` branch at 0x32a4 is taken when v0(=ret(?)) == 0 -> B105 and falls through when v0(=ret(?)) != 0 -> B99.
  The `beq` branch at 0x3320 is taken when v0(=ret(?)) == 0 -> B107 and falls through when v0(=ret(?)) != 0 -> B104.
  The `bne` branch at 0x3340 is taken when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0 -> B25 and falls through when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0 -> B106.
  The `bne` branch at 0x3358 is taken when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0 -> B25 and falls through when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0 -> B108.
  The return at 0x2d44 has v0 = ?.

- `gfxmap` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3368 (n64).
  It occupies 8 bytes.
  The return at 0x3368 has v0 = 0x36.

- `gfxunmap` in `usr/cpu/sysgen/IP35boot/gfx.o` at 0x3370 (n64).
  It occupies 8 bytes.
  The return at 0x3370 has v0 = 0x36.

- `pane_gc` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x0 (n64).
  It occupies 376 bytes.
  The `sh` at 0x6c stores 2 bytes from a1 to ? (base unknown).
  The `sh` at 0x108 stores 2 bytes from a1 to table(sym(.bss)) -0x2.
  The `sh` at 0x124 stores 2 bytes from a1 to table(sym(.bss)) -0x2.
  The `sw` at 0x13c stores 4 bytes from a2 to sym(max_pane) +0x8.
  The `sh` at 0x144 stores 2 bytes from a6 to sym(max_pane) +0x4.
  The `beq` branch at 0x18 is taken when a4(=[sym(.sbss)+8]) >= a5(=[sym(max_pane)]) (signed) -> B7 and falls through when a4(=[sym(.sbss)+8]) < a5(=[sym(max_pane)]) (signed) -> B1.
  The `beq` branch at 0x38 is taken when a1(?) >= a5(=[sym(max_pane)]) (signed) -> B8 and falls through when a1(?) < a5(=[sym(max_pane)]) (signed) -> B3.
  The `bne` branch at 0x54 is taken when v1(=[table(sym(rrm_pane))+16]:2) != 0 -> B2 and falls through when v1(=[table(sym(rrm_pane))+16]:2) == 0 -> B5.
  The `bne` branch at 0x68 is taken when a6(?) != t0(=0x8) -> B2 and falls through when a6(?) == t0(=0x8) -> B6.
  The `blez` branch at 0x84 is taken when a4(=[sym(.sbss)+8]) <= 0 (signed) -> B22 and falls through when a4(=[sym(.sbss)+8]) > 0 (signed) -> B9.
  The `beq` branch at 0xa4 is taken when a1(?) >= a4(=[sym(.sbss)+8]) (signed) -> B18 and falls through when a1(?) < a4(=[sym(.sbss)+8]) (signed) -> B11.
  The `beq` branch at 0xc0 is taken when t1(?) == 0 -> B17 and falls through when t1(?) != 0 -> B13.
  The `beq` branch at 0xd4 is taken when a1(?) >= a4(=[sym(.sbss)+8]) (signed) -> B18 and falls through when a1(?) < a4(=[sym(.sbss)+8]) (signed) -> B14.
  The `bne` branch at 0xf0 is taken when t2(?) != 0 -> B10 and falls through when t2(?) == 0 -> B15.
  The `bne` branch at 0x104 is taken when a6(?) != t0(=0x8) -> B10 and falls through when a6(?) == t0(=0x8) -> B16.
  The `bne` branch at 0x120 is taken when a6(?) != t0(=0x8) -> B13 and falls through when a6(?) == t0(=0x8) -> B18.
  The `beq` branch at 0x130 is taken when a1(?) >= t9(=[sym(max_pane)]-2) (signed) -> B21 and falls through when a1(?) < t9(=[sym(max_pane)]-2) (signed) -> B20.
  The `beq` branch at 0x14c is taken when a5(=[sym(max_pane)]) >= 0x3 (signed) -> B20 and falls through when a5(=[sym(max_pane)]) < 0x3 (signed) -> B23.
  The return at 0x140 has v0 = ?.

- `bind_pane` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x178 (n64).
  It occupies 468 bytes.
  The `sh` at 0x240 stores 2 bytes from v0 to sym(max_pane) +0x4.
  The `sh` at 0x24c stores 2 bytes from s0 to table(sym(rrm_pane)) +0x2 (value entry(sym(.bss))).
  The `sh` at 0x254 stores 2 bytes from v1 to table(sym(rrm_pane)) +0x0 (value entry(sym(rrm_pane))+1).
  The `sh` at 0x25c stores 2 bytes from zero to table(sym(rrm_pane)) +0x12 (value 0x0).
  The `sh` at 0x260 stores 2 bytes from zero to table(sym(rrm_pane)) +0xc (value 0x0).
  The `sw` at 0x268 stores 4 bytes from at to table(sym(rrm_pane)) +0x8 (value 0x1).
  The `sw` at 0x26c stores 4 bytes from s2 to table(sym(rrm_pane)) +0x4 (value a1).
  The `sd` at 0x270 stores 8 bytes from ra to table(sym(rrm_pane)) +0x58 (value [a0+40]:8).
  The `sh` at 0x298 stores 2 bytes from a3 to sym(max_pane) +0x4.
  The `sh` at 0x2f4 stores 2 bytes from a4 to ? (base unknown).
  The `sh` at 0x300 stores 2 bytes from a3 to ? (base unknown).
  The `sh` at 0x324 stores 2 bytes from v0 to ? (base unknown).
  The `jal` at 0x1a0 calls `psema` with a0=sym(.bss), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x29c calls `bcopy` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2fc calls `vsema` with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x328 calls `pane_gc` with a0=?, a1=sym(rrm_pane), a2=?, a3=?.
  The `blez` branch at 0x1b0 is taken when v0(=[sym(max_pane)]) <= 0 (signed) -> B8 and falls through when v0(=[sym(max_pane)]) > 0 (signed) -> B1.
  The `beq` branch at 0x1cc is taken when s0(?) >= v0(=[sym(max_pane)]) (signed) -> B8 and falls through when s0(?) < v0(=[sym(max_pane)]) (signed) -> B4.
  The `bne` branch at 0x1e8 is taken when v1(?) != s2(=a1) -> B2 and falls through when v1(?) == s2(=a1) -> B6.
  The `bnel` branch at 0x1f8 is taken when t8(=[a0+40]:8) != t9(?) -> B3 and falls through when t8(=[a0+40]:8) == t9(?) -> B7.
  The `beq` branch at 0x20c is taken when v0(=[sym(.sbss)+4]:2) == 0 -> B18 and falls through when v0(=[sym(.sbss)+4]:2) != 0 -> B9.
  The `blez` branch at 0x278 is taken when v0(?) <= 0 (signed) -> B15 and falls through when v0(?) > 0 (signed) -> B11.
  The `beq` branch at 0x2b0 is taken when s2(?) >= v0(=[sym(.sbss)+4]:2) (signed) -> B15 and falls through when s2(?) < v0(=[sym(.sbss)+4]:2) (signed) -> B13.
  The `beq` branch at 0x2c0 is taken when a5(?) == s0(?) -> B12 and falls through when a5(?) != s0(?) -> B14.
  The `bne` branch at 0x2d0 is taken when s2(?) < v0(?) (signed) -> B13 and falls through when s2(?) >= v0(?) (signed) -> B15.
  The `beq` branch at 0x2dc is taken when a1(?) == 0 -> B17 and falls through when a1(?) != 0 -> B16.
  The return at 0x314 has v0 = ?.

- `unbind_pane` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x34c (n64).
  It occupies 72 bytes.
  The `sh` at 0x380 stores 2 bytes from a1 to a0 (arg0 at entry) +0x10 (value [a0+16]:2-1).
  The `jal` at 0x364 calls `psema` with a0=sym(.bss), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x37c calls `vsema` with a0=sym(.bss), a1=[a0+16]:2-1, a2=?, a3=?.
  The return at 0x38c has v0 = ret(vsema).

- `clip2pane` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x394 (n64).
  It occupies 116 bytes.
  The `blez` branch at 0x39c is taken when a5(=[sym(max_pane)]) <= 0 (signed) -> B8 and falls through when a5(=[sym(max_pane)]) > 0 (signed) -> B1.
  The `beq` branch at 0x3b4 is taken when at(?) == 0 -> B8 and falls through when at(?) != 0 -> B4.
  The `bne` branch at 0x3d0 is taken when v1(?) != a0 -> B2 and falls through when v1(?) == a0 -> B6.
  The `bne` branch at 0x3dc is taken when v1(?) != a7(=[a1+40]:8) -> B3 and falls through when v1(?) == a7(=[a1+40]:8) -> B7.
  The return at 0x3f0 has v0 = ?.

- `pane_cleanup` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x408 (n64).
  It occupies 180 bytes.
  The `sw` at 0x44c stores 4 bytes from zero to ret(clip2pane) +0x4 (value 0x0).
  The `sh` at 0x45c stores 2 bytes from a1 to ret(clip2pane) +0xc.
  The `sd` at 0x460 stores 8 bytes from zero to ret(clip2pane) +0x38 (value 0x0).
  The `sh` at 0x46c stores 2 bytes from zero to ret(clip2pane) +0xe (value 0x0).
  The `jal` at 0x414 calls `clip2pane` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x42c calls `psema` with a0=sym(.bss), a1=0x19, a2=?, a3=?.
  The `jal` at 0x438 calls `mutex_spinlock` with a0=ret(clip2pane)+80, a1=?, a2=?, a3=?.
  The `jal` at 0x468 calls `vsema` with a0=ret(clip2pane)+40, a1=?, a2=[ret(clip2pane)+14]:2, a3=-0x4b.
  The `jal` at 0x470 calls `sv_signal` with a0=ret(clip2pane)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x47c calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x494 calls `vsema` with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x4ac calls `rrmSwapUnGroup` with a0=a1 at entry (arg1), a1=ret(clip2pane), a2=?, a3=?, a4=[ret(clip2pane)+160]:8.
  The `beq` branch at 0x41c is taken when v0(=ret(clip2pane)) == 0 -> B6 and falls through when v0(=ret(clip2pane)) != 0 -> B1.
  The `beq` branch at 0x458 is taken when a2(=[ret(clip2pane)+14]:2) == 0 -> B3 and falls through when a2(=[ret(clip2pane)+14]:2) != 0 -> B2.
  The `bne` branch at 0x488 is taken when a4(=[ret(clip2pane)+160]:8) != 0 -> B7 and falls through when a4(=[ret(clip2pane)+160]:8) == 0 -> B4.
  The return at 0x4a4 has v0 = ?.

- `pane_setnullclip` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4bc (n64).
  It occupies 72 bytes.
  The `sh` at 0x4ec stores 2 bytes from v1 to a0 (arg0 at entry) +0xc (value ([a0+12]:2 | 0xca)).
  The `sw` at 0x4f4 stores 4 bytes from v0 to a0 (arg0 at entry) +0x8 (value [a0+8]+1).
  The `jalr` at 0x4d4 calls `(unknown callee)` with a0=a0+96, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4fc has v0 = [a0+8]+1.

- `pane_validmask` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x504 (n64).
  It occupies 8 bytes.
  The return at 0x504 has v0 = [a0+12]:2.

- `invalidate_pane` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x50c (n64).
  It occupies 140 bytes.
  The `sh` at 0x58c stores 2 bytes from v0 to ret(clip2pane) +0xc.
  The `jal` at 0x528 calls `clip2pane` with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x56c calls `mutex_spinlock` with a0=ret(clip2pane)+80, a1=?, a2=?, a3=?.
  The `jal` at 0x588 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x538 is taken when (s0(=a0) & 0x2) == 0 -> B4 and falls through when (s0(=a0) & 0x2) != 0 -> B1.
  The `bne` branch at 0x540 is taken when v0(=ret(clip2pane)) != 0 -> outside and falls through when v0(=ret(clip2pane)) == 0 -> B2.
  The `beq` branch at 0x564 is taken when v0(=ret(clip2pane)) == 0 -> B2 and falls through when v0(=ret(clip2pane)) != 0 -> B5.
  The return at 0x55c has v0 = ?.

- `invalidate_pane_buffer` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x598 (n64).
  It occupies 124 bytes.
  The `sh` at 0x608 stores 2 bytes from v0 to ret(clip2pane) +0xc.
  The `jal` at 0x5b0 calls `clip2pane` with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x5e8 calls `mutex_spinlock` with a0=ret(clip2pane)+80, a1=?, a2=?, a3=?.
  The `jal` at 0x604 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x5bc is taken when (s0(=a0) & 0x2) == 0 -> B2 and falls through when (s0(=a0) & 0x2) != 0 -> B1.
  The `bne` branch at 0x5c8 is taken when s1(=ret(clip2pane)) != 0 -> B5 and falls through when s1(=ret(clip2pane)) == 0 -> B3.
  The return at 0x5e0 has v0 = 0x0.

- `validate_pane_clip` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x614 (n64).
  It occupies 452 bytes.
  The `sw` at 0x664 stores 4 bytes from v0 to a2 (arg2 at entry) +0x18 (value 0xe).
  The `sw` at 0x6b0 stores 4 bytes from a2 to a2 (arg2 at entry) +0x38 (value ([a2+56] | 0x4)).
  The `sw` at 0x6b4 stores 4 bytes from a2 to ret(clip2pane) +0x20.
  The `sd` at 0x6c8 stores 8 bytes from ra to a2 (arg2 at entry) +0x20 (value [ret(clip2pane)+128]:8).
  The `sd` at 0x6e4 stores 8 bytes from at to ? (base unknown).
  The `sw` at 0x700 stores 4 bytes from v1 to ret(clip2pane) +0x8 (value [ret(clip2pane)+8]+1).
  The `sh` at 0x720 stores 2 bytes from a4 to ret(clip2pane) +0xc (value ([ret(clip2pane)+12]:2 | 0x42)).
  The `sh` at 0x738 stores 2 bytes from a5 to ret(clip2pane) +0xe.
  The `sw` at 0x774 stores 4 bytes from a2 to a2 (arg2 at entry) +0x38.
  The `sw` at 0x778 stores 4 bytes from a2 to ret(clip2pane) +0x20 (value [a2+56]).
  The `sh` at 0x790 stores 2 bytes from a7 to ret(clip2pane) +0x12.
  The `sd` at 0x7a4 stores 8 bytes from v0 to ret(clip2pane) +0x80 (value ret(kern_malloc)).
  The `sd` at 0x7b0 stores 8 bytes from zero to ret(clip2pane) +0x38 (value 0x0).
  The `jal` at 0x624 calls `clip2pane` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x670 calls `copyin` with a0=[a2+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x680 calls `mutex_spinlock` with a0=ret(clip2pane)+80, a1=?, a2=?, a3=?.
  The `jal` at 0x708 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=([ret(clip2pane)+12]:2 | 0x42), a7=ret(clip2pane)+96.
  The `jal` at 0x73c calls `sv_signal` with a0=ret(clip2pane)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x748 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x794 calls `kern_malloc` with a0=0xe0, a1=[ret(clip2pane)+128]:8, a2=?, a3=?.
  The `jal` at 0x7ac calls `vsema` with a0=ret(clip2pane)+40, a1=-0x3, a2=?, a3=?, a4=([ret(clip2pane)+12]:2 | 0x42), a7=ret(clip2pane)+96.
  The `jal` at 0x7c8 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=ret(clip2pane), a3=?.
  The `beq` branch at 0x630 is taken when v0(=ret(clip2pane)) == 0 -> B18 and falls through when v0(=ret(clip2pane)) != 0 -> B1.
  The `beq` branch at 0x63c is taken when a1(=[ret(clip2pane)+128]:8) == 0 -> B22 and falls through when a1(=[ret(clip2pane)+128]:8) != 0 -> B2.
  The `beq` branch at 0x648 is taken when a0(=[a2+32]:8) == 0 -> outside and falls through when a0(=[a2+32]:8) != 0 -> B3.
  The `bne` branch at 0x65c is taken when s2(=([a2+24] << 0x4)) < 0xe1 (unsigned) -> B5 and falls through when s2(=([a2+24] << 0x4)) >= 0xe1 (unsigned) -> B4.
  The `bne` branch at 0x678 is taken when v0(=ret(copyin)) != 0 -> B24 and falls through when v0(=ret(copyin)) == 0 -> B6.
  The `beq` branch at 0x698 is taken when (t8(=[ret(clip2pane)+12]:2) & 0x8) == 0 -> B21 and falls through when (t8(=[ret(clip2pane)+12]:2) & 0x8) != 0 -> B7.
  The `beq` branch at 0x6a4 is taken when t9(=[ret(clip2pane)+18]:2) == 0 -> B20 and falls through when t9(=[ret(clip2pane)+18]:2) != 0 -> B8.
  The `bgtz` branch at 0x6e0 is taken when a3(?) > 0 (signed) -> B11 and falls through when a3(?) <= 0 (signed) -> B12.
  The `beq` branch at 0x6fc is taken when (v0(=[ret(clip2pane)+12]:2) & 0x2) == 0 -> B14 and falls through when (v0(=[ret(clip2pane)+12]:2) & 0x2) != 0 -> B13.
  The `beq` branch at 0x728 is taken when (a2(=[ret(clip2pane)+14]:2) & 0x2) == 0 -> B17 and falls through when (a2(=[ret(clip2pane)+14]:2) & 0x2) != 0 -> B15.
  The `beq` branch at 0x734 is taken when a5(?) == 0 -> B23 and falls through when a5(?) != 0 -> B16.
  The return at 0x764 has v0 = one of 0x0, 0xe.

- `validate_pane_swapbuf` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x7d8 (n64).
  It occupies 160 bytes.
  The `sw` at 0x814 stores 4 bytes from t1 to ret(clip2pane) +0x14 (value a2).
  The `sh` at 0x820 stores 2 bytes from t0 to ret(clip2pane) +0xc (value ([ret(clip2pane)+12]:2 | 0x8)).
  The `sh` at 0x838 stores 2 bytes from t2 to ret(clip2pane) +0xe.
  The `sd` at 0x86c stores 8 bytes from zero to ret(clip2pane) +0x38 (value 0x0).
  The `jal` at 0x7e4 calls `clip2pane` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7f8 calls `mutex_spinlock` with a0=ret(clip2pane)+80, a1=?, a2=?, a3=?.
  The `jal` at 0x83c calls `sv_signal` with a0=ret(clip2pane)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x848 calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x868 calls `vsema` with a0=ret(clip2pane)+40, a1=?, a2=?, a3=?, a7=-0x9.
  The `beq` branch at 0x7ec is taken when v0(=ret(clip2pane)) == 0 -> B5 and falls through when v0(=ret(clip2pane)) != 0 -> B1.
  The `beq` branch at 0x828 is taken when (a5(=[ret(clip2pane)+14]:2) & 0x8) == 0 -> B4 and falls through when (a5(=[ret(clip2pane)+14]:2) & 0x8) != 0 -> B2.
  The `beq` branch at 0x834 is taken when t2(?) == 0 -> B6 and falls through when t2(?) != 0 -> B3.
  The return at 0x85c has v0 = 0x0.

- `validate_pane_buffer` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x878 (n64).
  It occupies 80 bytes.
  The `sh` at 0x8a8 stores 2 bytes from at to a0 (arg0 at entry) +0xc (value ([a0+12]:2 | 0x4)).
  The `jal` at 0x88c calls `mutex_spinlock` with a0=a0+80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x8a4 calls `sv_broadcast` with a0=a0+72, a1=?, a2=?, a3=?.
  The `jal` at 0x8b4 calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The return at 0x8c0 has v0 = ret(mutex_spinunlock).

- `validate_my_pane_buffer` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x8c8 (n64).
  It occupies 180 bytes.
  The `jal` at 0x8ec calls `mutex_spinlock` with a0=a0+80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x90c calls `hold_nonfatalsig` with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0x920 calls `sv_wait_sig` with a0=a0+72, a1=0x21e, a2=a0+80, a3=ret(mutex_spinlock).
  The `jal` at 0x930 calls `release_nonfatalsig` with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0x958 calls `release_nonfatalsig` with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0x96c calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x904 is taken when (at(?) & 0x4) == 0 -> B5 and falls through when (at(?) & 0x4) != 0 -> B1.
  The `bltz` branch at 0x928 is taken when v0(=ret(sv_wait_sig)) < 0 (signed) -> B4 and falls through when v0(=ret(sv_wait_sig)) >= 0 (signed) -> B2.
  The return at 0x950 has v0 = one of -0x1, 0x0.

- `validate_my_pane_resources` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x97c (n64).
  It occupies 1096 bytes.
  The `sh` at 0x9e4 stores 2 bytes from v0 to a0 (arg0 at entry) +0xc (value ([a0+12]:2 | 0x80)).
  The `sh` at 0xa58 stores 2 bytes from s5 to a0 (arg0 at entry) +0xe.
  The `sd` at 0xa60 stores 8 bytes from s1 to a0 (arg0 at entry) +0x38 (value a1).
  The `jal` at 0x9b0 calls `validate_my_pane_buffer` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x9c0 calls `mutex_spinlock` with a0=a0+80, a1=?, a2=?, a3=?.
  The `jal` at 0xa28 calls `pane_setnullclip` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xa34 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xa48 calls `cpsema` with a0=a0+40, a1=?, a2=?, a3=?.
  The `jal` at 0xa64 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xab0 calls `GfxMessage` with a0=sp-136, a1=?, a2=?, a3=?, a4=[[a1+8]:8+8]:8.
  The `jal` at 0xab8 calls `mutex_spinlock` with a0=a0+80, a1=?, a2=?, a3=?.
  The `jal` at 0xb18 calls `pane_setnullclip` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xb24 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xb5c calls `hold_nonfatalsig` with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xb70 calls `sv_wait_sig` with a0=a0+64, a1=0x21e, a2=a0+80, a3=ret(mutex_spinlock).
  The `jal` at 0xb80 calls `release_nonfatalsig` with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xb88 calls `mutex_spinlock` with a0=a0+80, a1=?, a2=?, a3=?.
  The `jal` at 0xbac calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xbcc calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xbd4 calls `hold_nonfatalsig` with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xbe0 calls `psema` with a0=?, a1=0x31e, a2=?, a3=?.
  The `jal` at 0xbf0 calls `release_nonfatalsig` with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xbf8 calls `mutex_spinlock` with a0=a0+80, a1=?, a2=?, a3=?.
  The `jal` at 0xc40 calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc58 calls `pane_setnullclip` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xc64 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xc74 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xc84 calls `curproc` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xc8c calls `proc_pid` with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0xca4 calls `cmn_err_tag` with a0=0x853, a1=0x4, a2=sym(.rodata), a3=ret(proc_pid).
  The `jal` at 0xcac calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcb8 calls `psignal` with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0xcc4 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xcd4 calls `curproc` with a0=a0 at entry (arg0), a1=[[a1+8]:8+8]:8, a2=?, a3=?.
  The `jal` at 0xcdc calls `proc_pid` with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0xcf4 calls `cmn_err_tag` with a0=0x851, a1=0x4, a2=sym(.rodata), a3=ret(proc_pid).
  The `jal` at 0xcfc calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd08 calls `psignal` with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0xd14 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xd28 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xd38 calls `release_nonfatalsig` with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xd48 calls `release_nonfatalsig` with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xd58 calls `curproc` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xd60 calls `proc_pid` with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0xd78 calls `cmn_err_tag` with a0=0x852, a1=0x4, a2=sym(.rodata), a3=ret(proc_pid).
  The `jal` at 0xd80 calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd8c calls `psignal` with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0xd98 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xda8 calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xdb4 calls `mutex_spinunlock` with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x9a8 is taken when (a2 & 0x8e) == 0 -> B22 and falls through when (a2 & 0x8e) != 0 -> B1.
  The `bltz` branch at 0x9b8 is taken when v0(=ret(validate_my_pane_buffer)) < 0 (signed) -> B28 and falls through when v0(=ret(validate_my_pane_buffer)) >= 0 (signed) -> B2.
  The `beq` branch at 0x9e0 is taken when (s5(?) & 0xa) == 0 -> B40 and falls through when (s5(?) & 0xa) != 0 -> B3.
  The `beq` branch at 0x9ec is taken when v1(=[a0+56]:8) == s1(=a1) -> B37 and falls through when v1(=[a0+56]:8) != s1(=a1) -> B4.
  The `bne` branch at 0x9f8 is taken when a0(=[a0+4]) != 0 -> B10 and falls through when a0(=[a0+4]) == 0 -> B5.
  The `beq` branch at 0xa08 is taken when a1(=[[a1+8]:8+8]:8) == s1(=a1) -> B9 and falls through when a1(=[[a1+8]:8+8]:8) != s1(=a1) -> B6.
  The `beq` branch at 0xa10 is taken when a2(?) == 0 -> B10 and falls through when a2(?) != 0 -> B7.
  The `beq` branch at 0xa20 is taken when (a3(=[a1+4]) & 0x8) == 0 -> B39 and falls through when (a3(=[a1+4]) & 0x8) != 0 -> B8.
  The `beq` branch at 0xa50 is taken when v0(=ret(cpsema)) == 0 -> B30 and falls through when v0(=ret(cpsema)) != 0 -> B11.
  The `beq` branch at 0xa74 is taken when a4(=[[a1+8]:8+8]:8) == 0 -> B29 and falls through when a4(=[[a1+8]:8+8]:8) != 0 -> B12.
  The `beq` branch at 0xa88 is taken when (s5(?) & 0x2) == 0 -> B14 and falls through when (s5(?) & 0x2) != 0 -> B13.
  The `beq` branch at 0xac8 is taken when (t3(=[a0+14]:2) & 0xa) == 0 -> outside and falls through when (t3(=[a0+14]:2) & 0xa) != 0 -> B15.
  The `bne` branch at 0xad4 is taken when t8(=[a0+56]:8) != s1(=a1) -> outside and falls through when t8(=[a0+56]:8) == s1(=a1) -> B16.
  The `bne` branch at 0xae8 is taken when ra(=[a0+4]) != 0 -> B24 and falls through when ra(=[a0+4]) == 0 -> B18.
  The `beq` branch at 0xaf8 is taken when at(=[[a1+8]:8+8]:8) == s1(=a1) -> B24 and falls through when at(=[[a1+8]:8+8]:8) != s1(=a1) -> B19.
  The `beq` branch at 0xb00 is taken when v0(?) == 0 -> B24 and falls through when v0(?) != 0 -> B20.
  The `beq` branch at 0xb10 is taken when (v1(=[a1+4]) & 0x8) == 0 -> B38 and falls through when (v1(=[a1+4]) & 0x8) != 0 -> B21.
  The `bltz` branch at 0xb78 is taken when v0(=ret(sv_wait_sig)) < 0 (signed) -> B41 and falls through when v0(=ret(sv_wait_sig)) >= 0 (signed) -> B25.
  The `beq` branch at 0xb98 is taken when (a0(=[a0+14]:2) & 0xa) == 0 -> outside and falls through when (a0(=[a0+14]:2) & 0xa) != 0 -> B26.
  The `beq` branch at 0xba4 is taken when a1(=[a0+56]:8) == s1(=a1) -> B17 and falls through when a1(=[a0+56]:8) != s1(=a1) -> B27.
  The `bltz` branch at 0xbe8 is taken when v0(=ret(psema)) < 0 (signed) -> B42 and falls through when v0(=ret(psema)) >= 0 (signed) -> B31.
  The `beq` branch at 0xc14 is taken when (s5(?) & 0xa) == 0 -> B44 and falls through when (s5(?) & 0xa) != 0 -> B32.
  The `bne` branch at 0xc20 is taken when t8(=[a0+4]) != 0 -> B11 and falls through when t8(=[a0+4]) == 0 -> B33.
  The `beq` branch at 0xc30 is taken when t9(=[[a1+8]:8+8]:8) == s1(=a1) -> B11 and falls through when t9(=[[a1+8]:8+8]:8) != s1(=a1) -> B34.
  The `beq` branch at 0xc38 is taken when a1(?) == 0 -> B11 and falls through when a1(?) != 0 -> B35.
  The `beq` branch at 0xc50 is taken when (ra(=[a1+4]) & 0x8) == 0 -> B43 and falls through when (ra(=[a1+4]) & 0x8) != 0 -> B36.
  The return at 0xb54 has v0 = one of -0x2, -0x1, 0x0.

- `init_panes` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0xdc4 (n64).
  It occupies 224 bytes.
  The `jal` at 0xde8 calls `init_sema` with a0=sym(.bss), a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0xe30 calls `init_sema` with a0=?, a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0xe48 calls `init_sv` with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0xe5c calls `init_sv` with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0xe6c calls `spinlock_init` with a0=?, a1=sym(.rodata), a2=?, a3=?.
  The `blez` branch at 0xe00 is taken when a1(=[sym(max_pane)]) <= 0 (signed) -> B3 and falls through when a1(=[sym(max_pane)]) > 0 (signed) -> B1.
  The `bne` branch at 0xe80 is taken when s1(?) < a2(=[sym(max_pane)]) (signed) -> B2 and falls through when s1(?) >= a2(=[sym(max_pane)]) (signed) -> B3.
  The return at 0xe9c has v0 = ?.

- `RRM_init_panes` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0xea4 (n64).
  It occupies 216 bytes.
  The `sh` at 0xf20 stores 2 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0xf24 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sh` at 0xf30 stores 2 bytes from zero to ? (base unknown) (value 0x0).
  The `jal` at 0xf2c calls `vsema` with a0=?, a1=[sym(max_pane)], a2=?, a3=?.
  The `jal` at 0xf44 calls `rrmSwapUnGroup` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0xec8 is taken when a1(=[sym(max_pane)]) <= 0 (signed) -> B10 and falls through when a1(=[sym(max_pane)]) > 0 (signed) -> B1.
  The `bne` branch at 0xedc is taken when at(?) != 0 -> B8 and falls through when at(?) == 0 -> B3.
  The `beq` branch at 0xeec is taken when s0(?) >= a1(=[sym(max_pane)]) (signed) -> B10 and falls through when s0(?) < a1(=[sym(max_pane)]) (signed) -> B4.
  The `bne` branch at 0xf10 is taken when v1(=[a0+40]:8) != a0(?) -> B3 and falls through when v1(=[a0+40]:8) == a0(?) -> B5.
  The `beq` branch at 0xf1c is taken when t8(?) == 0 -> B2 and falls through when t8(?) != 0 -> B6.
  The `beq` branch at 0xf38 is taken when t9(?) == 0 -> B9 and falls through when t9(?) != 0 -> B7.
  The `bne` branch at 0xf58 is taken when s0(?) < a1(=[sym(max_pane)]) (signed) -> B4 and falls through when s0(?) >= a1(=[sym(max_pane)]) (signed) -> B10.
  The return at 0xf74 has v0 = ?.

- `RRM_init` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0xf7c (n64).
  It occupies 172 bytes.
  The `sb` at 0xfe8 stores 1 bytes from s1 to ? (base unknown) (value 0x1).
  The `sw` at 0x1018 stores 4 bytes from a1 to sym(max_pane) +0x0 (value [sym(rrm_maxrn)]).
  The `jal` at 0xfe4 calls `init_sema` with a0=?, a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x1014 calls `init_panes` with a0=?, a1=[sym(rrm_maxrn)], a2=?, a3=?.
  The `bne` branch at 0xfac is taken when a1(=[sym(rrm_maxrn)]) < 0x2 (signed) -> B3 and falls through when a1(=[sym(rrm_maxrn)]) >= 0x2 (signed) -> B1.
  The `bne` branch at 0xff8 is taken when s0(?) < a1(=[sym(rrm_maxrn)]) (signed) -> B2 and falls through when s0(?) >= a1(=[sym(rrm_maxrn)]) (signed) -> B3.
  The return at 0x1020 has v0 = ret(init_panes).

- `RRM_Init` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1028 (n64).
  It occupies 72 bytes.
  The `jal` at 0x1040 calls `spinlock_init` with a0=a0+48, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1058 calls `init_sema` with a0=a0+56, a1=0x1, a2=sym(.rodata), a3=-0x1.
  The return at 0x1068 has v0 = ret(init_sema).

- `rrmDoUnMapGfx` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1070 (n64).
  It occupies 100 bytes.
  The `sw` at 0x1098 stores 4 bytes from v0 to a0 (arg0 at entry) +0x4 (value ([a0+4] | 0x10)).
  The `sw` at 0x10b4 stores 4 bytes from v1 to a0 (arg0 at entry) +0x4.
  The `jal` at 0x1080 calls `splhi` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10a0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10b8 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The return at 0x10cc has v0 = ret(splx).

- `rrmUnMapGfx` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x10d4 (n64).
  It occupies 148 bytes.
  The `jal` at 0x10fc calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1104 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x1120 calls `mutex_spinlock` with a0=[ret(gthread_find)+16]:8+16, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0x112c calls `rrmDoUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1140 calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1150 calls `rrmDoUnMapGfx` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10e4 is taken when at(=[a0+96]:8) == 0 -> B5 and falls through when at(=[a0+96]:8) != 0 -> B1.
  The `bne` branch at 0x10f4 is taken when (v0(=[a0+4]) & 0x8) != 0 -> B5 and falls through when (v0(=[a0+4]) & 0x8) == 0 -> B2.
  The `beq` branch at 0x110c is taken when v0(=ret(gthread_find)) == 0 -> B7 and falls through when v0(=ret(gthread_find)) != 0 -> B3.
  The `beq` branch at 0x1118 is taken when a1(=[ret(gthread_find)+16]:8) == 0 -> B6 and falls through when a1(=[ret(gthread_find)+16]:8) != 0 -> B4.
  The return at 0x1160 has v0 = ?.

- `rrmInvalidateRN` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1168 (n64).
  It occupies 192 bytes.
  The `sd` at 0x11a4 stores 8 bytes from s0 to [a0+40]:8 +0x48 (value a0).
  The `sh` at 0x11fc stores 2 bytes from a4 to a1 (arg1 at entry) +0x6.
  The `jal` at 0x1198 calls `psema` with a0=[a0+40]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11b8 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x11d8 calls `mutex_spinlock` with a0=a1+104, a1=?, a2=?, a3=?.
  The `jal` at 0x1208 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=one of -0x2, 0x0, a3=?.
  The `beq` branch at 0x118c is taken when at(=[[a0+40]:8+72]:8) == a0 -> B3 and falls through when at(=[[a0+40]:8+72]:8) != a0 -> B1.
  The `beq` branch at 0x11b0 is taken when v0(=[[a0+40]:8+104]) == 0 -> B3 and falls through when v0(=[[a0+40]:8+104]) != 0 -> B2.
  The `bne` branch at 0x11c8 is taken when a0(=[[a0+40]:8+104]) != 0 -> B2 and falls through when a0(=[[a0+40]:8+104]) == 0 -> B3.
  The return at 0x1220 has v0 = ?.

- `RRM_InvalidateRN` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1228 (n64).
  It occupies 396 bytes.
  The `sw` at 0x1320 stores 4 bytes from t0 to a2 (arg2 at entry) +0x10 (value 0x1).
  The `sw` at 0x1330 stores 4 bytes from t1 to a2 (arg2 at entry) +0xc.
  The `sw` at 0x1344 stores 4 bytes from a6 to a2 (arg2 at entry) +0x8.
  The `jal` at 0x128c calls `invalidate_pane` with a0=[a2+8], a1=[a2+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3), a6=0xff.
  The `jal` at 0x12ac calls `clip2pane` with a0=[a2+4], a1=a0 at entry (arg0), a2=?, a3=?, a6=ret(invalidate_pane).
  The `jalr` at 0x12e0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=[ret(clip2pane)+20], a3=0xff, a5=[[a0+32]:8+144]:8.
  The `jal` at 0x1314 calls `validate_pane_buffer` with a0=?, a1=a0 at entry (arg0), a2=ret(?), a3=?, a6=0x2.
  The `jal` at 0x1340 calls `copyout` with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x14, a3=?.
  The `jal` at 0x1370 calls `rrmInvalidateRN` with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=0x10, a3=?, a6=0x2, a7=[a0+72]:8.
  The `jalr` at 0x138c calls `(unknown callee)` with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1394 calls `rrmUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x124c is taken when a6(=0xff) == at(=(0xff | [a2+8])) -> B3 and falls through when a6(=0xff) != at(=(0xff | [a2+8])) -> B1.
  The `beq` branch at 0x1274 is taken when (v0(=[a2+8]) & v1(=-0xcb)) == 0 -> B5 and falls through when (v0(=[a2+8]) & v1(=-0xcb)) != 0 -> B4.
  The `beq` branch at 0x12a0 is taken when (a0(=[a2+8]) & 0x8) == 0 -> B17 and falls through when (a0(=[a2+8]) & 0x8) != 0 -> B6.
  The `beq` branch at 0x12b4 is taken when v0(=ret(clip2pane)) == 0 -> B19 and falls through when v0(=ret(clip2pane)) != 0 -> B7.
  The `beq` branch at 0x12c0 is taken when a1(=[a0+72]:8) == 0 -> B23 and falls through when a1(=[a0+72]:8) != 0 -> B8.
  The `beq` branch at 0x12d0 is taken when a3(=0xff) == a4(?) -> B15 and falls through when a3(=0xff) != a4(?) -> B9.
  The `bltz` branch at 0x12e8 is taken when v0(=ret(?)) < 0 (signed) -> B24 and falls through when v0(=ret(?)) >= 0 (signed) -> B10.
  The `blez` branch at 0x12f0 is taken when v0(=ret(?)) <= 0 (signed) -> B15 and falls through when v0(=ret(?)) > 0 (signed) -> B11.
  The `bne` branch at 0x12f8 is taken when v0(=ret(?)) != a6(=0x2) -> B14 and falls through when v0(=ret(?)) == a6(=0x2) -> B12.
  The `bne` branch at 0x1304 is taken when a7(=[a0+72]:8) != 0 -> B21 and falls through when a7(=[a0+72]:8) == 0 -> B13.
  The `beq` branch at 0x1348 is taken when v0(=ret(copyout)) == 0 -> B20 and falls through when v0(=ret(copyout)) != 0 -> B18.
  The `bne` branch at 0x1378 is taken when v0(=ret(rrmInvalidateRN)) != 0 -> B16 and falls through when v0(=ret(rrmInvalidateRN)) == 0 -> B22.
  The return at 0x1264 has v0 = ?.

- `rrmUnbindProcFromRN` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x13b4 (n64).
  It occupies 176 bytes.
  The `sd` at 0x1400 stores 8 bytes from zero to a0 (arg0 at entry) +0x48 (value 0x0).
  The `jal` at 0x13f4 calls `rrmDoUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1410 calls `GfxListWriterUnlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1430 calls `curthreadhandle` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1438 calls `gthread_find` with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x1454 calls `GfxListWriterLock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x13cc is taken when at(=[a0+72]:8) == 0 -> B7 and falls through when at(=[a0+72]:8) != 0 -> B1.
  The `beq` branch at 0x13dc is taken when v0(=[a0+96]:8) == 0 -> B3 and falls through when v0(=[a0+96]:8) != 0 -> B2.
  The `beq` branch at 0x13ec is taken when (v1(=[a0+4]) & 0x8) == 0 -> B8 and falls through when (v1(=[a0+4]) & 0x8) != 0 -> B3.
  The `beq` branch at 0x13fc is taken when s1(?) == 0 -> B6 and falls through when s1(?) != 0 -> B4.
  The `beq` branch at 0x1408 is taken when a0(?) == 0 -> B7 and falls through when a0(?) != 0 -> B5.
  The `beq` branch at 0x1440 is taken when v0(=ret(gthread_find)) == 0 -> B3 and falls through when v0(=ret(gthread_find)) != 0 -> B9.
  The `beq` branch at 0x144c is taken when a0(=[ret(gthread_find)+16]:8) == 0 -> B3 and falls through when a0(=[ret(gthread_find)+16]:8) != 0 -> B10.
  The return at 0x1428 has v0 = one of -0x1, 0x0.

- `RRM_BindProcToRN` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1464 (n64).
  It occupies 240 bytes.
  The `sd` at 0x14a8 stores 8 bytes from s0 to a1 (arg1 at entry) +0x40 (value a0).
  The `sb` at 0x14b0 stores 1 bytes from v0 to a1 (arg1 at entry) +0x54 (value 0x1).
  The `sd` at 0x14b8 stores 8 bytes from s1 to a0 (arg0 at entry) +0x48 (value a1).
  The `sb` at 0x1514 stores 1 bytes from zero to [a0+72]:8 +0x54 (value 0x0).
  The `jal` at 0x14bc calls `valusema` with a0=[a0+40]:8+56, a1=?, a2=?, a3=?.
  The `jal` at 0x14cc calls `force_resched` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1504 calls `psema` with a0=(sym(RRMcall_sema) + ([[a0+72]:8+2]:2 << 0x4)), a1=0x19, a2=([[a0+72]:8+2]:2 << 0x4), a3=a3 at entry (arg3).
  The `jal` at 0x151c calls `rrmCloseRN` with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=?, a3=[[a0+72]:8+56]:8.
  The `jal` at 0x152c calls `rrmUnbindProcFromRN` with a0=a0 at entry (arg0), a1=?, a2=?, a3=[[a0+72]:8+56]:8.
  The `jal` at 0x1534 calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1544 calls `rrmUnbindProcFromRN` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1484 is taken when (at(=[a0+4]) & 0x8) == 0 -> B13 and falls through when (at(=[a0+4]) & 0x8) != 0 -> B1.
  The `beq` branch at 0x1490 is taken when s2(=[a0+72]:8) == 0 -> B3 and falls through when s2(=[a0+72]:8) != 0 -> B2.
  The `bne` branch at 0x1498 is taken when a1 != s2(=[a0+72]:8) -> B9 and falls through when a1 == s2(=[a0+72]:8) -> B3.
  The `beq` branch at 0x14a0 is taken when s1(=a1) == 0 -> B5 and falls through when s1(=a1) != 0 -> B4.
  The `beq` branch at 0x14c4 is taken when v0(=ret(valusema)) == 0 -> B8 and falls through when v0(=ret(valusema)) != 0 -> B7.
  The `bne` branch at 0x1510 is taken when a3(=[[a0+72]:8+56]:8) != 0 -> B11 and falls through when a3(=[[a0+72]:8+56]:8) == 0 -> B10.
  The return at 0x14e8 has v0 = 0x0.

- `RRM_BindRNToReadAndClip` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1554 (n64).
  It occupies 768 bytes.
  The `sh` at 0x15e0 stores 2 bytes from v0 to a1 (arg1 at entry) +0x4.
  The `sw` at 0x15f4 stores 4 bytes from zero to a1 (arg1 at entry) +0x88 (value 0x0).
  The `sd` at 0x15f8 stores 8 bytes from v0 to a1 (arg1 at entry) +0x78 (value ret(bind_pane)).
  The `sw` at 0x160c stores 4 bytes from zero to a1 (arg1 at entry) +0x8c (value 0x0).
  The `sd` at 0x1614 stores 8 bytes from v0 to a1 (arg1 at entry) +0x80 (value ret(bind_pane)).
  The `sh` at 0x1624 stores 2 bytes from a2 to a1 (arg1 at entry) +0x4.
  The `sw` at 0x16b8 stores 4 bytes from v1 to a1 (arg1 at entry) +0x18 (value [a2+8]).
  The `sw` at 0x16e8 stores 4 bytes from a1 to a1 (arg1 at entry) +0x18 (value [a2+8]).
  The `sw` at 0x170c stores 4 bytes from a5 to a1 (arg1 at entry) +0x14 (value [a2+4]).
  The `sw` at 0x1734 stores 4 bytes from v0 to a2 (arg2 at entry) +0xc (value [[a1+120]:8]).
  The `sw` at 0x1744 stores 4 bytes from v1 to a2 (arg2 at entry) +0x10 (value [[a1+128]:8]).
  The `sw` at 0x1770 stores 4 bytes from v0 to a2 (arg2 at entry) +0x10 (value [[a1+120]:8]).
  The `sd` at 0x17a4 stores 8 bytes from v0 to a1 (arg1 at entry) +0x80 (value ret(bind_pane)).
  The `sw` at 0x17a8 stores 4 bytes from zero to a1 (arg1 at entry) +0x8c (value 0x0).
  The `sh` at 0x17c0 stores 2 bytes from a2 to a1 (arg1 at entry) +0x4 (value ([a1+4]:2 | 0x40)).
  The `sw` at 0x1810 stores 4 bytes from a7 to a1 (arg1 at entry) +0x88 (value [[a1+120]:8+8]).
  The `sw` at 0x181c stores 4 bytes from a6 to a1 (arg1 at entry) +0x8c (value [[a1+128]:8+8]).
  The `jal` at 0x1598 calls `validate_my_pane_buffer` with a0=[a1+120]:8, a1=a0 at entry (arg0), a2=[a1+4]:2, a3=a3 at entry (arg3), a6=[a2+4].
  The `jal` at 0x15a4 calls `unbind_pane` with a0=[a1+120]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x15c0 calls `validate_my_pane_buffer` with a0=[a1+128]:8, a1=a0 at entry (arg0), a2=[a1+4]:2, a3=?.
  The `jal` at 0x15cc calls `unbind_pane` with a0=[a1+128]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x15ec calls `bind_pane` with a0=a0 at entry (arg0), a1=[a2+4], a2=?, a3=?, a6=[a2+4].
  The `jal` at 0x16d8 calls `GfxMessage` with a0=sp-112, a1=?, a2=?, a3=?.
  The `jal` at 0x177c calls `copyout` with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x14, a3=?, a5=[a2+4], a6=[a2+4], a7=[a2+8].
  The `jal` at 0x179c calls `bind_pane` with a0=a0 at entry (arg0), a1=[a2+8], a2=?, a3=?.
  The `jal` at 0x17c4 calls `RRM_CheckValidFault` with a0=a0 at entry (arg0), a1=ret(bind_pane), a2=?, a3=?, a6=[[a0+40]:8+8]:8.
  The `jalr` at 0x17f0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[a0+40]:8+8]:8, a3=[a1+120]:8+96, a4=[[a0+32]:8+80]:8.
  The `jal` at 0x1824 calls `rrmUnMapGfx` with a0=a0 at entry (arg0), a1=ret(bind_pane), a2=?, a3=?.
  The `jal` at 0x183c calls `GfxMessage` with a0=sp-112, a1=[a2+8], a2=?, a3=?, a7=[[a0+8]:8+8]:8.
  The `beq` branch at 0x1584 is taken when a6(=[a2+4]) == 0 -> B23 and falls through when a6(=[a2+4]) != 0 -> B1.
  The `beq` branch at 0x1590 is taken when a0(=[a1+120]:8) == 0 -> B5 and falls through when a0(=[a1+120]:8) != 0 -> B2.
  The `beq` branch at 0x15b4 is taken when (a2(=[a1+4]:2) & 0x40) == 0 -> B4 and falls through when (a2(=[a1+4]:2) & 0x40) != 0 -> B3.
  The `bne` branch at 0x1604 is taken when v1(=[a2+4]) != a1(=[a2+8]) -> B29 and falls through when v1(=[a2+4]) == a1(=[a2+8]) -> B6.
  The `beq` branch at 0x1630 is taken when (a4(?) & 0x2) == 0 -> B34 and falls through when (a4(?) & 0x2) != 0 -> B8.
  The `beq` branch at 0x1640 is taken when (a5(=[ret(bind_pane)+12]:2) & 0x40) == 0 -> B34 and falls through when (a5(=[ret(bind_pane)+12]:2) & 0x40) != 0 -> B9.
  The `beq` branch at 0x1650 is taken when a6(=[[a0+40]:8+8]:8) == s0(=a1) -> B30 and falls through when a6(=[[a0+40]:8+8]:8) != s0(=a1) -> B10.
  The `beq` branch at 0x1660 is taken when a7(=[[a0+8]:8+8]:8) == 0 -> B28 and falls through when a7(=[[a0+8]:8+8]:8) != 0 -> B12.
  The `beq` branch at 0x1694 is taken when t0(=[a2+4]) == a1(=[a2+8]) -> B17 and falls through when t0(=[a2+4]) != a1(=[a2+8]) -> B13.
  The `beq` branch at 0x16ac is taken when s3(=one of 0x0, 0x1) == 0 -> B36 and falls through when s3(=one of 0x0, 0x1) != 0 -> B14.
  The `bne` branch at 0x16d0 is taken when s3(=one of 0x0, 0x1) != 0 -> B18 and falls through when s3(=one of 0x0, 0x1) == 0 -> B16.
  The `beq` branch at 0x1700 is taken when s3(=one of 0x0, 0x1) == 0 -> B16 and falls through when s3(=one of 0x0, 0x1) != 0 -> B18.
  The `beq` branch at 0x1718 is taken when (a4(=[a0+4]) & 0x8) == 0 -> B23 and falls through when (a4(=[a0+4]) & 0x8) != 0 -> B20.
  The `beq` branch at 0x1730 is taken when a6(=[a2+4]) == a7(=[a2+8]) -> B25 and falls through when a6(=[a2+4]) != a7(=[a2+8]) -> B21.
  The `bne` branch at 0x1740 is taken when s4(=a3) != 0 -> B26 and falls through when s4(=a3) == 0 -> B22.
  The `beq` branch at 0x176c is taken when s4(=a3) == 0 -> B22 and falls through when s4(=a3) != 0 -> B26.
  The `beq` branch at 0x1784 is taken when v0(=ret(copyout)) == 0 -> B23 and falls through when v0(=ret(copyout)) != 0 -> B27.
  The `bltz` branch at 0x17cc is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) -> B35 and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed) -> B31.
  The `beq` branch at 0x17fc is taken when v0(=ret(?)) == a5(=-0x1) -> B37 and falls through when v0(=ret(?)) != a5(=-0x1) -> B32.
  The return at 0x1764 has v0 = one of 0x0, 0xe, 0x16.

- `RRM_BindRNToClip` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1854 (n64).
  It occupies 156 bytes.
  The `sw` at 0x18dc stores 4 bytes from a3 to a2 (arg2 at entry) +0x8.
  The `jal` at 0x1890 calls `RRM_BindRNToReadAndClip` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-64, a3=0x0.
  The `jal` at 0x18d8 calls `copyout` with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0xc, a3=?, a4=a2 at entry (arg2).
  The `beq` branch at 0x18a0 is taken when (a1(=[a0+4]) & 0x8) == 0 -> B2 and falls through when (a1(=[a0+4]) & 0x8) != 0 -> B1.
  The `beq` branch at 0x18a8 is taken when v0(=ret(RRM_BindRNToReadAndClip)) == 0 -> B4 and falls through when v0(=ret(RRM_BindRNToReadAndClip)) != 0 -> B2.
  The `beq` branch at 0x18e0 is taken when v0(=ret(copyout)) == 0 -> B3 and falls through when v0(=ret(copyout)) != 0 -> B5.
  The return at 0x18c0 has v0 = ?.

- `RRM_UnbindRNFromClip` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x18f0 (n64).
  It occupies 36 bytes.
  The `jal` at 0x18fc calls `pane_cleanup` with a0=[a2+4], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x190c has v0 = 0x0.

- `RRM_OpenRN` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1914 (n64).
  It occupies 732 bytes.
  The `sw` at 0x1950 stores 4 bytes from a0 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]+1).
  The `sw` at 0x1990 stores 4 bytes from a1 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sd` at 0x19a4 stores 8 bytes from s1 to [a0+40]:8 +0x48 (value a0).
  The `sb` at 0x1a9c stores 1 bytes from zero to table(sym(RRMrn)) +0x52 (value 0x0).
  The `sd` at 0x1aac stores 8 bytes from s1 to table(sym(RRMrn)) +0x40 (value a0).
  The `sd` at 0x1ab0 stores 8 bytes from s1 to table(sym(RRMrn)) +0x38 (value a0).
  The `sw` at 0x1abc stores 4 bytes from a5 to table(sym(RRMrn)) +0x0.
  The `sd` at 0x1ac4 stores 8 bytes from a4 to table(sym(RRMrn)) +0x48 (value [a0+40]:8).
  The `sh` at 0x1ad0 stores 2 bytes from a2 to table(sym(RRMrn)) +0x6 (value 0x34).
  The `sh` at 0x1ad8 stores 2 bytes from a3 to table(sym(RRMrn)) +0x4 (value ([a2+4] | 0xb5)).
  The `sh` at 0x1b0c stores 2 bytes from a5 to table(sym(RRMrn)) +0x50 (value -0x1).
  The `sd` at 0x1b10 stores 8 bytes from zero to table(sym(RRMrn)) +0x70 (value 0x0).
  The `sd` at 0x1b24 stores 8 bytes from zero to table(sym(RRMrn)) +0x8 (value 0x0).
  The `sh` at 0x1b30 stores 2 bytes from a4 to table(sym(RRMrn)) +0x6.
  The `sb` at 0x1b84 stores 1 bytes from s3 to table(sym(RRMrn)) +0x52 (value 0x1).
  The `sw` at 0x1b90 stores 4 bytes from a4 to ? (base unknown).
  The `sb` at 0x1ba4 stores 1 bytes from zero to table(sym(RRMrn)) +0x54 (value 0x0).
  The `sw` at 0x1bb8 stores 4 bytes from a5 to a4 (arg4 at entry) +0x0 (value entry(sym(RRMrn))).
  The `sh` at 0x1bcc stores 2 bytes from t0 to table(sym(RRMrn)) +0x4.
  The `sd` at 0x1bd8 stores 8 bytes from s2 to ret(kern_malloc) +0x0 (value table(sym(RRMrn))).
  The `sd` at 0x1be0 stores 8 bytes from t2 to ret(kern_malloc) +0x8 (value [a0+64]:8).
  The `sd` at 0x1be4 stores 8 bytes from v0 to a0 (arg0 at entry) +0x40 (value ret(kern_malloc)).
  The `sb` at 0x1bec stores 1 bytes from s3 to table(sym(RRMrn)) +0x54 (value 0x1).
  The `jal` at 0x1998 calls `psema` with a0=[a0+40]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19b8 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x19e4 calls `psema` with a0=sym(.bss), a1=0x19, a2=-0x1, a3=?.
  The `jal` at 0x1a54 calls `vsema` with a0=sym(.bss), a1=[sym(rrm_maxrn)], a2=?, a3=?, a6=sym(RRMrn).
  The `jal` at 0x1a90 calls `bzero` with a0=table(sym(RRMrn)), a1=0xb0, a2=entry(sym(RRMrn)), a3=?, a6=sym(RRMrn).
  The `jal` at 0x1aa0 calls `vsema` with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x1b34 calls `init_sv` with a0=table(sym(RRMrn))+48, a1=0x0, a2=sym(.rodata), a3=-0x1, a5=-0x1, a7=-0x5.
  The `jal` at 0x1b48 calls `spinlock_init` with a0=table(sym(RRMrn))+104, a1=sym(.rodata), a2=?, a3=?.
  The `jalr` at 0x1b5c calls `(unknown callee)` with a0=?, a1=table(sym(RRMrn)), a2=[[a0+32]:8+64]:8, a3=?.
  The `jal` at 0x1b6c calls `sv_destroy` with a0=table(sym(RRMrn))+48, a1=?, a2=?, a3=?.
  The `jal` at 0x1b74 calls `spinlock_destroy` with a0=table(sym(RRMrn))+104, a1=?, a2=?, a3=?.
  The `jal` at 0x1bd0 calls `kern_malloc` with a0=0x10, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1940 is taken when at(=[[a0+40]:8+72]:8) != a0 -> B4 and falls through when at(=[[a0+40]:8+72]:8) == a0 -> B1.
  The `beq` branch at 0x195c is taken when v1(=[a2]) == a2(=-0x1) -> B7 and falls through when v1(=[a2]) != a2(=-0x1) -> B3.
  The `beq` branch at 0x19b0 is taken when a2(=[[a0+40]:8+104]) == 0 -> B1 and falls through when a2(=[[a0+40]:8+104]) != 0 -> B5.
  The `bne` branch at 0x19c8 is taken when a4(=[[a0+40]:8+104]) != 0 -> B5 and falls through when a4(=[[a0+40]:8+104]) == 0 -> B6.
  The `bne` branch at 0x19fc is taken when a1(=[sym(rrm_maxrn)]) < 0x2 (signed) -> B13 and falls through when a1(=[sym(rrm_maxrn)]) >= 0x2 (signed) -> B8.
  The `beq` branch at 0x1a2c is taken when s3(=0x1) == v1(?) -> B11 and falls through when s3(=0x1) != v1(?) -> B10.
  The `bne` branch at 0x1a44 is taken when s0(?) < a1(=[sym(rrm_maxrn)]) (signed) -> B9 and falls through when s0(?) >= a1(=[sym(rrm_maxrn)]) (signed) -> B11.
  The `bne` branch at 0x1a4c is taken when a1(=[sym(rrm_maxrn)]) != s0(?) -> B14 and falls through when a1(=[sym(rrm_maxrn)]) == s0(?) -> B12.
  The `beq` branch at 0x1a64 is taken when a1(=[sym(rrm_maxrn)]) == s3(=0x1) -> B12 and falls through when a1(=[sym(rrm_maxrn)]) != s3(=0x1) -> B14.
  The `beq` branch at 0x1af0 is taken when a1(=[[a0+8]:8+8]:8) == s1(=a0) -> B22 and falls through when a1(=[[a0+8]:8+8]:8) != s1(=a0) -> B15.
  The `beq` branch at 0x1afc is taken when (a1(=[table(sym(RRMrn))+4]:2) & 0x2) == 0 -> B22 and falls through when (a1(=[table(sym(RRMrn))+4]:2) & 0x2) != 0 -> B16.
  The `beq` branch at 0x1b64 is taken when v0(=ret(?)) == 0 -> B19 and falls through when v0(=ret(?)) != 0 -> B18.
  The `beq` branch at 0x1b9c is taken when (a3(=[a0+4]) & 0x8) == 0 -> B23 and falls through when (a3(=[a0+4]) & 0x8) != 0 -> B20.
  The return at 0x198c has v0 = one of 0x0, 0xc, 0x16.

- `rrmCloseRN` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1bf0 (n64).
  It occupies 796 bytes.
  The `sd` at 0x1bfc stores 8 bytes from zero to a1 (arg1 at entry) +0x38 (value 0x0).
  The `sd` at 0x1c3c stores 8 bytes from s1 to a1 (arg1 at entry) +0x40 (value a0).
  The `sw` at 0x1c58 stores 4 bytes from a4 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]+1).
  The `sd` at 0x1cc8 stores 8 bytes from v0 to [a0+40]:8 +0xa8.
  The `sd` at 0x1ccc stores 8 bytes from v0 to ? (base unknown).
  The `sd` at 0x1cd0 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0x1d04 stores 8 bytes from v0 to ? (base unknown).
  The `sd` at 0x1d08 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sh` at 0x1d38 stores 2 bytes from t2 to a1 (arg1 at entry) +0x0.
  The `sd` at 0x1d54 stores 8 bytes from zero to a1 (arg1 at entry) +0x78 (value 0x0).
  The `sd` at 0x1d58 stores 8 bytes from zero to a1 (arg1 at entry) +0x80 (value 0x0).
  The `sb` at 0x1d70 stores 1 bytes from t9 to a1 (arg1 at entry) +0x52 (value 0x1).
  The `sd` at 0x1d80 stores 8 bytes from zero to [a0+40]:8 +0x8 (value 0x0).
  The `sd` at 0x1da0 stores 8 bytes from zero to ([[a0+40]:8+24]:8 + ([a1+80]:2 << 0x3)) +0x0 (value 0x0).
  The `sd` at 0x1dc0 stores 8 bytes from v0 to [a1+96]:8 +0x58 (value [a1+88]:8).
  The `sd` at 0x1dd0 stores 8 bytes from a0 to [a1+88]:8 +0x60 (value [a1+96]:8).
  The `sw` at 0x1ddc stores 4 bytes from a3 to [a0+40]:8 +0x10 (value [[a0+40]:8+16]-1).
  The `sw` at 0x1df0 stores 4 bytes from a2 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sd` at 0x1e14 stores 8 bytes from v0 to [a0+40]:8 +0x88.
  The `sd` at 0x1e28 stores 8 bytes from s1 to [a0+40]:8 +0x48 (value a0).
  The `sd` at 0x1e68 stores 8 bytes from zero to a1 (arg1 at entry) +0x78 (value 0x0).
  The `sd` at 0x1e80 stores 8 bytes from t0 to a0 (arg0 at entry) +0x40 (value [[a0+64]:8+8]:8).
  The `sd` at 0x1eb0 stores 8 bytes from v0 to [a0+40]:8 +0x20 (value [a1+88]:8).
  The `sd` at 0x1eb8 stores 8 bytes from a0 to [a0+40]:8 +0x28 (value [a1+96]:8).
  The `sd` at 0x1ef4 stores 8 bytes from t8 to ? (base unknown).
  The `jalr` at 0x1c6c calls `(unknown callee)` with a0=[a0+40]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=[[a0+32]:8+72]:8, a4=[[a0+40]:8+80]+1.
  The `jal` at 0x1c80 calls `mutex_spinlock` with a0=[a0+40]:8+48, a1=?, a2=?, a3=?.
  The `jal` at 0x1d0c calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[[a0+40]:8+136]:8.
  The `jal` at 0x1d3c calls `unbind_pane` with a0=[a1+120]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1d5c calls `sv_destroy` with a0=a1+48, a1=?, a2=?, a3=?.
  The `jal` at 0x1d64 calls `spinlock_destroy` with a0=a1+104, a1=?, a2=?, a3=?.
  The `jal` at 0x1e1c calls `psema` with a0=[a0+40]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e3c calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x1e5c calls `unbind_pane` with a0=[a1+128]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1e84 calls `kern_free` with a0=?, a1=?, a2=?, a3=?, a7=[[a0+64]:8]:8.
  The `jal` at 0x1e94 calls `rrmUnbindProcFromRN` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+72]:8.
  The `jal` at 0x1efc calls `cmn_err` with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x1c14 is taken when (at(=[a0+4]) & 0x8) == 0 -> B5 and falls through when (at(=[a0+4]) & 0x8) != 0 -> B1.
  The `beq` branch at 0x1c20 is taken when v0(=[a1+84]:1) == 0 -> B4 and falls through when v0(=[a1+84]:1) != 0 -> B2.
  The `beq` branch at 0x1c2c is taken when v1(=[a1+64]:8) == a0 -> B4 and falls through when v1(=[a1+64]:8) != a0 -> B3.
  The `bne` branch at 0x1c48 is taken when a0(=[[a0+40]:8+72]:8) != s1(=a0) -> B41 and falls through when a0(=[[a0+40]:8+72]:8) == s1(=a0) -> B6.
  The `beq` branch at 0x1c78 is taken when a5(=[a0+72]:8) == s0(=a1) -> B48 and falls through when a5(=[a0+72]:8) != s0(=a1) -> B8.
  The `beq` branch at 0x1c94 is taken when a6(=[[a0+40]:8+168]:8) == 0 -> B16 and falls through when a6(=[[a0+40]:8+168]:8) != 0 -> B9.
  The `beq` branch at 0x1c9c is taken when s0(=a1) == a2(?) -> B12 and falls through when s0(=a1) != a2(?) -> B10.
  The `bne` branch at 0x1cac is taken when a7(?) != 0 -> B9 and falls through when a7(?) == 0 -> B11.
  The `bne` branch at 0x1cbc is taken when a6(=[[a0+40]:8+168]:8) != a2(?) -> B14 and falls through when a6(=[[a0+40]:8+168]:8) == a2(?) -> B13.
  The `beq` branch at 0x1cdc is taken when a6(=[[a0+40]:8+136]:8) == 0 -> B23 and falls through when a6(=[[a0+40]:8+136]:8) != 0 -> B18.
  The `beq` branch at 0x1ce4 is taken when s0(=a1) == a2(?) -> B39 and falls through when s0(=a1) != a2(?) -> B19.
  The `bne` branch at 0x1cf4 is taken when t0(?) != 0 -> B18 and falls through when t0(?) == 0 -> B20.
  The `beq` branch at 0x1d1c is taken when (t1(=[a0+4]) & 0x8) == 0 -> B45 and falls through when (t1(=[a0+4]) & 0x8) != 0 -> B24.
  The `beq` branch at 0x1d34 is taken when a0(=[a1+120]:8) == 0 -> B29 and falls through when a0(=[a1+120]:8) != 0 -> B26.
  The `bne` branch at 0x1d4c is taken when t3(=[a1+120]:8) != a0(=[a1+128]:8) -> B44 and falls through when t3(=[a1+120]:8) == a0(=[a1+128]:8) -> B27.
  The `bne` branch at 0x1d78 is taken when t8(=[[a0+40]:8+8]:8) != s0(=a1) -> B31 and falls through when t8(=[[a0+40]:8+8]:8) == s0(=a1) -> B30.
  The `beq` branch at 0x1d8c is taken when v0(=[a1+80]:2) == at(=-0x1) -> B37 and falls through when v0(=[a1+80]:2) != at(=-0x1) -> B32.
  The `beq` branch at 0x1dac is taken when v1(=[[a0+8]:8+8]:8) == s1(=a0) -> B37 and falls through when v1(=[[a0+8]:8+8]:8) != s1(=a0) -> B33.
  The `beq` branch at 0x1db8 is taken when a0(=[a1+96]:8) == 0 -> B50 and falls through when a0(=[a1+96]:8) != 0 -> B34.
  The `beq` branch at 0x1dc8 is taken when v0(=[a1+88]:8) == 0 -> B51 and falls through when v0(=[a1+88]:8) != 0 -> B36.
  The `bne` branch at 0x1e08 is taken when a6(=[[a0+40]:8+136]:8) != a2(?) -> B21 and falls through when a6(=[[a0+40]:8+136]:8) == a2(?) -> B40.
  The `beq` branch at 0x1e34 is taken when a4(=[[a0+40]:8+104]) == 0 -> B6 and falls through when a4(=[[a0+40]:8+104]) != 0 -> B42.
  The `bne` branch at 0x1e4c is taken when a6(=[[a0+40]:8+104]) != 0 -> B42 and falls through when a6(=[[a0+40]:8+104]) == 0 -> B43.
  The `bne` branch at 0x1e74 is taken when a7(=[[a0+64]:8]:8) != s0(=a1) -> B52 and falls through when a7(=[[a0+64]:8]:8) == s0(=a1) -> B46.
  The `beq` branch at 0x1e9c is taken when v0(=ret(rrmUnbindProcFromRN)) == 0 -> B8 and falls through when v0(=ret(rrmUnbindProcFromRN)) != 0 -> B49.
  The `beq` branch at 0x1ec0 is taken when t1(=[[a0+64]:8+8]:8) == 0 -> B47 and falls through when t1(=[[a0+64]:8+8]:8) != 0 -> B53.
  The `beq` branch at 0x1ecc is taken when t2(?) == s0(=a1) -> B56 and falls through when t2(?) != s0(=a1) -> B54.
  The `bne` branch at 0x1edc is taken when t3(?) != 0 -> B53 and falls through when t3(?) == 0 -> B55.
  The return at 0x1e00 has v0 = 0x0.

- `RRM_CloseRN` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1f0c (n64).
  It occupies 32 bytes.
  The `jal` at 0x1f14 calls `rrmCloseRN` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1f24 has v0 = 0x0.

- `RRM_Exit` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1f2c (n64).
  It occupies 572 bytes.
  The `sw` at 0x2044 stores 4 bytes from zero to [a0+40]:8 +0x54 (value 0x0).
  The `sw` at 0x2050 stores 4 bytes from zero to [a0+40]:8 +0x50 (value 0x0).
  The `sd` at 0x2070 stores 8 bytes from zero to [a0+40]:8 +0x48 (value 0x0).
  The `sb` at 0x2114 stores 1 bytes from zero to [a0+72]:8 +0x54 (value 0x0).
  The `jal` at 0x1f94 calls `psema` with a0=table(sym(RRMcall_sema)), a1=0x19, a2=?, a3=?.
  The `jal` at 0x1fa0 calls `rrmCloseRN` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1fb0 calls `vsema` with a0=table(sym(RRMcall_sema)), a1=?, a2=?, a3=?.
  The `jal` at 0x204c calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2064 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[[a0+32]:8+192]:8, a2=?, a3=?.
  The `jal` at 0x2078 calls `vsema` with a0=[a0+40]:8+56, a1=[a0+40]:8, a2=?, a3=?.
  The `jal` at 0x2080 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x20b8 calls `psema` with a0=(sym(RRMcall_sema) + ([[[a0+64]:8]:8+2]:2 << 0x4)), a1=0x19, a2=?, a3=?.
  The `jal` at 0x20c4 calls `rrmCloseRN` with a0=a0 at entry (arg0), a1=[[a0+64]:8]:8, a2=?, a3=?.
  The `jal` at 0x20d4 calls `vsema` with a0=(sym(RRMcall_sema) + ([[[a0+64]:8]:8+2]:2 << 0x4)), a1=?, a2=?, a3=?.
  The `jal` at 0x2104 calls `psema` with a0=(sym(RRMcall_sema) + ([[a0+72]:8+2]:2 << 0x4)), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x211c calls `rrmCloseRN` with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x212c calls `rrmUnbindProcFromRN` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2134 calls `vsema` with a0=(sym(RRMcall_sema) + ([[a0+72]:8+2]:2 << 0x4)), a1=?, a2=?, a3=?.
  The `jal` at 0x2144 calls `cmn_err` with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2158 calls `cmn_err` with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x1f50 is taken when (at(=[a0+4]) & 0x8) == 0 -> B16 and falls through when (at(=[a0+4]) & 0x8) != 0 -> B1.
  The `beq` branch at 0x1f5c is taken when s1(=[a0+72]:8) == 0 -> B3 and falls through when s1(=[a0+72]:8) != 0 -> B2.
  The `bne` branch at 0x1f68 is taken when v0(=[[a0+72]:8+56]:8) != a0 -> B20 and falls through when v0(=[[a0+72]:8+56]:8) == a0 -> B3.
  The `bne` branch at 0x1f78 is taken when v0(=[sym(rrm_maxrn)]) < 0x2 (signed) -> B9 and falls through when v0(=[sym(rrm_maxrn)]) >= 0x2 (signed) -> B4.
  The `bne` branch at 0x1fa8 is taken when v0(=ret(rrmCloseRN)) != 0 -> B25 and falls through when v0(=ret(rrmCloseRN)) == 0 -> B6.
  The `beq` branch at 0x1fcc is taken when s1(?) >= v0(=[sym(rrm_maxrn)]) (signed) -> B9 and falls through when s1(?) < v0(=[sym(rrm_maxrn)]) (signed) -> B7.
  The `beq` branch at 0x1fec is taken when t8(?) == s0(=a0) -> B5 and falls through when t8(?) != s0(=a0) -> B8.
  The `bne` branch at 0x2004 is taken when s1(?) < v0(=[sym(rrm_maxrn)]) (signed) -> B7 and falls through when s1(?) >= v0(=[sym(rrm_maxrn)]) (signed) -> B9.
  The `beq` branch at 0x2010 is taken when v0(=[a0+40]:8) == 0 -> B12 and falls through when v0(=[a0+40]:8) != 0 -> B11.
  The `beq` branch at 0x201c is taken when t8(=[[a0+40]:8+72]:8) == s0(=a0) -> B13 and falls through when t8(=[[a0+40]:8+72]:8) != s0(=a0) -> B12.
  The `beq` branch at 0x205c is taken when a1(=[[a0+32]:8+192]:8) == 0 -> B15 and falls through when a1(=[[a0+32]:8+192]:8) != 0 -> B14.
  The `beq` branch at 0x2094 is taken when v0(=[a0+64]:8) == 0 -> B9 and falls through when v0(=[a0+64]:8) != 0 -> B17.
  The `bne` branch at 0x20cc is taken when v0(=ret(rrmCloseRN)) != 0 -> B24 and falls through when v0(=ret(rrmCloseRN)) == 0 -> B18.
  The `bne` branch at 0x20e0 is taken when v0(=[a0+64]:8) != 0 -> B17 and falls through when v0(=[a0+64]:8) == 0 -> B19.
  The `bne` branch at 0x2110 is taken when t9(=[[a0+72]:8+56]:8) != 0 -> B22 and falls through when t9(=[[a0+72]:8+56]:8) == 0 -> B21.
  The return at 0x203c has v0 = 0x0.

- `rrmGetResourceMask` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2168 (n64).
  It occupies 8 bytes.
  The return at 0x2168 has v0 = [a0+4]:2.

- `rrmSuspend` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2170 (n64).
  It occupies 936 bytes.
  The `sw` at 0x21d8 stores 4 bytes from a2 to ret(gthread_find) +0x8 (value ([ret(gthread_find)+8] | 0x8)).
  The `sw` at 0x2200 stores 4 bytes from a0 to [ret(gthread_find)+24]:8 +0xc (value [[ret(gthread_find)+24]:8+12]+1).
  The `sw` at 0x227c stores 4 bytes from a2 to ret(gthread_find) +0x8 (value ([ret(gthread_find)+8] | 0x1)).
  The `sw` at 0x229c stores 4 bytes from a4 to ? (base unknown).
  The `sw` at 0x22b4 stores 4 bytes from a5 to ret(gthread_find) +0x8.
  The `sw` at 0x2378 stores 4 bytes from t8 to ? (base unknown).
  The `sd` at 0x2398 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sw` at 0x2400 stores 4 bytes from a3 to ? (base unknown).
  The `sw` at 0x2408 stores 4 bytes from v0 to ? (base unknown) (value ret(?)).
  The `sw` at 0x240c stores 4 bytes from zero to ? (base unknown) (value 0x0).
  The `sw` at 0x2420 stores 4 bytes from a4 to ? (base unknown).
  The `sd` at 0x2440 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0x24c4 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sw` at 0x24f0 stores 4 bytes from a2 to [ret(gthread_find)+24]:8 +0xc (value [[ret(gthread_find)+24]:8+12]-1).
  The `jal` at 0x2184 calls `gthread_find` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x223c calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x22c0 calls `mutex_spinunlock` with a0=[ret(gthread_find)+24]:8+16, a1=?, a2=?, a3=?.
  The `jal` at 0x22c8 calls `GfxListReaderUnlock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x230c calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x232c calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2374 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x238c calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x23a0 calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x23a8 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x23b8 calls `GfxListReaderLock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=[ret(gthread_find)+8], a3=?.
  The `jal` at 0x241c calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2434 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2448 calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2450 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x2460 calls `GfxListReaderUnlock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2474 calls `mutex_spinlock` with a0=[ret(gthread_find)+24]:8+16, a1=?, a2=?, a3=?.
  The `jal` at 0x24a0 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x24b8 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x24cc calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x24d4 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x2508 calls `cmn_err` with a0=0x5, a1=sym(.rodata), a2=ret(gthread_find), a3=?.
  The `bne` branch at 0x21a8 is taken when (a2(=[ret(gthread_find)+8]) & 0x1) != 0 -> B53 and falls through when (a2(=[ret(gthread_find)+8]) & 0x1) == 0 -> B1.
  The `beq` branch at 0x21b0 is taken when v0(=ret(gthread_find)) == 0 -> B26 and falls through when v0(=ret(gthread_find)) != 0 -> B2.
  The `beq` branch at 0x21bc is taken when a0(=[ret(gthread_find)+16]:8) == 0 -> B26 and falls through when a0(=[ret(gthread_find)+16]:8) != 0 -> B3.
  The `bne` branch at 0x21c8 is taken when v0(=[ret(gthread_find)+24]:8) != 0 -> B38 and falls through when v0(=[ret(gthread_find)+24]:8) == 0 -> B4.
  The `beq` branch at 0x21e0 is taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0 -> B22 and falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0 -> B6.
  The `beq` branch at 0x2204 is taken when s4(?) == 0 -> B28 and falls through when s4(?) != 0 -> B9.
  The `beq` branch at 0x2210 is taken when s2(?) == 0 -> B11 and falls through when s2(?) != 0 -> B10.
  The `beq` branch at 0x221c is taken when a1(?) == s0(?) -> B30 and falls through when a1(?) != s0(?) -> B11.
  The `beq` branch at 0x2228 is taken when v0(?) == 0 -> B13 and falls through when v0(?) != 0 -> B12.
  The `beq` branch at 0x2248 is taken when s0(?) == 0 -> B21 and falls through when s0(?) != 0 -> B15.
  The `beq` branch at 0x2250 is taken when s3(?) == 0 -> B8 and falls through when s3(?) != 0 -> B16.
  The `beq` branch at 0x225c is taken when v0(?) == 0 -> B8 and falls through when v0(?) != 0 -> B17.
  The `bne` branch at 0x2268 is taken when a4(?) != s0(?) -> B8 and falls through when a4(?) == s0(?) -> B18.
  The `beq` branch at 0x2278 is taken when s5(=one of 0x0, 0x1) == 0 -> B8 and falls through when s5(=one of 0x0, 0x1) != 0 -> B19.
  The `bne` branch at 0x2284 is taken when (a2(=([ret(gthread_find)+8] | 0x1)) & 0x4) != 0 -> B7 and falls through when (a2(=([ret(gthread_find)+8] | 0x1)) & 0x4) == 0 -> B20.
  The `beq` branch at 0x22b0 is taken when v0(=[ret(gthread_find)+24]:8) == 0 -> B26 and falls through when v0(=[ret(gthread_find)+24]:8) != 0 -> B23.
  The `beq` branch at 0x22b8 is taken when s5(=one of 0x0, 0x1) == 0 -> B25 and falls through when s5(=one of 0x0, 0x1) != 0 -> B24.
  The `beq` branch at 0x22f8 is taken when v0(?) == 0 -> B13 and falls through when v0(?) != 0 -> B29.
  The `beq` branch at 0x2338 is taken when t0(?) == 0 -> B41 and falls through when t0(?) != 0 -> B31.
  The `beq` branch at 0x2344 is taken when t1(?) == 0 -> B33 and falls through when t1(?) != 0 -> B32.
  The `beq` branch at 0x234c is taken when v0(=ret(?)) == 0 -> B43 and falls through when v0(=ret(?)) != 0 -> B33.
  The `beq` branch at 0x2358 is taken when t2(?) == 0 -> B13 and falls through when t2(?) != 0 -> B34.
  The `beq` branch at 0x2360 is taken when t3(?) == 0 -> B13 and falls through when t3(?) != 0 -> B35.
  The `beq` branch at 0x2384 is taken when a1(?) == 0 -> B37 and falls through when a1(?) != 0 -> B36.
  The `beq` branch at 0x23cc is taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0 -> B46 and falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0 -> B39.
  The `beq` branch at 0x23dc is taken when (a2(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0 -> B47 and falls through when (a2(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0 -> B40.
  The `beq` branch at 0x23ec is taken when v0(=ret(?)) == 0 -> B49 and falls through when v0(=ret(?)) != 0 -> B42.
  The `beq` branch at 0x242c is taken when a1(?) == 0 -> B45 and falls through when a1(?) != 0 -> B44.
  The `beq` branch at 0x2484 is taken when (a2(=[ret(gthread_find)+8]) & 0x2) == 0 -> B52 and falls through when (a2(=[ret(gthread_find)+8]) & 0x2) != 0 -> B48.
  The `beq` branch at 0x24b0 is taken when a1(?) == 0 -> B51 and falls through when a1(?) != 0 -> B50.
  The return at 0x22ec has v0 = ?.

- `rrmResume` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2518 (n64).
  It occupies 1196 bytes.
  The `sw` at 0x265c stores 4 bytes from a1 to ret(gthread_find) +0x8.
  The `sw` at 0x267c stores 4 bytes from a4 to ? (base unknown).
  The `sd` at 0x277c stores 8 bytes from t0 to ? (base unknown).
  The `sd` at 0x28d0 stores 8 bytes from s0 to ? (base unknown).
  The `sd` at 0x2910 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sw` at 0x294c stores 4 bytes from a2 to ret(gthread_find) +0x8.
  The `sw` at 0x29a0 stores 4 bytes from a2 to [ret(gthread_find)+24]:8 +0xc (value [[ret(gthread_find)+24]:8+12]+1).
  The `jal` at 0x252c calls `rt_pin_thread` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2540 calls `gthread_find` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x25dc calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2694 calls `mutex_spinunlock` with a0=[ret(gthread_find)+24]:8+16, a1=?, a2=[ret(gthread_find)+24]:8, a3=?.
  The `jal` at 0x269c calls `GfxListReaderUnlock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x26a4 calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x26fc calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?, a5=[ret(gthread_find)+24]:8.
  The `jalr` at 0x2744 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2768 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2780 calls `GfxListReaderLock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x27b0 calls `rrmDoUnMapGfx` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x27d8 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x27e8 calls `rt_unpin_thread` with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jalr` at 0x2830 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2848 calls `mutex_spinlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2894 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x28b4 calls `cpsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28d4 calls `rrmDoUnMapGfx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28ec calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2904 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2918 calls `vsema` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2920 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x2928 calls `rrmDoUnMapGfx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2954 calls `mutex_spinlock` with a0=[ret(gthread_find)+24]:8+16, a1=?, a2=?, a3=-0x3.
  The `jal` at 0x2978 calls `GfxListReaderUnlock` with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2980 calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x29b4 calls `(unknown callee)` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x256c is taken when v0(=ret(gthread_find)) == 0 -> B43 and falls through when v0(=ret(gthread_find)) != 0 -> B1.
  The `beq` branch at 0x2578 is taken when a0(=[ret(gthread_find)+16]:8) == 0 -> B43 and falls through when a0(=[ret(gthread_find)+16]:8) != 0 -> B2.
  The `bne` branch at 0x2584 is taken when v0(=[ret(gthread_find)+24]:8) != 0 -> B37 and falls through when v0(=[ret(gthread_find)+24]:8) == 0 -> B3.
  The `beq` branch at 0x2590 is taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0 -> B22 and falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0 -> B5.
  The `beq` branch at 0x25b8 is taken when a5(?) == 0 -> B9 and falls through when a5(?) != 0 -> B7.
  The `beq` branch at 0x25c8 is taken when (t8(?) & 0x3) == 0 -> B9 and falls through when (t8(?) & 0x3) != 0 -> B8.
  The `bne` branch at 0x25ec is taken when s2(=one of 0x0, 0x1) != 0 -> B12 and falls through when s2(=one of 0x0, 0x1) == 0 -> B11.
  The `beq` branch at 0x25f8 is taken when s0(?) == 0 -> B22 and falls through when s0(?) != 0 -> B13.
  The `beq` branch at 0x2608 is taken when ra(?) == 0 -> B11 and falls through when ra(?) != 0 -> B14.
  The `beq` branch at 0x2618 is taken when (at(?) & 0x8) == 0 -> B28 and falls through when (at(?) & 0x8) != 0 -> B15.
  The `beq` branch at 0x2628 is taken when (v0(?) & s6(?)) == 0 -> B35 and falls through when (v0(?) & s6(?)) != 0 -> B16.
  The `beq` branch at 0x2630 is taken when s4(?) == 0 -> B31 and falls through when s4(?) != 0 -> B17.
  The `beq` branch at 0x2640 is taken when (a1(=[ret(gthread_find)+8]) & 0x1) == 0 -> B6 and falls through when (a1(=[ret(gthread_find)+8]) & 0x1) != 0 -> B18.
  The `bne` branch at 0x2650 is taken when a2(?) != s0(?) -> B6 and falls through when a2(?) == s0(?) -> B19.
  The `beq` branch at 0x2658 is taken when s8(=one of 0x0, 0x1) == 0 -> B6 and falls through when s8(=one of 0x0, 0x1) != 0 -> B20.
  The `bne` branch at 0x2664 is taken when (a1(?) & 0x4) != 0 -> B6 and falls through when (a1(?) & 0x4) == 0 -> B21.
  The `beq` branch at 0x2684 is taken when a2(=[ret(gthread_find)+24]:8) == 0 -> B26 and falls through when a2(=[ret(gthread_find)+24]:8) != 0 -> B23.
  The `beq` branch at 0x268c is taken when s8(=one of 0x0, 0x1) == 0 -> B25 and falls through when s8(=one of 0x0, 0x1) != 0 -> B24.
  The `beq` branch at 0x26e0 is taken when a5(=[ret(gthread_find)+24]:8) == 0 -> B15 and falls through when a5(=[ret(gthread_find)+24]:8) != 0 -> B29.
  The `beq` branch at 0x26ec is taken when a6(?) == 0 -> B15 and falls through when a6(?) != 0 -> B30.
  The `beq` branch at 0x2718 is taken when (a1(?) & 0x1) == 0 -> B41 and falls through when (a1(?) & 0x1) != 0 -> B32.
  The `beq` branch at 0x2720 is taken when a1(?) == 0 -> B44 and falls through when a1(?) != 0 -> B33.
  The `bne` branch at 0x2730 is taken when a4(?) != s0(?) -> B40 and falls through when a4(?) == s0(?) -> B34.
  The `beq` branch at 0x2758 is taken when a6(?) == 0 -> B16 and falls through when a6(?) != 0 -> B36.
  The `beq` branch at 0x2790 is taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0 -> B67 and falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0 -> B38.
  The `bne` branch at 0x27a0 is taken when (t1(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0 -> B4 and falls through when (t1(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0 -> B39.
  The `beq` branch at 0x27c0 is taken when a2(?) == 0 -> B10 and falls through when a2(?) != 0 -> B42.
  The `beq` branch at 0x2804 is taken when t3(?) == 0 -> B69 and falls through when t3(?) != 0 -> B45.
  The `beq` branch at 0x2818 is taken when t9(?) == 0 -> B59 and falls through when t9(?) != 0 -> B47.
  The `beq` branch at 0x283c is taken when v0(?) == 0 -> B10 and falls through when v0(?) != 0 -> B50.
  The `beq` branch at 0x2868 is taken when a2(?) == 0 -> B54 and falls through when a2(?) != 0 -> B52.
  The `beq` branch at 0x2874 is taken when t9(?) == 0 -> B54 and falls through when t9(?) != 0 -> B53.
  The `beq` branch at 0x28a4 is taken when at(?) == s0(?) -> B46 and falls through when at(?) != s0(?) -> B55.
  The `bne` branch at 0x28ac is taken when s7(?) != a1(?) -> B58 and falls through when s7(?) == a1(?) -> B56.
  The `beq` branch at 0x28bc is taken when v0(=ret(cpsema)) == 0 -> B58 and falls through when v0(=ret(cpsema)) != 0 -> B57.
  The `beq` branch at 0x28e4 is taken when s7(?) == a1(?) -> B47 and falls through when s7(?) != a1(?) -> B60.
  The `beq` branch at 0x28fc is taken when a1(?) == 0 -> B62 and falls through when a1(?) != 0 -> B61.
  The `beq` branch at 0x2944 is taken when (a2(=[ret(gthread_find)+8]) & 0x2) == 0 -> B65 and falls through when (a2(=[ret(gthread_find)+8]) & 0x2) != 0 -> B64.
  The `bne` branch at 0x2968 is taken when (a1(=[ret(gthread_find)+8]) & 0x1) != 0 -> B4 and falls through when (a1(=[ret(gthread_find)+8]) & 0x1) == 0 -> B66.
  The return at 0x26d4 has v0 = ret(rt_unpin_thread).

- `rrmSetResourceMask` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x29c4 (n64).
  It occupies 192 bytes.
  The `sh` at 0x2a60 stores 2 bytes from s3 to a1 (arg1 at entry) +0x4 (value a2).
  The `jal` at 0x29f0 calls `mutex_spinlock` with a0=a1+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2a10 calls `pane_validmask` with a0=[a1+120]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2a20 calls `mutex_spinunlock` with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2a44 calls `rrmUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2a54 calls `mutex_spinlock` with a0=a1+104, a1=?, a2=?, a3=?.
  The `jal` at 0x2a64 calls `mutex_spinunlock` with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x2a08 is taken when (at(=[a1+4]:2) & 0x2) == 0 -> B2 and falls through when (at(=[a1+4]:2) & 0x2) != 0 -> B1.
  The `beq` branch at 0x2a3c is taken when (v0(?) & v1(?)) == 0 -> B4 and falls through when (v0(?) & v1(?)) != 0 -> B3.
  The return at 0x2a7c has v0 = ret(mutex_spinunlock).

- `RRM_ValidateSwapBuf` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2a84 (n64).
  It occupies 72 bytes.
  The `jal` at 0x2a90 calls `RRM_CheckValidFault` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2ab0 calls `validate_pane_swapbuf` with a0=[a2+4], a1=a0 at entry (arg0), a2=[a2+8], a3=?.
  The `bgez` branch at 0x2a98 is taken when v0(=ret(RRM_CheckValidFault)) >= 0 (signed) -> B2 and falls through when v0(=ret(RRM_CheckValidFault)) < 0 (signed) -> B1.
  The return at 0x2ac4 has v0 = ?.

- `rrmValidateBuffer` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2acc (n64).
  It occupies 68 bytes.
  The `sw` at 0x2af4 stores 4 bytes from v0 to [a0+120]:8 +0x1c (value ([[a0+120]:8+24] + [[a0+72]:8+164])).
  The `jal` at 0x2afc calls `validate_pane_buffer` with a0=[a0+120]:8, a1=[a0+64]:8, a2=[a0+72]:8, a3=a0 at entry (arg0).
  The `beq` branch at 0x2adc is taken when at(=[[a0+72]:8+160]) == 0 -> B2 and falls through when at(=[[a0+72]:8+160]) != 0 -> B1.
  The return at 0x2b08 has v0 = ret(validate_pane_buffer).

- `RRM_ValidateMessage` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2b10 (n64).
  It occupies 104 bytes.
  The `jal` at 0x2b28 calls `mutex_spinlock` with a0=a1+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2b3c calls `mutex_spinunlock` with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2b68 calls `rrmValidateBuffer` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2b50 is taken when (v0(?) & 0x20) == 0 -> B2 and falls through when (v0(?) & 0x20) != 0 -> B1.
  The return at 0x2b60 has v0 = one of 0x0, 0x16.

- `RRM_SetDisplayMode` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2b78 (n64).
  It occupies 196 bytes.
  The `jal` at 0x2b8c calls `RRM_CheckValidFault` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2c04 calls `GfxMessage` with a0=sp-96, a1=0x3, a2=one of 0xb, 0x8b, a3=?, a4=0xb, a5=[a0+8]:8.
  The `jal` at 0x2c1c calls `invalidate_pane` with a0=0x8, a1=[[a1+120]:8+4], a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x2c24 calls `rrmUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bltz` branch at 0x2b94 is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) -> B4 and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed) -> B1.
  The `bne` branch at 0x2ba4 is taken when at(=[[a0+8]:8+8]:8) != 0 -> B3 and falls through when at(=[[a0+8]:8+8]:8) == 0 -> B2.
  The return at 0x2bb4 has v0 = one of 0x0, 0xe.

- `RRM_LoadDisplayMode` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2c3c (n64).
  It occupies 336 bytes.
  The `sw` at 0x2ce4 stores 4 bytes from a4 to ret(clip2pane) +0x20 (value [a2+16]).
  The `sh` at 0x2cf8 stores 2 bytes from a3 to ret(clip2pane) +0x12.
  The `sw` at 0x2d20 stores 4 bytes from a6 to ([[a0+40]:8+96]:8 + ([a2+8] << 0x2)) +0x0 (value [a2+16]).
  The `jal` at 0x2c5c calls `clip2pane` with a0=[a2+4], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2cc8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a2+8], a2=[a2+12], a3=?.
  The `jal` at 0x2d40 calls `rrmInvalidateRN` with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=0x10, a3=?.
  The `jalr` at 0x2d74 calls `(unknown callee)` with a0=[a0+40]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x2d7c calls `rrmUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2c64 is taken when v0(=ret(clip2pane)) == 0 -> B4 and falls through when v0(=ret(clip2pane)) != 0 -> B1.
  The `beq` branch at 0x2c74 is taken when (at(=[ret(clip2pane)+12]:2) & 0x8) == 0 -> B4 and falls through when (at(=[ret(clip2pane)+12]:2) & 0x8) != 0 -> B2.
  The `bltz` branch at 0x2c98 is taken when a1(=[a2+8]) < 0 (signed) -> B6 and falls through when a1(=[a2+8]) >= 0 (signed) -> B5.
  The `bne` branch at 0x2cac is taken when a1(=[a2+8]) < v1(=[[a0+40]:8+88]) (signed) -> B7 and falls through when a1(=[a2+8]) >= v1(=[[a0+40]:8+88]) (signed) -> B6.
  The `bltz` branch at 0x2cd0 is taken when v0(=ret(?)) < 0 (signed) -> B16 and falls through when v0(=ret(?)) >= 0 (signed) -> B8.
  The `beq` branch at 0x2cd8 is taken when s2(=ret(clip2pane)) == 0 -> B10 and falls through when s2(=ret(clip2pane)) != 0 -> B9.
  The `beq` branch at 0x2d0c is taken when a1(=[a2+8]) >= a5(=[[a0+40]:8+88]) (signed) -> B12 and falls through when a1(=[a2+8]) < a5(=[[a0+40]:8+88]) (signed) -> B11.
  The `bne` branch at 0x2d28 is taken when a0(=ret(?)) != t1(=0x1) -> B15 and falls through when a0(=ret(?)) == t1(=0x1) -> B13.
  The `beq` branch at 0x2d34 is taken when s1(=[a0+72]:8) == 0 -> B17 and falls through when s1(=[a0+72]:8) != 0 -> B14.
  The `beq` branch at 0x2d48 is taken when v0(=ret(rrmInvalidateRN)) == 0 -> B18 and falls through when v0(=ret(rrmInvalidateRN)) != 0 -> B15.
  The return at 0x2c8c has v0 = ?.

- `RRM_GetDisplayModes` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2d8c (n64).
  It occupies 88 bytes.
  The `jal` at 0x2dc4 calls `copyout` with a0=[[a0+40]:8+96]:8, a1=[a2+8]:8, a2=([[a0+40]:8+88] << 0x2), a3=a3 at entry (arg3), a5=([[a0+40]:8+88] << 0x2), a6=a2 at entry (arg2), a7=[a0+40]:8.
  The `beq` branch at 0x2dac is taken when at(=[a2+16]) >= a5(=([[a0+40]:8+88] << 0x2)) (unsigned) -> B2 and falls through when at(=[a2+16]) < a5(=([[a0+40]:8+88] << 0x2)) (unsigned) -> B1.
  The `beq` branch at 0x2dcc is taken when v0(=ret(copyout)) == 0 -> B4 and falls through when v0(=ret(copyout)) != 0 -> B3.
  The return at 0x2db4 has v0 = one of 0x0, 0xe, 0x16.

- `rrmValidateMyRetrace` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2de4 (n64).
  It occupies 120 bytes.
  The `jal` at 0x2dfc calls `mutex_spinlock` with a0=a1+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2e2c calls `sv_wait` with a0=a1+48, a1=0x19, a2=a1+104, a3=ret(mutex_spinlock).
  The `jal` at 0x2e4c calls `mutex_spinunlock` with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x2e18 is taken when (at(?) & 0x10) == 0 -> B3 and falls through when (at(?) & 0x10) != 0 -> B1.
  The return at 0x2e44 has v0 = 0x0.

- `rrmValidateRetrace` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2e5c (n64).
  It occupies 80 bytes.
  The `sh` at 0x2e8c stores 2 bytes from at to a0 (arg0 at entry) +0x6 (value ([a0+6]:2 | 0x10)).
  The `jal` at 0x2e70 calls `mutex_spinlock` with a0=a0+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2e88 calls `sv_signal` with a0=a0+48, a1=?, a2=?, a3=?.
  The `jal` at 0x2e98 calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The return at 0x2ea4 has v0 = ret(mutex_spinunlock).

- `rrmAllocPcxid` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2eac (n64).
  It occupies 376 bytes.
  The `sh` at 0x2f40 stores 2 bytes from a7 to a1 (arg1 at entry) +0x50.
  The `sd` at 0x2f6c stores 8 bytes from a1 to [[a0+40]:8+32]:8 +0x60 (value a1).
  The `sd` at 0x2f74 stores 8 bytes from zero to a1 (arg1 at entry) +0x60 (value 0x0).
  The `sd` at 0x2f78 stores 8 bytes from a5 to a1 (arg1 at entry) +0x58 (value [[a0+40]:8+32]:8).
  The `sd` at 0x2f80 stores 8 bytes from a1 to [a0+40]:8 +0x20 (value a1).
  The `sd` at 0x2f94 stores 8 bytes from t0 to [a1+96]:8 +0x58 (value [a1+88]:8).
  The `sd` at 0x2fa8 stores 8 bytes from v0 to [a1+88]:8 +0x60 (value [a1+96]:8).
  The `sd` at 0x2fdc stores 8 bytes from v0 to [a0+40]:8 +0x28 (value [a1+96]:8).
  The `sd` at 0x2ff0 stores 8 bytes from a1 to [a0+40]:8 +0x28 (value a1).
  The `sd` at 0x2ff4 stores 8 bytes from a1 to [a0+40]:8 +0x20 (value a1).
  The `sd` at 0x2ff8 stores 8 bytes from zero to a1 (arg1 at entry) +0x58 (value 0x0).
  The `sd` at 0x2ffc stores 8 bytes from zero to a1 (arg1 at entry) +0x60 (value 0x0).
  The `sd` at 0x3010 stores 8 bytes from t3 to [a0+40]:8 +0x28 (value [[[a0+40]:8+40]:8+96]:8).
  The `sd` at 0x3014 stores 8 bytes from zero to [[[a0+40]:8+40]:8+96]:8 +0x58 (value 0x0).
  The `sh` at 0x3020 stores 2 bytes from t2 to a1 (arg1 at entry) +0x50 (value [[[a0+40]:8+40]:8+80]:2).
  The `beq` branch at 0x2eb8 is taken when a4(=[[a0+40]:8+20]) == at(=0x1) -> B19 and falls through when a4(=[[a0+40]:8+20]) != at(=0x1) -> B1.
  The `beq` branch at 0x2ec4 is taken when a7(=[a1+80]:2) == t0(=-0x1) -> B5 and falls through when a7(=[a1+80]:2) != t0(=-0x1) -> B2.
  The `bne` branch at 0x2ee0 is taken when a4(?) < 0x1 (unsigned) -> B15 and falls through when a4(?) >= 0x1 (unsigned) -> B3.
  The `blez` branch at 0x2ef8 is taken when a4(=[[a0+40]:8+20]) <= 0 (signed) -> B11 and falls through when a4(=[[a0+40]:8+20]) > 0 (signed) -> B6.
  The `beq` branch at 0x2f14 is taken when t1(?) == 0 -> B10 and falls through when t1(?) != 0 -> B8.
  The `bne` branch at 0x2f28 is taken when v0(?) < a4(=[[a0+40]:8+20]) (signed) -> B7 and falls through when v0(?) >= a4(=[[a0+40]:8+20]) (signed) -> B9.
  The `bne` branch at 0x2f58 is taken when a4(?) < 0x1 (unsigned) -> B20 and falls through when a4(?) >= 0x1 (unsigned) -> B13.
  The `beq` branch at 0x2f60 is taken when a4(?) == 0 -> B4 and falls through when a4(?) != 0 -> B14.
  The `beq` branch at 0x2f88 is taken when v0(=[a1+96]:8) == 0 -> B25 and falls through when v0(=[a1+96]:8) != 0 -> B16.
  The `beq` branch at 0x2f9c is taken when a0(=[a1+88]:8) == 0 -> B23 and falls through when a0(=[a1+88]:8) != 0 -> B17.
  The `beq` branch at 0x2fa4 is taken when a4(?) == 0 -> outside and falls through when a4(?) != 0 -> B18.
  The `beq` branch at 0x2fbc is taken when a7(?) == t0(=-0x1) -> B27 and falls through when a7(?) != t0(=-0x1) -> B21.
  The `beq` branch at 0x2fc8 is taken when t1(=[[a0+40]:8+32]:8) == 0 -> B26 and falls through when t1(=[[a0+40]:8+32]:8) != 0 -> B22.
  The `beq` branch at 0x2fd8 is taken when a4(?) == 0 -> outside and falls through when a4(?) != 0 -> B24.
  The return at 0x2ee8 has v0 = 0x0.
  The return at 0x2ef0 has v0 = ?.
  The return at 0x2f7c has v0 = ?.
  The return at 0x2fb4 has v0 = [[a0+40]:8+8]:8.
  The return at 0x2fe8 has v0 = 0x0.
  The return at 0x3000 has v0 = 0x0.

- `rrmValidateMyPcx` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3024 (n64).
  It occupies 596 bytes.
  The `sw` at 0x3088 stores 4 bytes from a4 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]+1).
  The `sw` at 0x30fc stores 4 bytes from t1 to ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0x8 (value [([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5))+8]+1).
  The `sd` at 0x310c stores 8 bytes from s0 to [a0+40]:8 +0x8 (value a1).
  The `sh` at 0x3124 stores 2 bytes from t8 to a1 (arg1 at entry) +0x6 (value ([a1+6]:2 | 0x1)).
  The `sw` at 0x3138 stores 4 bytes from t9 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sb` at 0x3144 stores 1 bytes from at to a1 (arg1 at entry) +0x53 (value 0x1).
  The `sd` at 0x3164 stores 8 bytes from zero to [a0+40]:8 +0x48 (value 0x0).
  The `sh` at 0x31e8 stores 2 bytes from s4 to ? (base unknown) (value -0x1).
  The `sd` at 0x322c stores 8 bytes from s0 to ([[a0+40]:8+24]:8 + ([a1+80]:2 << 0x3)) +0x0 (value a1).
  The `jal` at 0x304c calls `mutex_spinlock` with a0=a1+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3060 calls `mutex_spinunlock` with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x30b4 calls `rrmAllocPcxid` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a5=[a1+80]:2.
  The `jalr` at 0x30cc calls `(unknown callee)` with a0=[a0+40]:8, a1=a1 at entry (arg1), a2=[[a0+40]:8+8]:8, a3=?, a6=[[a0+32]:8+128]:8.
  The `jal` at 0x3108 calls `mutex_spinlock` with a0=a1+104, a1=?, a2=?, a3=?.
  The `jal` at 0x3120 calls `mutex_spinunlock` with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3140 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x3158 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[[a0+32]:8+192]:8, a2=?, a3=?.
  The `jal` at 0x316c calls `vsema` with a0=[a0+40]:8+56, a1=[a0+40]:8, a2=?, a3=?.
  The `jal` at 0x3174 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x31b0 calls `rrmAllocPcxid` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x31d4 calls `(unknown callee)` with a0=[a0+40]:8, a1=ret(rrmAllocPcxid), a2=a1 at entry (arg1), a3=[[a0+40]:8+8]:8, a6=[[a0+32]:8+120]:8.
  The `jalr` at 0x31f8 calls `(unknown callee)` with a0=[a0+40]:8, a1=0x0, a2=a1 at entry (arg1), a3=[[a0+40]:8+8]:8, a6=[[a0+32]:8+120]:8.
  The `jal` at 0x3234 calls `rrmInvalidateRN` with a0=a0 at entry (arg0), a1=[[a0+40]:8+8]:8, a2=0x1, a3=[[a0+40]:8+8]:8, a4=[[a0+40]:8+80]+1, a5=[a0+40]:8.
  The `jal` at 0x3260 calls `invalidate_pane` with a0=0x2, a1=[[a1+120]:8+4], a2=a0 at entry (arg0), a3=?, a5=[a1+80]:2.
  The `beq` branch at 0x3074 is taken when (at(?) & 0x1) == 0 -> B10 and falls through when (at(?) & 0x1) != 0 -> B1.
  The `beq` branch at 0x3094 is taken when a3(=[[a0+40]:8+8]:8) == 0 -> B3 and falls through when a3(=[[a0+40]:8+8]:8) != 0 -> B2.
  The `bne` branch at 0x309c is taken when a3(=[[a0+40]:8+8]:8) != s0(=a1) -> B18 and falls through when a3(=[[a0+40]:8+8]:8) == s0(=a1) -> B3.
  The `beq` branch at 0x30ac is taken when a5(=[a1+80]:2) == v0(=-0x1) -> B11 and falls through when a5(=[a1+80]:2) != v0(=-0x1) -> B5.
  The `beq` branch at 0x3134 is taken when s3(=one of 0x0, 0x1) == 0 -> B10 and falls through when s3(=one of 0x0, 0x1) != 0 -> B7.
  The `beq` branch at 0x3150 is taken when a1(=[[a0+32]:8+192]:8) == 0 -> B9 and falls through when a1(=[[a0+32]:8+192]:8) != 0 -> B8.
  The `beq` branch at 0x31a4 is taken when a2(=[a1+83]:1) == 0 -> B19 and falls through when a2(=[a1+83]:1) != 0 -> B12.
  The `beq` branch at 0x31c4 is taken when v0(=ret(rrmAllocPcxid)) == 0 -> B15 and falls through when v0(=ret(rrmAllocPcxid)) != 0 -> B14.
  The `beq` branch at 0x3214 is taken when v0(=[a1+80]:2) == t2(=-0x1) -> B6 and falls through when v0(=[a1+80]:2) != t2(=-0x1) -> B17.
  The `beq` branch at 0x324c is taken when (t8(=[a1+4]:2) & 0x2) == 0 -> B21 and falls through when (t8(=[a1+4]:2) & 0x2) != 0 -> B20.
  The return at 0x3198 has v0 = one of -0x1, 0x0.

- `RRM_ValidateClip` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3278 (n64).
  It occupies 256 bytes.
  The `sw` at 0x32ac stores 4 bytes from a2 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]+1).
  The `sw` at 0x3320 stores 4 bytes from a4 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sd` at 0x3334 stores 8 bytes from s0 to [a0+40]:8 +0x48 (value a0).
  The `jal` at 0x32cc calls `RRM_CheckValidFault` with a0=a0 at entry (arg0), a1=a0 at entry (arg0), a2=[[a0+40]:8+80]+1, a3=[[[a0+40]:8+8]:8+20].
  The `jal` at 0x32ec calls `validate_pane_clip` with a0=[a2+4], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x3328 calls `psema` with a0=[a0+40]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3348 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `bne` branch at 0x329c is taken when at(=[[a0+40]:8+72]:8) != a0 -> B10 and falls through when at(=[[a0+40]:8+72]:8) == a0 -> B1.
  The `beq` branch at 0x32b8 is taken when a1(=[[a0+40]:8+8]:8) == 0 -> B7 and falls through when a1(=[[a0+40]:8+8]:8) != 0 -> B3.
  The `bne` branch at 0x32c4 is taken when a3(=[[[a0+40]:8+8]:8+20]) != a0(=[a2+4]) -> B8 and falls through when a3(=[[[a0+40]:8+8]:8+20]) == a0(=[a2+4]) -> B4.
  The `bltz` branch at 0x32d4 is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) -> B13 and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed) -> B5.
  The `bne` branch at 0x32dc is taken when s2(=one of 0x0, 0x1) != 0 -> B9 and falls through when s2(=one of 0x0, 0x1) == 0 -> B6.
  The `beq` branch at 0x3340 is taken when a5(=[[a0+40]:8+104]) == 0 -> B1 and falls through when a5(=[[a0+40]:8+104]) != 0 -> B11.
  The `bne` branch at 0x3358 is taken when a7(=[[a0+40]:8+104]) != 0 -> B11 and falls through when a7(=[[a0+40]:8+104]) == 0 -> B12.
  The return at 0x331c has v0 = ?.

- `RRM_ValidFault` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3378 (n64).
  It occupies 880 bytes.
  The `sd` at 0x3450 stores 8 bytes from s0 to [a0+40]:8 +0x48 (value a0).
  The `jal` at 0x33fc calls `rrmValidateMyPcx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x341c calls `ddv_lock` with a0=[a0+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3434 calls `ddv_unlock` with a0=[a0+48]:8, a1=?, a2=[[a0+40]:8+72]:8, a3=?.
  The `jal` at 0x3444 calls `psema` with a0=[a0+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0x3484 calls `curproc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x348c calls `proc_pid` with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0x34a4 calls `cmn_err_tag` with a0=0x854, a1=0x4, a2=sym(.rodata), a3=ret(proc_pid).
  The `jal` at 0x34ac calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x34b8 calls `psignal` with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0x3508 calls `mutex_spinlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3534 calls `pane_validmask` with a0=?, a1=?, a2=?, a3=?, a5=[[a0+8]:8+8]:8.
  The `jal` at 0x354c calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3568 calls `rrmValidateMyRetrace` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3584 calls `validate_my_pane_resources` with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x359c calls `pane_validmask` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x35bc calls `validate_my_pane_resources` with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x35dc calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x3614 calls `mutex_spinlock` with a0=[a0+96]:8+16, a1=[a0+96]:8, a2=[[a0+40]:8+72]:8, a3=?.
  The `jalr` at 0x3648 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[[a0+32]:8+96]:8.
  The `jal` at 0x365c calls `mutex_spinunlock` with a0=[a0+96]:8+16, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3664 calls `ddv_unlock` with a0=[a0+48]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x3690 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[[a0+32]:8+96]:8.
  The `jal` at 0x36a8 calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x36b0 calls `proc_pid` with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0x36c4 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=ret(proc_pid), a3=?.
  The `jal` at 0x36cc calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x36d8 calls `psignal` with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `beq` branch at 0x33a0 is taken when (a2(=[a0+4]) & 0x20) == 0 -> B17 and falls through when (a2(=[a0+4]) & 0x20) != 0 -> B1.
  The `bne` branch at 0x33b0 is taken when a3(=[[a0+40]:8+72]:8) != s0(=a0) -> B14 and falls through when a3(=[[a0+40]:8+72]:8) == s0(=a0) -> B2.
  The `bne` branch at 0x33b8 is taken when a2(?) != 0 -> B11 and falls through when a2(?) == 0 -> B3.
  The `bne` branch at 0x33c8 is taken when v0(=[[a0+8]:8+8]:8) != 0 -> B21 and falls through when v0(=[[a0+8]:8+8]:8) == 0 -> B4.
  The `bne` branch at 0x33d8 is taken when v1(?) != 0 -> B35 and falls through when v1(?) == 0 -> B6.
  The `bne` branch at 0x33e8 is taken when a0(=[[a0+40]:8+72]:8) != s0(=a0) -> B13 and falls through when a0(=[[a0+40]:8+72]:8) == s0(=a0) -> B7.
  The `bne` branch at 0x33f0 is taken when a1(?) != 0 -> B10 and falls through when a1(?) == 0 -> B8.
  The `bltz` branch at 0x3404 is taken when v0(=ret(rrmValidateMyPcx)) < 0 (signed) -> B37 and falls through when v0(=ret(rrmValidateMyPcx)) >= 0 (signed) -> B9.
  The `bne` branch at 0x3414 is taken when a0(=[[a0+40]:8+72]:8) != s0(=a0) -> B14 and falls through when a0(=[[a0+40]:8+72]:8) == s0(=a0) -> B11.
  The `beq` branch at 0x342c is taken when a2(=[[a0+40]:8+72]:8) == s0(=a0) -> B40 and falls through when a2(=[[a0+40]:8+72]:8) != s0(=a0) -> B12.
  The `bne` branch at 0x345c is taken when a3(=[[a0+40]:8+104]) != 0 -> B38 and falls through when a3(=[[a0+40]:8+104]) == 0 -> B15.
  The `beq` branch at 0x3474 is taken when s1(=[a0+72]:8) == 0 -> B19 and falls through when s1(=[a0+72]:8) != 0 -> B18.
  The `bne` branch at 0x34e8 is taken when a3(?) != 0 -> B24 and falls through when a3(?) == 0 -> B22.
  The `beq` branch at 0x34f0 is taken when v0(=[[a0+8]:8+8]:8) == s0(=a0) -> B24 and falls through when v0(=[[a0+8]:8+8]:8) != s0(=a0) -> B23.
  The `bne` branch at 0x3500 is taken when (a4(?) & 0x2) != 0 -> B51 and falls through when (a4(?) & 0x2) == 0 -> B24.
  The `beq` branch at 0x3520 is taken when a5(=[[a0+8]:8+8]:8) == s0(=a0) -> B27 and falls through when a5(=[[a0+8]:8+8]:8) != s0(=a0) -> B25.
  The `beq` branch at 0x352c is taken when (s3(?) & 0x2) == 0 -> B28 and falls through when (s3(?) & 0x2) != 0 -> B26.
  The `bne` branch at 0x3540 is taken when (s3(?) & 0x40) != 0 -> B34 and falls through when (s3(?) & 0x40) == 0 -> B27.
  The `beq` branch at 0x3558 is taken when s3(?) == t0(?) -> B11 and falls through when s3(?) != t0(?) -> B29.
  The `bne` branch at 0x3560 is taken when t1(?) != 0 -> B31 and falls through when t1(?) == 0 -> B30.
  The `bne` branch at 0x3578 is taken when t2(=[[a0+40]:8+72]:8) != s0(=a0) -> B13 and falls through when t2(=[[a0+40]:8+72]:8) == s0(=a0) -> B32.
  The `bgez` branch at 0x358c is taken when v0(=ret(validate_my_pane_resources)) >= 0 (signed) -> B5 and falls through when v0(=ret(validate_my_pane_resources)) < 0 (signed) -> B33.
  The `bgez` branch at 0x35c4 is taken when v0(=ret(validate_my_pane_resources)) >= 0 (signed) -> B6 and falls through when v0(=ret(validate_my_pane_resources)) < 0 (signed) -> B36.
  The `bne` branch at 0x35ec is taken when t9(=[[a0+40]:8+104]) != 0 -> B38 and falls through when t9(=[[a0+40]:8+104]) == 0 -> B39.
  The `beq` branch at 0x3600 is taken when a1(=[a0+96]:8) == 0 -> B47 and falls through when a1(=[a0+96]:8) != 0 -> B41.
  The `bne` branch at 0x360c is taken when (v0(=[a0+4]) & 0x8) != 0 -> B47 and falls through when (v0(=[a0+4]) & 0x8) == 0 -> B42.
  The `beq` branch at 0x3624 is taken when (at(=[a0+4]) & 0x20) == 0 -> B44 and falls through when (at(=[a0+4]) & 0x20) != 0 -> B43.
  The `beq` branch at 0x3678 is taken when (v0(=[a0+4]) & 0x20) == 0 -> B50 and falls through when (v0(=[a0+4]) & 0x20) != 0 -> B48.
  The return at 0x34dc has v0 = ?.

- `RRM_CheckValidFault` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x36e8 (n64).
  It occupies 96 bytes.
  The `jal` at 0x3728 calls `RRM_ValidFault` with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=?, a4=[a0+4].
  The `beq` branch at 0x36f4 is taken when (a4(=[a0+4]) & 0x4) == 0 -> B3 and falls through when (a4(=[a0+4]) & 0x4) != 0 -> B1.
  The `beq` branch at 0x3700 is taken when a3(?) == 0 -> B5 and falls through when a3(?) != 0 -> B2.
  The `bne` branch at 0x3718 is taken when v0(=[[a0+8]:8+8]:8) != 0 -> B1 and falls through when v0(=[[a0+8]:8+8]:8) == 0 -> B4.
  The `bltz` branch at 0x3730 is taken when v0(=ret(RRM_ValidFault)) < 0 (signed) -> B7 and falls through when v0(=ret(RRM_ValidFault)) >= 0 (signed) -> B6.
  The return at 0x3708 has v0 = one of -0x1, 0x0.

- `rrmSwapWait` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3748 (n64).
  It occupies 240 bytes.
  The `sd` at 0x37c4 stores 8 bytes from a6 to a0 (arg0 at entry) +0xa8.
  The `sd` at 0x37d0 stores 8 bytes from s0 to ? (base unknown) (value a0).
  The `jal` at 0x3764 calls `mutex_spinlock` with a0=[a0+72]:8+48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x37cc calls `hold_nonfatalsig` with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0x37e4 calls `sv_wait_sig` with a0=a0+48, a1=0x1e, a2=?, a3=?.
  The `jal` at 0x37f4 calls `release_nonfatalsig` with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0x3818 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a7=[a0+72]:8+168.
  The `jal` at 0x3828 calls `release_nonfatalsig` with a0=sp-48, a1=?, a2=?, a3=?.
  The `beq` branch at 0x3784 is taken when at(=[[a0+72]:8+164]+1) >= t0(=[[a0+120]:8+28]) (unsigned) -> B9 and falls through when at(=[[a0+72]:8+164]+1) < t0(=[[a0+120]:8+28]) (unsigned) -> B1.
  The `beq` branch at 0x3790 is taken when a6(=[[a0+72]:8+168]:8) == 0 -> B6 and falls through when a6(=[[a0+72]:8+168]:8) != 0 -> B2.
  The `beq` branch at 0x37a8 is taken when a6(?) == 0 -> B6 and falls through when a6(?) != 0 -> B4.
  The `bne` branch at 0x37bc is taken when t1(?) < t0(=[[a0+120]:8+28]) (unsigned) -> B3 and falls through when t1(?) >= t0(=[[a0+120]:8+28]) (unsigned) -> B6.
  The `bltz` branch at 0x37ec is taken when v0(=ret(sv_wait_sig)) < 0 (signed) -> B10 and falls through when v0(=ret(sv_wait_sig)) >= 0 (signed) -> B7.
  The return at 0x3808 has v0 = one of -0x1, 0x0.

- `RRM_SwapBuf` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3838 (n64).
  It occupies 668 bytes.
  The `sw` at 0x38f8 stores 4 bytes from a3 to a1 (arg1 at entry) +0x1c (value [[a1+120]:8+20]).
  The `sh` at 0x3914 stores 2 bytes from a5 to [a1+120]:8 +0x12.
  The `sw` at 0x392c stores 4 bytes from a0 to a2 (arg2 at entry) +0x8 (value ([a2+8] | 0x4)).
  The `sw` at 0x3934 stores 4 bytes from a0 to [a1+120]:8 +0x20.
  The `sw` at 0x396c stores 4 bytes from a4 to ? (base unknown) (value [a2+8]).
  The `sw` at 0x397c stores 4 bytes from t0 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]+1).
  The `sw` at 0x39d4 stores 4 bytes from a5 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sw` at 0x39fc stores 4 bytes from a5 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sw` at 0x3a38 stores 4 bytes from t0 to ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0x14 (value [([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5))+20]+1).
  The `sw` at 0x3aa4 stores 4 bytes from a0 to a2 (arg2 at entry) +0x8.
  The `jal` at 0x3860 calls `rrmGetResourceMask` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x38a8 calls `rrmSwapWait` with a0=a1 at entry (arg1), a1=[[a1+120]:8+28], a2=?, a3=?.
  The `jal` at 0x38d4 calls `RRM_CheckValidFault` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x399c calls `invalidate_pane` with a0=0x4, a1=[a1+20], a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x39b8 calls `(unknown callee)` with a0=[a0+40]:8, a1=a1 at entry (arg1), a2=[a1+28], a3=[a2+4].
  The `jal` at 0x39dc calls `validate_pane_buffer` with a0=[a1+120]:8, a1=a0 at entry (arg0), a2=[a0+40]:8, a3=?, a5=[[a0+40]:8+80]-1.
  The `jal` at 0x3a10 calls `rrmUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3a40 calls `psema` with a0=sym(.bss), a1=0x19, a2=[a0+40]:8, a3=?, a7=[[a1+120]:8+160]:8.
  The `jal` at 0x3a70 calls `vsema` with a0=sym(.bss), a1=?, a2=?, a3=?, a6=[[a1+120]:8+160]:8.
  The `jal` at 0x3aa8 calls `vsema` with a0=sym(.bss), a1=?, a2=[a0+40]:8, a3=?, a5=[[a0+40]:8+80]-1, a7=[[a1+120]:8+160]:8.
  The `jal` at 0x3abc calls `rrmSetResourceMask` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(ret(rrmGetResourceMask) | 0x8), a3=?.
  The `beq` branch at 0x386c is taken when (v0(=ret(rrmGetResourceMask)) & 0x8) == 0 -> B32 and falls through when (v0(=ret(rrmGetResourceMask)) & 0x8) != 0 -> B1.
  The `beq` branch at 0x3878 is taken when v0(=[[a0+40]:8+160]) == 0 -> B7 and falls through when v0(=[[a0+40]:8+160]) != 0 -> B3.
  The `beq` branch at 0x3888 is taken when v1(=[[a1+120]:8+24]) == 0 -> B7 and falls through when v1(=[[a1+120]:8+24]) != 0 -> B4.
  The `beq` branch at 0x38a0 is taken when a0(=[[a0+40]:8+164]+1) >= a1(=[[a1+120]:8+28]) (unsigned) -> B7 and falls through when a0(=[[a0+40]:8+164]+1) < a1(=[[a1+120]:8+28]) (unsigned) -> B5.
  The `beq` branch at 0x38b0 is taken when v0(=ret(rrmSwapWait)) == 0 -> B7 and falls through when v0(=ret(rrmSwapWait)) != 0 -> B6.
  The `bltz` branch at 0x38dc is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) -> B33 and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed) -> B8.
  The `beq` branch at 0x38ec is taken when a1(=[[a1+120]:8+4]) == 0 -> B24 and falls through when a1(=[[a1+120]:8+4]) != 0 -> B9.
  The `beq` branch at 0x3904 is taken when (a2(=[a0+4]) & 0x8) == 0 -> B26 and falls through when (a2(=[a0+4]) & 0x8) != 0 -> B10.
  The `beq` branch at 0x3920 is taken when a4(=[[a1+120]:8+18]:2) == 0 -> B30 and falls through when a4(=[[a1+120]:8+18]:2) != 0 -> B11.
  The `beq` branch at 0x3944 is taken when a1(?) == a6(=0xff) -> B28 and falls through when a1(?) != a6(=0xff) -> B14.
  The `beq` branch at 0x3958 is taken when a1(?) >= a3(=[[a0+40]:8+88]) (signed) -> B16 and falls through when a1(?) < a3(=[[a0+40]:8+88]) (signed) -> B15.
  The `bne` branch at 0x3988 is taken when a7(=[[a1+120]:8+160]:8) != 0 -> B23 and falls through when a7(=[[a1+120]:8+160]:8) == 0 -> B17.
  The `beq` branch at 0x39cc is taken when v0(=ret(?)) == 0 -> B21 and falls through when v0(=ret(?)) != 0 -> B19.
  The `bne` branch at 0x39ec is taken when a6(=[[a1+120]:8+160]:8) != 0 -> B27 and falls through when a6(=[[a1+120]:8+160]:8) == 0 -> B20.
  The `bne` branch at 0x3a08 is taken when a7(=[[a1+120]:8+160]:8) != 0 -> B31 and falls through when a7(=[[a1+120]:8+160]:8) == 0 -> B22.
  The `beq` branch at 0x3a58 is taken when (a1(=[a0+4]) & 0x8) == 0 -> B9 and falls through when (a1(=[a0+4]) & 0x8) != 0 -> B25.
  The `bne` branch at 0x3a88 is taken when a2(=[[a1+120]:8+160]:8) != 0 -> B14 and falls through when a2(=[[a1+120]:8+160]:8) == 0 -> B29.
  The return at 0x38cc has v0 = ?.

- `rrmSwapUnGroup` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3ad4 (n64).
  It occupies 248 bytes.
  The `sd` at 0x3b00 stores 8 bytes from zero to a1 (arg1 at entry) +0xa0 (value 0x0).
  The `sd` at 0x3b1c stores 8 bytes from a5 to ? (base unknown) (value [a1+168]:8).
  The `sw` at 0x3b30 stores 4 bytes from v0 to [a1+160]:8 +0x0 (value [[a1+160]:8]-1).
  The `sd` at 0x3b80 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0x3bac stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sw` at 0x3bbc stores 4 bytes from a0 to [a1+160]:8 +0x4 (value [[a1+160]:8+4]-1).
  The `jal` at 0x3b48 calls `kern_free` with a0=[a1+160]:8, a1=?, a2=a2 at entry (arg2), a3=[a0+40]:8, a4=[[a0+40]:8+176], a6=[a1+160]:8.
  The `beq` branch at 0x3ae8 is taken when a5(=[[a1+160]:8+4]) == 0 -> B2 and falls through when a5(=[[a1+160]:8+4]) != 0 -> B1.
  The `beq` branch at 0x3af4 is taken when at(=[a1+176]:1) == 0 -> B17 and falls through when at(=[a1+176]:1) != 0 -> B2.
  The `beq` branch at 0x3b04 is taken when a5(=[a1+168]:8) == a1 -> B4 and falls through when a5(=[a1+168]:8) != a1 -> B3.
  The `bne` branch at 0x3b14 is taken when a0(?) != a1 -> B3 and falls through when a0(?) == a1 -> B4.
  The `bne` branch at 0x3b2c is taken when v0(=[[a1+160]:8]-1) != 0 -> B8 and falls through when v0(=[[a1+160]:8]-1) == 0 -> B5.
  The `beq` branch at 0x3b38 is taken when a4(=[[a0+40]:8+176]) == 0 -> B7 and falls through when a4(=[[a0+40]:8+176]) != 0 -> B6.
  The `beq` branch at 0x3b64 is taken when v1(?) == 0 -> B7 and falls through when v1(?) != 0 -> B11.
  The `bne` branch at 0x3b78 is taken when a0(?) != a6(=[a1+160]:8) -> B14 and falls through when a0(?) == a6(=[a1+160]:8) -> B13.
  The `beq` branch at 0x3b90 is taken when t0(?) == 0 -> B7 and falls through when t0(?) != 0 -> B15.
  The `bne` branch at 0x3ba4 is taken when t1(?) != a6(=[a1+160]:8) -> B10 and falls through when t1(?) == a6(=[a1+160]:8) -> B16.
  The return at 0x3b54 has v0 = ?.

- `RRM_SwapUnGroup` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3bcc (n64).
  It occupies 128 bytes.
  The `jal` at 0x3bec calls `psema` with a0=sym(.bss), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3bf8 calls `clip2pane` with a0=[a2], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x3c1c calls `vsema` with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x3c3c calls `rrmSwapUnGroup` with a0=a0 at entry (arg0), a1=ret(clip2pane), a2=?, a3=?.
  The `beq` branch at 0x3c00 is taken when v0(=ret(clip2pane)) == 0 -> B2 and falls through when v0(=ret(clip2pane)) != 0 -> B1.
  The `bne` branch at 0x3c0c is taken when a1(=[ret(clip2pane)+160]:8) != 0 -> B3 and falls through when a1(=[ret(clip2pane)+160]:8) == 0 -> B2.
  The return at 0x3c30 has v0 = one of 0x0, 0x2, 0xf.

- `RRM_SwapGroup` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3c4c (n64).
  It occupies 312 bytes.
  The `sd` at 0x3ce8 stores 8 bytes from a2 to ret(clip2pane) +0xa0.
  The `sb` at 0x3cf0 stores 1 bytes from zero to ret(clip2pane) +0xb0 (value 0x0).
  The `sd` at 0x3cf4 stores 8 bytes from a1 to ret(clip2pane) +0xa8 (value [ret(clip2pane)+168]:8).
  The `sd` at 0x3cf8 stores 8 bytes from s0 to ret(clip2pane) +0xa8 (value ret(clip2pane)).
  The `sw` at 0x3d0c stores 4 bytes from a1 to ? (base unknown).
  The `sd` at 0x3d58 stores 8 bytes from s0 to ret(clip2pane) +0xa8 (value ret(clip2pane)).
  The `jal` at 0x3c68 calls `clip2pane` with a0=[a2], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3c94 calls `clip2pane` with a0=[a2+4], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x3cd8 calls `psema` with a0=sym(.bss), a1=0x19, a2=?, a3=?.
  The `jal` at 0x3d08 calls `vsema` with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x3d30 calls `rrmSwapUnGroup` with a0=a0 at entry (arg0), a1=ret(clip2pane), a2=?, a3=?, a5=0x2.
  The `jal` at 0x3d5c calls `kern_malloc` with a0=0xc, a1=?, a2=?, a3=?.
  The `jal` at 0x3d6c calls `bzero` with a0=ret(kern_malloc), a1=0xc, a2=?, a3=?.
  The `beq` branch at 0x3c74 is taken when v0(=ret(clip2pane)) == 0 -> B11 and falls through when v0(=ret(clip2pane)) != 0 -> B1.
  The `bne` branch at 0x3c80 is taken when v0(=[ret(clip2pane)+160]:8) != 0 -> B10 and falls through when v0(=[ret(clip2pane)+160]:8) == 0 -> B2.
  The `beq` branch at 0x3c8c is taken when a0(=[a2+4]) == 0 -> B13 and falls through when a0(=[a2+4]) != 0 -> B3.
  The `beq` branch at 0x3c9c is taken when v0(=ret(clip2pane)) == 0 -> B12 and falls through when v0(=ret(clip2pane)) != 0 -> B4.
  The `beq` branch at 0x3cac is taken when a0(=[ret(clip2pane)+160]:8) == 0 -> B14 and falls through when a0(=[ret(clip2pane)+160]:8) != 0 -> B5.
  The `beq` branch at 0x3cbc is taken when a1(=[ret(clip2pane)+88]:8) == a2(=[ret(clip2pane)+88]:8) -> B7 and falls through when a1(=[ret(clip2pane)+88]:8) != a2(=[ret(clip2pane)+88]:8) -> B6.
  The return at 0x3d24 has v0 = ?.

- `RRM_SwapReady` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3d84 (n64).
  It occupies 360 bytes.
  The `sd` at 0x3e70 stores 8 bytes from v0 to ? (base unknown) (value [ret(clip2pane)+160]:8).
  The `sd` at 0x3e88 stores 8 bytes from s0 to [a0+40]:8 +0x48 (value a0).
  The `sd` at 0x3ee0 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `jal` at 0x3de0 calls `clip2pane` with a0=[a2], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x25.
  The `jal` at 0x3e7c calls `psema` with a0=[a0+40]:8+56, a1=0x219, a2=[a0+40]:8, a3=?, a5=0x6.
  The `jal` at 0x3e9c calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `bne` branch at 0x3db4 is taken when at(=[a2+4]) < v0(=[[a0+40]:8+176]) (unsigned) -> B3 and falls through when at(=[a2+4]) >= v0(=[[a0+40]:8+176]) (unsigned) -> B1.
  The `beq` branch at 0x3dec is taken when v0(=ret(clip2pane)) == 0 -> B12 and falls through when v0(=ret(clip2pane)) != 0 -> B4.
  The `beq` branch at 0x3df8 is taken when v1(=[ret(clip2pane)+88]:8) == s2(=[a0+40]:8) -> B6 and falls through when v1(=[ret(clip2pane)+88]:8) != s2(=[a0+40]:8) -> B5.
  The `beq` branch at 0x3e0c is taken when v0(=[ret(clip2pane)+160]:8) == 0 -> B22 and falls through when v0(=[ret(clip2pane)+160]:8) != 0 -> B7.
  The `bne` branch at 0x3e1c is taken when a0(=[[a0+40]:8+72]:8) != s0(=a0) -> B16 and falls through when a0(=[[a0+40]:8+72]:8) == s0(=a0) -> B8.
  The `beq` branch at 0x3e2c is taken when a1(=[a2+8]) == 0 -> B19 and falls through when a1(=[a2+8]) != 0 -> B9.
  The `beq` branch at 0x3e44 is taken when a2(?) == 0 -> B14 and falls through when a2(?) != 0 -> B10.
  The `bne` branch at 0x3e4c is taken when a2(?) != v0(=[ret(clip2pane)+160]:8) -> B13 and falls through when a2(?) == v0(=[ret(clip2pane)+160]:8) -> B11.
  The `beq` branch at 0x3e94 is taken when a6(=[[a0+40]:8+104]) == 0 -> B18 and falls through when a6(=[[a0+40]:8+104]) != 0 -> B17.
  The `bne` branch at 0x3eac is taken when t0(=[[a0+40]:8+104]) != 0 -> B17 and falls through when t0(=[[a0+40]:8+104]) == 0 -> B18.
  The `beq` branch at 0x3ecc is taken when t1(?) == v0(=[ret(clip2pane)+160]:8) -> B21 and falls through when t1(?) != v0(=[ret(clip2pane)+160]:8) -> B20.
  The return at 0x3dd4 has v0 = ?.

- `RRM_CushionBuffer` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3eec (n64).
  It occupies 164 bytes.
  The `sb` at 0x3f64 stores 1 bytes from a5 to ret(clip2pane) +0xb1 (value [[a0+40]:8+192]).
  The `sb` at 0x3f8c stores 1 bytes from zero to ret(clip2pane) +0xb1 (value 0x0).
  The `jal` at 0x3f04 calls `clip2pane` with a0=[a2], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x3f14 is taken when v0(=ret(clip2pane)) == 0 -> B2 and falls through when v0(=ret(clip2pane)) != 0 -> B1.
  The `beq` branch at 0x3f20 is taken when v1(=[ret(clip2pane)+88]:8) == s0(=[a0+40]:8) -> B4 and falls through when v1(=[ret(clip2pane)+88]:8) != s0(=[a0+40]:8) -> B2.
  The `beq` branch at 0x3f3c is taken when a5(=[[a0+40]:8+192]) == 0 -> B12 and falls through when a5(=[[a0+40]:8+192]) != 0 -> B5.
  The `beq` branch at 0x3f4c is taken when a0(=[a2+4]) == 0 -> B10 and falls through when a0(=[a2+4]) != 0 -> B6.
  The `beq` branch at 0x3f54 is taken when a4(=[ret(clip2pane)+177]:1) == 0 -> B8 and falls through when a4(=[ret(clip2pane)+177]:1) != 0 -> B7.
  The `beq` branch at 0x3f70 is taken when a4(=[ret(clip2pane)+177]:1) == 0 -> B13 and falls through when a4(=[ret(clip2pane)+177]:1) != 0 -> B11.
  The return at 0x3f30 has v0 = ?.

- `RRM_MGR_SwapBuf` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3f90 (n64).
  It occupies 196 bytes.
  The `sw` at 0x3fd8 stores 4 bytes from v1 to ([[a0+40]:8+96]:8 + ([a2+4] << 0x2)) +0x0 (value [a2+16]).
  The `sh` at 0x4040 stores 2 bytes from a5 to ret(clip2pane) +0x12.
  The `jal` at 0x3fa4 calls `RRM_CheckValidFault` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x3ff4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a2+8], a2=[a2+4], a3=[a2+16], a4=[a2+12].
  The `jal` at 0x4020 calls `clip2pane` with a0=[a2+8], a1=a0 at entry (arg0), a2=?, a3=?.
  The `bltz` branch at 0x3fac is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) -> B9 and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed) -> B1.
  The `beq` branch at 0x3fc4 is taken when a2(=[a2+4]) >= at(=[[a0+40]:8+88]) (signed) -> B3 and falls through when a2(=[a2+4]) < at(=[[a0+40]:8+88]) (signed) -> B2.
  The `beq` branch at 0x3ffc is taken when v0(=ret(?)) == 0 -> B6 and falls through when v0(=ret(?)) != 0 -> B4.
  The `beq` branch at 0x4028 is taken when v0(=ret(clip2pane)) == 0 -> B8 and falls through when v0(=ret(clip2pane)) != 0 -> B7.
  The return at 0x4014 has v0 = ?.

- `rrmValidateMGRSwapBufSTREAM` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4054 (n64).
  It occupies 76 bytes.
  The `jal` at 0x408c calls `GfxIntrMessage` with a0=sp-64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+8]:8.
  The `beq` branch at 0x4058 is taken when a0 == 0 -> B3 and falls through when a0 != 0 -> B1.
  The `beq` branch at 0x4064 is taken when a3(=[a0+8]:8) == 0 -> B4 and falls through when a3(=[a0+8]:8) != 0 -> B2.
  The return at 0x4098 has v0 = ?.

- `rrmValidateMGRSwapBuf` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x40a0 (n64).
  It occupies 72 bytes.
  The `jal` at 0x40d8 calls `streams_timeout` with a0=sym(streams_monp), a1=sym(rrmValidateMGRSwapBufSTREAM), a2=-0x64, a3=a0 at entry (arg0), a5=0x0, a7=a1 at entry (arg1).
  The `beq` branch at 0x40a8 is taken when a0 == 0 -> B2 and falls through when a0 != 0 -> B1.
  The `bne` branch at 0x40b4 is taken when at(=[a0+8]:8) != 0 -> B3 and falls through when at(=[a0+8]:8) == 0 -> B2.
  The return at 0x40bc has v0 = ?.

- `rrmGenlockNotifySTREAM` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x40e8 (n64).
  It occupies 72 bytes.
  The `jal` at 0x411c calls `GfxIntrMessage` with a0=sp-64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+8]:8.
  The `beq` branch at 0x40ec is taken when a0 == 0 -> B3 and falls through when a0 != 0 -> B1.
  The `beq` branch at 0x40f8 is taken when a3(=[a0+8]:8) == 0 -> B4 and falls through when a3(=[a0+8]:8) != 0 -> B2.
  The return at 0x4128 has v0 = ?.

- `rrmGenlockNotify` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4130 (n64).
  It occupies 72 bytes.
  The `jal` at 0x4168 calls `streams_timeout` with a0=sym(streams_monp), a1=sym(rrmGenlockNotifySTREAM), a2=-0x64, a3=a0 at entry (arg0), a5=0x0, a7=a1 at entry (arg1).
  The `beq` branch at 0x4138 is taken when a0 == 0 -> B2 and falls through when a0 != 0 -> B1.
  The `bne` branch at 0x4144 is taken when at(=[a0+8]:8) != 0 -> B3 and falls through when at(=[a0+8]:8) == 0 -> B2.
  The return at 0x414c has v0 = ?.

- `RRM_WaitForRetrace` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4178 (n64).
  It occupies 108 bytes.
  The `jal` at 0x418c calls `RRM_CheckValidFault` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x41a8 calls `rrmInvalidateRN` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x10, a3=?.
  The `jalr` at 0x41bc calls `(unknown callee)` with a0=[a0+40]:8, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x41c4 calls `rrmUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgez` branch at 0x4194 is taken when v0(=ret(RRM_CheckValidFault)) >= 0 (signed) -> B2 and falls through when v0(=ret(RRM_CheckValidFault)) < 0 (signed) -> B1.
  The return at 0x41dc has v0 = one of 0x0, 0xe.

- `RRM_SetSwapInterval` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x41e4 (n64).
  It occupies 40 bytes.
  The `sw` at 0x41f0 stores 4 bytes from a4 to a1 (arg1 at entry) +0x20 (value [a2+4]).
  The `sw` at 0x41fc stores 4 bytes from at to [a1+120]:8 +0x18 (value [a2+4]).
  The `bltz` branch at 0x41e8 is taken when a4(=[a2+4]) < 0 (signed) -> B2 and falls through when a4(=[a2+4]) >= 0 (signed) -> B1.
  The return at 0x4204 has v0 = one of 0x0, 0x16.

- `RRM_Message` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x420c (n64).
  It occupies 268 bytes.
  The `sw` at 0x4278 stores 4 bytes from a2 to a2 (arg2 at entry) +0x4.
  The `jal` at 0x4238 calls `mutex_spinlock` with a0=a1+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4248 calls `pane_validmask` with a0=[a1+120]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x425c calls `mutex_spinunlock` with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x4280 calls `rrmInvalidateRN` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x4294 calls `invalidate_pane` with a0=[a2+4], a1=[[a1+120]:8+4], a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x429c calls `rrmUnMapGfx` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x42e0 calls `bcopy` with a0=a2+16, a1=sp-96, a2=?, a3=?, a4=[a2+8]:1.
  The `jal` at 0x42e8 calls `GfxMessage` with a0=sp-112, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4274 is taken when (s8(=(ret(pane_validmask) | [a1+6]:2)) & a2(=[a2+4])) == 0 -> B2 and falls through when (s8(=(ret(pane_validmask) | [a1+6]:2)) & a2(=[a2+4])) != 0 -> B1.
  The `beq` branch at 0x42ac is taken when a2(=[[a0+8]:8+8]:8) == 0 -> B7 and falls through when a2(=[[a0+8]:8+8]:8) != 0 -> B3.
  The `bne` branch at 0x42c8 is taken when v0(=[a2+12]) < 0xb (signed) -> B5 and falls through when v0(=[a2+12]) >= 0xb (signed) -> B4.
  The return at 0x4308 has v0 = one of 0x0, 0xe.

- `RRM_SetVideoSync` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4318 (n64).
  It occupies 20 bytes.
  The `sw` at 0x4320 stores 4 bytes from at to [a0+40]:8 +0x80 (value [a2+4]).
  The return at 0x4324 has v0 = 0x0.

- `RRM_GetVideoSync` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x432c (n64).
  It occupies 68 bytes.
  The `sw` at 0x4348 stores 4 bytes from at to a2 (arg2 at entry) +0x4 (value [[a0+40]:8+128]).
  The `jal` at 0x434c calls `copyout` with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x8, a3=a3 at entry (arg3).
  The `beq` branch at 0x4354 is taken when v0(=ret(copyout)) == 0 -> B3 and falls through when v0(=ret(copyout)) != 0 -> B1.
  The return at 0x4360 has v0 = one of 0x0, 0xe.

- `RRM_WaitVideoSync` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4370 (n64).
  It occupies 108 bytes.
  The `sw` at 0x43c0 stores 4 bytes from v0 to a2 (arg2 at entry) +0xc (value [a1+152]).
  The `jal` at 0x438c calls `rrmWaitVideoSync` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a2+4], a3=[a2+8].
  The `jal` at 0x43bc calls `copyout` with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x10, a3=?.
  The `beq` branch at 0x4394 is taken when v0(=ret(rrmWaitVideoSync)) == 0 -> B2 and falls through when v0(=ret(rrmWaitVideoSync)) != 0 -> B1.
  The `beq` branch at 0x43c4 is taken when v0(=ret(copyout)) == 0 -> B4 and falls through when v0(=ret(copyout)) != 0 -> B3.
  The return at 0x43a0 has v0 = ?.

- `rrmWaitVideoSync` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x43dc (n64).
  It occupies 220 bytes.
  The `sd` at 0x443c stores 8 bytes from zero to a1 (arg1 at entry) +0xa0 (value 0x0).
  The `sw` at 0x4440 stores 4 bytes from s0 to a1 (arg1 at entry) +0x94 (value a3).
  The `sw` at 0x4444 stores 4 bytes from s3 to a1 (arg1 at entry) +0x90 (value a2).
  The `sd` at 0x4454 stores 8 bytes from a1 to a1 (arg1 at entry) +0xa0 (value [[a0+40]:8+136]:8).
  The `sd` at 0x4458 stores 8 bytes from s1 to [a0+40]:8 +0x88 (value a1).
  The `sd` at 0x44a0 stores 8 bytes from s1 to [a0+40]:8 +0x88 (value a1).
  The `jal` at 0x4434 calls `mutex_spinlock` with a0=[a0+40]:8+48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4464 calls `hold_nonfatalsig` with a0=sp-64, a1=[[a0+40]:8+136]:8, a2=?, a3=?.
  The `jal` at 0x4478 calls `sv_wait_sig` with a0=a1+48, a1=0x1e, a2=?, a3=ret(mutex_spinlock).
  The `jal` at 0x4488 calls `release_nonfatalsig` with a0=sp-64, a1=?, a2=?, a3=?.
  The `jal` at 0x44a4 calls `release_nonfatalsig` with a0=sp-64, a1=?, a2=?, a3=?.
  The `blez` branch at 0x4400 is taken when a2 <= 0 (signed) -> B3 and falls through when a2 > 0 (signed) -> B1.
  The `bltz` branch at 0x4408 is taken when a3 < 0 (signed) -> B3 and falls through when a3 >= 0 (signed) -> B2.
  The `bne` branch at 0x4410 is taken when at(?) != 0 -> B4 and falls through when at(?) == 0 -> B3.
  The `beq` branch at 0x444c is taken when a1(=[[a0+40]:8+136]:8) == 0 -> B8 and falls through when a1(=[[a0+40]:8+136]:8) != 0 -> B5.
  The `bltz` branch at 0x4480 is taken when v0(=ret(sv_wait_sig)) < 0 (signed) -> B9 and falls through when v0(=ret(sv_wait_sig)) >= 0 (signed) -> B7.
  The return at 0x4428 has v0 = one of -0x1, 0x0, 0x16.

- `rrmValidateVideoSync` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x44b8 (n64).
  It occupies 320 bytes.
  The `sd` at 0x4550 stores 8 bytes from a6 to a0 (arg0 at entry) +0x88.
  The `sd` at 0x455c stores 8 bytes from a6 to ? (base unknown).
  The `sw` at 0x456c stores 4 bytes from a5 to ? (base unknown).
  The `sd` at 0x45a4 stores 8 bytes from zero to ? (base unknown) (value 0x0).
  The `sd` at 0x45d0 stores 8 bytes from s2 to a0 (arg0 at entry) +0xa8.
  The `jal` at 0x44d8 calls `mutex_spinlock` with a0=a0+48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4568 calls `sv_signal` with a0=?, a1=[a0+136]:8, a2=?, a3=?.
  The `jal` at 0x45a0 calls `sv_signal` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x45d8 calls `mutex_spinunlock` with a0=a0+48, a1=?, a2=?, a3=?.
  The `bne` branch at 0x44f0 is taken when at(=[a0+136]:8) != 0 -> B3 and falls through when at(=[a0+136]:8) == 0 -> B1.
  The `beq` branch at 0x4508 is taken when v0(?) == 0 -> B10 and falls through when v0(?) != 0 -> B3.
  The `beq` branch at 0x4524 is taken when (v1(?) & 0x8) == 0 -> B12 and falls through when (v1(?) & 0x8) != 0 -> B4.
  The `bne` branch at 0x4538 is taken when a7(?) != a0(?) -> B2 and falls through when a7(?) == a0(?) -> B6.
  The `bne` branch at 0x4544 is taken when a1(=[a0+136]:8) != a4(?) -> B8 and falls through when a1(=[a0+136]:8) == a4(?) -> B7.
  The `bne` branch at 0x4570 is taken when s0(?) != 0 -> B3 and falls through when s0(?) == 0 -> B10.
  The `beq` branch at 0x4584 is taken when s0(=[a0+168]:8) == 0 -> B16 and falls through when s0(=[a0+168]:8) != 0 -> B11.
  The `beq` branch at 0x45a8 is taken when s0(?) == 0 -> B16 and falls through when s0(?) != 0 -> B14.
  The `beq` branch at 0x45c0 is taken when s3(=[a0+164]+1) >= t8(?) (unsigned) -> B13 and falls through when s3(=[a0+164]+1) < t8(?) (unsigned) -> B16.
  The return at 0x45f0 has v0 = ret(mutex_spinunlock).

- `RRM_MapClipToSwapbufID` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x45f8 (n64).
  It occupies 120 bytes.
  The `sw` at 0x462c stores 4 bytes from at to a2 (arg2 at entry) +0x8 (value [ret(clip2pane)+20]).
  The `sw` at 0x464c stores 4 bytes from a0 to a2 (arg2 at entry) +0x8 (value -0x1).
  The `jal` at 0x4614 calls `clip2pane` with a0=[a2+4], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4658 calls `copyout` with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0xc, a3=?.
  The `beq` branch at 0x461c is taken when v0(=ret(clip2pane)) == 0 -> B4 and falls through when v0(=ret(clip2pane)) != 0 -> B1.
  The `bne` branch at 0x4628 is taken when s1(=a3) != 0 -> B5 and falls through when s1(=a3) == 0 -> B2.
  The `beq` branch at 0x4648 is taken when s1(=a3) == 0 -> B2 and falls through when s1(=a3) != 0 -> B5.
  The `beq` branch at 0x4660 is taken when v0(=ret(copyout)) == 0 -> B3 and falls through when v0(=ret(copyout)) != 0 -> B6.
  The return at 0x4640 has v0 = one of 0x0, 0xe.

- `RRM_Dispatch` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4670 (n64).
  It occupies 1148 bytes.
  The `sw` at 0x4844 stores 4 bytes from at to [a0+40]:8 +0x50 (value [[a0+40]:8+80]+1).
  The `sw` at 0x4878 stores 4 bytes from v1 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sd` at 0x498c stores 8 bytes from s1 to [a0+40]:8 +0x48 (value a0).
  The `jal` at 0x46f0 calls `copyin` with a0=a2 at entry (arg2), a1=sp-144, a2=[table(sym(.data))-23992], a3=a3 at entry (arg3).
  The `jalr` at 0x485c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=?, a2=sp-144, a3=a2 at entry (arg2), a4=a3 at entry (arg3).
  The `jal` at 0x4884 calls `curproc_abi` with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x48a4 calls `copyin_xlate` with a0=a2 at entry (arg2), a1=sp-144, a2=[table(sym(.data))-23992], a3=sym(irix5_to_RRM_GetDisplayModes), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x48f8 calls `vsema` with a0=table(sym(RRMcall_sema)), a1=?, a2=?, a3=?.
  The `jal` at 0x4908 calls `curproc_abi` with a0=[table(sym(.data))-24000]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4928 calls `copyin_xlate` with a0=a2 at entry (arg2), a1=sp-144, a2=[table(sym(.data))-23992], a3=sym(irix5_to_RRM_ValidateClip), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x4980 calls `psema` with a0=[a0+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0x49a0 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x49f8 calls `psema` with a0=table(sym(RRMcall_sema)), a1=0x19, a2=?, a3=?.
  The `jal` at 0x4a24 calls `vsema` with a0=table(sym(RRMcall_sema)), a1=?, a2=?, a3=0x1, a4=[table(sym(RRMrn))+82]:1.
  The `bne` branch at 0x46a4 is taken when a1 < 0x3e8 (signed) -> B7 and falls through when a1 >= 0x3e8 (signed) -> B1.
  The `beq` branch at 0x46b0 is taken when a1 >= 0x44c (signed) -> B7 and falls through when a1 < 0x44c (signed) -> B2.
  The `beq` branch at 0x46cc is taken when a0(=[table(sym(.data))-24000]:8) == 0 -> B8 and falls through when a0(=[table(sym(.data))-24000]:8) != 0 -> B3.
  The `beq` branch at 0x46d8 is taken when a1 == s3(=0x3f3) -> B46 and falls through when a1 != s3(=0x3f3) -> B4.
  The `beq` branch at 0x46e4 is taken when a1 == t9(=0x3f8) -> B37 and falls through when a1 != t9(=0x3f8) -> B5.
  The `beq` branch at 0x46f8 is taken when v0(=ret(copyin)) == 0 -> B9 and falls through when v0(=ret(copyin)) != 0 -> B6.
  The `bne` branch at 0x473c is taken when ra(=[[a0+8]:8+8]:8) != s1(=a0) -> B12 and falls through when ra(=[[a0+8]:8+8]:8) == s1(=a0) -> B10.
  The `beq` branch at 0x4744 is taken when s2(=[table(sym(.data))-23988]) == 0 -> B13 and falls through when s2(=[table(sym(.data))-23988]) != 0 -> B11.
  The `bne` branch at 0x4754 is taken when at(=[[a0+40]:8+72]:8) != s1(=a0) -> B55 and falls through when at(=[[a0+40]:8+72]:8) == s1(=a0) -> B12.
  The `beq` branch at 0x4764 is taken when s0(=a1) == v0(=0x3e8) -> B39 and falls through when s0(=a1) != v0(=0x3e8) -> B14.
  The `beq` branch at 0x4770 is taken when s0(=a1) == v1(=0x3ea) -> B48 and falls through when s0(=a1) != v1(=0x3ea) -> B15.
  The `beq` branch at 0x4778 is taken when s0(=a1) == a1(=0x3fc) -> B52 and falls through when s0(=a1) != a1(=0x3fc) -> B16.
  The `beq` branch at 0x4780 is taken when s0(=a1) == a2(=0x3f2) -> B32 and falls through when s0(=a1) != a2(=0x3f2) -> B17.
  The `beq` branch at 0x4788 is taken when s0(=a1) == s3(=0x3f3) -> B32 and falls through when s0(=a1) != s3(=0x3f3) -> B18.
  The `beq` branch at 0x4790 is taken when s0(=a1) == a3(=0x3ec) -> B32 and falls through when s0(=a1) != a3(=0x3ec) -> B19.
  The `beq` branch at 0x4798 is taken when s0(=a1) == a4(=0x3f4) -> B32 and falls through when s0(=a1) != a4(=0x3f4) -> B20.
  The `beq` branch at 0x47a0 is taken when s0(=a1) == a5(=0x3f9) -> B32 and falls through when s0(=a1) != a5(=0x3f9) -> B21.
  The `beq` branch at 0x47a8 is taken when s0(=a1) == a6(=0x3f5) -> B32 and falls through when s0(=a1) != a6(=0x3f5) -> B22.
  The `beq` branch at 0x47b0 is taken when s0(=a1) == a7(=0x3f6) -> B32 and falls through when s0(=a1) != a7(=0x3f6) -> B23.
  The `beq` branch at 0x47b8 is taken when s0(=a1) == t0(=0x3fb) -> B32 and falls through when s0(=a1) != t0(=0x3fb) -> B24.
  The `beq` branch at 0x47c0 is taken when s0(=a1) == t1(=0x3fa) -> B32 and falls through when s0(=a1) != t1(=0x3fa) -> B25.
  The `beq` branch at 0x47c8 is taken when v0(?) == 0 -> B58 and falls through when v0(?) != 0 -> B26.
  The `beq` branch at 0x47d4 is taken when v0(?) >= t2(=[sym(rrm_maxrn)]) (signed) -> B58 and falls through when v0(?) < t2(=[sym(rrm_maxrn)]) (signed) -> B27.
  The `beq` branch at 0x47fc is taken when a1(=0x1) == t3(=[table(sym(RRMrn))+82]:1) -> B60 and falls through when a1(=0x1) != t3(=[table(sym(RRMrn))+82]:1) -> B28.
  The `bne` branch at 0x4808 is taken when t9(=entry(sym(RRMrn))) != a0(?) -> B60 and falls through when t9(=entry(sym(RRMrn))) == a0(?) -> B29.
  The `beq` branch at 0x4818 is taken when ra(=[[a0+8]:8+8]:8) == s1(=a0) -> B62 and falls through when ra(=[[a0+8]:8+8]:8) != s1(=a0) -> B30.
  The `beq` branch at 0x4820 is taken when s2(=[table(sym(.data))-23988]) == 0 -> B69 and falls through when s2(=[table(sym(.data))-23988]) != 0 -> B31.
  The `beq` branch at 0x4830 is taken when s2(=[table(sym(.data))-23988]) == 0 -> B54 and falls through when s2(=[table(sym(.data))-23988]) != 0 -> B33.
  The `beq` branch at 0x4864 is taken when s2(=[table(sym(.data))-23988]) == 0 -> B44 and falls through when s2(=[table(sym(.data))-23988]) != 0 -> B35.
  The `beq` branch at 0x48ac is taken when v0(=ret(copyin_xlate)) == 0 -> B9 and falls through when v0(=ret(copyin_xlate)) != 0 -> B38.
  The `beq` branch at 0x48c0 is taken when a0(?) == a1(=-0x1) -> B42 and falls through when a0(?) != a1(=-0x1) -> B40.
  The `beq` branch at 0x48c8 is taken when s6(?) == 0 -> B59 and falls through when s6(?) != 0 -> B41.
  The `beq` branch at 0x48d4 is taken when s6(?) >= a2(=[sym(rrm_maxrn)]) (signed) -> B59 and falls through when s6(?) < a2(=[sym(rrm_maxrn)]) (signed) -> B42.
  The `beq` branch at 0x48dc is taken when s2(=[table(sym(.data))-23988]) == 0 -> B68 and falls through when s2(=[table(sym(.data))-23988]) != 0 -> B43.
  The `beq` branch at 0x48ec is taken when s0(?) == 0 -> B36 and falls through when s0(?) != 0 -> B45.
  The `beq` branch at 0x4930 is taken when v0(=ret(copyin_xlate)) == 0 -> B9 and falls through when v0(=ret(copyin_xlate)) != 0 -> B47.
  The `bne` branch at 0x4940 is taken when s6(?) != 0 -> B15 and falls through when s6(?) == 0 -> B49.
  The `beq` branch at 0x4950 is taken when (a2(=[a0+4]) & 0x8) == 0 -> B82 and falls through when (a2(=[a0+4]) & 0x8) != 0 -> B50.
  The `beq` branch at 0x4958 is taken when s2(=[table(sym(.data))-23988]) == 0 -> B77 and falls through when s2(=[table(sym(.data))-23988]) != 0 -> B51.
  The `beq` branch at 0x4968 is taken when s2(=[table(sym(.data))-23988]) == 0 -> B67 and falls through when s2(=[table(sym(.data))-23988]) != 0 -> B53.
  The `beq` branch at 0x4998 is taken when a3(=[[a0+40]:8+104]) == 0 -> B13 and falls through when a3(=[[a0+40]:8+104]) != 0 -> B56.
  The `bne` branch at 0x49b0 is taken when a5(=[[a0+40]:8+104]) != 0 -> B56 and falls through when a5(=[[a0+40]:8+104]) == 0 -> B57.
  The `beq` branch at 0x49d8 is taken when a0(?) == 0 -> B81 and falls through when a0(?) != 0 -> B62.
  The `bne` branch at 0x49e0 is taken when s2(=[table(sym(.data))-23988]) != 0 -> B33 and falls through when s2(=[table(sym(.data))-23988]) == 0 -> B63.
  The `beq` branch at 0x49e8 is taken when s3(=table(sym(RRMrn))) == 0 -> B34 and falls through when s3(=table(sym(RRMrn))) != 0 -> B64.
  The `beq` branch at 0x4a08 is taken when a3(=0x1) == a4(=[table(sym(RRMrn))+82]:1) -> B66 and falls through when a3(=0x1) != a4(=[table(sym(RRMrn))+82]:1) -> B65.
  The `beq` branch at 0x4a18 is taken when a5(=entry(sym(RRMrn))) == a6(?) -> B34 and falls through when a5(=entry(sym(RRMrn))) != a6(?) -> B66.
  The `beq` branch at 0x4a4c is taken when (a2(=[a0+4]) & 0x8) == 0 -> B78 and falls through when (a2(=[a0+4]) & 0x8) != 0 -> B70.
  The `beq` branch at 0x4a58 is taken when a0(=[table(sym(RRMrn))+56]:8) == 0 -> B83 and falls through when a0(=[table(sym(RRMrn))+56]:8) != 0 -> B71.
  The `beq` branch at 0x4a68 is taken when (a3(=[[table(sym(RRMrn))+56]:8+4]) & 0x8) == 0 -> B73 and falls through when (a3(=[[table(sym(RRMrn))+56]:8+4]) & 0x8) != 0 -> B72.
  The `beq` branch at 0x4a78 is taken when a4(=[[table(sym(RRMrn))+56]:8+40]:8) == a5(=[a0+40]:8) -> B74 and falls through when a4(=[[table(sym(RRMrn))+56]:8+40]:8) != a5(=[a0+40]:8) -> B73.
  The `beq` branch at 0x4a8c is taken when a6(=[table(sym(RRMrn))+84]:1) == 0 -> B62 and falls through when a6(=[table(sym(RRMrn))+84]:1) != 0 -> B75.
  The `beq` branch at 0x4a98 is taken when a7(=[table(sym(RRMrn))+64]:8) == s1(=a0) -> B62 and falls through when a7(=[table(sym(RRMrn))+64]:8) != s1(=a0) -> B76.
  The `beq` branch at 0x4ab4 is taken when a0(=[a0+64]:8) == 0 -> B81 and falls through when a0(=[a0+64]:8) != 0 -> B79.
  The `beq` branch at 0x4ac0 is taken when t0(?) == s3(=table(sym(RRMrn))) -> B61 and falls through when t0(?) != s3(=table(sym(RRMrn))) -> B80.
  The `bne` branch at 0x4acc is taken when a0(?) != 0 -> B79 and falls through when a0(?) == 0 -> B81.
  The return at 0x472c has v0 = ?.

- `irix5_to_RRM_ValidateClip` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4aec (n64).
  It occupies 208 bytes.
  The `sd` at 0x4b14 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x4b1c stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0x38).
  The `sw` at 0x4b30 stores 4 bytes from at to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `sw` at 0x4b38 stores 4 bytes from t9 to a1 (arg1 at entry) +0x4 (value [[a3+16]:8+4]).
  The `sw` at 0x4b40 stores 4 bytes from t8 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+8]).
  The `sw` at 0x4b48 stores 4 bytes from t3 to a1 (arg1 at entry) +0xc (value [[a3+16]:8+12]).
  The `sw` at 0x4b50 stores 4 bytes from t2 to a1 (arg1 at entry) +0x10 (value [[a3+16]:8+16]).
  The `sw` at 0x4b58 stores 4 bytes from t1 to a1 (arg1 at entry) +0x14 (value [[a3+16]:8+20]).
  The `sw` at 0x4b60 stores 4 bytes from t0 to a1 (arg1 at entry) +0x18 (value [[a3+16]:8+24]).
  The `sd` at 0x4b68 stores 8 bytes from a7 to a1 (arg1 at entry) +0x20 (value [[a3+16]:8+28]).
  The `sw` at 0x4b70 stores 4 bytes from a6 to a1 (arg1 at entry) +0x28 (value [[a3+16]:8+32]).
  The `sw` at 0x4b78 stores 4 bytes from a5 to a1 (arg1 at entry) +0x2c (value [[a3+16]:8+36]).
  The `sw` at 0x4b80 stores 4 bytes from a4 to a1 (arg1 at entry) +0x30 (value [[a3+16]:8+40]).
  The `sw` at 0x4b88 stores 4 bytes from a3 to a1 (arg1 at entry) +0x34 (value [[a3+16]:8+44]).
  The `sw` at 0x4b90 stores 4 bytes from a2 to a1 (arg1 at entry) +0x38 (value [[a3+16]:8+48]).
  The `sw` at 0x4b98 stores 4 bytes from a0 to a1 (arg1 at entry) +0x3c (value [[a3+16]:8+52]).
  The `sd` at 0x4bb8 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x4ba8 calls `kern_malloc` with a0=0x38, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x4af8 is taken when a0 != 0 -> B4 and falls through when a0 == 0 -> B1.
  The `bne` branch at 0x4b08 is taken when at(=[a3]) < 0x38 (unsigned) -> B6 and falls through when at(=[a3]) >= 0x38 (unsigned) -> B2.
  The return at 0x4ba0 has v0 = 0x0.

- `irix5_to_RRM_GetDisplayModes` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4bbc (n64).
  It occupies 120 bytes.
  The `sd` at 0x4be4 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value [a3+8]:8).
  The `sw` at 0x4bec stores 4 bytes from v1 to a3 (arg3 at entry) +0x4 (value 0xc).
  The `sw` at 0x4c00 stores 4 bytes from a3 to a1 (arg1 at entry) +0x0 (value [[a3+16]:8]).
  The `sd` at 0x4c08 stores 8 bytes from a2 to a1 (arg1 at entry) +0x8 (value [[a3+16]:8+4]).
  The `sw` at 0x4c10 stores 4 bytes from a0 to a1 (arg1 at entry) +0x10 (value [[a3+16]:8+8]).
  The `sd` at 0x4c30 stores 8 bytes from v0 to a3 (arg3 at entry) +0x10 (value ret(kern_malloc)).
  The `jal` at 0x4c20 calls `kern_malloc` with a0=0xc, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x4bc8 is taken when a0 != 0 -> B4 and falls through when a0 == 0 -> B1.
  The `bne` branch at 0x4bd8 is taken when at(=[a3]) < 0xc (unsigned) -> B6 and falls through when at(=[a3]) >= 0xc (unsigned) -> B2.
  The return at 0x4c18 has v0 = 0x0.

- `lock_dmavec` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x0 (n64).
  It occupies 200 bytes.
  The `jal` at 0xa8 calls `userdma` with a0=[a0]:8, a1=?, a2=a1 at entry (arg1), a3=0x0.
  The `beq` branch at 0x10 is taken when a5(=[a0+12]) == 0 -> B4 and falls through when a5(=[a0+12]) != 0 -> B1.
  The `beq` branch at 0x18 is taken when a5(=[a0+12]) == v0(=[a0+8]) -> B5 and falls through when a5(=[a0+12]) != v0(=[a0+8]) -> B2.
  The `bne` branch at 0x40 is taken when s0(?) != 0 -> B6 and falls through when s0(?) == 0 -> B3.
  The `beq` branch at 0x58 is taken when v0(=[a0+8]) == 0 -> B3 and falls through when v0(=[a0+8]) != 0 -> B6.
  The `bltz` branch at 0x60 is taken when s0(?) < 0 (signed) -> B8 and falls through when s0(?) >= 0 (signed) -> B7.
  The `bne` branch at 0x84 is taken when t9(?) < -0x1 (unsigned) -> B11 and falls through when t9(?) >= -0x1 (unsigned) -> B8.
  The `beq` branch at 0xb0 is taken when v0(=ret(userdma)) == 0 -> B13 and falls through when v0(=ret(userdma)) != 0 -> B12.
  The return at 0x98 has v0 = ?.

- `unlock_dmavec` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0xc8 (n64).
  It occupies 104 bytes.
  The `jal` at 0x11c calls `undma` with a0=[a0]:8, a1=?, a2=a1 at entry (arg1), a3=?, a4=[a0+8], a6=a0 at entry (arg0).
  The `beq` branch at 0xe0 is taken when a5(=[a0+12]) == 0 -> B3 and falls through when a5(=[a0+12]) != 0 -> B1.
  The `beq` branch at 0xe8 is taken when a5(=[a0+12]) == a4(=[a0+8]) -> B4 and falls through when a5(=[a0+12]) != a4(=[a0+8]) -> B2.
  The return at 0x128 has v0 = ret(undma).

- `kona_dmaread` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x130 (n64).
  It occupies 312 bytes.
  The `sw` at 0x1b4 stores 4 bytes from a2 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]+1).
  The `sw` at 0x258 stores 4 bytes from a1 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sw` at 0x25c stores 4 bytes from a1 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `jal` at 0x17c calls `kona_start_selectfeed` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-112, a3=a3 at entry (arg3).
  The `jal` at 0x1e4 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1fc calls `gfx_pio_write_32` with a0=[[a0+40]:8+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x23c calls `kona_finish_selectfeed` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-80, a3=?.
  The `beq` branch at 0x188 is taken when v0(=ret(kona_start_selectfeed)) == 0 -> B2 and falls through when v0(=ret(kona_start_selectfeed)) != 0 -> B1.
  The `blez` branch at 0x1c8 is taken when a1(=[a2+152]) <= 0 (signed) -> B7 and falls through when a1(=[a2+152]) > 0 (signed) -> B3.
  The `beq` branch at 0x1f0 is taken when s1(?) == s3(=-0x1) -> B6 and falls through when s1(?) != s3(=-0x1) -> B5.
  The `bne` branch at 0x208 is taken when s1(?) != s3(=-0x1) -> B5 and falls through when s1(?) == s3(=-0x1) -> B6.
  The `bne` branch at 0x21c is taken when s4(?) < a3(=[a2+152]) (signed) -> B4 and falls through when s4(?) >= a3(=[a2+152]) (signed) -> B7.
  The `beq` branch at 0x24c is taken when v0(=ret(kona_finish_selectfeed)) == 0 -> B9 and falls through when v0(=ret(kona_finish_selectfeed)) != 0 -> B8.
  The return at 0x1a0 has v0 = ?.

- `kona_dmawrite` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x268 (n64).
  It occupies 472 bytes.
  The `jal` at 0x2c0 calls `lock_dmavec` with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2d8 calls `kona_mapram_pagesizeshiftof` with a0=?, a1=ret(lock_dmavec), a2=?, a3=?.
  The `jal` at 0x2f0 calls `alloc_gfx_io_space` with a0=[[a0+40]:8+2184], a1=?, a2=ret(lock_dmavec), a3=ret(kona_mapram_pagesizeshiftof).
  The `jal` at 0x330 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x348 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3b0 calls `kona_idma` with a0=[a0+40]:8, a1=?, a2=?, a3=?, a6=0x1.
  The `jal` at 0x3bc calls `psema` with a0=[a0+40]:8+5176, a1=0x19, a2=?, a3=?.
  The `jal` at 0x3c8 calls `free_gfx_io_space` with a0=[[a0+40]:8+2184], a1=?, a2=?, a3=?.
  The `jal` at 0x3d4 calls `unlock_dmavec` with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x3ec calls `valusema` with a0=[a0+40]:8+56, a1=?, a2=?, a3=?.
  The `jal` at 0x3fc calls `force_resched` with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x2a0 is taken when s4(=[a2+8]) <= 0 (signed) -> B5 and falls through when s4(=[a2+8]) > 0 (signed) -> B1.
  The `bltz` branch at 0x2c8 is taken when v0(=ret(lock_dmavec)) < 0 (signed) -> B15 and falls through when v0(=ret(lock_dmavec)) >= 0 (signed) -> B3.
  The `bne` branch at 0x300 is taken when s1(?) < s4(=[a2+8]) (signed) -> B2 and falls through when s1(?) >= s4(=[a2+8]) (signed) -> B4.
  The `blez` branch at 0x31c is taken when t9(=[a2+140]) <= 0 (signed) -> B9 and falls through when t9(=[a2+140]) > 0 (signed) -> B6.
  The `beq` branch at 0x33c is taken when ra(?) == s3(=-0x1) -> B8 and falls through when ra(?) != s3(=-0x1) -> B7.
  The `bne` branch at 0x354 is taken when s1(?) != s3(=-0x1) -> B7 and falls through when s1(?) == s3(=-0x1) -> B8.
  The `bne` branch at 0x368 is taken when s6(?) < at(=[a2+140]) (signed) -> B6 and falls through when s6(?) >= at(=[a2+140]) (signed) -> B9.
  The `blez` branch at 0x370 is taken when s4(=[a2+8]) <= 0 (signed) -> B12 and falls through when s4(=[a2+8]) > 0 (signed) -> B10.
  The `bne` branch at 0x3e4 is taken when s1(?) < s4(=[a2+8]) (signed) -> B11 and falls through when s1(?) >= s4(=[a2+8]) (signed) -> B12.
  The `beq` branch at 0x3f4 is taken when v0(=ret(valusema)) == 0 -> B14 and falls through when v0(=ret(valusema)) != 0 -> B13.
  The return at 0x430 has v0 = ?.

- `kona_idma_timeout` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x440 (n64).
  It occupies 140 bytes.
  The `sd` at 0x4c0 stores 8 bytes from zero to a0 (arg0 at entry) +0x1448 (value 0x0).
  The `jal` at 0x458 calls `mutex_spinlock` with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x474 calls `mutex_spinunlock` with a0=a0+2576, a1=?, a2=?, a3=?.
  The `jal` at 0x4a4 calls `cmn_err_tag` with a0=0x84a, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=[a0+5200]:8, a6=[a0+5208].
  The `jal` at 0x4b0 calls `kona_die` with a0=a0 at entry (arg0), a1=0x4, a2=?, a3=?.
  The `jal` at 0x4bc calls `vsema` with a0=a0+5176, a1=?, a2=?, a3=?.
  The `bne` branch at 0x464 is taken when at(=[a0+5192]:8) != 0 -> B2 and falls through when at(=[a0+5192]:8) == 0 -> B1.
  The return at 0x484 has v0 = ret(mutex_spinunlock).

- `kona_idma` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x4cc (n64).
  It occupies 756 bytes.
  The `sw` at 0x51c stores 4 bytes from s3 to a0 (arg0 at entry) +0x1458 (value a2).
  The `sd` at 0x520 stores 8 bytes from s1 to a0 (arg0 at entry) +0x1450 (value a1).
  The `sd` at 0x528 stores 8 bytes from v0 to a0 (arg0 at entry) +0x1448 (value ret(kona_timeout)).
  The `sw` at 0x554 stores 4 bytes from at to a0 (arg0 at entry) +0x938 (value 0x30000).
  The `sw` at 0x5ac stores 4 bytes from t8 to a0 (arg0 at entry) +0x938 (value 0x10000).
  The `sw` at 0x654 stores 4 bytes from zero to a0 (arg0 at entry) +0x938 (value 0x0).
  The `jal` at 0x514 calls `kona_timeout` with a0=sym(kona_idma_timeout), a1=a0 at entry (arg0), a2=[sym(kona_idma_timeout_value)], a3=sym(splhi).
  The `jal` at 0x530 calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x538 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x544 calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x558 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x570 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x57c calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=0x1eb, a2=?, a3=?.
  The `jal` at 0x588 calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x590 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x59c calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x5b0 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x5c0 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x5d0 calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x5e4 calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x5f4 calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0x600 calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=a3 at entry (arg3), a2=?, a3=?.
  The `jal` at 0x60c calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=a4 at entry (arg4), a2=?, a3=?.
  The `jal` at 0x618 calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x624 calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x62c calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x638 calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x658 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x66c calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x68c calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x6a4 calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x6ac calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6b8 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x6c0 calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x6c8 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6d8 calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x6e0 calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6f4 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x70c calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x714 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x720 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x728 calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x730 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x740 calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x748 calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x75c calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x774 calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x77c calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x788 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x790 calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x798 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x7a8 calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x7b0 calls `rt_unpin_thread` with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `beq` branch at 0x500 is taken when a6 == 0 -> B2 and falls through when a6 != 0 -> B1.
  The `beq` branch at 0x54c is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 -> B6 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0 -> B3.
  The `beq` branch at 0x5a4 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 -> B7 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0 -> B4.
  The `beq` branch at 0x640 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 -> B8 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0 -> B5.
  The return at 0x680 has v0 = ret(gfx_pio_write_32).

- `kona_dmapool_update_pipe` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x7c0 (n64).
  It occupies 644 bytes.
  The `sw` at 0x804 stores 4 bytes from at to a0 (arg0 at entry) +0x938 (value 0x30000).
  The `sw` at 0x85c stores 4 bytes from t8 to a0 (arg0 at entry) +0x938 (value 0x10000).
  The `sw` at 0x8d8 stores 4 bytes from zero to a0 (arg0 at entry) +0x938 (value 0x0).
  The `jal` at 0x7dc calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7e4 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x7f0 calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x808 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x820 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x82c calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=0x1ed, a2=?, a3=?.
  The `jal` at 0x838 calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x840 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x84c calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x860 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x870 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x884 calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x89c calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x8a8 calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=[a1+8], a2=?, a3=?.
  The `jal` at 0x8b4 calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x8bc calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x8c8 calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x8dc calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x8f0 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x910 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x928 calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x930 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x93c calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x944 calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x94c calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x95c calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x964 calls `rt_unpin_thread` with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0x978 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x990 calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x998 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9a4 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x9ac calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9b4 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9c4 calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x9cc calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9e0 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x9f8 calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xa00 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0c calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xa14 calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa1c calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa2c calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xa34 calls `rt_unpin_thread` with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `beq` branch at 0x7f8 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 -> B5 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0 -> B1.
  The `beq` branch at 0x854 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 -> B6 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0 -> B3.
  The `beq` branch at 0x8d0 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 -> B7 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0 -> B4.
  The return at 0x904 has v0 = ret(gfx_pio_write_32).

- `kona_dmapool` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0xa44 (n64).
  It occupies 488 bytes.
  The `sw` at 0xaf0 stores 4 bytes from a3 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]+1).
  The `sw` at 0xb20 stores 4 bytes from zero to ? (base unknown) (value 0x0).
  The `sw` at 0xb7c stores 4 bytes from a6 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sw` at 0xbf4 stores 4 bytes from v0 to ? (base unknown) (value ret(kona_mapram_pagesizeshiftof)).
  The `sd` at 0xbfc stores 8 bytes from a1 to ? (base unknown).
  The `sd` at 0xc0c stores 8 bytes from v0 to ? (base unknown) (value ret(alloc_gfx_io_space)).
  The `sw` at 0xc18 stores 4 bytes from a3 to ? (base unknown).
  The `jal` at 0xad4 calls `RRM_CheckValidFault` with a0=a0 at entry (arg0), a1=[a2+16], a2=?, a3=a3 at entry (arg3), a6=[a2+12].
  The `jal` at 0xb0c calls `undma` with a0=?, a1=?, a2=0x0, a3=[[a0+40]:8+80]+1, a4=[a0+40]:8, a5=a2 at entry (arg2).
  The `jal` at 0xb18 calls `free_gfx_io_space` with a0=[[a0+40]:8+2184], a1=?, a2=?, a3=?.
  The `jal` at 0xb44 calls `kona_dmapool_update_pipe` with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb50 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2304]:8, a1=0x172, a2=?, a3=?.
  The `jal` at 0xb60 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2304]:8, a1=0x0, a2=?, a3=?.
  The `jal` at 0xbd4 calls `userdma` with a0=[a2]:8, a1=?, a2=0x0, a3=0x0, a5=[a2+8].
  The `jal` at 0xbe8 calls `kona_mapram_pagesizeshiftof` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc04 calls `alloc_gfx_io_space` with a0=[[a0+40]:8+2184], a1=?, a2=?, a3=ret(kona_mapram_pagesizeshiftof).
  The `beq` branch at 0xa68 is taken when a6(=[a2+12]) == 0 -> B3 and falls through when a6(=[a2+12]) != 0 -> B1.
  The `beq` branch at 0xaa8 is taken when a7(=[[a1+112]:8+240]:8) == 0 -> B13 and falls through when a7(=[[a1+112]:8+240]:8) != 0 -> B4.
  The `beq` branch at 0xab4 is taken when a1(=[a2+16]) == 0 -> B15 and falls through when a1(=[a2+16]) != 0 -> B5.
  The `bne` branch at 0xac0 is taken when a2(?) != 0 -> B14 and falls through when a2(?) == 0 -> B6.
  The `beq` branch at 0xac8 is taken when v0(?) == 0 -> B14 and falls through when v0(?) != 0 -> B7.
  The `bltz` branch at 0xadc is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) -> B22 and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed) -> B8.
  The `beq` branch at 0xaf8 is taken when v0(?) == 0 -> B10 and falls through when v0(?) != 0 -> B9.
  The `beq` branch at 0xb34 is taken when (a0(=[a2]:8) & 0x3fff) == 0 -> B18 and falls through when (a0(=[a2]:8) & 0x3fff) != 0 -> B11.
  The `beq` branch at 0xb80 is taken when a1(=[a2+16]) == 0 -> B7 and falls through when a1(=[a2+16]) != 0 -> B14.
  The `beq` branch at 0xb90 is taken when v0(?) == 0 -> B7 and falls through when v0(?) != 0 -> B16.
  The `bne` branch at 0xb9c is taken when a7(?) != 0 -> B14 and falls through when a7(?) == 0 -> B17.
  The `bne` branch at 0xbb8 is taken when (a1(?) & 0x3fff) != 0 -> B11 and falls through when (a1(?) & 0x3fff) == 0 -> B19.
  The `beq` branch at 0xbc8 is taken when a5(=[a2+8]) == 0 -> B23 and falls through when a5(=[a2+8]) != 0 -> B20.
  The `bne` branch at 0xbdc is taken when v0(=ret(userdma)) != 0 -> B12 and falls through when v0(=ret(userdma)) == 0 -> B21.
  The return at 0xa84 has v0 = ?.

- `kona_dmapool_update` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0xc2c (n64).
  It occupies 76 bytes.
  The `jal` at 0xc64 calls `kona_dmapool_update_pipe` with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=[[a1+112]:8+240]:8, a4=-0x48, a5=[[a1+112]:8+240]:8+72, a6=[a1+112]:8.
  The `beq` branch at 0xc44 is taken when a3(=[[a1+112]:8+240]:8) == 0 -> B4 and falls through when a3(=[[a1+112]:8+240]:8) != 0 -> B1.
  The `beq` branch at 0xc4c is taken when a3(=[[a1+112]:8+240]:8) == a4(=-0x48) -> B4 and falls through when a3(=[[a1+112]:8+240]:8) != a4(=-0x48) -> B2.
  The `beq` branch at 0xc58 is taken when at(=[[[a1+112]:8+240]:8+80]) == 0 -> B4 and falls through when at(=[[[a1+112]:8+240]:8+80]) != 0 -> B3.
  The return at 0xc70 has v0 = ret(kona_dmapool_update_pipe).

- `kona_dmapool_destroy` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0xc78 (n64).
  It occupies 124 bytes.
  The `sw` at 0xcd4 stores 4 bytes from zero to ? (base unknown) (value 0x0).
  The `jal` at 0xcb8 calls `undma` with a0=?, a1=?, a2=0x0, a3=a3 at entry (arg3), a5=[a1+112]:8.
  The `jal` at 0xcc8 calls `free_gfx_io_space` with a0=[a0+2184], a1=?, a2=?, a3=?.
  The `beq` branch at 0xc84 is taken when a4(=[[a1+112]:8+240]:8) == 0 -> B6 and falls through when a4(=[[a1+112]:8+240]:8) != 0 -> B1.
  The `beq` branch at 0xc8c is taken when a2 == 0 -> B7 and falls through when a2 != 0 -> B2.
  The `beq` branch at 0xc94 is taken when s0(?) == 0 -> B5 and falls through when s0(?) != 0 -> B3.
  The `beq` branch at 0xca4 is taken when a4(?) == 0 -> B5 and falls through when a4(?) != 0 -> B4.
  The `bne` branch at 0xce4 is taken when a2 != 0 -> B2 and falls through when a2 == 0 -> B7.
  The return at 0xcdc has v0 = ?.

- `kona_start_selectfeed` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0xcf4 (n64).
  It occupies 960 bytes.
  The `sd` at 0xd30 stores 8 bytes from a4 to [a1+112]:8 +0x20 (value [a2]:8).
  The `sw` at 0xd38 stores 4 bytes from a0 to [a1+112]:8 +0x28 (value [a2+8]).
  The `sw` at 0xd40 stores 4 bytes from a3 to [a1+112]:8 +0x2c (value [a2+12]).
  The `sw` at 0xd48 stores 4 bytes from a1 to [a1+112]:8 +0x30 (value [a2+16]).
  The `sw` at 0xd50 stores 4 bytes from zero to [a1+112]:8 +0x44 (value 0x0).
  The `sw` at 0xd58 stores 4 bytes from v1 to [a1+112]:8 +0x38 (value [a2+24]).
  The `sw` at 0xd74 stores 4 bytes from v0 to [a1+112]:8 +0x3c (value ret(lock_dmavec)).
  The `sw` at 0xd78 stores 4 bytes from zero to [a1+112]:8 +0x3c (value 0x0).
  The `sw` at 0xda0 stores 4 bytes from a5 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]+1).
  The `sd` at 0xdc4 stores 8 bytes from v0 to [a1+112]:8 +0x48 (value ret(alloc_gfx_io_space)).
  The `sw` at 0xdd4 stores 4 bytes from a6 to [a0+40]:8 +0x50 (value [[a0+40]:8+80]-1).
  The `sd` at 0xde4 stores 8 bytes from v0 to [a1+112]:8 +0x68 (value ret(curproc)).
  The `sw` at 0xe2c stores 4 bytes from t1 to [a0+40]:8 +0x938 (value 0x30000).
  The `sw` at 0xe88 stores 4 bytes from t9 to [a0+40]:8 +0x938 (value 0x10000).
  The `sw` at 0xf14 stores 4 bytes from zero to [a0+40]:8 +0x938 (value 0x0).
  The `sd` at 0xf64 stores 8 bytes from zero to [a1+112]:8 +0x48 (value 0x0).
  The `sw` at 0xf68 stores 4 bytes from zero to [a1+112]:8 +0x3c (value 0x0).
  The `sw` at 0x10b0 stores 4 bytes from zero to [a0+40]:8 +0x938 (value 0x0).
  The `jal` at 0xd60 calls `lock_dmavec` with a0=[a1+112]:8+32, a1=0x1, a2=a2 at entry (arg2), a3=[a2+12], a4=[a2]:8.
  The `jal` at 0xd7c calls `RRM_CheckValidFault` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xda8 calls `kona_mapram_pagesizeshiftof` with a0=[[a1+112]:8+32]:8, a1=[[a1+112]:8+60], a2=?, a3=?, a5=[[a0+40]:8+80]+1, a6=[a0+40]:8.
  The `jal` at 0xdbc calls `alloc_gfx_io_space` with a0=[[a0+40]:8+2184], a1=[[a1+112]:8+32]:8, a2=[[a1+112]:8+60], a3=ret(kona_mapram_pagesizeshiftof).
  The `jal` at 0xdd8 calls `curproc` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe08 calls `gfx_flow_flush_my_wg` with a0=[[a0+40]:8+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xe10 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe1c calls `gfx_flow_am_i_attached` with a0=[[a0+40]:8+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xe30 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xe48 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2376]:8+0xc00108, a1=[[a0+40]:8+2360], a2=?, a3=?.
  The `jal` at 0xe54 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2304]:8, a1=0x1f5, a2=?, a3=?.
  The `jal` at 0xe60 calls `gfx_flow_flush_my_wg` with a0=[[a0+40]:8+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xe68 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe78 calls `gfx_flow_am_i_attached` with a0=[[a0+40]:8+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xe8c calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe9c calls `gfx_pio_write_32` with a0=[[a0+40]:8+2376]:8+0xc00108, a1=[[a0+40]:8+2360], a2=?, a3=?.
  The `jal` at 0xea8 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xeb4 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xec0 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2304]:8, a1=[[a1+112]:8+40], a2=?, a3=?.
  The `jal` at 0xecc calls `gfx_pio_write_32` with a0=[[a0+40]:8+2304]:8, a1=[[a1+112]:8+44], a2=?, a3=?.
  The `jal` at 0xed8 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2304]:8, a1=[[a1+112]:8+48], a2=?, a3=?.
  The `jal` at 0xee4 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2304]:8, a1=[[a1+112]:8+56], a2=?, a3=?.
  The `jal` at 0xef0 calls `gfx_flow_flush_my_wg` with a0=[[a0+40]:8+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xef8 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf04 calls `gfx_flow_am_i_attached` with a0=[[a0+40]:8+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf18 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xf28 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2376]:8+0xc00108, a1=[[a0+40]:8+2360], a2=?, a3=?.
  The `jal` at 0xf5c calls `unlock_dmavec` with a0=[a1+112]:8+32, a1=0x1, a2=?, a3=?.
  The `jal` at 0xf80 calls `gfx_flow_attach_me` with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0xf98 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xfa0 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfac calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xfb4 calls `kona_flow_await_returned_credits` with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xfbc calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfcc calls `gfx_flow_attach_me_finish` with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0xfd4 calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfe8 calls `gfx_flow_attach_me` with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0x1000 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x1008 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1014 calls `splx` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x101c calls `kona_flow_await_returned_credits` with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1024 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1034 calls `gfx_flow_attach_me_finish` with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0x103c calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1050 calls `gfx_flow_attach_me` with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0x1068 calls `gfx_pio_write_32` with a0=[[a0+40]:8+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x1070 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x107c calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x1084 calls `kona_flow_await_returned_credits` with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x108c calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x109c calls `gfx_flow_attach_me_finish` with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0x10a4 calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd0c is taken when a1 == 0 -> B16 and falls through when a1 != 0 -> B1.
  The `beq` branch at 0xd1c is taken when at(=[[a1+112]:8+104]:8) == 0 -> B3 and falls through when at(=[[a1+112]:8+104]:8) != 0 -> B2.
  The `beq` branch at 0xd54 is taken when a0(=[a2+8]) == 0 -> B6 and falls through when a0(=[a2+8]) != 0 -> B4.
  The `bltz` branch at 0xd68 is taken when v0(=ret(lock_dmavec)) < 0 (signed) -> B20 and falls through when v0(=ret(lock_dmavec)) >= 0 (signed) -> B5.
  The `bltz` branch at 0xd84 is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) -> B17 and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed) -> B8.
  The `beq` branch at 0xd8c is taken when a0(=[[a1+112]:8+60]) == 0 -> B10 and falls through when a0(=[[a1+112]:8+60]) != 0 -> B9.
  The `beq` branch at 0xe24 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 -> B21 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0 -> B11.
  The `beq` branch at 0xe80 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 -> B22 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0 -> B12.
  The `beq` branch at 0xf0c is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 -> B23 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0 -> B13.
  The `beq` branch at 0xf54 is taken when a0(=[[a1+112]:8+60]) == 0 -> B19 and falls through when a0(=[[a1+112]:8+60]) != 0 -> B18.
  The return at 0xf44 has v0 = ?.

- `kona_selectfeed_timeout` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x10b4 (n64).
  It occupies 164 bytes.
  The `sw` at 0x1140 stores 4 bytes from a3 to a1 (arg1 at entry) +0x20 (value -0x1).
  The `sd` at 0x114c stores 8 bytes from zero to a1 (arg1 at entry) +0x40 (value 0x0).
  The `jal` at 0x10d4 calls `mutex_spinlock` with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10f4 calls `mutex_spinunlock` with a0=a0+2576, a1=?, a2=?, a3=?.
  The `jal` at 0x1128 calls `cmn_err_tag` with a0=0x84b, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=[a1+40]:8, a6=[a1+8].
  The `jal` at 0x1134 calls `kona_die` with a0=a0 at entry (arg0), a1=0x5, a2=?, a3=?.
  The `jal` at 0x1148 calls `vsema` with a0=a1+48, a1=?, a2=?, a3=-0x1.
  The `bne` branch at 0x10e0 is taken when at(=[a1+64]:8) != 0 -> B2 and falls through when at(=[a1+64]:8) == 0 -> B1.
  The return at 0x1104 has v0 = ret(mutex_spinunlock).

## Skipped targets

Hostfacts could not produce a reading for gfx_shcheck in the gfx.o member of the IP27boot build and in the gfx.o member of the IP35boot build, both under usr/cpu/sysgen. The error for each is KeyError: 125.
