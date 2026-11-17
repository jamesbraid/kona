# Readings: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`

One entry per routine, filed here from the reading batches by binary.

- `init_gfx_group_table` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x124 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
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

- `gfx_group_create` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x240 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
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

- `gfx_group_destroy` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x2fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
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

- `gfx_shdup` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x1234 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
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

- `GfxIntrMessage` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x1bf4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x1bf4-0x1c10 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x1bfc calls GfxSendMessage with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1c08 has v0 = ret(GfxSendMessage).

- `gfx_conflict_scan` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x1e44 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
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

- `gfxioctl` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x2b88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x2b88-0x335c (2004 bytes).
  It occupies 2004 bytes.
  The `lh` at 0x2bc4 loads 2 bytes from abs 0xffffffffffffc420.
  The `lw` at 0x2bd4 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)) +0xc.
  The `sw` at 0x2be8 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)) +0xc.
  The `ld` at 0x2c14 loads 8 bytes from table(sym(GfxDev)) +0x0.
  6 such `lw` accesses load 4 bytes from entry(sym(GfxDev)) +0x4, including `lw` at 0x2c28, `lw` at 0x2d0c, `lw` at 0x2dc8.
  5 such `ld` accesses load 8 bytes from ret(gthread_find) +0x18, including `ld` at 0x2c34, `ld` at 0x2d00, `ld` at 0x2de4.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x0, including `ld` at 0x2c40, `ld` at 0x2ea0.
  The `ld` at 0x2c44 loads 8 bytes from entry(sym(GfxDev)) +0x10.
  7 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x20, including `ld` at 0x2ca0, `ld` at 0x2db0, `ld` at 0x3024.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x8, including `ld` at 0x2cd4, `ld` at 0x332c, `ld` at 0x3344.
  3 such `ld` accesses load 8 bytes from [entry(sym(GfxDev))+8]:8 +0x10, including `ld` at 0x2cd8, `ld` at 0x3330, `ld` at 0x3348.
  2 such `sw` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `sw` at 0x2cfc, `sw` at 0x316c.
  The `ld` at 0x2d4c loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc8.
  The `ld` at 0x2d64 loads 8 bytes from entry(sym(GfxDev)) +0x48.
  17 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x28, including `ld` at 0x2d7c, `ld` at 0x2d88, `ld` at 0x2da0.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxDev)) +0x30, including `ld` at 0x2d84, `ld` at 0x2d9c, `ld` at 0x2dd0.
  4 such `ld` accesses load 8 bytes from [entry(sym(GfxDev))+40]:8 +0x48, including `ld` at 0x2d8c, `ld` at 0x2da4, `ld` at 0x2ffc.
  The `ld` at 0x2db4 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x60.
  2 such `sw` accesses store 4 bytes to entry(sym(GfxDev)) +0x4, including `sw` at 0x2ddc, `sw` at 0x2fbc.
  4 such `sd` accesses store 8 bytes to [entry(sym(GfxDev))+40]:8 +0x48, including `sd` at 0x2e4c, `sd` at 0x3040, `sd` at 0x31c8.
  6 such `lw` accesses load 4 bytes from [entry(sym(GfxDev))+40]:8 +0x68, including `lw` at 0x2e54, `lw` at 0x2e6c, `lw` at 0x31d0.
  The `ld` at 0x3008 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x18.
  The `sw` at 0x3020 stores 4 bytes to [entry(sym(GfxDev))+40]:8 +0x80.
  The `ld` at 0x3028 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0xc0.
  The `ld` at 0x3088 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x28.
  The `ld` at 0x30d4 loads 8 bytes from [entry(sym(GfxDev))+8]:8 +0x0.
  6 such `ld` accesses load 8 bytes from table(sym(GfxBoards)) +0x0, including `ld` at 0x3130, `ld` at 0x3150, `ld` at 0x317c.
  The `ld` at 0x315c loads 8 bytes from entry(sym(GfxBoards)) +0x8.
  5 such `ld` accesses load 8 bytes from entry(sym(GfxBoards)) +0x38, including `ld` at 0x323c, `ld` at 0x326c, `ld` at 0x3284.
  The `ld` at 0x3240 loads 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x0.
  3 such `ld` accesses load 8 bytes from entry(sym(GfxBoards)) +0x40, including `ld` at 0x3254, `ld` at 0x3264, `ld` at 0x32e8.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x8, including `sd` at 0x3260, `sd` at 0x32ac, `sd` at 0x32dc.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x28, including `sd` at 0x3268, `sd` at 0x32a4, `sd` at 0x32ec.
  4 such `sd` accesses store 8 bytes to entry(sym(GfxDev)) +0x20, including `sd` at 0x3270, `sd` at 0x32a0, `sd` at 0x32e4.
  2 such `ld` accesses load 8 bytes from [entry(sym(GfxBoards))+56]:8 +0x8, including `ld` at 0x3288, `ld` at 0x3304.
  The `ld` at 0x32b4 loads 8 bytes from [entry(sym(GfxDev))+32]:8 +0x20.
  2 such `sd` accesses store 8 bytes to [entry(sym(GfxDev))+8]:8 +0x10, including `sd` at 0x3340, `sd` at 0x3358.
  The `jal` at 0x2bb0 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2bbc calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x2c64 calls psema with a0=entry(sym(GfxDev))+80, a1=0x19, a2=0x1ffff, a3=[([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5))+12]+1, a4=([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)), a5=([-0x3be0]:2 << 0x5).
  The `jalr` at 0x2d60 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=[entry(sym(GfxDev))+72]:8, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a5 at entry (arg5).
  The `jal` at 0x2d80 calls ddv_unlock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2d98 calls ddv_lock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x2dc0 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=0x0, a2=-0x1, a3=?.
  The `jal` at 0x2dd8 calls ddv_unlock with a0=[entry(sym(GfxDev))+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2df4 calls RRM_Dispatch with a0=entry(sym(GfxDev)), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a5 at entry (arg5), a6=0x6c.
  The `jal` at 0x2e30 calls cmn_err_tag with a0=0x850, a1=0x4, a2=sym(.rodata), a3=a1 at entry (arg1), a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x2e40 calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0x2e60 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x2e9c calls threadgroup_refcnt with a0=[ret(gthread_find)]:8, a1=0x67, a2=0x70, a3=0x71, a7=[ret(gthread_find)+24]:8.
  The `jal` at 0x2eb8 calls curproc_abi with a0=0x69, a1=?, a2=?, a3=?.
  The `jal` at 0x2ed8 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x18, a3=sym(irix5_to_gfx_getboardinfo_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2ef8 calls copyin with a0=a2 at entry (arg2), a1=sp-72, a2=0x4, a3=?.
  The `jal` at 0x2f10 calls vsema with a0=entry(sym(GfxDev))+80, a1=?, a2=?, a3=?.
  The `jal` at 0x2f20 calls GfxDetach with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x2f30 calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=?.
  The `jal` at 0x2f50 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2f68 calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2f88 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x10, a3=sym(irix5_to_gfx_attach_board_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x2fa0 calls drv_priv with a0=a4 at entry (arg4), a1=0x67, a2=0x70, a3=0x71.
  The `jal` at 0x2fc0 calls curproc_abi with a0=0x69, a1=0x67, a2=0x70, a3=0x71, a6=0x6c, a7=0x68.
  The `jal` at 0x2fe0 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-112, a2=0x28, a3=sym(irix5_to_gfx_download_args), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jalr` at 0x300c calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jal` at 0x301c calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x3034 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=[[entry(sym(GfxDev))+32]:8+192]:8, a2=?, a3=?.
  The `jal` at 0x3048 calls vsema with a0=[entry(sym(GfxDev))+40]:8+56, a1=[entry(sym(GfxDev))+40]:8, a2=?, a3=?.
  The `jal` at 0x3050 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x3068 calls rrmUnMapGfx with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?.
  The `jalr` at 0x308c calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=?, a3=?, a4=[[entry(sym(GfxDev))+32]:8+40]:8.
  The `jal` at 0x30e0 calls copyin with a0=a2 at entry (arg2), a1=[[entry(sym(GfxDev))+8]:8]:8+16, a2=0x10, a3=[entry(sym(GfxDev))+8]:8, a4=0x6f, a6=0x6c, a7=0x68.
  The `jal` at 0x31bc calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[entry(sym(GfxDev))+8]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x31dc calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x31fc calls psema with a0=[entry(sym(GfxDev))+40]:8+56, a1=0x219, a2=[entry(sym(GfxDev))+40]:8, a3=[[entry(sym(GfxDev))+40]:8+72]:8, a6=0x6c, a7=0x68.
  The `jal` at 0x321c calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x3250 calls (unknown callee) with a0=[entry(sym(GfxBoards))+64]:8, a1=?, a2=?, a3=a5 at entry (arg5), a4=entry(sym(GfxBoards)).
  The `jalr` at 0x3290 calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards).
  The `jalr` at 0x32bc calls (unknown callee) with a0=entry(sym(GfxDev)), a1=sp-112, a2=?, a3=?.
  The `jalr` at 0x330c calls (unknown callee) with a0=entry(sym(GfxDev)), a1=?, a2=entry(sym(GfxBoards)), a3=sym(GfxBoards), a4=[entry(sym(GfxDev))+32]:8.
  The `beq` branch at 0x2c00 targets 0x2cec, is taken when a1(?) >= at(=[sym(GfxDevLimit)]) (signed), and falls through when a1(?) < at(=[sym(GfxDevLimit)]) (signed).
  The `beq` branch at 0x2c18 targets 0x2d44, is taken when s0(=entry(sym(GfxDev))) == 0, and falls through when s0(=entry(sym(GfxDev))) != 0.
  The `beq` branch at 0x2c20 targets 0x2d3c, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x2c30 targets 0x2c58, is taken when (t9(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (t9(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2c38 targets 0x2c70, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2c48 targets 0x2c70, is taken when ra(=[ret(gthread_find)]:8) == at(=[entry(sym(GfxDev))+16]:8), and falls through when ra(=[ret(gthread_find)]:8) != at(=[entry(sym(GfxDev))+16]:8).
  The `beq` branch at 0x2c50 targets 0x2d1c and is always taken.
  The `beq` branch at 0x2c58 targets 0x2c70, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2c70 targets 0x2cf4, is taken when s1(=a1) == v0(=0x65), and falls through when s1(=a1) != v0(=0x65).
  The `beq` branch at 0x2c78 targets 0x2eb8, is taken when s1(=a1) == v1(=0x66), and falls through when s1(=a1) != v1(=0x66).
  The `beq` branch at 0x2c80 targets 0x2ef0, is taken when s1(=a1) == a0(=0x69), and falls through when s1(=a1) != a0(=0x69).
  The `beq` branch at 0x2c88 targets 0x2f30, is taken when s1(=a1) == a1(=0x67), and falls through when s1(=a1) != a1(=0x67).
  The `beq` branch at 0x2c90 targets 0x2f68, is taken when s1(=a1) == a2(=0x70), and falls through when s1(=a1) != a2(=0x70).
  The `beq` branch at 0x2c98 targets 0x2fa0, is taken when s1(=a1) == a3(=0x71), and falls through when s1(=a1) != a3(=0x71).
  The `beq` branch at 0x2ca4 targets 0x2d70, is taken when v0(=[entry(sym(GfxDev))+32]:8) == 0, and falls through when v0(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` branch at 0x2cac targets 0x2d4c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x2cb4 targets 0x2de8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2cbc targets 0x2fc0, is taken when s1(=a1) == a6(=0x6c), and falls through when s1(=a1) != a6(=0x6c).
  The `beq` branch at 0x2cc4 targets 0x2e80, is taken when s1(=a1) == a7(=0x68), and falls through when s1(=a1) != a7(=0x68).
  The `beq` branch at 0x2ccc targets 0x2d78, is taken when s1(=a1) == t0(=0x6e), and falls through when s1(=a1) != t0(=0x6e).
  The `beq` branch at 0x2cdc targets 0x2e04, is taken when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) == s0(=entry(sym(GfxDev))), and falls through when t1(=[[entry(sym(GfxDev))+8]:8+16]:8) != s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2ce4 targets 0x2d00 and is always taken.
  The `beq` branch at 0x2cec targets 0x2d1c and is always taken.
  The `beq` branch at 0x2d04 targets 0x2d1c, is taken when t3(=[ret(gthread_find)+24]:8) == 0, and falls through when t3(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2d14 targets 0x2f10, is taken when (t8(=[entry(sym(GfxDev))+4]) & 0x8) == 0, and falls through when (t8(=[entry(sym(GfxDev))+4]) & 0x8) != 0.
  The `beq` branch at 0x2d3c targets 0x2d1c and is always taken.
  The `beq` branch at 0x2d44 targets 0x2d1c and is always taken.
  The `beq` branch at 0x2d68 targets 0x2d00 and is always taken.
  The `beq` branch at 0x2d70 targets 0x2d00 and is always taken.
  The `beq` branch at 0x2d78 targets 0x2d8c and is always taken.
  The `bne` branch at 0x2d90 targets 0x2e40, is taken when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when ra(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `bne` branch at 0x2da8 targets 0x2d80, is taken when at(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when at(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x2de0 targets 0x2d04 and is always taken.
  The `beq` branch at 0x2dfc targets 0x2d00 and is always taken.
  The `beq` branch at 0x2e04 targets 0x2ff8, is taken when s1(=a1) == a0(=0x6a), and falls through when s1(=a1) != a0(=0x6a).
  The `beq` branch at 0x2e0c targets 0x3078, is taken when s1(=a1) == a1(=0x6b), and falls through when s1(=a1) != a1(=0x6b).
  The `beq` branch at 0x2e14 targets 0x309c, is taken when s1(=a1) == a2(=0x6d), and falls through when s1(=a1) != a2(=0x6d).
  The `beq` branch at 0x2e1c targets 0x30d4, is taken when s1(=a1) == a4(=0x6f), and falls through when s1(=a1) != a4(=0x6f).
  The `beq` branch at 0x2e38 targets 0x2d00 and is always taken.
  The `beq` branch at 0x2e58 targets 0x2d98, is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x2e70 targets 0x2e60, is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x2e78 targets 0x2d98 and is always taken.
  The `bne` branch at 0x2e88 targets 0x2f20, is taken when (a6(=[entry(sym(GfxDev))+4]) & 0x8) != 0, and falls through when (a6(=[entry(sym(GfxDev))+4]) & 0x8) == 0.
  The `beq` branch at 0x2e94 targets 0x2f20, is taken when a7(=[ret(gthread_find)+24]:8) == 0, and falls through when a7(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x2ea8 targets 0x2f20, is taken when v0(=ret(threadgroup_refcnt)) == t0(=0x1), and falls through when v0(=ret(threadgroup_refcnt)) != t0(=0x1).
  The `beq` branch at 0x2eb0 targets 0x2d00 and is always taken.
  The `beq` branch at 0x2ee0 targets 0x30a4, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2ee8 targets 0x2d00 and is always taken.
  The `beq` branch at 0x2f00 targets 0x30bc, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x2f08 targets 0x2d00 and is always taken.
  The `beq` branch at 0x2f18 targets 0x2d1c and is always taken.
  The `beq` branch at 0x2f28 targets 0x2d00 and is always taken.
  The `beq` branch at 0x2f58 targets 0x30f4, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2f60 targets 0x2d00 and is always taken.
  The `beq` branch at 0x2f90 targets 0x310c, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2f98 targets 0x2d00 and is always taken.
  The `bne` branch at 0x2fa8 targets 0x2d00, is taken when v0(=ret(drv_priv)) != 0, and falls through when v0(=ret(drv_priv)) == 0.
  The `beq` branch at 0x2fb8 targets 0x2d00 and is always taken.
  The `beq` branch at 0x2fe8 targets 0x32b0, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x2ff0 targets 0x2d00 and is always taken.
  The `bne` branch at 0x3000 targets 0x31bc, is taken when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when t2(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x302c targets 0x303c, is taken when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) == 0, and falls through when a1(=[[entry(sym(GfxDev))+32]:8+192]:8) != 0.
  The `beq` branch at 0x3060 targets 0x2d00, is taken when (a2(=[entry(sym(GfxDev))+4]) & 0x1) == 0, and falls through when (a2(=[entry(sym(GfxDev))+4]) & 0x1) != 0.
  The `beq` branch at 0x3070 targets 0x2d04 and is always taken.
  The `bne` branch at 0x3080 targets 0x31fc, is taken when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) != s0(=entry(sym(GfxDev))), and falls through when a3(=[[entry(sym(GfxDev))+40]:8+72]:8) == s0(=entry(sym(GfxDev))).
  The `beq` branch at 0x3094 targets 0x2d00 and is always taken.
  The `beq` branch at 0x309c targets 0x2d00 and is always taken.
  The `bne` branch at 0x30ac targets 0x3124, is taken when v0(?) < a5(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a5(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x30b4 targets 0x2d00 and is always taken.
  The `bne` branch at 0x30c4 targets 0x3144, is taken when a0(?) < a6(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when a0(?) >= a6(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x30cc targets 0x2d00 and is always taken.
  The `beq` branch at 0x30ec targets 0x2d00 and is always taken.
  The `bne` branch at 0x30fc targets 0x3170, is taken when v0(?) < a2(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a2(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x3104 targets 0x2d00 and is always taken.
  The `bne` branch at 0x3114 targets 0x319c, is taken when v0(?) < a3(=[sym(GfxNumberOfBoards)]) (unsigned), and falls through when v0(?) >= a3(=[sym(GfxNumberOfBoards)]) (unsigned).
  The `beq` branch at 0x311c targets 0x2d00 and is always taken.
  The `bne` branch at 0x3134 targets 0x323c, is taken when a4(=entry(sym(GfxBoards))) != 0, and falls through when a4(=entry(sym(GfxBoards))) == 0.
  The `beq` branch at 0x313c targets 0x2d00 and is always taken.
  The `beq` branch at 0x3154 targets 0x32cc, is taken when v0(=entry(sym(GfxBoards))) == 0, and falls through when v0(=entry(sym(GfxBoards))) != 0.
  The `beq` branch at 0x3168 targets 0x2d00 and is always taken.
  The `beq` branch at 0x3180 targets 0x32d4, is taken when a2(=entry(sym(GfxBoards))) == 0, and falls through when a2(=entry(sym(GfxBoards))) != 0.
  The `beq` branch at 0x318c targets 0x32dc, is taken when a4(=[entry(sym(GfxDev))+32]:8) == 0, and falls through when a4(=[entry(sym(GfxDev))+32]:8) != 0.
  The `beq` branch at 0x3194 targets 0x2d00 and is always taken.
  The `bne` branch at 0x31ac targets 0x3260, is taken when a2(=entry(sym(GfxBoards))) != 0, and falls through when a2(=entry(sym(GfxBoards))) == 0.
  The `beq` branch at 0x31b4 targets 0x2d00 and is always taken.
  The `beq` branch at 0x31d4 targets 0x31f4, is taken when a3(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a3(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x31ec targets 0x31dc, is taken when a5(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when a5(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x31f4 targets 0x3008 and is always taken.
  The `beq` branch at 0x3214 targets 0x3234, is taken when a6(=[[entry(sym(GfxDev))+40]:8+104]) == 0, and falls through when a6(=[[entry(sym(GfxDev))+40]:8+104]) != 0.
  The `bne` branch at 0x322c targets 0x321c, is taken when t0(=[[entry(sym(GfxDev))+40]:8+104]) != 0, and falls through when t0(=[[entry(sym(GfxDev))+40]:8+104]) == 0.
  The `beq` branch at 0x3234 targets 0x3088 and is always taken.
  The `beq` branch at 0x3258 targets 0x2d00 and is always taken.
  The `beq` branch at 0x3298 targets 0x332c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x32a8 targets 0x2d00 and is always taken.
  The `beq` branch at 0x32c4 targets 0x2d00 and is always taken.
  The `beq` branch at 0x32cc targets 0x2d00 and is always taken.
  The `beq` branch at 0x32d4 targets 0x2d00 and is always taken.
  The `beq` branch at 0x3314 targets 0x3344, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x3324 targets 0x2d00 and is always taken.
  The `bne` branch at 0x3334 targets 0x2d00, is taken when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0, and falls through when a0(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `beq` branch at 0x333c targets 0x2d00 and is always taken.
  The `bne` branch at 0x334c targets 0x2d00, is taken when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) != 0, and falls through when a1(=[[entry(sym(GfxDev))+8]:8+16]:8) == 0.
  The `beq` branch at 0x3354 targets 0x2d00 and is always taken.
  The return at 0x2d34 has v0 = one of 0xd, 0x6, ?, 0x13.

- `gfx_shalloc` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x336c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x336c-0x342c (192 bytes).
  It occupies 192 bytes.
  3 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x33b4, `ld` at 0x33c8, `ld` at 0x33fc.
  The `ld` at 0x33cc loads 8 bytes from [ret(gthread_find)+16]:8 +0x18.
  The `lw` at 0x33dc loads 4 bytes from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `sd` at 0x33ec stores 8 bytes to ?.
  The `ld` at 0x33f0 loads 8 bytes from ?.
  The `sw` at 0x3428 stores 4 bytes to ret(gfx_group_create) +0xc.
  The `jal` at 0x3374 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x337c calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x338c calls gfx_group_create with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x3398 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x33ac calls gthread_attach_group with a0=ret(gthread_find), a1=ret(gfx_group_create), a2=?, a3=?.
  The `jal` at 0x33c0 calls GfxListWriterLock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3400 calls GfxListWriterUnlock with a0=[ret(gthread_find)+16]:8, a1=ret(GfxListWriterLock), a2=?, a3=?, a5=0x1.
  The `jal` at 0x3408 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0x33a0 targets 0x3408, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x33b8 targets 0x3408, is taken when a0(=[ret(gthread_find)+16]:8) == 0, and falls through when a0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x33d4 targets 0x3400, is taken when a4(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when a4(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x33e4 targets 0x3424, is taken when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0, and falls through when (at(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `bne` branch at 0x33f4 targets 0x33ec, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x3424 targets 0x33ec and is always taken.
  The return at 0x341c has v0 = ret(splx).

- `gfx_shfree` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x342c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x342c-0x3458 (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x3434 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x343c calls gfx_group_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x3444 calls gfx_group_destroy with a0=ret(gfx_group_find), a1=?, a2=?, a3=?.
  The return at 0x3450 has v0 = ret(gfx_group_destroy).

- `gfx_frs_valid_pipenum` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x3458 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x3458-0x3464 (12 bytes).
  It occupies 12 bytes.
  The return at 0x345c has v0 = ?.

- `gfx_frs_install` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x3464 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x3464-0x34bc (88 bytes).
  It occupies 88 bytes.
  The `ld` at 0x3470 loads 8 bytes from (sym(GfxBoards) + (a1 << 0x3)) +0x0.
  The `ld` at 0x3474 loads 8 bytes from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x38.
  The `ld` at 0x3478 loads 8 bytes from [[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8 +0xd0.
  The `ld` at 0x348c loads 8 bytes from [(sym(GfxBoards) + (a1 << 0x3))]:8 +0x40.
  The `jalr` at 0x3490 calls (unknown callee) with a0=[[(sym(GfxBoards) + (a1 << 0x3))]:8+64]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `jal` at 0x34ac calls cmn_err with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8, a4=[(sym(GfxBoards) + (a1 << 0x3))]:8, a5=a0 at entry (arg0), a6=(a1 << 0x3).
  The `beq` branch at 0x3484 targets 0x34a4, is taken when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) == 0, and falls through when a3(=[[[(sym(GfxBoards) + (a1 << 0x3))]:8+56]:8+208]:8) != 0.
  The `beq` branch at 0x34b4 targets 0x349c and is always taken.
  The return at 0x349c has v0 = one of ret(?), ret(cmn_err).

- `gfx_frs_uninstall` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x34bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x34bc-0x350c (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x34c8 loads 8 bytes from (sym(GfxBoards) + (a0 << 0x3)) +0x0.
  The `ld` at 0x34cc loads 8 bytes from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x38.
  The `ld` at 0x34d0 loads 8 bytes from [[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8 +0xd8.
  The `ld` at 0x34e4 loads 8 bytes from [(sym(GfxBoards) + (a0 << 0x3))]:8 +0x40.
  The `jalr` at 0x34e0 calls (unknown callee) with a0=[[(sym(GfxBoards) + (a0 << 0x3))]:8+64]:8, a1=a1 at entry (arg1), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `jal` at 0x34fc calls cmn_err with a0=0x5, a1=sym(.rodata), a2=[(sym(GfxBoards) + (a0 << 0x3))]:8, a3=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8.
  The `beq` branch at 0x34d8 targets 0x34f4, is taken when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) == 0, and falls through when a3(=[[[(sym(GfxBoards) + (a0 << 0x3))]:8+56]:8+216]:8) != 0.
  The `beq` branch at 0x3504 targets 0x34ec and is always taken.
  The return at 0x34ec has v0 = one of ret(?), ret(cmn_err).

- `irix5_to_gfx_getboardinfo_args` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x350c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x350c-0x3584 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x3520 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x3530 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x3534, `sd` at 0x3580.
  The `sw` at 0x353c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x3548 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x354c loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x3550 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x3554 loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x3558 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x355c loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x3560 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `jal` at 0x3570 calls kern_malloc with a0=0xc, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3518 targets 0x3548, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x3528 targets 0x3570, is taken when at(=[a3]) < 0xc (unsigned), and falls through when at(=[a3]) >= 0xc (unsigned).
  The `beq` branch at 0x3540 targets 0x3564 and is always taken.
  The `beq` branch at 0x357c targets 0x3538 and is always taken.
  The return at 0x3568 has v0 = 0x0.

- `irix5_to_gfx_download_args` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x3584 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x3584-0x3624 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x3598 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x35a8 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x35ac, `sd` at 0x3620.
  The `sw` at 0x35b4 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x35c0 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x35c4 loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x35c8 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x35cc loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x35d0 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x35d4 loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x35d8 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `lw` at 0x35dc loads 4 bytes from [a3+16]:8 +0xc.
  The `sw` at 0x35e0 stores 4 bytes to a1 (arg1 at entry) +0x14.
  The `lw` at 0x35e4 loads 4 bytes from [a3+16]:8 +0x10.
  The `sw` at 0x35e8 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `lw` at 0x35ec loads 4 bytes from [a3+16]:8 +0x14.
  The `sw` at 0x35f0 stores 4 bytes to a1 (arg1 at entry) +0x1c.
  The `lw` at 0x35f4 loads 4 bytes from [a3+16]:8 +0x18.
  The `sw` at 0x35f8 stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `lw` at 0x35fc loads 4 bytes from [a3+16]:8 +0x1c.
  The `sw` at 0x3600 stores 4 bytes to a1 (arg1 at entry) +0x24.
  The `jal` at 0x3610 calls kern_malloc with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3590 targets 0x35c0, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x35a0 targets 0x3610, is taken when at(=[a3]) < 0x20 (unsigned), and falls through when at(=[a3]) >= 0x20 (unsigned).
  The `beq` branch at 0x35b8 targets 0x3604 and is always taken.
  The `beq` branch at 0x361c targets 0x35b0 and is always taken.
  The return at 0x3608 has v0 = 0x0.

- `irix5_to_gfx_attach_board_args` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)` at 0x3624 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`.
  Range: 0x3624-0x3694 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x3638 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x3648 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x364c, `sd` at 0x3690.
  The `sw` at 0x3654 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x3660 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x3664 loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x3668 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x366c loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x3670 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `jal` at 0x3680 calls kern_malloc with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3630 targets 0x3660, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x3640 targets 0x3680, is taken when at(=[a3]) < 0x8 (unsigned), and falls through when at(=[a3]) >= 0x8 (unsigned).
  The `beq` branch at 0x3658 targets 0x3674 and is always taken.
  The `beq` branch at 0x368c targets 0x3650 and is always taken.
  The return at 0x3678 has v0 = 0x0.
