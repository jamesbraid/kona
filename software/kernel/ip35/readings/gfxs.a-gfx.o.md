# Readings: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`

One entry per routine, filed here from the reading batches by binary.

- `init_gfx_group_table` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x124 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
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

- `gfx_group_find` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x188 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
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

- `gfx_group_create` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x240 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
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

- `gfx_group_destroy` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x2fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
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

- `gfx_disp` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xc28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
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

- `gfx_fault` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xd5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
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

- `gfx_exit` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0xe34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
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

- `gfx_shdup` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x1234 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
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

- `GfxIntrMessage` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x1bf4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x1bf4-0x1c10 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x1bfc calls GfxSendMessage with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1c08 has v0 = ret(GfxSendMessage).

- `gfx_conflict_scan` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x1e44 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
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

- `gfxioctl` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x2b94 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
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

- `gfx_shalloc` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3378 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
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

- `gfx_shfree` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3438 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x3438-0x3464 (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x3440 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3448 calls gfx_group_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x3450 calls gfx_group_destroy with a0=ret(gfx_group_find), a1=?, a2=?, a3=?.
  The return at 0x345c has v0 = ret(gfx_group_destroy).

- `gfx_frs_valid_pipenum` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3464 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
  Range: 0x3464-0x3470 (12 bytes).
  It occupies 12 bytes.
  The return at 0x3468 has v0 = ?.

- `gfx_frs_install` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3470 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
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

- `gfx_frs_uninstall` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x34c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
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

- `irix5_to_gfx_getboardinfo_args` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3518 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
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

- `irix5_to_gfx_download_args` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3590 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
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

- `irix5_to_gfx_attach_board_args` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)` at 0x3630 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`.
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
