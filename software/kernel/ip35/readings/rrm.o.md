# Readings: `usr/cpu/sysgen/IP35boot/rrm.o`

One entry per routine, filed here from the reading batches by binary.

- `pane_gc` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x0-0x178 (376 bytes).
  It occupies 376 bytes.
  The `lh` at 0x50 loads 2 bytes from table(sym(rrm_pane)) +0x10.
  The `sh` at 0x6c stores 2 bytes to ?.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0xbc, `lh` at 0xec.
  2 such `sh` accesses store 2 bytes to table(sym(.bss)) -0x2, including `sh` at 0x108, `sh` at 0x124.
  The `beq` branch at 0x18 targets 0x78, is taken when a4(=[sym(.sbss)+8]) >= a5(=[sym(max_pane)]) (signed), and falls through when a4(=[sym(.sbss)+8]) < a5(=[sym(max_pane)]) (signed).
  The `beq` branch at 0x24 targets 0x15c and is always taken.
  The `beq` branch at 0x38 targets 0x84, is taken when a1(?) >= a5(=[sym(max_pane)]) (signed), and falls through when a1(?) < a5(=[sym(max_pane)]) (signed).
  The `bne` branch at 0x54 targets 0x2c, is taken when v1(=[table(sym(rrm_pane))+16]:2) != 0, and falls through when v1(=[table(sym(rrm_pane))+16]:2) == 0.
  The `bne` branch at 0x68 targets 0x2c, is taken when a6(?) != t0(=0x8), and falls through when a6(?) == t0(=0x8).
  The `beq` branch at 0x70 targets 0x12c and is always taken.
  The `blez` branch at 0x84 targets 0x148, is taken when a4(=[sym(.sbss)+8]) <= 0 (signed), and falls through when a4(=[sym(.sbss)+8]) > 0 (signed).
  The `beq` branch at 0x90 targets 0x168 and is always taken.
  The `beq` branch at 0xa4 targets 0x128, is taken when a1(?) >= a4(=[sym(.sbss)+8]) (signed), and falls through when a1(?) < a4(=[sym(.sbss)+8]) (signed).
  The `beq` branch at 0xc0 targets 0x114, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xd4 targets 0x128, is taken when a1(?) >= a4(=[sym(.sbss)+8]) (signed), and falls through when a1(?) < a4(=[sym(.sbss)+8]) (signed).
  The `bne` branch at 0xf0 targets 0x98, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x104 targets 0x98, is taken when a6(?) != t0(=0x8), and falls through when a6(?) == t0(=0x8).
  The `beq` branch at 0x10c targets 0x128 and is always taken.
  The `bne` branch at 0x120 targets 0xc8, is taken when a6(?) != t0(=0x8), and falls through when a6(?) == t0(=0x8).
  The `beq` branch at 0x130 targets 0x13c, is taken when a1(?) >= t9(=[sym(max_pane)]-2) (signed), and falls through when a1(?) < t9(=[sym(max_pane)]-2) (signed).
  The `beq` branch at 0x14c targets 0x138, is taken when a5(=[sym(max_pane)]) >= 0x3 (signed), and falls through when a5(=[sym(max_pane)]) < 0x3 (signed).
  The `beq` branch at 0x154 targets 0x13c and is always taken.
  The `beq` branch at 0x160 targets 0x44 and is always taken.
  The `beq` branch at 0x170 targets 0xb0 and is always taken.
  The return at 0x140 has v0 = ?.

- `bind_pane` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x178 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x178-0x34c (468 bytes).
  It occupies 468 bytes.
  The `lw` at 0x1e4 loads 4 bytes from ?.
  The `ld` at 0x1f0 loads 8 bytes from ?.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x1f4, `ld` at 0x258.
  The `lh` at 0x228 loads 2 bytes from table(sym(.bss)) +0x0.
  The `lh` at 0x248 loads 2 bytes from table(sym(rrm_pane)) +0x0.
  The `sh` at 0x24c stores 2 bytes to table(sym(rrm_pane)) +0x2.
  The `sh` at 0x254 stores 2 bytes to table(sym(rrm_pane)) +0x0.
  The `sh` at 0x25c stores 2 bytes to table(sym(rrm_pane)) +0x12.
  The `sh` at 0x260 stores 2 bytes to table(sym(rrm_pane)) +0xc.
  The `sw` at 0x268 stores 4 bytes to table(sym(rrm_pane)) +0x8.
  The `sw` at 0x26c stores 4 bytes to table(sym(rrm_pane)) +0x4.
  The `sd` at 0x270 stores 8 bytes to table(sym(rrm_pane)) +0x58.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x2bc, `lh` at 0x2d8, `lh` at 0x2e0.
  3 such `sh` accesses store 2 bytes to ?, including `sh` at 0x2f4, `sh` at 0x300, `sh` at 0x324.
  The `jal` at 0x1a0 calls psema with a0=sym(.bss), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x29c calls bcopy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2fc calls vsema with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x328 calls pane_gc with a0=?, a1=sym(rrm_pane), a2=?, a3=?.
  The `blez` branch at 0x1b0 targets 0x208, is taken when v0(=[sym(max_pane)]) <= 0 (signed), and falls through when v0(=[sym(max_pane)]) > 0 (signed).
  The `beq` branch at 0x1b8 targets 0x33c and is always taken.
  The `beq` branch at 0x1cc targets 0x208, is taken when s0(?) >= v0(=[sym(max_pane)]) (signed), and falls through when s0(?) < v0(=[sym(max_pane)]) (signed).
  The `bne` branch at 0x1e8 targets 0x1c0, is taken when v1(?) != s2(=a1), and falls through when v1(?) == s2(=a1).
  The `bnel` branch at 0x1f8 targets 0x1c4, is taken when t8(=[a0+40]:8) != t9(?), and falls through when t8(=[a0+40]:8) == t9(?); its branch-likely delay slot `addiu s0,s0,1` at 0x1fc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x200 targets 0x274 and is always taken.
  The `beq` branch at 0x20c targets 0x328, is taken when v0(=[sym(.sbss)+4]:2) == 0, and falls through when v0(=[sym(.sbss)+4]:2) != 0.
  The `blez` branch at 0x278 targets 0x2d8, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `beq` branch at 0x280 targets 0x2b8 and is always taken.
  The `beq` branch at 0x2b0 targets 0x2d8, is taken when s2(?) >= v0(=[sym(.sbss)+4]:2) (signed), and falls through when s2(?) < v0(=[sym(.sbss)+4]:2) (signed).
  The `beq` branch at 0x2c0 targets 0x288, is taken when a5(?) == s0(?), and falls through when a5(?) != s0(?).
  The `bne` branch at 0x2d0 targets 0x2b8, is taken when s2(?) < v0(?) (signed), and falls through when s2(?) >= v0(?) (signed).
  The `beq` branch at 0x2dc targets 0x31c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x320 targets 0x2e4 and is always taken.
  The `beq` branch at 0x334 targets 0x214 and is always taken.
  The `beq` branch at 0x344 targets 0x1d8 and is always taken.
  The return at 0x314 has v0 = ?.

- `unbind_pane` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x34c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x34c-0x394 (72 bytes).
  It occupies 72 bytes.
  The `lh` at 0x370 loads 2 bytes from a0 (arg0 at entry) +0x10.
  The `sh` at 0x380 stores 2 bytes to a0 (arg0 at entry) +0x10.
  The `jal` at 0x364 calls psema with a0=sym(.bss), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x37c calls vsema with a0=sym(.bss), a1=[a0+16]:2-1, a2=?, a3=?.
  The return at 0x38c has v0 = ret(vsema).

- `clip2pane` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x394 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x394-0x408 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x3a8 loads 8 bytes from a1 (arg1 at entry) +0x28.
  The `lw` at 0x3cc loads 4 bytes from ?.
  The `ld` at 0x3d8 loads 8 bytes from ?.
  The `blez` branch at 0x39c targets 0x3ec, is taken when a5(=[sym(max_pane)]) <= 0 (signed), and falls through when a5(=[sym(max_pane)]) > 0 (signed).
  The `beq` branch at 0x3a4 targets 0x3f8 and is always taken.
  The `beq` branch at 0x3b4 targets 0x3ec, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x3d0 targets 0x3ac, is taken when v1(?) != a0, and falls through when v1(?) == a0.
  The `bne` branch at 0x3dc targets 0x3b0, is taken when v1(?) != a7(=[a1+40]:8), and falls through when v1(?) == a7(=[a1+40]:8).
  The `beq` branch at 0x3e4 targets 0x3f0 and is always taken.
  The `beq` branch at 0x400 targets 0x3c0 and is always taken.
  The return at 0x3f0 has v0 = one of ?, 0x0.

- `pane_cleanup` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x408 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x408-0x4bc (180 bytes).
  It occupies 180 bytes.
  The `lh` at 0x444 loads 2 bytes from ret(clip2pane) +0xe.
  The `lh` at 0x448 loads 2 bytes from ret(clip2pane) +0xc.
  The `sw` at 0x44c stores 4 bytes to ret(clip2pane) +0x4.
  The `sh` at 0x45c stores 2 bytes to ret(clip2pane) +0xc.
  The `sd` at 0x460 stores 8 bytes to ret(clip2pane) +0x38.
  The `sh` at 0x46c stores 2 bytes to ret(clip2pane) +0xe.
  The `ld` at 0x484 loads 8 bytes from ret(clip2pane) +0xa0.
  The `jal` at 0x414 calls clip2pane with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x42c calls psema with a0=sym(.bss), a1=0x19, a2=?, a3=?.
  The `jal` at 0x438 calls mutex_spinlock with a0=ret(clip2pane)+80, a1=?, a2=?, a3=?.
  The `jal` at 0x468 calls vsema with a0=ret(clip2pane)+40, a1=?, a2=[ret(clip2pane)+14]:2, a3=-0x4b.
  The `jal` at 0x470 calls sv_signal with a0=ret(clip2pane)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x47c calls mutex_spinunlock with a0=ret(clip2pane)+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x494 calls vsema with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x4ac calls rrmSwapUnGroup with a0=a1 at entry (arg1), a1=ret(clip2pane), a2=?, a3=?, a4=[ret(clip2pane)+160]:8.
  The `beq` branch at 0x41c targets 0x49c, is taken when v0(=ret(clip2pane)) == 0, and falls through when v0(=ret(clip2pane)) != 0.
  The `beq` branch at 0x458 targets 0x478, is taken when a2(=[ret(clip2pane)+14]:2) == 0, and falls through when a2(=[ret(clip2pane)+14]:2) != 0.
  The `bne` branch at 0x488 targets 0x4ac, is taken when a4(=[ret(clip2pane)+160]:8) != 0, and falls through when a4(=[ret(clip2pane)+160]:8) == 0.
  The `beq` branch at 0x4b4 targets 0x494 and is always taken.
  The return at 0x4a4 has v0 = one of ret(clip2pane), ret(vsema).

- `pane_setnullclip` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x4bc-0x504 (72 bytes).
  It occupies 72 bytes.
  The `ld` at 0x4bc loads 8 bytes from a1 (arg1 at entry) +0x20.
  The `ld` at 0x4c0 loads 8 bytes from [a1+32]:8 +0x58.
  The `lw` at 0x4dc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lh` at 0x4e0 loads 2 bytes from a0 (arg0 at entry) +0xc.
  The `sh` at 0x4ec stores 2 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x4f4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x4d4 calls (unknown callee) with a0=a0+96, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4fc has v0 = [a0+8]+1.

- `pane_validmask` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x504 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x504-0x50c (8 bytes).
  It occupies 8 bytes.
  The `lh` at 0x508 loads 2 bytes from a0 (arg0 at entry) +0xc.
  The return at 0x504 has v0 = [a0+12]:2.

- `invalidate_pane` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x50c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x50c-0x598 (140 bytes).
  It occupies 140 bytes.
  The `lh` at 0x574 loads 2 bytes from ret(clip2pane) +0xc.
  The `sh` at 0x58c stores 2 bytes to ret(clip2pane) +0xc.
  The `jal` at 0x528 calls clip2pane with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x56c calls mutex_spinlock with a0=ret(clip2pane)+80, a1=?, a2=?, a3=?.
  The `jal` at 0x588 calls mutex_spinunlock with a0=ret(clip2pane)+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x538 targets 0x564, is taken when (s0(=a0) & 0x2) == 0, and falls through when (s0(=a0) & 0x2) != 0.
  The `bne` branch at 0x540 targets 0x568, is taken when v0(=ret(clip2pane)) != 0, and falls through when v0(=ret(clip2pane)) == 0.
  The `beq` branch at 0x564 targets 0x548, is taken when v0(=ret(clip2pane)) == 0, and falls through when v0(=ret(clip2pane)) != 0.
  The `beq` branch at 0x590 targets 0x54c and is always taken.
  The return at 0x55c has v0 = one of 0x0, [ret(clip2pane)+12]:2.

- `invalidate_pane_buffer` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x598 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x598-0x614 (124 bytes).
  It occupies 124 bytes.
  The `lh` at 0x5f4 loads 2 bytes from ret(clip2pane) +0xc.
  The `sh` at 0x608 stores 2 bytes to ret(clip2pane) +0xc.
  The `jal` at 0x5b0 calls clip2pane with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x5e8 calls mutex_spinlock with a0=ret(clip2pane)+80, a1=?, a2=?, a3=?.
  The `jal` at 0x604 calls mutex_spinunlock with a0=ret(clip2pane)+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x5bc targets 0x5c8, is taken when (s0(=a0) & 0x2) == 0, and falls through when (s0(=a0) & 0x2) != 0.
  The `bne` branch at 0x5c8 targets 0x5e8, is taken when s1(=ret(clip2pane)) != 0, and falls through when s1(=ret(clip2pane)) == 0.
  The `beq` branch at 0x60c targets 0x5d4 and is always taken.
  The return at 0x5e0 has v0 = 0x0.

- `validate_pane_clip` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x614 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x614-0x7d8 (452 bytes).
  It occupies 452 bytes.
  3 such `ld` accesses load 8 bytes from ret(clip2pane) +0x80, including `ld` at 0x638, `ld` at 0x66c, `ld` at 0x6bc.
  The `ld` at 0x644 loads 8 bytes from a2 (arg2 at entry) +0x20.
  The `lw` at 0x650 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `sw` at 0x664 stores 4 bytes to a2 (arg2 at entry) +0x18.
  2 such `lh` accesses load 2 bytes from ret(clip2pane) +0xc, including `lh` at 0x688, `lh` at 0x6e8.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x38, including `lw` at 0x694, `lw` at 0x77c.
  The `lh` at 0x6a0 loads 2 bytes from ret(clip2pane) +0x12.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x38, including `sw` at 0x6b0, `sw` at 0x774.
  2 such `sw` accesses store 4 bytes to ret(clip2pane) +0x20, including `sw` at 0x6b4, `sw` at 0x778.
  The `sd` at 0x6c8 stores 8 bytes to a2 (arg2 at entry) +0x20.
  The `ld` at 0x6d8 loads 8 bytes from ?.
  The `sd` at 0x6e4 stores 8 bytes to ?.
  The `lw` at 0x6ec loads 4 bytes from ret(clip2pane) +0x8.
  The `sw` at 0x700 stores 4 bytes to ret(clip2pane) +0x8.
  The `lh` at 0x718 loads 2 bytes from ret(clip2pane) +0xe.
  The `sh` at 0x720 stores 2 bytes to ret(clip2pane) +0xc.
  The `sh` at 0x738 stores 2 bytes to ret(clip2pane) +0xe.
  The `sh` at 0x790 stores 2 bytes to ret(clip2pane) +0x12.
  The `sd` at 0x7a4 stores 8 bytes to ret(clip2pane) +0x80.
  The `sd` at 0x7b0 stores 8 bytes to ret(clip2pane) +0x38.
  The `jal` at 0x624 calls clip2pane with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x670 calls copyin with a0=[a2+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x680 calls mutex_spinlock with a0=ret(clip2pane)+80, a1=?, a2=?, a3=?.
  The `jal` at 0x708 calls mutex_spinunlock with a0=ret(clip2pane)+80, a1=ret(mutex_spinlock), a2=?, a3=?, a4=([ret(clip2pane)+12]:2 | 0x42), a7=ret(clip2pane)+96.
  The `jal` at 0x73c calls sv_signal with a0=ret(clip2pane)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x748 calls mutex_spinunlock with a0=ret(clip2pane)+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x794 calls kern_malloc with a0=0xe0, a1=[ret(clip2pane)+128]:8, a2=?, a3=?.
  The `jal` at 0x7ac calls vsema with a0=ret(clip2pane)+40, a1=-0x3, a2=?, a3=?, a4=([ret(clip2pane)+12]:2 | 0x42), a7=ret(clip2pane)+96.
  The `jal` at 0x7c8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=ret(clip2pane), a3=?.
  The `beq` branch at 0x630 targets 0x750, is taken when v0(=ret(clip2pane)) == 0, and falls through when v0(=ret(clip2pane)) != 0.
  The `beq` branch at 0x63c targets 0x794, is taken when a1(=[ret(clip2pane)+128]:8) == 0, and falls through when a1(=[ret(clip2pane)+128]:8) != 0.
  The `beq` branch at 0x648 targets 0x67c, is taken when a0(=[a2+32]:8) == 0, and falls through when a0(=[a2+32]:8) != 0.
  The `bne` branch at 0x65c targets 0x670, is taken when s2(=([a2+24] << 0x4)) < 0xe1 (unsigned), and falls through when s2(=([a2+24] << 0x4)) >= 0xe1 (unsigned).
  The `bne` branch at 0x678 targets 0x7bc, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x698 targets 0x778, is taken when (t8(=[ret(clip2pane)+12]:2) & 0x8) == 0, and falls through when (t8(=[ret(clip2pane)+12]:2) & 0x8) != 0.
  The `beq` branch at 0x6a4 targets 0x76c, is taken when t9(=[ret(clip2pane)+18]:2) == 0, and falls through when t9(=[ret(clip2pane)+18]:2) != 0.
  The `bgtz` branch at 0x6e0 targets 0x6cc, is taken when a3(?) > 0 (signed), and falls through when a3(?) <= 0 (signed).
  The `beq` branch at 0x6fc targets 0x718, is taken when (v0(=[ret(clip2pane)+12]:2) & 0x2) == 0, and falls through when (v0(=[ret(clip2pane)+12]:2) & 0x2) != 0.
  The `beq` branch at 0x710 targets 0x754 and is always taken.
  The `beq` branch at 0x728 targets 0x744, is taken when (a2(=[ret(clip2pane)+14]:2) & 0x2) == 0, and falls through when (a2(=[ret(clip2pane)+14]:2) & 0x2) != 0.
  The `beq` branch at 0x734 targets 0x7a8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x770 targets 0x6b4 and is always taken.
  The `beq` branch at 0x78c targets 0x6b8 and is always taken.
  The `beq` branch at 0x7a0 targets 0x644 and is always taken.
  The `beq` branch at 0x7b4 targets 0x73c and is always taken.
  The `beq` branch at 0x7d0 targets 0x754 and is always taken.
  The return at 0x764 has v0 = one of 0x0, 0xe.

- `validate_pane_swapbuf` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x7d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x7d8-0x878 (160 bytes).
  It occupies 160 bytes.
  The `lh` at 0x804 loads 2 bytes from ret(clip2pane) +0xe.
  The `lh` at 0x808 loads 2 bytes from ret(clip2pane) +0xc.
  The `sw` at 0x814 stores 4 bytes to ret(clip2pane) +0x14.
  The `sh` at 0x820 stores 2 bytes to ret(clip2pane) +0xc.
  The `sh` at 0x838 stores 2 bytes to ret(clip2pane) +0xe.
  The `sd` at 0x86c stores 8 bytes to ret(clip2pane) +0x38.
  The `jal` at 0x7e4 calls clip2pane with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7f8 calls mutex_spinlock with a0=ret(clip2pane)+80, a1=?, a2=?, a3=?.
  The `jal` at 0x83c calls sv_signal with a0=ret(clip2pane)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x848 calls mutex_spinunlock with a0=ret(clip2pane)+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x868 calls vsema with a0=ret(clip2pane)+40, a1=?, a2=?, a3=?, a7=-0x9.
  The `beq` branch at 0x7ec targets 0x850, is taken when v0(=ret(clip2pane)) == 0, and falls through when v0(=ret(clip2pane)) != 0.
  The `beq` branch at 0x828 targets 0x844, is taken when (a5(=[ret(clip2pane)+14]:2) & 0x8) == 0, and falls through when (a5(=[ret(clip2pane)+14]:2) & 0x8) != 0.
  The `beq` branch at 0x834 targets 0x864, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x870 targets 0x83c and is always taken.
  The return at 0x85c has v0 = 0x0.

- `validate_pane_buffer` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x878 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x878-0x8c8 (80 bytes).
  It occupies 80 bytes.
  The `lh` at 0x894 loads 2 bytes from a0 (arg0 at entry) +0xc.
  The `sh` at 0x8a8 stores 2 bytes to a0 (arg0 at entry) +0xc.
  The `jal` at 0x88c calls mutex_spinlock with a0=a0+80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x8a4 calls sv_broadcast with a0=a0+72, a1=?, a2=?, a3=?.
  The `jal` at 0x8b4 calls mutex_spinunlock with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The return at 0x8c0 has v0 = ret(mutex_spinunlock).

- `validate_my_pane_buffer` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x8c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x8c8-0x97c (180 bytes).
  It occupies 180 bytes.
  The `lh` at 0x8f4 loads 2 bytes from a0 (arg0 at entry) +0xc.
  The `jal` at 0x8ec calls mutex_spinlock with a0=a0+80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x90c calls hold_nonfatalsig with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0x920 calls sv_wait_sig with a0=a0+72, a1=0x21e, a2=a0+80, a3=ret(mutex_spinlock).
  The `jal` at 0x930 calls release_nonfatalsig with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0x958 calls release_nonfatalsig with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0x96c calls mutex_spinunlock with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x904 targets 0x968, is taken when (at(?) & 0x4) == 0, and falls through when (at(?) & 0x4) != 0.
  The `bltz` branch at 0x928 targets 0x958, is taken when v0(=ret(sv_wait_sig)) < 0 (signed), and falls through when v0(=ret(sv_wait_sig)) >= 0 (signed).
  The `beq` branch at 0x960 targets 0x93c and is always taken.
  The `beq` branch at 0x974 targets 0x93c and is always taken.
  The return at 0x950 has v0 = one of -0x1, 0x0.

- `validate_my_pane_resources` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x97c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x97c-0xdc4 (1096 bytes).
  It occupies 1096 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0xc, including `lh` at 0x9cc, `lh` at 0xc00.
  The `sh` at 0x9e4 stores 2 bytes to a0 (arg0 at entry) +0xc.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x38, including `ld` at 0x9e8, `ld` at 0xad0, `ld` at 0xba0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x9f4, `lw` at 0xaa8, `lw` at 0xae4.
  5 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x8, including `ld` at 0xa00, `ld` at 0xa6c, `ld` at 0xa98.
  4 such `ld` accesses load 8 bytes from [a1+8]:8 +0x8, including `ld` at 0xa04, `ld` at 0xa70, `ld` at 0xaf4.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0xa18, `lw` at 0xb08, `lw` at 0xc48.
  The `sh` at 0xa58 stores 2 bytes to a0 (arg0 at entry) +0xe.
  The `sd` at 0xa60 stores 8 bytes to a0 (arg0 at entry) +0x38.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0xe, including `lh` at 0xac0, `lh` at 0xb90.
  The `jal` at 0x9b0 calls validate_my_pane_buffer with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x9c0 calls mutex_spinlock with a0=a0+80, a1=?, a2=?, a3=?.
  The `jal` at 0xa28 calls pane_setnullclip with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xa34 calls mutex_spinunlock with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xa48 calls cpsema with a0=a0+40, a1=?, a2=?, a3=?.
  The `jal` at 0xa64 calls mutex_spinunlock with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xab0 calls GfxMessage with a0=sp-136, a1=?, a2=?, a3=?, a4=[[a1+8]:8+8]:8.
  The `jal` at 0xab8 calls mutex_spinlock with a0=a0+80, a1=?, a2=?, a3=?.
  The `jal` at 0xb18 calls pane_setnullclip with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xb24 calls mutex_spinunlock with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xb5c calls hold_nonfatalsig with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xb70 calls sv_wait_sig with a0=a0+64, a1=0x21e, a2=a0+80, a3=ret(mutex_spinlock).
  The `jal` at 0xb80 calls release_nonfatalsig with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xb88 calls mutex_spinlock with a0=a0+80, a1=?, a2=?, a3=?.
  The `jal` at 0xbac calls mutex_spinunlock with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xbcc calls mutex_spinunlock with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xbd4 calls hold_nonfatalsig with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xbe0 calls psema with a0=?, a1=0x31e, a2=?, a3=?.
  The `jal` at 0xbf0 calls release_nonfatalsig with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xbf8 calls mutex_spinlock with a0=a0+80, a1=?, a2=?, a3=?.
  The `jal` at 0xc40 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc58 calls pane_setnullclip with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xc64 calls mutex_spinunlock with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xc74 calls mutex_spinunlock with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xc84 calls curproc with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xc8c calls proc_pid with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0xca4 calls cmn_err_tag with a0=0x853, a1=0x4, a2=sym(.rodata), a3=ret(proc_pid).
  The `jal` at 0xcac calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcb8 calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0xcc4 calls mutex_spinunlock with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xcd4 calls curproc with a0=a0 at entry (arg0), a1=[[a1+8]:8+8]:8, a2=?, a3=?.
  The `jal` at 0xcdc calls proc_pid with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0xcf4 calls cmn_err_tag with a0=0x851, a1=0x4, a2=sym(.rodata), a3=ret(proc_pid).
  The `jal` at 0xcfc calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd08 calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0xd14 calls mutex_spinunlock with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xd28 calls mutex_spinunlock with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xd38 calls release_nonfatalsig with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xd48 calls release_nonfatalsig with a0=sp-144, a1=?, a2=?, a3=?.
  The `jal` at 0xd58 calls curproc with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xd60 calls proc_pid with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0xd78 calls cmn_err_tag with a0=0x852, a1=0x4, a2=sym(.rodata), a3=ret(proc_pid).
  The `jal` at 0xd80 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd8c calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0xd98 calls mutex_spinunlock with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xda8 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xdb4 calls mutex_spinunlock with a0=a0+80, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x9a8 targets 0xb34, is taken when (a2 & 0x8e) == 0, and falls through when (a2 & 0x8e) != 0.
  The `bltz` branch at 0x9b8 targets 0xbbc, is taken when v0(=ret(validate_my_pane_buffer)) < 0 (signed), and falls through when v0(=ret(validate_my_pane_buffer)) >= 0 (signed).
  The `beq` branch at 0x9e0 targets 0xd24, is taken when (s5(?) & 0xa) == 0, and falls through when (s5(?) & 0xa) != 0.
  The `beq` branch at 0x9ec targets 0xc74, is taken when v1(=[a0+56]:8) == s1(=a1), and falls through when v1(=[a0+56]:8) != s1(=a1).
  The `bne` branch at 0x9f8 targets 0xa48, is taken when a0(=[a0+4]) != 0, and falls through when a0(=[a0+4]) == 0.
  The `beq` branch at 0xa08 targets 0xa44, is taken when a1(=[[a1+8]:8+8]:8) == s1(=a1), and falls through when a1(=[[a1+8]:8+8]:8) != s1(=a1).
  The `beq` branch at 0xa10 targets 0xa48, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xa20 targets 0xcd4, is taken when (a3(=[a1+4]) & 0x8) == 0, and falls through when (a3(=[a1+4]) & 0x8) != 0.
  The `beq` branch at 0xa3c targets 0xb38 and is always taken.
  The `beq` branch at 0xa50 targets 0xbcc, is taken when v0(=ret(cpsema)) == 0, and falls through when v0(=ret(cpsema)) != 0.
  The `beq` branch at 0xa74 targets 0xbc4, is taken when a4(=[[a1+8]:8+8]:8) == 0, and falls through when a4(=[[a1+8]:8+8]:8) != 0.
  The `beq` branch at 0xa88 targets 0xa98, is taken when (s5(?) & 0x2) == 0, and falls through when (s5(?) & 0x2) != 0.
  The `beq` branch at 0xac8 targets 0xba8, is taken when (t3(=[a0+14]:2) & 0xa) == 0, and falls through when (t3(=[a0+14]:2) & 0xa) != 0.
  The `bne` branch at 0xad4 targets 0xba8, is taken when t8(=[a0+56]:8) != s1(=a1), and falls through when t8(=[a0+56]:8) == s1(=a1).
  The `bne` branch at 0xae8 targets 0xb5c, is taken when ra(=[a0+4]) != 0, and falls through when ra(=[a0+4]) == 0.
  The `beq` branch at 0xaf8 targets 0xb5c, is taken when at(=[[a1+8]:8+8]:8) == s1(=a1), and falls through when at(=[[a1+8]:8+8]:8) != s1(=a1).
  The `beq` branch at 0xb00 targets 0xb5c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xb10 targets 0xc84, is taken when (v1(=[a1+4]) & 0x8) == 0, and falls through when (v1(=[a1+4]) & 0x8) != 0.
  The `beq` branch at 0xb2c targets 0xb38 and is always taken.
  The `bltz` branch at 0xb78 targets 0xd38, is taken when v0(=ret(sv_wait_sig)) < 0 (signed), and falls through when v0(=ret(sv_wait_sig)) >= 0 (signed).
  The `beq` branch at 0xb98 targets 0xba8, is taken when (a0(=[a0+14]:2) & 0xa) == 0, and falls through when (a0(=[a0+14]:2) & 0xa) != 0.
  The `beq` branch at 0xba4 targets 0xae4, is taken when a1(=[a0+56]:8) == s1(=a1), and falls through when a1(=[a0+56]:8) != s1(=a1).
  The `beq` branch at 0xbb4 targets 0xb38 and is always taken.
  The `beq` branch at 0xbbc targets 0xb38 and is always taken.
  The `beq` branch at 0xbc4 targets 0xb38 and is always taken.
  The `bltz` branch at 0xbe8 targets 0xd48, is taken when v0(=ret(psema)) < 0 (signed), and falls through when v0(=ret(psema)) >= 0 (signed).
  The `beq` branch at 0xc14 targets 0xda8, is taken when (s5(?) & 0xa) == 0, and falls through when (s5(?) & 0xa) != 0.
  The `bne` branch at 0xc20 targets 0xa58, is taken when t8(=[a0+4]) != 0, and falls through when t8(=[a0+4]) == 0.
  The `beq` branch at 0xc30 targets 0xa58, is taken when t9(=[[a1+8]:8+8]:8) == s1(=a1), and falls through when t9(=[[a1+8]:8+8]:8) != s1(=a1).
  The `beq` branch at 0xc38 targets 0xa58, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xc50 targets 0xd58, is taken when (ra(=[a1+4]) & 0x8) == 0, and falls through when (ra(=[a1+4]) & 0x8) != 0.
  The `beq` branch at 0xc6c targets 0xb38 and is always taken.
  The `beq` branch at 0xc7c targets 0xb38 and is always taken.
  The `beq` branch at 0xccc targets 0xb38 and is always taken.
  The `beq` branch at 0xd1c targets 0xb38 and is always taken.
  The `beq` branch at 0xd30 targets 0xb38 and is always taken.
  The `beq` branch at 0xd40 targets 0xb38 and is always taken.
  The `beq` branch at 0xd50 targets 0xb38 and is always taken.
  The `beq` branch at 0xda0 targets 0xb38 and is always taken.
  The `beq` branch at 0xdbc targets 0xb38 and is always taken.
  The return at 0xb54 has v0 = one of -0x2, -0x1, 0x0.

- `init_panes` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0xdc4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0xdc4-0xea4 (224 bytes).
  It occupies 224 bytes.
  The `jal` at 0xde8 calls init_sema with a0=sym(.bss), a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0xe30 calls init_sema with a0=?, a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0xe48 calls init_sv with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0xe5c calls init_sv with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0xe6c calls spinlock_init with a0=?, a1=sym(.rodata), a2=?, a3=?.
  The `blez` branch at 0xe00 targets 0xe88, is taken when a1(=[sym(max_pane)]) <= 0 (signed), and falls through when a1(=[sym(max_pane)]) > 0 (signed).
  The `bne` branch at 0xe80 targets 0xe0c, is taken when s1(?) < a2(=[sym(max_pane)]) (signed), and falls through when s1(?) >= a2(=[sym(max_pane)]) (signed).
  The return at 0xe9c has v0 = one of ret(init_sema), ret(spinlock_init).

- `RRM_init_panes` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0xea4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0xea4-0xf7c (216 bytes).
  It occupies 216 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0xed8, `ld` at 0xf0c, `ld` at 0xf34.
  The `ld` at 0xf04 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lh` at 0xf18 loads 2 bytes from ?.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xf20, `sh` at 0xf30.
  The `sd` at 0xf24 stores 8 bytes to ?.
  The `jal` at 0xf2c calls vsema with a0=?, a1=[sym(max_pane)], a2=?, a3=?.
  The `jal` at 0xf44 calls rrmSwapUnGroup with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0xec8 targets 0xf60, is taken when a1(=[sym(max_pane)]) <= 0 (signed), and falls through when a1(=[sym(max_pane)]) > 0 (signed).
  The `beq` branch at 0xed0 targets 0xef4 and is always taken.
  The `bne` branch at 0xedc targets 0xf44, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xeec targets 0xf60, is taken when s0(?) >= a1(=[sym(max_pane)]) (signed), and falls through when s0(?) < a1(=[sym(max_pane)]) (signed).
  The `bne` branch at 0xf10 targets 0xee4, is taken when v1(=[a0+40]:8) != a0(?), and falls through when v1(=[a0+40]:8) == a0(?).
  The `beq` branch at 0xf1c targets 0xed8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xf38 targets 0xf50, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0xf58 targets 0xef4, is taken when s0(?) < a1(=[sym(max_pane)]) (signed), and falls through when s0(?) >= a1(=[sym(max_pane)]) (signed).
  The return at 0xf74 has v0 = ?.

- `RRM_init` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0xf7c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0xf7c-0x1028 (172 bytes).
  It occupies 172 bytes.
  The `sb` at 0xfe8 stores 1 byte to ?.
  The `jal` at 0xfe4 calls init_sema with a0=?, a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x1014 calls init_panes with a0=?, a1=[sym(rrm_maxrn)], a2=?, a3=?.
  The `bne` branch at 0xfac targets 0x1000, is taken when a1(=[sym(rrm_maxrn)]) < 0x2 (signed), and falls through when a1(=[sym(rrm_maxrn)]) >= 0x2 (signed).
  The `bne` branch at 0xff8 targets 0xfbc, is taken when s0(?) < a1(=[sym(rrm_maxrn)]) (signed), and falls through when s0(?) >= a1(=[sym(rrm_maxrn)]) (signed).
  The return at 0x1020 has v0 = ret(init_panes).

- `RRM_Init` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1028 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x1028-0x1070 (72 bytes).
  It occupies 72 bytes.
  The `jal` at 0x1040 calls spinlock_init with a0=a0+48, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1058 calls init_sema with a0=a0+56, a1=0x1, a2=sym(.rodata), a3=-0x1.
  The return at 0x1068 has v0 = ret(init_sema).

- `rrmDoUnMapGfx` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1070 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x1070-0x10d4 (100 bytes).
  It occupies 100 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x108c, `lw` at 0x10a8.
  The `ld` at 0x1090 loads 8 bytes from a0 (arg0 at entry) +0x20.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x1098, `sw` at 0x10b4.
  The `ld` at 0x109c loads 8 bytes from [a0+32]:8 +0x68.
  The `jal` at 0x1080 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10b8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The return at 0x10cc has v0 = ret(splx).

- `rrmUnMapGfx` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x10d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x10d4-0x1168 (148 bytes).
  It occupies 148 bytes.
  The `ld` at 0x10d4 loads 8 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x10ec loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x1114, `ld` at 0x1138.
  The `jal` at 0x10fc calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1104 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x1120 calls mutex_spinlock with a0=[ret(gthread_find)+16]:8+16, a1=[ret(gthread_find)+16]:8, a2=?, a3=?.
  The `jal` at 0x112c calls rrmDoUnMapGfx with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1140 calls mutex_spinunlock with a0=[ret(gthread_find)+16]:8+16, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1150 calls rrmDoUnMapGfx with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10e4 targets 0x1150, is taken when at(=[a0+96]:8) == 0, and falls through when at(=[a0+96]:8) != 0.
  The `bne` branch at 0x10f4 targets 0x1150, is taken when (v0(=[a0+4]) & 0x8) != 0, and falls through when (v0(=[a0+4]) & 0x8) == 0.
  The `beq` branch at 0x110c targets 0x115c, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x1118 targets 0x1158, is taken when a1(=[ret(gthread_find)+16]:8) == 0, and falls through when a1(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x1148 targets 0x115c and is always taken.
  The return at 0x1160 has v0 = one of ret(gthread_find), ret(mutex_spinunlock), ?.

- `rrmInvalidateRN` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1168 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x1168-0x1228 (192 bytes).
  It occupies 192 bytes.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x116c, `ld` at 0x11a0, `ld` at 0x11a8.
  The `ld` at 0x1174 loads 8 bytes from [a0+40]:8 +0x48.
  The `sd` at 0x11a4 stores 8 bytes to [a0+40]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x68, including `lw` at 0x11ac, `lw` at 0x11c4.
  The `lhu` at 0x11e0 loads 2 bytes from a1 (arg1 at entry) +0x6.
  The `sh` at 0x11fc stores 2 bytes to a1 (arg1 at entry) +0x6.
  The `jal` at 0x1198 calls psema with a0=[a0+40]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11b8 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x11d8 calls mutex_spinlock with a0=a1+104, a1=?, a2=?, a3=?.
  The `jal` at 0x1208 calls mutex_spinunlock with a0=a1+104, a1=ret(mutex_spinlock), a2=one of -0x2, 0x0, a3=?.
  The `beq` branch at 0x118c targets 0x11d0, is taken when at(=[[a0+40]:8+72]:8) == a0, and falls through when at(=[[a0+40]:8+72]:8) != a0.
  The `beq` branch at 0x11b0 targets 0x11d0, is taken when v0(=[[a0+40]:8+104]) == 0, and falls through when v0(=[[a0+40]:8+104]) != 0.
  The `bne` branch at 0x11c8 targets 0x11b8, is taken when a0(=[[a0+40]:8+104]) != 0, and falls through when a0(=[[a0+40]:8+104]) == 0.
  The return at 0x1220 has v0 = one of -0x2, 0x0.

- `RRM_InvalidateRN` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1228 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x1228-0x13b4 (396 bytes).
  It occupies 396 bytes.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x1228, `lw` at 0x1294.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x1288, `lw` at 0x12a8.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48, including `ld` at 0x12bc, `ld` at 0x1300.
  The `lw` at 0x12c8 loads 4 bytes from ret(clip2pane) +0x14.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x12d8, `ld` at 0x1380.
  The `ld` at 0x12dc loads 8 bytes from [a0+32]:8 +0x90.
  The `sw` at 0x1320 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lw` at 0x132c loads 4 bytes from ret(clip2pane) +0x20.
  The `sw` at 0x1330 stores 4 bytes to a2 (arg2 at entry) +0xc.
  The `sw` at 0x1344 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `ld` at 0x1384 loads 8 bytes from [a0+32]:8 +0x98.
  The `ld` at 0x1390 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x128c calls invalidate_pane with a0=[a2+8], a1=[a2+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3), a6=0xff.
  The `jal` at 0x12ac calls clip2pane with a0=[a2+4], a1=a0 at entry (arg0), a2=?, a3=?, a6=ret(invalidate_pane).
  The `jalr` at 0x12e0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=[ret(clip2pane)+20], a3=0xff, a5=[[a0+32]:8+144]:8.
  The `jal` at 0x1314 calls validate_pane_buffer with a0=ret(clip2pane), a1=a0 at entry (arg0), a2=ret(?), a3=?, a6=0x2.
  The `jal` at 0x1340 calls copyout with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x14, a3=?, a6=ret(invalidate_pane).
  The `jal` at 0x1370 calls rrmInvalidateRN with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=0x10, a3=?, a6=0x2, a7=[a0+72]:8.
  The `jalr` at 0x138c calls (unknown callee) with a0=[a0+40]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x1394 calls rrmUnMapGfx with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x124c targets 0x126c, is taken when a6(=0xff) == at(=(0xff | [a2+8])), and falls through when a6(=0xff) != at(=(0xff | [a2+8])).
  The `beq` branch at 0x1274 targets 0x1284, is taken when (v0(=[a2+8]) & v1(=-0xcb)) == 0, and falls through when (v0(=[a2+8]) & v1(=-0xcb)) != 0.
  The `beq` branch at 0x127c targets 0x1258 and is always taken.
  The `beq` branch at 0x12a0 targets 0x1334, is taken when (a0(=[a2+8]) & 0x8) == 0, and falls through when (a0(=[a2+8]) & 0x8) != 0.
  The `beq` branch at 0x12b4 targets 0x1358, is taken when v0(=ret(clip2pane)) == 0, and falls through when v0(=ret(clip2pane)) != 0.
  The `beq` branch at 0x12c0 targets 0x13a4, is taken when a1(=[a0+72]:8) == 0, and falls through when a1(=[a0+72]:8) != 0.
  The `beq` branch at 0x12d0 targets 0x1324, is taken when a3(=0xff) == a4(?), and falls through when a3(=0xff) != a4(?).
  The `bltz` branch at 0x12e8 targets 0x13ac, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `blez` branch at 0x12f0 targets 0x1324, is taken when v0(=ret(?)) <= 0 (signed), and falls through when v0(=ret(?)) > 0 (signed).
  The `bne` branch at 0x12f8 targets 0x1314, is taken when v0(=ret(?)) != a6(=0x2), and falls through when v0(=ret(?)) == a6(=0x2).
  The `bne` branch at 0x1304 targets 0x1368, is taken when a7(=[a0+72]:8) != 0, and falls through when a7(=[a0+72]:8) == 0.
  The `beq` branch at 0x130c targets 0x1258 and is always taken.
  The `beq` branch at 0x1348 targets 0x1360, is taken when v0(=ret(copyout)) == 0, and falls through when v0(=ret(copyout)) != 0.
  The `beq` branch at 0x1350 targets 0x1258 and is always taken.
  The `beq` branch at 0x1358 targets 0x1258 and is always taken.
  The `beq` branch at 0x1360 targets 0x1258 and is always taken.
  The `bne` branch at 0x1378 targets 0x1328, is taken when v0(=ret(rrmInvalidateRN)) != 0, and falls through when v0(=ret(rrmInvalidateRN)) == 0.
  The `beq` branch at 0x139c targets 0x1328 and is always taken.
  The `beq` branch at 0x13a4 targets 0x1258 and is always taken.
  The `beq` branch at 0x13ac targets 0x1258 and is always taken.
  The return at 0x1264 has v0 = one of 0x16, 0xe, 0x0, ?.

- `rrmUnbindProcFromRN` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x13b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x13b4-0x1464 (176 bytes).
  It occupies 176 bytes.
  The `ld` at 0x13b8 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x13d4 loads 8 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x13e4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sd` at 0x1400 stores 8 bytes to a0 (arg0 at entry) +0x48.
  The `ld` at 0x1404 loads 8 bytes from ?.
  The `ld` at 0x1448 loads 8 bytes from ret(gthread_find) +0x10.
  The `jal` at 0x13f4 calls rrmDoUnMapGfx with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1410 calls GfxListWriterUnlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1430 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1438 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x1454 calls GfxListWriterLock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x13cc targets 0x141c, is taken when at(=[a0+72]:8) == 0, and falls through when at(=[a0+72]:8) != 0.
  The `beq` branch at 0x13dc targets 0x13f4, is taken when v0(=[a0+96]:8) == 0, and falls through when v0(=[a0+96]:8) != 0.
  The `beq` branch at 0x13ec targets 0x1430, is taken when (v1(=[a0+4]) & 0x8) == 0, and falls through when (v1(=[a0+4]) & 0x8) != 0.
  The `beq` branch at 0x13fc targets 0x1418, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1408 targets 0x141c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1440 targets 0x13f4, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x144c targets 0x13f4, is taken when a0(=[ret(gthread_find)+16]:8) == 0, and falls through when a0(=[ret(gthread_find)+16]:8) != 0.
  The `beq` branch at 0x145c targets 0x13f4 and is always taken.
  The return at 0x1428 has v0 = one of -0x1, 0x0.

- `RRM_BindProcToRN` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1464 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x1464-0x1554 (240 bytes).
  It occupies 240 bytes.
  The `lw` at 0x1468 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `ld` at 0x148c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sd` at 0x14a8 stores 8 bytes to a1 (arg1 at entry) +0x40.
  The `sb` at 0x14b0 stores 1 byte to a1 (arg1 at entry) +0x54.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x14b4, `ld` at 0x1550.
  The `sd` at 0x14b8 stores 8 bytes to a0 (arg0 at entry) +0x48.
  The `lh` at 0x14f0 loads 2 bytes from [a0+72]:8 +0x2.
  The `ld` at 0x150c loads 8 bytes from [a0+72]:8 +0x38.
  The `sb` at 0x1514 stores 1 byte to [a0+72]:8 +0x54.
  The `jal` at 0x14bc calls valusema with a0=[a0+40]:8+56, a1=?, a2=?, a3=?.
  The `jal` at 0x14cc calls force_resched with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1504 calls psema with a0=(sym(RRMcall_sema) + ([[a0+72]:8+2]:2 << 0x4)), a1=0x19, a2=([[a0+72]:8+2]:2 << 0x4), a3=a3 at entry (arg3).
  The `jal` at 0x151c calls rrmCloseRN with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=?, a3=[[a0+72]:8+56]:8.
  The `jal` at 0x152c calls rrmUnbindProcFromRN with a0=a0 at entry (arg0), a1=?, a2=?, a3=[[a0+72]:8+56]:8.
  The `jal` at 0x1534 calls vsema with a0=(sym(RRMcall_sema) + ([[a0+72]:8+2]:2 << 0x4)), a1=?, a2=?, a3=?.
  The `jal` at 0x1544 calls rrmUnbindProcFromRN with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1484 targets 0x1544, is taken when (at(=[a0+4]) & 0x8) == 0, and falls through when (at(=[a0+4]) & 0x8) != 0.
  The `beq` branch at 0x1490 targets 0x14a0, is taken when s2(=[a0+72]:8) == 0, and falls through when s2(=[a0+72]:8) != 0.
  The `bne` branch at 0x1498 targets 0x14f0, is taken when a1 != s2(=[a0+72]:8), and falls through when a1 == s2(=[a0+72]:8).
  The `beq` branch at 0x14a0 targets 0x14b4, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `beq` branch at 0x14c4 targets 0x14d8, is taken when v0(=ret(valusema)) == 0, and falls through when v0(=ret(valusema)) != 0.
  The `bne` branch at 0x1510 targets 0x152c, is taken when a3(=[[a0+72]:8+56]:8) != 0, and falls through when a3(=[[a0+72]:8+56]:8) == 0.
  The `beq` branch at 0x1524 targets 0x1534 and is always taken.
  The `beq` branch at 0x153c targets 0x14a0 and is always taken.
  The `beq` branch at 0x154c targets 0x14b8 and is always taken.
  The return at 0x14e8 has v0 = 0x0.

- `RRM_BindRNToReadAndClip` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1554 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x1554-0x1854 (768 bytes).
  It occupies 768 bytes.
  9 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x1564, `lw` at 0x15e4, `lw` at 0x1600.
  6 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x78, including `ld` at 0x158c, `ld` at 0x15a0, `ld` at 0x1728.
  5 such `lhu` accesses load 2 bytes from a1 (arg1 at entry) +0x4, including `lhu` at 0x159c, `lhu` at 0x15ac, `lhu` at 0x15d4.
  4 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x80, including `ld` at 0x15bc, `ld` at 0x15c8, `ld` at 0x1738.
  3 such `sh` accesses store 2 bytes to a1 (arg1 at entry) +0x4, including `sh` at 0x15e0, `sh` at 0x1624, `sh` at 0x17c0.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x88, including `sw` at 0x15f4, `sw` at 0x1810.
  The `sd` at 0x15f8 stores 8 bytes to a1 (arg1 at entry) +0x78.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x15fc, `lw` at 0x168c, `lw` at 0x16b4.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x8c, including `sw` at 0x160c, `sw` at 0x17a8, `sw` at 0x181c.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x80, including `sd` at 0x1614, `sd` at 0x17a4.
  The `lh` at 0x1628 loads 2 bytes from ?.
  The `lh` at 0x1638 loads 2 bytes from ret(bind_pane) +0xc.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x1648, `ld` at 0x17e0.
  2 such `ld` accesses load 8 bytes from [a0+40]:8 +0x8, including `ld` at 0x164c, `ld` at 0x17ec.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x1658, `ld` at 0x1830.
  The `ld` at 0x165c loads 8 bytes from [a0+8]:8 +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x166c, `lw` at 0x1710.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x16a0, `lw` at 0x16c4, `lw` at 0x16f4.
  The `lw` at 0x16a8 loads 4 bytes from a1 (arg1 at entry) +0x18.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x18, including `sw` at 0x16b8, `sw` at 0x16e8.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0x16cc, `lw` at 0x16fc.
  The `sw` at 0x170c stores 4 bytes to a1 (arg1 at entry) +0x14.
  The `lw` at 0x172c loads 4 bytes from [a1+120]:8 +0x0.
  The `sw` at 0x1734 stores 4 bytes to a2 (arg2 at entry) +0xc.
  The `lw` at 0x173c loads 4 bytes from [a1+128]:8 +0x0.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `sw` at 0x1744, `sw` at 0x1770.
  The `ld` at 0x17d4 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x17dc loads 8 bytes from [a0+32]:8 +0x50.
  The `lw` at 0x180c loads 4 bytes from [a1+120]:8 +0x8.
  The `lw` at 0x1814 loads 4 bytes from [a1+128]:8 +0x8.
  The `jal` at 0x1598 calls validate_my_pane_buffer with a0=[a1+120]:8, a1=a0 at entry (arg0), a2=[a1+4]:2, a3=a3 at entry (arg3), a6=[a2+4].
  The `jal` at 0x15a4 calls unbind_pane with a0=[a1+120]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x15c0 calls validate_my_pane_buffer with a0=[a1+128]:8, a1=a0 at entry (arg0), a2=[a1+4]:2, a3=?.
  The `jal` at 0x15cc calls unbind_pane with a0=[a1+128]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x15ec calls bind_pane with a0=a0 at entry (arg0), a1=[a2+4], a2=?, a3=?, a6=[a2+4].
  The `jal` at 0x16d8 calls GfxMessage with a0=sp-112, a1=?, a2=?, a3=?.
  The `jal` at 0x177c calls copyout with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x14, a3=?, a5=[a2+4], a6=[a2+4], a7=[a2+8].
  The `jal` at 0x179c calls bind_pane with a0=a0 at entry (arg0), a1=[a2+8], a2=?, a3=?.
  The `jal` at 0x17c4 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=ret(bind_pane), a2=?, a3=?, a6=[[a0+40]:8+8]:8.
  The `jalr` at 0x17f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[a0+40]:8+8]:8, a3=[a1+120]:8+96, a4=[[a0+32]:8+80]:8.
  The `jal` at 0x1824 calls rrmUnMapGfx with a0=a0 at entry (arg0), a1=ret(bind_pane), a2=?, a3=?.
  The `jal` at 0x183c calls GfxMessage with a0=sp-112, a1=[a2+8], a2=?, a3=?, a7=[[a0+8]:8+8]:8.
  The `beq` branch at 0x1584 targets 0x174c, is taken when a6(=[a2+4]) == 0, and falls through when a6(=[a2+4]) != 0.
  The `beq` branch at 0x1590 targets 0x15e8, is taken when a0(=[a1+120]:8) == 0, and falls through when a0(=[a1+120]:8) != 0.
  The `beq` branch at 0x15b4 targets 0x15dc, is taken when (a2(=[a1+4]:2) & 0x40) == 0, and falls through when (a2(=[a1+4]:2) & 0x40) != 0.
  The `bne` branch at 0x1604 targets 0x179c, is taken when v1(=[a2+4]) != a1(=[a2+8]), and falls through when v1(=[a2+4]) == a1(=[a2+8]).
  The `beq` branch at 0x1630 targets 0x1824, is taken when (a4(?) & 0x2) == 0, and falls through when (a4(?) & 0x2) != 0.
  The `beq` branch at 0x1640 targets 0x1824, is taken when (a5(=[ret(bind_pane)+12]:2) & 0x40) == 0, and falls through when (a5(=[ret(bind_pane)+12]:2) & 0x40) != 0.
  The `beq` branch at 0x1650 targets 0x17c4, is taken when a6(=[[a0+40]:8+8]:8) == s0(=a1), and falls through when a6(=[[a0+40]:8+8]:8) != s0(=a1).
  The `beq` branch at 0x1660 targets 0x1794, is taken when a7(=[[a0+8]:8+8]:8) == 0, and falls through when a7(=[[a0+8]:8+8]:8) != 0.
  The `beq` branch at 0x1694 targets 0x16e8, is taken when t0(=[a2+4]) == a1(=[a2+8]), and falls through when t0(=[a2+4]) != a1(=[a2+8]).
  The `beq` branch at 0x16ac targets 0x183c, is taken when s3(=one of 0x0, 0x1) == 0, and falls through when s3(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x16d0 targets 0x1708, is taken when s3(=one of 0x0, 0x1) != 0, and falls through when s3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x16e0 targets 0x170c and is always taken.
  The `beq` branch at 0x1700 targets 0x16d8, is taken when s3(=one of 0x0, 0x1) == 0, and falls through when s3(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1718 targets 0x174c, is taken when (a4(=[a0+4]) & 0x8) == 0, and falls through when (a4(=[a0+4]) & 0x8) != 0.
  The `beq` branch at 0x1730 targets 0x176c, is taken when a6(=[a2+4]) == a7(=[a2+8]), and falls through when a6(=[a2+4]) != a7(=[a2+8]).
  The `bne` branch at 0x1740 targets 0x1774, is taken when s4(=a3) != 0, and falls through when s4(=a3) == 0.
  The `beq` branch at 0x176c targets 0x1748, is taken when s4(=a3) == 0, and falls through when s4(=a3) != 0.
  The `beq` branch at 0x1784 targets 0x174c, is taken when v0(=ret(copyout)) == 0, and falls through when v0(=ret(copyout)) != 0.
  The `beq` branch at 0x178c targets 0x174c and is always taken.
  The `beq` branch at 0x1794 targets 0x1750 and is always taken.
  The `beq` branch at 0x17bc targets 0x1628 and is always taken.
  The `bltz` branch at 0x17cc targets 0x1834, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `beq` branch at 0x17fc targets 0x184c, is taken when v0(=ret(?)) == a5(=-0x1), and falls through when v0(=ret(?)) != a5(=-0x1).
  The `beq` branch at 0x1818 targets 0x1658 and is always taken.
  The `beq` branch at 0x182c targets 0x165c and is always taken.
  The `beq` branch at 0x1834 targets 0x174c and is always taken.
  The `beq` branch at 0x1844 targets 0x16b8 and is always taken.
  The `beq` branch at 0x184c targets 0x174c and is always taken.
  The return at 0x1764 has v0 = one of 0x0, 0xe, 0x16.
  The instructions from 0x1820 to 0x1820 are not reached by any path from the entry, and their branches are not listed.

- `RRM_BindRNToClip` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1854 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x1854-0x18f0 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x186c loads 4 bytes from a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x1874, `lw` at 0x1888.
  The `lw` at 0x1898 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x18dc stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `jal` at 0x1890 calls RRM_BindRNToReadAndClip with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-64, a3=0x0.
  The `jal` at 0x18d8 calls copyout with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0xc, a3=?, a4=a2 at entry (arg2).
  The `beq` branch at 0x18a0 targets 0x18b0, is taken when (a1(=[a0+4]) & 0x8) == 0, and falls through when (a1(=[a0+4]) & 0x8) != 0.
  The `beq` branch at 0x18a8 targets 0x18c8, is taken when v0(=ret(RRM_BindRNToReadAndClip)) == 0, and falls through when v0(=ret(RRM_BindRNToReadAndClip)) != 0.
  The `beq` branch at 0x18e0 targets 0x18b4, is taken when v0(=ret(copyout)) == 0, and falls through when v0(=ret(copyout)) != 0.
  The `beq` branch at 0x18e8 targets 0x18b4 and is always taken.
  The return at 0x18c0 has v0 = one of ret(RRM_BindRNToReadAndClip), 0xe.

- `RRM_UnbindRNFromClip` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x18f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x18f0-0x1914 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x1900 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `jal` at 0x18fc calls pane_cleanup with a0=[a2+4], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x190c has v0 = 0x0.

- `RRM_OpenRN` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1914 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x1914-0x1bf0 (732 bytes).
  It occupies 732 bytes.
  7 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x1924, `ld` at 0x1974, `ld` at 0x19a0.
  The `ld` at 0x192c loads 8 bytes from [a0+40]:8 +0x48.
  3 such `lw` accesses load 4 bytes from [a0+40]:8 +0x50, including `lw` at 0x1948, `lw` at 0x197c, `lw` at 0x19d4.
  2 such `sw` accesses store 4 bytes to [a0+40]:8 +0x50, including `sw` at 0x1950, `sw` at 0x1990.
  The `lw` at 0x1954 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sd` at 0x19a4 stores 8 bytes to [a0+40]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x68, including `lw` at 0x19ac, `lw` at 0x19c4.
  The `lbu` at 0x1a28 loads 1 byte from ?.
  The `lh` at 0x1a88 loads 2 bytes from table(sym(RRMrn)) +0x0.
  2 such `sb` accesses store 1 byte to table(sym(RRMrn)) +0x52, including `sb` at 0x1a9c, `sb` at 0x1b84.
  The `sd` at 0x1aac stores 8 bytes to table(sym(RRMrn)) +0x40.
  The `sd` at 0x1ab0 stores 8 bytes to table(sym(RRMrn)) +0x38.
  The `sw` at 0x1abc stores 4 bytes to table(sym(RRMrn)) +0x0.
  The `sd` at 0x1ac4 stores 8 bytes to table(sym(RRMrn)) +0x48.
  The `lw` at 0x1ac8 loads 4 bytes from a2 (arg2 at entry) +0x4.
  2 such `sh` accesses store 2 bytes to table(sym(RRMrn)) +0x6, including `sh` at 0x1ad0, `sh` at 0x1b30.
  2 such `sh` accesses store 2 bytes to table(sym(RRMrn)) +0x4, including `sh` at 0x1ad8, `sh` at 0x1bcc.
  The `ld` at 0x1adc loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x1ae0 loads 8 bytes from [a0+8]:8 +0x8.
  The `lhu` at 0x1af4 loads 2 bytes from table(sym(RRMrn)) +0x4.
  The `sh` at 0x1b0c stores 2 bytes to table(sym(RRMrn)) +0x50.
  The `sd` at 0x1b10 stores 8 bytes to table(sym(RRMrn)) +0x70.
  The `sd` at 0x1b24 stores 8 bytes to table(sym(RRMrn)) +0x8.
  The `ld` at 0x1b50 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x1b54 loads 8 bytes from [a0+32]:8 +0x40.
  The `lw` at 0x1b88 loads 4 bytes from [a0+40]:8 +0x10.
  The `sw` at 0x1b90 stores 4 bytes to [a0+40]:8 +0x10.
  The `lw` at 0x1b94 loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `sb` accesses store 1 byte to table(sym(RRMrn)) +0x54, including `sb` at 0x1ba4, `sb` at 0x1bec.
  The `lw` at 0x1bac loads 4 bytes from table(sym(RRMrn)) +0x0.
  The `sw` at 0x1bb8 stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `lhu` at 0x1bbc loads 2 bytes from table(sym(RRMrn)) +0x6.
  The `sd` at 0x1bd8 stores 8 bytes to ret(kern_malloc) +0x0.
  The `ld` at 0x1bdc loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `sd` at 0x1be0 stores 8 bytes to ret(kern_malloc) +0x8.
  The `sd` at 0x1be4 stores 8 bytes to a0 (arg0 at entry) +0x40.
  The `jal` at 0x1998 calls psema with a0=[a0+40]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19b8 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x19e4 calls psema with a0=sym(.bss), a1=0x19, a2=-0x1, a3=?.
  The `jal` at 0x1a54 calls vsema with a0=sym(.bss), a1=[sym(rrm_maxrn)], a2=?, a3=?, a6=sym(RRMrn).
  The `jal` at 0x1a90 calls bzero with a0=table(sym(RRMrn)), a1=0xb0, a2=entry(sym(RRMrn)), a3=?, a6=sym(RRMrn).
  The `jal` at 0x1aa0 calls vsema with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x1b34 calls init_sv with a0=table(sym(RRMrn))+48, a1=0x0, a2=sym(.rodata), a3=-0x1, a5=-0x1, a7=-0x5.
  The `jal` at 0x1b48 calls spinlock_init with a0=table(sym(RRMrn))+104, a1=sym(.rodata), a2=?, a3=?.
  The `jalr` at 0x1b5c calls (unknown callee) with a0=[a0+40]:8, a1=table(sym(RRMrn)), a2=[[a0+32]:8+64]:8, a3=?.
  The `jal` at 0x1b6c calls sv_destroy with a0=table(sym(RRMrn))+48, a1=?, a2=?, a3=?, a5=[a0+40]:8.
  The `jal` at 0x1b74 calls spinlock_destroy with a0=table(sym(RRMrn))+104, a1=?, a2=?, a3=?.
  The `jal` at 0x1bd0 calls kern_malloc with a0=0x10, a1=?, a2=?, a3=?, a4=[[a0+40]:8+16]+1, a5=[a0+40]:8.
  The `bne` branch at 0x1940 targets 0x1994, is taken when at(=[[a0+40]:8+72]:8) != a0, and falls through when at(=[[a0+40]:8+72]:8) == a0.
  The `beq` branch at 0x195c targets 0x19d8, is taken when v1(=[a2]) == a2(=-0x1), and falls through when v1(=[a2]) != a2(=-0x1).
  The `beq` branch at 0x19b0 targets 0x1948, is taken when a2(=[[a0+40]:8+104]) == 0, and falls through when a2(=[[a0+40]:8+104]) != 0.
  The `bne` branch at 0x19c8 targets 0x19b8, is taken when a4(=[[a0+40]:8+104]) != 0, and falls through when a4(=[[a0+40]:8+104]) == 0.
  The `beq` branch at 0x19d0 targets 0x194c and is always taken.
  The `bne` branch at 0x19fc targets 0x1a64, is taken when a1(=[sym(rrm_maxrn)]) < 0x2 (signed), and falls through when a1(=[sym(rrm_maxrn)]) >= 0x2 (signed).
  The `beq` branch at 0x1a2c targets 0x1a4c, is taken when s3(=0x1) == v1(?), and falls through when s3(=0x1) != v1(?).
  The `bne` branch at 0x1a44 targets 0x1a14, is taken when s0(?) < a1(=[sym(rrm_maxrn)]) (signed), and falls through when s0(?) >= a1(=[sym(rrm_maxrn)]) (signed).
  The `bne` branch at 0x1a4c targets 0x1a6c, is taken when a1(=[sym(rrm_maxrn)]) != s0(?), and falls through when a1(=[sym(rrm_maxrn)]) == s0(?).
  The `beq` branch at 0x1a5c targets 0x1964 and is always taken.
  The `beq` branch at 0x1a64 targets 0x1a54, is taken when a1(=[sym(rrm_maxrn)]) == s3(=0x1), and falls through when a1(=[sym(rrm_maxrn)]) != s3(=0x1).
  The `beq` branch at 0x1af0 targets 0x1bbc, is taken when a1(=[[a0+8]:8+8]:8) == s1(=a0), and falls through when a1(=[[a0+8]:8+8]:8) != s1(=a0).
  The `beq` branch at 0x1afc targets 0x1bbc, is taken when (a1(=[table(sym(RRMrn))+4]:2) & 0x2) == 0, and falls through when (a1(=[table(sym(RRMrn))+4]:2) & 0x2) != 0.
  The `beq` branch at 0x1b64 targets 0x1b88, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1b80 targets 0x1964 and is always taken.
  The `beq` branch at 0x1b9c targets 0x1bd0, is taken when (a3(=[a0+4]) & 0x8) == 0, and falls through when (a3(=[a0+4]) & 0x8) != 0.
  The `beq` branch at 0x1bb4 targets 0x1964 and is always taken.
  The `beq` branch at 0x1bc8 targets 0x1b08 and is always taken.
  The `beq` branch at 0x1be8 targets 0x1ba8 and is always taken.
  The return at 0x198c has v0 = one of 0x0, 0xc, 0x16.

- `rrmCloseRN` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1bf0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x1bf0-0x1f0c (796 bytes).
  It occupies 796 bytes.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x1bf8, `ld` at 0x1c40, `ld` at 0x1de0.
  The `sd` at 0x1bfc stores 8 bytes to a1 (arg1 at entry) +0x38.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x1c00, `lw` at 0x1d14.
  The `lbu` at 0x1c1c loads 1 byte from a1 (arg1 at entry) +0x54.
  The `ld` at 0x1c28 loads 8 bytes from a1 (arg1 at entry) +0x40.
  The `sd` at 0x1c3c stores 8 bytes to a1 (arg1 at entry) +0x40.
  The `ld` at 0x1c44 loads 8 bytes from [a0+40]:8 +0x48.
  3 such `lw` accesses load 4 bytes from [a0+40]:8 +0x50, including `lw` at 0x1c50, `lw` at 0x1de4, `lw` at 0x1e58.
  2 such `sw` accesses store 4 bytes to [a0+40]:8 +0x50, including `sw` at 0x1c58, `sw` at 0x1df0.
  The `ld` at 0x1c5c loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x1c60 loads 8 bytes from [a0+32]:8 +0x48.
  The `ld` at 0x1c74 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x1c88 loads 8 bytes from [a0+40]:8 +0xa8.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1ca4, `ld` at 0x1cc0, `ld` at 0x1cec.
  2 such `ld` accesses load 8 bytes from [a0+40]:8 +0x88, including `ld` at 0x1cb8, `ld` at 0x1cd4.
  The `sd` at 0x1cc8 stores 8 bytes to [a0+40]:8 +0xa8.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1ccc, `sd` at 0x1cd0, `sd` at 0x1d04.
  3 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x78, including `ld` at 0x1d24, `ld` at 0x1d44, `ld` at 0x1e90.
  The `lh` at 0x1d28 loads 2 bytes from a1 (arg1 at entry) +0x0.
  The `sh` at 0x1d38 stores 2 bytes to a1 (arg1 at entry) +0x0.
  The `ld` at 0x1d48 loads 8 bytes from a1 (arg1 at entry) +0x80.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x78, including `sd` at 0x1d54, `sd` at 0x1e68.
  The `sd` at 0x1d58 stores 8 bytes to a1 (arg1 at entry) +0x80.
  The `sb` at 0x1d70 stores 1 byte to a1 (arg1 at entry) +0x52.
  The `ld` at 0x1d74 loads 8 bytes from [a0+40]:8 +0x8.
  The `sd` at 0x1d80 stores 8 bytes to [a0+40]:8 +0x8.
  The `lh` at 0x1d84 loads 2 bytes from a1 (arg1 at entry) +0x50.
  The `ld` at 0x1d94 loads 8 bytes from [a0+40]:8 +0x18.
  The `sd` at 0x1da0 stores 8 bytes to ([[a0+40]:8+24]:8 + ([a1+80]:2 << 0x3)) +0x0.
  The `ld` at 0x1da4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x1da8 loads 8 bytes from [a0+8]:8 +0x8.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x60, including `ld` at 0x1db4, `ld` at 0x1dcc.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x58, including `ld` at 0x1dbc, `ld` at 0x1dc4.
  The `sd` at 0x1dc0 stores 8 bytes to [a1+96]:8 +0x58.
  The `sd` at 0x1dd0 stores 8 bytes to [a1+88]:8 +0x60.
  The `lw` at 0x1dd4 loads 4 bytes from [a0+40]:8 +0x10.
  The `sw` at 0x1ddc stores 4 bytes to [a0+40]:8 +0x10.
  The `sd` at 0x1e14 stores 8 bytes to [a0+40]:8 +0x88.
  The `sd` at 0x1e28 stores 8 bytes to [a0+40]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x68, including `lw` at 0x1e30, `lw` at 0x1e48.
  The `ld` at 0x1e6c loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `ld` at 0x1e70 loads 8 bytes from [a0+64]:8 +0x0.
  2 such `ld` accesses load 8 bytes from [a0+64]:8 +0x8, including `ld` at 0x1e7c, `ld` at 0x1ebc.
  The `sd` at 0x1e80 stores 8 bytes to a0 (arg0 at entry) +0x40.
  The `sd` at 0x1eb0 stores 8 bytes to [a0+40]:8 +0x20.
  The `sd` at 0x1eb8 stores 8 bytes to [a0+40]:8 +0x28.
  The `jalr` at 0x1c6c calls (unknown callee) with a0=[a0+40]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=[[a0+32]:8+72]:8, a4=[[a0+40]:8+80]+1.
  The `jal` at 0x1c80 calls mutex_spinlock with a0=[a0+40]:8+48, a1=?, a2=?, a3=?.
  The `jal` at 0x1d0c calls mutex_spinunlock with a0=[a0+40]:8+48, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[[a0+40]:8+136]:8.
  The `jal` at 0x1d3c calls unbind_pane with a0=[a1+120]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1d5c calls sv_destroy with a0=a1+48, a1=?, a2=?, a3=?.
  The `jal` at 0x1d64 calls spinlock_destroy with a0=a1+104, a1=?, a2=?, a3=?.
  The `jal` at 0x1e1c calls psema with a0=[a0+40]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e3c calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x1e5c calls unbind_pane with a0=[a1+128]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1e84 calls kern_free with a0=?, a1=?, a2=?, a3=?, a7=[[a0+64]:8]:8.
  The `jal` at 0x1e94 calls rrmUnbindProcFromRN with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+72]:8.
  The `jal` at 0x1efc calls cmn_err with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x1c14 targets 0x1c40, is taken when (at(=[a0+4]) & 0x8) == 0, and falls through when (at(=[a0+4]) & 0x8) != 0.
  The `beq` branch at 0x1c20 targets 0x1c3c, is taken when v0(=[a1+84]:1) == 0, and falls through when v0(=[a1+84]:1) != 0.
  The `beq` branch at 0x1c2c targets 0x1c3c, is taken when v1(=[a1+64]:8) == a0, and falls through when v1(=[a1+64]:8) != a0.
  The `beq` branch at 0x1c34 targets 0x1df4 and is always taken.
  The `bne` branch at 0x1c48 targets 0x1e18, is taken when a0(=[[a0+40]:8+72]:8) != s1(=a0), and falls through when a0(=[[a0+40]:8+72]:8) == s1(=a0).
  The `beq` branch at 0x1c78 targets 0x1e94, is taken when a5(=[a0+72]:8) == s0(=a1), and falls through when a5(=[a0+72]:8) != s0(=a1).
  The `beq` branch at 0x1c94 targets 0x1cd4, is taken when a6(=[[a0+40]:8+168]:8) == 0, and falls through when a6(=[[a0+40]:8+168]:8) != 0.
  The `beq` branch at 0x1c9c targets 0x1cbc, is taken when s0(=a1) == a2(?), and falls through when s0(=a1) != a2(?).
  The `bne` branch at 0x1cac targets 0x1c9c, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x1cb4 targets 0x1cd8 and is always taken.
  The `bne` branch at 0x1cbc targets 0x1ccc, is taken when a6(=[[a0+40]:8+168]:8) != a2(?), and falls through when a6(=[[a0+40]:8+168]:8) == a2(?).
  The `beq` branch at 0x1cc4 targets 0x1cd0 and is always taken.
  The `beq` branch at 0x1cdc targets 0x1d0c, is taken when a6(=[[a0+40]:8+136]:8) == 0, and falls through when a6(=[[a0+40]:8+136]:8) != 0.
  The `beq` branch at 0x1ce4 targets 0x1e08, is taken when s0(=a1) == a2(?), and falls through when s0(=a1) != a2(?).
  The `bne` branch at 0x1cf4 targets 0x1ce4, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x1cfc targets 0x1d0c and is always taken.
  The `beq` branch at 0x1d1c targets 0x1e6c, is taken when (t1(=[a0+4]) & 0x8) == 0, and falls through when (t1(=[a0+4]) & 0x8) != 0.
  The `beq` branch at 0x1d34 targets 0x1d5c, is taken when a0(=[a1+120]:8) == 0, and falls through when a0(=[a1+120]:8) != 0.
  The `bne` branch at 0x1d4c targets 0x1e5c, is taken when t3(=[a1+120]:8) != a0(=[a1+128]:8), and falls through when t3(=[a1+120]:8) == a0(=[a1+128]:8).
  The `bne` branch at 0x1d78 targets 0x1d84, is taken when t8(=[[a0+40]:8+8]:8) != s0(=a1), and falls through when t8(=[[a0+40]:8+8]:8) == s0(=a1).
  The `beq` branch at 0x1d8c targets 0x1dd4, is taken when v0(=[a1+80]:2) == at(=-0x1), and falls through when v0(=[a1+80]:2) != at(=-0x1).
  The `beq` branch at 0x1dac targets 0x1dd4, is taken when v1(=[[a0+8]:8+8]:8) == s1(=a0), and falls through when v1(=[[a0+8]:8+8]:8) != s1(=a0).
  The `beq` branch at 0x1db8 targets 0x1eac, is taken when a0(=[a1+96]:8) == 0, and falls through when a0(=[a1+96]:8) != 0.
  The `beq` branch at 0x1dc8 targets 0x1eb4, is taken when v0(=[a1+88]:8) == 0, and falls through when v0(=[a1+88]:8) != 0.
  The `bne` branch at 0x1e08 targets 0x1d04, is taken when a6(=[[a0+40]:8+136]:8) != a2(?), and falls through when a6(=[[a0+40]:8+136]:8) == a2(?).
  The `beq` branch at 0x1e10 targets 0x1d08 and is always taken.
  The `beq` branch at 0x1e34 targets 0x1c50, is taken when a4(=[[a0+40]:8+104]) == 0, and falls through when a4(=[[a0+40]:8+104]) != 0.
  The `bne` branch at 0x1e4c targets 0x1e3c, is taken when a6(=[[a0+40]:8+104]) != 0, and falls through when a6(=[[a0+40]:8+104]) == 0.
  The `beq` branch at 0x1e54 targets 0x1c54 and is always taken.
  The `beq` branch at 0x1e64 targets 0x1d58 and is always taken.
  The `bne` branch at 0x1e74 targets 0x1ebc, is taken when a7(=[[a0+64]:8]:8) != s0(=a1), and falls through when a7(=[[a0+64]:8]:8) == s0(=a1).
  The `beq` branch at 0x1e8c targets 0x1d28 and is always taken.
  The `beq` branch at 0x1e9c targets 0x1c80, is taken when v0(=ret(rrmUnbindProcFromRN)) == 0, and falls through when v0(=ret(rrmUnbindProcFromRN)) != 0.
  The `beq` branch at 0x1ea4 targets 0x1ef8 and is always taken.
  The `beq` branch at 0x1eac targets 0x1dc4 and is always taken.
  The `beq` branch at 0x1eb4 targets 0x1dd4 and is always taken.
  The `beq` branch at 0x1ec0 targets 0x1e84, is taken when t1(=[[a0+64]:8+8]:8) == 0, and falls through when t1(=[[a0+64]:8+8]:8) != 0.
  The `beq` branch at 0x1ecc targets 0x1eec, is taken when t2(?) == s0(=a1), and falls through when t2(?) != s0(=a1).
  The `bne` branch at 0x1edc targets 0x1ec8, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x1ee4 targets 0x1e84 and is always taken.
  The `beq` branch at 0x1ef0 targets 0x1e84 and is always taken.
  The `beq` branch at 0x1f04 targets 0x1c80 and is always taken.
  The return at 0x1e00 has v0 = 0x0.

- `RRM_CloseRN` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1f0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x1f0c-0x1f2c (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0x1f14 calls rrmCloseRN with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1f24 has v0 = 0x0.

- `RRM_Exit` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x1f2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x1f2c-0x2168 (572 bytes).
  It occupies 572 bytes.
  The `lw` at 0x1f38 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `ld` at 0x1f58 loads 8 bytes from a0 (arg0 at entry) +0x48.
  2 such `ld` accesses load 8 bytes from [a0+72]:8 +0x38, including `ld` at 0x1f64, `ld` at 0x210c.
  The `ld` at 0x1fe8 loads 8 bytes from ?.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x200c, `ld` at 0x2048, `ld` at 0x206c.
  The `ld` at 0x2018 loads 8 bytes from [a0+40]:8 +0x48.
  The `sw` at 0x2044 stores 4 bytes to [a0+40]:8 +0x54.
  The `sw` at 0x2050 stores 4 bytes to [a0+40]:8 +0x50.
  The `ld` at 0x2054 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x2058 loads 8 bytes from [a0+32]:8 +0xc0.
  The `sd` at 0x2070 stores 8 bytes to [a0+40]:8 +0x48.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x40, including `ld` at 0x2090, `ld` at 0x20dc.
  The `ld` at 0x209c loads 8 bytes from [a0+64]:8 +0x0.
  The `lh` at 0x20a0 loads 2 bytes from [[a0+64]:8]:8 +0x2.
  The `lh` at 0x20f0 loads 2 bytes from [a0+72]:8 +0x2.
  The `sb` at 0x2114 stores 1 byte to [a0+72]:8 +0x54.
  The `jal` at 0x1f94 calls psema with a0=table(sym(RRMcall_sema)), a1=0x19, a2=?, a3=?.
  The `jal` at 0x1fa0 calls rrmCloseRN with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1fb0 calls vsema with a0=table(sym(RRMcall_sema)), a1=?, a2=?, a3=?.
  The `jal` at 0x204c calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2064 calls (unknown callee) with a0=a0 at entry (arg0), a1=[[a0+32]:8+192]:8, a2=?, a3=?.
  The `jal` at 0x2078 calls vsema with a0=[a0+40]:8+56, a1=[a0+40]:8, a2=?, a3=?.
  The `jal` at 0x2080 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x20b8 calls psema with a0=(sym(RRMcall_sema) + ([[[a0+64]:8]:8+2]:2 << 0x4)), a1=0x19, a2=?, a3=?.
  The `jal` at 0x20c4 calls rrmCloseRN with a0=a0 at entry (arg0), a1=[[a0+64]:8]:8, a2=?, a3=?.
  The `jal` at 0x20d4 calls vsema with a0=(sym(RRMcall_sema) + ([[[a0+64]:8]:8+2]:2 << 0x4)), a1=?, a2=?, a3=?.
  The `jal` at 0x2104 calls psema with a0=(sym(RRMcall_sema) + ([[a0+72]:8+2]:2 << 0x4)), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x211c calls rrmCloseRN with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x212c calls rrmUnbindProcFromRN with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2134 calls vsema with a0=(sym(RRMcall_sema) + ([[a0+72]:8+2]:2 << 0x4)), a1=?, a2=?, a3=?.
  The `jal` at 0x2144 calls cmn_err with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2158 calls cmn_err with a0=0x0, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x1f50 targets 0x2090, is taken when (at(=[a0+4]) & 0x8) == 0, and falls through when (at(=[a0+4]) & 0x8) != 0.
  The `beq` branch at 0x1f5c targets 0x1f70, is taken when s1(=[a0+72]:8) == 0, and falls through when s1(=[a0+72]:8) != 0.
  The `bne` branch at 0x1f68 targets 0x20f0, is taken when v0(=[[a0+72]:8+56]:8) != a0, and falls through when v0(=[[a0+72]:8+56]:8) == a0.
  The `bne` branch at 0x1f78 targets 0x200c, is taken when v0(=[sym(rrm_maxrn)]) < 0x2 (signed), and falls through when v0(=[sym(rrm_maxrn)]) >= 0x2 (signed).
  The `beq` branch at 0x1f80 targets 0x1fd4 and is always taken.
  The `bne` branch at 0x1fa8 targets 0x2154, is taken when v0(=ret(rrmCloseRN)) != 0, and falls through when v0(=ret(rrmCloseRN)) == 0.
  The `beq` branch at 0x1fcc targets 0x200c, is taken when s1(?) >= v0(=[sym(rrm_maxrn)]) (signed), and falls through when s1(?) < v0(=[sym(rrm_maxrn)]) (signed).
  The `beq` branch at 0x1fec targets 0x1f88, is taken when t8(?) == s0(=a0), and falls through when t8(?) != s0(=a0).
  The `bne` branch at 0x2004 targets 0x1fd4, is taken when s1(?) < v0(=[sym(rrm_maxrn)]) (signed), and falls through when s1(?) >= v0(=[sym(rrm_maxrn)]) (signed).
  The `beq` branch at 0x2010 targets 0x2024, is taken when v0(=[a0+40]:8) == 0, and falls through when v0(=[a0+40]:8) != 0.
  The `beq` branch at 0x201c targets 0x2044, is taken when t8(=[[a0+40]:8+72]:8) == s0(=a0), and falls through when t8(=[[a0+40]:8+72]:8) != s0(=a0).
  The `beq` branch at 0x205c targets 0x206c, is taken when a1(=[[a0+32]:8+192]:8) == 0, and falls through when a1(=[[a0+32]:8+192]:8) != 0.
  The `beq` branch at 0x2088 targets 0x2024 and is always taken.
  The `beq` branch at 0x2094 targets 0x200c, is taken when v0(=[a0+64]:8) == 0, and falls through when v0(=[a0+64]:8) != 0.
  The `bne` branch at 0x20cc targets 0x2144, is taken when v0(=ret(rrmCloseRN)) != 0, and falls through when v0(=ret(rrmCloseRN)) == 0.
  The `bne` branch at 0x20e0 targets 0x209c, is taken when v0(=[a0+64]:8) != 0, and falls through when v0(=[a0+64]:8) == 0.
  The `beq` branch at 0x20e8 targets 0x2010 and is always taken.
  The `bne` branch at 0x2110 targets 0x212c, is taken when t9(=[[a0+72]:8+56]:8) != 0, and falls through when t9(=[[a0+72]:8+56]:8) == 0.
  The `beq` branch at 0x2124 targets 0x2134 and is always taken.
  The `beq` branch at 0x213c targets 0x1f70 and is always taken.
  The `beq` branch at 0x214c targets 0x20d4 and is always taken.
  The `beq` branch at 0x2160 targets 0x1fb0 and is always taken.
  The return at 0x203c has v0 = 0x0.

- `rrmGetResourceMask` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2168 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x2168-0x2170 (8 bytes).
  It occupies 8 bytes.
  The `lhu` at 0x216c loads 2 bytes from a0 (arg0 at entry) +0x4.
  The return at 0x2168 has v0 = [a0+4]:2.

- `rrmSuspend` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2170 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x2170-0x2518 (936 bytes).
  It occupies 936 bytes.
  6 such `lw` accesses load 4 bytes from ret(gthread_find) +0x8, including `lw` at 0x218c, `lw` at 0x2270, `lw` at 0x22a0.
  3 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x21b8, `ld` at 0x22cc, `ld` at 0x23c0.
  6 such `ld` accesses load 8 bytes from ret(gthread_find) +0x18, including `ld` at 0x21c4, `ld` at 0x21f4, `ld` at 0x22a4.
  2 such `ld` accesses load 8 bytes from [ret(gthread_find)+16]:8 +0x18, including `ld` at 0x21d0, `ld` at 0x23c4.
  3 such `sw` accesses store 4 bytes to ret(gthread_find) +0x8, including `sw` at 0x21d8, `sw` at 0x227c, `sw` at 0x22b4.
  3 such `lw` accesses load 4 bytes from [ret(gthread_find)+24]:8 +0xc, including `lw` at 0x21f8, `lw` at 0x2490, `lw` at 0x24e8.
  2 such `sw` accesses store 4 bytes to [ret(gthread_find)+24]:8 +0xc, including `sw` at 0x2200, `sw` at 0x24f0.
  32 such `ld` accesses load 8 bytes from ?, including `ld` at 0x220c, `ld` at 0x2218, `ld` at 0x2224.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2290, `lw` at 0x2334, `lw` at 0x2340.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x229c, `sw` at 0x2378, `sw` at 0x2400.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2398, `sd` at 0x2440, `sd` at 0x24c4.
  The `lw` at 0x23d4 loads 4 bytes from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  The `jal` at 0x2184 calls gthread_find with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x223c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x22c0 calls mutex_spinunlock with a0=[ret(gthread_find)+24]:8+16, a1=?, a2=?, a3=?.
  The `jal` at 0x22c8 calls GfxListReaderUnlock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x230c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x232c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2374 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x238c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x23a0 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x23a8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x23b8 calls GfxListReaderLock with a0=[ret(gthread_find)+16]:8, a1=?, a2=[ret(gthread_find)+8], a3=?.
  The `jal` at 0x241c calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2434 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2448 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2450 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x2460 calls GfxListReaderUnlock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2474 calls mutex_spinlock with a0=[ret(gthread_find)+24]:8+16, a1=?, a2=?, a3=?.
  The `jal` at 0x24a0 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x24b8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x24cc calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x24d4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x2508 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=ret(gthread_find), a3=?.
  The `bne` branch at 0x21a8 targets 0x24fc, is taken when (a2(=[ret(gthread_find)+8]) & 0x1) != 0, and falls through when (a2(=[ret(gthread_find)+8]) & 0x1) == 0.
  The `beq` branch at 0x21b0 targets 0x22d0, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x21bc targets 0x22d0, is taken when a0(=[ret(gthread_find)+16]:8) == 0, and falls through when a0(=[ret(gthread_find)+16]:8) != 0.
  The `bne` branch at 0x21c8 targets 0x23b8, is taken when v0(=[ret(gthread_find)+24]:8) != 0, and falls through when v0(=[ret(gthread_find)+24]:8) == 0.
  The `beq` branch at 0x21e0 targets 0x22a4, is taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x21ec targets 0x2250 and is always taken.
  The `beq` branch at 0x2204 targets 0x22f4, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x2210 targets 0x2224, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x221c targets 0x231c, is taken when a1(?) == s0(?), and falls through when a1(?) != s0(?).
  The `beq` branch at 0x2228 targets 0x2244, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x2248 targets 0x22a0, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x2250 targets 0x2204, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x225c targets 0x2204, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x2268 targets 0x2204, is taken when a4(?) != s0(?), and falls through when a4(?) == s0(?).
  The `beq` branch at 0x2278 targets 0x2204, is taken when s5(=one of 0x0, 0x1) == 0, and falls through when s5(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x2284 targets 0x21f4, is taken when (a2(=([ret(gthread_find)+8] | 0x1)) & 0x4) != 0, and falls through when (a2(=([ret(gthread_find)+8] | 0x1)) & 0x4) == 0.
  The `beq` branch at 0x2298 targets 0x21f4 and is always taken.
  The `beq` branch at 0x22b0 targets 0x22d0, is taken when v0(=[ret(gthread_find)+24]:8) == 0, and falls through when v0(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x22b8 targets 0x22c8, is taken when s5(=one of 0x0, 0x1) == 0, and falls through when s5(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x22f8 targets 0x2244, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x2314 targets 0x2248 and is always taken.
  The `beq` branch at 0x2338 targets 0x23ec, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x2344 targets 0x2354, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x234c targets 0x240c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x2358 targets 0x2244, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x2360 targets 0x2244, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x2384 targets 0x2394, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x23b0 targets 0x2248 and is always taken.
  The `beq` branch at 0x23cc targets 0x2460, is taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x23dc targets 0x2470, is taken when (a2(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0, and falls through when (a2(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0.
  The `beq` branch at 0x23e4 targets 0x21d4 and is always taken.
  The `beq` branch at 0x23ec targets 0x24a0, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x2404 targets 0x2244 and is always taken.
  The `beq` branch at 0x242c targets 0x243c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2458 targets 0x2248 and is always taken.
  The `beq` branch at 0x2468 targets 0x22d4 and is always taken.
  The `beq` branch at 0x2484 targets 0x24e4, is taken when (a2(=[ret(gthread_find)+8]) & 0x2) == 0, and falls through when (a2(=[ret(gthread_find)+8]) & 0x2) != 0.
  The `beq` branch at 0x2498 targets 0x21d4 and is always taken.
  The `beq` branch at 0x24b0 targets 0x24c0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x24dc targets 0x2248 and is always taken.
  The `beq` branch at 0x24f4 targets 0x248c and is always taken.
  The `beq` branch at 0x2510 targets 0x22d4 and is always taken.
  The return at 0x22ec has v0 = one of ?, ret(GfxListReaderUnlock), ret(cmn_err).

- `rrmResume` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2518 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x2518-0x29c4 (1196 bytes).
  It occupies 1196 bytes.
  The `lh` at 0x2538 loads 2 bytes from abs 0xffffffffffffc428.
  3 such `ld` accesses load 8 bytes from ret(gthread_find) +0x10, including `ld` at 0x2574, `ld` at 0x26a0, `ld` at 0x2788.
  5 such `ld` accesses load 8 bytes from ret(gthread_find) +0x18, including `ld` at 0x2580, `ld` at 0x2680, `ld` at 0x26dc.
  2 such `ld` accesses load 8 bytes from [ret(gthread_find)+16]:8 +0x18, including `ld` at 0x258c, `ld` at 0x278c.
  40 such `ld` accesses load 8 bytes from ?, including `ld` at 0x25b4, `ld` at 0x25d0, `ld` at 0x25e0.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x25c0, `lw` at 0x2610, `lw` at 0x2670.
  3 such `lw` accesses load 4 bytes from ret(gthread_find) +0x8, including `lw` at 0x2638, `lw` at 0x2938, `lw` at 0x295c.
  2 such `sw` accesses store 4 bytes to ret(gthread_find) +0x8, including `sw` at 0x265c, `sw` at 0x294c.
  The `sw` at 0x267c stores 4 bytes to ?.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x277c, `sd` at 0x28d0, `sd` at 0x2910.
  The `lw` at 0x2798 loads 4 bytes from [[ret(gthread_find)+16]:8+24]:8 +0x4.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x2858, `lhu` at 0x2864.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x2870, `lh` at 0x2880.
  The `lw` at 0x2994 loads 4 bytes from [ret(gthread_find)+24]:8 +0xc.
  The `sw` at 0x29a0 stores 4 bytes to [ret(gthread_find)+24]:8 +0xc.
  The `jal` at 0x252c calls rt_pin_thread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2540 calls gthread_find with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x25dc calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2694 calls mutex_spinunlock with a0=[ret(gthread_find)+24]:8+16, a1=?, a2=[ret(gthread_find)+24]:8, a3=?.
  The `jal` at 0x269c calls GfxListReaderUnlock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x26a4 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jalr` at 0x26fc calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a5=[ret(gthread_find)+24]:8.
  The `jalr` at 0x2744 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2768 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2780 calls GfxListReaderLock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x27b0 calls rrmDoUnMapGfx with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x27d8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x27e8 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jalr` at 0x2830 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2848 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2894 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x28b4 calls cpsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28d4 calls rrmDoUnMapGfx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x28ec calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2904 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2918 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2920 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x2928 calls rrmDoUnMapGfx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2954 calls mutex_spinlock with a0=[ret(gthread_find)+24]:8+16, a1=?, a2=?, a3=-0x3.
  The `jal` at 0x2978 calls GfxListReaderUnlock with a0=[ret(gthread_find)+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2980 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jalr` at 0x29b4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x256c targets 0x27e8, is taken when v0(=ret(gthread_find)) == 0, and falls through when v0(=ret(gthread_find)) != 0.
  The `beq` branch at 0x2578 targets 0x27e8, is taken when a0(=[ret(gthread_find)+16]:8) == 0, and falls through when a0(=[ret(gthread_find)+16]:8) != 0.
  The `bne` branch at 0x2584 targets 0x2780, is taken when v0(=[ret(gthread_find)+24]:8) != 0, and falls through when v0(=[ret(gthread_find)+24]:8) == 0.
  The `beq` branch at 0x2590 targets 0x2680, is taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `beq` branch at 0x25ac targets 0x2600 and is always taken.
  The `beq` branch at 0x25b8 targets 0x25e8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x25c8 targets 0x25e8, is taken when (t8(?) & 0x3) == 0, and falls through when (t8(?) & 0x3) != 0.
  The `bne` branch at 0x25ec targets 0x25f8, is taken when s2(=one of 0x0, 0x1) != 0, and falls through when s2(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x25f8 targets 0x2680, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x2608 targets 0x25f4, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x2618 targets 0x26dc, is taken when (at(?) & 0x8) == 0, and falls through when (at(?) & 0x8) != 0.
  The `beq` branch at 0x2628 targets 0x2754, is taken when (v0(?) & s6(?)) == 0, and falls through when (v0(?) & s6(?)) != 0.
  The `beq` branch at 0x2630 targets 0x270c, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x2640 targets 0x25b4, is taken when (a1(=[ret(gthread_find)+8]) & 0x1) == 0, and falls through when (a1(=[ret(gthread_find)+8]) & 0x1) != 0.
  The `bne` branch at 0x2650 targets 0x25b4, is taken when a2(?) != s0(?), and falls through when a2(?) == s0(?).
  The `beq` branch at 0x2658 targets 0x25b4, is taken when s8(=one of 0x0, 0x1) == 0, and falls through when s8(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x2664 targets 0x25b4, is taken when (a1(?) & 0x4) != 0, and falls through when (a1(?) & 0x4) == 0.
  The `beq` branch at 0x2678 targets 0x25b4 and is always taken.
  The `beq` branch at 0x2684 targets 0x26a4, is taken when a2(=[ret(gthread_find)+24]:8) == 0, and falls through when a2(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x268c targets 0x269c, is taken when s8(=one of 0x0, 0x1) == 0, and falls through when s8(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x26e0 targets 0x2620, is taken when a5(=[ret(gthread_find)+24]:8) == 0, and falls through when a5(=[ret(gthread_find)+24]:8) != 0.
  The `beq` branch at 0x26ec targets 0x2620, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x2704 targets 0x2630 and is always taken.
  The `beq` branch at 0x2718 targets 0x27c0, is taken when (a1(?) & 0x1) == 0, and falls through when (a1(?) & 0x1) != 0.
  The `beq` branch at 0x2720 targets 0x27f8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x2730 targets 0x27b0, is taken when a4(?) != s0(?), and falls through when a4(?) == s0(?).
  The `beq` branch at 0x274c targets 0x25ec and is always taken.
  The `beq` branch at 0x2758 targets 0x2630, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x2778 targets 0x2630 and is always taken.
  The `beq` branch at 0x2790 targets 0x2978, is taken when s0(=[[ret(gthread_find)+16]:8+24]:8) == 0, and falls through when s0(=[[ret(gthread_find)+16]:8+24]:8) != 0.
  The `bne` branch at 0x27a0 targets 0x2590, is taken when (t1(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) != 0, and falls through when (t1(=[[[ret(gthread_find)+16]:8+24]:8+4]) & 0x8) == 0.
  The `beq` branch at 0x27a8 targets 0x2938 and is always taken.
  The `beq` branch at 0x27b8 targets 0x2734 and is always taken.
  The `beq` branch at 0x27c0 targets 0x25ec, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x27e0 targets 0x25ec and is always taken.
  The `beq` branch at 0x27f0 targets 0x26b0 and is always taken.
  The `beq` branch at 0x2804 targets 0x29a4, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x280c targets 0x2848 and is always taken.
  The `beq` branch at 0x2818 targets 0x28e4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x283c targets 0x25ec, is taken when v0(=one of 0x0, 0x1) == 0, and falls through when v0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x2868 targets 0x2894, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2874 targets 0x2894, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x28a4 targets 0x2814, is taken when at(?) == s0(?), and falls through when at(?) != s0(?).
  The `bne` branch at 0x28ac targets 0x28d4, is taken when s7(?) != a1(?), and falls through when s7(?) == a1(?).
  The `beq` branch at 0x28bc targets 0x28d4, is taken when v0(=ret(cpsema)) == 0, and falls through when v0(=ret(cpsema)) != 0.
  The `beq` branch at 0x28cc targets 0x2838 and is always taken.
  The `beq` branch at 0x28dc targets 0x283c and is always taken.
  The `beq` branch at 0x28e4 targets 0x2820, is taken when s7(?) == a1(?), and falls through when s7(?) != a1(?).
  The `beq` branch at 0x28fc targets 0x290c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2930 targets 0x283c and is always taken.
  The `beq` branch at 0x2944 targets 0x2950, is taken when (a2(=[ret(gthread_find)+8]) & 0x2) == 0, and falls through when (a2(=[ret(gthread_find)+8]) & 0x2) != 0.
  The `bne` branch at 0x2968 targets 0x2590, is taken when (a1(=[ret(gthread_find)+8]) & 0x1) != 0, and falls through when (a1(=[ret(gthread_find)+8]) & 0x1) == 0.
  The `beq` branch at 0x2970 targets 0x2990 and is always taken.
  The `beq` branch at 0x2988 targets 0x26b0 and is always taken.
  The `beq` branch at 0x299c targets 0x2590 and is always taken.
  The `beq` branch at 0x29bc targets 0x25ec and is always taken.
  The return at 0x26d4 has v0 = ret(rt_unpin_thread).

- `rrmSetResourceMask` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x29c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x29c4-0x2a84 (192 bytes).
  It occupies 192 bytes.
  The `lhu` at 0x29f8 loads 2 bytes from a1 (arg1 at entry) +0x4.
  The `lhu` at 0x2a0c loads 2 bytes from a1 (arg1 at entry) +0x6.
  The `ld` at 0x2a14 loads 8 bytes from a1 (arg1 at entry) +0x78.
  The `sh` at 0x2a60 stores 2 bytes to a1 (arg1 at entry) +0x4.
  The `jal` at 0x29f0 calls mutex_spinlock with a0=a1+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2a10 calls pane_validmask with a0=[a1+120]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2a20 calls mutex_spinunlock with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2a44 calls rrmUnMapGfx with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2a54 calls mutex_spinlock with a0=a1+104, a1=?, a2=?, a3=?.
  The `jal` at 0x2a64 calls mutex_spinunlock with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x2a08 targets 0x2a1c, is taken when (at(=[a1+4]:2) & 0x2) == 0, and falls through when (at(=[a1+4]:2) & 0x2) != 0.
  The `beq` branch at 0x2a3c targets 0x2a50, is taken when (v0(?) & v1(?)) == 0, and falls through when (v0(?) & v1(?)) != 0.
  The return at 0x2a7c has v0 = ret(mutex_spinunlock).

- `RRM_ValidateSwapBuf` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2a84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x2a84-0x2acc (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0x2aac loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x2ab4 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `jal` at 0x2a90 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2ab0 calls validate_pane_swapbuf with a0=[a2+4], a1=a0 at entry (arg0), a2=[a2+8], a3=?.
  The `bgez` branch at 0x2a98 targets 0x2aa8, is taken when v0(=ret(RRM_CheckValidFault)) >= 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) < 0 (signed).
  The `beq` branch at 0x2aa0 targets 0x2abc and is always taken.
  The return at 0x2ac4 has v0 = one of 0xe, ret(validate_pane_swapbuf).

- `rrmValidateBuffer` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2acc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x2acc-0x2b10 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x2acc loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x2ad0 loads 4 bytes from [a0+72]:8 +0xa0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x78, including `ld` at 0x2ae4, `ld` at 0x2b00.
  The `lw` at 0x2ae8 loads 4 bytes from [a0+72]:8 +0xa4.
  The `lw` at 0x2aec loads 4 bytes from [a0+120]:8 +0x18.
  The `sw` at 0x2af4 stores 4 bytes to [a0+120]:8 +0x1c.
  The `ld` at 0x2af8 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x2afc calls validate_pane_buffer with a0=[a0+120]:8, a1=[a0+64]:8, a2=[a0+72]:8, a3=a0 at entry (arg0).
  The `beq` branch at 0x2adc targets 0x2af8, is taken when at(=[[a0+72]:8+160]) == 0, and falls through when at(=[[a0+72]:8+160]) != 0.
  The return at 0x2b08 has v0 = ret(validate_pane_buffer).

- `RRM_ValidateMessage` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2b10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x2b10-0x2b78 (104 bytes).
  It occupies 104 bytes.
  The `lhu` at 0x2b34 loads 2 bytes from a1 (arg1 at entry) +0x6.
  The `jal` at 0x2b28 calls mutex_spinlock with a0=a1+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2b3c calls mutex_spinunlock with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2b68 calls rrmValidateBuffer with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2b50 targets 0x2b68, is taken when (v0(=[a1+6]:2) & 0x20) == 0, and falls through when (v0(=[a1+6]:2) & 0x20) != 0.
  The `beq` branch at 0x2b70 targets 0x2b58 and is always taken.
  The return at 0x2b60 has v0 = one of 0x0, 0x16.

- `RRM_SetDisplayMode` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2b78 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x2b78-0x2c3c (196 bytes).
  It occupies 196 bytes.
  The `ld` at 0x2b9c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x2ba0 loads 8 bytes from [a0+8]:8 +0x8.
  The `lw` at 0x2bc8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x2bec loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lw` at 0x2bf4 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x2bfc loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `ld` at 0x2c10 loads 8 bytes from a1 (arg1 at entry) +0x78.
  The `lw` at 0x2c20 loads 4 bytes from [a1+120]:8 +0x4.
  The `jal` at 0x2b8c calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2c04 calls GfxMessage with a0=sp-96, a1=0x3, a2=one of 0xb, 0x8b, a3=?, a4=0xb, a5=[a0+8]:8.
  The `jal` at 0x2c1c calls invalidate_pane with a0=0x8, a1=[[a1+120]:8+4], a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x2c24 calls rrmUnMapGfx with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bltz` branch at 0x2b94 targets 0x2c34, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` branch at 0x2ba4 targets 0x2bbc, is taken when at(=[[a0+8]:8+8]:8) != 0, and falls through when at(=[[a0+8]:8+8]:8) == 0.
  The `beq` branch at 0x2c2c targets 0x2bac and is always taken.
  The `beq` branch at 0x2c34 targets 0x2bac and is always taken.
  The return at 0x2bb4 has v0 = one of 0x0, 0xe.

- `RRM_LoadDisplayMode` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2c3c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x2c3c-0x2d8c (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0x2c48 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lh` at 0x2c6c loads 2 bytes from ret(clip2pane) +0xc.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x2c94, `lw` at 0x2d00.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x2ca0, `ld` at 0x2cfc, `ld` at 0x2d78.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x58, including `lw` at 0x2ca4, `lw` at 0x2d04.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x2cbc, `ld` at 0x2d68.
  The `ld` at 0x2cc0 loads 8 bytes from [a0+32]:8 +0xa0.
  The `lw` at 0x2ccc loads 4 bytes from a2 (arg2 at entry) +0xc.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lw` at 0x2ce0, `lw` at 0x2ce8, `lw` at 0x2d18.
  The `sw` at 0x2ce4 stores 4 bytes to ret(clip2pane) +0x20.
  The `sh` at 0x2cf8 stores 2 bytes to ret(clip2pane) +0x12.
  The `ld` at 0x2d14 loads 8 bytes from [a0+40]:8 +0x60.
  The `sw` at 0x2d20 stores 4 bytes to ([[a0+40]:8+96]:8 + ([a2+8] << 0x2)) +0x0.
  The `ld` at 0x2d30 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x2d6c loads 8 bytes from [a0+32]:8 +0x98.
  The `jal` at 0x2c5c calls clip2pane with a0=[a2+4], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2cc8 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a2+8], a2=[a2+12], a3=?.
  The `jal` at 0x2d40 calls rrmInvalidateRN with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=0x10, a3=?.
  The `jalr` at 0x2d74 calls (unknown callee) with a0=[a0+40]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x2d7c calls rrmUnMapGfx with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2c64 targets 0x2c94, is taken when v0(=ret(clip2pane)) == 0, and falls through when v0(=ret(clip2pane)) != 0.
  The `beq` branch at 0x2c74 targets 0x2c94, is taken when (at(=[ret(clip2pane)+12]:2) & 0x8) == 0, and falls through when (at(=[ret(clip2pane)+12]:2) & 0x8) != 0.
  The `bltz` branch at 0x2c98 targets 0x2cb4, is taken when a1(=[a2+8]) < 0 (signed), and falls through when a1(=[a2+8]) >= 0 (signed).
  The `bne` branch at 0x2cac targets 0x2cbc, is taken when a1(=[a2+8]) < v1(=[[a0+40]:8+88]) (signed), and falls through when a1(=[a2+8]) >= v1(=[[a0+40]:8+88]) (signed).
  The `beq` branch at 0x2cb4 targets 0x2c80 and is always taken.
  The `bltz` branch at 0x2cd0 targets 0x2d58, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `beq` branch at 0x2cd8 targets 0x2cfc, is taken when s2(=ret(clip2pane)) == 0, and falls through when s2(=ret(clip2pane)) != 0.
  The `beq` branch at 0x2d0c targets 0x2d24, is taken when a1(=[a2+8]) >= a5(=[[a0+40]:8+88]) (signed), and falls through when a1(=[a2+8]) < a5(=[[a0+40]:8+88]) (signed).
  The `bne` branch at 0x2d28 targets 0x2d50, is taken when a0(=ret(?)) != t1(=0x1), and falls through when a0(=ret(?)) == t1(=0x1).
  The `beq` branch at 0x2d34 targets 0x2d60, is taken when s1(=[a0+72]:8) == 0, and falls through when s1(=[a0+72]:8) != 0.
  The `beq` branch at 0x2d48 targets 0x2d68, is taken when v0(=ret(rrmInvalidateRN)) == 0, and falls through when v0(=ret(rrmInvalidateRN)) != 0.
  The `beq` branch at 0x2d50 targets 0x2c7c and is always taken.
  The `beq` branch at 0x2d58 targets 0x2c7c and is always taken.
  The `beq` branch at 0x2d60 targets 0x2c7c and is always taken.
  The `beq` branch at 0x2d84 targets 0x2d50 and is always taken.
  The return at 0x2c8c has v0 = one of ?, 0x16.

- `RRM_GetDisplayModes` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2d8c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x2d8c-0x2de4 (88 bytes).
  It occupies 88 bytes.
  The `ld` at 0x2d8c loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x2d90 loads 4 bytes from [a0+40]:8 +0x58.
  The `lw` at 0x2d94 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `ld` at 0x2dbc loads 8 bytes from [a0+40]:8 +0x60.
  The `ld` at 0x2dc0 loads 8 bytes from a2 (arg2 at entry) +0x8.
  The `jal` at 0x2dc4 calls copyout with a0=[[a0+40]:8+96]:8, a1=[a2+8]:8, a2=([[a0+40]:8+88] << 0x2), a3=a3 at entry (arg3), a5=([[a0+40]:8+88] << 0x2), a6=a2 at entry (arg2), a7=[a0+40]:8.
  The `beq` branch at 0x2dac targets 0x2dbc, is taken when at(=[a2+16]) >= a5(=([[a0+40]:8+88] << 0x2)) (unsigned), and falls through when at(=[a2+16]) < a5(=([[a0+40]:8+88] << 0x2)) (unsigned).
  The `beq` branch at 0x2dcc targets 0x2ddc, is taken when v0(=ret(copyout)) == 0, and falls through when v0(=ret(copyout)) != 0.
  The `beq` branch at 0x2dd4 targets 0x2db4 and is always taken.
  The `beq` branch at 0x2ddc targets 0x2db4 and is always taken.
  The return at 0x2db4 has v0 = one of 0x0, 0xe, 0x16.

- `rrmValidateMyRetrace` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2de4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x2de4-0x2e5c (120 bytes).
  It occupies 120 bytes.
  The `lhu` at 0x2e04 loads 2 bytes from a1 (arg1 at entry) +0x4.
  The `lhu` at 0x2e08 loads 2 bytes from a1 (arg1 at entry) +0x6.
  The `jal` at 0x2dfc calls mutex_spinlock with a0=a1+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2e2c calls sv_wait with a0=a1+48, a1=0x19, a2=a1+104, a3=ret(mutex_spinlock).
  The `jal` at 0x2e4c calls mutex_spinunlock with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x2e18 targets 0x2e4c, is taken when (at(?) & 0x10) == 0, and falls through when (at(?) & 0x10) != 0.
  The `beq` branch at 0x2e54 targets 0x2e38 and is always taken.
  The return at 0x2e44 has v0 = 0x0.

- `rrmValidateRetrace` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2e5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x2e5c-0x2eac (80 bytes).
  It occupies 80 bytes.
  The `lhu` at 0x2e78 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0x2e8c stores 2 bytes to a0 (arg0 at entry) +0x6.
  The `jal` at 0x2e70 calls mutex_spinlock with a0=a0+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2e88 calls sv_signal with a0=a0+48, a1=?, a2=?, a3=?.
  The `jal` at 0x2e98 calls mutex_spinunlock with a0=a0+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The return at 0x2ea4 has v0 = ret(mutex_spinunlock).

- `rrmAllocPcxid` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x2eac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x2eac-0x3024 (376 bytes).
  It occupies 376 bytes.
  The `ld` at 0x2eac loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x2eb0 loads 4 bytes from [a0+40]:8 +0x14.
  The `lh` at 0x2ec0 loads 2 bytes from a1 (arg1 at entry) +0x50.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x2ecc, `ld` at 0x2f34, `ld` at 0x2f44.
  2 such `ld` accesses load 8 bytes from [a0+8]:8 +0x8, including `ld` at 0x2ed0, `ld` at 0x2f48.
  The `ld` at 0x2f00 loads 8 bytes from [a0+40]:8 +0x18.
  The `ld` at 0x2f10 loads 8 bytes from ?.
  2 such `sh` accesses store 2 bytes to a1 (arg1 at entry) +0x50, including `sh` at 0x2f40, `sh` at 0x3020.
  3 such `ld` accesses load 8 bytes from [a0+40]:8 +0x20, including `ld` at 0x2f68, `ld` at 0x2f70, `ld` at 0x2fc4.
  The `sd` at 0x2f6c stores 8 bytes to [[a0+40]:8+32]:8 +0x60.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x60, including `sd` at 0x2f74, `sd` at 0x2ffc.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x58, including `sd` at 0x2f78, `sd` at 0x2ff8.
  2 such `sd` accesses store 8 bytes to [a0+40]:8 +0x20, including `sd` at 0x2f80, `sd` at 0x2ff4.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x60, including `ld` at 0x2f84, `ld` at 0x2fa0.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x58, including `ld` at 0x2f90, `ld` at 0x2f98.
  The `sd` at 0x2f94 stores 8 bytes to [a1+96]:8 +0x58.
  The `sd` at 0x2fa8 stores 8 bytes to [a1+88]:8 +0x60.
  The `ld` at 0x2fb8 loads 8 bytes from [a0+40]:8 +0x8.
  3 such `sd` accesses store 8 bytes to [a0+40]:8 +0x28, including `sd` at 0x2fdc, `sd` at 0x2ff0, `sd` at 0x3010.
  The `ld` at 0x3008 loads 8 bytes from [a0+40]:8 +0x28.
  The `ld` at 0x300c loads 8 bytes from [[a0+40]:8+40]:8 +0x60.
  The `sd` at 0x3014 stores 8 bytes to [[[a0+40]:8+40]:8+96]:8 +0x58.
  The `lh` at 0x3018 loads 2 bytes from [[a0+40]:8+40]:8 +0x50.
  The `beq` branch at 0x2eb8 targets 0x2fb4, is taken when a4(=[[a0+40]:8+20]) == at(=0x1), and falls through when a4(=[[a0+40]:8+20]) != at(=0x1).
  The `beq` branch at 0x2ec4 targets 0x2ef8, is taken when a7(=[a1+80]:2) == t0(=-0x1), and falls through when a7(=[a1+80]:2) != t0(=-0x1).
  The `bne` branch at 0x2ee0 targets 0x2f84, is taken when a4(?) < 0x1 (unsigned), and falls through when a4(?) >= 0x1 (unsigned).
  The `blez` branch at 0x2ef8 targets 0x2f44, is taken when a4(=[[a0+40]:8+20]) <= 0 (signed), and falls through when a4(=[[a0+40]:8+20]) > 0 (signed).
  The `beq` branch at 0x2f14 targets 0x2f38, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x2f28 targets 0x2f10, is taken when v0(?) < a4(=[[a0+40]:8+20]) (signed), and falls through when v0(?) >= a4(=[[a0+40]:8+20]) (signed).
  The `beq` branch at 0x2f30 targets 0x2f48 and is always taken.
  The `bne` branch at 0x2f58 targets 0x2fbc, is taken when a4(?) < 0x1 (unsigned), and falls through when a4(?) >= 0x1 (unsigned).
  The `beq` branch at 0x2f60 targets 0x2ef0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x2f88 targets 0x2fe8, is taken when v0(=[a1+96]:8) == 0, and falls through when v0(=[a1+96]:8) != 0.
  The `beq` branch at 0x2f9c targets 0x2fd8, is taken when a0(=[a1+88]:8) == 0, and falls through when a0(=[a1+88]:8) != 0.
  The `beq` branch at 0x2fa4 targets 0x2ee4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x2fac targets 0x2f68 and is always taken.
  The `beq` branch at 0x2fbc targets 0x3008, is taken when a7(?) == t0(=-0x1), and falls through when a7(?) != t0(=-0x1).
  The `beq` branch at 0x2fc8 targets 0x2ff0, is taken when t1(=[[a0+40]:8+32]:8) == 0, and falls through when t1(=[[a0+40]:8+32]:8) != 0.
  The `beq` branch at 0x2fd0 targets 0x2f60 and is always taken.
  The `beq` branch at 0x2fd8 targets 0x2ee4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x2fe0 targets 0x2fac and is always taken.
  The `beq` branch at 0x301c targets 0x2f60 and is always taken.
  The return at 0x2ee8 has v0 = 0x0.
  The return at 0x2ef0 has v0 = ?.
  The return at 0x2f7c has v0 = one of ?, 0x0.
  The return at 0x2fb4 has v0 = [[a0+40]:8+8]:8.
  The return at 0x2fe8 has v0 = 0x0.
  The return at 0x3000 has v0 = 0x0.

- `rrmValidateMyPcx` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3024 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x3024-0x3278 (596 bytes).
  It occupies 596 bytes.
  2 such `lhu` accesses load 2 bytes from a1 (arg1 at entry) +0x4, including `lhu` at 0x3058, `lhu` at 0x3244.
  2 such `lhu` accesses load 2 bytes from a1 (arg1 at entry) +0x6, including `lhu` at 0x305c, `lhu` at 0x3110.
  9 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x307c, `ld` at 0x308c, `ld` at 0x30c4.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x50, including `lw` at 0x3080, `lw` at 0x312c.
  2 such `sw` accesses store 4 bytes to [a0+40]:8 +0x50, including `sw` at 0x3088, `sw` at 0x3138.
  3 such `ld` accesses load 8 bytes from [a0+40]:8 +0x8, including `ld` at 0x3090, `ld` at 0x30d0, `ld` at 0x31c0.
  3 such `lh` accesses load 2 bytes from a1 (arg1 at entry) +0x50, including `lh` at 0x30a4, `lh` at 0x320c, `lh` at 0x3240.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x30bc, `ld` at 0x3148, `ld` at 0x31bc.
  The `ld` at 0x30c0 loads 8 bytes from [a0+32]:8 +0x80.
  The `lh` at 0x30e4 loads 2 bytes from abs 0xffffffffffffc428.
  The `lw` at 0x30f4 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0x8.
  The `sw` at 0x30fc stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0x8.
  The `sd` at 0x310c stores 8 bytes to [a0+40]:8 +0x8.
  The `sh` at 0x3124 stores 2 bytes to a1 (arg1 at entry) +0x6.
  The `sb` at 0x3144 stores 1 byte to a1 (arg1 at entry) +0x53.
  The `ld` at 0x314c loads 8 bytes from [a0+32]:8 +0xc0.
  The `sd` at 0x3164 stores 8 bytes to [a0+40]:8 +0x48.
  The `lbu` at 0x31a0 loads 1 byte from a1 (arg1 at entry) +0x53.
  The `ld` at 0x31c8 loads 8 bytes from [a0+32]:8 +0x78.
  The `sh` at 0x31e8 stores 2 bytes to ret(rrmAllocPcxid) +0x50.
  The `ld` at 0x3220 loads 8 bytes from [a0+40]:8 +0x18.
  The `sd` at 0x322c stores 8 bytes to ([[a0+40]:8+24]:8 + ([a1+80]:2 << 0x3)) +0x0.
  The `ld` at 0x3254 loads 8 bytes from a1 (arg1 at entry) +0x78.
  The `lw` at 0x3264 loads 4 bytes from [a1+120]:8 +0x4.
  The `jal` at 0x304c calls mutex_spinlock with a0=a1+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3060 calls mutex_spinunlock with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x30b4 calls rrmAllocPcxid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a5=[a1+80]:2.
  The `jalr` at 0x30cc calls (unknown callee) with a0=[a0+40]:8, a1=a1 at entry (arg1), a2=[[a0+40]:8+8]:8, a3=?, a6=[[a0+32]:8+128]:8.
  The `jal` at 0x3108 calls mutex_spinlock with a0=a1+104, a1=?, a2=?, a3=?.
  The `jal` at 0x3120 calls mutex_spinunlock with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3140 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x3158 calls (unknown callee) with a0=a0 at entry (arg0), a1=[[a0+32]:8+192]:8, a2=?, a3=?.
  The `jal` at 0x316c calls vsema with a0=[a0+40]:8+56, a1=[a0+40]:8, a2=?, a3=?.
  The `jal` at 0x3174 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x31b0 calls rrmAllocPcxid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x31d4 calls (unknown callee) with a0=[a0+40]:8, a1=ret(rrmAllocPcxid), a2=a1 at entry (arg1), a3=[[a0+40]:8+8]:8, a6=[[a0+32]:8+120]:8.
  The `jalr` at 0x31f8 calls (unknown callee) with a0=[a0+40]:8, a1=0x0, a2=a1 at entry (arg1), a3=[[a0+40]:8+8]:8, a6=[[a0+32]:8+120]:8.
  The `jal` at 0x3234 calls rrmInvalidateRN with a0=a0 at entry (arg0), a1=[[a0+40]:8+8]:8, a2=0x1, a3=[[a0+40]:8+8]:8, a4=[[a0+40]:8+80]+1, a5=[a0+40]:8.
  The `jal` at 0x3260 calls invalidate_pane with a0=0x2, a1=[[a1+120]:8+4], a2=a0 at entry (arg0), a3=?, a5=[a1+80]:2.
  The `beq` branch at 0x3074 targets 0x317c, is taken when (at(?) & 0x1) == 0, and falls through when (at(?) & 0x1) != 0.
  The `beq` branch at 0x3094 targets 0x30a4, is taken when a3(=[[a0+40]:8+8]:8) == 0, and falls through when a3(=[[a0+40]:8+8]:8) != 0.
  The `bne` branch at 0x309c targets 0x3230, is taken when a3(=[[a0+40]:8+8]:8) != s0(=a1), and falls through when a3(=[[a0+40]:8+8]:8) == s0(=a1).
  The `beq` branch at 0x30ac targets 0x31a0, is taken when a5(=[a1+80]:2) == v0(=-0x1), and falls through when a5(=[a1+80]:2) != v0(=-0x1).
  The `beq` branch at 0x3134 targets 0x317c, is taken when s3(=one of 0x0, 0x1) == 0, and falls through when s3(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x3150 targets 0x3160, is taken when a1(=[[a0+32]:8+192]:8) == 0, and falls through when a1(=[[a0+32]:8+192]:8) != 0.
  The `beq` branch at 0x31a4 targets 0x3244, is taken when a2(=[a1+83]:1) == 0, and falls through when a2(=[a1+83]:1) != 0.
  The `beq` branch at 0x31c4 targets 0x31f4, is taken when v0(=ret(rrmAllocPcxid)) == 0, and falls through when v0(=ret(rrmAllocPcxid)) != 0.
  The `beq` branch at 0x31ec targets 0x320c and is always taken.
  The `beq` branch at 0x3214 targets 0x30e4, is taken when v0(=[a1+80]:2) == t2(=-0x1), and falls through when v0(=[a1+80]:2) != t2(=-0x1).
  The `beq` branch at 0x3228 targets 0x30e4 and is always taken.
  The `beq` branch at 0x323c targets 0x30a8 and is always taken.
  The `beq` branch at 0x324c targets 0x3270, is taken when (t8(=[a1+4]:2) & 0x2) == 0, and falls through when (t8(=[a1+4]:2) & 0x2) != 0.
  The `beq` branch at 0x3268 targets 0x31ac and is always taken.
  The `beq` branch at 0x3270 targets 0x31b0 and is always taken.
  The return at 0x3198 has v0 = one of -0x1, 0x0.

- `RRM_ValidateClip` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3278 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x3278-0x3378 (256 bytes).
  It occupies 256 bytes.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x327c, `ld` at 0x32b0, `ld` at 0x3300.
  The `ld` at 0x3284 loads 8 bytes from [a0+40]:8 +0x48.
  3 such `lw` accesses load 4 bytes from [a0+40]:8 +0x50, including `lw` at 0x32a4, `lw` at 0x3308, `lw` at 0x3364.
  2 such `sw` accesses store 4 bytes to [a0+40]:8 +0x50, including `sw` at 0x32ac, `sw` at 0x3320.
  The `ld` at 0x32b4 loads 8 bytes from [a0+40]:8 +0x8.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x32bc, `lw` at 0x32e4.
  The `lw` at 0x32c0 loads 4 bytes from [[a0+40]:8+8]:8 +0x14.
  The `sd` at 0x3334 stores 8 bytes to [a0+40]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x68, including `lw` at 0x333c, `lw` at 0x3354.
  The `jal` at 0x32cc calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=a0 at entry (arg0), a2=[[a0+40]:8+80]+1, a3=[[[a0+40]:8+8]:8+20].
  The `jal` at 0x32ec calls validate_pane_clip with a0=[a2+4], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x3328 calls psema with a0=[a0+40]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3348 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `bne` branch at 0x329c targets 0x3324, is taken when at(=[[a0+40]:8+72]:8) != a0, and falls through when at(=[[a0+40]:8+72]:8) == a0.
  The `beq` branch at 0x32b8 targets 0x32e8, is taken when a1(=[[a0+40]:8+8]:8) == 0, and falls through when a1(=[[a0+40]:8+8]:8) != 0.
  The `bne` branch at 0x32c4 targets 0x32ec, is taken when a3(=[[[a0+40]:8+8]:8+20]) != a0(=[a2+4]), and falls through when a3(=[[[a0+40]:8+8]:8+20]) == a0(=[a2+4]).
  The `bltz` branch at 0x32d4 targets 0x3368, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` branch at 0x32dc targets 0x32f8, is taken when s2(=one of 0x0, 0x1) != 0, and falls through when s2(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x3340 targets 0x32a4, is taken when a5(=[[a0+40]:8+104]) == 0, and falls through when a5(=[[a0+40]:8+104]) != 0.
  The `bne` branch at 0x3358 targets 0x3348, is taken when a7(=[[a0+40]:8+104]) != 0, and falls through when a7(=[[a0+40]:8+104]) == 0.
  The `beq` branch at 0x3360 targets 0x32a8 and is always taken.
  The `beq` branch at 0x3370 targets 0x32dc and is always taken.
  The return at 0x331c has v0 = one of ?, ret(validate_pane_clip).

- `RRM_ValidFault` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3378 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x3378-0x36e8 (880 bytes).
  It occupies 880 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x3384, `lw` at 0x3464, `lw` at 0x35f8.
  9 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x33a8, `ld` at 0x33e0, `ld` at 0x340c.
  5 such `ld` accesses load 8 bytes from [a0+40]:8 +0x48, including `ld` at 0x33ac, `ld` at 0x33e4, `ld` at 0x3410.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x33c0, `ld` at 0x3510.
  2 such `ld` accesses load 8 bytes from [a0+8]:8 +0x8, including `ld` at 0x33c4, `ld` at 0x3514.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x30, including `ld` at 0x3420, `ld` at 0x3438, `ld` at 0x3668.
  The `sd` at 0x3450 stores 8 bytes to [a0+40]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x68, including `lw` at 0x3458, `lw` at 0x35e8.
  The `ld` at 0x3470 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x34e4 loads 4 bytes from ?.
  3 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x34f8, `lhu` at 0x351c, `lhu` at 0x3524.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3538, `ld` at 0x3580, `ld` at 0x35a0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x60, including `ld` at 0x35fc, `ld` at 0x3650.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x3638, `lh` at 0x36a4.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x363c, `ld` at 0x3684.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x60, including `ld` at 0x3640, `ld` at 0x3688.
  The `jal` at 0x33fc calls rrmValidateMyPcx with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x341c calls ddv_lock with a0=[a0+48]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3434 calls ddv_unlock with a0=[a0+48]:8, a1=?, a2=[[a0+40]:8+72]:8, a3=?.
  The `jal` at 0x3444 calls psema with a0=[a0+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0x3484 calls curproc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x348c calls proc_pid with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0x34a4 calls cmn_err_tag with a0=0x854, a1=0x4, a2=sym(.rodata), a3=ret(proc_pid).
  The `jal` at 0x34ac calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x34b8 calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `jal` at 0x3508 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3534 calls pane_validmask with a0=?, a1=?, a2=?, a3=?, a5=[[a0+8]:8+8]:8.
  The `jal` at 0x354c calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3568 calls rrmValidateMyRetrace with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3584 calls validate_my_pane_resources with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x359c calls pane_validmask with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x35bc calls validate_my_pane_resources with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x35dc calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x3614 calls mutex_spinlock with a0=[a0+96]:8+16, a1=[a0+96]:8, a2=[[a0+40]:8+72]:8, a3=?.
  The `jalr` at 0x3648 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[[a0+32]:8+96]:8.
  The `jal` at 0x365c calls mutex_spinunlock with a0=[a0+96]:8+16, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3664 calls ddv_unlock with a0=[a0+48]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x3690 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[[a0+32]:8+96]:8.
  The `jal` at 0x36a8 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x36b0 calls proc_pid with a0=ret(curproc), a1=?, a2=?, a3=?.
  The `jal` at 0x36c4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=ret(proc_pid), a3=?.
  The `jal` at 0x36cc calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x36d8 calls psignal with a0=ret(curproc), a1=0x9, a2=?, a3=?.
  The `beq` branch at 0x33a0 targets 0x3470, is taken when (a2(=[a0+4]) & 0x20) == 0, and falls through when (a2(=[a0+4]) & 0x20) != 0.
  The `bne` branch at 0x33b0 targets 0x3444, is taken when a3(=[[a0+40]:8+72]:8) != s0(=a0), and falls through when a3(=[[a0+40]:8+72]:8) == s0(=a0).
  The `bne` branch at 0x33b8 targets 0x341c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x33c8 targets 0x34e4, is taken when v0(=[[a0+8]:8+8]:8) != 0, and falls through when v0(=[[a0+8]:8+8]:8) == 0.
  The `beq` branch at 0x33d0 targets 0x34c4 and is always taken.
  The `bne` branch at 0x33d8 targets 0x35b8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x33e8 targets 0x3440, is taken when a0(=[[a0+40]:8+72]:8) != s0(=a0), and falls through when a0(=[[a0+40]:8+72]:8) == s0(=a0).
  The `bne` branch at 0x33f0 targets 0x3414, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bltz` branch at 0x3404 targets 0x35d4, is taken when v0(=ret(rrmValidateMyPcx)) < 0 (signed), and falls through when v0(=ret(rrmValidateMyPcx)) >= 0 (signed).
  The `bne` branch at 0x3414 targets 0x3444, is taken when a0(=[[a0+40]:8+72]:8) != s0(=a0), and falls through when a0(=[[a0+40]:8+72]:8) == s0(=a0).
  The `beq` branch at 0x342c targets 0x35fc, is taken when a2(=[[a0+40]:8+72]:8) == s0(=a0), and falls through when a2(=[[a0+40]:8+72]:8) != s0(=a0).
  The `bne` branch at 0x345c targets 0x35dc, is taken when a3(=[[a0+40]:8+104]) != 0, and falls through when a3(=[[a0+40]:8+104]) == 0.
  The `beq` branch at 0x3468 targets 0x33b8 and is always taken.
  The `beq` branch at 0x3474 targets 0x3484, is taken when s1(=[a0+72]:8) == 0, and falls through when s1(=[a0+72]:8) != 0.
  The `beq` branch at 0x347c targets 0x33a8 and is always taken.
  The `bne` branch at 0x34e8 targets 0x3508, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x34f0 targets 0x3508, is taken when v0(=[[a0+8]:8+8]:8) == s0(=a0), and falls through when v0(=[[a0+8]:8+8]:8) != s0(=a0).
  The `bne` branch at 0x3500 targets 0x36a8, is taken when (a4(?) & 0x2) != 0, and falls through when (a4(?) & 0x2) == 0.
  The `beq` branch at 0x3520 targets 0x3548, is taken when a5(=[[a0+8]:8+8]:8) == s0(=a0), and falls through when a5(=[[a0+8]:8+8]:8) != s0(=a0).
  The `beq` branch at 0x352c targets 0x354c, is taken when (s3(?) & 0x2) == 0, and falls through when (s3(?) & 0x2) != 0.
  The `bne` branch at 0x3540 targets 0x359c, is taken when (s3(?) & 0x40) != 0, and falls through when (s3(?) & 0x40) == 0.
  The `beq` branch at 0x3558 targets 0x341c, is taken when s3(?) == t0(?), and falls through when s3(?) != t0(?).
  The `bne` branch at 0x3560 targets 0x3570, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x3578 targets 0x3440, is taken when t2(=[[a0+40]:8+72]:8) != s0(=a0), and falls through when t2(=[[a0+40]:8+72]:8) == s0(=a0).
  The `bgez` branch at 0x358c targets 0x33d8, is taken when v0(=ret(validate_my_pane_resources)) >= 0 (signed), and falls through when v0(=ret(validate_my_pane_resources)) < 0 (signed).
  The `beq` branch at 0x3594 targets 0x34c4 and is always taken.
  The `beq` branch at 0x35b0 targets 0x3548 and is always taken.
  The `bgez` branch at 0x35c4 targets 0x33e0, is taken when v0(=ret(validate_my_pane_resources)) >= 0 (signed), and falls through when v0(=ret(validate_my_pane_resources)) < 0 (signed).
  The `beq` branch at 0x35cc targets 0x34c4 and is always taken.
  The `beq` branch at 0x35d4 targets 0x34c4 and is always taken.
  The `bne` branch at 0x35ec targets 0x35dc, is taken when t9(=[[a0+40]:8+104]) != 0, and falls through when t9(=[[a0+40]:8+104]) == 0.
  The `beq` branch at 0x35f4 targets 0x3468 and is always taken.
  The `beq` branch at 0x3600 targets 0x3674, is taken when a1(=[a0+96]:8) == 0, and falls through when a1(=[a0+96]:8) != 0.
  The `bne` branch at 0x360c targets 0x3674, is taken when (v0(=[a0+4]) & 0x8) != 0, and falls through when (v0(=[a0+4]) & 0x8) == 0.
  The `beq` branch at 0x3624 targets 0x3634, is taken when (at(=[a0+4]) & 0x20) == 0, and falls through when (at(=[a0+4]) & 0x20) != 0.
  The `beq` branch at 0x362c targets 0x363c and is always taken.
  The `beq` branch at 0x366c targets 0x34c4 and is always taken.
  The `beq` branch at 0x3678 targets 0x36a0, is taken when (v0(=[a0+4]) & 0x20) == 0, and falls through when (v0(=[a0+4]) & 0x20) != 0.
  The `beq` branch at 0x3698 targets 0x3664 and is always taken.
  The `beq` branch at 0x36a0 targets 0x3684 and is always taken.
  The `beq` branch at 0x36e0 targets 0x34c4 and is always taken.
  The return at 0x34dc has v0 = one of -0x1, ret(?).

- `RRM_CheckValidFault` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x36e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x36e8-0x3748 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x36e8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `ld` at 0x3710 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x3714 loads 8 bytes from [a0+8]:8 +0x8.
  The `jal` at 0x3728 calls RRM_ValidFault with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=?, a4=[a0+4].
  The `beq` branch at 0x36f4 targets 0x3710, is taken when (a4(=[a0+4]) & 0x4) == 0, and falls through when (a4(=[a0+4]) & 0x4) != 0.
  The `beq` branch at 0x3700 targets 0x3728, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x3718 targets 0x36fc, is taken when v0(=[[a0+8]:8+8]:8) != 0, and falls through when v0(=[[a0+8]:8+8]:8) == 0.
  The `beq` branch at 0x3720 targets 0x3708 and is always taken.
  The `bltz` branch at 0x3730 targets 0x3740, is taken when v0(=ret(RRM_ValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_ValidFault)) >= 0 (signed).
  The `beq` branch at 0x3738 targets 0x3708 and is always taken.
  The `beq` branch at 0x3740 targets 0x3708 and is always taken.
  The return at 0x3708 has v0 = one of -0x1, 0x0.

- `rrmSwapWait` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3748 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x3748-0x3838 (240 bytes).
  It occupies 240 bytes.
  The `ld` at 0x3754 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x376c loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x3770 loads 4 bytes from [a0+72]:8 +0xa4.
  The `lw` at 0x3774 loads 4 bytes from [a0+120]:8 +0x1c.
  The `ld` at 0x378c loads 8 bytes from [a0+72]:8 +0xa8.
  The `ld` at 0x379c loads 8 bytes from [[a0+72]:8+168]:8 +0x78.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x37a4, `ld` at 0x37b0.
  The `lw` at 0x37b4 loads 4 bytes from ?.
  The `sd` at 0x37c4 stores 8 bytes to a0 (arg0 at entry) +0xa8.
  The `sd` at 0x37d0 stores 8 bytes to ?.
  The `jal` at 0x3764 calls mutex_spinlock with a0=[a0+72]:8+48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x37cc calls hold_nonfatalsig with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0x37e4 calls sv_wait_sig with a0=a0+48, a1=0x1e, a2=?, a3=?.
  The `jal` at 0x37f4 calls release_nonfatalsig with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0x3818 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a7=[a0+72]:8+168.
  The `jal` at 0x3828 calls release_nonfatalsig with a0=sp-48, a1=?, a2=?, a3=?.
  The `beq` branch at 0x3784 targets 0x3810, is taken when at(=[[a0+72]:8+164]+1) >= t0(=[[a0+120]:8+28]) (unsigned), and falls through when at(=[[a0+72]:8+164]+1) < t0(=[[a0+120]:8+28]) (unsigned).
  The `beq` branch at 0x3790 targets 0x37c4, is taken when a6(=[[a0+72]:8+168]:8) == 0, and falls through when a6(=[[a0+72]:8+168]:8) != 0.
  The `beq` branch at 0x3798 targets 0x37b4 and is always taken.
  The `beq` branch at 0x37a8 targets 0x37c4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x37bc targets 0x37a0, is taken when t1(?) < t0(=[[a0+120]:8+28]) (unsigned), and falls through when t1(?) >= t0(=[[a0+120]:8+28]) (unsigned).
  The `bltz` branch at 0x37ec targets 0x3828, is taken when v0(=ret(sv_wait_sig)) < 0 (signed), and falls through when v0(=ret(sv_wait_sig)) >= 0 (signed).
  The `beq` branch at 0x3820 targets 0x3800 and is always taken.
  The `beq` branch at 0x3830 targets 0x3800 and is always taken.
  The return at 0x3808 has v0 = one of -0x1, 0x0.

- `RRM_SwapBuf` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3838 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x3838-0x3ad4 (668 bytes).
  It occupies 668 bytes.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x3858, `ld` at 0x394c, `ld` at 0x3970.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0xa0, including `lw` at 0x3874, `lw` at 0x3ac8.
  9 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x78, including `ld` at 0x3880, `ld` at 0x38e4, `ld` at 0x3918.
  The `lw` at 0x3884 loads 4 bytes from [a1+120]:8 +0x18.
  The `lw` at 0x3890 loads 4 bytes from [a0+40]:8 +0xa4.
  The `lw` at 0x3894 loads 4 bytes from [a1+120]:8 +0x1c.
  The `lw` at 0x38e8 loads 4 bytes from [a1+120]:8 +0x4.
  The `lw` at 0x38f4 loads 4 bytes from [a1+120]:8 +0x14.
  The `sw` at 0x38f8 stores 4 bytes to a1 (arg1 at entry) +0x1c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x38fc, `lw` at 0x3a50.
  2 such `lh` accesses load 2 bytes from [a1+120]:8 +0x12, including `lh` at 0x390c, `lh` at 0x391c.
  The `sh` at 0x3914 stores 2 bytes to [a1+120]:8 +0x12.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x3924, `lw` at 0x3964, `lw` at 0x3a6c.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `sw` at 0x392c, `sw` at 0x3aa4.
  The `sw` at 0x3934 stores 4 bytes to [a1+120]:8 +0x20.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x1c, including `lw` at 0x3938, `lw` at 0x39b0.
  The `lw` at 0x3950 loads 4 bytes from [a0+40]:8 +0x58.
  The `ld` at 0x3960 loads 8 bytes from [a0+40]:8 +0x60.
  The `sw` at 0x396c stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x50, including `lw` at 0x3974, `lw` at 0x39c4.
  3 such `sw` accesses store 4 bytes to [a0+40]:8 +0x50, including `sw` at 0x397c, `sw` at 0x39d4, `sw` at 0x39fc.
  4 such `ld` accesses load 8 bytes from [a1+120]:8 +0xa0, including `ld` at 0x3984, `ld` at 0x39e8, `ld` at 0x3a04.
  The `lw` at 0x3998 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `ld` at 0x39a4 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x39a8 loads 8 bytes from [a0+32]:8 +0x88.
  The `lw` at 0x39ac loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lh` at 0x3a18 loads 2 bytes from abs 0xffffffffffffc428.
  The `lw` at 0x3a28 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0x14.
  The `sw` at 0x3a38 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3bd8]:2 << 0x5)) +0x14.
  The `jal` at 0x3860 calls rrmGetResourceMask with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x38a8 calls rrmSwapWait with a0=a1 at entry (arg1), a1=[[a1+120]:8+28], a2=?, a3=?.
  The `jal` at 0x38d4 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x399c calls invalidate_pane with a0=0x4, a1=[a1+20], a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x39b8 calls (unknown callee) with a0=[a0+40]:8, a1=a1 at entry (arg1), a2=[a1+28], a3=[a2+4].
  The `jal` at 0x39dc calls validate_pane_buffer with a0=[a1+120]:8, a1=a0 at entry (arg0), a2=[a0+40]:8, a3=?, a5=[[a0+40]:8+80]-1.
  The `jal` at 0x3a10 calls rrmUnMapGfx with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3a40 calls psema with a0=sym(.bss), a1=0x19, a2=[a0+40]:8, a3=?, a7=[[a1+120]:8+160]:8.
  The `jal` at 0x3a70 calls vsema with a0=sym(.bss), a1=?, a2=?, a3=?, a6=[[a1+120]:8+160]:8.
  The `jal` at 0x3aa8 calls vsema with a0=sym(.bss), a1=?, a2=[a0+40]:8, a3=?, a5=[[a0+40]:8+80]-1, a7=[[a1+120]:8+160]:8.
  The `jal` at 0x3abc calls rrmSetResourceMask with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(ret(rrmGetResourceMask) | 0x8), a3=?.
  The `beq` branch at 0x386c targets 0x3ab8, is taken when (v0(=ret(rrmGetResourceMask)) & 0x8) == 0, and falls through when (v0(=ret(rrmGetResourceMask)) & 0x8) != 0.
  The `beq` branch at 0x3878 targets 0x38d4, is taken when v0(=[[a0+40]:8+160]) == 0, and falls through when v0(=[[a0+40]:8+160]) != 0.
  The `beq` branch at 0x3888 targets 0x38d4, is taken when v1(=[[a1+120]:8+24]) == 0, and falls through when v1(=[[a1+120]:8+24]) != 0.
  The `beq` branch at 0x38a0 targets 0x38d4, is taken when a0(=[[a0+40]:8+164]+1) >= a1(=[[a1+120]:8+28]) (unsigned), and falls through when a0(=[[a0+40]:8+164]+1) < a1(=[[a1+120]:8+28]) (unsigned).
  The `beq` branch at 0x38b0 targets 0x38d4, is taken when v0(=ret(rrmSwapWait)) == 0, and falls through when v0(=ret(rrmSwapWait)) != 0.
  The `bltz` branch at 0x38dc targets 0x3acc, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `beq` branch at 0x38ec targets 0x3a50, is taken when a1(=[[a1+120]:8+4]) == 0, and falls through when a1(=[[a1+120]:8+4]) != 0.
  The `beq` branch at 0x3904 targets 0x3a68, is taken when (a2(=[a0+4]) & 0x8) == 0, and falls through when (a2(=[a0+4]) & 0x8) != 0.
  The `beq` branch at 0x3920 targets 0x3a98, is taken when a4(=[[a1+120]:8+18]:2) == 0, and falls through when a4(=[[a1+120]:8+18]:2) != 0.
  The `beq` branch at 0x3944 targets 0x3a80, is taken when a1(?) == a6(=0xff), and falls through when a1(?) != a6(=0xff).
  The `beq` branch at 0x3958 targets 0x3974, is taken when a1(?) >= a3(=[[a0+40]:8+88]) (signed), and falls through when a1(?) < a3(=[[a0+40]:8+88]) (signed).
  The `bne` branch at 0x3988 targets 0x3a3c, is taken when a7(=[[a1+120]:8+160]:8) != 0, and falls through when a7(=[[a1+120]:8+160]:8) == 0.
  The `beq` branch at 0x39cc targets 0x39fc, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `bne` branch at 0x39ec targets 0x3a70, is taken when a6(=[[a1+120]:8+160]:8) != 0, and falls through when a6(=[[a1+120]:8+160]:8) == 0.
  The `beq` branch at 0x39f4 targets 0x38b8 and is always taken.
  The `bne` branch at 0x3a08 targets 0x3aa8, is taken when a7(=[[a1+120]:8+160]:8) != 0, and falls through when a7(=[[a1+120]:8+160]:8) == 0.
  The `beq` branch at 0x3a34 targets 0x38b8 and is always taken.
  The `beq` branch at 0x3a48 targets 0x3994 and is always taken.
  The `beq` branch at 0x3a58 targets 0x38f4, is taken when (a1(=[a0+4]) & 0x8) == 0, and falls through when (a1(=[a0+4]) & 0x8) != 0.
  The `beq` branch at 0x3a60 targets 0x38b8 and is always taken.
  The `beq` branch at 0x3a68 targets 0x3934 and is always taken.
  The `beq` branch at 0x3a78 targets 0x39f4 and is always taken.
  The `bne` branch at 0x3a88 targets 0x394c, is taken when a2(=[[a1+120]:8+160]:8) != 0, and falls through when a2(=[[a1+120]:8+160]:8) == 0.
  The `beq` branch at 0x3a90 targets 0x38b8 and is always taken.
  The `beq` branch at 0x3aa0 targets 0x3930 and is always taken.
  The `beq` branch at 0x3ab0 targets 0x3a10 and is always taken.
  The `beq` branch at 0x3ac4 targets 0x3878 and is always taken.
  The `beq` branch at 0x3acc targets 0x38b8 and is always taken.
  The return at 0x38cc has v0 = one of 0x4, ret(?), 0x0, 0xe.

- `rrmSwapUnGroup` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3ad4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x3ad4-0x3bcc (248 bytes).
  It occupies 248 bytes.
  The `ld` at 0x3ad4 loads 8 bytes from a1 (arg1 at entry) +0xa0.
  The `lw` at 0x3ad8 loads 4 bytes from [a1+160]:8 +0x4.
  The `ld` at 0x3adc loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lbu` at 0x3af0 loads 1 byte from a1 (arg1 at entry) +0xb0.
  The `ld` at 0x3afc loads 8 bytes from a1 (arg1 at entry) +0xa8.
  The `sd` at 0x3b00 stores 8 bytes to a1 (arg1 at entry) +0xa0.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3b10, `ld` at 0x3b74, `ld` at 0x3ba0.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x3b1c, `sd` at 0x3b80, `sd` at 0x3bac.
  The `lw` at 0x3b20 loads 4 bytes from [a1+160]:8 +0x0.
  The `sw` at 0x3b30 stores 4 bytes to [a1+160]:8 +0x0.
  3 such `lw` accesses load 4 bytes from [a0+40]:8 +0xb0, including `lw` at 0x3b34, `lw` at 0x3b84, `lw` at 0x3bb4.
  3 such `ld` accesses load 8 bytes from [a0+40]:8 +0xb8, including `ld` at 0x3b6c, `ld` at 0x3b98, `ld` at 0x3bc8.
  The `sw` at 0x3bbc stores 4 bytes to [a1+160]:8 +0x4.
  The `jal` at 0x3b48 calls kern_free with a0=[a1+160]:8, a1=?, a2=a2 at entry (arg2), a3=[a0+40]:8, a4=[[a0+40]:8+176], a6=[a1+160]:8.
  The `beq` branch at 0x3ae8 targets 0x3afc, is taken when a5(=[[a1+160]:8+4]) == 0, and falls through when a5(=[[a1+160]:8+4]) != 0.
  The `beq` branch at 0x3af4 targets 0x3bb8, is taken when at(=[a1+176]:1) == 0, and falls through when at(=[a1+176]:1) != 0.
  The `beq` branch at 0x3b04 targets 0x3b1c, is taken when a5(=[a1+168]:8) == a1, and falls through when a5(=[a1+168]:8) != a1.
  The `bne` branch at 0x3b14 targets 0x3b0c, is taken when a0(?) != a1, and falls through when a0(?) == a1.
  The `bne` branch at 0x3b2c targets 0x3b50, is taken when v0(=[[a1+160]:8]-1) != 0, and falls through when v0(=[[a1+160]:8]-1) == 0.
  The `beq` branch at 0x3b38 targets 0x3b48, is taken when a4(=[[a0+40]:8+176]) == 0, and falls through when a4(=[[a0+40]:8+176]) != 0.
  The `beq` branch at 0x3b40 targets 0x3bc0 and is always taken.
  The `beq` branch at 0x3b64 targets 0x3b48, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x3b78 targets 0x3b8c, is taken when a0(?) != a6(=[a1+160]:8), and falls through when a0(?) == a6(=[a1+160]:8).
  The `beq` branch at 0x3b90 targets 0x3b48, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x3ba4 targets 0x3b60, is taken when t1(?) != a6(=[a1+160]:8), and falls through when t1(?) == a6(=[a1+160]:8).
  The `beq` branch at 0x3bb0 targets 0x3b5c and is always taken.
  The `beq` branch at 0x3bb8 targets 0x3afc and is always taken.
  The `beq` branch at 0x3bc4 targets 0x3b70 and is always taken.
  The return at 0x3b54 has v0 = one of [[a1+160]:8]-1, ret(kern_free).

- `RRM_SwapUnGroup` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3bcc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x3bcc-0x3c4c (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x3bf4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `ld` at 0x3c08 loads 8 bytes from ret(clip2pane) +0xa0.
  The `jal` at 0x3bec calls psema with a0=sym(.bss), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3bf8 calls clip2pane with a0=[a2], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x3c1c calls vsema with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x3c3c calls rrmSwapUnGroup with a0=a0 at entry (arg0), a1=ret(clip2pane), a2=?, a3=?.
  The `beq` branch at 0x3c00 targets 0x3c14, is taken when v0(=ret(clip2pane)) == 0, and falls through when v0(=ret(clip2pane)) != 0.
  The `bne` branch at 0x3c0c targets 0x3c38, is taken when a1(=[ret(clip2pane)+160]:8) != 0, and falls through when a1(=[ret(clip2pane)+160]:8) == 0.
  The `beq` branch at 0x3c44 targets 0x3c14 and is always taken.
  The return at 0x3c30 has v0 = one of 0x0, 0x2, 0xf.

- `RRM_SwapGroup` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3c4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x3c4c-0x3d84 (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0x3c5c loads 4 bytes from a2 (arg2 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from ret(clip2pane) +0xa0, including `ld` at 0x3c7c, `ld` at 0x3ca8.
  The `lw` at 0x3c88 loads 4 bytes from a2 (arg2 at entry) +0x4.
  2 such `ld` accesses load 8 bytes from ret(clip2pane) +0x58, including `ld` at 0x3cb4, `ld` at 0x3cb8.
  The `sd` at 0x3ce8 stores 8 bytes to ret(clip2pane) +0xa0.
  The `ld` at 0x3cec loads 8 bytes from ret(clip2pane) +0xa8.
  The `sb` at 0x3cf0 stores 1 byte to ret(clip2pane) +0xb0.
  3 such `sd` accesses store 8 bytes to ret(clip2pane) +0xa8, including `sd` at 0x3cf4, `sd` at 0x3cf8, `sd` at 0x3d58.
  The `lw` at 0x3cfc loads 4 bytes from ?.
  The `sw` at 0x3d0c stores 4 bytes to ?.
  The `jal` at 0x3c68 calls clip2pane with a0=[a2], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3c94 calls clip2pane with a0=[a2+4], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x3cd8 calls psema with a0=sym(.bss), a1=0x19, a2=?, a3=?.
  The `jal` at 0x3d08 calls vsema with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x3d30 calls rrmSwapUnGroup with a0=a0 at entry (arg0), a1=ret(clip2pane), a2=?, a3=?, a5=0x2.
  The `jal` at 0x3d5c calls kern_malloc with a0=0xc, a1=?, a2=?, a3=?.
  The `jal` at 0x3d6c calls bzero with a0=ret(kern_malloc), a1=0xc, a2=?, a3=?.
  The `beq` branch at 0x3c74 targets 0x3d40, is taken when v0(=ret(clip2pane)) == 0, and falls through when v0(=ret(clip2pane)) != 0.
  The `bne` branch at 0x3c80 targets 0x3d2c, is taken when v0(=[ret(clip2pane)+160]:8) != 0, and falls through when v0(=[ret(clip2pane)+160]:8) == 0.
  The `beq` branch at 0x3c8c targets 0x3d54, is taken when a0(=[a2+4]) == 0, and falls through when a0(=[a2+4]) != 0.
  The `beq` branch at 0x3c9c targets 0x3d48, is taken when v0(=ret(clip2pane)) == 0, and falls through when v0(=ret(clip2pane)) != 0.
  The `beq` branch at 0x3cac targets 0x3d7c, is taken when a0(=[ret(clip2pane)+160]:8) == 0, and falls through when a0(=[ret(clip2pane)+160]:8) != 0.
  The `beq` branch at 0x3cbc targets 0x3ccc, is taken when a1(=[ret(clip2pane)+88]:8) == a2(=[ret(clip2pane)+88]:8), and falls through when a1(=[ret(clip2pane)+88]:8) != a2(=[ret(clip2pane)+88]:8).
  The `beq` branch at 0x3cc4 targets 0x3d18 and is always taken.
  The `beq` branch at 0x3d38 targets 0x3c88 and is always taken.
  The `beq` branch at 0x3d40 targets 0x3d18 and is always taken.
  The `beq` branch at 0x3d4c targets 0x3d18 and is always taken.
  The `beq` branch at 0x3d74 targets 0x3cd4 and is always taken.
  The `beq` branch at 0x3d7c targets 0x3d18 and is always taken.
  The return at 0x3d24 has v0 = one of 0x6, 0x0, 0x2, 0x9, 0xf.

- `RRM_SwapReady` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3d84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x3d84-0x3eec (360 bytes).
  It occupies 360 bytes.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x3d8c, `ld` at 0x3e14, `ld` at 0x3e84.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x3d90, `lw` at 0x3e30.
  The `lw` at 0x3d94 loads 4 bytes from [a0+40]:8 +0xb0.
  The `lw` at 0x3ddc loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `ld` at 0x3df4 loads 8 bytes from ret(clip2pane) +0x58.
  2 such `ld` accesses load 8 bytes from ret(clip2pane) +0xa0, including `ld` at 0x3e08, `ld` at 0x3eb8.
  The `ld` at 0x3e18 loads 8 bytes from [a0+40]:8 +0x48.
  The `lw` at 0x3e24 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `ld` at 0x3e28 loads 8 bytes from [a0+40]:8 +0xb8.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3e40, `ld` at 0x3ec8.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x3e70, `sd` at 0x3ee0.
  The `sd` at 0x3e88 stores 8 bytes to [a0+40]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x68, including `lw` at 0x3e90, `lw` at 0x3ea8.
  The `jal` at 0x3de0 calls clip2pane with a0=[a2], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x25.
  The `jal` at 0x3e7c calls psema with a0=[a0+40]:8+56, a1=0x219, a2=[a0+40]:8, a3=?, a5=0x6.
  The `jal` at 0x3e9c calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `bne` branch at 0x3db4 targets 0x3ddc, is taken when at(=[a2+4]) < v0(=[[a0+40]:8+176]) (unsigned), and falls through when at(=[a2+4]) >= v0(=[[a0+40]:8+176]) (unsigned).
  The `beq` branch at 0x3dec targets 0x3e60, is taken when v0(=ret(clip2pane)) == 0, and falls through when v0(=ret(clip2pane)) != 0.
  The `beq` branch at 0x3df8 targets 0x3e08, is taken when v1(=[ret(clip2pane)+88]:8) == s2(=[a0+40]:8), and falls through when v1(=[ret(clip2pane)+88]:8) != s2(=[a0+40]:8).
  The `beq` branch at 0x3e00 targets 0x3dc0 and is always taken.
  The `beq` branch at 0x3e0c targets 0x3ee4, is taken when v0(=[ret(clip2pane)+160]:8) == 0, and falls through when v0(=[ret(clip2pane)+160]:8) != 0.
  The `bne` branch at 0x3e1c targets 0x3e7c, is taken when a0(=[[a0+40]:8+72]:8) != s0(=a0), and falls through when a0(=[[a0+40]:8+72]:8) == s0(=a0).
  The `beq` branch at 0x3e2c targets 0x3ebc, is taken when a1(=[a2+8]) == 0, and falls through when a1(=[a2+8]) != 0.
  The `beq` branch at 0x3e44 targets 0x3e70, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x3e4c targets 0x3e68, is taken when a2(?) != v0(=[ret(clip2pane)+160]:8), and falls through when a2(?) == v0(=[ret(clip2pane)+160]:8).
  The `beq` branch at 0x3e58 targets 0x3dc0 and is always taken.
  The `beq` branch at 0x3e60 targets 0x3dc0 and is always taken.
  The `beq` branch at 0x3e68 targets 0x3dc0 and is always taken.
  The `beq` branch at 0x3e74 targets 0x3dbc and is always taken.
  The `beq` branch at 0x3e94 targets 0x3eb4, is taken when a6(=[[a0+40]:8+104]) == 0, and falls through when a6(=[[a0+40]:8+104]) != 0.
  The `bne` branch at 0x3eac targets 0x3e9c, is taken when t0(=[[a0+40]:8+104]) != 0, and falls through when t0(=[[a0+40]:8+104]) == 0.
  The `beq` branch at 0x3eb4 targets 0x3e24 and is always taken.
  The `beq` branch at 0x3ecc targets 0x3edc, is taken when t1(?) == v0(=[ret(clip2pane)+160]:8), and falls through when t1(?) != v0(=[ret(clip2pane)+160]:8).
  The `beq` branch at 0x3ed4 targets 0x3dbc and is always taken.
  The `beq` branch at 0x3edc targets 0x3e74 and is always taken.
  The `beq` branch at 0x3ee4 targets 0x3dbc and is always taken.
  The return at 0x3dd4 has v0 = one of 0x0, 0x9, 0xf, 0x25, 0x6, 0x11, 0x2, 0x10.

- `RRM_CushionBuffer` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3eec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x3eec-0x3f90 (164 bytes).
  It occupies 164 bytes.
  The `ld` at 0x3ef8 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x3f08 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `ld` at 0x3f1c loads 8 bytes from ret(clip2pane) +0x58.
  The `lw` at 0x3f38 loads 4 bytes from [a0+40]:8 +0xc0.
  The `lw` at 0x3f44 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lbu` at 0x3f48 loads 1 byte from ret(clip2pane) +0xb1.
  2 such `sb` accesses store 1 byte to ret(clip2pane) +0xb1, including `sb` at 0x3f64, `sb` at 0x3f8c.
  The `jal` at 0x3f04 calls clip2pane with a0=[a2], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x3f14 targets 0x3f28, is taken when v0(=ret(clip2pane)) == 0, and falls through when v0(=ret(clip2pane)) != 0.
  The `beq` branch at 0x3f20 targets 0x3f38, is taken when v1(=[ret(clip2pane)+88]:8) == s0(=[a0+40]:8), and falls through when v1(=[ret(clip2pane)+88]:8) != s0(=[a0+40]:8).
  The `beq` branch at 0x3f3c targets 0x3f80, is taken when a5(=[[a0+40]:8+192]) == 0, and falls through when a5(=[[a0+40]:8+192]) != 0.
  The `beq` branch at 0x3f4c targets 0x3f70, is taken when a0(=[a2+4]) == 0, and falls through when a0(=[a2+4]) != 0.
  The `beq` branch at 0x3f54 targets 0x3f64, is taken when a4(=[ret(clip2pane)+177]:1) == 0, and falls through when a4(=[ret(clip2pane)+177]:1) != 0.
  The `beq` branch at 0x3f5c targets 0x3f2c and is always taken.
  The `beq` branch at 0x3f68 targets 0x3f28 and is always taken.
  The `beq` branch at 0x3f70 targets 0x3f88, is taken when a4(=[ret(clip2pane)+177]:1) == 0, and falls through when a4(=[ret(clip2pane)+177]:1) != 0.
  The `beq` branch at 0x3f78 targets 0x3f28 and is always taken.
  The `beq` branch at 0x3f80 targets 0x3f2c and is always taken.
  The `beq` branch at 0x3f88 targets 0x3f68 and is always taken.
  The return at 0x3f30 has v0 = one of 0x0, 0x2, 0x6, 0x10, 0x13.

- `RRM_MGR_SwapBuf` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x3f90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x3f90-0x4054 (196 bytes).
  It occupies 196 bytes.
  The `ld` at 0x3fb4 loads 8 bytes from a0 (arg0 at entry) +0x28.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x3fb8, `lw` at 0x3fdc.
  The `lw` at 0x3fbc loads 4 bytes from [a0+40]:8 +0x58.
  The `ld` at 0x3fcc loads 8 bytes from [a0+40]:8 +0x60.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lw` at 0x3fd0, `lw` at 0x3fec, `lw` at 0x4030.
  The `sw` at 0x3fd8 stores 4 bytes to ([[a0+40]:8+96]:8 + ([a2+4] << 0x2)) +0x0.
  The `ld` at 0x3fe0 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x3fe4 loads 8 bytes from [a0+32]:8 +0xa8.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x3fe8, `lw` at 0x401c.
  The `lw` at 0x3ff8 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `sh` at 0x4040 stores 2 bytes to ret(clip2pane) +0x12.
  The `jal` at 0x3fa4 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x3ff4 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a2+8], a2=[a2+4], a3=[a2+16], a4=[a2+12].
  The `jal` at 0x4020 calls clip2pane with a0=[a2+8], a1=a0 at entry (arg0), a2=?, a3=?.
  The `bltz` branch at 0x3fac targets 0x404c, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `beq` branch at 0x3fc4 targets 0x3fe0, is taken when a2(=[a2+4]) >= at(=[[a0+40]:8+88]) (signed), and falls through when a2(=[a2+4]) < at(=[[a0+40]:8+88]) (signed).
  The `beq` branch at 0x3ffc targets 0x401c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x4028 targets 0x4044, is taken when v0(=ret(clip2pane)) == 0, and falls through when v0(=ret(clip2pane)) != 0.
  The `beq` branch at 0x4044 targets 0x4008 and is always taken.
  The `beq` branch at 0x404c targets 0x4008 and is always taken.
  The return at 0x4014 has v0 = one of ?, 0x0, 0xe.

- `rrmValidateMGRSwapBufSTREAM` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4054 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x4054-0x40a0 (76 bytes).
  It occupies 76 bytes.
  The `ld` at 0x4060 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `jal` at 0x408c calls GfxIntrMessage with a0=sp-64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+8]:8.
  The `beq` branch at 0x4058 targets 0x4094, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x4064 targets 0x4098, is taken when a3(=[a0+8]:8) == 0, and falls through when a3(=[a0+8]:8) != 0.
  The return at 0x4098 has v0 = ?.

- `rrmValidateMGRSwapBuf` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x40a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x40a0-0x40e8 (72 bytes).
  It occupies 72 bytes.
  The `ld` at 0x40b0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `jal` at 0x40d8 calls streams_timeout with a0=sym(streams_monp), a1=sym(rrmValidateMGRSwapBufSTREAM), a2=-0x64, a3=a0 at entry (arg0), a5=0x0, a7=a1 at entry (arg1).
  The `beq` branch at 0x40a8 targets 0x40bc, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0x40b4 targets 0x40c4, is taken when at(=[a0+8]:8) != 0, and falls through when at(=[a0+8]:8) == 0.
  The `beq` branch at 0x40e0 targets 0x40bc and is always taken.
  The return at 0x40bc has v0 = one of ?, ret(streams_timeout).

- `rrmGenlockNotifySTREAM` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x40e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x40e8-0x4130 (72 bytes).
  It occupies 72 bytes.
  The `ld` at 0x40f4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `jal` at 0x411c calls GfxIntrMessage with a0=sp-64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+8]:8.
  The `beq` branch at 0x40ec targets 0x4124, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x40f8 targets 0x4128, is taken when a3(=[a0+8]:8) == 0, and falls through when a3(=[a0+8]:8) != 0.
  The return at 0x4128 has v0 = ?.

- `rrmGenlockNotify` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4130 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x4130-0x4178 (72 bytes).
  It occupies 72 bytes.
  The `ld` at 0x4140 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `jal` at 0x4168 calls streams_timeout with a0=sym(streams_monp), a1=sym(rrmGenlockNotifySTREAM), a2=-0x64, a3=a0 at entry (arg0), a5=0x0, a7=a1 at entry (arg1).
  The `beq` branch at 0x4138 targets 0x414c, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0x4144 targets 0x4154, is taken when at(=[a0+8]:8) != 0, and falls through when at(=[a0+8]:8) == 0.
  The `beq` branch at 0x4170 targets 0x414c and is always taken.
  The return at 0x414c has v0 = one of ?, ret(streams_timeout).

- `RRM_WaitForRetrace` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4178 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x4178-0x41e4 (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x41b0 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x41b4 loads 8 bytes from [a0+32]:8 +0x98.
  The `ld` at 0x41c0 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x418c calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x41a8 calls rrmInvalidateRN with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x10, a3=?.
  The `jalr` at 0x41bc calls (unknown callee) with a0=[a0+40]:8, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x41c4 calls rrmUnMapGfx with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgez` branch at 0x4194 targets 0x41a4, is taken when v0(=ret(RRM_CheckValidFault)) >= 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) < 0 (signed).
  The `beq` branch at 0x419c targets 0x41d0 and is always taken.
  The return at 0x41dc has v0 = one of 0x0, 0xe.

- `RRM_SetSwapInterval` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x41e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x41e4-0x420c (40 bytes).
  It occupies 40 bytes.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x41e4, `lw` at 0x41f8.
  The `sw` at 0x41f0 stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `ld` at 0x41f4 loads 8 bytes from a1 (arg1 at entry) +0x78.
  The `sw` at 0x41fc stores 4 bytes to [a1+120]:8 +0x18.
  The `bltz` branch at 0x41e8 targets 0x4204, is taken when a4(=[a2+4]) < 0 (signed), and falls through when a4(=[a2+4]) >= 0 (signed).
  The return at 0x4204 has v0 = one of 0x0, 0x16.

- `RRM_Message` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x420c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x420c-0x4318 (268 bytes).
  It occupies 268 bytes.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x78, including `ld` at 0x4240, `ld` at 0x4288.
  The `lhu` at 0x4250 loads 2 bytes from a1 (arg1 at entry) +0x6.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x4264, `lw` at 0x428c.
  The `sw` at 0x4278 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `lw` at 0x4298 loads 4 bytes from [a1+120]:8 +0x4.
  The `ld` at 0x42a4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x42a8 loads 8 bytes from [a0+8]:8 +0x8.
  The `lbu` at 0x42b8 loads 1 byte from a2 (arg2 at entry) +0x8.
  The `lw` at 0x42c0 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `jal` at 0x4238 calls mutex_spinlock with a0=a1+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4248 calls pane_validmask with a0=[a1+120]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x425c calls mutex_spinunlock with a0=a1+104, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x4280 calls rrmInvalidateRN with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x4294 calls invalidate_pane with a0=[a2+4], a1=[[a1+120]:8+4], a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x429c calls rrmUnMapGfx with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x42e0 calls bcopy with a0=a2+16, a1=sp-96, a2=?, a3=?, a4=[a2+8]:1.
  The `jal` at 0x42e8 calls GfxMessage with a0=sp-112, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4274 targets 0x42a4, is taken when (s8(=(ret(pane_validmask) | [a1+6]:2)) & a2(=[a2+4])) == 0, and falls through when (s8(=(ret(pane_validmask) | [a1+6]:2)) & a2(=[a2+4])) != 0.
  The `beq` branch at 0x42ac targets 0x4310, is taken when a2(=[[a0+8]:8+8]:8) == 0, and falls through when a2(=[[a0+8]:8+8]:8) != 0.
  The `bne` branch at 0x42c8 targets 0x42d4, is taken when v0(=[a2+12]) < 0xb (signed), and falls through when v0(=[a2+12]) >= 0xb (signed).
  The `beq` branch at 0x4310 targets 0x42f8 and is always taken.
  The return at 0x4308 has v0 = one of 0x0, 0xe.

- `RRM_SetVideoSync` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4318 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x4318-0x432c (20 bytes).
  It occupies 20 bytes.
  The `ld` at 0x4318 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x431c loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `sw` at 0x4320 stores 4 bytes to [a0+40]:8 +0x80.
  The return at 0x4324 has v0 = 0x0.

- `RRM_GetVideoSync` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x432c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x432c-0x4370 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x4330 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x4344 loads 4 bytes from [a0+40]:8 +0x80.
  The `sw` at 0x4348 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `jal` at 0x434c calls copyout with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x8, a3=a3 at entry (arg3).
  The `beq` branch at 0x4354 targets 0x4368, is taken when v0(=ret(copyout)) == 0, and falls through when v0(=ret(copyout)) != 0.
  The `beq` branch at 0x4368 targets 0x4360 and is always taken.
  The return at 0x4360 has v0 = one of 0x0, 0xe.

- `RRM_WaitVideoSync` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4370 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x4370-0x43dc (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x4380 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lw` at 0x4390 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x43b4 loads 4 bytes from a1 (arg1 at entry) +0x98.
  The `sw` at 0x43c0 stores 4 bytes to a2 (arg2 at entry) +0xc.
  The `jal` at 0x438c calls rrmWaitVideoSync with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a2+4], a3=[a2+8].
  The `jal` at 0x43bc calls copyout with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x10, a3=?.
  The `beq` branch at 0x4394 targets 0x43a8, is taken when v0(=ret(rrmWaitVideoSync)) == 0, and falls through when v0(=ret(rrmWaitVideoSync)) != 0.
  The `beq` branch at 0x43c4 targets 0x43d4, is taken when v0(=ret(copyout)) == 0, and falls through when v0(=ret(copyout)) != 0.
  The `beq` branch at 0x43cc targets 0x439c and is always taken.
  The `beq` branch at 0x43d4 targets 0x439c and is always taken.
  The return at 0x43a0 has v0 = one of ret(rrmWaitVideoSync), 0xe, 0x0.

- `rrmWaitVideoSync` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x43dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x43dc-0x44b8 (220 bytes).
  It occupies 220 bytes.
  The `ld` at 0x4404 loads 8 bytes from a0 (arg0 at entry) +0x28.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0xa0, including `sd` at 0x443c, `sd` at 0x4454.
  The `sw` at 0x4440 stores 4 bytes to a1 (arg1 at entry) +0x94.
  The `sw` at 0x4444 stores 4 bytes to a1 (arg1 at entry) +0x90.
  The `ld` at 0x4448 loads 8 bytes from [a0+40]:8 +0x88.
  2 such `sd` accesses store 8 bytes to [a0+40]:8 +0x88, including `sd` at 0x4458, `sd` at 0x44a0.
  The `jal` at 0x4434 calls mutex_spinlock with a0=[a0+40]:8+48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4464 calls hold_nonfatalsig with a0=sp-64, a1=[[a0+40]:8+136]:8, a2=?, a3=?.
  The `jal` at 0x4478 calls sv_wait_sig with a0=a1+48, a1=0x1e, a2=?, a3=ret(mutex_spinlock).
  The `jal` at 0x4488 calls release_nonfatalsig with a0=sp-64, a1=?, a2=?, a3=?.
  The `jal` at 0x44a4 calls release_nonfatalsig with a0=sp-64, a1=?, a2=?, a3=?.
  The `blez` branch at 0x4400 targets 0x4418, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `bltz` branch at 0x4408 targets 0x4418, is taken when a3 < 0 (signed), and falls through when a3 >= 0 (signed).
  The `bne` branch at 0x4410 targets 0x4430, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x444c targets 0x449c, is taken when a1(=[[a0+40]:8+136]:8) == 0, and falls through when a1(=[[a0+40]:8+136]:8) != 0.
  The `bltz` branch at 0x4480 targets 0x44a4, is taken when v0(=ret(sv_wait_sig)) < 0 (signed), and falls through when v0(=ret(sv_wait_sig)) >= 0 (signed).
  The `beq` branch at 0x4494 targets 0x4418 and is always taken.
  The `beq` branch at 0x449c targets 0x445c and is always taken.
  The `beq` branch at 0x44b0 targets 0x4418 and is always taken.
  The return at 0x4428 has v0 = one of -0x1, 0x0, 0x16.

- `rrmValidateVideoSync` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x44b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x44b8-0x45f8 (320 bytes).
  It occupies 320 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x88, including `ld` at 0x44e0, `ld` at 0x4540.
  6 such `ld` accesses load 8 bytes from ?, including `ld` at 0x4500, `ld` at 0x4510, `ld` at 0x4548.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4514, `lw` at 0x451c, `lw` at 0x4528.
  The `lw` at 0x452c loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `sd` at 0x4550 stores 8 bytes to a0 (arg0 at entry) +0x88.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x455c, `sd` at 0x45a4.
  The `sw` at 0x456c stores 4 bytes to ?.
  The `lw` at 0x4578 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `ld` at 0x457c loads 8 bytes from a0 (arg0 at entry) +0xa8.
  The `ld` at 0x4590 loads 8 bytes from [a0+168]:8 +0x78.
  The `lw` at 0x4598 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `sd` at 0x45d0 stores 8 bytes to a0 (arg0 at entry) +0xa8.
  The `jal` at 0x44d8 calls mutex_spinlock with a0=a0+48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4568 calls sv_signal with a0=?, a1=[a0+136]:8, a2=?, a3=?.
  The `jal` at 0x45a0 calls sv_signal with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x45d8 calls mutex_spinunlock with a0=a0+48, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `bne` branch at 0x44f0 targets 0x4510, is taken when at(=[a0+136]:8) != 0, and falls through when at(=[a0+136]:8) == 0.
  The `beq` branch at 0x44f8 targets 0x4578 and is always taken.
  The `beq` branch at 0x4508 targets 0x4578, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x4524 targets 0x4594, is taken when (v1(?) & 0x8) == 0, and falls through when (v1(?) & 0x8) != 0.
  The `bne` branch at 0x4538 targets 0x4500, is taken when a7(?) != a0(?), and falls through when a7(?) == a0(?).
  The `bne` branch at 0x4544 targets 0x455c, is taken when a1(=[a0+136]:8) != a4(?), and falls through when a1(=[a0+136]:8) == a4(?).
  The `beq` branch at 0x4554 targets 0x4564 and is always taken.
  The `bne` branch at 0x4570 targets 0x4510, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x4584 targets 0x45c8, is taken when s0(=[a0+168]:8) == 0, and falls through when s0(=[a0+168]:8) != 0.
  The `beq` branch at 0x458c targets 0x45b4 and is always taken.
  The `beq` branch at 0x4594 targets 0x4530 and is always taken.
  The `beq` branch at 0x45a8 targets 0x45c8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x45c0 targets 0x459c, is taken when s3(=[a0+164]+1) >= t8(?) (unsigned), and falls through when s3(=[a0+164]+1) < t8(?) (unsigned).
  The return at 0x45f0 has v0 = ret(mutex_spinunlock).

- `RRM_MapClipToSwapbufID` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x45f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x45f8-0x4670 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x45fc loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lw` at 0x4624 loads 4 bytes from ret(clip2pane) +0x14.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `sw` at 0x462c, `sw` at 0x464c.
  The `jal` at 0x4614 calls clip2pane with a0=[a2+4], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4658 calls copyout with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0xc, a3=?.
  The `beq` branch at 0x461c targets 0x4648, is taken when v0(=ret(clip2pane)) == 0, and falls through when v0(=ret(clip2pane)) != 0.
  The `bne` branch at 0x4628 targets 0x4650, is taken when s1(=a3) != 0, and falls through when s1(=a3) == 0.
  The `beq` branch at 0x4648 targets 0x4630, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x4660 targets 0x4634, is taken when v0(=ret(copyout)) == 0, and falls through when v0(=ret(copyout)) != 0.
  The `beq` branch at 0x4668 targets 0x4634 and is always taken.
  The return at 0x4640 has v0 = one of 0x0, 0xe.

- `RRM_Dispatch` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4670 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x4670-0x4aec (1148 bytes).
  It occupies 1148 bytes.
  2 such `ld` accesses load 8 bytes from table(sym(.data)) -0x5dc0, including `ld` at 0x46c8, `ld` at 0x4848.
  3 such `lw` accesses load 4 bytes from table(sym(.data)) -0x5db8, including `lw` at 0x46ec, `lw` at 0x48a0, `lw` at 0x4924.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x4734, `ld` at 0x4810.
  2 such `ld` accesses load 8 bytes from [a0+8]:8 +0x8, including `ld` at 0x4738, `ld` at 0x4814.
  The `lw` at 0x4740 loads 4 bytes from table(sym(.data)) -0x5db4.
  7 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x474c, `ld` at 0x4838, `ld` at 0x486c.
  The `ld` at 0x4750 loads 8 bytes from [a0+40]:8 +0x48.
  2 such `lbu` accesses load 1 byte from table(sym(RRMrn)) +0x52, including `lbu` at 0x47f4, `lbu` at 0x4a00.
  2 such `lw` accesses load 4 bytes from table(sym(RRMrn)) +0x0, including `lw` at 0x4804, `lw` at 0x4a10.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x50, including `lw` at 0x483c, `lw` at 0x4870.
  2 such `sw` accesses store 4 bytes to [a0+40]:8 +0x50, including `sw` at 0x4844, `sw` at 0x4878.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x4948, `lw` at 0x4a44.
  The `sd` at 0x498c stores 8 bytes to [a0+40]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x68, including `lw` at 0x4994, `lw` at 0x49ac.
  The `ld` at 0x4a54 loads 8 bytes from table(sym(RRMrn)) +0x38.
  The `lw` at 0x4a60 loads 4 bytes from [table(sym(RRMrn))+56]:8 +0x4.
  The `ld` at 0x4a70 loads 8 bytes from [table(sym(RRMrn))+56]:8 +0x28.
  The `lbu` at 0x4a88 loads 1 byte from table(sym(RRMrn)) +0x54.
  The `ld` at 0x4a94 loads 8 bytes from table(sym(RRMrn)) +0x40.
  The `ld` at 0x4ab0 loads 8 bytes from a0 (arg0 at entry) +0x40.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x4abc, `ld` at 0x4ac8.
  The `jal` at 0x46f0 calls copyin with a0=a2 at entry (arg2), a1=sp-144, a2=[table(sym(.data))-23992], a3=a3 at entry (arg3).
  The `jalr` at 0x485c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=sp-144, a3=a2 at entry (arg2), a4=a3 at entry (arg3).
  The `jal` at 0x4884 calls curproc_abi with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x48a4 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-144, a2=[table(sym(.data))-23992], a3=sym(irix5_to_RRM_GetDisplayModes), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x48f8 calls vsema with a0=table(sym(RRMcall_sema)), a1=?, a2=?, a3=?.
  The `jal` at 0x4908 calls curproc_abi with a0=[table(sym(.data))-24000]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4928 calls copyin_xlate with a0=a2 at entry (arg2), a1=sp-144, a2=[table(sym(.data))-23992], a3=sym(irix5_to_RRM_ValidateClip), a4=ret(curproc_abi), a5=0x4, a6=0x1.
  The `jal` at 0x4980 calls psema with a0=[a0+40]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0x49a0 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x49f8 calls psema with a0=table(sym(RRMcall_sema)), a1=0x19, a2=?, a3=?.
  The `jal` at 0x4a24 calls vsema with a0=table(sym(RRMcall_sema)), a1=?, a2=?, a3=0x1, a4=[table(sym(RRMrn))+82]:1.
  The `bne` branch at 0x46a4 targets 0x4708, is taken when a1 < 0x3e8 (signed), and falls through when a1 >= 0x3e8 (signed).
  The `beq` branch at 0x46b0 targets 0x4708, is taken when a1 >= 0x44c (signed), and falls through when a1 < 0x44c (signed).
  The `beq` branch at 0x46cc targets 0x470c, is taken when a0(=[table(sym(.data))-24000]:8) == 0, and falls through when a0(=[table(sym(.data))-24000]:8) != 0.
  The `beq` branch at 0x46d8 targets 0x4908, is taken when a1 == s3(=0x3f3), and falls through when a1 != s3(=0x3f3).
  The `beq` branch at 0x46e4 targets 0x4884, is taken when a1 == t9(=0x3f8), and falls through when a1 != t9(=0x3f8).
  The `beq` branch at 0x46f8 targets 0x4734, is taken when v0(=ret(copyin)) == 0, and falls through when v0(=ret(copyin)) != 0.
  The `beq` branch at 0x4700 targets 0x470c and is always taken.
  The `bne` branch at 0x473c targets 0x475c, is taken when ra(=[[a0+8]:8+8]:8) != s1(=a0), and falls through when ra(=[[a0+8]:8+8]:8) == s1(=a0).
  The `beq` branch at 0x4744 targets 0x4760, is taken when s2(=[table(sym(.data))-23988]) == 0, and falls through when s2(=[table(sym(.data))-23988]) != 0.
  The `bne` branch at 0x4754 targets 0x4980, is taken when at(=[[a0+40]:8+72]:8) != s1(=a0), and falls through when at(=[[a0+40]:8+72]:8) == s1(=a0).
  The `beq` branch at 0x4764 targets 0x48bc, is taken when s0(=a1) == v0(=0x3e8), and falls through when s0(=a1) != v0(=0x3e8).
  The `beq` branch at 0x4770 targets 0x4940, is taken when s0(=a1) == v1(=0x3ea), and falls through when s0(=a1) != v1(=0x3ea).
  The `beq` branch at 0x4778 targets 0x4968, is taken when s0(=a1) == a1(=0x3fc), and falls through when s0(=a1) != a1(=0x3fc).
  The `beq` branch at 0x4780 targets 0x4830, is taken when s0(=a1) == a2(=0x3f2), and falls through when s0(=a1) != a2(=0x3f2).
  The `beq` branch at 0x4788 targets 0x4830, is taken when s0(=a1) == s3(=0x3f3), and falls through when s0(=a1) != s3(=0x3f3).
  The `beq` branch at 0x4790 targets 0x4830, is taken when s0(=a1) == a3(=0x3ec), and falls through when s0(=a1) != a3(=0x3ec).
  The `beq` branch at 0x4798 targets 0x4830, is taken when s0(=a1) == a4(=0x3f4), and falls through when s0(=a1) != a4(=0x3f4).
  The `beq` branch at 0x47a0 targets 0x4830, is taken when s0(=a1) == a5(=0x3f9), and falls through when s0(=a1) != a5(=0x3f9).
  The `beq` branch at 0x47a8 targets 0x4830, is taken when s0(=a1) == a6(=0x3f5), and falls through when s0(=a1) != a6(=0x3f5).
  The `beq` branch at 0x47b0 targets 0x4830, is taken when s0(=a1) == a7(=0x3f6), and falls through when s0(=a1) != a7(=0x3f6).
  The `beq` branch at 0x47b8 targets 0x4830, is taken when s0(=a1) == t0(=0x3fb), and falls through when s0(=a1) != t0(=0x3fb).
  The `beq` branch at 0x47c0 targets 0x4830, is taken when s0(=a1) == t1(=0x3fa), and falls through when s0(=a1) != t1(=0x3fa).
  The `beq` branch at 0x47c8 targets 0x49c0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x47d4 targets 0x49c0, is taken when v0(?) >= t2(=[sym(rrm_maxrn)]) (signed), and falls through when v0(?) < t2(=[sym(rrm_maxrn)]) (signed).
  The `beq` branch at 0x47fc targets 0x49d0, is taken when a1(=0x1) == t3(=[table(sym(RRMrn))+82]:1), and falls through when a1(=0x1) != t3(=[table(sym(RRMrn))+82]:1).
  The `bne` branch at 0x4808 targets 0x49d0, is taken when t9(=entry(sym(RRMrn))) != a0(?), and falls through when t9(=entry(sym(RRMrn))) == a0(?).
  The `beq` branch at 0x4818 targets 0x49e0, is taken when ra(=[[a0+8]:8+8]:8) == s1(=a0), and falls through when ra(=[[a0+8]:8+8]:8) != s1(=a0).
  The `beq` branch at 0x4820 targets 0x4a44, is taken when s2(=[table(sym(.data))-23988]) == 0, and falls through when s2(=[table(sym(.data))-23988]) != 0.
  The `beq` branch at 0x4828 targets 0x470c and is always taken.
  The `beq` branch at 0x4830 targets 0x4978, is taken when s2(=[table(sym(.data))-23988]) == 0, and falls through when s2(=[table(sym(.data))-23988]) != 0.
  The `beq` branch at 0x4864 targets 0x48ec, is taken when s2(=[table(sym(.data))-23988]) == 0, and falls through when s2(=[table(sym(.data))-23988]) != 0.
  The `beq` branch at 0x487c targets 0x470c and is always taken.
  The `beq` branch at 0x48ac targets 0x4734, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x48b4 targets 0x470c and is always taken.
  The `beq` branch at 0x48c0 targets 0x48dc, is taken when a0(?) == a1(=-0x1), and falls through when a0(?) != a1(=-0x1).
  The `beq` branch at 0x48c8 targets 0x49c8, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0x48d4 targets 0x49c8, is taken when s6(?) >= a2(=[sym(rrm_maxrn)]) (signed), and falls through when s6(?) < a2(=[sym(rrm_maxrn)]) (signed).
  The `beq` branch at 0x48dc targets 0x4a3c, is taken when s2(=[table(sym(.data))-23988]) == 0, and falls through when s2(=[table(sym(.data))-23988]) != 0.
  The `beq` branch at 0x48e4 targets 0x4838 and is always taken.
  The `beq` branch at 0x48ec targets 0x487c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x4900 targets 0x487c and is always taken.
  The `beq` branch at 0x4930 targets 0x4734, is taken when v0(=ret(copyin_xlate)) == 0, and falls through when v0(=ret(copyin_xlate)) != 0.
  The `beq` branch at 0x4938 targets 0x470c and is always taken.
  The `bne` branch at 0x4940 targets 0x4778, is taken when s6(?) != 0, and falls through when s6(?) == 0.
  The `beq` branch at 0x4950 targets 0x4adc, is taken when (a2(=[a0+4]) & 0x8) == 0, and falls through when (a2(=[a0+4]) & 0x8) != 0.
  The `beq` branch at 0x4958 targets 0x4aa8, is taken when s2(=[table(sym(.data))-23988]) == 0, and falls through when s2(=[table(sym(.data))-23988]) != 0.
  The `beq` branch at 0x4960 targets 0x4838 and is always taken.
  The `beq` branch at 0x4968 targets 0x4a34, is taken when s2(=[table(sym(.data))-23988]) == 0, and falls through when s2(=[table(sym(.data))-23988]) != 0.
  The `beq` branch at 0x4970 targets 0x4838 and is always taken.
  The `beq` branch at 0x4978 targets 0x4848 and is always taken.
  The `beq` branch at 0x4998 targets 0x4760, is taken when a3(=[[a0+40]:8+104]) == 0, and falls through when a3(=[[a0+40]:8+104]) != 0.
  The `bne` branch at 0x49b0 targets 0x49a0, is taken when a5(=[[a0+40]:8+104]) != 0, and falls through when a5(=[[a0+40]:8+104]) == 0.
  The `beq` branch at 0x49b8 targets 0x4760 and is always taken.
  The `beq` branch at 0x49c0 targets 0x470c and is always taken.
  The `beq` branch at 0x49c8 targets 0x470c and is always taken.
  The `beq` branch at 0x49d0 targets 0x470c and is always taken.
  The `beq` branch at 0x49d8 targets 0x4ad4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x49e0 targets 0x4838, is taken when s2(=[table(sym(.data))-23988]) != 0, and falls through when s2(=[table(sym(.data))-23988]) == 0.
  The `beq` branch at 0x49e8 targets 0x4848, is taken when s3(=table(sym(RRMrn))) == 0, and falls through when s3(=table(sym(RRMrn))) != 0.
  The `beq` branch at 0x4a08 targets 0x4a20, is taken when a3(=0x1) == a4(=[table(sym(RRMrn))+82]:1), and falls through when a3(=0x1) != a4(=[table(sym(RRMrn))+82]:1).
  The `beq` branch at 0x4a18 targets 0x4848, is taken when a5(=entry(sym(RRMrn))) == a6(?), and falls through when a5(=entry(sym(RRMrn))) != a6(?).
  The `beq` branch at 0x4a2c targets 0x470c and is always taken.
  The `beq` branch at 0x4a34 targets 0x4848 and is always taken.
  The `beq` branch at 0x4a3c targets 0x4848 and is always taken.
  The `beq` branch at 0x4a4c targets 0x4ab0, is taken when (a2(=[a0+4]) & 0x8) == 0, and falls through when (a2(=[a0+4]) & 0x8) != 0.
  The `beq` branch at 0x4a58 targets 0x4ae4, is taken when a0(=[table(sym(RRMrn))+56]:8) == 0, and falls through when a0(=[table(sym(RRMrn))+56]:8) != 0.
  The `beq` branch at 0x4a68 targets 0x4a80, is taken when (a3(=[[table(sym(RRMrn))+56]:8+4]) & 0x8) == 0, and falls through when (a3(=[[table(sym(RRMrn))+56]:8+4]) & 0x8) != 0.
  The `beq` branch at 0x4a78 targets 0x4a88, is taken when a4(=[[table(sym(RRMrn))+56]:8+40]:8) == a5(=[a0+40]:8), and falls through when a4(=[[table(sym(RRMrn))+56]:8+40]:8) != a5(=[a0+40]:8).
  The `beq` branch at 0x4a80 targets 0x470c and is always taken.
  The `beq` branch at 0x4a8c targets 0x49e0, is taken when a6(=[table(sym(RRMrn))+84]:1) == 0, and falls through when a6(=[table(sym(RRMrn))+84]:1) != 0.
  The `beq` branch at 0x4a98 targets 0x49e0, is taken when a7(=[table(sym(RRMrn))+64]:8) == s1(=a0), and falls through when a7(=[table(sym(RRMrn))+64]:8) != s1(=a0).
  The `beq` branch at 0x4aa0 targets 0x470c and is always taken.
  The `beq` branch at 0x4aa8 targets 0x4848 and is always taken.
  The `beq` branch at 0x4ab4 targets 0x4ad4, is taken when a0(=[a0+64]:8) == 0, and falls through when a0(=[a0+64]:8) != 0.
  The `beq` branch at 0x4ac0 targets 0x49d8, is taken when t0(?) == s3(=table(sym(RRMrn))), and falls through when t0(?) != s3(=table(sym(RRMrn))).
  The `bne` branch at 0x4acc targets 0x4abc, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x4ad4 targets 0x470c and is always taken.
  The `beq` branch at 0x4adc targets 0x470c and is always taken.
  The `beq` branch at 0x4ae4 targets 0x470c and is always taken.
  The return at 0x472c has v0 = one of 0x16, 0xe, 0xd, ret(?).

- `irix5_to_RRM_ValidateClip` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4aec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x4aec-0x4bbc (208 bytes).
  It occupies 208 bytes.
  The `lw` at 0x4b00 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x4b10 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x4b14, `sd` at 0x4bb8.
  The `sw` at 0x4b1c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x4b28 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x4b2c loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x4b30 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x4b34 loads 4 bytes from [a3+16]:8 +0x4.
  The `sw` at 0x4b38 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lw` at 0x4b3c loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x4b40 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x4b44 loads 4 bytes from [a3+16]:8 +0xc.
  The `sw` at 0x4b48 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `lw` at 0x4b4c loads 4 bytes from [a3+16]:8 +0x10.
  The `sw` at 0x4b50 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `lw` at 0x4b54 loads 4 bytes from [a3+16]:8 +0x14.
  The `sw` at 0x4b58 stores 4 bytes to a1 (arg1 at entry) +0x14.
  The `lw` at 0x4b5c loads 4 bytes from [a3+16]:8 +0x18.
  The `sw` at 0x4b60 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `lwu` at 0x4b64 loads 4 bytes from [a3+16]:8 +0x1c.
  The `sd` at 0x4b68 stores 8 bytes to a1 (arg1 at entry) +0x20.
  The `lw` at 0x4b6c loads 4 bytes from [a3+16]:8 +0x20.
  The `sw` at 0x4b70 stores 4 bytes to a1 (arg1 at entry) +0x28.
  The `lw` at 0x4b74 loads 4 bytes from [a3+16]:8 +0x24.
  The `sw` at 0x4b78 stores 4 bytes to a1 (arg1 at entry) +0x2c.
  The `lw` at 0x4b7c loads 4 bytes from [a3+16]:8 +0x28.
  The `sw` at 0x4b80 stores 4 bytes to a1 (arg1 at entry) +0x30.
  The `lw` at 0x4b84 loads 4 bytes from [a3+16]:8 +0x2c.
  The `sw` at 0x4b88 stores 4 bytes to a1 (arg1 at entry) +0x34.
  The `lw` at 0x4b8c loads 4 bytes from [a3+16]:8 +0x30.
  The `sw` at 0x4b90 stores 4 bytes to a1 (arg1 at entry) +0x38.
  The `lw` at 0x4b94 loads 4 bytes from [a3+16]:8 +0x34.
  The `sw` at 0x4b98 stores 4 bytes to a1 (arg1 at entry) +0x3c.
  The `jal` at 0x4ba8 calls kern_malloc with a0=0x38, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x4af8 targets 0x4b28, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x4b08 targets 0x4ba8, is taken when at(=[a3]) < 0x38 (unsigned), and falls through when at(=[a3]) >= 0x38 (unsigned).
  The `beq` branch at 0x4b20 targets 0x4b9c and is always taken.
  The `beq` branch at 0x4bb4 targets 0x4b18 and is always taken.
  The return at 0x4ba0 has v0 = 0x0.

- `irix5_to_RRM_GetDisplayModes` in `usr/cpu/sysgen/IP35boot/rrm.o` at 0x4bbc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/rrm.o`.
  Range: 0x4bbc-0x4c34 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x4bd0 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x4be0 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x4be4, `sd` at 0x4c30.
  The `sw` at 0x4bec stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x4bf8 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0x4bfc loads 4 bytes from [a3+16]:8 +0x0.
  The `sw` at 0x4c00 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwu` at 0x4c04 loads 4 bytes from [a3+16]:8 +0x4.
  The `sd` at 0x4c08 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x4c0c loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x4c10 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `jal` at 0x4c20 calls kern_malloc with a0=0xc, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x4bc8 targets 0x4bf8, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x4bd8 targets 0x4c20, is taken when at(=[a3]) < 0xc (unsigned), and falls through when at(=[a3]) >= 0xc (unsigned).
  The `beq` branch at 0x4bf0 targets 0x4c14 and is always taken.
  The `beq` branch at 0x4c2c targets 0x4be8 and is always taken.
  The return at 0x4c18 has v0 = 0x0.
